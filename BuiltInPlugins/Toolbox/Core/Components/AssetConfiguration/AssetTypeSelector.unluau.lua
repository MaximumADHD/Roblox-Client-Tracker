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
      local var1039 = {}
      var1039.dropDownIndex = arg1
      arg1:setState(var1039)
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
   local var1111 = {}
   var1111.BackgroundTransparency = 1
   var1111.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1111.Position = var0.Position
   var1111.Active = true
   local var1121 = {}
   local var1125 = {}
   var1125.BackgroundTransparency = 1
   var1125.Position = UDim2.new(0, 0, 0, 65508)
   var1125.Size = UDim2.new(1, 0, 0, 24)
   var1125.TextColor3 = var1.typeSelection.selector.title
   var1125.TextSize = 16
   var1125.Font = var3.FONT
   var1125.Text = "Choose asset type"
   var1125.TextXAlignment = Enum.TextXAlignment.Left
   var1121.Title = var2.createElement("TextLabel", var1125)
   local var1151 = {}
   var1151.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1151.Size = UDim2.new(1, 0, 1, 0)
   var1151.selectedDropDownIndex = arg1.state.dropDownIndex
   var1151.visibleDropDOwnCount = 5
   var1151.items = arg1.props.items
   var1151.rowHeight = 24
   var1151.fontSize = 20
   var1151.onItemClicked = arg1.onItemClicked
   var1121.Dropdown = var2.createElement(var5, var1151)
   local var1177 = {}
   var1177.BackgroundTransparency = 1
   var1177.Position = UDim2.new(0, 0, 1, 0)
   var1177.Size = UDim2.new(1, 0, 0, 18)
   var1177.TextColor3 = var1.typeSelection.selector.description
   var1177.TextSize = 12
   var1177.Font = var3.FONT
   var1177.Text = "Once published, this model can be shared in Marketplace"
   var1177.TextXAlignment = Enum.TextXAlignment.Left
   var1121.Description = var2.createElement("TextLabel", var1177)
   return var2.createElement("Frame", var1111, var1121)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var1111 = {}
   var1111.BackgroundTransparency = 1
   var1111.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1111.Position = var0.Position
   var1111.Active = true
   local var1121 = {}
   local var1125 = {}
   var1125.BackgroundTransparency = 1
   var1125.Position = UDim2.new(0, 0, 0, 65508)
   var1125.Size = UDim2.new(1, 0, 0, 24)
   var1125.TextColor3 = var1.typeSelection.selector.title
   var1125.TextSize = 16
   var1125.Font = var3.FONT
   var1125.Text = "Choose asset type"
   var1125.TextXAlignment = Enum.TextXAlignment.Left
   var1121.Title = var2.createElement("TextLabel", var1125)
   local var1151 = {}
   var1151.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1151.Size = UDim2.new(1, 0, 1, 0)
   var1151.selectedDropDownIndex = arg1.state.dropDownIndex
   var1151.visibleDropDOwnCount = 5
   var1151.items = arg1.props.items
   var1151.rowHeight = 24
   var1151.fontSize = 20
   var1151.onItemClicked = arg1.onItemClicked
   var1121.Dropdown = var2.createElement(var5, var1151)
   local var1177 = {}
   var1177.BackgroundTransparency = 1
   var1177.Position = UDim2.new(0, 0, 1, 0)
   var1177.Size = UDim2.new(1, 0, 0, 18)
   var1177.TextColor3 = var1.typeSelection.selector.description
   var1177.TextSize = 12
   var1177.Font = var3.FONT
   var1177.Text = "Once published, this model can be shared in Marketplace"
   var1177.TextXAlignment = Enum.TextXAlignment.Left
   var1121.Description = var2.createElement("TextLabel", var1177)
   return var2.createElement("Frame", var1111, var1121)
end

fun13 = var4.withContext
local var1201 = {}
var1201.Stylizer = var4.Stylizer
var6 = fun13(var1201)(var6)
return var6
