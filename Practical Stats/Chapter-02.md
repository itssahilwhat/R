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

### The Bootstrap (Simplified)

The **bootstrap** is a method used to estimate the variability of a statistic (like the mean or median) or model parameters by repeatedly sampling **with replacement** from the original data. It is powerful because it doesn't require any assumptions about the data's distribution (e.g., normality).

---

#### Key Terms:
1. **Bootstrap Sample**: A sample taken with replacement from the original data.
2. **Resampling**: Repeatedly sampling from the observed data, which can involve **bootstrapping** (with replacement) or **permutation** (without replacement).

---

#### How the Bootstrap Works:
1. Imagine you could replicate your sample thousands of times to create a hypothetical population.
2. From this hypothetical population, you take many random samples to create a **sampling distribution**.
3. Instead of actually replicating the sample, the bootstrap achieves the same result by sampling **with replacement** from the original data.

---

#### Bootstrap Algorithm (Step-by-Step):
1. **Take a Sample**: Randomly pick a value from the original data, record it, and put it back (sampling **with replacement**).
2. **Repeat**: Continue this until you've selected the same number of values as the original sample (\( n \)).
3. **Calculate Statistic**: Compute the statistic (e.g., mean or median) for the resampled data.
4. **Repeat R Times**: Repeat steps 1–3 \( R \) times to create \( R \) bootstrap statistics.
5. **Analyze Results**: Use the bootstrap statistics to:
    - Estimate the **standard error** of the statistic:  
      \[
      SE = \text{Standard Deviation of Bootstrap Statistics}
      \]
    - Create a **histogram** or **boxplot**.
    - Calculate **confidence intervals**.

---

#### Important Notes:
- **Number of Iterations (\( R \))**: The higher the number of iterations, the more accurate your results will be.
- **Standard Error (SE)**: Tells how much the statistic varies across samples and is calculated as:  
  \[
  SE = \sqrt{\frac{\sum_{i=1}^R (\text{Bootstrap Statistic}_i - \text{Mean of Bootstrap Statistics})^2}{R - 1}}
  \]

---

#### Applications of Bootstrap:
1. **Estimate Variability**: Helps assess how much a statistic (e.g., mean, median) changes across samples.
2. **Confidence Intervals**: Allows calculation of intervals where the true statistic is likely to lie.
3. **Model Stability**: Evaluates how stable model parameters are when applied to different data samples.
4. **Bagging**: Combines predictions from multiple bootstrap samples (used in Random Forests) to improve accuracy.

---

#### Limitations:
- The bootstrap **does not create new data** or fix small sample sizes.
- It only helps estimate how the statistic would behave if many additional samples were drawn from a similar population.

---

