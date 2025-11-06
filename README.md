# Customer-Shopping-Behavior

## Business Problem 
A leading retail company wants to better understand its customers' shopping behavior in order to improve sales, customer satisfaction, and long-term loyalty. The management team has noticed changes in purchasing patterns across demographics, product categories, and sales channels (online vs. offline). They are particularly interested in uncovering which factors, such as discounts, reviews, seasons, or payment preferences, drive consumer decisions and repeat purchases.

## 📖 Overview  
This project analyzes **customer shopping behavior** using transactional data from **3,900 purchases** across various product categories.  
The goal is to uncover insights into **spending patterns**, **customer segmentation**, **product preferences**, and **subscription behavior** to guide **strategic business decisions**.

---

## 🧾 Dataset Summary  
- **Rows:** 3,900  
- **Columns:** 18  
- **Key Features:**
  - 🧍‍♂️ Customer Demographics — *Age, Gender, Location, Subscription Type*  
  - 🛒 Purchase Details — *Item Purchased, Category, Purchase Amount, Season, Size, Color*  
  - 📊 Shopping Behavior — *Discount Applied, Promo Code Used, Previous Purchases, Frequency, Review Rating, Shipping Type*  
- **Missing Data:** 37 null values in the `Review Rating` column  

---

## 🧹 Data Cleaning & Preparation (Python)
Performed using **Pandas** and **NumPy** for robust data preprocessing.  

**Steps:**
1. **Data Loading:** Imported dataset using `pandas.read_csv()`.  
2. **Exploration:** Used `.info()` and `.describe()` for data summary.  
3. **Handling Missing Data:** Imputed missing `Review Rating` values using the **median rating** per product category.  
4. **Column Standardization:** Converted column names to **snake_case** for readability.  
5. **Feature Engineering:**  
   - Created an `age_group` feature:  
     - *Children (10–20)*  
     - *Young (21–30)*  
     - *Mid-Senior (31–50)*  
     - *Senior (51+)*  
   - Helped analyze **spending**, **subscriptions**, and **ratings** by age segment.  
6. **Normality Testing:**  
   - Used **Shapiro–Wilk Test** on `age` and `purchase_amount`.  
   - Found both are **not normally distributed**, indicating concentrated and uneven spending patterns.  
7. **Database Integration:** Loaded cleaned DataFrame into **PostgreSQL** for SQL analysis.

---

## 🧠 SQL Analysis (Business Insights)
Structured analysis was performed in **PostgreSQL** to answer key business questions:  

| # | Business Question | Insight Area |
|---|--------------------|--------------|
| 1 | Revenue & Avg Purchase by Gender | Spending Patterns |
| 2 | Customer Count by Age Group | Demographic Analysis |
| 3 | Total Spending by Age Group | Revenue Contribution |
| 4 | High-Spending Discount Users | Value vs. Savings |
| 5 | Category Performance | Top-Performing Categories |
| 6 | Top 5 Products by Avg Rating | Customer Satisfaction |
| 7 | Top 5 Locations by Sales | Market Segmentation |
| 8 | Avg Purchase by Shipping Type | Shipping Preferences |
| 9 | Subscribers vs Non-Subscribers | Subscription Impact |
| 10 | Top 5 Products by Discount Usage | Promotion Effectiveness |
| 11 | Customer Segmentation | Loyalty & Retention |
| 12 | Top 3 Products per Category | Product Popularity |

---

## 📊 Power BI Dashboard  
An interactive **Power BI dashboard** was built to visually explore insights, allowing dynamic filtering through dropdown slicers and interactive charts.

**Dashboard Highlights:**
- 💰 Revenue by Gender & Age Group  
- 🏆 Top Performing Categories & Products  
- 🚚 Sales by Shipping Type  
- 📍 Sales by Location  
- 🎯 Subscription vs Non-Subscription Trends  

---

## 💡 Business Recommendations  
Based on the analysis, the following strategies were proposed:

1. **Boost Subscriptions:** Promote exclusive subscriber benefits.  
2. **Customer Loyalty Programs:** Reward repeat buyers to convert them into loyal customers.  
3. **Review Discount Policy:** Optimize discount strategy to maintain healthy profit margins.  
4. **Product Positioning:** Highlight top-rated and best-selling items in marketing campaigns.  
5. **Targeted Marketing:** Focus on high-revenue **age groups** and **express shipping users**.

---

## 🧰 Tech Stack  
| Tool | Purpose |
|------|----------|
| **Python (Pandas, NumPy)** | Data Cleaning & Preprocessing |
| **PostgreSQL** | SQL-based Business Queries |
| **Power BI** | Dashboard & Visualization |
| **Jupyter Notebook / VS Code** | Development Environment |

---

## ⚙️ How to Run the Project  
1. **Clone this repository**  
   ```bash
   git clone https://github.com/your-username/customer-shopping-behavior-analysis.git
