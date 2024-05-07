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
   local var78 = {}
   var78.Size = var0.Size
   var78.BackgroundTransparency = 1
   var78.AutoButtonColor = false
   var2.Event.Activated = var0.OnAddEvent
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var93 = {}
   local var97 = {}
   var97.PaddingLeft = var2
   var97.PaddingRight = var0.PaddingRight
   var97.PaddingTop = UDim.new(0, 2)
   var97.PaddingBottom = UDim.new(0, 2)
   var93.Padding = var2.createElement("UIPadding", var97)
   local var110 = {}
   var110.Size = UDim2.new(1, var3.TRACKLIST_BUTTON_SIZE, 1, 0)
   var110.Text = arg1.props.Localization:getText("Title", "AddEvent")
   var110.TextColor3 = var3.subTextColor
   var110.Font = var1.font
   var110.TextSize = var3.textSize
   var110.TextXAlignment = Enum.TextXAlignment.Left
   var110.BackgroundTransparency = 1
   var93.Label = var2.createElement("TextLabel", var110)
   local var132 = {}
   var132.Size = var0
   var132.AnchorPoint = Vector2.new(0.5, 0.5)
   var132.Position = UDim2.new(0, var2.Offset / 2, 0.5, 0)
   var132.BackgroundTransparency = 1
   var132.Image = var3.addImage
   var132.ImageColor3 = var3.subTextColor
   var93.AddImage = var2.createElement("ImageLabel", var132)
   return var2.createElement("ImageButton", var78, var93)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.PaddingLeft
   local var3 = var1.dialogTheme
   local var78 = {}
   var78.Size = var0.Size
   var78.BackgroundTransparency = 1
   var78.AutoButtonColor = false
   var2.Event.Activated = var0.OnAddEvent
   var2.Event.MouseEnter = arg1.mouseEnter
   var2.Event.MouseLeave = arg1.mouseLeave
   local var93 = {}
   local var97 = {}
   var97.PaddingLeft = var2
   var97.PaddingRight = var0.PaddingRight
   var97.PaddingTop = UDim.new(0, 2)
   var97.PaddingBottom = UDim.new(0, 2)
   var93.Padding = var2.createElement("UIPadding", var97)
   local var110 = {}
   var110.Size = UDim2.new(1, var3.TRACKLIST_BUTTON_SIZE, 1, 0)
   var110.Text = arg1.props.Localization:getText("Title", "AddEvent")
   var110.TextColor3 = var3.subTextColor
   var110.Font = var1.font
   var110.TextSize = var3.textSize
   var110.TextXAlignment = Enum.TextXAlignment.Left
   var110.BackgroundTransparency = 1
   var93.Label = var2.createElement("TextLabel", var110)
   local var132 = {}
   var132.Size = var0
   var132.AnchorPoint = Vector2.new(0.5, 0.5)
   var132.Position = UDim2.new(0, var2.Offset / 2, 0.5, 0)
   var132.BackgroundTransparency = 1
   var132.Image = var3.addImage
   var132.ImageColor3 = var3.subTextColor
   var93.AddImage = var2.createElement("ImageLabel", var132)
   return var2.createElement("ImageButton", var78, var93)
end

fun3 = var4.withContext
local var151 = {}
var151.Stylizer = var4.Stylizer
var151.Localization = var4.Localization
var151.Mouse = var4.Mouse
var5 = fun3(var151)(var5)
return var5
