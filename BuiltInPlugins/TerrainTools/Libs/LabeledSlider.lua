----------------------------------------
--
-- LabeledSlider.lua
--
-- Creates a frame containing a label and a slider control.
--
----------------------------------------
GuiUtilities = require(script.Parent.GuiUtilities)
rbxGuiLibrary = require(script.Parent.RbxGui)

local kSliderWidth = 100

local kSliderThumbImage = "rbxasset://textures/TerrainTools/sliderbar_button.png"
local kPreThumbImage = "rbxasset://textures/TerrainTools/sliderbar_blue.png"
local kPostThumbImage = "rbxasset://textures/TerrainTools/sliderbar_grey.png"

local kThumbSize = 13

local kSteps = 100

LabeledSliderClass = {}
LabeledSliderClass.__index = LabeledSliderClass

function LabeledSliderClass.new(nameSuffix, labelText, sliderIntervals, defaultValue)
	local self = {}
	setmetatable(self, LabeledSliderClass)

	self._valueChangedFunction = nil

	local sliderIntervals = sliderIntervals or 100
	local defaultValue = defaultValue or 1

	local frame = GuiUtilities.MakeStandardFixedHeightFrame('Slider' .. nameSuffix)
	self._frame = frame

	local label = GuiUtilities.MakeStandardPropertyLabel(labelText)
	label.Parent = frame
	self._label = label

	self._value = defaultValue

	 --steps, width, position
	 local slider, sliderValue = rbxGuiLibrary.CreateSlider(sliderIntervals, 
		kSteps, 
		UDim2.new(0, 0, .5, -3))
	self._slider = slider
	self._sliderValue = sliderValue
	-- Some tweaks to make slider look nice.
	-- Hide the existing bar.
	slider.Bar.BackgroundTransparency = 1
	-- Replace slider thumb image.
	self._thumb = slider.Bar.Slider
	self._thumb.Image = kSliderThumbImage
	self._thumb.AnchorPoint = Vector2.new(0.5, 0.5)
	self._thumb.Size = UDim2.new(0, kThumbSize, 0, kThumbSize)
	
	-- Add images on bar.
	self._preThumbImage = Instance.new("ImageLabel")
	self._preThumbImage.Name = "PreThumb"
	self._preThumbImage.Parent = slider.Bar
	self._preThumbImage.Size = UDim2.new(1, 0, 1, 0)
	self._preThumbImage.Position = UDim2.new(0, 0, 0, 0)
	self._preThumbImage.Image = kPreThumbImage
	self._preThumbImage.BorderSizePixel = 0

	self._postThumbImage = Instance.new("ImageLabel")
	self._postThumbImage.Name = "PostThumb"
	self._postThumbImage.Parent = slider.Bar
	self._postThumbImage.Size = UDim2.new(1, 0, 1, 0)
	self._postThumbImage.Position = UDim2.new(0, 0, 0, 0)
	self._postThumbImage.Image = kPostThumbImage
	self._postThumbImage.BorderSizePixel = 0

	sliderValue.Changed:connect(function()
		self._value = sliderValue.Value

		-- Min value is 1.
		-- Max value is sliderIntervals.
		-- So scale is...
		local scale = (self._value - 1)/(sliderIntervals-1)

		self._preThumbImage.Size = UDim2.new(scale, 0, 1, 0)
		self._postThumbImage.Size = UDim2.new(1 - scale, 0, 1, 0)
		self._postThumbImage.Position = UDim2.new(scale, 0, 0, 0)
		
		self._thumb.Position = UDim2.new(scale, 0, 
			0.5, 0)

		if self._valueChangedFunction then 
			self._valueChangedFunction(self._value)
		end
	end)
	
	self:SetValue(defaultValue)
	slider.AnchorPoint = Vector2.new(0, 0.5)
	slider.Size = UDim2.new(0, kSliderWidth, 1, 0)
	slider.Position = UDim2.new(0, GuiUtilities.StandardLineElementLeftMargin, 0, GuiUtilities.kStandardPropertyHeight/2)
	slider.Parent = frame
	
	return self
end

function LabeledSliderClass:SetValueChangedFunction(vcf)
	self._valueChangedFunction = vcf
end

function LabeledSliderClass:GetFrame()
	return self._frame
end

function LabeledSliderClass:SetValue(newValue)
	if self._sliderValue.Value ~= newValue then
		self._sliderValue.Value = newValue
	end
end

function LabeledSliderClass:GetValue()
	return self._sliderValue.Value
end


return LabeledSliderClass