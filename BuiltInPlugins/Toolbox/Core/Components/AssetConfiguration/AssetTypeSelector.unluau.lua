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
      local var1027 = {}
      var1027.dropDownIndex = arg1
      arg1:setState(var1027)
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
   local var1099 = {}
   var1099.BackgroundTransparency = 1
   var1099.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1099.Position = var0.Position
   var1099.Active = true
   local var1109 = {}
   local var1113 = {}
   var1113.BackgroundTransparency = 1
   var1113.Position = UDim2.new(0, 0, 0, 65508)
   var1113.Size = UDim2.new(1, 0, 0, 24)
   var1113.TextColor3 = var1.typeSelection.selector.title
   var1113.TextSize = 16
   var1113.Font = var3.FONT
   var1113.Text = "Choose asset type"
   var1113.TextXAlignment = Enum.TextXAlignment.Left
   var1109.Title = var2.createElement("TextLabel", var1113)
   local var1139 = {}
   var1139.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1139.Size = UDim2.new(1, 0, 1, 0)
   var1139.selectedDropDownIndex = arg1.state.dropDownIndex
   var1139.visibleDropDOwnCount = 5
   var1139.items = arg1.props.items
   var1139.rowHeight = 24
   var1139.fontSize = 20
   var1139.onItemClicked = arg1.onItemClicked
   var1109.Dropdown = var2.createElement(var5, var1139)
   local var1165 = {}
   var1165.BackgroundTransparency = 1
   var1165.Position = UDim2.new(0, 0, 1, 0)
   var1165.Size = UDim2.new(1, 0, 0, 18)
   var1165.TextColor3 = var1.typeSelection.selector.description
   var1165.TextSize = 12
   var1165.Font = var3.FONT
   var1165.Text = "Once published, this model can be shared in Marketplace"
   var1165.TextXAlignment = Enum.TextXAlignment.Left
   var1109.Description = var2.createElement("TextLabel", var1165)
   return var2.createElement("Frame", var1099, var1109)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var1099 = {}
   var1099.BackgroundTransparency = 1
   var1099.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1099.Position = var0.Position
   var1099.Active = true
   local var1109 = {}
   local var1113 = {}
   var1113.BackgroundTransparency = 1
   var1113.Position = UDim2.new(0, 0, 0, 65508)
   var1113.Size = UDim2.new(1, 0, 0, 24)
   var1113.TextColor3 = var1.typeSelection.selector.title
   var1113.TextSize = 16
   var1113.Font = var3.FONT
   var1113.Text = "Choose asset type"
   var1113.TextXAlignment = Enum.TextXAlignment.Left
   var1109.Title = var2.createElement("TextLabel", var1113)
   local var1139 = {}
   var1139.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1139.Size = UDim2.new(1, 0, 1, 0)
   var1139.selectedDropDownIndex = arg1.state.dropDownIndex
   var1139.visibleDropDOwnCount = 5
   var1139.items = arg1.props.items
   var1139.rowHeight = 24
   var1139.fontSize = 20
   var1139.onItemClicked = arg1.onItemClicked
   var1109.Dropdown = var2.createElement(var5, var1139)
   local var1165 = {}
   var1165.BackgroundTransparency = 1
   var1165.Position = UDim2.new(0, 0, 1, 0)
   var1165.Size = UDim2.new(1, 0, 0, 18)
   var1165.TextColor3 = var1.typeSelection.selector.description
   var1165.TextSize = 12
   var1165.Font = var3.FONT
   var1165.Text = "Once published, this model can be shared in Marketplace"
   var1165.TextXAlignment = Enum.TextXAlignment.Left
   var1109.Description = var2.createElement("TextLabel", var1165)
   return var2.createElement("Frame", var1099, var1109)
end

fun13 = var4.withContext
local var1189 = {}
var1189.Stylizer = var4.Stylizer
var6 = fun13(var1189)(var6)
return var6
