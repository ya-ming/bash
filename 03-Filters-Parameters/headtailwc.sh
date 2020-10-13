#!/bin/bash
info ls >ls.info 2>/dev/null
echo '----------head -3 ls.info----------'
head -3 ls.info
echo '----------head -3 ls.info | wc -l----------'
head -3 ls.info | wc -l
echo '----------tail -5 ls.info----------'
tail -5 ls.info


