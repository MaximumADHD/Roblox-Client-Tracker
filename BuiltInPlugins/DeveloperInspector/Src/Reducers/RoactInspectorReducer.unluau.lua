-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash)
local var2 = var1.collectSet
local var3 = var1.forEach
local var4 = var1.pick
local var5 = var1.join
local var6 = var1.joinDeep
local var7 = var1.keys
local var8 = var1.find
local var9 = var1.shallowEqual
local var10 = var0.Src.Actions
local var11 = require(var10.RoactInspector.SelectProfileRow)
local var12 = require(var0.Src.Util.updateTree)
local function var13()
   local var0 = {}
   local var1 = {}
   local var109 = {}
   var109.Name = "props"
   local var112 = "props"
   var109.Path = {}
   var109.Children = {}
   var1.props = var109
   local var114 = {}
   var114.Name = "state"
   local var117 = "state"
   var114.Path = {}
   var114.Children = {}
   var1.state = var114
   local var6 = {}
   var6.Name = "_context"
   local var7 = "_context"
   var6.Path = {}
   var6.Children = {}
   var1._context = var6
   var0.Children = var1
   return var0
end

local function var14()
   local var0 = {}
   var0.rootInstance = {}
   var0.flashInstances = {}
   var0.selectedInstances = {}
   var0.expandedInstances = {}
   var0.nodes = {}
   var0.selectedPath = {}
   var0.selectedNodeIndex = 0
   var0.fields = var13()
   var0.selectedFields = {}
   var0.expandedFields = {}
   var0.isPicking = false
   local var137 = {}
   var137.eventCount = 0
   var137.instanceEventCount = 0
   var137.rowCount = 0
   var137.cached = false
   var0.profileData = var137
   var0.profileSearchTerm = ""
   var0.profileFilter = {}
   local var144 = {}
   var144.pageRows = {}
   var144.sortIndex = nil
   var144.sortOrder = nil
   var144.pageSize = 1
   var144.pageIndex = 1
   var144.selectedRow = nil
   var0.profileComponents = var144
   local var3 = {}
   var3.pageRows = {}
   var3.sortIndex = nil
   var3.sortOrder = nil
   var3.pageSize = 1
   var3.pageIndex = 1
   var0.profileEvents = var3
   return var0
end

local function var15(arg1, arg2)
   local var162 = {}
   local var165 = {}
   var165.cached = false
   var162.profileData = var5(arg1.profileData, var165)
   return var5(arg1, arg2, var162)
end

function require(var10.RoactInspector.Reset).name(arg1, arg2)
   return var14()
end

function require(var10.RoactInspector.UpdateBranch).name(arg1, arg2)
   if var9(arg2.path, arg1.selectedPath) then
      local var187 = {}
      var187.nodes = arg2.branch
      return var5(arg1, var187)
   end
   return arg1
end

function require(var10.RoactInspector.SelectNode).name(arg1, arg2)
   local var195 = {}
   var195.selectedNodeIndex = arg2.nodeIndex
   var195.fields = var13()
   var195.selectedFields = {}
   var195.expandedFields = {}
   return var5(arg1, var195)
end

