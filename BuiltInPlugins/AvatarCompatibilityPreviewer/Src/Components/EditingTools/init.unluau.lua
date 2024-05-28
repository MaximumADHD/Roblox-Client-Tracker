-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.ViewportToolingFramework)
local var4 = require(var0.Src.Util.Constants)
local var5 = require(var0.Src.Types)
local var6 = require(var0.Src.Util.exhaustiveMatch)
local var7 = require(var0.Src.Hooks.useKeyedState)
local var8 = require(script.AttachmentTool)
local var9 = require(script.CageEditingTool)
local var10 = require(script.RepresentEditorStateOnWorldModel)
local var11 = require(script.useBindFocusOnPVInstance)
local var12 = require(var0.Src.Flags.getFFlagAvatarPreviewerEditingTools)
local var13 = require(var0.Src.Flags.getFFlagAvatarPreviewerCageEditingTools)
local var14 = var1.ContextServices.Localization
local var15 = var1.ContextServices.Plugin
local function var16(arg1)
   local var0 = true
   if arg1 == "attachments" then
      if arg1 == "none" then
         local var0 = false
      end
      local var0 = true
   end
   return var0
end

local function var17(arg1)
   var11(arg1.dummy)
end

return function(arg1)
   assert(var12(), "AvatarPreviewerEditingTools_Dev is not enabled")
   local var0 = var14:use()
   local var1 = var2.useState("none")
   local var2 = var15:use():get()
   var2.useEffect(function(arg1)
      local var0 = true
      if arg1 == "attachments" then
         if arg1 == "none" then
            local var0 = false
         end
         local var0 = true
      end
      return var0
   end, {})
   local var3 = var7(var16, var1)
   local var4 = {}
   local var101 = {}
   var101.Type = "Button"
   var101.Tooltip = var0:getText("EditingTools", "ShowAccessories")
   local var110 = {}
   var110.BackgroundColor3 = Color3.new(1, 0, 1)
   var110.BackgroundTransparency = 0
   var110.Size = UDim2.fromScale(1, 1)
   var101.Icon = var2.createElement("Frame", var110)
   var101.Selected = var3
   function var101.OnClick(arg1)
      var11(arg1.dummy)
   end
   
   local function fun0()
      var1:Deactivate()
   end
   
   local var132 = {}
   local var140 = {}
   var140.InitialPosition = "Top"
   local var6 = fun0("attachments", "attachments_tool", var0:getText("EditingTools", "AttachmentsTool"))
   local var7 = fun0("cage", "cage_tool", var0:getText("EditingTools", "CageTool"))
   var140.VerticalItems = {}
   var4.EDITING_TOOLS_GUI_NAMES.EditingToolbar = var2.createElement(var3.Toolbar, var140)
   if var1 == "none" then
      if var1 == "attachments" then
         local var164 = {}
         var164.worldModel = arg1.worldModel
         var164.additionalToolbarItems = var4
         local var0 = var2.createElement(var8, var164)
      else
         local var168 = var13()
         if var168 then
            if var1 == "cage" then
               local var172 = {}
               var172.mannequin = arg1.worldModel
               var172.additionalToolbarItems = var4
               local var0 = var2.createElement(var9, var172)
            else
               var168 = var1
               local var0 = var6(var168)
            end
         else
            var168 = var1
            local var0 = var6(var168)
         end
      end
   end
   var132.Tool = false
   if var1 == "none" then
      local var183 = {}
      var183.worldModel = arg1.worldModel
      var183.includeAccessories = var3
      local var0 = var2.createElement(var10, var183)
   end
   var132.RepresentEditorStateOnWorldModel = false
   if var1 == "none" then
      local var190 = {}
      var190.dummy = arg1.worldModel
      local var0 = var2.createElement(var17, var190)
   end
   var132.BindFocusOnPVInstance = false
   return var2.createElement(var2.Fragment, {}, var132)
end
