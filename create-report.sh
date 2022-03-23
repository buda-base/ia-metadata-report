echo 'listed items that should be unlisted:' > report.log
echo "\n" >> report.log
grep -x -f cache/bdrc-mustbeunlinsted.txt cache/ia-bdrc.txt | sed 's/^/bdrc-/' >> report.log
echo "\n" >> report.log
echo "\n" >> report.log
echo "unlisted items that should be listed:" >> report.log
echo "\n" >> report.log
grep -vx -f cache/bdrc-mustbeunlinsted.txt input/unlisted.txt | grep -vx -f input/derivedfailed.txt | sed 's/^/bdrc-/' >> report.log
echo "\n" >> report.log
echo "\n" >> report.log
echo "items in buddhist-digital-resource-center-restricted that should not be:" >> report.log
echo "\n" >> report.log
grep -vx -f cache/bdrc-mustbeinbdrcrestricted.txt cache/ia-bdrc-restricted.txt | grep -vx -f input/unlisted.txt | grep -vx -f input/derivedfailed.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "\n" >> report.log
echo "\n" >> report.log
echo "items not in buddhist-digital-resource-center-restricted that should be:" >> report.log
echo "\n" >> report.log
grep -vx -f cache/ia-bdrc-restricted.txt cache/bdrc-mustbeinbdrcrestricted.txt | grep -vx -f input/unlisted.txt | grep -vx -f input/derivedfailed.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "\n" >> report.log
echo "\n" >> report.log
echo "items in inlibrary that should not be:" >> report.log
echo "\n" >> report.log
grep -vx -f cache/bdrc-mustbeinlibrary.txt cache/ia-inlibrary.txt | grep -vx -f input/unlisted.txt | grep -vx -f input/derivedfailed.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "\n" >> report.log
echo "\n" >> report.log
echo "items not in inlibrary that should be:" >> report.log
echo "\n" >> report.log
grep -vx -f cache/ia-inlibrary.txt cache/bdrc-mustbeinlibrary.txt | grep -vx -f input/unlisted.txt | grep -vx -f input/derivedfailed.txt | sort | sed 's/^/bdrc-/' >> report.log
echo "\n" >> report.log