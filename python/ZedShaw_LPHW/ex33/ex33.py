def manage_numbers(i):
    print(f"At the top i is {i}")
    numbers.append(i)
    print("Numbers now: ", numbers)
    print(f"At the bootm i is {i}")


i = 10
numbers = []
max_number = 16
factor = 2
# while i < 6:
while i < max_number:
    manage_numbers(i)
    i = i + factor

    # print(f"At the top i is {i}")
    # numbers.append(i)
    # i = i + 1
    # print("Numbers now: ", numbers)
    # print(f"At the bootm i is {i}")

print("The numbers: ")

for num in numbers:
    print(num)