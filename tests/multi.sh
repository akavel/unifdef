unifdef -DFOO=1 -DFOOB=42 -UBAR -M~ if1.c if2.c
e=$?
diff -u if1.c~ if1.c | sed 's/	20.*//'
diff -u if2.c~ if2.c | sed 's/	20.*//'
mv if1.c~ if1.c
mv if2.c~ if2.c
exit $e
