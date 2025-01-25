### Chapter 1: Exploratory Data Analysis (EDA)

#### Introduction to Statistics and Data Science
- **Statistics** is the applied science of analyzing and modeling data.
- **Probability theory**, the math behind statistics, was developed by Thomas Bayes, Pierre-Simon Laplace, and Carl Gauss.
- **Modern statistics** started with Francis Galton, Karl Pearson, and R.A. Fisher, focusing on experimental design and data analysis.
- John W. Tukey introduced **Exploratory Data Analysis (EDA)** in 1962 and developed it further in his 1977 book.
- EDA focuses on exploring data before applying statistical models.

#### What is EDA?
- **Exploratory Data Analysis** is the first step in any data science project.
- It involves summarizing and visualizing data to understand its patterns and structure.

#### Evolution of EDA
- Computing power and software advancements have expanded EDA.
- Access to big data and its use across different fields has driven growth.

---

### **Structured Data Types**
Data can be structured (organized) or unstructured (raw like images, text). Structured data is categorized into two main types:

#### 1. **Numeric Data**
- **Continuous**: Can take any value in a range (e.g., wind speed, height).
    - Synonyms: interval, float, numeric.
- **Discrete**: Takes only integer values (e.g., count of items).
    - Synonyms: integer, count.

#### 2. **Categorical Data**
- **Categorical**: Fixed set of values (e.g., TV types: Plasma, LCD).
    - Synonyms: enums, nominal.
- **Binary**: Two possible values (e.g., yes/no, 0/1).
    - Synonyms: boolean, logical.
- **Ordinal**: Categorical data with an order (e.g., ratings: 1 < 2 < 3).
    - Synonyms: ordered factor.

---

### **Why Data Types Matter**
1. **Statistical Analysis**: Data type guides how models and charts are created.
2. **Software Optimization**: Efficient storage and processing depend on the type.
3. **Error Handling**: Categorical data types enforce valid values (e.g., enums).

---

### Key Ideas
1. Data is classified as **continuous**, **discrete**, **categorical**, **binary**, or **ordinal**.
2. Knowing the data type helps software handle it correctly during analysis.

---

