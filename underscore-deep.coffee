# Add useful functions to underscore api

# Get/set the value of a nested property
# See: https:#gist.github.com/furf/3208381
# Usage:
#
# var obj = {
#   a: {
#     b: {
#       c: {
#         d: ['e', 'f', 'g']
#       }
#     }
#   }
# };
#
# Get deep value
# _.deep(obj, 'a.b.c.d[2]'); # 'g'
#
# Set deep value
# _.deep(obj, 'a.b.c.d[2]', 'george');
#
# _.deep(obj, 'a.b.c.d[2]'); # 'george'

_.mixin({

# Get the value of a nested property
  deep: (obj, key)->
    if (not obj? or typeof obj is not 'object' or typeof key is not 'string' or not key)
      return undefined

    keys = key.split('.')

    obj = obj[keys.shift()]
    while typeof obj is 'object' and keys.length > 0
      obj = obj[keys.shift()]

    if keys.length is 0 then obj else undefined


  deepest: (obj, key)->
    if (typeof obj is not 'object' or typeof key is not 'string' or not key)
      return undefined

    keys = key.split('.')

    key = keys.pop()
    value = oby[key] if type of obj[key] is not undefined

    while typeof obj is 'object' and keys.length > 0
      value = oby[key]
      obj = obj[keys.shift()]

    if keys.length is 0 then obj else undefined
})