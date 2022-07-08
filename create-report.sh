#!/usr/bin/env bash

echo 'listed items that should be unlisted:' > report.log
echo "" >> report.log
grep -x -f cache/bdrc-mustbeunlinsted.txt cache/ia-bdrc.txt | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "unlisted items that should be listed:" >> report.log
echo "" >> report.log
grep -vx -f cache/bdrc-mustbeunlinsted.txt input/unlisted.txt | grep -vx -f input/derivedfailed.txt | grep -vx -f cache/ia-bdrc.txt | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "items in buddhist-digital-resource-center-restricted that should not be:" >> report.log
echo "" >> report.log
grep -vx -f cache/bdrc-mustbeinbdrcrestricted.txt cache/ia-bdrc-restricted.txt | grep -vx -f input/unlisted.txt | grep -vx -f input/derivedfailed.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "items not in buddhist-digital-resource-center-restricted that should be:" >> report.log
echo "" >> report.log
grep -vx -f cache/ia-bdrc-restricted.txt cache/bdrc-mustbeinbdrcrestricted.txt | grep -x -f cache/ia-bdrc.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "items in inlibrary that should not be:" >> report.log
echo "" >> report.log
grep -vx -f cache/bdrc-mustbeinlibrary.txt cache/ia-inlibrary.txt | grep -vx -f input/unlisted.txt | grep -vx -f input/derivedfailed.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "items not in inlibrary that should be:" >> report.log
echo "" >> report.log
grep -vx -f cache/ia-inlibrary.txt cache/bdrc-mustbeinlibrary.txt | grep -x -f cache/ia-bdrc.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "items not in bdrc-fplmanuscripts that should be:" >> report.log
echo "" >> report.log
grep FPL cache/ia-bdrc.txt | grep -vx -f cache/ia-bdrc-fplmanuscripts.txt | sort | sed 's/^/bdrc-/' >> report.log
grep 1EAP cache/ia-bdrc.txt | grep -vx -f cache/ia-bdrc-fplmanuscripts.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "items not in bdrc-khmermanuscripts that should be:" >> report.log
echo "" >> report.log
grep FEMC cache/ia-bdrc.txt | grep -vx -f cache/ia-bdrc-khmermanuscripts.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "items in geo_restricted that should not be:" >> report.log
echo "" >> report.log
grep -vx -f cache/bdrc-mustbeingeorestricted.txt cache/ia-geo_restricted.txt | grep -vx -f input/unlisted.txt | grep -vx -f input/derivedfailed.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
echo "" >> report.log
echo "items not in geo_restricted that should be:" >> report.log
echo "" >> report.log
grep -vx -f cache/ia-geo_restricted.txt cache/bdrc-mustbeingeorestricted.txt | grep -x -f cache/ia-bdrc.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "" >> report.log
#echo "items not in bdrc-stream_only that should be:" >> report.log
#echo "" >> report.log
#grep -vx -f cache/ia-bdrc-restricted.txt cache/ia-bdrc.txt | grep -vx -f cache/ia-bdrc-stream_only.txt | sort | sed 's/^/bdrc-/' >> report.log
#echo "" >> report.log
#echo "" >> report.log
#echo "items in bdrc-stream_only that should not be:" >> report.log
#echo "" >> report.log
#grep -x -f cache/ia-bdrc-restricted.txt cache/ia-bdrc-stream_only.txt | sort | sed 's/^/bdrc-/' >> report.log
#echo "" >> report.log