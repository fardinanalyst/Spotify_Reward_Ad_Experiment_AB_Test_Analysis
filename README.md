# 🎧 Spotify Reward Ad Experiment — Project Case Documentation  

👤 **Name:** Fardin Mansuri  
🎯 **Role:** Product Analyst  
🧰 **Tools:** SQL • Python • Power BI • Statistics • A/B Testing  

---

## 📌 Project Overview  
Spotify noticed that engagement among **Free-tier users** had plateaued, and **Premium conversions were declining**.  
To address this, a new **Reward Ad model** was proposed — users could watch a short video ad to unlock **30 minutes of ad-free listening**.  

The goal was to measure whether this new experience could improve **engagement, retention, and conversions** compared to the regular ad model.

---

## 🎯 Objectives  

- Diagnose why Free-tier engagement was slowing down  
- Establish a baseline performance for user behavior and monetization  
- Design and analyze an **A/B experiment** for the new ad model  
- Identify statistically significant improvements in engagement and conversion  

---

## 🧩 Data Stack  

| **Layer** | **Tool** | **Purpose** |
|------------|-----------|-------------|
| SQL | PostgreSQL / MySQL | Data extraction & table joins from warehouse |
| Python | Pandas, SciPy, Statsmodels | Data cleaning, KPI calculations, statistical testing |
| Power BI | Visualization | Dashboarding and storytelling |
| Experiment Framework | A/B Testing | Measuring treatment vs control differences |

---

## 🗄️ Data Model  

| **Table** | **Description** |
|------------|-----------------|
| `spotify_users_ab` | User profile info — demographics, device, signup date, experiment group |
| `spotify_sessions_ab` | Session-level behavior — duration, tracks, ads served |
| `spotify_ads_served_ab` | Ad metadata — type, duration, clicks, skips |
| `spotify_conversions_ab` | Premium trial and conversion data |

All tables were joined via **user_id** and **session_id** to create a unified experiment-ready dataset.

---

## ⚙️ Project Workflow  

### **1️⃣ Baseline Analysis (Pre-Experiment)**  
- Extracted **3 months of user engagement data (June–Sept 2025)** using SQL  
- Calculated key KPIs for Free-tier users:  
  - **DAU/MAU Ratio** – Engagement metric  
  - **Avg Session Duration:** 47.2 minutes  
  - **Skip Rate:** 3.69%  
  - **Ads per Session:** 14.8  
  - **Free → Premium Conversion Rate:** 9.89%  

🧠 **Insight:**  
Engagement was stable, but **conversion growth was flat**, signaling ad fatigue and limited monetization potential.  
These metrics were used as the **baseline** for experiment comparison.

---

### **2️⃣ Experiment Design**

| **Element** | **Details** |
|--------------|-------------|
| **Control (A)** | Regular ad experience (ads every 2–3 songs) |
| **Treatment (B)** | Reward Ad model (watch 1 ad → 30 mins ad-free) |
| **Duration** | 14 days |
| **Sample Size** | ~200K users (balanced across groups) |
| **Primary Metrics** | Avg session duration, conversion rate |
| **Secondary Metrics** | Skip rate, retention, ads/session |
| **Hypothesis** | Reward Ads will increase engagement and premium conversions without harming retention. |

---

### **3️⃣ Data Analysis & Hypothesis Testing (Python)**  

- Imported cleaned SQL dataset into Python for **EDA & KPI computation**  
- Conducted statistical tests:  
  - **t-test** → for continuous metrics (e.g., session duration, ads per session)  
  - **z-test** → for conversion rate differences  
  - **chi-square test** → for categorical variables (e.g., skip behavior)  
- Calculated **effect sizes (Cohen’s d, h, Cramér’s V)** to measure **practical significance**, not just p-values  

---

## 📊 Key Findings  

| **Metric** | **Control** | **Treatment** | **Lift** | **Significance** |
|-------------|-------------|---------------|-----------|------------------|
| Avg Session Duration | 46.9 min | 52.0 min | **+10.8%** | ✅ Significant |
| Conversion Rate | 6.09% | 7.38% | **+21%** | ✅ Significant |
| Avg Ads per Session | 14.78 | 5.38 | **–63.6%** | ✅ Significant |
| Skip Rate | 3.7% | 1.98% | **–46.5%** | ✅ Significant |
| 7-Day Retention | 35.3% | 35.1% | ~No change | ❌ Not Significant |

---

## 🧠 Interpretation  

- **Reward Ad users listened longer** and **converted more often**, proving that the model effectively reduced ad fatigue.  
- No significant drop in retention → **safe for broader rollout.**  
- Lower ad frequency improved UX while maintaining total ad value (fewer but higher-quality impressions).  

---

## 📈 Visualization (Power BI)  

Created interactive dashboards visualizing:  
- KPI comparison (Control vs Treatment)  
- Conversion funnel (Free → Trial → Premium)  
- Session duration distribution  
- Skip rate trends  
- Retention curves over time  

**Features:** Filters by country, device, and cohort to explore behavioral nuances.  

---

## 🚀 Business Recommendations  

- ✅ Roll out **Reward Ads** to all Free-tier users.  
- 📊 Continue monitoring **30-day retention and ARPU** post-launch.  
- 🧪 Next experiment: **Personalized Reward Ads** based on genre or user behavior.  

---

## 📘 Results Summary  

| Metric | Result |
|---------|---------|
| 🎯 Engagement | **+10.8%** |
| 💰 Conversion | **+21%** |
| 📉 Ad Fatigue | **–46% skip rate** |
| 🔄 Retention | **Stable** |

This experiment demonstrated how **data-driven product iteration** can enhance user experience **and** monetization simultaneously.

---

## 💼 Skills Demonstrated  

✅ SQL Data Modeling  
✅ Experiment Design & Hypothesis Testing  
✅ Statistical Analysis (t-test, z-test, chi-square)  
✅ KPI Framework Development  
✅ Power BI Dashboarding  
✅ Product Insight Storytelling  


