#!/bin/bash
sum=0
for a in {1..100..1};
 do
	sum=$sum+$a	
done
echo $((sum))
