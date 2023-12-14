-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(var0.Bin.defineLuaFlags)
local var1 = require(var0.src.Constants)
local var2 = require(var0.src.Globals)
var2.plugin = plugin
var2.toolbar = var2.plugin:CreateToolbar(var1.TOOLBAR_NAME)
local var3 = require(var0.Packages.Roact)
local var4 = require(var0.Packages.Rodux)
local var5 = require(var0.Packages.RoactRodux)
local var6 = require(var0.src.components.AvatarImporter)
local var7 = require(var0.src.actions.ClosePlugin)
local var8 = require(var0.src.actions.TogglePlugin)
local var50 = var4.Store
var50 = require(var0.src.reducers)
local var54 = var4.thunkMiddleware
local var11 = var50.new(var50, nil, {})
local var58 = {}
var58.Enabled = false
var58.Title = var1.TITLE
var58.Name = var1.NAME
var58.Modal = true
local var66 = Vector2.new(var1.BACKGROUND_WIDTH, var1.BACKGROUND_HEIGHT)
var58.Size = var66
local var14 = var2.plugin:CreateQWidgetPluginGui(var1.NAME, var58)
var14.Name = var1.NAME
var14:BindToClose(function()
   local var0 = var7()
   var11:dispatch()
end)
local function var15()
   local var79 = {}
   var79.store = var11
   local var81 = {}
   local var85 = {}
   var85.pluginGui = var14
   var81.AvatarImporter = var3.createElement(var6, var85)
   return var3.createElement(var5.StoreProvider, var79, var81)
end

var66 = var14
local var16 = var3.mount(var15(), var66)
local var17 = var2.toolbar:CreateButton(var1.BUTTON_NAME, var1.BUTTON_TOOLTIP, "rbxlocaltheme://AvatarImporter")
var17.Click:Connect(function()
   local var0 = var8()
   var11:dispatch()
end)
var11.changed:connect(function(arg1)
   local var0 = arg1.plugin.enabled
   var17:SetActive(var0)
   var14.Enabled = var0
end)
settings().Studio.ThemeChanged:Connect(function()
   var3.update(var16, var15())
end)
return nil
