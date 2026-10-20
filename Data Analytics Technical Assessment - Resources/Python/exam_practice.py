# ⏱️ SECTION C: PYTHON EXAM (45 Minutes)
# Write the Python code for the following.

# Create a variable price = 50 and quantity = 3. Write a print statement that outputs: Total: 150.
price = 50
quantity = 3
print("Total:", price * quantity)

# Create a list: sales = [100, 200, 150, 300, 250]. Write a for loop that prints: Sale 1: 100, Sale 2: 200, etc.
sales = [100, 200, 150, 300, 250]
for i, sale in enumerate (sales, start = 1):
    print(f"Sale {i}: {sale}")

# Create a dictionary:
# products = {"Pen": 10, "Notebook": 50, "Marker": 25}
# Write a loop to print: The price of Pen is 10.
products = {"Pen": 10, "Notebook": 50, "Marker": 25}
for product, price in products.items():
    print(f"The price of {product} is {price}")

# Write a function called calculate_total(price, quantity) that returns the sum. Call it and print the result.
def calculate_total(price, quantity):
    return price * quantity
calc = calculate_total(50, 3)
print(calc)

# Create a pandas DataFrame using this data:
# data = {"Product": ["Pen", "Notebook"], "Price": [10, 50]}
# Print the DataFrame.
import pandas as pd
data = {"Product": ["Pen", "Notebook"], "Price": [10, 50]}
df = pd.DataFrame(data)

# Using the DataFrame from Task 5, write the code to filter and show only the rows where Price > 20.
filter_dataframe = df[df["Price"] > 20]
print(filter_dataframe)