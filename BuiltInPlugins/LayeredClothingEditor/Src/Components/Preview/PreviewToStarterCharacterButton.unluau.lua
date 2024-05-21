-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game.Workspace
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.AvatarToolsShared)
local var4 = require(var1.Packages.Framework)
local var5 = var4.ContextServices
local var6 = var3.Util.AccessoryAndBodyToolShared.PreviewModelAsCharacter
local var7 = var4.UI.Button
local var8 = require(var1.Src.Util.StringUtil)
local var9 = var2.PureComponent:extend("PreviewToStarterCharacterButton")
function var9.init(arg1)
   function arg1.onPreviewButtonClick()
      local var0 = var0:FindFirstChild("LayeredClothingEditorPreview")
      if not var0 then
      end
      local var1 = var0:FindFirstChild("Mannequin")
      if not var1 then
      end
      local var2 = var1
      local var3 = arg1.props.EditingItemContext:getItem()
      var6:SetPreviewAsCharacter()
   end
   
end

local function fun5(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var250 = {}
   var250.Size = UDim2.new(0, var8.getTextWidth("Preview", var1.TextSize, var1.Font) + var1.MainPadding, 0, var1.ButtonHeight)
   var250.Text = "Preview"
   var250.TextSize = var1.TextSize
   var250.ButtonHeight = var1.ButtonHeight
   var250.BackgroundColor3 = Color3.new(0, 0, 0)
   var250.Style = "Round"
   var250.LayoutOrder = var0.LayoutOrder
   var250.OnClick = arg1.onPreviewButtonClick
   return var2.createElement(var7, var250)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var250 = {}
   var250.Size = UDim2.new(0, var8.getTextWidth("Preview", var1.TextSize, var1.Font) + var1.MainPadding, 0, var1.ButtonHeight)
   var250.Text = "Preview"
   var250.TextSize = var1.TextSize
   var250.ButtonHeight = var1.ButtonHeight
   var250.BackgroundColor3 = Color3.new(0, 0, 0)
   var250.Style = "Round"
   var250.LayoutOrder = var0.LayoutOrder
   var250.OnClick = arg1.onPreviewButtonClick
   return var2.createElement(var7, var250)
end

fun5 = var5.withContext
local var269 = {}
var269.Stylizer = var5.Stylizer
var269.EditingItemContext = var3.Contexts.EditingItemContext
var9 = fun5(var269)(var9)
return var9
