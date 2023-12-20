select 出金額
from 家計簿

select 日付,費目,メモ,入金額,出金額
from 家計簿

select *
from 家計簿

insert into 家計簿
values ('2023-12-20', '居住費', '12月の家賃', 0, 50000 )

update 家計簿
set 出金額 = 900
where 日付 = '2022-02-18'

select * from 家計簿 where 出金額 = 50000

select 費目 as ITEM
from 家計簿

UPDATE 家計簿
set 入金額 = 200000
where 日付 = '2022-02-10'

DELETE FROM 家計簿
WHERE 出金額 > 0