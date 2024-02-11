with sc as
(
  select 
FiscalWeek
,FiscalYear
sum(gross) as GrossSales
,sum(net) as Netsales
,sum(quantity) as Quantity
,sum(DiscountAmount) as PromoTotal
,ItemNumber
,InsuranceType
From sales_current
Group By 
ItemNumber
,InsuranceType
,FiscalWeek
,FiscalYear
  )
with ic as
(
  select 
ItemNumber
,P22 as ItemSize
,P24 as Color
sum(OSMCost + ItemCost) as Cost

From itemcost_current
Group By 
,ItemNumber
,P22
,P24
  )

select
*
From sc
Inner Join ic
on
sc.ItemNumber = ic.ItemNumber
Where 
sc.FiscalYear > 2022 

