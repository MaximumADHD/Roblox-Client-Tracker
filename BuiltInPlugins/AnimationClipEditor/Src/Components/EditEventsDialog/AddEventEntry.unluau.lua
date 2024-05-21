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
   local var57 = {}
   var57.Size = var0.Size
   var57.BackgroundTransparency = 1
   var57.AutoButtonColor = false
   var2.Event.Activated = var0.OnAddEvent
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var72 = {}
   local var76 = {}
   var76.PaddingLeft = var2
   var76.PaddingRight = var0.PaddingRight
   var76.PaddingTop = UDim.new(0, 2)
   var76.PaddingBottom = UDim.new(0, 2)
   var72.Padding = var2.createElement("UIPadding", var76)
   local var89 = {}
   var89.Size = UDim2.new(1, var3.TRACKLIST_BUTTON_SIZE, 1, 0)
   var89.Text = arg1.props.Localization:getText("Title", "AddEvent")
   var89.TextColor3 = var3.subTextColor
   var89.Font = var1.font
   var89.TextSize = var3.textSize
   var89.TextXAlignment = Enum.TextXAlignment.Left
   var89.BackgroundTransparency = 1
   var72.Label = var2.createElement("TextLabel", var89)
   local var111 = {}
   var111.Size = var0
   var111.AnchorPoint = Vector2.new(0.5, 0.5)
   var111.Position = UDim2.new(0, var2.Offset / 2, 0.5, 0)
   var111.BackgroundTransparency = 1
   var111.Image = var3.addImage
   var111.ImageColor3 = var3.subTextColor
   var72.AddImage = var2.createElement("ImageLabel", var111)
   return var2.createElement("ImageButton", var57, var72)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.PaddingLeft
   local var3 = var1.dialogTheme
   local var57 = {}
   var57.Size = var0.Size
   var57.BackgroundTransparency = 1
   var57.AutoButtonColor = false
   var2.Event.Activated = var0.OnAddEvent
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var72 = {}
   local var76 = {}
   var76.PaddingLeft = var2
   var76.PaddingRight = var0.PaddingRight
   var76.PaddingTop = UDim.new(0, 2)
   var76.PaddingBottom = UDim.new(0, 2)
   var72.Padding = var2.createElement("UIPadding", var76)
   local var89 = {}
   var89.Size = UDim2.new(1, var3.TRACKLIST_BUTTON_SIZE, 1, 0)
   var89.Text = arg1.props.Localization:getText("Title", "AddEvent")
   var89.TextColor3 = var3.subTextColor
   var89.Font = var1.font
   var89.TextSize = var3.textSize
   var89.TextXAlignment = Enum.TextXAlignment.Left
   var89.BackgroundTransparency = 1
   var72.Label = var2.createElement("TextLabel", var89)
   local var111 = {}
   var111.Size = var0
   var111.AnchorPoint = Vector2.new(0.5, 0.5)
   var111.Position = UDim2.new(0, var2.Offset / 2, 0.5, 0)
   var111.BackgroundTransparency = 1
   var111.Image = var3.addImage
   var111.ImageColor3 = var3.subTextColor
   var72.AddImage = var2.createElement("ImageLabel", var111)
   return var2.createElement("ImageButton", var57, var72)
end

fun3 = var4.withContext
local var130 = {}
var130.Stylizer = var4.Stylizer
var130.Localization = var4.Localization
var130.Mouse = var4.Mouse
var5 = fun3(var130)(var5)
return var5
