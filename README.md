## CUSTOMER AND SALES ANALYSIS FOR AN E-COMMERCE STORE


### PROJECT OVERVIEW

This project is aimed at exploring product sales from an online e – commerce store. We aim to dive into customer behaviour, retention rate, product ratings etc. By carrying out EDA we get to find out key insights and give recommendations on where to improve and what to tweak.

### KEY OBJECTIVES

- **Analyse Customer Behaviour & Segmentation**
  
Understand who the customers are by segmenting them by demographics such as age, gender, location and order frequency to identify high value groups and growth opportunities.


- **Track Sales Performance & Revenue Trends**
  
Measure total sales, monthly revenue, and order pattern over 10-month period to uncover seasonal trends, high performing periods and under performing months.


- **Identify Best Selling Products & Inventory Insights**
  
Evaluate product level performance by units sold, revenue generated, size and colour to inform stocking decisions and marketing priorities.


- **Access Regional & Demographic Revenue Contribution***
  
Break down revenue by city, state, and gender to determine geographic and demographic segments that drives profitability and where to focus marketing efforts.

- **Monitor Customer Retention & Repeat Purchase Behaviour**
  
Determine how many customers make repeat purchases and identify patterns to improve loyalty and reduce churn.


### DATASET OVERVIEW

The dataset consists of 1000 rows of synthetic values gotten from Kaggle having four tables: customers, orders, products and sales all connected with primary keys and foreign keys.

<img width="940" height="577" alt="image" src="https://github.com/user-attachments/assets/09ebc429-a093-4b2d-ab4b-c4fa6c463ded" />

### DATASET CLEANING AND TRANSFORMATION
Used SQL query techniques to check for duplicate values, check for null values and transform the data.

**Checking Duplicates**:  Across the dataset no duplicates were found 

<img width="940" height="452" alt="image" src="https://github.com/user-attachments/assets/6b3a7238-1ddd-4ded-be57-c0374b8b6274" />

<img width="940" height="385" alt="image" src="https://github.com/user-attachments/assets/154fbd5c-5e5d-40d5-9567-95e5dbb5f959" />

<img width="940" height="442" alt="image" src="https://github.com/user-attachments/assets/ddd8ec28-cbe1-405a-aab4-419f5b03b8b2" />

<img width="940" height="446" alt="image" src="https://github.com/user-attachments/assets/f6c00f0d-7fea-4936-8377-7b583cf01c77" />

<img width="940" height="361" alt="image" src="https://github.com/user-attachments/assets/b28958bb-01ef-4d9e-bb8d-775823b903b2" />



**Checking Null Values**: No null values were found 

**Data Integrity**: All column values were intact and in the quantifiable/measurable metrics


### KEY FINDINGS

- **Total Revenue**: The store generated a total revenue of ($1,031,800) within a 10-month period.

<img width="805" height="481" alt="image" src="https://github.com/user-attachments/assets/568f9ccf-d860-4821-b433-d842e1883811" />


- **Total Customers**: 1000 unique customers patronized the store

<img width="883" height="322" alt="image" src="https://github.com/user-attachments/assets/a3efa78c-6a17-4e5a-89d7-2a9d92bee8e4" />


- **Total Orders**: 1000 orders were placed.

<img width="792" height="316" alt="image" src="https://github.com/user-attachments/assets/c0370dbf-ca79-4647-af82-fa3a1ee064d5" />


- **Average Order Value**: AOV = $1,039.0735 which is quite high

<img width="877" height="558" alt="image" src="https://github.com/user-attachments/assets/5b083891-26d1-4a6f-8721-a343a6acb51a" />


- **Total Product**: 1260 unique products are available in the store for purchase.

<img width="789" height="306" alt="image" src="https://github.com/user-attachments/assets/9720a185-3b2e-4fb9-851b-56f23ff5ad8f" />


- **Orders by Gender**: Female and genderfluid gender both lead with a total order of 138

<img width="849" height="766" alt="image" src="https://github.com/user-attachments/assets/3651c520-e40e-41d4-8d2d-197cc45d8c39" />


- **Orders by Customer Generation**: Boomer’s lead with 378 orders, while gen z comes last with less than 100 orders (92)

<img width="774" height="639" alt="image" src="https://github.com/user-attachments/assets/212dffd4-a8d7-4f94-b0e8-cef87221d1c5" />

<img width="827" height="192" alt="image" src="https://github.com/user-attachments/assets/5760e921-8fb8-4955-bd39-aa64ee9ccb99" />




### EXPLORATORY DATA ANALYSIS 

The analysis span within a 10-month period in the year 2021. 
Valuable insights were gained and here is the breakdown:

- **Customer Segmentation**: Segmented customers into group by generations to understand which demographic are more and driving sales. 
Bommer’s (Age 57-80) customers are more in number and have the highest revenue with 240 of them patronizing the store generating over ($397,477) in revenue. On the other hand, Gen z (Age 9-24) is the lowest customer base and driving the least revenue with just 55 of them and ($92,286) in revenue

