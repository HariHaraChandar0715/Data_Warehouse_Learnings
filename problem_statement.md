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

| Column Name | Data Type   ||
| :--------    | --------     | :-------- |
| order_id            |	   INT       |
| customer_id         |	   INT       |
| outlet_id           |	   INT       |
| order_type	      |    VARCHAR   |
| order_datetime	  |    DATETIME  |
| total_amount	      |    DECIMAL   |
| delivery_agent_id   |	   INT       |
| status	          |    VARCHAR   |

