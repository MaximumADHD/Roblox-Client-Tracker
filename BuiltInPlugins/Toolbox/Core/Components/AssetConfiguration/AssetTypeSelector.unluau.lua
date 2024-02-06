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
      local var259 = {}
      var259.dropDownIndex = arg1
      arg1:setState(var259)
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

local function fun9(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var331 = {}
   var331.BackgroundTransparency = 1
   var331.Size = UDim2.new(0, var0.width, 0, var0.height)
   var331.Position = var0.Position
   var331.Active = true
   local var341 = {}
   local var345 = {}
   var345.BackgroundTransparency = 1
   var345.Position = UDim2.new(0, 0, 0, 65508)
   var345.Size = UDim2.new(1, 0, 0, 24)
   var345.TextColor3 = var1.typeSelection.selector.title
   var345.TextSize = 16
   var345.Font = var3.FONT
   var345.Text = "Choose asset type"
   var345.TextXAlignment = Enum.TextXAlignment.Left
   var341.Title = var2.createElement("TextLabel", var345)
   local var371 = {}
   var371.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var371.Size = UDim2.new(1, 0, 1, 0)
   var371.selectedDropDownIndex = arg1.state.dropDownIndex
   var371.visibleDropDOwnCount = 5
   var371.items = arg1.props.items
   var371.rowHeight = 24
   var371.fontSize = 20
   var371.onItemClicked = arg1.onItemClicked
   var341.Dropdown = var2.createElement(var5, var371)
   local var397 = {}
   var397.BackgroundTransparency = 1
   var397.Position = UDim2.new(0, 0, 1, 0)
   var397.Size = UDim2.new(1, 0, 0, 18)
   var397.TextColor3 = var1.typeSelection.selector.description
   var397.TextSize = 12
   var397.Font = var3.FONT
   var397.Text = "Once published, this model can be shared in Marketplace"
   var397.TextXAlignment = Enum.TextXAlignment.Left
   var341.Description = var2.createElement("TextLabel", var397)
   return var2.createElement("Frame", var331, var341)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var331 = {}
   var331.BackgroundTransparency = 1
   var331.Size = UDim2.new(0, var0.width, 0, var0.height)
   var331.Position = var0.Position
   var331.Active = true
   local var341 = {}
   local var345 = {}
   var345.BackgroundTransparency = 1
   var345.Position = UDim2.new(0, 0, 0, 65508)
   var345.Size = UDim2.new(1, 0, 0, 24)
   var345.TextColor3 = var1.typeSelection.selector.title
   var345.TextSize = 16
   var345.Font = var3.FONT
   var345.Text = "Choose asset type"
   var345.TextXAlignment = Enum.TextXAlignment.Left
   var341.Title = var2.createElement("TextLabel", var345)
   local var371 = {}
   var371.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var371.Size = UDim2.new(1, 0, 1, 0)
   var371.selectedDropDownIndex = arg1.state.dropDownIndex
   var371.visibleDropDOwnCount = 5
   var371.items = arg1.props.items
   var371.rowHeight = 24
   var371.fontSize = 20
   var371.onItemClicked = arg1.onItemClicked
   var341.Dropdown = var2.createElement(var5, var371)
   local var397 = {}
   var397.BackgroundTransparency = 1
   var397.Position = UDim2.new(0, 0, 1, 0)
   var397.Size = UDim2.new(1, 0, 0, 18)
   var397.TextColor3 = var1.typeSelection.selector.description
   var397.TextSize = 12
   var397.Font = var3.FONT
   var397.Text = "Once published, this model can be shared in Marketplace"
   var397.TextXAlignment = Enum.TextXAlignment.Left
   var341.Description = var2.createElement("TextLabel", var397)
   return var2.createElement("Frame", var331, var341)
end

fun9 = var4.withContext
local var421 = {}
var421.Stylizer = var4.Stylizer
var6 = fun9(var421)(var6)
return var6
