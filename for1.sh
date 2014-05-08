#!/bin/bash
i=1
curl -# https://www.cers.com.br/videos/demonstracao/20170 | grep "file:" | sed 's/file:/cvlc/; s/\",/\" sout/' > cers.txt
for romanos in II III IV 
 do
 echo $romanos
 curl -# https://www.cers.com.br/videos/demonstracao/20170 | grep "file:" | sed 's,file:,cvlc,; s,\"\,,\" sout "$romanos",' >> cers.txt
done
