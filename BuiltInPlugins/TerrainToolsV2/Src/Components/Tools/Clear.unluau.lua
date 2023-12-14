-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = require(var0.Src.ContextItems)
local var5 = var1.UI.Button
local var6 = var1.UI.Dialog
local var7 = require(var0.Src.Actions.ChangeTool)
local var8 = require(var0.Src.Util.TerrainEnums).ToolId
local var9 = game:GetService("ChangeHistoryService")
local var10 = game:GetService("TextService")
local var11 = var2.PureComponent:extend(script.Name)
function var11.init(arg1)
   local var312 = {}
   var312.showingDialog = false
   arg1.state = var312
   function arg1.onYesClicked()
      if arg1.state.clearing then
      end
      local var318 = {}
      var318.clearingStarted = true
      var318.showingDialog = false
      arg1:setState(var318)
      arg1.props.Terrain:get():Clear()
      var9:SetWaypoint("Terrain Clear")
      arg1.props.dispatchChangeTool(var8.None)
   end
   
   function arg1.onNoClicked()
      arg1.props.dispatchChangeTool(var8.None)
   end
   
   function arg1.onButtonClicked(arg1)
      if arg1 == "yes" then
         arg1.onYesClicked()
      end
      if arg1 == "no" then
         arg1.onNoClicked()
      end
   end
   
end

function var11.didMount(arg1)
   spawn(function()
      if arg1.state.clearing then
      end
      local var352 = {}
      var352.clearingStarted = true
      var352.showingDialog = false
      arg1:setState(var352)
      arg1.props.Terrain:get():Clear()
      var9:SetWaypoint("Terrain Clear")
      arg1.props.dispatchChangeTool(var8.None)
   end)
end

local function fun14(arg1)
   local var0 = arg1.props.Theme:get()
   local var1 = arg1.props.Localization
   if not arg1.state.showingDialog then
      return nil
   end
   local var385 = var1:getText("ClearTool", "ConfirmationMessage")
   local var386 = var0.textSize
   local var387 = var0.font
   local var389 = Vector2.new()
   local var6 = var10:GetTextSize().x
   local var7 = math.max(168, 48 + var6 + 8)
   local var400 = {}
   var400.Key = "no"
   var400.Text = var1:getText("Confirmation", "No")
   var400.Style = "Round"
   local var407 = {}
   var407.Key = "yes"
   var407.Text = var1:getText("Confirmation", "Yes")
   var407.Style = "RoundPrimary"
   local var10 = {}
   local var418 = {}
   var418.Padding = UDim.new(0, 8)
   var418.FillDirection = Enum.FillDirection.Horizontal
   var418.SortOrder = Enum.SortOrder.LayoutOrder
   var418.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var418.VerticalAlignment = Enum.VerticalAlignment.Top
   var10.UIListLayout = var2.createElement("UIListLayout", var418)
   local var446 = ipairs({})
   local var447 = var10
   local var456 = function(arg1, arg2, arg3)
      local var434 = {}
      var434.LayoutOrder = arg2
      var434.OnClick = arg3
      var434.Size = UDim2.new(0, 72, 0, 24)
      var434.Style = arg1.Style
      var434.Text = arg1.Text
      return var2.createElement(var5, var434)
   end(var449, var450, function()
      arg1.props.dispatchChangeTool(var8.None)
   end)
   table.insert()
   local var461 = {}
   var461.Title = var1:getText("ClearTool", "ConfirmationTitle")
   var461.Size = Vector2.new(var7, 80)
   var461.MinSize = Vector2.new(var7, 80)
   var461.Resizable = false
   var461.Modal = true
   var461.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var461.Enabled = true
   var461.OnClose = arg1.onNoClicked
   local var479 = {}
   local var483 = {}
   var483.Position = UDim2.new(0, 0, 0, 0)
   var483.Size = UDim2.new(1, 0, 1, 0)
   var483.BackgroundColor3 = var0.backgroundColor
   local var497 = {}
   local var501 = {}
   var501.PaddingBottom = UDim.new(0, 8)
   var501.PaddingLeft = UDim.new(0, 8)
   var501.PaddingRight = UDim.new(0, 8)
   var501.PaddingTop = UDim.new(0, 8)
   var497.UIPadding = var2.createElement("UIPadding", var501)
   local var522 = {}
   var522.AnchorPoint = Vector2.new(0.5, 0)
   var522.Position = UDim2.new(0.5, 0, 0, 0)
   var522.Size = UDim2.new(1, 0, 1, 65504)
   var522.BackgroundTransparency = 1
   local var540 = {}
   local var544 = {}
   var544.Size = UDim2.new(0, 32, 0, 32)
   var544.BackgroundTransparency = 1
   var544.Image = "rbxasset://textures/DevConsole/Info.png"
   var540.Icon = var2.createElement("ImageLabel", var544)
   local var557 = {}
   var557.Position = UDim2.new(0, 40, 0, 0)
   var557.Size = UDim2.new(0, var6, 1, 0)
   var557.BackgroundTransparency = 1
   var557.Text = var1:getText("ClearTool", "ConfirmationMessage")
   var557.Font = var0.font
   var557.TextSize = var0.textSize
   var557.TextColor3 = var0.textColor
   var557.TextYAlignment = Enum.TextYAlignment.Top
   var540.Message = var2.createElement("TextLabel", var557)
   var497.Content = var2.createElement("Frame", var522, var540)
   local var584 = {}
   var584.AnchorPoint = Vector2.new(0.5, 1)
   var584.Position = UDim2.new(0.5, 0, 1, 0)
   var584.Size = UDim2.new(1, 0, 0, 24)
   local var601 = 1
   var584.BackgroundTransparency = var601
   var601 = var10
   var497.Buttons = var2.createElement("Frame", var584, var601)
   var479.Background = var2.createElement("Frame", var483, var497)
   return var2.createElement(var6, var461, var479)
