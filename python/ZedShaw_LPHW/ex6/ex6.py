# define var
types_of_people = 10
# Define formatted string with variable usage
x = f"There are {types_of_people} types of people"

binary = "binary"
do_not = "don't"

# Define formatted string with two variables usage
y = f"Those who know {binary} and those who {do_not}"

print("Debug")
print(x)
print(y)
print("End of Debug")

# Print formatted string with variable
print(f"I said: {x}")
print(f"I also said: '{y}'")

hilarious = False
# Define string variable with place for formatting
joke_evaluation = "Isn't that joke so funny?! {}"

# Print formatted string
print(joke_evaluation.format(hilarious))

w = "This is the left side of ..."
e = "a string with a right side."

# Concatenate strings
print(w + e)
