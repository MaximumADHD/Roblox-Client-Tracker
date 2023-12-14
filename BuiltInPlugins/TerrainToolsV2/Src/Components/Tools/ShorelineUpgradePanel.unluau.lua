-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("BrowserService")
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.Roact)
local var4 = var2.ContextServices
local var5 = require(var0.Src.ContextItems)
local var6 = script.Parent.ToolParts
local var7 = require(var6.Panel)
local var8 = require(var6.ButtonGroup)
local var9 = var2.UI.TextWithInlineLink
local var10 = var2.UI.Pane
local var11 = var2.UI.ScrollingFrame
local var12 = game:GetFastString("Shorelines_LearnMoreUrl")
local var13 = var3.PureComponent:extend(script.Name)
local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.ShorelineController
   local var3 = var0.Theme:get()
   local var4 = var0.ShorelinesUpgradePercent
   local var5 = 0
   if var5 <= var4 then
      if 1 > var4 then
         local var0 = false
      end
      local var0 = true
   end
   local var69 = var0.UpperContentYSize
   local var73 = {}
   var73.LayoutOrder = var0.LayoutOrder
   var73.Size = UDim2.new(1, 0, 1, var5)
   local var81 = {}
   local var85 = {}
   var85.isSubsection = true
   var85.Title = var1:getText("UpgradeShorelines", "Title")
   var85.Padding = UDim.new(0, 12)
   local var95 = {}
   local var99 = {}
   var99.Size = UDim2.new(1, 0, 0, 0)
   var99.BackgroundTransparency = 1
   var99.LayoutOrder = 1
   var99.AutomaticSize = Enum.AutomaticSize.Y
   var99.Layout = Enum.FillDirection.Vertical
   var99.Padding = 8
   var99.Spacing = 12
   local var112 = {}
   local var116 = {}
   var116.LayoutOrder = 1
   var116.Text = var1:getText("UpgradeShorelines", "Description") ... "\n\n" ... var1:getText("UpgradeShorelines", "Explanation")
   var116.Font = var3.font
   var116.TextSize = var3.textSize
   var116.TextColor3 = var3.textColor
   var116.Size = UDim2.new(1, 0, 0, 0)
   var116.TextXAlignment = Enum.TextXAlignment.Left
   var116.TextWrapped = true
   var116.AutomaticSize = Enum.AutomaticSize.Y
   var116.Position = UDim2.new(0, 0, 0, 0)
   var116.BackgroundTransparency = 1
   var112.ExplanationText = var3.createElement("TextLabel", var116)
   local var152 = {}
   var152.Size = UDim2.new(1, 0, 0, 0)
   var152.AutomaticSize = Enum.AutomaticSize.Y
   var152.TextXAlignment = Enum.TextXAlignment.Left
   var152.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var152.LayoutOrder = 2
   function var152.OnLinkClicked()
      var1:OpenBrowserWindow(var12)
   end
   
   var152.Text = var1:getText("UpgradeShorelines", "LearnMore")
   var152.LinkText = var1:getText("UpgradeShorelines", "LearnMoreLink")
   var152.LinkPlaceholder = "[link]"
   var152.MaxWidth = 300
   local var176 = {}
   var176.BackgroundTransparency = 1
   var176.Font = var3.font
   var176.TextColor3 = var3.textColor
   var176.TextSize = 16
   var176.TextXAlignment = Enum.TextXAlignment.Left
   var152.TextProps = var176
   var112.LearnMoreLink = var3.createElement(var9, var152)
   var95.ExplanationTextFrame = var3.createElement(var10, var99, var112)
   local var187 = {}
   var187.LayoutOrder = 3
   local var8 = {}
   var8.Key = "UpgradeShorelines"
   var8.Name = var1:getText("UpgradeShorelines", "ActionButton")
   var8.Active = false
   function var8.OnClicked()
      var2:start("Panel")
   end
   
   var187.Buttons = {}
   var95.UpgradeButtons = var3.createElement(var8, var187)
   var81.Panel = var3.createElement(var7, var85, var95)
   return var3.createElement(var11, var73, var81)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.ShorelineController
   local var3 = var0.Theme:get()
   local var4 = var0.ShorelinesUpgradePercent
   local var5 = 0
   if var5 <= var4 then
      if 1 > var4 then
         local var0 = false
      end
      local var0 = true
   end
   local var69 = var0.UpperContentYSize
   local var73 = {}
   var73.LayoutOrder = var0.LayoutOrder
   var73.Size = UDim2.new(1, 0, 1, var5)
   local var81 = {}
   local var85 = {}
   var85.isSubsection = true
   var85.Title = var1:getText("UpgradeShorelines", "Title")
   var85.Padding = UDim.new(0, 12)
   local var95 = {}
   local var99 = {}
   var99.Size = UDim2.new(1, 0, 0, 0)
   var99.BackgroundTransparency = 1
   var99.LayoutOrder = 1
   var99.AutomaticSize = Enum.AutomaticSize.Y
   var99.Layout = Enum.FillDirection.Vertical
   var99.Padding = 8
   var99.Spacing = 12
   local var112 = {}
   local var116 = {}
   var116.LayoutOrder = 1
   var116.Text = var1:getText("UpgradeShorelines", "Description") ... "\n\n" ... var1:getText("UpgradeShorelines", "Explanation")
   var116.Font = var3.font
   var116.TextSize = var3.textSize
   var116.TextColor3 = var3.textColor
   var116.Size = UDim2.new(1, 0, 0, 0)
   var116.TextXAlignment = Enum.TextXAlignment.Left
   var116.TextWrapped = true
   var116.AutomaticSize = Enum.AutomaticSize.Y
   var116.Position = UDim2.new(0, 0, 0, 0)
   var116.BackgroundTransparency = 1
   var112.ExplanationText = var3.createElement("TextLabel", var116)
   local var152 = {}
   var152.Size = UDim2.new(1, 0, 0, 0)
   var152.AutomaticSize = Enum.AutomaticSize.Y
   var152.TextXAlignment = Enum.TextXAlignment.Left
   var152.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var152.LayoutOrder = 2
   function var152.OnLinkClicked()
      var1:OpenBrowserWindow(var12)
   end
   
   var152.Text = var1:getText("UpgradeShorelines", "LearnMore")
   var152.LinkText = var1:getText("UpgradeShorelines", "LearnMoreLink")
   var152.LinkPlaceholder = "[link]"
   var152.MaxWidth = 300
   local var176 = {}
   var176.BackgroundTransparency = 1
   var176.Font = var3.font
   var176.TextColor3 = var3.textColor
   var176.TextSize = 16
   var176.TextXAlignment = Enum.TextXAlignment.Left
   var152.TextProps = var176
   var112.LearnMoreLink = var3.createElement(var9, var152)
   var95.ExplanationTextFrame = var3.createElement(var10, var99, var112)
   local var187 = {}
   var187.LayoutOrder = 3
   local var8 = {}
   var8.Key = "UpgradeShorelines"
   var8.Name = var1:getText("UpgradeShorelines", "ActionButton")
   var8.Active = false
   function var8.OnClicked()
      var2:start("Panel")
   end
   
   var187.Buttons = {}
   var95.UpgradeButtons = var3.createElement(var8, var187)
   var81.Panel = var3.createElement(var7, var85, var95)
   return var3.createElement(var11, var73, var81)
end

fun2 = var4.withContext
local var203 = {}
var203.Localization = var4.Localization
var203.Theme = var5.DEPRECATED_Theme
var203.ShorelineController = require(var0.Src.Util.ShorelineController)
var203.Terrain = var5.Terrain
var203.analytics = var4.Analytics
var203.Plugin = var4.Plugin
var13 = fun2(var203)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.ShorelinesUpgradePercent = arg1.Tools.ShorelinesUpgradePercent
   return var0
end, function()
end)(var13)
