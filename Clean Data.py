import pandas as pd

# Load dataset
df = pd.read_csv('data/ecommerce_dataset.csv')

# Show first 5 rows
print(df.head())

# Check missing values
print(df.isnull().sum())

# Remove duplicate rows
df = df.drop_duplicates()

# Remove rows with missing values
df = df.dropna()

# Convert Order Date column to proper date format
df['Order_Date'] = pd.to_datetime(df['Order_Date'], dayfirst=True)

# Create Month column
df['Month'] = df['Order_Date'].dt.month

# Save cleaned dataset
df.to_csv('data/cleaned_ecommerce_dataset.csv', index=False)

print("Data cleaned successfully")