end

function var11.render(arg1)
   local var0 = arg1.props.Theme:get()
   local var1 = arg1.props.Localization
   if not arg1.state.showingDialog then
      return nil
   end
   local var385 = var1:getText("ClearTool", "ConfirmationMessage")
   local var386 = var0.textSize
   local var387 = var0.font
   local var389 = Vector2.new()
   local var6 = var10:GetTextSize().x
   local var7 = math.max(168, 48 + var6 + 8)
   local var400 = {}
   var400.Key = "no"
   var400.Text = var1:getText("Confirmation", "No")
   var400.Style = "Round"
   local var407 = {}
   var407.Key = "yes"
   var407.Text = var1:getText("Confirmation", "Yes")
   var407.Style = "RoundPrimary"
   local var10 = {}
   local var418 = {}
   var418.Padding = UDim.new(0, 8)
   var418.FillDirection = Enum.FillDirection.Horizontal
   var418.SortOrder = Enum.SortOrder.LayoutOrder
   var418.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var418.VerticalAlignment = Enum.VerticalAlignment.Top
   var10.UIListLayout = var2.createElement("UIListLayout", var418)
   local var446 = ipairs({})
   local var447 = var10
   local var456 = function(arg1, arg2, arg3)
      local var434 = {}
      var434.LayoutOrder = arg2
      var434.OnClick = arg3
      var434.Size = UDim2.new(0, 72, 0, 24)
      var434.Style = arg1.Style
      var434.Text = arg1.Text
      return var2.createElement(var5, var434)
   end(var449, var450, function()
      arg1.props.dispatchChangeTool(var8.None)
   end)
   table.insert()
   local var461 = {}
   var461.Title = var1:getText("ClearTool", "ConfirmationTitle")
   var461.Size = Vector2.new(var7, 80)
   var461.MinSize = Vector2.new(var7, 80)
   var461.Resizable = false
   var461.Modal = true
   var461.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var461.Enabled = true
   var461.OnClose = arg1.onNoClicked
   local var479 = {}
   local var483 = {}
   var483.Position = UDim2.new(0, 0, 0, 0)
   var483.Size = UDim2.new(1, 0, 1, 0)
   var483.BackgroundColor3 = var0.backgroundColor
   local var497 = {}
   local var501 = {}
   var501.PaddingBottom = UDim.new(0, 8)
   var501.PaddingLeft = UDim.new(0, 8)
   var501.PaddingRight = UDim.new(0, 8)
   var501.PaddingTop = UDim.new(0, 8)
   var497.UIPadding = var2.createElement("UIPadding", var501)
   local var522 = {}
   var522.AnchorPoint = Vector2.new(0.5, 0)
   var522.Position = UDim2.new(0.5, 0, 0, 0)
   var522.Size = UDim2.new(1, 0, 1, 65504)
   var522.BackgroundTransparency = 1
   local var540 = {}
   local var544 = {}
   var544.Size = UDim2.new(0, 32, 0, 32)
   var544.BackgroundTransparency = 1
   var544.Image = "rbxasset://textures/DevConsole/Info.png"
   var540.Icon = var2.createElement("ImageLabel", var544)
   local var557 = {}
   var557.Position = UDim2.new(0, 40, 0, 0)
   var557.Size = UDim2.new(0, var6, 1, 0)
   var557.BackgroundTransparency = 1
   var557.Text = var1:getText("ClearTool", "ConfirmationMessage")
   var557.Font = var0.font
   var557.TextSize = var0.textSize
   var557.TextColor3 = var0.textColor
   var557.TextYAlignment = Enum.TextYAlignment.Top
   var540.Message = var2.createElement("TextLabel", var557)
   var497.Content = var2.createElement("Frame", var522, var540)
   local var584 = {}
   var584.AnchorPoint = Vector2.new(0.5, 1)
   var584.Position = UDim2.new(0.5, 0, 1, 0)
   var584.Size = UDim2.new(1, 0, 0, 24)
   local var601 = 1
   var584.BackgroundTransparency = var601
   var601 = var10
   var497.Buttons = var2.createElement("Frame", var584, var601)
   var479.Background = var2.createElement("Frame", var483, var497)
   return var2.createElement(var6, var461, var479)
end

fun14 = var3.withContext
local var605 = {}
var605.Theme = var4.DEPRECATED_Theme
var605.Localization = var3.Localization
var605.Terrain = var4.Terrain
var11 = fun14(var605)(var11)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.dispatchChangeTool()
      if arg1.state.clearing then
      end
      local var618 = {}
      var618.clearingStarted = true
      var618.showingDialog = false
      arg1:setState(var618)
      arg1.props.Terrain:get():Clear()
      var9:SetWaypoint("Terrain Clear")
      arg1.props.dispatchChangeTool(var8.None)
   end
   
   return var0
end)(var11)
