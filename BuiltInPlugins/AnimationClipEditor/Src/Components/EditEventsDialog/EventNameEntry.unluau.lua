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
   local var445 = {}
   var445.editing = false
   var445.showContextMenu = false
   arg1.state = var445
   function arg1.onMenuItemClicked(arg1)
      if arg1 == "Edit" then
         local var453 = {}
         var453.editing = true
         arg1:setState(var453)
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
         local var474 = {}
         var474.editing = false
         arg1:setState(var474)
         local var0 = arg1.props.Name
         local var1 = arg1.Text
         if var1 == "" then
            local var482 = arg1.props
            var482 = var0
            var482.OnDeleteEvent(var482)
         end
         local var484 = arg1
         local var485 = var484.props
         var485 = var0
         var484 = var1
         var485.OnRenameEvent(var485, var484)
      end
   end
   
   function arg1.onItemClicked(arg1)
      local var489 = {}
      var489.editing = false
      arg1:setState(var489)
      local var1 = arg1.props.Name
      if var1 == "" then
         if arg1 == "" then
            local var496 = arg1.props
            var496 = var1
            var496.OnDeleteEvent(var496)
         end
      end
      if arg1 == "" then
         if arg1 ~= var1 then
            local var498 = arg1
            local var499 = var498.props
            var499 = var1
            var498 = arg1
            var499.OnRenameEvent(var499, var498)
         end
      end
   end
   
   function arg1.showMenu()
      local var502 = {}
      var502.showContextMenu = true
      arg1:setState(var502)
   end
   
   function arg1.hideMenu()
      local var506 = {}
      var506.showContextMenu = false
      arg1:setState(var506)
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
      local var527 = {}
      var527.editing = true
      arg1:setState(var527)
   end
end

function var7.willUnmount(arg1)
   arg1.props.Mouse:__resetCursor()
end

local function fun36(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var549 = {}
   var549.Size = var0.Size
   var549.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var549.BorderColor3 = var1.borderColor
   local var552 = {}
   local var556 = {}
   var556.PaddingLeft = var4
   var556.PaddingRight = var0.PaddingRight
   var556.PaddingTop = UDim.new(0, 2)
   var556.PaddingBottom = UDim.new(0, 2)
   var552.Padding = var1.createElement("UIPadding", var556)
   local var566 = var5
   if var566 then
      local var570 = {}
      var570.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var570.Text = var3
      var570.TextColor3 = var6.textColor
      var570.TextTruncate = Enum.TextTruncate.AtEnd
      var570.Font = var1.font
      var570.TextSize = var6.textSize
      var570.TextXAlignment = Enum.TextXAlignment.Left
      var570.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var570)
   end
   var552.Label = var566
   var566 = var5
   if var566 then
      local var589 = {}
      var589.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var589.TextXAlignment = Enum.TextXAlignment.Left
      var589.CaptureFocus = true
      var589.Text = var3
      var589.ClearTextOnFocus = false
      var589.FocusChanged = arg1.focusChanged
      var589.OnItemClicked = arg1.onItemClicked
      var589.Items = var0.UnusedEvents
      var589.MaxItems = 3
      local var0 = var1.createElement(var4, var589)
   end
   var552.TextBox = var566
   local var609 = {}
   var609.Size = UDim2.new(0, 8, 0, 8)
   var609.AnchorPoint = Vector2.new(0.5, 0.5)
   var609.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var609.BackgroundTransparency = 1
   var609.Image = var6.deleteImage
   var609.ImageColor3 = var6.subTextColor
   var609.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var552.DeleteButton = var1.createElement("ImageButton", var609)
   local var648 = {}
   var648.AnchorPoint = Vector2.new(1, 0.5)
   var648.Position = UDim2.new(1, 0, 0.5, 0)
   var648.OnActivated = arg1.showMenu
   var552.ContextButton = var1.createElement(var6, var648)
   local var664 = {}
   var664.ShowMenu = var2.showContextMenu
   var664.OnMenuOpened = arg1.hideMenu
   var664.OnMenuItemClicked = arg1.onMenuItemClicked
   var552.EditEventMenu = var1.createElement(var5, var664)
   return var1.createElement("Frame", var549, var552)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var549 = {}
   var549.Size = var0.Size
   var549.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var549.BorderColor3 = var1.borderColor
   local var552 = {}
   local var556 = {}
   var556.PaddingLeft = var4
   var556.PaddingRight = var0.PaddingRight
   var556.PaddingTop = UDim.new(0, 2)
   var556.PaddingBottom = UDim.new(0, 2)
   var552.Padding = var1.createElement("UIPadding", var556)
   local var566 = var5
   if var566 then
      local var570 = {}
      var570.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var570.Text = var3
      var570.TextColor3 = var6.textColor
      var570.TextTruncate = Enum.TextTruncate.AtEnd
      var570.Font = var1.font
      var570.TextSize = var6.textSize
      var570.TextXAlignment = Enum.TextXAlignment.Left
      var570.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var570)
   end
   var552.Label = var566
   var566 = var5
   if var566 then
      local var589 = {}
      var589.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var589.TextXAlignment = Enum.TextXAlignment.Left
      var589.CaptureFocus = true
      var589.Text = var3
      var589.ClearTextOnFocus = false
      var589.FocusChanged = arg1.focusChanged
      var589.OnItemClicked = arg1.onItemClicked
      var589.Items = var0.UnusedEvents
      var589.MaxItems = 3
      local var0 = var1.createElement(var4, var589)
   end
   var552.TextBox = var566
   local var609 = {}
   var609.Size = UDim2.new(0, 8, 0, 8)
   var609.AnchorPoint = Vector2.new(0.5, 0.5)
   var609.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var609.BackgroundTransparency = 1
   var609.Image = var6.deleteImage
   var609.ImageColor3 = var6.subTextColor
   var609.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var552.DeleteButton = var1.createElement("ImageButton", var609)
   local var648 = {}
   var648.AnchorPoint = Vector2.new(1, 0.5)
   var648.Position = UDim2.new(1, 0, 0.5, 0)
   var648.OnActivated = arg1.showMenu
   var552.ContextButton = var1.createElement(var6, var648)
   local var664 = {}
   var664.ShowMenu = var2.showContextMenu
   var664.OnMenuOpened = arg1.hideMenu
   var664.OnMenuItemClicked = arg1.onMenuItemClicked
   var552.EditEventMenu = var1.createElement(var5, var664)
   return var1.createElement("Frame", var549, var552)
end

fun36 = var3.withContext
local var670 = {}
var670.Stylizer = var3.Stylizer
var670.Mouse = var3.Mouse
var7 = fun36(var670)(var7)
return var7
