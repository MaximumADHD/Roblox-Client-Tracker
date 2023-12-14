-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Container
local var6 = var4.Box
local var7 = var4.Button
local var8 = var0.Src.Actions
local var9 = require(var8.RemoveHistoryItem)
local var10 = require(var8.SetMemStoragePair)
local var11 = require(var8.SetRBXParameters)
local var12 = require(var8.SetView)
local var13 = require(var0.Src.Util.Constants).VIEW_ID
local var14 = var1.PureComponent:extend("RepopulatableHistoryItem")
function var14.init(arg1)
   function arg1.repopulateHistoryItem()
      local var0 = arg1.props
      local var1 = var0.View
      local var2 = var0.Data
      if var0.CurrentView ~= var1 then
         local var53 = arg1.props
         var53 = var1
         var53.SetView(var53)
      end
      if var1 == "SetView" then
         local var58 = arg1.props
         var58 = var2
         var58.SetRBXParameters(var58)
      end
      if var1 == "SetView" then
         local var63 = arg1.props
         var63 = var2
         var63.SetMemStoragePair(var63)
      end
   end
   
   function arg1.deleteHistoryItem()
      arg1.props.RemoveHistoryItem(arg1.props.Name)
   end
   
end

local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Sizes
   local var82 = {}
   var82.Background = var6
   var82.Size = UDim2.new(1, 0, 0, var2.HistoryButtonMinor)
   local var90 = {}
   var90.Layout = var1.createElement("UIListLayout", var1.Layout.HistoryItem)
   local var99 = {}
   var99.Size = UDim2.new(0, var2.HistoryButtonMajor, 0, var2.HistoryButtonMinor)
   var99.Text = var0.View
   var99.LayoutOrder = 2
   var99.TextColor3 = var1.Text.BrightText.Color
   var99.BackgroundTransparency = 1
   var99.TextSize = 18
   var99.Font = Enum.Font.SourceSans
   var90.View = var1.createElement("TextLabel", var99)
   local var116 = {}
   var116.Size = UDim2.new(0, var2.HistoryButtonMajor, 0, var2.HistoryButtonMinor)
   var116.Text = var0.Name
   var116.LayoutOrder = 3
   var116.OnClick = arg1.repopulateHistoryItem
   var90.Name = var1.createElement(var7, var116)
   local var129 = {}
   var129.Size = UDim2.new(0, var2.HistoryButtonMinor, 0, var2.HistoryButtonMinor)
   var129.Text = " ????"
   var129.LayoutOrder = 4
   var129.OnClick = arg1.deleteHistoryItem
   var90.DeleteButton = var1.createElement(var7, var129)
   return var1.createElement(var5, var82, var90)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var1.Sizes
   local var82 = {}
   var82.Background = var6
   var82.Size = UDim2.new(1, 0, 0, var2.HistoryButtonMinor)
   local var90 = {}
   var90.Layout = var1.createElement("UIListLayout", var1.Layout.HistoryItem)
   local var99 = {}
   var99.Size = UDim2.new(0, var2.HistoryButtonMajor, 0, var2.HistoryButtonMinor)
   var99.Text = var0.View
   var99.LayoutOrder = 2
   var99.TextColor3 = var1.Text.BrightText.Color
   var99.BackgroundTransparency = 1
   var99.TextSize = 18
   var99.Font = Enum.Font.SourceSans
   var90.View = var1.createElement("TextLabel", var99)
   local var116 = {}
   var116.Size = UDim2.new(0, var2.HistoryButtonMajor, 0, var2.HistoryButtonMinor)
   var116.Text = var0.Name
   var116.LayoutOrder = 3
   var116.OnClick = arg1.repopulateHistoryItem
   var90.Name = var1.createElement(var7, var116)
   local var129 = {}
   var129.Size = UDim2.new(0, var2.HistoryButtonMinor, 0, var2.HistoryButtonMinor)
   var129.Text = " ????"
   var129.LayoutOrder = 4
   var129.OnClick = arg1.deleteHistoryItem
   var90.DeleteButton = var1.createElement(var7, var129)
   return var1.createElement(var5, var82, var90)
end

fun3 = var3.withContext
local var141 = {}
var141.Stylizer = var3.Stylizer
var14 = fun3(var141)(var14)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.CurrentView = arg1.Status.CurrentView
   return var0
end, function(arg1)
   local var0 = {}
   function var0.RemoveHistoryItem()
      local var0 = arg1.props
      local var1 = var0.View
      local var2 = var0.Data
      if var0.CurrentView ~= var1 then
         local var160 = arg1.props
         var160 = var1
         var160.SetView(var160)
      end
      if var1 == "SetView" then
         local var165 = arg1.props
         var165 = var2
         var165.SetRBXParameters(var165)
      end
      if var1 == "SetView" then
         local var170 = arg1.props
         var170 = var2
         var170.SetMemStoragePair(var170)
      end
   end
   
   function var0.SetMemStoragePair()
      arg1.props.RemoveHistoryItem(arg1.props.Name)
   end
   
   function var0.SetRBXParameters(arg1)
      function arg1.repopulateHistoryItem()
         local var0 = arg1.props
         local var1 = var0.View
         local var2 = var0.Data
         if var0.CurrentView ~= var1 then
            local var185 = arg1.props
            var185 = var1
            var185.SetView(var185)
         end
         if var1 == "SetView" then
            local var190 = arg1.props
            var190 = var2
            var190.SetRBXParameters(var190)
         end
         if var1 == "SetView" then
            local var195 = arg1.props
            var195 = var2
            var195.SetMemStoragePair(var195)
         end
      end
      
      function arg1.deleteHistoryItem()
         arg1.props.RemoveHistoryItem(arg1.props.Name)
      end
      
   end
   
   function var0.SetView(arg1)
      local var0 = arg1.props
      local var1 = var0.Stylizer
      local var2 = var1.Sizes
      local var214 = {}
      var214.Background = var6
      var214.Size = UDim2.new(1, 0, 0, var2.HistoryButtonMinor)
      local var222 = {}
      var222.Layout = var1.createElement("UIListLayout", var1.Layout.HistoryItem)
      local var231 = {}
      var231.Size = UDim2.new(0, var2.HistoryButtonMajor, 0, var2.HistoryButtonMinor)
      var231.Text = var0.View
      var231.LayoutOrder = 2
      var231.TextColor3 = var1.Text.BrightText.Color
      var231.BackgroundTransparency = 1
      var231.TextSize = 18
      var231.Font = Enum.Font.SourceSans
      var222.View = var1.createElement("TextLabel", var231)
      local var248 = {}
      var248.Size = UDim2.new(0, var2.HistoryButtonMajor, 0, var2.HistoryButtonMinor)
      var248.Text = var0.Name
      var248.LayoutOrder = 3
      var248.OnClick = arg1.repopulateHistoryItem
      var222.Name = var1.createElement(var7, var248)
      local var261 = {}
      var261.Size = UDim2.new(0, var2.HistoryButtonMinor, 0, var2.HistoryButtonMinor)
      var261.Text = " ????"
      var261.LayoutOrder = 4
      var261.OnClick = arg1.deleteHistoryItem
      var222.DeleteButton = var1.createElement(var7, var261)
      return var1.createElement(var5, var214, var222)
   end
   
   return var0
end)(var14)
