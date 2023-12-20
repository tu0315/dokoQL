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

SELECT *
FROM 家計簿
WHERE 出金額 IS NULL

SELECT *
FROM 家計簿
WHERE メモ LIKE '%1月%'
 
select *
from 家計簿 
where メモ like '%電気代%'

select *
from 家計簿
where 出金額 between 100 and 3000

select *
from 家計簿
where 出金額 between 2000 and 5000

select *
from 家計簿
where 費目 in ('食費', '交際費', '給料')

select *
from 家計簿
where 費目 not in ('食費', '交際費', '給料')

UPDATE 湊くんの買い物リスト
SET 価格 = 10000
WHERE 名称 = 'スッキリ勇者クエスト'
AND 販売店 = 'Y'

-- orをandより優先する
select *
from 湊くんの買い物リスト
where (販売店 = 'A'
or 販売店 = 'B')
AND (カテゴリ = 'ゲーム'
or カテゴリ = 'DVD')

select * from 家計簿
order by 日付 asc

select * from 家計簿
order by 出金額

select * from 家計簿
order by 入金額 desc, 出金額 desc

select * from 家計簿
order by 4 desc

-- LIMITの利用
--（Db2、MySQL、PostgreSQL、SQLite、H2 Database）
SELECT 費目, 出金額
  FROM 家計簿
 LIMIT 3

SELECT 費目, 入金額, 出金額 FROM 家計簿
UNION
SELECT 費目, 入金額, 出金額 FROM 家計簿アーカイブ
order by 出金額 desc

SELECT 費目 FROM 家計簿
EXCEPT
SELECT 費目 FROM 家計簿アーカイブ

SELECT 費目 FROM 家計簿
INTERSECT -- MySQLでは非対応
SELECT 費目 FROM 家計簿アーカイブ