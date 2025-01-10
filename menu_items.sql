use restaurant_db;
-- view the menu_item table
select * from menu_items;
-- Find the number of items on the table
select count(menu_item_id) from menu_items;
-- what are the least and most expensive item
select * from menu_items
order by price desc;
-- How many Italian dishes are on the menu
select count(menu_item_id) from menu_items
where category = "Italian"
order by menu_item_id;

-- what are least and most expensive item on menu
select * from menu_items
where category = "Italian"
order by price;
select * from menu_items
where category = "Italian"
order by price desc;

-- How many dishes are in each category
select category,count(menu_item_id) as num_dishes from menu_items 
group by category;
-- what is the avg dish price within each category
select category,avg(price) as avg_price from menu_items 
group by category;
