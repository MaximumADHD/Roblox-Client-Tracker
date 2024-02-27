-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Components.FilteringTextBox)
local var5 = require(var0.Src.Components.EditEventsDialog.EditEventMenu)
local var6 = require(var0.Src.Components.ContextButton)
local var7 = var1.PureComponent:extend("EventNameEntry")
function var7.init(arg1)
   local var357 = {}
   var357.editing = false
   var357.showContextMenu = false
   arg1.state = var357
   function arg1.onMenuItemClicked(arg1)
      if arg1 == "Edit" then
         local var365 = {}
         var365.editing = true
         arg1:setState(var365)
      end
      if arg1 == "Edit" then
         arg1.props.OnDeleteAllEvents(arg1.props.Name)
      end
   end
   
   function arg1.onDeleteEvent()
      arg1.props.OnDeleteEvent(arg1.props.Name)
   end
   
   function arg1.focusChanged(arg1, arg2)
      if not arg2 then
         local var386 = {}
         var386.editing = false
         arg1:setState(var386)
         local var0 = arg1.props.Name
         local var1 = arg1.Text
         if var1 == "" then
            local var394 = arg1.props
            var394 = var0
            var394.OnDeleteEvent(var394)
         end
         local var396 = arg1
         local var397 = var396.props
         var397 = var0
         var396 = var1
         var397.OnRenameEvent(var397, var396)
      end
   end
   
   function arg1.onItemClicked(arg1)
      local var401 = {}
      var401.editing = false
      arg1:setState(var401)
      local var1 = arg1.props.Name
      if var1 == "" then
         if arg1 == "" then
            local var408 = arg1.props
            var408 = var1
            var408.OnDeleteEvent(var408)
         end
      end
      if arg1 == "" then
         if arg1 ~= var1 then
            local var410 = arg1
            local var411 = var410.props
            var411 = var1
            var410 = arg1
            var411.OnRenameEvent(var411, var410)
         end
      end
   end
   
   function arg1.showMenu()
      local var414 = {}
      var414.showContextMenu = true
      arg1:setState(var414)
   end
   
   function arg1.hideMenu()
      local var418 = {}
      var418.showContextMenu = false
      arg1:setState(var418)
   end
   
   function arg1.mouseEnter()
      if arg1.props.Mouse then
         arg1.props.Mouse:__pushCursor("PointingHand")
      end
   end
   
   function arg1.mouseLeave()
      if arg1.props.Mouse then
         arg1.props.Mouse:__popCursor()
      end
   end
   
end

function var7.didMount(arg1)
   if arg1.props.Name == "" then
      local var439 = {}
      var439.editing = true
      arg1:setState(var439)
   end
end

function var7.willUnmount(arg1)
   arg1.props.Mouse:__resetCursor()
end

local function fun24(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var461 = {}
   var461.Size = var0.Size
   var461.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var461.BorderColor3 = var1.borderColor
   local var464 = {}
   local var468 = {}
   var468.PaddingLeft = var4
   var468.PaddingRight = var0.PaddingRight
   var468.PaddingTop = UDim.new(0, 2)
   var468.PaddingBottom = UDim.new(0, 2)
   var464.Padding = var1.createElement("UIPadding", var468)
   local var478 = var5
   if var478 then
      local var482 = {}
      var482.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var482.Text = var3
      var482.TextColor3 = var6.textColor
      var482.TextTruncate = Enum.TextTruncate.AtEnd
      var482.Font = var1.font
      var482.TextSize = var6.textSize
      var482.TextXAlignment = Enum.TextXAlignment.Left
      var482.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var482)
   end
   var464.Label = var478
   var478 = var5
   if var478 then
      local var501 = {}
      var501.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var501.TextXAlignment = Enum.TextXAlignment.Left
      var501.CaptureFocus = true
      var501.Text = var3
      var501.ClearTextOnFocus = false
      var501.FocusChanged = arg1.focusChanged
      var501.OnItemClicked = arg1.onItemClicked
      var501.Items = var0.UnusedEvents
      var501.MaxItems = 3
      local var0 = var1.createElement(var4, var501)
   end
   var464.TextBox = var478
   local var521 = {}
   var521.Size = UDim2.new(0, 8, 0, 8)
   var521.AnchorPoint = Vector2.new(0.5, 0.5)
   var521.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var521.BackgroundTransparency = 1
   var521.Image = var6.deleteImage
   var521.ImageColor3 = var6.subTextColor
   var521.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var464.DeleteButton = var1.createElement("ImageButton", var521)
   local var560 = {}
   var560.AnchorPoint = Vector2.new(1, 0.5)
   var560.Position = UDim2.new(1, 0, 0.5, 0)
   var560.OnActivated = arg1.showMenu
   var464.ContextButton = var1.createElement(var6, var560)
   local var576 = {}
   var576.ShowMenu = var2.showContextMenu
   var576.OnMenuOpened = arg1.hideMenu
   var576.OnMenuItemClicked = arg1.onMenuItemClicked
   var464.EditEventMenu = var1.createElement(var5, var576)
   return var1.createElement("Frame", var461, var464)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var461 = {}
   var461.Size = var0.Size
   var461.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var461.BorderColor3 = var1.borderColor
   local var464 = {}
   local var468 = {}
   var468.PaddingLeft = var4
   var468.PaddingRight = var0.PaddingRight
   var468.PaddingTop = UDim.new(0, 2)
   var468.PaddingBottom = UDim.new(0, 2)
   var464.Padding = var1.createElement("UIPadding", var468)
   local var478 = var5
   if var478 then
      local var482 = {}
      var482.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var482.Text = var3
      var482.TextColor3 = var6.textColor
      var482.TextTruncate = Enum.TextTruncate.AtEnd
      var482.Font = var1.font
      var482.TextSize = var6.textSize
      var482.TextXAlignment = Enum.TextXAlignment.Left
      var482.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var482)
   end
   var464.Label = var478
   var478 = var5
   if var478 then
      local var501 = {}
      var501.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var501.TextXAlignment = Enum.TextXAlignment.Left
      var501.CaptureFocus = true
      var501.Text = var3
      var501.ClearTextOnFocus = false
      var501.FocusChanged = arg1.focusChanged
      var501.OnItemClicked = arg1.onItemClicked
      var501.Items = var0.UnusedEvents
      var501.MaxItems = 3
      local var0 = var1.createElement(var4, var501)
   end
   var464.TextBox = var478
   local var521 = {}
   var521.Size = UDim2.new(0, 8, 0, 8)
   var521.AnchorPoint = Vector2.new(0.5, 0.5)
   var521.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var521.BackgroundTransparency = 1
   var521.Image = var6.deleteImage
   var521.ImageColor3 = var6.subTextColor
   var521.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var464.DeleteButton = var1.createElement("ImageButton", var521)
   local var560 = {}
   var560.AnchorPoint = Vector2.new(1, 0.5)
   var560.Position = UDim2.new(1, 0, 0.5, 0)
   var560.OnActivated = arg1.showMenu
   var464.ContextButton = var1.createElement(var6, var560)
   local var576 = {}
   var576.ShowMenu = var2.showContextMenu
   var576.OnMenuOpened = arg1.hideMenu
   var576.OnMenuItemClicked = arg1.onMenuItemClicked
   var464.EditEventMenu = var1.createElement(var5, var576)
   return var1.createElement("Frame", var461, var464)
end

fun24 = var3.withContext
local var582 = {}
var582.Stylizer = var3.Stylizer
var582.Mouse = var3.Mouse
var7 = fun24(var582)(var7)
return var7
