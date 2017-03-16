create or replace function how_many(p_title varchar2)
	return integer as
	   num_title_rows integer; 
	   num_on_hand integer;
begin
	select count(*) 
	into num_title_rows
	from title 
	where title_name = p_title;
	
	if (num_title_rows = 0) then
	   num_on_hand := 0;
	else
	   select qty_on_hand
	   into num_on_hand
	   from title
	   where title_name = p_title; 
        end if;
	   return num_on_hand;
exception
	when too_many_rows then
	   select sum(qty_on_hand)
           into num_on_hand
           from title
           where title_name = p_title;
		return num_on_hand;
end;
/

show errors

spool prob1-out.txt

commit;

insert into title
values
('0070790529', 234, 'spss', 'palin', 123.95, 22.95, 5, 70, 10, 'f');

var how_much varchar2(20)
exec :how_much := how_many('The C Programming Language')
print how_much

exec :how_much := how_many('SPSS')
print how_much

exec :how_much := how_many('moo')
print how_much


rollback;
spool off