function require(var10.RoactInspector.UpdateInstances).name(arg1, arg2)
   local var0 = var4(arg1.flashInstances, function(arg1, arg2)
      if arg1.time > os.clock() - 1 then
         local var0 = false
      end
      return true
   end)
   if arg2.updatedIndexes then
      local var0 = 0
      if var0 < arg2.updatedIndexes then
         var0 = var0
         local var254 = var8(var0, function()
            local var0 = {}
            var0.rootInstance = {}
            var0.flashInstances = {}
            var0.selectedInstances = {}
            var0.expandedInstances = {}
            var0.nodes = {}
            var0.selectedPath = {}
            var0.selectedNodeIndex = 0
            var0.fields = var13()
            var0.selectedFields = {}
            var0.expandedFields = {}
            var0.isPicking = false
            local var234 = {}
            var234.eventCount = 0
            var234.instanceEventCount = 0
            var234.rowCount = 0
            var234.cached = false
            var0.profileData = var234
            var0.profileSearchTerm = ""
            var0.profileFilter = {}
            local var241 = {}
            var241.pageRows = {}
            var241.sortIndex = nil
            var241.sortOrder = nil
            var241.pageSize = 1
            var241.pageIndex = 1
            var241.selectedRow = nil
            var0.profileComponents = var241
            local var3 = {}
            var3.pageRows = {}
            var3.sortIndex = nil
            var3.sortOrder = nil
            var3.pageSize = 1
            var3.pageIndex = 1
            var0.profileEvents = var3
            return var0
         end)
         local var257 = var2(arg2.updatedIndexes)
         if var254 then
            var254.heat = var254.heat + 1
            var254.time = os.clock()
            var254.indexSet = var257
         else
            local var0 = {}
            var0.time = os.clock()
            var0.heat = 0
            var0.indexSet = var257
            arg2.path = var0
         end
      end
   end
   local var268 = {}
   var268.root = arg1.rootInstance
   var268.selected = arg1.selectedInstances
   var268.expanded = arg1.expandedInstances
   var268.children = arg2.children
   local var273 = arg2.path
   var268.path = var273
   local var2 = var12(var268)
   var273 = arg1
   local var276 = {}
   var276.rootInstance = var2.root
   var276.selectedInstances = var2.selected
   var276.expandedInstances = var2.expanded
   var276.flashInstances = var0
   return var5(var273, var276)
end

function require(var10.RoactInspector.SelectInstance).name(arg1, arg2)
   local var0 = var7(arg2.change)[1]
   local var290 = {}
   var290.fields = var13()
   var290.expandedFields = {}
   var290.selectedFields = {}
   local var295 = arg2.change
   var290.selectedInstances = var295
   var295 = var0
   var290.selectedPath = var295 and var0.Path
   var290.nodes = {}
   var290.selectedNodeIndex = 0
   return var5(arg1, var290)
end

function require(var10.RoactInspector.ToggleInstance).name(arg1, arg2)
   local var306 = {}
   var306.expandedInstances = arg2.change
   return var6(arg1, var306)
end

function require(var10.RoactInspector.PickInstance).name(arg1, arg2)
   local var0 = arg1.rootInstance
   var3(arg2.path, function()
      local var0 = {}
      local var1 = {}
      local var318 = {}
      var318.Name = "props"
      local var321 = "props"
      var318.Path = {}
      var318.Children = {}
      var1.props = var318
      local var323 = {}
      var323.Name = "state"
      local var326 = "state"
      var323.Path = {}
      var323.Children = {}
      var1.state = var323
      local var6 = {}
      var6.Name = "_context"
      local var7 = "_context"
      var6.Path = {}
      var6.Children = {}
      var1._context = var6
      var0.Children = var1
      return var0
   end)
   if var0 then
      arg1.rootInstance = true
   end
   local var337 = {}
   var337.selectedPath = arg2.path
   var337.selectedInstances = {}
   var337.expandedInstances = var5(arg1.expandedInstances, {})
   var337.isPicking = false
   return var5(arg1, var337)
end

function require(var10.RoactInspector.UpdateFields).name(arg1, arg2)
   local var0 = var9(arg2.path, arg1.selectedPath)
   if var0 then
      if arg2.nodeIndex ~= arg1.selectedNodeIndex then
         local var0 = false
      end
      local var0 = true
   end
   if not var0 then
      return arg1
   end
   local var357 = {}
   var357.root = arg1.fields
   var357.selected = arg1.selectedFields
   var357.expanded = arg1.expandedFields
   var357.children = arg2.fields
   local var362 = arg2.fieldPath
   var357.path = var362
   local var2 = var12(var357)
   var362 = arg1
   local var365 = {}
   var365.fields = var2.root
   var365.selectedFields = var2.selected
   var365.expandedFields = var2.expanded
   return var5(var362, var365)
