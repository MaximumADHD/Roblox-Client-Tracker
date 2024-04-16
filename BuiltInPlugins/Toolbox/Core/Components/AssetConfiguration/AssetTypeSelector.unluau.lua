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
      local var32 = {}
      var32.dropDownIndex = arg1
      arg1:setState(var32)
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

local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var104 = {}
   var104.BackgroundTransparency = 1
   var104.Size = UDim2.new(0, var0.width, 0, var0.height)
   var104.Position = var0.Position
   var104.Active = true
   local var114 = {}
   local var118 = {}
   var118.BackgroundTransparency = 1
   var118.Position = UDim2.new(0, 0, 0, 65508)
   var118.Size = UDim2.new(1, 0, 0, 24)
   var118.TextColor3 = var1.typeSelection.selector.title
   var118.TextSize = 16
   var118.Font = var3.FONT
   var118.Text = "Choose asset type"
   var118.TextXAlignment = Enum.TextXAlignment.Left
   var114.Title = var2.createElement("TextLabel", var118)
   local var144 = {}
   var144.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var144.Size = UDim2.new(1, 0, 1, 0)
   var144.selectedDropDownIndex = arg1.state.dropDownIndex
   var144.visibleDropDOwnCount = 5
   var144.items = arg1.props.items
   var144.rowHeight = 24
   var144.fontSize = 20
   var144.onItemClicked = arg1.onItemClicked
   var114.Dropdown = var2.createElement(var5, var144)
   local var170 = {}
   var170.BackgroundTransparency = 1
   var170.Position = UDim2.new(0, 0, 1, 0)
   var170.Size = UDim2.new(1, 0, 0, 18)
   var170.TextColor3 = var1.typeSelection.selector.description
   var170.TextSize = 12
   var170.Font = var3.FONT
   var170.Text = "Once published, this model can be shared in Marketplace"
   var170.TextXAlignment = Enum.TextXAlignment.Left
   var114.Description = var2.createElement("TextLabel", var170)
   return var2.createElement("Frame", var104, var114)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var104 = {}
   var104.BackgroundTransparency = 1
   var104.Size = UDim2.new(0, var0.width, 0, var0.height)
   var104.Position = var0.Position
   var104.Active = true
   local var114 = {}
   local var118 = {}
   var118.BackgroundTransparency = 1
   var118.Position = UDim2.new(0, 0, 0, 65508)
   var118.Size = UDim2.new(1, 0, 0, 24)
   var118.TextColor3 = var1.typeSelection.selector.title
   var118.TextSize = 16
   var118.Font = var3.FONT
   var118.Text = "Choose asset type"
   var118.TextXAlignment = Enum.TextXAlignment.Left
   var114.Title = var2.createElement("TextLabel", var118)
   local var144 = {}
   var144.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var144.Size = UDim2.new(1, 0, 1, 0)
   var144.selectedDropDownIndex = arg1.state.dropDownIndex
   var144.visibleDropDOwnCount = 5
   var144.items = arg1.props.items
   var144.rowHeight = 24
   var144.fontSize = 20
   var144.onItemClicked = arg1.onItemClicked
   var114.Dropdown = var2.createElement(var5, var144)
   local var170 = {}
   var170.BackgroundTransparency = 1
   var170.Position = UDim2.new(0, 0, 1, 0)
   var170.Size = UDim2.new(1, 0, 0, 18)
   var170.TextColor3 = var1.typeSelection.selector.description
   var170.TextSize = 12
   var170.Font = var3.FONT
   var170.Text = "Once published, this model can be shared in Marketplace"
   var170.TextXAlignment = Enum.TextXAlignment.Left
   var114.Description = var2.createElement("TextLabel", var170)
   return var2.createElement("Frame", var104, var114)
end

fun3 = var4.withContext
local var194 = {}
var194.Stylizer = var4.Stylizer
var6 = fun3(var194)(var6)
return var6
