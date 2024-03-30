# File Creation
try:
    with open("my_file.txt", "w") as file:
        file.write("This is line 1\n")
        file.write("12345\n")
        file.write("Another line with text and numbers: 42\n")
    print("File 'my_file.txt' created successfully.")
except IOError as e:
    print(f"Error occurred while creating the file: {e}")

# File Reading and Display
try:
    with open("my_file.txt", "r") as file:
        print("Contents of my_file.txt:")
        for line in file:
            print(line.strip())
except FileNotFoundError as e:
    print(f"Error occurred while reading the file: {e}")
except PermissionError as e:
    print(f"Permission denied: {e}")

# File Appending
try:
    with open("my_file.txt", "a") as file:
        file.write("Appending line 1\n")
        file.write("Appending line 2\n")
        file.write("Appending line 3\n")
    print("Lines appended to 'my_file.txt' successfully.")
except IOError as e:
    print(f"Error occurred while appending to the file: {e}")
except PermissionError as e:
    print(f"Permission denied: {e}")
finally:
    print("File handling completed.")
