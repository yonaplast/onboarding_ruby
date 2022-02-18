### About quiz_one.rb 🦫

Work about the next declaration:

	array = ['hello', 'from', 'streaver']

####Steps of challenge quiz_one.rb
Provide the code to achieve the following:

1. Give 3 possible ways of returning‘streaver'.
2. Give at least 2 ways of adding the string ‘!’ to the previous array
3. Convert all strings in the array to capital.
4. For each word in the array, if the word contains two consecutive consonants, replace them by a capital "S".
5. Provide a CLI based solution to interact with and make the entry data variable.

To exec the first quiz you need run:

    cd quiz_one
	gem install colorize
	ruby quiz_one.rb

### About category_tree.rb quiz
To exec the category_tree quiz you need run:

    cd category_tree_quiz
	ruby category_tree.rb

1. A category tree is a representation of a set of categories and their parent-child relationships.
2. Each category has a unique name (no two categories have the same name).
3. A category can have a parent category. Categories without a parent category are called root categories.
4. To add a category to a category tree, the name and the parent of the category should be provided.
5. When adding a root category, a nil value should be provided as the parent.
6. A call to get_children should return an array containing the direct children of the specified category in any order.
7. ArgumentError should be thrown when adding a category that has already been added anywhere in the CategoryTree or if the parent is specified but does not exist.


Then enjoy it and please give me a feedback! 🦫
