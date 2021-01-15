from sys import argv

script, filename = argv

target = open(filename, 'r')

print(f"Here is the content of file {filename}")

print(target.read())

target.close()