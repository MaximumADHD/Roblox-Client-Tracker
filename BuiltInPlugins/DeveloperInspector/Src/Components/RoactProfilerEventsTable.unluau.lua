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
local var9 = var2.ContextServices
local var10 = var2.UI
local var11 = var10.PaginatedTable
local var12 = var10.Pane
local var13 = var1.Component:extend("RoactProfilerEventsTable")
local var14 = {}
local var52 = {}
var52.Name = "At (s)"
var52.Key = "startTime"
var52.Width = UDim.new(0.1, 0)
local var59 = {}
var59.Name = "Render Time (ms)"
var59.Key = "renderTime"
var59.Width = UDim.new(0.2, 0)
local var66 = {}
var66.Name = "Deep Time (ms)"
var66.Key = "time"
var66.Width = UDim.new(0.2, 0)
local var16 = {}
var16.Name = "Cause"
var16.Key = "cause"
var16.TooltipKey = "log"
var16.Width = UDim.new(0.15, 0)
local var17 = {}
var17.Name = "Details"
var17.Key = "details"
var17.TooltipKey = "detailsTip"
var17.Width = UDim.new(0.35, 0)
function var13.init(arg1)
   function arg1.onPageChange(arg1)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1
      local var99 = var1.props
      var99 = arg1
      var99.setPageIndex(var99)
      local var101 = var4
      var101 = var0
      if var101.isInstance(var101) then
         if not var0.setProfileEventsPageIndex then
         end
         var1 = arg1
         var0:setProfileEventsPageIndex(var1)
         var0:getProfileData()
      end
   end
   
   function arg1.onSizeChange(arg1)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1
      local var116 = var1.props
      var116 = arg1
      var116.setPageSize(var116)
      local var118 = var4
      var118 = var0
      if var118.isInstance(var118) then
         if not var0.setProfileEventsPageSize then
         end
         var1 = arg1
         var0:setProfileEventsPageSize(var1)
         var0:getProfileData()
      end
   end
   
   function arg1.onSortChange(arg1, arg2)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var133 = arg1
      local var134 = var133.props
      var134 = arg1
      var133 = arg2
      var134.setSort(var134, var133)
      local var136 = var4
      var136 = var0
      if var136.isInstance(var136) then
         if not var0.setProfileEventsPageIndex then
         end
         local var140 = var3
         var140 = arg1
         var0:sortProfileData(var140.EVENTS, var140, arg2)
         var0:getProfileData()
      end
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.TableData
   local var152 = {}
   var152.Columns = var14
   var152.Rows = var1.pageRows
   var152.SortIndex = var1.sortIndex
   var152.SortOrder = var1.sortOrder
   var152.PageIndex = var1.pageIndex
   var152.PageSize = var1.pageSize
   var152.PageCount = math.ceil(var0.ProfileData.instanceEventCount / var1.pageSize)
   var152.OnPageChange = arg1.onPageChange
   var152.OnPageSizeChange = arg1.onSizeChange
   var152.OnSortChange = arg1.onSortChange
   local var170 = {}
   var170.Padding = 5
   var170.Layout = Enum.FillDirection.Horizontal
   var170.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var152.Footer = var1.createElement(var12, var170)
   return var1.createElement(var11, var152)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.TableData
   local var152 = {}
   var152.Columns = var14
   var152.Rows = var1.pageRows
   var152.SortIndex = var1.sortIndex
   var152.SortOrder = var1.sortOrder
   var152.PageIndex = var1.pageIndex
   var152.PageSize = var1.pageSize
   var152.PageCount = math.ceil(var0.ProfileData.instanceEventCount / var1.pageSize)
   var152.OnPageChange = arg1.onPageChange
   var152.OnPageSizeChange = arg1.onSizeChange
   var152.OnSortChange = arg1.onSortChange
   local var170 = {}
   var170.Padding = 5
   var170.Layout = Enum.FillDirection.Horizontal
   var170.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var152.Footer = var1.createElement(var12, var170)
   return var1.createElement(var11, var152)
end

fun4 = var9.withContext
local var176 = {}
var176.Inspector = require(var0.Src.Util.InspectorContext)
var176.Stylizer = var9.Stylizer
var13 = fun4(var176)(var13)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.ProfileData = arg1.RoactInspector.profileData
   var0.TableData = arg1.RoactInspector[var3.EVENTS]
   return var0
end, function(arg1)
   local var0 = {}
   function var0.setSort(arg1)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1
      local var201 = var1.props
      var201 = arg1
      var201.setPageIndex(var201)
      local var203 = var4
      var203 = var0
      if var203.isInstance(var203) then
         if not var0.setProfileEventsPageIndex then
         end
         var1 = arg1
         var0:setProfileEventsPageIndex(var1)
         var0:getProfileData()
      end
   end
   
   function var0.setPageSize(arg1)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var1 = arg1
      local var218 = var1.props
      var218 = arg1
      var218.setPageSize(var218)
      local var220 = var4
      var220 = var0
      if var220.isInstance(var220) then
         if not var0.setProfileEventsPageSize then
         end
         var1 = arg1
         var0:setProfileEventsPageSize(var1)
         var0:getProfileData()
      end
   end
   
   function var0.setPageIndex(arg1, arg2)
      local var0 = arg1.props.Inspector:get():getTargetApi()
      local var235 = arg1
      local var236 = var235.props
      var236 = arg1
      var235 = arg2
      var236.setSort(var236, var235)
      local var238 = var4
      var238 = var0
      if var238.isInstance(var238) then
         if not var0.setProfileEventsPageIndex then
         end
         local var242 = var3
         var242 = arg1
         var0:sortProfileData(var242.EVENTS, var242, arg2)
         var0:getProfileData()
      end
   end
   
   return var0
end)(var13)
