-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Components.SettingsMenu)
local var5 = var1.PureComponent:extend("SettingsButton")
function var5.init(arg1)
   local var30 = {}
   var30.showMenu = false
   arg1.state = var30
   function arg1.showMenu()
      local var33 = {}
      var33.showMenu = true
      arg1:setState(var33)
   end
   
   function arg1.hideMenu()
      local var37 = {}
      var37.showMenu = false
      arg1:setState(var37)
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

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var69 = {}
   var69.BackgroundColor3 = var1.backgroundColor
   var69.BorderColor3 = var1.borderColor
   var69.Size = UDim2.new(0, var2.SCROLL_BAR_SIZE, 0, var2.TIMELINE_HEIGHT)
   var69.Image = var1.settingsButtonTheme.image
   var69.ScaleType = Enum.ScaleType.Fit
   var69.ImageColor3 = var1.settingsButtonTheme.imageColor
   var69.AutoButtonColor = false
   var1.Event.Activated = arg1.showMenu
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   local var98 = {}
   local var102 = {}
   var102.ShowMenu = arg1.state.showMenu
   var102.OnMenuOpened = arg1.hideMenu
   var102.OnChangeFPS = var0.OnChangeFPS
   var102.OnChangeGridSpeed = var0.OnChangeGridSpeed
   var102.OnChangePlaybackSpeed = var0.OnChangePlaybackSpeed
   var98.SettingsMenu = var1.createElement(var4, var102)
   return var1.createElement("ImageButton", var69, var98)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var69 = {}
   var69.BackgroundColor3 = var1.backgroundColor
   var69.BorderColor3 = var1.borderColor
   var69.Size = UDim2.new(0, var2.SCROLL_BAR_SIZE, 0, var2.TIMELINE_HEIGHT)
   var69.Image = var1.settingsButtonTheme.image
   var69.ScaleType = Enum.ScaleType.Fit
   var69.ImageColor3 = var1.settingsButtonTheme.imageColor
   var69.AutoButtonColor = false
   var1.Event.Activated = arg1.showMenu
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   local var98 = {}
   local var102 = {}
   var102.ShowMenu = arg1.state.showMenu
   var102.OnMenuOpened = arg1.hideMenu
   var102.OnChangeFPS = var0.OnChangeFPS
   var102.OnChangeGridSpeed = var0.OnChangeGridSpeed
   var102.OnChangePlaybackSpeed = var0.OnChangePlaybackSpeed
   var98.SettingsMenu = var1.createElement(var4, var102)
   return var1.createElement("ImageButton", var69, var98)
end

fun6 = var3.withContext
local var107 = {}
var107.Mouse = var3.Mouse
var107.Stylizer = var3.Stylizer
var5 = fun6(var107)(var5)
return var5
