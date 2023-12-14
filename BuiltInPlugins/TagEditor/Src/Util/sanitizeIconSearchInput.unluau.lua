-- Generated with Unluau (https://github.com/valencefun/unluau)
function sanitizeIconSearchInput(arg1)
   arg1 = string.gsub(arg1, "???", "-")
   arg1 = string.gsub(arg1, "???", "-")
   arg1 = string.gsub(arg1, "???", "-")
   arg1 = string.gsub(arg1, "???", "-")
   arg1 = string.gsub(arg1, "???", "-")
   arg1 = string.gsub(arg1, "%-", "%%-")
   arg1 = string.lower(arg1)
   return arg1
end

return sanitizeIconSearchInput
