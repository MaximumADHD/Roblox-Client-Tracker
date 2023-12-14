-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI.Container
local var5 = var1.UI
local var6 = var5.LinkText
local var7 = var5.Image
local var8 = var5.StyledDialog
local var9 = var5.TextLabel
local var10 = var2.PureComponent:extend(script.Name)
local var11 = game:GetService("TextService")
function var10.init(arg1)
   local var240 = {}
   var240.showingDialog = false
   arg1.state = var240
   function arg1.close()
      local var243 = {}
      var243.showingDialog = false
      arg1:setState(var243)
      arg1.props.OnClose()
   end
   
end

function var10.didMount(arg1)
   spawn(function()
      local var252 = {}
      var252.showingDialog = false
      arg1:setState(var252)
      arg1.props.OnClose()
   end)
end

local function fun5(arg1)
   local var0 = arg1.props.MainText
   local var1 = arg1.props.SubText
   local var2 = arg1.props.LinkInfo
   if var2 then
      local var0 = var2.Text or ""
   end
   local var3 = ""
   local var4 = Enum.Font.SourceSansBold
   local var5 = Enum.Font.SourceSans
   local var278 = var0
   local var280 = var4
   local var8 = var11:GetTextSize()
   20 = var1
   Vector2.new(400, ∞) = var5
   local var9 = var11:GetTextSize()
   if var2 then
      20 = var3
      local var0 = 20
      Vector2.new(400, ∞) = var5
      local var1 = Vector2.new(400, ∞)
      local var2 = var11:GetTextSize() or Vector2.new(0, 0)
   end
   local var10 = Vector2.new(0, 0)
   if var2 then
      local var0 = 8 + var10.Y or 0
   end
   local var11 = arg1.state.showingDialog
   if var11 then
      local var337 = {}
      var337.Enabled = true
      var337.Modal = false
      var337.Title = arg1.props.Title
      var337.OnClose = arg1.close
      var337.OnButtonPressed = arg1.close
      local var343 = {}
      var343.Key = "OK"
      var343.Text = arg1.props.Localization:getText("Action", "OK")
      local var349 = "RoundPrimary"
      var343.Style = var349
      var337.Buttons = {}
      var343 = 64 + math.max(var8.X, math.max(var9.X, var10.X))
      var349 = var8.Y + 8 + var9.Y + 0
      var337.MinContentSize = Vector2.new(var343, var349)
      local var352 = {}
      local var356 = {}
      var356.Size = UDim2.new(0, 44, 0, 44)
      local var363 = {}
      local var367 = {}
      local var368 = {}
      var368.Image = arg1.props.Image
      var367.Style = var368
      var363.Decoration = var2.createElement(var7, var367)
      var352.Icon = var2.createElement(var4, var356, var363)
      local var374 = {}
      var374.Position = UDim2.new(0, 64, 0, 0)
      var374.Size = UDim2.new(1, 65472, 1, 0)
      local var387 = {}
      local var391 = {}
      var391.SortOrder = Enum.SortOrder.LayoutOrder
      var391.Padding = UDim.new(0, 8)
      var387.UIListLayout = var2.createElement("UIListLayout", var391)
      local var401 = {}
      var401.LayoutOrder = 1
      var401.Size = UDim2.new(1, 0, 0, var8.Y)
      var401.Text = var0
      var401.Font = var4
      var401.TextSize = 20
      var401.TextXAlignment = Enum.TextXAlignment.Left
      var387.MainText = var2.createElement(var9, var401)
      local var415 = {}
      var415.LayoutOrder = 2
      var415.Size = UDim2.new(1, 0, 0, var9.Y)
      var415.Text = var1
      var415.TextWrapped = true
      var415.Font = var5
      var415.TextSize = 20
      var415.TextXAlignment = Enum.TextXAlignment.Left
      local var2 = var2.createElement(var9, var415)
      var387.SubText = var2
      var2 = var2
      if var2 then
         local var430 = {}
         var430.LayoutOrder = 3
         var430.Size = UDim2.new(1, 0, 0, var10.Y)
         var430.Text = var3
         var430.TextWrapped = true
         var430.TextSize = 20
         var430.TextXAlignment = Enum.TextXAlignment.Left
         var430.OnClick = var2.OnClick
         local var0 = var2.createElement(var6, var430)
      end
      var387.Link = var2
      var352.TextSection = var2.createElement(var4, var374, var387)
      local var3 = var2.createElement(var8, var337, var352)
   end
   return var11
