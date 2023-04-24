%dw 2.0
output application/json
var v = [2,3,4]
---
// payload map {key : payload[0 to '$$'] reduce ($+$$)}.key

  v map(item,index) -> { R: v[0 to index] reduce (item + index)}.R