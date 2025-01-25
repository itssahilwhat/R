**Chapter 2: Data and Sampling Distributions**

**Key Points:**

1. **Big Data ≠ No Need for Sampling**
    - **Misconception:** Big data means no need for sampling.
    - **Reality:** Even with big data, we use sampling for efficiency, model development, and bias reduction.

2. **Population vs Sample**
    - **Population:** Large, often theoretical, data set with an unknown distribution.
    - **Sample:** Subset from the population with an empirical distribution.
    - **Sampling:** Process of selecting data from a population.
3. **Sampling Procedures**
    - **Traditional Statistics:** Focused on the population side (strong assumptions about populations).
    - **Modern Statistics:** Focused on the sample side (no need for assumptions about populations).

4. **Random Sampling & Bias**
    - **Random Sampling:** Every member of the population has an equal chance of being selected.
    - **Types of Sampling:**
        - **Simple Random Sampling:** No strata division.
        - **Stratified Sampling:** Population divided into strata (e.g., by race or income), then randomly sampled from each stratum.
        - **Bias in Sampling:** When a sample does not represent the population accurately.
            - Example: The Literary Digest poll of 1936.

5. **Self-Selection Bias**
    - Happens when participants are self-selected (e.g., Yelp reviews).
    - Reviewers might not represent the general population, leading to bias.

6. **Bias in Measurement or Sampling**
    - **Bias:** Systematic error due to poor sampling methods or measurement processes.
        - **Unbiased Process:** Random error with no strong tendency in any direction.
        - **Biased Process:** Error with a consistent tendency (e.g., hitting the upper-right corner of a target).

7. **Random Sampling Challenges**
    - Defining who’s part of the population and ensuring the sample is representative.
    - For example, when sampling customers, you need clear criteria for who counts as a customer.

8. **Size vs Quality**
    - **Big Data’s Role:** Not always about the size, but quality matters more for sample accuracy.
    - **Example:** Missing data and outliers in big datasets may be manageable in smaller samples, allowing for better insights.

9. **When is Big Data Needed?**
    - **Sparse Data Problem:** When most data points are zero (e.g., search query data) and big data helps to uncover rare events.
    - **Google Search Example:** Millions of queries help improve prediction accuracy for even rare search phrases.

10. **Sample Mean vs Population Mean**
- **Sample Mean (x̄):** Mean of a sample.
- **Population Mean (μ):** Mean of the population.

---

**Formulas:**
- **Sample Mean:**  
  \[ x̄ = \frac{1}{n} \sum_{i=1}^{n} x_i \]
- **Population Mean:**  
  \[ μ = \frac{1}{N} \sum_{i=1}^{N} x_i \]

---

**Key Ideas:**
- Random sampling is crucial in both big and small datasets.
- Sample bias occurs when the sample does not represent the population accurately.
- Quality of data often matters more than quantity.
- Big data is valuable when the data is sparse.

---

**Further Reading:**
- Ronald Fricker’s chapter *Sampling Methods for Web and E-mail Surveys* in the Sage Handbook of Online Research Methods for more on practical sampling techniques.

Alright, Sahil, here’s the same content summarized in your concise notes style:

---

### Chapter 2: Data and Sampling Distributions

- **Misconception**: Big data reduces the need for sampling.
    - Truth: Sampling minimizes bias and is key in modeling and testing (e.g., pricing, web treatments).

#### Key Concepts:
- **Population**: Entire dataset (assumed to follow an unknown distribution).
- **Sample**: Subset of the population.
- **Sampling**: Process of selecting data from a population.

#### Types of Sampling:
- **Random Sampling**:
    - Equal chance for every member to be selected.
    - Types:
        - With replacement (reselection possible).
        - Without replacement (no reselection).
- **Stratified Sampling**: Divide population into groups (strata) and sample randomly within each.

#### Bias in Sampling:
- **Sample Bias**: Sample misrepresents the population (non-random errors).
    - **Example**:
        - *1936 Literary Digest poll*:
            - Polled wealthy individuals → Predicted Landon’s win → Incorrect due to bias.
        - *Gallup*: Used random sampling → Correctly predicted Roosevelt’s win.
- **Self-Selection Bias**:
    - Reviews (e.g., Yelp): Biased since only motivated individuals submit.

#### Data Quality vs. Quantity:
- **Quality** > Quantity:
    - High-quality small samples > Poor-quality large data.
    - Big data useful when:
        - Sparse data exists (e.g., Google search queries).
        - Goal: Handle rare cases (e.g., "Ricky Ricardo and Little Red Riding Hood").

#### Practical Considerations:
- Define **population** clearly.
    - E.g., Customers: Include buyers only? Test purchases? Refunds?
- Timing matters in sampling (e.g., weekday vs. weekend behavior).
- Big data helps in sparse scenarios but small samples are ideal for detailed analysis (e.g., handling outliers, missing data).

**Selection Bias and Regression to the Mean**

