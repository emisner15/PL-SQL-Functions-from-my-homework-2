prompt
prompt *********************************
prompt TESTING which_titles
prompt *********************************
prompt

spool which_titles_test_out.txt
set serveroutput on

prompt testing JUST for titles with <= 10 copies on hand AND
prompt whose price is <= $40 
prompt (   test passes if 7 titles, quantities, and prices are shown;)
prompt (   see Homework 2 handout for exact expected values):
prompt ==========================================================

exec which_title(10, 40)

prompt testing JUST for titles with <= 9 copies on hand AND
prompt whose price is <= $35 
prompt (   test passes if 2 titles, quantities, and prices are shown):
prompt ==========================================================

exec which_title(9, 35)

prompt
prompt testing JUST for titles with <= 2 copies on hand AND
prompt whose price is <= $1 
prompt (   as you can see in the previous results, there should)
prompt (   be NO such titles found):
prompt ==========================================================

exec which_title(2, 1)

spool off
 