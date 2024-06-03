
CREATE TABLE kimiafarmaproject.dataset_kimiafarma.datamart AS
SELECT t.transaction_id, t.date, t.branch_id, t.customer_name, t.product_id, t.price AS actual_price, 
       t.discount_percentage, t.rating AS product_rating,
       p.product_name, b.branch_name, b.kota, b.provinsi, b.rating AS branch_rating
FROM `kimiafarmaproject.dataset_kimiafarma.kf_final_transaction` AS t 
JOIN `kimiafarmaproject.dataset_kimiafarma.kf_product` AS p 
      ON t.product_id = p.product_id
JOIN `kimiafarmaproject.dataset_kimiafarma.kf_kantor_cabang` AS b
      ON t.branch_id = b.branch_id
;