<img width="940" height="482" alt="image" src="https://github.com/user-attachments/assets/5d6e82f5-3d85-4d80-b051-db4c4fc55374" />


- **Average Order Value by Generations**: Millennials contribute more to revenue per order with an AOV of ($1,067.2230). Gen z still comes last, with an AOV of ($1,003.1087)

<img width="911" height="833" alt="image" src="https://github.com/user-attachments/assets/c6f5175d-7bf6-403d-91fe-86810bcf2d2a" />


- **Top 5 Customers by Revenue**: Wren Helgass is the customer with the most revenue ($7,632) with (5) times orders placed , Kris Ross follows with ($6,640) even tho he has more orders (6)

<img width="940" height="766" alt="image" src="https://github.com/user-attachments/assets/c0864019-ca89-4c25-b50e-6bfcd09b32fe" />


- **Total Customers by City**: East Aidan, New Ava, East Sophia all have a total of 3 customers each with runner up cities like Walterland, South Calum, Chloeville, South Hannah and Schroedermouth all have a total of 2 customers. The rest cities all have one customer each

<img width="940" height="342" alt="image" src="https://github.com/user-attachments/assets/7418d6c4-572e-4ceb-b98a-5c74d040d184" />


- **Total Customers by State**: South Australia has the highest customer base with 139 customers and Tasmania comes the lowest with 104 customers

<img width="940" height="364" alt="image" src="https://github.com/user-attachments/assets/28a25010-1636-4667-96c6-ebb85b4d5617" />


- **Revenue by Gender**: Females generated the most revenue with ($145,404) in sales, gender fluid follows closely with ($142,077) in sales then the males are behind with ($138,988). The lowest revenue was generated by the bigender with ($107,014). All gender brought in over ($100k) in revenue which is healthy.

<img width="940" height="444" alt="image" src="https://github.com/user-attachments/assets/bc95311f-414b-4df2-b5f3-f008c911f59a" />


- **Revenue by City**: Port Hannahburgh is the city with the highest revenue ($7,632) despite ranking low in number of customers from the city

<img width="940" height="474" alt="image" src="https://github.com/user-attachments/assets/7105349b-4a77-44b1-97f7-308d5ba88b25" />


- **Revenue by State**: South Australia leads ($147,816) due to the fact of been the state with the largest customer base. Queensland ($142,062) and New South Wales ($131,744) also follows as the top 3 state with the most revenue and customer base

<img width="940" height="481" alt="image" src="https://github.com/user-attachments/assets/897718e3-af77-416d-b2f7-a502f8f9650b" />


- **Monthly Revenue Trend**: Revenue was high in the month of March, reaching ($131,364) with January ($119,333) and July ($116,081). The least month was October with ($84,266) in revenue

<img width="940" height="507" alt="image" src="https://github.com/user-attachments/assets/0c218531-555f-4b25-bdef-87bb2de06ee0" />


- **Monthly Revenue Growth Percentage**: Monthly revenue growth has mostly been in negative % except for March when there was an increase of 38.16% (which is our most profitable month from previous analysis) and June (18.53% increase), July (14.41% increase). Revenue needs to be stable and increase positively across the month at least for 80% of the time, whatever worked in March needs to be replicated across all months.

<img width="940" height="221" alt="image" src="https://github.com/user-attachments/assets/487c951c-150e-404b-afd2-1b85c758a9ee" />

<img width="940" height="440" alt="image" src="https://github.com/user-attachments/assets/8796228a-4390-4974-84cc-489f7a6d9991" />


- **Total Quantity of Product Sales by Gender**: Analysis showing what product each gender are buying the more and where to stock up products the next

<img width="940" height="383" alt="image" src="https://github.com/user-attachments/assets/93719f61-f442-4995-8df4-1792281afe07" />

<img width="940" height="269" alt="image" src="https://github.com/user-attachments/assets/9d695276-0c0a-48a8-ba6b-63c1a7f626a6" />


- **Top 10 Selling Product**: The highest selling product is denim with 527 unit sold, joggers follow with 334 units sold and pleated with 308. The top 10 products add up to 3262 total units sold.

<img width="940" height="218" alt="image" src="https://github.com/user-attachments/assets/e331f2bc-15bb-4e95-98f7-4d6cf2e1a73c" />

<img width="940" height="280" alt="image" src="https://github.com/user-attachments/assets/90bcfce6-f85d-4e96-861c-f3438031ab3f" />


- **Top 10 Products by Revenue**: Denim has the highest revenue ($52,399), followed by Casual Slim Fit ($36,414) and Trench Coat ($35,581). Although joggers sold more unit, the revenue generated was low keeping it at 9th place ($31,062) could be as a result f low price per unit o excessive discounts and offers.

<img width="940" height="506" alt="image" src="https://github.com/user-attachments/assets/d254da17-025e-4f49-8dfd-ca03566bbab8" />


- **Avg Product Delivery Time**: Delivery time are almost the same, with shirt delivering slightly earlier with a day margin

