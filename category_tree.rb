$all_categories = Hash.new

class Category
    attr_accessor :name, :category, :categories
    def initialize(name, category=nil)
        if (!exists_category?(name))
            if (category.nil?)
                @name = name
                @category = category
                @categories = Array.new
                category.categories.push(name) unless category.nil?
            else 
                if !exists_category?(category.name)
                    raise "Sorry, parent doesn't exist! :(" 
                else
                    @name = name
                    @category = category
                    @categories = Array.new
                    category.categories.push(name) unless category.nil?
                end
            end
        else
            raise "Sorry, Name already exists! :("
        end
    end
    def to_s
        "Category= #{@name}, Parent= #{@category.name unless @category.nil?}, Chidren=#{@categories.to_s}"
    end
end
def get_children (category)
    category.categories.to_s
end

def add_category(name, category)
    $all_categories[name] = category
end

def print_categories(categories)
    categories.each do |name, category|
        puts category.to_s
    end
end

def exists_category?(name)
    !$all_categories[name].nil?
end

begin
    c1 = Category.new("c1")
    add_category("c1",c1)
    c2 = Category.new("c2")
    add_category("c2",c2)
    c5 = Category.new("c5")
    add_category("c5",c5)
    c3 = Category.new("c3",c1)
    add_category("c3",c3)
    c4 = Category.new("c4",c1)
    add_category("c4",c4)
    c6= Category.new("c6",c2)
    add_category("c6",c6)
    c7 = Category.new("c7",c4)
    add_category("c7",c7)
rescue StandardError => e
    puts e.message
end

print_categories($all_categories)

