-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local var1 = require(script.Parent.CoreGuiManager)
local var2 = game:GetService("TextService")
local var3 = Vector2.new(12, 4)
function var0.getSize(arg1)
   return arg1.m_imageLabel.Size
end

function var0.setPosition(arg1, arg2)
   arg1.m_imageLabel.Position = arg2
end

function var0.setAnchorPoint(arg1, arg2)
   arg1.m_imageLabel.AnchorPoint = arg2
end

local function fun0(arg1)
   local var0 = arg1.Text
   local var1 = arg1.TextSize
   local var2 = arg1.Font
   local var3 = Vector2.new(0, 0)
   return var2:GetTextSize()
end

function var0.setText(arg1, arg2)
   local var0 = var1:findOrCreateScreenGui("ValueBoxes")
   arg1.m_textLabel.Text = arg2
   local var70 = var0.AbsoluteSize.Y
   local var2 = 0.025 * var70
   var70 = var2
   var2 = math.clamp(var70, 12, 15)
   local var3 = arg1.m_textLabel
   var3.TextSize = var2
   local var77 = arg1.m_textLabel
   local var79 = var77.Text
   local var80 = var77.TextSize
   local var81 = var77.Font
   local var85 = Vector2.new(0, 0)
   var3 = var2:GetTextSize()
   local var90 = var0.AbsoluteSize.X
   local var9 = 0.00857142857142857 * var90
   var90 = var9
   var9 = math.clamp(var90, 0, var3.X)
   arg1.m_textLabel.Size = UDim2.new(0, var3.X, 0, var3.Y)
   arg1.m_imageLabel.Size = UDim2.new(0, var3.X + 2 * var9, 0, var3.Y + 2 * var9 / var3.X * var3.Y)
end

function var0.setVisible(arg1, arg2)
   arg1.m_imageLabel.Visible = arg2
   arg1.m_textLabel.Visible = arg2
end

local function var4()
   local var0 = Instance.new("ImageLabel")
   var0.Name = "UIEditorValueBoxImageLabel"
   local var1 = var1:findOrCreateScreenGui("ValueBoxes")
   var1.DisplayOrder = 1
   var0.Parent = var1
   var0.BackgroundTransparency = 1
   var0.Image = "rbxasset://textures/StudioUIEditor/valueBoxRoundedRectangle.png"
   var0.ImageColor3 = Color3.fromRGB(255, 205, 0)
   var0.ScaleType = Enum.ScaleType.Slice
   var0.SliceCenter = Rect.new(3, 3, 13, 13)
   return var0
end

local function var5()
   local var0 = Instance.new("TextLabel")
   var0.Name = "UIEditorValueBoxTexLabel"
   var0.TextColor3 = Color3.new(0, 0, 0)
   var0.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
   var0.BackgroundTransparency = 1
   var0.BorderSizePixel = 0
   var0.Font = Enum.Font.SourceSans
   var0.TextXAlignment = Enum.TextXAlignment.Center
   var0.TextYAlignment = Enum.TextYAlignment.Center
   var0.TextSize = 15
   var0.AnchorPoint = Vector2.new(0.5, 0.5)
   var0.Position = UDim2.new(0.5, 0, 0.5, 65534)
   return var0
end

function var0.new(arg1)
   local var0 = {}
   var0.m_imageLabel = var4()
   if arg1 == "m_imageLabel" then
      var0.m_imageLabel.Parent = arg1
   end
   var0.m_textLabel = var5()
   local var190 = var0.m_imageLabel
   var0.m_textLabel.Parent = var190
   var190 = var0
   return setmetatable(var190, var0)
end

var0.__index = var0
function var0.Destroy(arg1)
   arg1.m_imageLabel:Destroy()
end

return var0
