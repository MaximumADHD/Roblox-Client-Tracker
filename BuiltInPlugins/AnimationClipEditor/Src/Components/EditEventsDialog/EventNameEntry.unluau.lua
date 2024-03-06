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
   local var40 = {}
   var40.editing = false
   var40.showContextMenu = false
   arg1.state = var40
   function arg1.onMenuItemClicked(arg1)
      if arg1 == "Edit" then
         local var48 = {}
         var48.editing = true
         arg1:setState(var48)
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
         local var69 = {}
         var69.editing = false
         arg1:setState(var69)
         local var0 = arg1.props.Name
         local var1 = arg1.Text
         if var1 == "" then
            local var77 = arg1.props
            var77 = var0
            var77.OnDeleteEvent(var77)
         end
         local var79 = arg1
         local var80 = var79.props
         var80 = var0
         var79 = var1
         var80.OnRenameEvent(var80, var79)
      end
   end
   
   function arg1.onItemClicked(arg1)
      local var84 = {}
      var84.editing = false
      arg1:setState(var84)
      local var1 = arg1.props.Name
      if var1 == "" then
         if arg1 == "" then
            local var91 = arg1.props
            var91 = var1
            var91.OnDeleteEvent(var91)
         end
      end
      if arg1 == "" then
         if arg1 ~= var1 then
            local var93 = arg1
            local var94 = var93.props
            var94 = var1
            var93 = arg1
            var94.OnRenameEvent(var94, var93)
         end
      end
   end
   
   function arg1.showMenu()
      local var97 = {}
      var97.showContextMenu = true
      arg1:setState(var97)
   end
   
   function arg1.hideMenu()
      local var101 = {}
      var101.showContextMenu = false
      arg1:setState(var101)
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
      local var122 = {}
      var122.editing = true
      arg1:setState(var122)
   end
end

function var7.willUnmount(arg1)
   arg1.props.Mouse:__resetCursor()
end

local function fun11(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var144 = {}
   var144.Size = var0.Size
   var144.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var144.BorderColor3 = var1.borderColor
   local var147 = {}
   local var151 = {}
   var151.PaddingLeft = var4
   var151.PaddingRight = var0.PaddingRight
   var151.PaddingTop = UDim.new(0, 2)
   var151.PaddingBottom = UDim.new(0, 2)
   var147.Padding = var1.createElement("UIPadding", var151)
   local var161 = var5
   if var161 then
      local var165 = {}
      var165.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var165.Text = var3
      var165.TextColor3 = var6.textColor
      var165.TextTruncate = Enum.TextTruncate.AtEnd
      var165.Font = var1.font
      var165.TextSize = var6.textSize
      var165.TextXAlignment = Enum.TextXAlignment.Left
      var165.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var165)
   end
   var147.Label = var161
   var161 = var5
   if var161 then
      local var184 = {}
      var184.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var184.TextXAlignment = Enum.TextXAlignment.Left
      var184.CaptureFocus = true
      var184.Text = var3
      var184.ClearTextOnFocus = false
      var184.FocusChanged = arg1.focusChanged
      var184.OnItemClicked = arg1.onItemClicked
      var184.Items = var0.UnusedEvents
      var184.MaxItems = 3
      local var0 = var1.createElement(var4, var184)
   end
   var147.TextBox = var161
   local var204 = {}
   var204.Size = UDim2.new(0, 8, 0, 8)
   var204.AnchorPoint = Vector2.new(0.5, 0.5)
   var204.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var204.BackgroundTransparency = 1
   var204.Image = var6.deleteImage
   var204.ImageColor3 = var6.subTextColor
   var204.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var147.DeleteButton = var1.createElement("ImageButton", var204)
   local var243 = {}
   var243.AnchorPoint = Vector2.new(1, 0.5)
   var243.Position = UDim2.new(1, 0, 0.5, 0)
   var243.OnActivated = arg1.showMenu
   var147.ContextButton = var1.createElement(var6, var243)
   local var259 = {}
   var259.ShowMenu = var2.showContextMenu
   var259.OnMenuOpened = arg1.hideMenu
   var259.OnMenuItemClicked = arg1.onMenuItemClicked
   var147.EditEventMenu = var1.createElement(var5, var259)
   return var1.createElement("Frame", var144, var147)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var144 = {}
   var144.Size = var0.Size
   var144.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var144.BorderColor3 = var1.borderColor
   local var147 = {}
   local var151 = {}
   var151.PaddingLeft = var4
   var151.PaddingRight = var0.PaddingRight
   var151.PaddingTop = UDim.new(0, 2)
   var151.PaddingBottom = UDim.new(0, 2)
   var147.Padding = var1.createElement("UIPadding", var151)
   local var161 = var5
   if var161 then
      local var165 = {}
      var165.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var165.Text = var3
      var165.TextColor3 = var6.textColor
      var165.TextTruncate = Enum.TextTruncate.AtEnd
      var165.Font = var1.font
      var165.TextSize = var6.textSize
      var165.TextXAlignment = Enum.TextXAlignment.Left
      var165.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var165)
   end
   var147.Label = var161
   var161 = var5
   if var161 then
      local var184 = {}
      var184.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var184.TextXAlignment = Enum.TextXAlignment.Left
      var184.CaptureFocus = true
      var184.Text = var3
      var184.ClearTextOnFocus = false
      var184.FocusChanged = arg1.focusChanged
      var184.OnItemClicked = arg1.onItemClicked
      var184.Items = var0.UnusedEvents
      var184.MaxItems = 3
      local var0 = var1.createElement(var4, var184)
   end
   var147.TextBox = var161
   local var204 = {}
   var204.Size = UDim2.new(0, 8, 0, 8)
   var204.AnchorPoint = Vector2.new(0.5, 0.5)
   var204.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var204.BackgroundTransparency = 1
   var204.Image = var6.deleteImage
   var204.ImageColor3 = var6.subTextColor
   var204.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var147.DeleteButton = var1.createElement("ImageButton", var204)
   local var243 = {}
   var243.AnchorPoint = Vector2.new(1, 0.5)
   var243.Position = UDim2.new(1, 0, 0.5, 0)
   var243.OnActivated = arg1.showMenu
   var147.ContextButton = var1.createElement(var6, var243)
   local var259 = {}
   var259.ShowMenu = var2.showContextMenu
   var259.OnMenuOpened = arg1.hideMenu
   var259.OnMenuItemClicked = arg1.onMenuItemClicked
   var147.EditEventMenu = var1.createElement(var5, var259)
   return var1.createElement("Frame", var144, var147)
end

fun11 = var3.withContext
local var265 = {}
var265.Stylizer = var3.Stylizer
var265.Mouse = var3.Mouse
var7 = fun11(var265)(var7)
return var7
