-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = UDim2.new(0, 9, 0, 8)
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Src.Util.Constants)
local var4 = require(var1.Packages.Framework).ContextServices
local var5 = var2.PureComponent:extend("AddEventEntry")
function var5.init(arg1)
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

local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.PaddingLeft
   local var3 = var1.dialogTheme
   local var94 = {}
   var94.Size = var0.Size
   var94.BackgroundTransparency = 1
   var94.AutoButtonColor = false
   var2.Event.Activated = var0.OnAddEvent
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var109 = {}
   local var113 = {}
   var113.PaddingLeft = var2
   var113.PaddingRight = var0.PaddingRight
   var113.PaddingTop = UDim.new(0, 2)
   var113.PaddingBottom = UDim.new(0, 2)
   var109.Padding = var2.createElement("UIPadding", var113)
   local var126 = {}
   var126.Size = UDim2.new(1, var3.TRACKLIST_BUTTON_SIZE, 1, 0)
   var126.Text = arg1.props.Localization:getText("Title", "AddEvent")
   var126.TextColor3 = var3.subTextColor
   var126.Font = var1.font
   var126.TextSize = var3.textSize
   var126.TextXAlignment = Enum.TextXAlignment.Left
   var126.BackgroundTransparency = 1
   var109.Label = var2.createElement("TextLabel", var126)
   local var148 = {}
   var148.Size = var0
   var148.AnchorPoint = Vector2.new(0.5, 0.5)
   var148.Position = UDim2.new(0, var2.Offset / 2, 0.5, 0)
   var148.BackgroundTransparency = 1
   var148.Image = var3.addImage
   var148.ImageColor3 = var3.subTextColor
   var109.AddImage = var2.createElement("ImageLabel", var148)
   return var2.createElement("ImageButton", var94, var109)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.PaddingLeft
   local var3 = var1.dialogTheme
   local var94 = {}
   var94.Size = var0.Size
   var94.BackgroundTransparency = 1
   var94.AutoButtonColor = false
   var2.Event.Activated = var0.OnAddEvent
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var109 = {}
   local var113 = {}
   var113.PaddingLeft = var2
   var113.PaddingRight = var0.PaddingRight
   var113.PaddingTop = UDim.new(0, 2)
   var113.PaddingBottom = UDim.new(0, 2)
   var109.Padding = var2.createElement("UIPadding", var113)
   local var126 = {}
   var126.Size = UDim2.new(1, var3.TRACKLIST_BUTTON_SIZE, 1, 0)
   var126.Text = arg1.props.Localization:getText("Title", "AddEvent")
   var126.TextColor3 = var3.subTextColor
   var126.Font = var1.font
   var126.TextSize = var3.textSize
   var126.TextXAlignment = Enum.TextXAlignment.Left
   var126.BackgroundTransparency = 1
   var109.Label = var2.createElement("TextLabel", var126)
   local var148 = {}
   var148.Size = var0
   var148.AnchorPoint = Vector2.new(0.5, 0.5)
   var148.Position = UDim2.new(0, var2.Offset / 2, 0.5, 0)
   var148.BackgroundTransparency = 1
   var148.Image = var3.addImage
   var148.ImageColor3 = var3.subTextColor
   var109.AddImage = var2.createElement("ImageLabel", var148)
   return var2.createElement("ImageButton", var94, var109)
end

fun3 = var4.withContext
local var167 = {}
var167.Stylizer = var4.Stylizer
var167.Localization = var4.Localization
var167.Mouse = var4.Mouse
var5 = fun3(var167)(var5)
return var5
