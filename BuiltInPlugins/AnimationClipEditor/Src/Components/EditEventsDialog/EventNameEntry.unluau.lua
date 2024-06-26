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
   local var404 = {}
   var404.editing = false
   var404.showContextMenu = false
   arg1.state = var404
   function arg1.onMenuItemClicked(arg1)
      if arg1 == "Edit" then
         local var412 = {}
         var412.editing = true
         arg1:setState(var412)
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
         local var433 = {}
         var433.editing = false
         arg1:setState(var433)
         local var0 = arg1.props.Name
         local var1 = arg1.Text
         if var1 == "" then
            local var441 = arg1.props
            var441 = var0
            var441.OnDeleteEvent(var441)
         end
         local var443 = arg1
         local var444 = var443.props
         var444 = var0
         var443 = var1
         var444.OnRenameEvent(var444, var443)
      end
   end
   
   function arg1.onItemClicked(arg1)
      local var448 = {}
      var448.editing = false
      arg1:setState(var448)
      local var1 = arg1.props.Name
      if var1 == "" then
         if arg1 == "" then
            local var455 = arg1.props
            var455 = var1
            var455.OnDeleteEvent(var455)
         end
      end
      if arg1 == "" then
         if arg1 ~= var1 then
            local var457 = arg1
            local var458 = var457.props
            var458 = var1
            var457 = arg1
            var458.OnRenameEvent(var458, var457)
         end
      end
   end
   
   function arg1.showMenu()
      local var461 = {}
      var461.showContextMenu = true
      arg1:setState(var461)
   end
   
   function arg1.hideMenu()
      local var465 = {}
      var465.showContextMenu = false
      arg1:setState(var465)
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
      local var486 = {}
      var486.editing = true
      arg1:setState(var486)
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
   local var508 = {}
   var508.Size = var0.Size
   var508.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var508.BorderColor3 = var1.borderColor
   local var511 = {}
   local var515 = {}
   var515.PaddingLeft = var4
   var515.PaddingRight = var0.PaddingRight
   var515.PaddingTop = UDim.new(0, 2)
   var515.PaddingBottom = UDim.new(0, 2)
   var511.Padding = var1.createElement("UIPadding", var515)
   local var525 = var5
   if var525 then
      local var529 = {}
      var529.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var529.Text = var3
      var529.TextColor3 = var6.textColor
      var529.TextTruncate = Enum.TextTruncate.AtEnd
      var529.Font = var1.font
      var529.TextSize = var6.textSize
      var529.TextXAlignment = Enum.TextXAlignment.Left
      var529.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var529)
   end
   var511.Label = var525
   var525 = var5
   if var525 then
      local var548 = {}
      var548.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var548.TextXAlignment = Enum.TextXAlignment.Left
      var548.CaptureFocus = true
      var548.Text = var3
      var548.ClearTextOnFocus = false
      var548.FocusChanged = arg1.focusChanged
      var548.OnItemClicked = arg1.onItemClicked
      var548.Items = var0.UnusedEvents
      var548.MaxItems = 3
      local var0 = var1.createElement(var4, var548)
   end
   var511.TextBox = var525
   local var568 = {}
   var568.Size = UDim2.new(0, 8, 0, 8)
   var568.AnchorPoint = Vector2.new(0.5, 0.5)
   var568.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var568.BackgroundTransparency = 1
   var568.Image = var6.deleteImage
   var568.ImageColor3 = var6.subTextColor
   var568.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var511.DeleteButton = var1.createElement("ImageButton", var568)
   local var607 = {}
   var607.AnchorPoint = Vector2.new(1, 0.5)
   var607.Position = UDim2.new(1, 0, 0.5, 0)
   var607.OnActivated = arg1.showMenu
   var511.ContextButton = var1.createElement(var6, var607)
   local var623 = {}
   var623.ShowMenu = var2.showContextMenu
   var623.OnMenuOpened = arg1.hideMenu
   var623.OnMenuItemClicked = arg1.onMenuItemClicked
   var511.EditEventMenu = var1.createElement(var5, var623)
   return var1.createElement("Frame", var508, var511)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var508 = {}
   var508.Size = var0.Size
   var508.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var508.BorderColor3 = var1.borderColor
   local var511 = {}
   local var515 = {}
   var515.PaddingLeft = var4
   var515.PaddingRight = var0.PaddingRight
   var515.PaddingTop = UDim.new(0, 2)
   var515.PaddingBottom = UDim.new(0, 2)
   var511.Padding = var1.createElement("UIPadding", var515)
   local var525 = var5
   if var525 then
      local var529 = {}
      var529.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var529.Text = var3
      var529.TextColor3 = var6.textColor
      var529.TextTruncate = Enum.TextTruncate.AtEnd
      var529.Font = var1.font
      var529.TextSize = var6.textSize
      var529.TextXAlignment = Enum.TextXAlignment.Left
      var529.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var529)
   end
   var511.Label = var525
   var525 = var5
   if var525 then
      local var548 = {}
      var548.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var548.TextXAlignment = Enum.TextXAlignment.Left
      var548.CaptureFocus = true
      var548.Text = var3
      var548.ClearTextOnFocus = false
      var548.FocusChanged = arg1.focusChanged
      var548.OnItemClicked = arg1.onItemClicked
      var548.Items = var0.UnusedEvents
      var548.MaxItems = 3
      local var0 = var1.createElement(var4, var548)
   end
   var511.TextBox = var525
   local var568 = {}
   var568.Size = UDim2.new(0, 8, 0, 8)
   var568.AnchorPoint = Vector2.new(0.5, 0.5)
   var568.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var568.BackgroundTransparency = 1
   var568.Image = var6.deleteImage
   var568.ImageColor3 = var6.subTextColor
   var568.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var511.DeleteButton = var1.createElement("ImageButton", var568)
   local var607 = {}
   var607.AnchorPoint = Vector2.new(1, 0.5)
   var607.Position = UDim2.new(1, 0, 0.5, 0)
   var607.OnActivated = arg1.showMenu
   var511.ContextButton = var1.createElement(var6, var607)
   local var623 = {}
   var623.ShowMenu = var2.showContextMenu
   var623.OnMenuOpened = arg1.hideMenu
   var623.OnMenuItemClicked = arg1.onMenuItemClicked
   var511.EditEventMenu = var1.createElement(var5, var623)
   return var1.createElement("Frame", var508, var511)
end

fun24 = var3.withContext
local var629 = {}
var629.Stylizer = var3.Stylizer
var629.Mouse = var3.Mouse
var7 = fun24(var629)(var7)
return var7
