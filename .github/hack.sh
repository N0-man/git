cooked="Hello $BOGUS_SECRET World"
echo $BOGUS_SECRET > dog
cat dog | wc -c