end

function require(var10.RoactInspector.SelectField).name(arg1, arg2)
   local var375 = {}
   var375.selectedFields = arg2.change
   return var5(arg1, var375)
end

function require(var10.RoactInspector.ToggleField).name(arg1, arg2)
   local var383 = {}
   var383.expandedFields = arg2.change
   return var6(arg1, var383)
end

function require(var10.RoactInspector.SetPicking).name(arg1, arg2)
   local var391 = {}
   var391.isPicking = arg2.isPicking
   return var6(arg1, var391)
end

function require(var10.RoactInspector.SetProfiling).name(arg1, arg2)
   local var399 = {}
   var399.isProfiling = arg2.isProfiling
   return var6(arg1, var399)
end

function require(var10.RoactInspector.ClearProfileData).name(arg1)
   local var0 = var14()
   local var408 = {}
   var408.profileData = var0.profileData
   var408.profileComponents = var0.profileComponents
   var408.profileEvents = var0.profileEvents
   return var5(arg1, var408)
end

function require(var10.RoactInspector.UpdateProfileData).name(arg1, arg2)
   if arg1.profileData.cached then
      if arg2.data.eventCount == "eventCount" then
         return arg1
      end
   end
   local var424 = {}
   var424.eventCount = arg2.data.eventCount
   var424.rowCount = arg2.data.rowCount
   var424.instanceEventCount = arg2.data.instanceEventCount
   var424.cached = true
   local var435 = {}
   var435.profileData = var5(arg1.profileData, var424)
   local var438 = {}
   var438.rowCount = arg2.data.rowCount
   var438.pageRows = arg2.data.componentRows
   var435.profileComponents = var5(arg1.profileComponents, var438)
   local var446 = {}
   var446.pageRows = arg2.data.eventRows
   var435.profileEvents = var5(arg1.profileEvents, var446)
   return var5(arg1, var435)
end

function require(var10.RoactInspector.SortProfileData).name(arg1, arg2)
   local var457 = {}
   var457.sortIndex = arg2.sortIndex
   var457.sortOrder = arg2.sortOrder
   arg2.tableName = var5(arg1[arg2.tableName], var457)
   return var15(arg1, {})
end

function require(var10.RoactInspector.SetProfilePageIndex).name(arg1, arg2)
   local var472 = {}
   var472.pageIndex = arg2.pageIndex
   arg2.tableName = var5(arg1[arg2.tableName], var472)
   return var15(arg1, {})
end

function require(var10.RoactInspector.SetProfilePageSize).name(arg1, arg2)
   local var486 = {}
   var486.pageSize = arg2.pageSize
   arg2.tableName = var5(arg1[arg2.tableName], var486)
   return var15(arg1, {})
end

function var11.name(arg1, arg2)
   local var499 = {}
   local var502 = {}
   var502.pageIndex = 1
   var499.profileEvents = var5(arg1.profileEvents, var502)
   local var507 = {}
   var507.selectedRow = arg2.selectedRow
   var499.profileComponents = var5(arg1.profileComponents, var507)
   return var15(arg1, var499)
end

function require(var10.RoactInspector.SetProfileSearchTerm).name(arg1, arg2)
   local var516 = {}
   var516.profileSearchTerm = arg2.searchTerm
   return var15(arg1, var516)
end

function require(var10.RoactInspector.SetProfileFilter).name(arg1, arg2)
   local var524 = {}
   var524.profileFilter = arg2.filter
   return var15(arg1, var524)
end

function var11.name(arg1, arg2)
   local var532 = {}
   local var535 = {}
   var535.pageIndex = 1
   var532.profileEvents = var5(arg1.profileEvents, var535)
   local var540 = {}
   var540.selectedRow = arg2.selectedRow
   var532.profileComponents = var5(arg1.profileComponents, var540)
   return var15(arg1, var532)
end

return require(var0.Packages.Rodux).createReducer(var14(), {})
