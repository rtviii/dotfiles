# import pandas as pd

# # 1. Read the original CSV file into a DataFrame
# original_df = pd.read_csv('weber.csv')

# # 2. Extract the "title" column
# title_column = original_df['Title']

# # 3. Create a new DataFrame with just the "title" column
# title_df = pd.DataFrame({'Content': title_column})
# title_df.drop_duplicates()

# # 4. Save the new DataFrame as a separate CSV file
# title_df.to_csv('content_column.csv', index=False)
import pandas as pd

# 1. Read the CSV file into a DataFrame
df = pd.read_csv('content.csv')

# 2. Drop duplicate sentences
df.drop_duplicates(subset=['Title'], keep='first', inplace=True)

# 3. Save the cleaned DataFrame to a new CSV file
df.to_csv('content_c.csv', index=False)
