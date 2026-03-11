CREATE INDEX idx_fact_sales_payment          
ON facts_sales(id_payment_method);           
                                             
CREATE INDEX idx_fact_sales_category         
ON facts_sales(id_category);                 
                                             
CREATE INDEX idx_fact_sales_date             
ON facts_sales(id_date);                     
                                             
SELECT p.payment_method, COUNT(*) AS total   
FROM facts_sales f                           
JOIN dim_payment p                           
ON f.id_payment_method = p.id_payment_method 
GROUP BY payment_method                      
                                             
SELECT quantity, COUNT(*) AS total           
FROM facts_sales                             
GROUP BY quantity                            
ORDER BY total DESC;                         
                                             
SELECT c.category, COUNT(*) AS total         
FROM facts_sales f                           
JOIN dim_category c                          
ON f.id_category = c.id_category             
GROUP BY category;                           
                                             
SELECT d.month, COUNT(*) as total            
FROM facts_sales f                           
JOIN dim_date d                              
ON f.id_date = d.id_date                     
GROUP BY month                               
ORDER BY month ASC