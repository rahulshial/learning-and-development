print("hello world 😊")
print("*" * 10)
print("Hello world 2 😏")
# x = 1
# y = 2
# unit_price = 3

# Data types
students_count = 10  # int
rating = 10.5  # float
is_published = True  # bool cano only contain True or False
course_name = "Python Programming"  # str
message = """
Hi John
This is Rahul
welcome to the python course"""
# students_count = None  # NoneType
# students_count = [1, 2, 3]  # list
# students_count = (1, 2, 3)  # tuple
# students_count = {1, 2, 3}  # set
# students_count = {"name": "John", "age": 20}  # dict
print(len(course_name))  # len() function returns the length of the string
print(course_name[0])  # indexing
print(course_name[-1])  # indexing - returns first char from end of string
print(course_name[0:3])  # slicing - returns first 3 chars
print(course_name[:3])  # slicing - returns first 3 chars
print(course_name[0:])  # slicing - returns entire string
print(course_name[::2])  # slicing - returns every second char
print(course_name[:])  # slicing - returns entire string

first_name = "rahul"
last_name = "shial"
full_name = first_name + " " + last_name  # concatenation
print(full_name)
full_name = f"{first_name} {last_name}"  # f-string
print(full_name)
# title() method - converts first char of each word to uppercase
print(full_name.title())
print(full_name.upper())  # upper() method - converts string to uppercase

# String functions
course_name = "   python programming"
print(course_name)
# strip() method - removes whitespace from both sides
print(course_name.strip())
print(course_name.upper())  # upper() method - converts string to uppercase
print(course_name.lower())  # lower() method - converts string to lowercase
# find() method - returns index of first occurrence of char
print(course_name.find("pro"))  # returns index of first occurrence of char
print(course_name.find("PRO"))  # returns -1 if not found
# replace() method - replaces string
print(course_name.replace("python", "java"))
print("pro" in course_name)  # returns True if found
print("pro" not in course_name)  # returns True if not found
print("swift" not in course_name)  # returns True if not found

# Numbers & arithmetic operations
x = 1
x = 1.1
x = 1 + 2j  # complex number a + bi

print("addition: 10 + 3: {10 + 3}")  # addition
print("subtraction: 10 - 3: {10 - 3}")  # subtraction
print("multiplication: 10 * 3: {10 * 3}")  # multiplication
print("division: 10 / 3: {10 / 3}")  # division
print("floor division: 10 // 3: {10 // 3}")  # floor division
print("modulus: 10 % 3: {10 % 3}")  # modulus
print("exponent: 10 ** 3: {10 ** 3}")  # exponent
# operator precedence
# multiplication first
print("operator precedence - multiplication first: 10 + 3 * 2: {10 + 3 * 2}")
# addition first
print("operator precedence - addition first: (10 + 3) * 2: {(10 + 3) * 2}")

# type conversion
x = input("x: ")  # the value of x will be a string
# type() function - returns the type of the variable
print("type of x: ", type(x))
# int() function - converts string to int
y = int(x) + 1
print(f"x: {x}, y: {y}")
# int() function - converts string to int
# float() function - converts string to float
# complex() function - converts string to complex
print(complex(x))  # function - converts string to complex
# bool() function - converts string to bool
# str() function - converts int to string
