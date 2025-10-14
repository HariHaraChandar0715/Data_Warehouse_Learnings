## Problem Statement 
PizzaGo is a mobile application that allows users to order pizzas from multiple outlets across the country. The company wants to build a reporting dashboard to track:

 1. Customer behavior

 2. Sales performance

 3. Delivery efficiency

You have access to the transactional (OLTP) database and your task is to design a dimensional model that can power business reporting needs.

## Reporting Requirements
Your dimensional model should support the following analytics use cases:

 1. Track total sales and number of orders by day, month and year

 2. Identify top-performing pizza items and pizza categories

 3. Segment customers by city and membership tier (Silver, Gold, Platinum)

 4. Measure delivery performance by outlet and delivery agent

 5. Compare dine-in vs delivery order performance  
   
## Source Tables (OLTP):

`orders`

| Column Name | Data Type   |
| :--------    | --------   |
| order_id            |	   INT       |
| customer_id         |	   INT       |
| outlet_id           |	   INT       |
| order_type	      |    VARCHAR   |
| order_datetime	  |    DATETIME  |
| total_amount	      |    DECIMAL   |
| delivery_agent_id   |	   INT       |
| status	          |    VARCHAR   |


`order_items`

| Column Name | Data Type   |
| :--------   | --------    |
| order_id    |	 INT     |
| item_id     |	 INT     |
| quantity    |	 INT     |
| item_price  |  DECIMAL |

`menu_items`

| Column Name | Data Type  |
| :--------   | --------   |
| item_id	  |  INT       |
| item_name	  |  VARCHAR   |
| category	  |  VARCHAR   |

`customers`

| Column Name     | Data Type   |
| :--------       | --------    |
| customer_id     |	  INT       |
| name            |	  VARCHAR   |
| city	          |   VARCHAR   |
| membership_tier |	  VARCHAR   |

`delivery_agents` 

| Column Name  | Data Type         |
| :--------    | --------          |
|  delivery_agent_id  |	  INT      |
|  agent_name	      |   VARCHAR  |
|  phone	          |   VARCHAR  |

`outlets`

| Column Name | Data Type   |
| :--------    | --------   |
|  outlet_id    |  INT      |
|  outlet_name	|  VARCHAR  |
|  city	        |  VARCHAR  |


## Task
Design a dimensional model using a Star Schema (or Snowflake if appropriate). Your goal is to create a model optimized for analytics, not transactional updates.

Answer the following:

 1. What are the fact table(s)? What is the grain of each fact table?

 2. What are the dimension tables and what attributes would they include?

 3. How will you model the order_type, order_date, and membership_tier?

 4. Would you consider any degenerate dimensions?

 5. Suggest two aggregate tables or views that could be used to speed up reporting