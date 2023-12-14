-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.TerrainEnums).BrushMode
local var4 = script.Parent.Parent
local var5 = require(var4.LabeledElementPair)
local var6 = require(var4.SingleSelectButtonGroup)
local var7 = game:GetService("UserInputService")
local var8 = var1.PureComponent:extend("BrushModeSelector")
function var8.didMount(arg1)
   arg1.inputBegan = var7.InputBegan:Connect(function(arg1)
      if arg1.KeyCode ~= Enum.KeyCode.LeftControl then
         if arg1.KeyCode ~= Enum.KeyCode.RightControl then
            if arg1.KeyCode == "LeftControl" then
               arg1:setState({})
            end
         end
      end
      arg1:setState({})
   end)
   arg1.inputEnded = var7.InputEnded:Connect(function(arg1)
      if arg1.KeyCode ~= Enum.KeyCode.LeftControl then
         if arg1.KeyCode ~= Enum.KeyCode.RightControl then
            if arg1.KeyCode == "LeftControl" then
               arg1:setState({})
            end
         end
      end
      arg1:setState({})
   end)
end

function var8.willUnmount(arg1)
   if arg1.inputBegan then
      arg1.inputBegan:Disconnect()
   end
   if arg1.inputEnded then
      arg1.inputEnded:Disconnect()
   end
end

local function fun4(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.brushMode
   local var2 = arg1.props.currentTool
   if not var7:IsKeyDown(Enum.KeyCode.LeftControl) then
      if var7:IsKeyDown(Enum.KeyCode.RightControl) then
         if not var7:IsKeyDown(Enum.KeyCode.B) then
            if var1 == "Enum" then
               local var0 = var3.Subtract
            elseif var1 == "Enum" then
               local var0 = var3.Add
            end
         end
      end
   end
   if not var7:IsKeyDown(Enum.KeyCode.B) then
      if var1 == "Enum" then
         local var0 = var3.Subtract
      elseif var1 == "Enum" then
         local var0 = var3.Add
      end
   end
   local var201 = {}
   var201.Size = UDim2.new(1, 0, 0, 22)
   var201.Text = var0:getText("BrushSettings", "BrushMode")
   var201.LayoutOrder = arg1.props.LayoutOrder
   var201.Tooltip = var0:getText("BrushSettings", "BrushModeTooltip")
   local var220 = {}
   var220.Size = UDim2.new(0, 141, 0, 22)
   var220.Selected = var1
   var220.Select = arg1.props.setBrushMode
   local var3 = {}
   var3.Text = var0:getText("BrushSettings", "Add")
   var3.Data = var3.Add
   local var4 = {}
   var4.Text = var0:getText("BrushSettings", "Subtract")
   var4.Data = var3.Subtract
   var220.Options = {}
   local var5 = var1.createElement(var6, var220)
   return var1.createElement(var5, var201, {})
end

function var8.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.brushMode
   local var2 = arg1.props.currentTool
   if not var7:IsKeyDown(Enum.KeyCode.LeftControl) then
      if var7:IsKeyDown(Enum.KeyCode.RightControl) then
         if not var7:IsKeyDown(Enum.KeyCode.B) then
            if var1 == "Enum" then
               local var0 = var3.Subtract
            elseif var1 == "Enum" then
               local var0 = var3.Add
            end
         end
      end
   end
   if not var7:IsKeyDown(Enum.KeyCode.B) then
      if var1 == "Enum" then
         local var0 = var3.Subtract
      elseif var1 == "Enum" then
         local var0 = var3.Add
      end
   end
   local var201 = {}
   var201.Size = UDim2.new(1, 0, 0, 22)
   var201.Text = var0:getText("BrushSettings", "BrushMode")
   var201.LayoutOrder = arg1.props.LayoutOrder
   var201.Tooltip = var0:getText("BrushSettings", "BrushModeTooltip")
   local var220 = {}
   var220.Size = UDim2.new(0, 141, 0, 22)
   var220.Selected = var1
   var220.Select = arg1.props.setBrushMode
   local var3 = {}
   var3.Text = var0:getText("BrushSettings", "Add")
   var3.Data = var3.Add
   local var4 = {}
   var4.Text = var0:getText("BrushSettings", "Subtract")
   var4.Data = var3.Subtract
   var220.Options = {}
   local var5 = var1.createElement(var6, var220)
   return var1.createElement(var5, var201, {})
end

fun4 = var2.withContext
local var244 = {}
var244.Localization = var2.Localization
var8 = fun4(var244)(var8)
return var8
