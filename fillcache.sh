ia search 'collection:buddhist-digital-resource-center AND collection:inlibrary' | sed -re 's/^\{"identifier": "bdrc-(.*)"\}$/\1/g' | sort > cache/ia-inlibrary.txt
ia search 'collection:buddhist-digital-resource-center' | sed -re 's/^\{"identifier": "bdrc-(.*)"\}$/\1/g' | sort | grep '^W' > cache/ia-bdrc.txt
ia search 'collection:buddhist-digital-resource-center AND collection:geo_restricted' | sed -re 's/^\{"identifier": "bdrc-(.*)"\}$/\1/g' | sort > cache/ia-geo_restricted.txt
ia search 'collection:bdrc-fplmanuscripts' | sed -re 's/^\{"identifier": "bdrc-(.*)"\}$/\1/g' | sort > cache/ia-bdrc-fplmanuscripts.txt
ia search 'collection:bdrc-khmermanuscripts' | sed -re 's/^\{"identifier": "bdrc-(.*)"\}$/\1/g' | sort > cache/ia-bdrc-khmermanuscripts.txt
ia search 'collection:buddhist-digital-resource-center AND collection:stream_only' | sed -re 's/^\{"identifier": "bdrc-(.*)"\}$/\1/g' | sort > cache/ia-bdrc-stream_only.txt
ia search 'collection:buddhist-digital-resource-center AND collection:buddhist-digital-resource-center-restricted' | sed -re 's/^\{"identifier": "bdrc-(.*)"\}$/\1/g' | sort > cache/ia-bdrc-restricted.txt
curl 'https://ldspdi.bdrc.io/query/table/IA_mustbeunlisted?format=csv&pageSize=20000' | tail -n +2 | sed -re 's/^"bdr:(.*)"$/\1/g' | sort > cache/bdrc-mustbeunlinsted.txt
curl 'https://ldspdi.bdrc.io/query/table/IA_mustbeingeorestricted?format=csv&pageSize=20000' | tail -n +2 | sed -re 's/^"bdr:(.*)"$/\1/g' | sort > cache/bdrc-mustbeingeorestricted.txt
curl 'https://ldspdi.bdrc.io/query/table/IA_mustbeinlibrary?format=csv&pageSize=20000' | tail -n +2 | sed -re 's/^"bdr:(.*)"$/\1/g' | sort > cache/bdrc-mustbeinlibrary.txt
curl 'https://ldspdi.bdrc.io/query/table/IA_mustbeinbdrcrestricted?format=csv&pageSize=20000' | tail -n +2 | sed -re 's/^"bdr:(.*)"$/\1/g' | sort > cache/bdrc-mustbeinbdrcrestricted.txt