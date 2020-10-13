{for (i=1;i<NF;i++) # NF == the number of fields
    words[$i]++}
 END{printf("is=%d,ls=%d,the=%d\n",
     words["is"],words["ls"],words["the"])}

#man ls | col -b | awk -f words.awk 
#is=11,ls=5,the=15