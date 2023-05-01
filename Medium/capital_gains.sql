/* get capital gains/losses for each stock */


select s.stock_name, sum(
  case 
      when s.operation = 'Buy' then -1*s.price else s.price 
  end) as capital_gain_loss

from Stocks s
group by s.stock_name
