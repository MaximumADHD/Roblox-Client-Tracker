-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Components.SettingsMenu)
local var5 = var1.PureComponent:extend("SettingsButton")
function var5.init(arg1)
   local var29 = {}
   var29.showMenu = false
   arg1.state = var29
   function arg1.showMenu()
      local var32 = {}
      var32.showMenu = true
      arg1:setState(var32)
   end
   
   function arg1.hideMenu()
      local var36 = {}
      var36.showMenu = false
      arg1:setState(var36)
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

function var5.willUnmount(arg1)
   arg1.props.Mouse:__resetCursor()
end

local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var99 = {}
   var99.BackgroundColor3 = var1.backgroundColor
   var99.BorderColor3 = var1.borderColor
   var99.Size = UDim2.new(0, var2.SCROLL_BAR_SIZE, 0, var2.TIMELINE_HEIGHT)
   var99.Image = var1.settingsButtonTheme.image
   var99.ScaleType = Enum.ScaleType.Fit
   var99.ImageColor3 = var1.settingsButtonTheme.imageColor
   var99.AutoButtonColor = false
   var1.Event.Activated = arg1.showMenu
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   local var25 = {}
   local var29 = {}
   var29.ShowMenu = arg1.state.showMenu
   var29.OnMenuOpened = arg1.hideMenu
   var29.OnChangeFPS = var0.OnChangeFPS
   var29.OnChangePlaybackSpeed = var0.OnChangePlaybackSpeed
   var25.SettingsMenu = var1.createElement(var4, var29)
   return var1.createElement("ImageButton", var99, var25)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var99 = {}
   var99.BackgroundColor3 = var1.backgroundColor
   var99.BorderColor3 = var1.borderColor
   var99.Size = UDim2.new(0, var2.SCROLL_BAR_SIZE, 0, var2.TIMELINE_HEIGHT)
   var99.Image = var1.settingsButtonTheme.image
   var99.ScaleType = Enum.ScaleType.Fit
   var99.ImageColor3 = var1.settingsButtonTheme.imageColor
   var99.AutoButtonColor = false
   var1.Event.Activated = arg1.showMenu
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   local var25 = {}
   local var29 = {}
   var29.ShowMenu = arg1.state.showMenu
   var29.OnMenuOpened = arg1.hideMenu
   var29.OnChangeFPS = var0.OnChangeFPS
   var29.OnChangePlaybackSpeed = var0.OnChangePlaybackSpeed
   var25.SettingsMenu = var1.createElement(var4, var29)
   return var1.createElement("ImageButton", var99, var25)
end

fun0 = var3.withContext
local var34 = {}
var34.Mouse = var3.Mouse
var34.Stylizer = var3.Stylizer
var5 = fun0(var34)(var5)
return var5
