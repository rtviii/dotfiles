import pandas as pd

# 1. Read the original CSV file into a DataFrame
original_df = pd.read_csv('weber.csv')

# 2. Extract the "title" column
title_column = original_df['Title']

# 3. Create a new DataFrame with just the "title" column
title_df = pd.DataFrame({'Content': title_column})

# 4. Save the new DataFrame as a separate CSV file
title_df.to_csv('content_column.csv', index=False)