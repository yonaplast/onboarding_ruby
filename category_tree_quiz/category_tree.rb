
class Category
    attr_accessor :name, :category, :categories
    def initialize(name, category=nil)
        if (!$c.exists_category?(name))
            if (category.nil?)
                @name = name
                @category = category
                @categories = Array.new
                category.categories.push(name) unless category.nil?
            else 
                if !$c.exists_category?(category)
                    raise "Sorry, parent doesn't exist! :(" 
                else
                    @name = name
                    @category = category
                    @categories = Array.new
                    $c.get_category(category).categories.push(name) unless category.nil?
                end
            end
        else
            raise "Sorry, Name already exists! :("
        end
    end
    def to_s
        "Category= #{@name}, Parent= #{@category unless @category.nil?}, Chidren=#{@categories.to_s}"
    end
end

class CategoryTree
    def initialize()
        @categories = Hash.new
    end

    def add_category(name,parent)
        category = Category.new(name,parent)
        @categories[name] = category
    end

    def get_children (category)
        @categories[category].categories
    end

    def print_categories
        @categories.each do |name, category|
            puts category.to_s
        end
    end

    def get_category(name)
        @categories[name]
    end

    def exists_category?(name)
        !@categories[name].nil?
    end
end

$c = CategoryTree.new
begin
    $c.add_category('A', nil)
    $c.add_category('B', 'A')
    $c.add_category('C', 'A')    
rescue ArgumentError => e
    puts e.message
end

puts $c.get_children('A').join(',')
#$c.print_categories
