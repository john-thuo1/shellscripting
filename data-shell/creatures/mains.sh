echo "Processes Running In The Computer"
echo
ps -e
echo
#--------------------------------------------------------------------------------------------------------------------------------------

echo "Process consuming most CPU"
ps -eo pid,ppid,%mem,%cpu,comm --sort=-%cpu | head -n 2

echo
#--------------------------------------------------------------------------------------------------------------------------------------

echo "Process consuming most Memory"
ps -eo pid,ppid,%mem,%cpu,comm --sort=-%mem | head -n 2
echo
#--------------------------------------------------------------------------------------------------------------------------------------

echo "Please enter the Process ID you want to kill : "
read Process_ID
if test -d /proc/"$Process_ID";
then 
   sudo kill -9 $Process_ID
   echo "Process Killed"
   ps -aux
else
   echo "Process ID entered does not exist"
fi
echo
#---------------------------------------------------------------------------------------------------------------------------------------

echo "File(s) that start with a number"
echo 
for i in [0123456789]*
do
if [ -f $i ]
then
echo $i
else
echo  "No such File in the directory!"
fi
done

#------------------------------------------------------------------------------------------------------------------------------------------