### **Selection Bias**
- **Definition**: Selecting data in a way (consciously or unconsciously) that leads to misleading or temporary conclusions.
- **Key Types of Selection Bias**:
    1. **Nonrandom Sampling**: Choosing a sample that doesn’t represent the population (e.g., polling only wealthy people).
    2. **Cherry-Picking Data**: Picking data points that support your hypothesis while ignoring others.
    3. **Time Interval Bias**: Selecting time periods that highlight specific effects (e.g., analyzing only “good” sales months).
    4. **Stopping Bias**: Ending an experiment early because the results look “interesting.”

- **Data Snooping**: Searching through data repeatedly to find patterns or results that seem interesting, even if they are just random.
    - **Quote**: “If you torture the data long enough, it will confess.”
    - **Example**: If 20,000 people flip coins, someone will likely get 10 heads in a row by luck, not skill.

- **Vast Search Effect**: Running too many models or analyses on large datasets increases the chances of finding random patterns that seem meaningful but are not.

### **Preventing Selection Bias**
1. **Hypothesis First**: Define your question or hypothesis before analyzing data.
2. **Random Sampling**: Ensure every member of the population has an equal chance of being included in the sample.
3. **Holdout Set**: Use a separate dataset to validate your results.
4. **Target Shuffling**: Test the validity of predictive associations by randomizing the target variable.

### **Regression to the Mean**
- **Definition**: Extreme values (high or low) are often followed by values closer to the average.
- **Why It Happens**:
    - Performance depends on **skill** (consistent) and **luck** (random).
    - Extreme performances (e.g., rookie of the year) involve skill + good luck. In the next attempt, luck may not hold, and performance declines.
    - First noted by **Francis Galton (1886)** in genetic studies (e.g., tall fathers often have shorter sons).

- **Example**:
    - Sports: A rookie with exceptional performance may do worse in their second year because luck played a role in their first-year success.

---

### **Key Formulas**
1. **Probability of Coin Toss Outcome**:  
   \[
   P(\text{10 Heads in a Row}) = \left(\frac{1}{2}\right)^{10} = \frac{1}{1024}
   \]
2. **Probability of At Least One Person Getting 10 Heads in a Crowd**:  
   \[
   P(\text{At Least One}) = 1 - P(\text{Nobody Gets 10 Heads})  
   \]
   Where \( P(\text{Nobody Gets 10 Heads}) = (1 - P(\text{10 Heads in a Row}))^N \).

---

### **Key Takeaways**
- Always specify hypotheses and use random sampling to avoid bias.
- Beware of random patterns or outliers caused by data snooping or repeated modeling.
- Understand that extreme performances often regress to the average (regression to the mean).

---

### **Resources**
1. [“Identifying and Avoiding Bias in Research” – Pannucci & Wilkins](https://journals.lww.com/plasreconsurg/Fulltext/2010/08000/Identifying_and_Avoiding_Bias_in_Research.23.aspx)
2. [“Fooled by Randomness Through Selection Bias” – Michael Harris](https://www.fooledbyrandomness.com)  

### Sampling Distribution of a Statistic (Made Simple)

A **sampling distribution** shows how a statistic (like the mean or proportion) varies when we take multiple samples from the same population. It helps us understand how much a statistic can change from one sample to another.

---

#### Key Terms:

1. **Sample Statistic**: A number we calculate (e.g., mean, proportion) from a sample of data.
2. **Data Distribution**: How individual data values are spread out.
3. **Sampling Distribution**: How a statistic (e.g., mean) is spread out across different samples.
4. **Central Limit Theorem (CLT)**: No matter how the original data looks, the sampling distribution of the mean becomes bell-shaped (normal) if the sample size is big enough.
5. **Standard Error (SE)**: Shows how much a statistic (e.g., mean) changes across samples.

---

#### Key Ideas:

- The sampling distribution of a **mean** is smoother and more bell-shaped than the data itself.
- **Bigger samples** create narrower distributions, meaning less variation.
- The **Central Limit Theorem (CLT)** says that even if the data isn’t normal, the sampling distribution of the mean becomes normal as sample size increases.

---

#### Standard Error (SE):

The **Standard Error** measures how much the sample statistic changes. A **smaller SE** means more accuracy.

**Formula**:  
\[
SE = \frac{s}{\sqrt{n}}
\]  
Where:
- \( s \): Standard deviation of the data.
- \( n \): Sample size.

**Square-root rule**: To reduce SE by half, you need to make the sample size 4 times bigger.

---

#### How to Estimate SE:

1. If possible, collect many samples and calculate the statistic for each one.
2. Find the standard deviation of those statistics — this is the SE.

If new samples aren’t available, use the **Bootstrap Method**:
- Resample the data randomly (with replacement), calculate the statistic for each resample, and estimate SE using the variability of those results.

---

#### Standard Deviation vs. Standard Error:

- **Standard Deviation (SD)**: Shows how much individual data points vary.
- **Standard Error (SE)**: Shows how much a sample statistic (e.g., mean) varies across samples.

---

#### Why It Matters:

- **Sampling distributions** let us see how statistics change from sample to sample.
- The **Central Limit Theorem** allows us to make predictions about these distributions, even if the original data isn’t normal.
- **Standard Error** is key for understanding how accurate our sample results are.

---

**Resource for Visuals and Simulations**: [David Lane's Statistics Resource](http://onlinestatbook.com/)