end

function var10.render(arg1)
   local var0 = arg1.props.MainText
   local var1 = arg1.props.SubText
   local var2 = arg1.props.LinkInfo
   if var2 then
      local var0 = var2.Text or ""
   end
   local var3 = ""
   local var4 = Enum.Font.SourceSansBold
   local var5 = Enum.Font.SourceSans
   local var278 = var0
   local var280 = var4
   local var8 = var11:GetTextSize()
   20 = var1
   Vector2.new(400, ∞) = var5
   local var9 = var11:GetTextSize()
   if var2 then
      20 = var3
      local var0 = 20
      Vector2.new(400, ∞) = var5
      local var1 = Vector2.new(400, ∞)
      local var2 = var11:GetTextSize() or Vector2.new(0, 0)
   end
   local var10 = Vector2.new(0, 0)
   if var2 then
      local var0 = 8 + var10.Y or 0
   end
   local var11 = arg1.state.showingDialog
   if var11 then
      local var337 = {}
      var337.Enabled = true
      var337.Modal = false
      var337.Title = arg1.props.Title
      var337.OnClose = arg1.close
      var337.OnButtonPressed = arg1.close
      local var343 = {}
      var343.Key = "OK"
      var343.Text = arg1.props.Localization:getText("Action", "OK")
      local var349 = "RoundPrimary"
      var343.Style = var349
      var337.Buttons = {}
      var343 = 64 + math.max(var8.X, math.max(var9.X, var10.X))
      var349 = var8.Y + 8 + var9.Y + 0
      var337.MinContentSize = Vector2.new(var343, var349)
      local var352 = {}
      local var356 = {}
      var356.Size = UDim2.new(0, 44, 0, 44)
      local var363 = {}
      local var367 = {}
      local var368 = {}
      var368.Image = arg1.props.Image
      var367.Style = var368
      var363.Decoration = var2.createElement(var7, var367)
      var352.Icon = var2.createElement(var4, var356, var363)
      local var374 = {}
      var374.Position = UDim2.new(0, 64, 0, 0)
      var374.Size = UDim2.new(1, 65472, 1, 0)
      local var387 = {}
      local var391 = {}
      var391.SortOrder = Enum.SortOrder.LayoutOrder
      var391.Padding = UDim.new(0, 8)
      var387.UIListLayout = var2.createElement("UIListLayout", var391)
      local var401 = {}
      var401.LayoutOrder = 1
      var401.Size = UDim2.new(1, 0, 0, var8.Y)
      var401.Text = var0
      var401.Font = var4
      var401.TextSize = 20
      var401.TextXAlignment = Enum.TextXAlignment.Left
      var387.MainText = var2.createElement(var9, var401)
      local var415 = {}
      var415.LayoutOrder = 2
      var415.Size = UDim2.new(1, 0, 0, var9.Y)
      var415.Text = var1
      var415.TextWrapped = true
      var415.Font = var5
      var415.TextSize = 20
      var415.TextXAlignment = Enum.TextXAlignment.Left
      local var2 = var2.createElement(var9, var415)
      var387.SubText = var2
      var2 = var2
      if var2 then
         local var430 = {}
         var430.LayoutOrder = 3
         var430.Size = UDim2.new(1, 0, 0, var10.Y)
         var430.Text = var3
         var430.TextWrapped = true
         var430.TextSize = 20
         var430.TextXAlignment = Enum.TextXAlignment.Left
         var430.OnClick = var2.OnClick
         local var0 = var2.createElement(var6, var430)
      end
      var387.Link = var2
      var352.TextSection = var2.createElement(var4, var374, var387)
      local var3 = var2.createElement(var8, var337, var352)
   end
   return var11
end

fun5 = var3.withContext
local var445 = {}
var445.Localization = var3.Localization
var10 = fun5(var445)(var10)
return var10
