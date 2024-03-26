-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = require(var0.Core.Components.DropdownMenu)
local var6 = var2.PureComponent:extend("AssetTypeSelector")
function var6.init(arg1, arg2)
   function arg1.onItemClicked(arg1)
      local var1052 = {}
      var1052.dropDownIndex = arg1
      arg1:setState(var1052)
      if arg1.props.assetTypeEnum ~= Enum.AssetType.Plugin then
         if arg1.props.assetTypeEnum == "setState" then
            if arg1.props.onAssetTypeSelected then
               arg1.props.onAssetTypeSelected(arg1.props.assetTypeEnum)
               if arg1.props.onAssetTypeSelected then
                  local var0 = arg1.props.items[arg1]
                  if var0 then
                     if var0.type then
                        arg1.props.onAssetTypeSelected(var0.type)
                     end
                  end
               end
            end
         end
      end
      if arg1.props.onAssetTypeSelected then
         arg1.props.onAssetTypeSelected(arg1.props.assetTypeEnum)
         if arg1.props.onAssetTypeSelected then
            local var0 = arg1.props.items[arg1]
            if var0 then
               if var0.type then
                  arg1.props.onAssetTypeSelected(var0.type)
               end
            end
         end
      end
   end
   
   arg1.onItemClicked(arg1:getFirstSelectableIndex())
end

function var6.getFirstSelectableIndex(arg1)
   local var0 = 1
   local var1 = arg1.props.items
   local var2 = 1
   if arg1.props.items[var0].selectable then
      return var0
   end
end

local function fun13(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var1124 = {}
   var1124.BackgroundTransparency = 1
   var1124.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1124.Position = var0.Position
   var1124.Active = true
   local var1134 = {}
   local var1138 = {}
   var1138.BackgroundTransparency = 1
   var1138.Position = UDim2.new(0, 0, 0, 65508)
   var1138.Size = UDim2.new(1, 0, 0, 24)
   var1138.TextColor3 = var1.typeSelection.selector.title
   var1138.TextSize = 16
   var1138.Font = var3.FONT
   var1138.Text = "Choose asset type"
   var1138.TextXAlignment = Enum.TextXAlignment.Left
   var1134.Title = var2.createElement("TextLabel", var1138)
   local var1164 = {}
   var1164.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1164.Size = UDim2.new(1, 0, 1, 0)
   var1164.selectedDropDownIndex = arg1.state.dropDownIndex
   var1164.visibleDropDOwnCount = 5
   var1164.items = arg1.props.items
   var1164.rowHeight = 24
   var1164.fontSize = 20
   var1164.onItemClicked = arg1.onItemClicked
   var1134.Dropdown = var2.createElement(var5, var1164)
   local var1190 = {}
   var1190.BackgroundTransparency = 1
   var1190.Position = UDim2.new(0, 0, 1, 0)
   var1190.Size = UDim2.new(1, 0, 0, 18)
   var1190.TextColor3 = var1.typeSelection.selector.description
   var1190.TextSize = 12
   var1190.Font = var3.FONT
   var1190.Text = "Once published, this model can be shared in Marketplace"
   var1190.TextXAlignment = Enum.TextXAlignment.Left
   var1134.Description = var2.createElement("TextLabel", var1190)
   return var2.createElement("Frame", var1124, var1134)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var1124 = {}
   var1124.BackgroundTransparency = 1
   var1124.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1124.Position = var0.Position
   var1124.Active = true
   local var1134 = {}
   local var1138 = {}
   var1138.BackgroundTransparency = 1
   var1138.Position = UDim2.new(0, 0, 0, 65508)
   var1138.Size = UDim2.new(1, 0, 0, 24)
   var1138.TextColor3 = var1.typeSelection.selector.title
   var1138.TextSize = 16
   var1138.Font = var3.FONT
   var1138.Text = "Choose asset type"
   var1138.TextXAlignment = Enum.TextXAlignment.Left
   var1134.Title = var2.createElement("TextLabel", var1138)
   local var1164 = {}
   var1164.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1164.Size = UDim2.new(1, 0, 1, 0)
   var1164.selectedDropDownIndex = arg1.state.dropDownIndex
   var1164.visibleDropDOwnCount = 5
   var1164.items = arg1.props.items
   var1164.rowHeight = 24
   var1164.fontSize = 20
   var1164.onItemClicked = arg1.onItemClicked
   var1134.Dropdown = var2.createElement(var5, var1164)
   local var1190 = {}
   var1190.BackgroundTransparency = 1
   var1190.Position = UDim2.new(0, 0, 1, 0)
   var1190.Size = UDim2.new(1, 0, 0, 18)
   var1190.TextColor3 = var1.typeSelection.selector.description
   var1190.TextSize = 12
   var1190.Font = var3.FONT
   var1190.Text = "Once published, this model can be shared in Marketplace"
   var1190.TextXAlignment = Enum.TextXAlignment.Left
   var1134.Description = var2.createElement("TextLabel", var1190)
   return var2.createElement("Frame", var1124, var1134)
end

fun13 = var4.withContext
local var1214 = {}
var1214.Stylizer = var4.Stylizer
var6 = fun13(var1214)(var6)
return var6
