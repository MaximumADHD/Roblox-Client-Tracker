-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("Selection")
local var2 = game:GetService("CoreGui")
local var3 = require(var0.Packages.Roact)
local var4 = require(var0.Src.Utility.renderAlignObjectsPreview)
local var5 = require(var0.Src.Utility.RelativeTo)
local var6 = var3.PureComponent:extend("AlignObjectsPreview")
function var6.render(arg1)
   local var0 = arg1.props
   if var0.relativeTo == "createElement" then
      local var0 = var1.ActiveInstance
   end
   local var187 = {}
   var187.target = var2
   local var189 = {}
   local var194 = {}
   var194.Elements = var4(var0.objects, var0.space, var0.axes, var0.mode, nil)
   var189.AlignToolPreviewUI = var3.createElement("Folder", {}, var194)
   return var3.createElement(var3.Portal, var187, var189)
end

return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.objects = arg1.alignableObjects
   var0.mode = arg1.alignmentMode
   var0.space = arg1.alignmentSpace
   var0.axes = arg1.enabledAxes
   var0.relativeTo = arg1.relativeTo
   var0.alignEnabled = arg1.alignEnabled
   return var0
end, nil)(var6)
