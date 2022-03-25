## IA policies

- items in `inlibrary` are all lendable and no geo-restriction applies, even if items are in `geo_restricted`. Hank requested their lending system to apply geo-restrictions in March 2022.
- items in `stream_only` also ignore geo-restrictions.

## BDRC policies

- items with `status != released` shouldn't be uploaded to IA, when they are they should be `noindex`
- items with `access != open && access != fairuse` should be `noindex` and in the `buddhist-digital-resource-center-restricted` collection
- items with `access == fairuse` should be in the `stream_only` collection
- items with `restrictedInChina == true` should be in the `geo_restricted` collection
- items with `access == fairuse` should be in the `buddhist-digital-resource-center-restricted` and `inlibrary` collection
- items from FPL should be in the `bdrc-palmleafmanuscripts` and `bdrc-fplmanuscripts` collections
- items from FEMC should be in the `bdrc-palmleafmanuscripts` and `bdrc-khmermanuscripts` collections
- items with `access == open` should be:
   * in `buddhist-digital-resource-center-restricted` if `restrictedInChina == true`
   * in `stream_only` collection otherwise