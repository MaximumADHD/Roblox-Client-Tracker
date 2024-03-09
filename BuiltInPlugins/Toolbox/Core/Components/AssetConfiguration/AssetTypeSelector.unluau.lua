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
      local var1015 = {}
      var1015.dropDownIndex = arg1
      arg1:setState(var1015)
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
   local var1087 = {}
   var1087.BackgroundTransparency = 1
   var1087.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1087.Position = var0.Position
   var1087.Active = true
   local var1097 = {}
   local var1101 = {}
   var1101.BackgroundTransparency = 1
   var1101.Position = UDim2.new(0, 0, 0, 65508)
   var1101.Size = UDim2.new(1, 0, 0, 24)
   var1101.TextColor3 = var1.typeSelection.selector.title
   var1101.TextSize = 16
   var1101.Font = var3.FONT
   var1101.Text = "Choose asset type"
   var1101.TextXAlignment = Enum.TextXAlignment.Left
   var1097.Title = var2.createElement("TextLabel", var1101)
   local var1127 = {}
   var1127.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1127.Size = UDim2.new(1, 0, 1, 0)
   var1127.selectedDropDownIndex = arg1.state.dropDownIndex
   var1127.visibleDropDOwnCount = 5
   var1127.items = arg1.props.items
   var1127.rowHeight = 24
   var1127.fontSize = 20
   var1127.onItemClicked = arg1.onItemClicked
   var1097.Dropdown = var2.createElement(var5, var1127)
   local var1153 = {}
   var1153.BackgroundTransparency = 1
   var1153.Position = UDim2.new(0, 0, 1, 0)
   var1153.Size = UDim2.new(1, 0, 0, 18)
   var1153.TextColor3 = var1.typeSelection.selector.description
   var1153.TextSize = 12
   var1153.Font = var3.FONT
   var1153.Text = "Once published, this model can be shared in Marketplace"
   var1153.TextXAlignment = Enum.TextXAlignment.Left
   var1097.Description = var2.createElement("TextLabel", var1153)
   return var2.createElement("Frame", var1087, var1097)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var1087 = {}
   var1087.BackgroundTransparency = 1
   var1087.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1087.Position = var0.Position
   var1087.Active = true
   local var1097 = {}
   local var1101 = {}
   var1101.BackgroundTransparency = 1
   var1101.Position = UDim2.new(0, 0, 0, 65508)
   var1101.Size = UDim2.new(1, 0, 0, 24)
   var1101.TextColor3 = var1.typeSelection.selector.title
   var1101.TextSize = 16
   var1101.Font = var3.FONT
   var1101.Text = "Choose asset type"
   var1101.TextXAlignment = Enum.TextXAlignment.Left
   var1097.Title = var2.createElement("TextLabel", var1101)
   local var1127 = {}
   var1127.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1127.Size = UDim2.new(1, 0, 1, 0)
   var1127.selectedDropDownIndex = arg1.state.dropDownIndex
   var1127.visibleDropDOwnCount = 5
   var1127.items = arg1.props.items
   var1127.rowHeight = 24
   var1127.fontSize = 20
   var1127.onItemClicked = arg1.onItemClicked
   var1097.Dropdown = var2.createElement(var5, var1127)
   local var1153 = {}
   var1153.BackgroundTransparency = 1
   var1153.Position = UDim2.new(0, 0, 1, 0)
   var1153.Size = UDim2.new(1, 0, 0, 18)
   var1153.TextColor3 = var1.typeSelection.selector.description
   var1153.TextSize = 12
   var1153.Font = var3.FONT
   var1153.Text = "Once published, this model can be shared in Marketplace"
   var1153.TextXAlignment = Enum.TextXAlignment.Left
   var1097.Description = var2.createElement("TextLabel", var1153)
   return var2.createElement("Frame", var1087, var1097)
end

fun13 = var4.withContext
local var1177 = {}
var1177.Stylizer = var4.Stylizer
var6 = fun13(var1177)(var6)
return var6
