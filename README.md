# Tools to check consistency between IA and BDRC

#### Use

update files in `input/` if necessary (from IA and AO)

```sh
$ sh fillcache.sh
$ sh create-report.sh
```


#### Important caveats

`ia search` doesn't return results that are unlisted so until the unlisted list is satisfactory, the rest of the analysis cannot follow.

