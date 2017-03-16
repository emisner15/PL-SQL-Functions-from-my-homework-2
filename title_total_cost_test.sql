prompt
prompt ************************
prompt TESTING title_total_cost
prompt ************************
prompt

spool title_total_cost_test_out.txt
set serveroutput on

prompt test passes if it shows that ISBN 0871507870 has
prompt a total cost of 1137.5:
prompt ==========================================================

var tt_cost number;
exec :tt_cost := title_total_cost('0871507870') 
print tt_cost

prompt
prompt test passes if it shows that ISBN 087150331X has
prompt a total cost of 79.5
prompt =====================================================

exec :tt_cost := title_total_cost('087150331X')
print tt_cost

prompt
prompt test passes if it shows that non-existent ISBN
prompt 1313131313 has a total cost of -1
prompt =====================================================

exec :tt_cost := title_total_cost('1313131313')
print tt_cost

prompt

spool off
