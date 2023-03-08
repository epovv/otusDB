     +--------------+                           +-------------+
     |  purchase    |                           |  customer   |
     +--------------+                           +-------------+
     | id (integer) |                           | id (integer)|
     | product_id (integer, foreign key) |      | name (text) |
     | customer_id (integer, foreign key)|      | email (text)|
     | purchase_date (timestamp)|               | address (text)|
     | quantity (integer)|                      | phone (text) |
     | price_at_purchase (real) |               +-------------+
     +--------------+                           

     +--------------+          +--------------+           +-------------+
     |   product    |          |  category    |           |   price     |
     +--------------+          +--------------+           +-------------+
     | id (integer) |          | id (integer) |           | id (integer)|
     | name (text)  | <----    | name (text)  | <----     | value (real)|
     | description (text) |    +--------------+           | currency (text)|
     | category_id (integer, foreign key) |                +-------------+
     | price_id (integer, foreign key) |
     | supplier_id (integer, foreign key) |
     | manufacturer_id (integer, foreign key) |
     +--------------+ 

     +--------------+          +--------------+           
     |  supplier    |          | manufacturer |           
     +--------------+          +--------------+           
     | id (integer) |          | id (integer) |           
     | name (text)  |          | name (text)  |           
     | address (text)|         | country (text)|          
     | phone (text) |          +--------------+           
     +--------------+
