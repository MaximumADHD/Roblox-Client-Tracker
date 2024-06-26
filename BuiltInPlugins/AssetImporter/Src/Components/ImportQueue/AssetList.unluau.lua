-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.Dash.copy
local var5 = var2.Dash.values
local var6 = var2.UI
local var7 = var6.Table
local var8 = var6.Pane
local var9 = require(var0.Src.Types)
local var10 = require(var0.Src.Actions.UpdateQueueItem)
local var11 = require(var0.Src.Components.ImportQueue.AssetListCell)
local var12 = require(var0.Src.DataTypes.QueuedSession)
local var13 = var1.PureComponent:extend("AssetList")
function var13.init(arg1)
   local var54 = {}
   var54.Name = ""
   var54.Key = "Checkbox"
   var54.Width = UDim.new(0, 28)
   local var1 = {}
   var1.Name = "Asset"
   var1.Key = "Asset"
   var1.Width = UDim.new(0.5, 65452)
   local var2 = {}
   var2.Name = "Preset"
   var2.Key = "Preset"
   var2.Width = UDim.new(0, 140)
   local var3 = {}
   var3.Name = "Path"
   var3.Key = "Path"
   var3.Width = UDim.new(0.5, 65452)
   arg1.columnDefaults = { {}, {}, {}, {} }
   local var82 = {}
   var82.columns = arg1.columnDefaults
   arg1.state = var82
   function arg1.onColumnSizesChange(arg1)
      local var0 = var4(arg1.state.columns)
      local var94 = arg1.state.columns
      local var1 = 1
      var0.Width = arg1[1]
      local var98 = {}
      var98.columns = var0
      arg1:setState(var98)
   end
   
   function arg1.getRows()
      local var0 = var5(arg1.props.SessionQueue) or {}
      table.sort(var0, var12.compare)
      return var0
   end
   
   function arg1.onCheckboxToggle(arg1)
      local var0 = arg1.props
      local var1 = var4(var0.SessionQueue)
      local var121 = {}
      var121.enabled = var1[arg1].enabled
      var0.UpdateQueueItem(var12.update(var1[arg1], var121))
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var140 = {}
   var140.Size = var0.Size
   var140.Padding = var1.AssetList.Padding
   var140.LayoutOrder = arg1.props.LayoutOrder
   local var142 = {}
   local var146 = {}
   var146.Rows = arg1.getRows()
   var146.Columns = arg1.state.columns
   var146.Size = UDim2.fromScale(1, 1)
   var146.Scroll = true
   var146.CellComponent = var11
   local var2 = {}
   var2.OnCheckboxToggle = arg1.onCheckboxToggle
   var2.StatusIconSize = var1.PropertyView.IconSize
   var146.CellProps = var2
   var146.RowHeight = var1.AssetList.RowHeight
   var142.Inner = var1.createElement(var7, var146)
   return var1.createElement(var8, var140, var142)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var140 = {}
   var140.Size = var0.Size
   var140.Padding = var1.AssetList.Padding
   var140.LayoutOrder = arg1.props.LayoutOrder
   local var142 = {}
   local var146 = {}
   var146.Rows = arg1.getRows()
   var146.Columns = arg1.state.columns
   var146.Size = UDim2.fromScale(1, 1)
   var146.Scroll = true
   var146.CellComponent = var11
   local var2 = {}
   var2.OnCheckboxToggle = arg1.onCheckboxToggle
   var2.StatusIconSize = var1.PropertyView.IconSize
   var146.CellProps = var2
   var146.RowHeight = var1.AssetList.RowHeight
   var142.Inner = var1.createElement(var7, var146)
   return var1.createElement(var8, var140, var142)
end

fun4 = var3.withContext
local var161 = {}
var161.Localization = var3.Localization
var161.Stylizer = var2.Style.Stylizer
var13 = fun4(var161)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.SessionQueue = arg1.Sessions.sessionQueue
   return var0
end, function(arg1)
   local var0 = {}
   function var0.UpdateQueueItem(arg1)
      local var0 = var4(arg1.state.columns)
      local var177 = arg1.state.columns
      local var1 = 1
      var0.Width = arg1[1]
      local var181 = {}
      var181.columns = var0
      arg1:setState(var181)
   end
   
   return var0
end)(var13)
