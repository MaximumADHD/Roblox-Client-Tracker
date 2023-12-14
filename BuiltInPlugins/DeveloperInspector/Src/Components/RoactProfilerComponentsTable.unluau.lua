-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Util.TableIds)
local var4 = var2.DeveloperTools.RoactInspectorApi
local var5 = var0.Src.Actions
local var6 = require(var5.RoactInspector.SetProfilePageSize)
local var7 = require(var5.RoactInspector.SetProfilePageIndex)
local var8 = require(var5.RoactInspector.SortProfileData)
local var9 = require(var5.RoactInspector.SelectProfileRow)
local var10 = var2.ContextServices
local var11 = var2.UI
local var12 = var11.PaginatedTable
local var13 = var11.Pane
local var14 = var11.TextLabel
local var15 = var1.Component:extend("RoactProfilerComponentsTable")
local var16 = {}
local var57 = {}
var57.Name = "Component"
var57.Key = "instanceName"
var57.TooltipKey = "pathString"
var57.Width = UDim.new(0.3, 0)
local var65 = {}
var65.Name = "Depth"
var65.Key = "depth"
var65.Width = UDim.new(0.15, 0)
local var72 = {}
var72.Name = "Renders"
var72.Key = "count"
var72.Width = UDim.new(0.15, 0)
local var18 = {}
var18.Name = "Render Time (ms)"
var18.Key = "renderTime"
var18.Width = UDim.new(0.2, 0)
local var19 = {}
var19.Name = "Deep Time (ms)"
var19.Key = "time"
var19.Width = UDim.new(0.2, 0)
function var15.init(arg1)
   function arg1.onPageChange(arg1)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1
      local var103 = var1.props
      var103 = arg1
      var103.setPageIndex(var103)
      local var105 = var4
      var105 = var0
      if var105.isInstance(var105) then
         if not var0.setProfileComponentsPageIndex then
         end
         var1 = arg1
         var0:setProfileComponentsPageIndex(var1)
         var0:getProfileData()
      end
   end
   
   function arg1.onHover(arg1, arg2)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1.props.TableData.pageRows[arg2]
      if var1 then
         if var1.path then
            local var126 = var4
            var126 = var0
            if var126.isInstance(var126) then
               var0:highlight(var1.path)
            end
         end
      end
   end
   
   function arg1.onMouseLeave()
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var138 = var4
      var138 = var0
      if var138.isInstance(var138) then
         var0:dehighlight()
      end
   end
   
   function arg1.onSizeChange(arg1)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1
      local var151 = var1.props
      var151 = arg1
      var151.setPageSize(var151)
      local var153 = var4
      var153 = var0
      if var153.isInstance(var153) then
         if not var0.setProfileComponentsPageSize then
         end
         var1 = arg1
         var0:setProfileComponentsPageSize(var1)
         var0:getProfileData()
      end
   end
   
   function arg1.onSortChange(arg1, arg2)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var168 = arg1
      local var169 = var168.props
      var169 = arg1
      var168 = arg2
      var169.setSort(var169, var168)
      local var171 = var4
      var171 = var0
      if var171.isInstance(var171) then
         if not var0.sortProfileData then
         end
         var0:sortProfileData("profileComponents", arg1, arg2)
         var0:getProfileData()
      end
   end
   
   function arg1.onSelectRow(arg1, arg2)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1.props.TableData
      local var2 = var1.pageRows[arg2]
      if var2 then
         local var0 = arg1
         local var201 = var0.props
         var201 = arg2 + (var1.pageIndex - 1) * var1.pageSize
         var201.selectRow(var201)
         local var203 = var4
         var203 = var0
         if var203.isInstance(var203) then
            var0 = var2.instanceId
            var0:selectProfileInstance(var0)
            var0:setProfileEventsPageIndex(1)
            var0:getProfileData()
         end
      end
   end
   
end