#### Further Reading:
- **Book**: *An Introduction to the Bootstrap* by Bradley Efron and Robert Tibshirani.
- **Resource**: [Onlinestatbook.com](http://onlinestatbook.com/).

### Confidence Intervals Simplified

A **confidence interval (CI)** is a range of values used to estimate the true value of a population parameter (e.g., mean or proportion). Instead of giving a single estimate (called a **point estimate**), a confidence interval provides a range to account for uncertainty in the estimate.

---

#### Key Terms
1. **Confidence Level**: The percentage (e.g., 90%, 95%) that represents how often the interval will contain the true value if we repeated the sampling process many times.
    - Example: A 90% CI means that in 90 out of 100 samples, the interval will contain the true population parameter.

2. **Interval Endpoints**: The upper and lower bounds of the confidence interval.

---

#### Why Use Confidence Intervals?
People often overtrust single numbers. Confidence intervals remind us there’s **uncertainty** in our estimates.
- Higher confidence levels require wider intervals (to be more sure).
- Smaller sample sizes lead to wider intervals (less data = more uncertainty).

---

#### How to Calculate Confidence Intervals (Bootstrap Method):
The **bootstrap method** creates confidence intervals by resampling the data:

1. Take your sample of size \(n\).
2. Randomly resample the data (with replacement) \(R\) times to create many new samples.
3. Calculate the statistic of interest (e.g., mean) for each resample.
4. Trim \(\frac{1 - \text{Confidence Level}}{2}\)% from both ends of the resampled results.
5. The remaining range is the confidence interval.

---

#### Example:
If we calculate a 90% CI for the **mean annual income** of loan applicants from a sample:
- Mean = $57,573
- 90% CI = Range enclosing 90% of bootstrap resamples of the mean.

---

#### Important Notes:
- The **confidence level** indicates how confident we are in the interval (higher confidence = wider interval).
- A **smaller sample** = more variability, leading to wider confidence intervals.
- **Confidence intervals** show how variable the sample result might be but don’t directly answer "what is the probability of the true value?"

---

#### Useful Formulas:
1. **Confidence Interval for Mean (using standard error and t-distribution)**:  
   \[
   \text{CI} = \bar{x} \pm t^* \cdot \frac{s}{\sqrt{n}}
   \]
    - \(\bar{x}\): Sample mean
    - \(t^*\): Critical value from the t-distribution
    - \(s\): Sample standard deviation
    - \(n\): Sample size

2. **For Proportions (using z-distribution)**:  
   \[
   \text{CI} = \hat{p} \pm z^* \cdot \sqrt{\frac{\hat{p}(1 - \hat{p})}{n}}
   \]
    - \(\hat{p}\): Sample proportion
    - \(z^*\): Critical value from the z-distribution

---

#### Practical Applications for Data Scientists:
- Use CIs to communicate **uncertainty** in estimates to managers or clients.
- Helps decide if you need **more data** to narrow the interval.
- Use bootstrap CIs for flexibility in most statistics and models.

---

#### Further Reading:
- [**Introductory Statistics and Analytics: A Resampling Perspective** by Peter Bruce](https://www.wiley.com)
- [**Statistics** by Robin Lock and Family](https://www.wiley.com)
- [**Modern Engineering Statistics** by Tom Ryan](https://www.wiley.com)

Confidence intervals are critical for understanding variability, especially when making decisions based on sample data!  

### Normal Distribution (Simplified)

**Definition:**  
The normal distribution, also called the bell curve or Gaussian distribution, is a symmetric curve where most data points are near the average (mean), and fewer are at the extremes.

**Key Facts:**
- **Shape:** Bell-shaped curve.
- **Centered:** Mean = Median = Mode.
- **Spread:** 68% of data lies within 1 standard deviation, and 95% lies within 2 standard deviations of the mean.

**Key Terms:**
1. **Error:** Difference between actual value and predicted/average value.
2. **Standardization:** Subtract the mean and divide by the standard deviation.
    - Formula:  
      \[
      z = \frac{x - \mu}{\sigma}
      \]  
      Where \(x\) = data point, \(\mu\) = mean, \(\sigma\) = standard deviation.
3. **Z-score:** The standardized value of a data point.
4. **Standard Normal:** A normal distribution with mean \(= 0\) and standard deviation \(= 1\).
5. **QQ-Plot:** A visual way to check if data follows a normal distribution. Data close to a diagonal line suggests normality.

---

### Warnings:
- **Misconception:** Not all data is normally distributed; many real-world datasets are not.
- **Transformation:** Standardizing (converting to z-scores) does not make data normally distributed.

---

### Long-Tailed Distributions
**Definition:** A distribution with "tails" (extreme values) that are longer and heavier than a normal distribution.

**Key Points:**
- **Skewed Data:** Many real-world datasets are skewed (not symmetric).
- **Extreme Events:** Long tails mean extreme events (like stock market crashes) are more likely than the normal distribution predicts.

---

### Practical Examples:
1. **Normal Distribution:** Used for errors in measurements, averages, or large samples.
2. **Long-Tailed Data:** Examples include income, stock market returns, or internet traffic.

---

### Key Ideas:
- Normal distribution is a fundamental tool in statistics, but most raw data doesn’t follow it.
- Extreme events (black swans) are underestimated by assuming normality.

---

**Further Reading:**
1. *The Black Swan* by Nassim Taleb.
2. *Handbook of Statistical Distributions with Applications* by K. Krishnamoorthy.