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
      local var1021 = {}
      var1021.dropDownIndex = arg1
      arg1:setState(var1021)
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
   local var1093 = {}
   var1093.BackgroundTransparency = 1
   var1093.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1093.Position = var0.Position
   var1093.Active = true
   local var1103 = {}
   local var1107 = {}
   var1107.BackgroundTransparency = 1
   var1107.Position = UDim2.new(0, 0, 0, 65508)
   var1107.Size = UDim2.new(1, 0, 0, 24)
   var1107.TextColor3 = var1.typeSelection.selector.title
   var1107.TextSize = 16
   var1107.Font = var3.FONT
   var1107.Text = "Choose asset type"
   var1107.TextXAlignment = Enum.TextXAlignment.Left
   var1103.Title = var2.createElement("TextLabel", var1107)
   local var1133 = {}
   var1133.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1133.Size = UDim2.new(1, 0, 1, 0)
   var1133.selectedDropDownIndex = arg1.state.dropDownIndex
   var1133.visibleDropDOwnCount = 5
   var1133.items = arg1.props.items
   var1133.rowHeight = 24
   var1133.fontSize = 20
   var1133.onItemClicked = arg1.onItemClicked
   var1103.Dropdown = var2.createElement(var5, var1133)
   local var1159 = {}
   var1159.BackgroundTransparency = 1
   var1159.Position = UDim2.new(0, 0, 1, 0)
   var1159.Size = UDim2.new(1, 0, 0, 18)
   var1159.TextColor3 = var1.typeSelection.selector.description
   var1159.TextSize = 12
   var1159.Font = var3.FONT
   var1159.Text = "Once published, this model can be shared in Marketplace"
   var1159.TextXAlignment = Enum.TextXAlignment.Left
   var1103.Description = var2.createElement("TextLabel", var1159)
   return var2.createElement("Frame", var1093, var1103)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var1093 = {}
   var1093.BackgroundTransparency = 1
   var1093.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1093.Position = var0.Position
   var1093.Active = true
   local var1103 = {}
   local var1107 = {}
   var1107.BackgroundTransparency = 1
   var1107.Position = UDim2.new(0, 0, 0, 65508)
   var1107.Size = UDim2.new(1, 0, 0, 24)
   var1107.TextColor3 = var1.typeSelection.selector.title
   var1107.TextSize = 16
   var1107.Font = var3.FONT
   var1107.Text = "Choose asset type"
   var1107.TextXAlignment = Enum.TextXAlignment.Left
   var1103.Title = var2.createElement("TextLabel", var1107)
   local var1133 = {}
   var1133.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1133.Size = UDim2.new(1, 0, 1, 0)
   var1133.selectedDropDownIndex = arg1.state.dropDownIndex
   var1133.visibleDropDOwnCount = 5
   var1133.items = arg1.props.items
   var1133.rowHeight = 24
   var1133.fontSize = 20
   var1133.onItemClicked = arg1.onItemClicked
   var1103.Dropdown = var2.createElement(var5, var1133)
   local var1159 = {}
   var1159.BackgroundTransparency = 1
   var1159.Position = UDim2.new(0, 0, 1, 0)
   var1159.Size = UDim2.new(1, 0, 0, 18)
   var1159.TextColor3 = var1.typeSelection.selector.description
   var1159.TextSize = 12
   var1159.Font = var3.FONT
   var1159.Text = "Once published, this model can be shared in Marketplace"
   var1159.TextXAlignment = Enum.TextXAlignment.Left
   var1103.Description = var2.createElement("TextLabel", var1159)
   return var2.createElement("Frame", var1093, var1103)
end

fun13 = var4.withContext
local var1183 = {}
var1183.Stylizer = var4.Stylizer
var6 = fun13(var1183)(var6)
return var6