local function fun7(arg1)
   local var0 = arg1.props
   local var1 = var0.ProfileData
   local var2 = var0.TableData
   local var217 = {}
   var217.Columns = var16
   var217.Rows = var2.pageRows
   var217.SelectedRow = var2.selectedRow
   var217.SortIndex = var2.sortIndex
   var217.SortOrder = var2.sortOrder
   var217.PageIndex = var2.pageIndex
   var217.PageSize = var2.pageSize
   var217.PageCount = math.ceil(var1.rowCount / var2.pageSize)
   var217.OnHoverRow = arg1.onHover
   var217.OnMouseLeave = arg1.onMouseLeave
   var217.OnSelectRow = arg1.onSelectRow
   var217.OnPageChange = arg1.onPageChange
   var217.OnPageSizeChange = arg1.onSizeChange
   var217.OnSortChange = arg1.onSortChange
   local var239 = {}
   var239.Padding = 5
   var239.Layout = Enum.FillDirection.Horizontal
   var239.HorizontalAlignment = Enum.HorizontalAlignment.Left
   local var243 = {}
   local var247 = {}
   var247.AutomaticSize = Enum.AutomaticSize.XY
   var247.Text = `{var1.eventCount}Events from {var1.rowCount}Components`
   var243.Label = var1.createElement(var14, var247)
   var217.Footer = var1.createElement(var13, var239, var243)
   return var1.createElement(var12, var217)
end

function var15.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ProfileData
   local var2 = var0.TableData
   local var217 = {}
   var217.Columns = var16
   var217.Rows = var2.pageRows
   var217.SelectedRow = var2.selectedRow
   var217.SortIndex = var2.sortIndex
   var217.SortOrder = var2.sortOrder
   var217.PageIndex = var2.pageIndex
   var217.PageSize = var2.pageSize
   var217.PageCount = math.ceil(var1.rowCount / var2.pageSize)
   var217.OnHoverRow = arg1.onHover
   var217.OnMouseLeave = arg1.onMouseLeave
   var217.OnSelectRow = arg1.onSelectRow
   var217.OnPageChange = arg1.onPageChange
   var217.OnPageSizeChange = arg1.onSizeChange
   var217.OnSortChange = arg1.onSortChange
   local var239 = {}
   var239.Padding = 5
   var239.Layout = Enum.FillDirection.Horizontal
   var239.HorizontalAlignment = Enum.HorizontalAlignment.Left
   local var243 = {}
   local var247 = {}
   var247.AutomaticSize = Enum.AutomaticSize.XY
   var247.Text = `{var1.eventCount}Events from {var1.rowCount}Components`
   var243.Label = var1.createElement(var14, var247)
   var217.Footer = var1.createElement(var13, var239, var243)
   return var1.createElement(var12, var217)
end

fun7 = var10.withContext
local var257 = {}
var257.Inspector = require(var0.Src.Util.InspectorContext)
var257.Stylizer = var10.Stylizer
var15 = fun7(var257)(var15)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.ProfileData = arg1.RoactInspector.profileData
   var0.TableData = arg1.RoactInspector[var3.COMPONENTS]
   return var0
end, function(arg1)
   local var0 = {}
   function var0.setSort(arg1)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1
      local var282 = var1.props
      var282 = arg1
      var282.setPageIndex(var282)
      local var284 = var4
      var284 = var0
      if var284.isInstance(var284) then
         if not var0.setProfileComponentsPageIndex then
         end
         var1 = arg1
         var0:setProfileComponentsPageIndex(var1)
         var0:getProfileData()
      end
   end
   
   function var0.setPageSize(arg1, arg2)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1.props.TableData.pageRows[arg2]
      if var1 then
         if var1.path then
            local var305 = var4
            var305 = var0
            if var305.isInstance(var305) then
               var0:highlight(var1.path)
            end
         end
      end
   end
   
   function var0.setPageIndex()
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var317 = var4
      var317 = var0
      if var317.isInstance(var317) then
         var0:dehighlight()
      end
   end
   
   function var0.selectRow(arg1)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1
      local var330 = var1.props
      var330 = arg1
      var330.setPageSize(var330)
      local var332 = var4
      var332 = var0
      if var332.isInstance(var332) then
         if not var0.setProfileComponentsPageSize then
         end
         var1 = arg1
         var0:setProfileComponentsPageSize(var1)
         var0:getProfileData()
      end
   end
   
   return var0
end)(var15)
