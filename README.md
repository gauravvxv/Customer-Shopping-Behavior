# Customer-Shopping-Behavior

## Business Problem 
A leading retail company wants to better understand its customers' shopping behavior in order to improve sales, customer satisfaction, and long-term loyalty. The management team has noticed changes in purchasing patterns across demographics, product categories, and sales channels (online vs. offline). They are particularly interested in uncovering which factors, such as discounts, reviews, seasons, or payment preferences, drive consumer decisions and repeat purchases.

# 🛍️ Customer Shopping Behavior Analysis  

## 📖 Overview  
This project analyzes **customer shopping behavior** using transactional data from **3,900 purchases** across multiple product categories.  
The goal is to uncover insights into **spending patterns**, **customer segmentation**, **product preferences**, and **subscription behavior** to guide **strategic business decisions**.  

Additionally, the project presentation was created using **Gamma AI**, enabling visually compelling, AI-powered storytelling for business insights.

---

## 🧾 Dataset Summary  
- **Rows:** 3,900  
- **Columns:** 18  
- **Key Features:**
  - 🧍‍♂️ **Customer Demographics:** Age, Gender, Location, Subscription Type  
  - 🛒 **Purchase Details:** Item Purchased, Category, Purchase Amount, Season, Size, Color  
  - 📊 **Shopping Behavior:** Discount Applied, Promo Code Used, Previous Purchases, Frequency, Review Rating, Shipping Type  
- **Missing Data:** 37 missing values in the `Review Rating` column  

---

## 🧹 Data Cleaning & Preparation (Python)
Performed using **Pandas** and **NumPy** for data wrangling and preprocessing.

**Steps:**
1. **Data Loading:** Imported dataset using `pandas.read_csv()`.  
2. **Exploration:** Used `.info()` and `.describe()` for summary statistics.  
3. **Handling Missing Data:** Filled missing `Review Rating` values using **median rating per product category**.  
4. **Column Standardization:** Converted column names to `snake_case` for readability.  
5. **Feature Engineering:**  
   - Created `age_group` feature:  
     - *Children (10–20)*  
     - *Young (21–30)*  
     - *Mid-Senior (31–50)*  
     - *Senior (51+)*  
   - Enabled better analysis of spending, subscriptions, and ratings across segments.  
6. **Normality Tests (Shapiro–Wilk):**  
   - `age` and `purchase_amount` were **not normally distributed**, indicating concentrated customer segments and skewed spending behavior.  
7. **Database Integration:** Loaded cleaned dataset into **PostgreSQL** for SQL analysis.

---

## 🧠 SQL Analysis (Business Insights)
Business questions were analyzed using **PostgreSQL** to extract actionable insights.

| # | Business Question | Insight Focus |
|---|--------------------|---------------|
| 1 | Revenue & Avg Purchase by Gender | Spending Patterns |
| 2 | Customer Count by Age Group | Demographic Analysis |
| 3 | Total Spending by Age Group | Revenue Contribution |
| 4 | High-Spending Discount Users | Value vs. Discounts |
| 5 | Category Performance | Best-Selling & Top-Rated Categories |
| 6 | Top 5 Products by Avg Rating | Customer Satisfaction |
| 7 | Top 5 Locations by Sales | Regional Sales Insights |
| 8 | Avg Purchase by Shipping Type | Delivery Preference Impact |
| 9 | Subscribers vs Non-Subscribers | Subscription Impact |
| 10 | Top 5 Products by Discount Usage | Promotion Effectiveness |
| 11 | Customer Segmentation | Loyalty & Retention |
| 12 | Top 3 Products per Category | Category-Level Bestsellers |

---

## 📊 Power BI Dashboard  
An **interactive Power BI dashboard** was created to visualize and explore insights intuitively.  
Dropdown slicers and filters allow dynamic analysis across multiple dimensions.

<img width="587" height="320" alt="Screenshot 2025-11-06 164735" src="https://github.com/user-attachments/assets/fa4f6ace-a91f-4aac-921a-95e320b24384" />


**Dashboard Highlights:**
- 💰 Revenue by Gender & Age Group  
- 🏆 Top Performing Categories & Products  
- 🚚 Purchase Amount by Shipping Type  
- 📍 Sales Distribution by Location  
- 🎯 Subscribers vs Non-Subscribers  

---

## 🎥 Gamma AI Presentation 
To effectively communicate insights and findings, a **Gamma AI presentation** was designed.  

**Features:**
- AI-generated slide designs for clean, modern visuals.  
- Automated content summarization for executive storytelling.  
- Integrated charts and visuals from Power BI exports.  
- Perfect for **portfolio showcasing** and **data storytelling** in interviews or client demos.

  Click below to view the interactive presentation built using **Gamma AI** 👇  

[![View Presentation](<img width="2400" height="1350" alt="1_Customer-Shopping-Behavior-Analysis" src="https://github.com/user-attachments/assets/ffe1af52-7186-4d3f-b273-0c67184c8ea4" />
)](https://docs.google.com/presentation/d/1xxh2kqay0U2z4AiJUDjfSXxzV2AjwSSM5P1qU7rP_Q0/edit?usp=sharing)

---

## 💡 Business Recommendations  
Based on insights from Python, SQL, and Power BI:

1. **Boost Subscriptions:** Offer exclusive benefits to convert non-subscribers.  
2. **Loyalty Program:** Encourage repeat purchases to nurture loyal customers.  
3. **Review Discount Policy:** Optimize discounts to maintain profit margins.  
4. **Product Positioning:** Promote top-rated and best-selling products.  
5. **Targeted Marketing:** Focus marketing on high-spending age groups and express shipping users.

---

## 🧰 Tech Stack  
| Tool | Purpose |
|------|----------|
| **Python (Pandas, NumPy)** | Data Cleaning & Preprocessing |
| **PostgreSQL** | Business Querying & Data Storage |
| **Power BI** | Visualization & Dashboard |
| **Gamma AI** | Presentation & Data Storytelling |
| **VS Code** | Development Environment |

---

