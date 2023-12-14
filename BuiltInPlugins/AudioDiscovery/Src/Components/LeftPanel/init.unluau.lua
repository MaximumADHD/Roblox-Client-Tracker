-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Dash
local var4 = var3.map
local var5 = var3.join
local var6 = var2.ContextServices
local var7 = require(var0.Src.Util.Analytics)
local var8 = require(var0.Src.Actions.SelectRow)
local var9 = require(var0.Src.Actions.SortTable)
local var10 = game:GetService("Selection")
local var11 = require(var0.Src.Components.AudioTable)
local var12 = require(script.LeftCell)
local var13 = var1.PureComponent:extend("LeftPanel")
function var13.init(arg1)
   local var57 = {}
   local var1 = UDim.new(0.1, 0)
   local var2 = UDim.new(0.2, 0)
   local var3 = UDim.new(0.3, 0)
   local var4 = UDim.new(0.1, 0)
   local var5 = UDim.new(0.3, 0)
   var57.sizes = {}
   arg1.state = var57
   function arg1.onSizesChange(arg1)
      local var81 = {}
      var81.sizes = arg1
      arg1:setState(var81)
   end
   
   function arg1.onSelectRow(arg1, arg2)
      local var0 = arg1.props.Locations[arg1.Id]
      if var0 then
         if 0 < var0 then
            local var0 = var0[1].Instance
            var10:Set({})
         end
      end
      local var98 = arg1.props
      var98 = arg2
      var98.OnSelectRow(var98)
      var7:reportSelect()
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.Localization
   local var107 = {}
   var107.Name = var2:getText("Table", "OK")
   local var112 = {}
   var112.Name = var2:getText("Table", "Id")
   {}.Name = var2:getText("Table", "Name")
   {}.Name = var2:getText("Table", "Time")
   {}.Name = var2:getText("Table", "Creator")
   var112 = { {}, {} }
   local var141 = {}
   var141.Scroll = true
   var141.UseScale = true
   var141.ClampSize = true
   var141.OnColumnSizesChange = arg1.onSizesChange
   var141.SortIndex = var0.SortIndex
   var141.SortOrder = var0.SortOrder
   var141.OnSortChange = var0.Sort
   var141.CellComponent = var12
   var141.Columns = var4(var112, function(arg1)
      local var135 = {}
      var135.sizes = arg1
      arg1:setState(var135)
   end)
   var141.Rows = var0.Rows
   var141.SelectedRow = var0.SelectedRow
   var141.OnSelectRow = arg1.onSelectRow
   local var5 = {}
   var5.Locations = var0.Locations
   var141.CellProps = var5
   return var1.createElement(var11, var141)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.Localization
   local var107 = {}
   var107.Name = var2:getText("Table", "OK")
   local var112 = {}
   var112.Name = var2:getText("Table", "Id")
   {}.Name = var2:getText("Table", "Name")
   {}.Name = var2:getText("Table", "Time")
   {}.Name = var2:getText("Table", "Creator")
   var112 = { {}, {} }
   local var141 = {}
   var141.Scroll = true
   var141.UseScale = true
   var141.ClampSize = true
   var141.OnColumnSizesChange = arg1.onSizesChange
   var141.SortIndex = var0.SortIndex
   var141.SortOrder = var0.SortOrder
   var141.OnSortChange = var0.Sort
   var141.CellComponent = var12
   var141.Columns = var4(var112, function(arg1)
      local var135 = {}
      var135.sizes = arg1
      arg1:setState(var135)
   end)
   var141.Rows = var0.Rows
   var141.SelectedRow = var0.SelectedRow
   var141.OnSelectRow = arg1.onSelectRow
   local var5 = {}
   var5.Locations = var0.Locations
   var141.CellProps = var5
   return var1.createElement(var11, var141)
end

fun4 = var6.withContext
local var156 = {}
var156.Localization = var6.Localization
var156.Stylizer = var2.Style.Stylizer
var13 = fun4(var156)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.Locations = arg1.Audio.Locations
   var0.Rows = arg1.Audio.Rows
   var0.SelectedRow = arg1.Audio.SelectedRow
   var0.SortIndex = arg1.Audio.Left.SortIndex
   var0.SortOrder = arg1.Audio.Left.SortOrder
   return var0
end, function(arg1)
   local var0 = {}
   function var0.OnSelectRow(arg1)
      local var180 = {}
      var180.sizes = arg1
      arg1:setState(var180)
   end
   
   function var0.Sort(arg1, arg2)
      local var0 = arg1.props.Locations[arg1.Id]
      if var0 then
         if 0 < var0 then
            local var0 = var0[1].Instance
            var10:Set({})
         end
      end
      local var197 = arg1.props
      var197 = arg2
      var197.OnSelectRow(var197)
      var7:reportSelect()
   end
   
   return var0
end)(var13)