### Resources
- **R Data Types**: [R-Tutorial Website](https://r-tutorial.com)
- **SQL Data Types**: [W3Schools SQL Guide](https://www.w3schools.com/sql/)

### Rectangular Data

#### What is Rectangular Data?
Rectangular data is like a table or spreadsheet where:
- **Rows** are individual **records** (examples, cases, or observations).
- **Columns** are **features** (variables, inputs, or attributes).

#### Key Terms:
- **Data Frame:** The basic structure for rectangular data in data science.
- **Feature:** A column in the table. (Synonyms: attribute, predictor, input, variable)
- **Outcome:** The result you're trying to predict, often a "yes/no" value. (Synonyms: dependent variable, target, response)
- **Record:** A row in the table. (Synonyms: instance, sample, case)

#### Data Types in Rectangular Data:
- **Categorical Data:** Data that falls into categories (e.g., day of the week).
- **Numeric Data:** Measured or counted data (e.g., price or duration).
- **Binary Data:** A special type of categorical data with two options (e.g., 0 or 1).

#### Data Frames in Tools:
- **Python:** The `pandas` library provides the **DataFrame** object. It automatically creates an index (row numbers). You can use hierarchical indexes for efficiency.
- **R:** The `data.frame` object is the standard. Packages like `data.table` and `dplyr` allow faster operations and custom indexes.

#### Non-Rectangular Data Types:
1. **Time Series Data:** Successive measurements of the same variable (e.g., temperature over time).
2. **Spatial Data:** Data about locations or areas (e.g., maps, coordinates).
3. **Graph Data:** Connections between entities (e.g., social networks or road systems).

#### Confusing Terms:
- **Sample:** For statisticians, it means a collection of rows, but for computer scientists, it means one row.

#### Key Takeaways:
- Rectangular data (tables) is the foundation of predictive modeling in data science.
- Rows represent individual records; columns represent features or variables.
- Tools like Python (`pandas`) and R (`data.frame`) make working with this data easier.

#### Resources:
- **Python DataFrame Docs:** [pandas DataFrame](https://pandas.pydata.org/docs/)
- **R DataFrame Docs:** [R data.frame](https://stat.ethz.ch/R-manual/R-devel/library/base/html/data.frame.html) 

### **Estimates of Location (Central Tendency)**

Estimates of location help determine the "typical value" or center of data. This is important when analyzing large datasets with many values. Below are the key terms and methods used to measure central tendency:

---

#### **Key Terms**
- **Mean (Average):**
    - Formula:  
      \[
      \text{Mean} = \frac{\text{Sum of all values}}{\text{Number of values}} = \frac{\Sigma x}{n}
      \]
    - Example: For data {3, 5, 1, 2}, mean = \( \frac{3+5+1+2}{4} = 2.75 \).
    - **Trimmed Mean:** Mean calculated after removing extreme values (e.g., top and bottom 10%).
        - Formula (trim 𝑘 values):  
          \[
          \text{Trimmed Mean} = \frac{\Sigma x_{k+1}^{n-k}}{n-2k}
          \]

- **Weighted Mean:**
    - A mean that gives more importance (weight) to certain values.
    - Formula:  
      \[
      \text{Weighted Mean} = \frac{\Sigma (x_i \cdot w_i)}{\Sigma w_i}
      \]

---

#### **Median (Middle Value):**
- The middle value in sorted data.
- **Even data:** Average of two middle values.
- Example: For {1, 2, 3, 4}, median = \( \frac{2+3}{2} = 2.5 \).
- **Weighted Median:** Middle value where half of the total weight lies below and above.

---

#### **Outliers and Robust Estimates**
- **Outliers:** Extreme values that differ greatly from most data.
    - Example: Incomes in a neighborhood with a billionaire.
- **Robust Measures:** Not affected by outliers.
    - **Median:** Not influenced by extreme values.
    - **Trimmed Mean:** Eliminates outliers before calculating the mean.

---

#### **Key Ideas**
1. **Mean** is simple but sensitive to outliers.
2. **Median** and **Trimmed Mean** are robust (not easily affected by extreme values).
3. **Weighted Mean/Median** is useful when data values have different importance.

---

#### **Example**
- **Population Mean:** If populations of states are {4M, 5M, 6M}, mean = \( \frac{4+5+6}{3} = 5M \).
- **Weighted Murder Rate:** Adjusts for state population when calculating the national average murder rate.
    - Example formula:  
      \[
      \text{Weighted Mean} = \frac{\Sigma (\text{Murder Rate} \times \text{Population})}{\Sigma \text{Population}}
      \]

---

#### **Further Reading**
- **Michael Levine's Slides on Basic Measures of Location:**  
  [Slides by Michael Levine](https://www.stat.purdue.edu/~mlevins/)
- **John Tukey's Book:**  
  *Exploratory Data Analysis* (Pearson, 1977).

### Variability: Measuring Spread of Data
**Variability** shows how spread out or clustered data values are. It helps us understand how much the data varies from the center value.

---

### Key Terms for Variability:
1. **Deviations**:
    - Difference between each data point and the center value (like the mean or median).
    - **Formula**: Deviation = \(x - \bar{x}\) (where \(x\) is a data value and \(\bar{x}\) is the mean).
    - **Synonyms**: Errors, residuals.

2. **Variance**:
    - Average of squared deviations from the mean.
    - **Formula**: \(\text{Variance} = \frac{\sum (x - \bar{x})^2}{n - 1}\).
    - **Synonym**: Mean-squared-error.

3. **Standard Deviation (SD)**:
    - Square root of variance. It is in the same unit as the data.
    - **Formula**: \(\text{SD} = \sqrt{\text{Variance}}\).

4. **Mean Absolute Deviation (MAD)**:
    - Average of absolute deviations from the mean.
    - **Formula**: \(\text{MAD} = \frac{\sum |x - \bar{x}|}{n}\).
    - **Synonyms**: \(L_1\)-norm, Manhattan norm.

5. **Median Absolute Deviation (Median MAD)**:
    - Median of the absolute deviations from the median.
    - **Formula**: \(\text{MAD}_{\text{median}} = \text{median}(|x - \text{median}|)\).
    - **Robust to outliers**.

6. **Range**:
    - Difference between the largest and smallest values.
    - **Formula**: \(\text{Range} = \text{Max} - \text{Min}\).

7. **Percentile**:
    - The value below which a certain percentage of data falls.
    - **Example**: The 80th percentile means 80% of data values are below this value.
    - **Synonym**: Quantile.

8. **Interquartile Range (IQR)**:
    - Difference between the 75th percentile (Q3) and 25th percentile (Q1).
    - **Formula**: \(\text{IQR} = Q3 - Q1\).
    - **Robust to outliers**.

---

### Why Use Standard Deviation Over MAD?
- Squared values in variance and standard deviation make them easier to use in mathematical models.
- Standard deviation is preferred in statistics but is more sensitive to outliers.

---

### Robust Metrics for Outliers:
- Median MAD and IQR are less affected by extreme values compared to standard deviation and variance.
- To compare MAD with standard deviation, scale the Median MAD by 1.4826 for a normal distribution.

---

### Special Notes:
1. **Degrees of Freedom (n-1)**:
    - Dividing by \(n - 1\) instead of \(n\) gives an unbiased estimate of variance in samples.

2. **Order Statistics**:
    - Metrics like range, percentiles, and IQR rely on sorted data.

3. **Outliers**:
    - Variance and standard deviation are highly sensitive to outliers, while robust methods like MAD and IQR are not.

---

### Example (State Populations):
- **Standard Deviation**: Large because it considers squared deviations.
- **IQR**: Smaller and robust to outliers.
- **Median MAD**: Most robust method.

---

### Key Points to Remember:
1. Variance and standard deviation are common but sensitive to outliers.
2. MAD, IQR, and percentiles are better when data has extreme values.
3. Always choose the right metric based on your data’s characteristics.

---

### Resources:
- [David Lane's Statistics Guide (Percentiles)](https://onlinestatbook.com)
- [R-Bloggers: Median and Robust Properties](https://www.r-bloggers.com)  

### Exploring Data Distribution

**Why Explore Data Distribution?**  
To understand how data values are spread out, look beyond single summary numbers (like mean and median). Distribution shows the overall pattern, spread, and shape of data.

---

### **Key Terms for Distribution Analysis**

1. **Boxplot (Box and Whisker Plot)**
    - A quick way to visualize data distribution.
    - The box represents the **25th percentile (Q1)** to **75th percentile (Q3)**.
    - The line inside the box is the **median (50th percentile)**.
    - Whiskers extend up to **1.5 × IQR** (Interquartile Range: Q3 - Q1).
    - Points outside whiskers are outliers.

2. **Frequency Table**
    - Divides data into intervals (bins) and counts how many values fall in each bin.
    - Example: Divide population into bins and count states in each range.

3. **Histogram**
    - Visualizes a frequency table as bars.
    - X-axis: Data range (bins).
    - Y-axis: Counts or proportions.

4. **Density Plot**
    - A smoothed version of a histogram.
    - Represents the distribution as a continuous curve.
    - Y-axis: Proportion (not count).

---

### **Percentiles & Boxplots**
- Percentiles divide data into 100 equal parts. Key ones:
    - **Quartiles**: 25th, 50th (median), 75th percentiles.
    - **Deciles**: 10th, 20th, ..., 90th percentiles.
    - Example: 95th percentile = 6.51 murders/100,000 means 95% of states have a lower rate.

**Formula for Percentiles**:  
\[ P_k = \text{Value at } k\%\text{ of sorted data} \]

---

### **Histograms and Frequency Tables**
- **Frequency Table**: Groups data into bins with equal size and counts data in each bin.
- **Histogram Rules**:
    1. Equal-width bins.
    2. Bars are continuous unless there’s an empty bin.
    3. Adjust bin size for clarity (not too large or too small).

---

### **Statistical Moments**
- **First Moment**: Mean (average).
- **Second Moment**: Variance (spread).
- **Third Moment**: Skewness (lean toward smaller/larger values).
- **Fourth Moment**: Kurtosis (extreme values/outliers).  
  These moments describe the shape of the data distribution.

---

### **Density Plot**
- A smooth curve estimating the data distribution.
- **Key Difference from Histogram**: Y-axis shows proportions, not counts.

---

### **Key Takeaways**
1. **Boxplots** quickly summarize data using percentiles.
2. **Frequency Tables** count how many data points fall in each range.
3. **Histograms** and **Density Plots** visually show the distribution.
4. Percentiles help summarize data tails (extreme ends).

---

### **Further Reading Resources**
1. **Boxplot Guide**: [SUNY Oswego Guide](https://www.oswego.edu)
2. **Density Estimation in R**: Henry Deng & Hadley Wickham's paper.
3. **Histogram Customization**: [R-Bloggers on Histograms](https://www.r-bloggers.com)
4. **Boxplots in R**: [R-Bloggers Boxplot Post](https://www.r-bloggers.com)  

This content provides a detailed exploration of binary and categorical data, emphasizing visualization methods and fundamental concepts such as mode, expected value, and correlation. Here's a brief summary and key takeaways:

---

### **Summary of Key Concepts**

#### **Categorical Data Exploration**
- **Mode**: The most frequent category in a dataset.
- **Expected Value**: A weighted mean based on probabilities assigned to categories, commonly used in business applications.
- **Bar Charts vs. Pie Charts**:
    - Bar charts are preferred for their clarity in comparing frequencies or proportions.
    - Pie charts are less visually effective and discouraged by experts.

#### **Numerical Data as Categorical**
- Converting numerical data into categories simplifies complexity and aids initial relationship exploration.
- Histograms and bar charts are commonly used, with histograms showing numeric ranges and bar charts showing distinct categories.

#### **Correlation**
- Measures the relationship between variables using metrics like the **correlation coefficient** (range: -1 to +1).
- **Correlation Matrix**: Summarizes relationships between multiple variables.
- **Scatterplots**: Visualize the association between two numeric variables.
- **Types of Correlation Coefficients**:
    - Pearson’s (most common, linear relationships).
    - Spearman’s rho or Kendall’s tau (based on ranks, robust to outliers).

---

### **Key Visual Tools**
- **Bar Charts**: Useful for single categorical variables (e.g., airline delays by cause).
- **Correlation Matrix**: Simplifies multiple-variable relationships, often paired with visualization tools like R’s `corrplot`.
- **Scatterplots**: Effective for two-variable relationships, providing clarity on trends or outliers.

---

### **Practical Examples**
- **Airport Delays**: Visualization using a bar chart to represent delay causes.
- **Stock Correlation**: Analysis using a correlation matrix to find relationships between telecommunication stock returns.

---

### **Further Reading and Applications**
- Understanding misleading graphs (e.g., poor bar or pie chart usage).
- Exploring alternative correlation metrics for small datasets or specific hypotheses.

---

### Exploring Two or More Variables: Beginner Notes

---

### **Types of Analysis**
1. **Univariate Analysis**: Focuses on one variable (e.g., average salary).
2. **Bivariate Analysis**: Compares two variables (e.g., study time vs. exam score).
3. **Multivariate Analysis**: Analyzes relationships among three or more variables (e.g., age, income, and expenses).

---

### **Important Terms**
1. **Contingency Table**: A table to summarize counts for two or more categories (e.g., gender vs. education level).
    - **Formula**: Observed frequency in each category.

2. **Hexagonal Binning**: Groups scatterplot points into hexagons to handle dense data.

3. **Contour Plot**: Shows the density of two numeric variables as "lines" (like a topographic map).

4. **Violin Plot**: Combines a boxplot with a curve showing data distribution.

---

### **How to Visualize Data**

#### **Numeric vs. Numeric Variables**
1. **Hexagonal Binning**:
    - Best for very large datasets.
    - Helps see clusters (e.g., population density).

2. **Contour Plot**:
    - Shows density areas where data points are concentrated.

#### **Categorical vs. Numeric Variables**
1. **Boxplot**:
    - Displays the spread of a numeric variable across categories.
    - **Key Stats in Boxplot**: Median, Quartiles, Outliers.

2. **Violin Plot**:
    - Adds a curve showing how data is distributed for each category.

#### **Multivariate Analysis**
- Use small subsets (like zip codes) to study relationships within groups.

---

### **Formulas**
1. **Mean (Average)**:  
   \[
   \text{Mean} = \frac{\text{Sum of all values}}{\text{Number of values}}
   \]

2. **Correlation (Strength of relationship)**:  
   \[
   r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \cdot \sum (y_i - \bar{y})^2}}
   \]
    - **Range**: -1 (strong negative) to +1 (strong positive).

---

### **Resources for Learning**
1. **Hexagonal Binning**:
    - [What is Hexagonal Binning?](https://www.data-to-viz.com/story/Hexbin.html)

2. **Contour Plots**:
    - [Guide to Contour Plots](https://chartio.com/learn/charts/contour-plot/)

3. **Violin Plots**:
    - [Understanding Violin Plots](https://mode.com/blog/violin-plot-examples/)

---

### **Summary Tips**
- Use boxplots for categorical data and scatterplots with bins or contours for numeric comparisons.
- Always check the **spread** (range, quartiles) and **relationship** (correlation) when analyzing two or more variables.

