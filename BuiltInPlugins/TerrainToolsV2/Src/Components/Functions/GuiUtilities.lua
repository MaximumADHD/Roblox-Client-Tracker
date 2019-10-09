local module = {}

module.kTitleBarHeight = 27
module.kInlineTitleBarHeight = 24

module.kStandardContentAreaWidth = 180

module.kStandardPropertyHeight = 30
module.kSubSectionLabelHeight = 30

module.kStandardVMargin = 7
module.kStandardHMargin = 16

module.kCheckboxMinLabelWidth = 52
module.kCheckboxMinMargin = 12
module.kCheckboxWidth = 12

module.kRadioButtonsHPadding = 24

module.StandardLineLabelLeftMargin = module.kTitleBarHeight
module.StandardLineElementLeftMargin = (module.StandardLineLabelLeftMargin + module.kCheckboxMinLabelWidth
+ module.kCheckboxMinMargin + module.kCheckboxWidth + module.kRadioButtonsHPadding)
module.StandardLineLabelWidth = (module.StandardLineElementLeftMargin - module.StandardLineLabelLeftMargin - 10 )

module.kDropDownHeight = 55

module.kBottomButtonsFrameHeight = 50
module.kBottomButtonsHeight = 28

module.kShapeButtonSize = 32
module.kTextVerticalFudge = -3
module.kButtonVerticalFudge = -5

module.kBottomButtonsWidth = 100

module.kDisabledTextColor = Color3.new(.4, .4, .4)                   --todo: input spec disabled text color
module.kStandardButtonTextColor = Color3.new(0, 0, 0)                --todo: input spec disabled text color
module.kPressedButtonTextColor = Color3.new(1, 1, 1)                 --todo: input spec disabled text color

module.kButtonStandardBackgroundColor = Color3.new(1, 1, 1)          --todo: sync with spec
module.kButtonStandardBorderColor = Color3.new(.4,.4,.4)             --todo: sync with spec
module.kButtonDisabledBackgroundColor = Color3.new(.7,.7,.7)         --todo: sync with spec
module.kButtonDisabledBorderColor = Color3.new(.6,.6,.6)             --todo: sync with spec

module.kButtonBackgroundTransparency = 0.5
module.kButtonBackgroundIntenseTransparency = 0.4

module.kMainFrame = nil

function module.ShouldUseIconsForDarkerBackgrounds()
	local mainColor = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColor.r + mainColor.g + mainColor.b) / 3 < 0.5
end

function module.SetMainFrame(frame)
	module.kMainFrame = frame
end

function module.syncGuiElementTitleColor(guiElement)
	local function setColors()
		guiElement.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Titlebar)
	end
	settings().Studio.ThemeChanged:connect(setColors)
	setColors()
end

function module.syncGuiElementInputFieldColor(guiElement)
	local function setColors()
		guiElement.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.InputFieldBackground)
	end
	settings().Studio.ThemeChanged:connect(setColors)
	setColors()
end

function module.syncGuiElementBackgroundColor(guiElement)
	local function setColors()
		guiElement.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	end
	settings().Studio.ThemeChanged:connect(setColors)
	setColors()
end

function module.syncGuiElementStripeColor(guiElement)
	local function setColors()
		if ((guiElement.LayoutOrder + 1) % 2 == 0) then 
			guiElement.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
		else
			guiElement.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.CategoryItem)
		end
	end
	settings().Studio.ThemeChanged:connect(setColors)
	setColors()
end

function module.syncGuiElementBorderColor(guiElement)
	local function setColors()
		guiElement.BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border)
	end
	settings().Studio.ThemeChanged:connect(setColors)
	setColors()
end

function module.syncGuiElementFontColor(guiElement)
	local function setColors()
		guiElement.TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText)
	end
	settings().Studio.ThemeChanged:connect(setColors)
	setColors()
end

-- A frame with standard styling.
function module.MakeFrame(name)
	local frame = Instance.new("Frame")
	frame.Name = name
	frame.BackgroundTransparency = 0
	frame.BorderSizePixel = 0

	module.syncGuiElementBackgroundColor(frame)

	return frame
