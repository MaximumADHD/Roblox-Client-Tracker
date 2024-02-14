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

local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.PaddingLeft
   local var3 = var1.dialogTheme
   local var12 = {}
   var12.Size = var0.Size
   var12.BackgroundTransparency = 1
   var12.AutoButtonColor = false
   var2.Event.Activated = var0.OnAddEvent
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var27 = {}
   local var31 = {}
   var31.PaddingLeft = var2
   var31.PaddingRight = var0.PaddingRight
   var31.PaddingTop = UDim.new(0, 2)
   var31.PaddingBottom = UDim.new(0, 2)
   var27.Padding = var2.createElement("UIPadding", var31)
   local var44 = {}
   var44.Size = UDim2.new(1, var3.TRACKLIST_BUTTON_SIZE, 1, 0)
   var44.Text = arg1.props.Localization:getText("Title", "AddEvent")
   var44.TextColor3 = var3.subTextColor
   var44.Font = var1.font
   var44.TextSize = var3.textSize
   var44.TextXAlignment = Enum.TextXAlignment.Left
   var44.BackgroundTransparency = 1
   var27.Label = var2.createElement("TextLabel", var44)
   local var66 = {}
   var66.Size = var0
   var66.AnchorPoint = Vector2.new(0.5, 0.5)
   var66.Position = UDim2.new(0, var2.Offset / 2, 0.5, 0)
   var66.BackgroundTransparency = 1
   var66.Image = var3.addImage
   var66.ImageColor3 = var3.subTextColor
   var27.AddImage = var2.createElement("ImageLabel", var66)
   return var2.createElement("ImageButton", var12, var27)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.PaddingLeft
   local var3 = var1.dialogTheme
   local var12 = {}
   var12.Size = var0.Size
   var12.BackgroundTransparency = 1
   var12.AutoButtonColor = false
   var2.Event.Activated = var0.OnAddEvent
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var27 = {}
   local var31 = {}
   var31.PaddingLeft = var2
   var31.PaddingRight = var0.PaddingRight
   var31.PaddingTop = UDim.new(0, 2)
   var31.PaddingBottom = UDim.new(0, 2)
   var27.Padding = var2.createElement("UIPadding", var31)
   local var44 = {}
   var44.Size = UDim2.new(1, var3.TRACKLIST_BUTTON_SIZE, 1, 0)
   var44.Text = arg1.props.Localization:getText("Title", "AddEvent")
   var44.TextColor3 = var3.subTextColor
   var44.Font = var1.font
   var44.TextSize = var3.textSize
   var44.TextXAlignment = Enum.TextXAlignment.Left
   var44.BackgroundTransparency = 1
   var27.Label = var2.createElement("TextLabel", var44)
   local var66 = {}
   var66.Size = var0
   var66.AnchorPoint = Vector2.new(0.5, 0.5)
   var66.Position = UDim2.new(0, var2.Offset / 2, 0.5, 0)
   var66.BackgroundTransparency = 1
   var66.Image = var3.addImage
   var66.ImageColor3 = var3.subTextColor
   var27.AddImage = var2.createElement("ImageLabel", var66)
   return var2.createElement("ImageButton", var12, var27)
end

fun0 = var4.withContext
local var85 = {}
var85.Stylizer = var4.Stylizer
var85.Localization = var4.Localization
var85.Mouse = var4.Mouse
var5 = fun0(var85)(var5)
return var5
