spool num_titles_test_out.txt
set serveroutput on

prompt
prompt *********************************
prompt TESTING num_titles
prompt *********************************
prompt

var result_quant number;

prompt test passes if it shows, for Prentice Hall, a number of
prompt titles of 3:
prompt ==========================================================

exec :result_quant := num_titles('Prentice Hall')
print result_quant

prompt
prompt test passes if it shows, for Addison-Wesley, a number of
prompt titles of 4:
prompt ==========================================================

exec :result_quant := num_titles('Addison-Wesley')
print result_quant

prompt
prompt test passes if it shows, for Merrill, a number of
prompt titles of 0:
prompt ==========================================================

exec :result_quant := num_titles('Merrill')
print result_quant

prompt
prompt test passes if it shows, for nonexistent, a number of
prompt titles of 0:
prompt ==========================================================

exec :result_quant := num_titles('nonexistent')
print result_quant

spool off