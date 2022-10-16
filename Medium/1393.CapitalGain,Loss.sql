select sell.stock_name, (capital_loss-capital_gain) as capital_gain_loss  from 
(select stock_name, sum(price) as capital_loss from stocks where operation="Sell" group by stock_name) as sell inner join
(select stock_name, sum(price) as capital_gain from stocks where operation="Buy" group by stock_name) as buy on sell.stock_name = buy.stock_name
