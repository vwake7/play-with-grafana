-- These column names are required by Grafana to plot the dashboard
create table edge(id text, source text, target text, mainstat text);

truncate edge;

-- Insert into Edge table
insert into edge 
select 1,'topic1','topic2', 'app1' union
select 2,'topic2','topic3', 'app2' union
select 3,'topic1','topic4', 'app3' union
select 4,'topic2','topic5', 'app4' union
select 5,'topic3','topic6', 'app5' union
select 5,'topic3','topic61', 'app51' union
select 5,'topic3','topic62', 'app52' union
select 6,'topic6','topic7', 'app6' union
select 5,'topic7','topic8', 'app7' union
select 5,'topic8','topic9', 'app8' union
select 5,'topic9','topic10', 'app9' union
select 5,'topic9','topic11', 'app10' 
;
select * from edge;