<img width="940" height="445" alt="image" src="https://github.com/user-attachments/assets/73a505cd-ce6e-41ab-b5dd-d0aabe30ecbd" />


- **Total Revenue by Size**: Medium sized product sells more generating ($211,018) in revenue and 2036 units sold. Extra large has the lowest revenue ($200,647). Extra small is the second highest generating revenue ($207,093) despite having fewer units sold (1990) than large (1998) and small (1992).

<img width="940" height="409" alt="image" src="https://github.com/user-attachments/assets/9125f4de-f671-48d2-b1a5-dc475da588c9" />

<img width="940" height="201" alt="image" src="https://github.com/user-attachments/assets/5f8fdb58-19f8-4824-9081-f01f9a157310" />


- **Total Revenue by Colour**: Blue seem to attract the eyes of customers, generating ($158,220) in revenue while orange coming last has ($140,757) revenue

<img width="940" height="485" alt="image" src="https://github.com/user-attachments/assets/2421947a-fcc0-423d-874e-e0604f551741" />



### INSIGHTS & RECOMMENDATIONS

**INSIGHTS**

**Customer Demographics & Segmentation:**

Bommer’s (ages 57-80) represent the largest and the most valuable customer segment, accounting for 378 orders and generating ($397,477) in revenue.
Gen z ages (ages 9-24) had the fewest customers (55) and contributed the least revenue ($92,286), suggesting untapped potential in this group.
Females and genderfluid customers tied in number of orders (138), but females led in revenue ($145,404), indicating a slightly higher AOV.

**Revenue Performance:**

The store achieved a total revenue of ($1,031,800) from (1000) unique orders over a 10-month period averaging about ($1,031) per order, a notably high figure.
March was the most profitable month, showing a revenue spike of ($131,364) and 38.16% month over month growth, suggesting a successful marketing push or seasonal effect.

**Product Trends:**

Denim is the best selling and highest revenue generating product, with (527) and ($52,399) in revenue.
Joggers, despite being the second highest in units sold (334), rank only ninth in revenue, suggesting potential issues in pricing or excessive discounting.
Medium sized products generate the most revenue ($207,093), despite the latter having fewer units sold 
Blue collared products performed best, generating ($158,220), indicating a possible colour preference among shoppers

**Geographic Insights:**

South Australia leads both in customer count (139) and revenue ($147,816), making it a key market for growth and retention strategies.
Port Hannahburgh generated the highest revenue per city ($7,632) with very few customers, indicating the presence of high spending individuals
Tasmania has the lowest customer count (104) and revenue, which may indicate a need for targeted promotions or better local outreach.

**Sales and Order Behaviour:**

All gender category contributed over $100k in revenue, showing inclusive appeal, though bigender brought in the least ($107,014).
Monthly revenue growth was mostly negative, except in March, June, July. This highlights need for more consistent revenue driven activities.
Delivery times were relative constant across products, with shirts having the shortest delivery window, offering a possible competitive advantage in fulfilment.


**RECOMMENDATIONS**

**Improve Revenue Stability:**

Replicate whatever strategies led to the March revenue spike (38.16%) review campaign timing, product launches, promotions, or external events. 
Plan monthly campaigns to reduce revenue volatility consider bundling, flash sales, or seasonal drops. 
Use A/B testing to determine which promotions or offers drive higher conversion rates. 

**Boost Customer Retention:**

Identify and reward repeat customers with loyalty programs, exclusive access, or discounts. 
Use email marketing to re-engage Gen Z and one-time shoppers, tailoring content to their preferences and behaviours. 

**Product Strategy Optimization:**

Reevaluate pricing strategy for high volume but low revenue products like Joggers. Raise prices slightly or reduce discount frequency. 
Prioritize stock and marketing for top selling products (Denim, Casual Slim Fit) and popular sizes (Medium, Extra Small). 
Experiment with limited edition colour variations, leveraging the popularity of blue. 

**Geographic & Demographic Expansion:** 

Focus acquisition and upselling efforts in South Australia, the most lucrative region. 
Introduce region specific campaigns in underperforming states like Tasmania to grow market share. 
Launch targeted ads for Boomers, the most profitable demographic, while creating more relatable branding and social content for Gen Z. 

**Enhance Product Delivery Efficiency:** 

Since shirts already have shorter delivery times, highlight this in product descriptions as a unique selling point. 
Review logistics data for potential improvements in product lines with longer delivery windows.

### CONCLUSION

This 10-month sales analysis reveals a promising e-commerce operation with over $1 million in revenue, driven largely by Boomer customers, female buyers, and top performing products like Denim and Casual Slim Fit. However, the business faces key challenges in revenue consistency, underperforming segments, and regional disparity. With a data informed strategy that focuses on:

- Retaining high value customers
- Reactivating low engagement segments
- Optimizing product pricing and promotions and 
- Replicating peak performance patterns, the store can improve its growth trajectory, customer satisfaction, and profitability.




