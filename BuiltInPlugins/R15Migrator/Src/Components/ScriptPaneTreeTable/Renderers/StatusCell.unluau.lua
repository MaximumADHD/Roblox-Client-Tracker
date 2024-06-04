-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.RoactRodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.Dash.join
local var6 = var3.UI
local var7 = var6.Image
local var8 = var6.LinkText
local var9 = var6.TextLabel
local var10 = var0.Src.Actions
local var11 = var0.Src.Components
local var12 = require(var0.Src.Types)
local var13 = var0.Src.Util
local var14 = var1.PureComponent:extend("StatusCell")
local function fun0(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var2 = var1.Localization
   if var1.Value then
      local var46 = {}
      var46.AnchorPoint = Vector2.new(0.5, 0.5)
      var46.Size = UDim2.fromOffset(16, 16)
      var46.Position = UDim2.fromScale(0.5, 0.5)
      var46.Image = "rbxasset://textures/R15Migrator/Icon_Checkmark.png"
      return var1.createElement(var7, var46)
   end
end

function var14.render(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var2 = var1.Localization
   if var1.Value then
      local var46 = {}
      var46.AnchorPoint = Vector2.new(0.5, 0.5)
      var46.Size = UDim2.fromOffset(16, 16)
      var46.Position = UDim2.fromScale(0.5, 0.5)
      var46.Image = "rbxasset://textures/R15Migrator/Icon_Checkmark.png"
      return var1.createElement(var7, var46)
   end
end

fun0 = var4.withContext
local var61 = {}
var61.Analytics = var4.Analytics
var61.Localization = var4.Localization
var61.Stylizer = var3.Style.Stylizer
var14 = fun0(var61)(var14)
return var14