end
	

-- A frame that is a whole line, containing some arbitrary sized widget.
function module.MakeFixedHeightFrame(name, height)
	local frame = module.MakeFrame(name)
	frame.Size = UDim2.new(1, 0, 0, height)

	return frame
end

-- A frame that is one standard-sized line, containing some standard-sized widget (label, edit box, dropdown, 
-- checkbox)
function module.MakeStandardFixedHeightFrame(name)
	return module.MakeFixedHeightFrame(name, module.kStandardPropertyHeight)
end

function module.AdjustHeightDynamicallyToLayout(frame, uiLayout, optPadding)
	if (not optPadding) then 
		optPadding = 0
	end

	local function updateSizes()
		frame.Size = UDim2.new(1, 0, 0, uiLayout.AbsoluteContentSize.Y + optPadding)
	end
	uiLayout:GetPropertyChangedSignal("AbsoluteContentSize"):connect(updateSizes)
	updateSizes()
end

-- Assumes input frame has a List layout with sort order layout order.
-- Add frames in order as siblings of list layout, they will be laid out in order.
-- Color frame background accordingly.
function module.AddStripedChildrenToListFrame(listFrame, frames)
	for index, frame in ipairs(frames) do 
		frame.Parent = listFrame
		frame.LayoutOrder = index
		frame.BackgroundTransparency = 0
		frame.BorderSizePixel = 1
		module.syncGuiElementStripeColor(frame)
		module.syncGuiElementBorderColor(frame)
	end
end

local function MakeSectionInternal(parentGui, name, title, contentHeight)
	local frame = Instance.new("Frame")
	frame.Name = name
	frame.BackgroundTransparency = 1
	frame.Parent = parentGui
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	
	-- If title is "nil', no title bar.
	local contentYOffset = 0
	local titleBar = nil
	if (title ~= nil) then  
		local titleBarFrame = Instance.new("Frame")
		titleBarFrame.Name = "TitleBarFrame"
		titleBarFrame.Parent = frame
		titleBarFrame.Position = UDim2.new(0, 0, 0, 0)
		titleBarFrame.LayoutOrder = 0

		local titleBar = Instance.new("TextLabel")
		titleBar.Name = "TitleBarLabel"
		titleBar.Text = title
		titleBar.Parent = titleBarFrame
		titleBar.BackgroundTransparency = 1
		titleBar.Position = UDim2.new(0, module.kStandardHMargin, 0, 0)

		module.syncGuiElementFontColor(titleBar)
	
		contentYOffset = contentYOffset + module.kTitleBarHeight
	end

	frame.Size = UDim2.new(1, 0, 0, contentYOffset + contentHeight)

	return frame
end

function module.MakeStandardPropertyLabel(text, opt_ignoreThemeUpdates)
	local label = Instance.new('TextLabel')
	label.Name = 'Label'
	label.BackgroundTransparency = 1
	label.Font = Enum.Font.SourceSans                    --todo: input spec font
	label.TextSize = 15                                  --todo: input spec font size
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Text = text
	label.AnchorPoint = Vector2.new(0, 0.5)
	label.Position = UDim2.new(0, module.StandardLineLabelLeftMargin, 0.5, module.kTextVerticalFudge)
	label.Size = UDim2.new(0, module.StandardLineLabelWidth, 1, 0)

	if (not opt_ignoreThemeUpdates) then 			
		module.syncGuiElementFontColor(label)
	end

	return label
end

function module.MakeFrameWithSubSectionLabel(name, text)
	local row = module.MakeFixedHeightFrame(name, module.kSubSectionLabelHeight)
	row.BackgroundTransparency = 1
		
	local label = module.MakeStandardPropertyLabel(text)
	label.BackgroundTransparency = 1
	label.Parent = row

	return row
end

function module.MakeFrameAutoScalingList(frame)
	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.Parent = frame
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	module.AdjustHeightDynamicallyToLayout(frame, uiListLayout)
end

return module