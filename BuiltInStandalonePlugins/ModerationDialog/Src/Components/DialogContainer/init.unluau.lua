-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("ModerationDialog")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.UI.Hooks.useDialog
local var5 = var2.Util.LayoutOrderIterator
local var6 = var0.Src.Components
local var7 = require(var6.Checkbox)
local var8 = require(var6.Reason)
local var9 = require(var6.ReviewedNote)
local var10 = require(var0.Src.Util.AbuseTypeToString)
local var11 = game:DefineFastString("ModerationDialogToULink", "https://en.help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use")
local function var12(arg1, arg2, arg3)
   local var0 = var3:use()
   local var1 = var5.new()
   local var2 = {}
   local var53 = {}
   var53.LayoutOrder = var1:getNextOrder()
   var1.Tag = "X-Fill X-Column Component-DialogContainer"
   local var59 = {}
   local var63 = {}
   var63.ReviewDateTime = arg1.ReviewDateTime
   var63.ModeratorNote = arg1.ModeratorNote
   var63.LayoutOrder = var1:getNextOrder()
   var59.ReviewedNote = var1.createElement(var9, var63)
   local var72 = {}
   var72.LayoutOrder = var1:getNextOrder()
   local var77 = "Separator"
   var1.Tag = var77
   var59.Separator1 = var1.createElement("Frame", var72)
   local var82 = {}
   var77 = var0
   var82.Reason = var10(var77, arg1.Reason.abuseType)
   var82.OffensiveItem = arg1.Reason.utteranceText
   var82.LayoutOrder = var1:getNextOrder()
   var59.Reason = var1.createElement(var8, var82)
   local var95 = {}
   var95.LayoutOrder = var1:getNextOrder()
   var1.Tag = "Separator"
   var59.Separator2 = var1.createElement("Frame", var95)
   local var105 = {}
   var105.Text = var0:getText("Agreement", "GuidelinesAndToU")
   var105.LayoutOrder = var1:getNextOrder()
   var1.Tag = "X-FitY"
   var59.GuidelinesAndToU = var1.createElement("TextLabel", var105)
   local var119 = {}
   var119.LayoutOrder = var1:getNextOrder()
   var119.Text = var0:getText("Agreement", "IAgree")
   var119.Checked = arg2
   function var119.OnChecked()
      arg3(arg2)
   end
   
   var1.Tag = "X-FitY"
   var59.AgreeCheckBox = var1.createElement(var7, var119)
   var2.DialogContainer = var1.createElement("Frame", var53, var59)
   return var2
end

return function(arg1)
   local var0 = var3:use()
   local var1 = var1.useState(false)
   local var148 = var1
   local var149 = var0.locale
   local var248 = var0.locale
   local var255 = var0.locale
   local var258 = {}
   var258.Intent = "Warning"
   var258.Heading = var0:getText("WarningHeader", "WarningHeader")
   var258.Body = var0:getText("WarningHeader", "WarningBody")
   var258.Contents = var12(arg1, var1, var271)
   var258.ActionPrimary = var1.useMemo(function()
      arg3(arg2)
   end, {})
   var258.ActionSecondary = var1.useMemo(function(arg1, arg2, arg3)
      local var0 = var3:use()
      local var1 = var5.new()
      local var2 = {}
      local var166 = {}
      var166.LayoutOrder = var1:getNextOrder()
      var1.Tag = "X-Fill X-Column Component-DialogContainer"
      local var172 = {}
      local var176 = {}
      var176.ReviewDateTime = arg1.ReviewDateTime
      var176.ModeratorNote = arg1.ModeratorNote
      var176.LayoutOrder = var1:getNextOrder()
      var172.ReviewedNote = var1.createElement(var9, var176)
      local var185 = {}
      var185.LayoutOrder = var1:getNextOrder()
      local var190 = "Separator"
      var1.Tag = var190
      var172.Separator1 = var1.createElement("Frame", var185)
      local var195 = {}
      var190 = var0
      var195.Reason = var10(var190, arg1.Reason.abuseType)
      var195.OffensiveItem = arg1.Reason.utteranceText
      var195.LayoutOrder = var1:getNextOrder()
      var172.Reason = var1.createElement(var8, var195)
      local var208 = {}
      var208.LayoutOrder = var1:getNextOrder()
      var1.Tag = "Separator"
      var172.Separator2 = var1.createElement("Frame", var208)
      local var218 = {}
      var218.Text = var0:getText("Agreement", "GuidelinesAndToU")
      var218.LayoutOrder = var1:getNextOrder()
      var1.Tag = "X-FitY"
      var172.GuidelinesAndToU = var1.createElement("TextLabel", var218)
      local var232 = {}
      var232.LayoutOrder = var1:getNextOrder()
      var232.Text = var0:getText("Agreement", "IAgree")
      var232.Checked = arg2
      function var232.OnChecked()
         arg3(arg2)
      end
      
      var1.Tag = "X-FitY"
      var172.AgreeCheckBox = var1.createElement(var7, var232)
      var2.DialogContainer = var1.createElement("Frame", var166, var172)
      return var2
   end, {})
   var258.ActionTertiary = var1.useMemo(function()
      print("reactivate")
   end, {})
   var258.Modal = false
   var258.Width = 475
   local var276 = var1
   var276 = var4(var258)
   var276.useEffect(var276, {})
   return nil
end
