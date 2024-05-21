-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("ModerationDialog")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.Util
local var5 = var2.Util.LayoutOrderIterator
return function(arg1)
   local var0 = var3:use()
   local var1 = var5.new()
   local var2 = DateTime.fromIsoDate(arg1.ReviewDateTime)
   local var3 = var2 and var2:FormatLocalTime("lll", var0:getLocale())
   local var38 = {}
   local var41 = "Component-ReviewedNote X-FitY"
   var1.Tag = var41
   var38.LayoutOrder = arg1.LayoutOrder
   local var43 = {}
   var41 = var3
   if var41 then
      local var47 = {}
      local var50 = {}
      var50.dateTime = var3
      var47.Text = var0:getText("ReviewedNote", "ReviewedDateTime1", var50)
      var47.LayoutOrder = var1:getNextOrder()
      var1.Tag = "X-FitY"
      local var0 = var1.createElement("TextLabel", var47)
   end
   var43.ReviewedDateTime = var41
   local var62 = {}
   local var65 = {}
   var65.note = arg1.ModeratorNote
   var62.Text = var0:getText("ReviewedNote", "ModeratorNote1", var65)
   var62.LayoutOrder = var1:getNextOrder()
   var1.Tag = "X-FitY"
   var43.ModeratorNote = var1.createElement("TextLabel", var62)
   return var1.createElement("Frame", var38, var43)
end
