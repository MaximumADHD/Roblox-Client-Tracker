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
   local var269 = {}
   var269.editing = false
   var269.showContextMenu = false
   arg1.state = var269
   function arg1.onMenuItemClicked(arg1)
      if arg1 == "Edit" then
         local var277 = {}
         var277.editing = true
         arg1:setState(var277)
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
         local var298 = {}
         var298.editing = false
         arg1:setState(var298)
         local var0 = arg1.props.Name
         local var1 = arg1.Text
         if var1 == "" then
            local var306 = arg1.props
            var306 = var0
            var306.OnDeleteEvent(var306)
         end
         local var308 = arg1
         local var309 = var308.props
         var309 = var0
         var308 = var1
         var309.OnRenameEvent(var309, var308)
      end
   end
   
   function arg1.onItemClicked(arg1)
      local var313 = {}
      var313.editing = false
      arg1:setState(var313)
      local var1 = arg1.props.Name
      if var1 == "" then
         if arg1 == "" then
            local var320 = arg1.props
            var320 = var1
            var320.OnDeleteEvent(var320)
         end
      end
      if arg1 == "" then
         if arg1 ~= var1 then
            local var322 = arg1
            local var323 = var322.props
            var323 = var1
            var322 = arg1
            var323.OnRenameEvent(var323, var322)
         end
      end
   end
   
   function arg1.showMenu()
      local var326 = {}
      var326.showContextMenu = true
      arg1:setState(var326)
   end
   
   function arg1.hideMenu()
      local var330 = {}
      var330.showContextMenu = false
      arg1:setState(var330)
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
      local var351 = {}
      var351.editing = true
      arg1:setState(var351)
   end
end

function var7.willUnmount(arg1)
   arg1.props.Mouse:__resetCursor()
end

local function fun22(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var373 = {}
   var373.Size = var0.Size
   var373.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var373.BorderColor3 = var1.borderColor
   local var376 = {}
   local var380 = {}
   var380.PaddingLeft = var4
   var380.PaddingRight = var0.PaddingRight
   var380.PaddingTop = UDim.new(0, 2)
   var380.PaddingBottom = UDim.new(0, 2)
   var376.Padding = var1.createElement("UIPadding", var380)
   local var390 = var5
   if var390 then
      local var394 = {}
      var394.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var394.Text = var3
      var394.TextColor3 = var6.textColor
      var394.TextTruncate = Enum.TextTruncate.AtEnd
      var394.Font = var1.font
      var394.TextSize = var6.textSize
      var394.TextXAlignment = Enum.TextXAlignment.Left
      var394.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var394)
   end
   var376.Label = var390
   var390 = var5
   if var390 then
      local var413 = {}
      var413.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var413.TextXAlignment = Enum.TextXAlignment.Left
      var413.CaptureFocus = true
      var413.Text = var3
      var413.ClearTextOnFocus = false
      var413.FocusChanged = arg1.focusChanged
      var413.OnItemClicked = arg1.onItemClicked
      var413.Items = var0.UnusedEvents
      var413.MaxItems = 3
      local var0 = var1.createElement(var4, var413)
   end
   var376.TextBox = var390
   local var433 = {}
   var433.Size = UDim2.new(0, 8, 0, 8)
   var433.AnchorPoint = Vector2.new(0.5, 0.5)
   var433.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var433.BackgroundTransparency = 1
   var433.Image = var6.deleteImage
   var433.ImageColor3 = var6.subTextColor
   var433.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var376.DeleteButton = var1.createElement("ImageButton", var433)
   local var472 = {}
   var472.AnchorPoint = Vector2.new(1, 0.5)
   var472.Position = UDim2.new(1, 0, 0.5, 0)
   var472.OnActivated = arg1.showMenu
   var376.ContextButton = var1.createElement(var6, var472)
   local var488 = {}
   var488.ShowMenu = var2.showContextMenu
   var488.OnMenuOpened = arg1.hideMenu
   var488.OnMenuItemClicked = arg1.onMenuItemClicked
   var376.EditEventMenu = var1.createElement(var5, var488)
   return var1.createElement("Frame", var373, var376)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = arg1.state
   local var3 = var0.Name
   local var4 = var0.PaddingLeft
   local var5 = var2.editing
   local var6 = var1.dialogTheme
   local var373 = {}
   var373.Size = var0.Size
   var373.BackgroundColor3 = var1.trackTheme.shadedBackgroundColor
   var373.BorderColor3 = var1.borderColor
   local var376 = {}
   local var380 = {}
   var380.PaddingLeft = var4
   var380.PaddingRight = var0.PaddingRight
   var380.PaddingTop = UDim.new(0, 2)
   var380.PaddingBottom = UDim.new(0, 2)
   var376.Padding = var1.createElement("UIPadding", var380)
   local var390 = var5
   if var390 then
      local var394 = {}
      var394.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE, 1, 0)
      var394.Text = var3
      var394.TextColor3 = var6.textColor
      var394.TextTruncate = Enum.TextTruncate.AtEnd
      var394.Font = var1.font
      var394.TextSize = var6.textSize
      var394.TextXAlignment = Enum.TextXAlignment.Left
      var394.BackgroundTransparency = 1
      local var0 = var1.createElement("TextLabel", var394)
   end
   var376.Label = var390
   var390 = var5
   if var390 then
      local var413 = {}
      var413.Size = UDim2.new(1, var2.TRACKLIST_BUTTON_SIZE - 8, 1, 0)
      var413.TextXAlignment = Enum.TextXAlignment.Left
      var413.CaptureFocus = true
      var413.Text = var3
      var413.ClearTextOnFocus = false
      var413.FocusChanged = arg1.focusChanged
      var413.OnItemClicked = arg1.onItemClicked
      var413.Items = var0.UnusedEvents
      var413.MaxItems = 3
      local var0 = var1.createElement(var4, var413)
   end
   var376.TextBox = var390
   local var433 = {}
   var433.Size = UDim2.new(0, 8, 0, 8)
   var433.AnchorPoint = Vector2.new(0.5, 0.5)
   var433.Position = UDim2.new(0, var4.Offset / 2, 0.5, 0)
   var433.BackgroundTransparency = 1
   var433.Image = var6.deleteImage
   var433.ImageColor3 = var6.subTextColor
   var433.ScaleType = Enum.ScaleType.Fit
   var1.Event.Activated = arg1.onDeleteEvent
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var376.DeleteButton = var1.createElement("ImageButton", var433)
   local var472 = {}
   var472.AnchorPoint = Vector2.new(1, 0.5)
   var472.Position = UDim2.new(1, 0, 0.5, 0)
   var472.OnActivated = arg1.showMenu
   var376.ContextButton = var1.createElement(var6, var472)
   local var488 = {}
   var488.ShowMenu = var2.showContextMenu
   var488.OnMenuOpened = arg1.hideMenu
   var488.OnMenuItemClicked = arg1.onMenuItemClicked
   var376.EditEventMenu = var1.createElement(var5, var488)
   return var1.createElement("Frame", var373, var376)
end

fun22 = var3.withContext
local var494 = {}
var494.Stylizer = var3.Stylizer
var494.Mouse = var3.Mouse
var7 = fun22(var494)(var7)
return var7
