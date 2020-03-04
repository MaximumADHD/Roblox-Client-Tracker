-- AvatarPrompt class

local GuiService = game:GetService("GuiService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

-- imports
local Assets = require(script.Parent.Parent.Assets)
local ContextMenu = require(script.Parent.ContextMenu)
local Globals = require(script.Parent.Parent.Globals)
local ThemeManager = require(script.Parent.Parent.ThemeManager)

local Studio = settings().Studio

-- constants
local RTHRO_INFO = {
	title = "Rthro Type",
	height = 6.25,
	description = "shoulder wider than hips"
}

local FFlagChangeNarrowToSlender = game:DefineFastFlag("ChangeNarrowToSlender", false)

local RTHRO_NARROW_INFO
if FFlagChangeNarrowToSlender then
    RTHRO_NARROW_INFO = {
	    title = "Rthro Slender Type",
	    height = 5.625,
	    description = "shoulder narrower than hips"
    }
else
    RTHRO_NARROW_INFO = {
	    title = "Rthro Narrow Type",
	    height = 5.625,
	    description = "shoulder narrower than hips"
    }
end

local R15_INFO = {
	title = "R15 Type",
	height = 5,
}

local CUSTOM_INFO = {
	title = "Custom Type",
}

local BUTTON_AMT = 4
local BUTTON_WIDTH = 146
local BUTTON_HEIGHT = 219
local BUTTON_SIDE_PADDING = 67
local BUTTON_CENTER_PADDING = 37
local BUTTON_TOP_PADDING = 63

local HEADER_HEIGHT = 40

local BACKGROUND_WIDTH = BUTTON_SIDE_PADDING + BUTTON_WIDTH*BUTTON_AMT + BUTTON_CENTER_PADDING*(BUTTON_AMT - 1) + BUTTON_SIDE_PADDING
local BACKGROUND_HEIGHT = 413

local AvatarPrompt = {}
AvatarPrompt.__index = AvatarPrompt

function AvatarPrompt.new(screenGui)
	local self = setmetatable({}, AvatarPrompt)

	-- private members
	self._enabled = false

	-- public members
	self.selected = Instance.new("BindableEvent")
	self.closed = Instance.new("BindableEvent")

	-- construction logic
	self:_constructUI(screenGui)
	self._contextMenu = ContextMenu.new(screenGui)

	return self
end

function AvatarPrompt:setEnabled(value)
	self._enabled = value
	self._background.Visible = self._enabled
	if not self._enabled then
		self._contextMenu:setEnabled(false)
	end
end

function AvatarPrompt:_constructAvatarButton(name, iconOptions, contextInfo, layoutOrder)
	local button = Instance.new("ImageButton")
	button.BackgroundTransparency = 1
	button.Image = Assets.BUTTON_AVATAR_TYPE
	button.LayoutOrder = layoutOrder
	button.Name = name .. " Button"
	button.ScaleType = Enum.ScaleType.Slice
	button.Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT)
	button.SliceCenter = Rect.new(4, 4, 5, 5)
	ThemeManager:setImageColor(button, Enum.StudioStyleGuideColor.Button)

	local border = Instance.new("ImageLabel")
	border.BackgroundTransparency = 1
	border.Image = Assets.BUTTON_AVATAR_TYPE_BORDER
	border.Name = "Border"
	border.ScaleType = Enum.ScaleType.Slice
	border.Size = UDim2.new(1, 0, 1, 0)
	border.SliceCenter = Rect.new(4, 4, 5, 5)
	border.Parent = button
	ThemeManager:setCustom(border, "ImageColor3", {
		Light = Color3.fromRGB(184, 184, 184),
		Dark = Color3.fromRGB(60, 60, 60),
	})

	local icon = Instance.new("ImageLabel")
	icon.BackgroundTransparency = 1
	icon.Name = "Icon"
	icon.Position = UDim2.new(0, 28, 0, 17)
	icon.Size = UDim2.new(0, 91, 0, 160)
	icon.Parent = button
	ThemeManager:setCustom(icon, "Image", iconOptions)

	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.Font = Enum.Font.SourceSansSemibold
	title.Name = "Title"
	title.Position = UDim2.new(0, 0, 0, 188)
	title.Size = UDim2.new(1, 0, 0, 20)
	title.Text = name
	title.TextSize = 20
	title.TextXAlignment = Enum.TextXAlignment.Center
	title.TextYAlignment = Enum.TextYAlignment.Top
	title.Parent = button
	ThemeManager:setCustom(title, "TextColor3", {
		Light = Color3.fromRGB(0, 162, 255),
		Dark = Color3.fromRGB(204, 204, 204),
	})

	local mouseInButton = false

	button.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if not mouseInButton then
				local fields = {}
				if contextInfo.title then
					fields[#fields + 1] = contextInfo.title
				end
				if contextInfo.height then
					fields[#fields + 1] = string.format("Ideal height: %s studs", tostring(contextInfo.height))
				end
				if contextInfo.description then
					fields[#fields + 1] = contextInfo.description
				end
				self._contextMenu:setText(unpack(fields))
				self._contextMenu:setEnabled(true)
			end
			mouseInButton = true
			button.ImageColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.Button,
				Enum.StudioStyleGuideModifier.Hover
			)
		end
	end)

	button.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self._contextMenu:setEnabled(true)
			self._contextMenu:setPosition(input.Position.X, input.Position.Y)
		end
	end)

	button.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if mouseInButton then
				self._contextMenu:setEnabled(false)
			end
			mouseInButton = false
			button.ImageColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.Button,
				Enum.StudioStyleGuideModifier.Default
			)
		end
	end)

	button.MouseButton1Down:Connect(function()
		button.ImageColor3 = Studio.Theme:GetColor(
			Enum.StudioStyleGuideColor.Button,
			Enum.StudioStyleGuideModifier.Pressed
		)
	end)

	button.MouseButton1Up:Connect(function()
		if mouseInButton then
			button.ImageColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.Button,
				Enum.StudioStyleGuideModifier.Hover
			)
		else
			button.ImageColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.Button,
				Enum.StudioStyleGuideModifier.Default
			)
		end
	end)

	return button
end

function AvatarPrompt:_constructUI(screenGui)
	local background = Instance.new("ImageLabel")
	background.AnchorPoint = Vector2.new(0.5, 0.5)
	background.Position = UDim2.new(0.5, 0, 0.5, 0)
	background.BackgroundTransparency = 1
	background.Image = Assets.BACKGROUND_IMAGE
	background.Name = "AvatarPrompt"
	background.ScaleType = Enum.ScaleType.Slice
	background.Size = UDim2.new(0, BACKGROUND_WIDTH, 0, BACKGROUND_HEIGHT)
	background.SliceCenter = Rect.new(8, 8, 9, 9)
	background.Visible = false
	background.Parent = screenGui
	self._background = background
	ThemeManager:setImageColor(background, Enum.StudioStyleGuideColor.MainBackground)

	local content = Instance.new("Frame")
	content.BackgroundTransparency = 1
	content.Name = "Content"
	content.Position = UDim2.new(0, 0, 0, HEADER_HEIGHT)
	content.Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT)
	content.Parent = background

	local header = Instance.new("ImageLabel")
	header.BackgroundTransparency = 1
	header.Image = Assets.HEADER_IMAGE
	header.Name = "Header"
	header.ScaleType = Enum.ScaleType.Slice
	header.Size = UDim2.new(1, 0, 0, HEADER_HEIGHT)
	header.SliceCenter = Rect.new(8, 8, 9, 9)
	header.Parent = background
	ThemeManager:setImageColor(header, Enum.StudioStyleGuideColor.TabBar)

	local headerTitle = Instance.new("TextLabel")
	headerTitle.BackgroundTransparency = 1
	headerTitle.Font = Enum.Font.SourceSans
	headerTitle.Name = "Title"
	headerTitle.Position = UDim2.new(0, 24, 0, 0)
	headerTitle.Size = UDim2.new(0, 119, 1, 0)
	headerTitle.Text = "Avatar Importer"
	headerTitle.TextSize = 22
	headerTitle.TextXAlignment = Enum.TextXAlignment.Left
	headerTitle.TextYAlignment = Enum.TextYAlignment.Center
	headerTitle.Parent = header
	ThemeManager:setTextColor(headerTitle, Enum.StudioStyleGuideColor.MainText)

	local closeButton = Instance.new("ImageButton")
	closeButton.AnchorPoint = Vector2.new(0.5, 0.5)
	closeButton.BackgroundTransparency = 1
	closeButton.Image = Assets.BUTTON_CLOSE
	closeButton.ImageColor3 = Color3.fromRGB(157, 157, 157)
	closeButton.Name = "CloseButton"
	closeButton.Position = UDim2.new(1, -20, 0.5, 0)
	closeButton.Size = UDim2.new(0, 15, 0, 15)
	closeButton.Parent = header

	local topDescription = Instance.new("TextLabel")
	topDescription.BackgroundTransparency = 1
	topDescription.Font = Enum.Font.SourceSans
	topDescription.Name = "TopDescription"
	topDescription.Position = UDim2.new(0, 0, 0, 20)
	topDescription.Size = UDim2.new(1, 0, 0, 18)
	topDescription.Text = "Choose the Avatar type you are going to import:"
	topDescription.TextSize = 18
	topDescription.TextXAlignment = Enum.TextXAlignment.Center
	topDescription.TextYAlignment = Enum.TextYAlignment.Top
	topDescription.Parent = content
	ThemeManager:setTextColor(topDescription, Enum.StudioStyleGuideColor.MainText)

	local buttons = Instance.new("Frame")
	buttons.BackgroundTransparency = 1
	buttons.Name = "Buttons"
	buttons.Position = UDim2.new(0, BUTTON_SIDE_PADDING, 0, BUTTON_TOP_PADDING)
	buttons.Size = UDim2.new(1, -BUTTON_SIDE_PADDING*2, 0, BUTTON_HEIGHT)
	buttons.Parent = content

	local buttonsListLayout = Instance.new("UIListLayout")
	buttonsListLayout.FillDirection = Enum.FillDirection.Horizontal
	buttonsListLayout.Padding = UDim.new(0, BUTTON_CENTER_PADDING)
	buttonsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	buttonsListLayout.Parent = buttons

	local rthroButton = self:_constructAvatarButton("Rthro", Assets.RTHRO, RTHRO_INFO, 0)
	rthroButton.Parent = buttons

    local rthroNarrowName
    if FFlagChangeNarrowToSlender then
        rthroNarrowName = "Rthro Slender"
    else
        rthroNarrowName = "Rthro Narrow"
    end
	local rthroNarrowButton = self:_constructAvatarButton(rthroNarrowName, Assets.RTHRO_NARROW, RTHRO_NARROW_INFO, 1)
	rthroNarrowButton.Parent = buttons

	local r15Button = self:_constructAvatarButton("R15", Assets.R15, R15_INFO, 2)
	r15Button.Parent = buttons

	local customButton = self:_constructAvatarButton("Custom", Assets.CUSTOM, CUSTOM_INFO, 3)
	customButton.Parent = buttons

	local bottomDescription = Instance.new("Frame")
	bottomDescription.BackgroundTransparency = 1
	bottomDescription.Position = UDim2.new(0, 0, 0, 307)
	bottomDescription.Size = UDim2.new(1, 0, 1, -307)
	bottomDescription.Parent = content

	local bottomDescriptionListLayout = Instance.new("UIListLayout")
	bottomDescriptionListLayout.FillDirection = Enum.FillDirection.Vertical
	bottomDescriptionListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	bottomDescriptionListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	bottomDescriptionListLayout.Parent = bottomDescription

	local requirementsText = Instance.new("TextLabel")
	requirementsText.BackgroundTransparency = 1
	requirementsText.Font = Enum.Font.SourceSans
	requirementsText.LayoutOrder = 0
	requirementsText.Size = UDim2.new(1, 0, 0, 14)
	requirementsText.Text = "Avatar file needs to be FBX file following Avatar types and import requirements"
	requirementsText.TextSize = 14
	requirementsText.TextXAlignment = Enum.TextXAlignment.Center
	requirementsText.TextYAlignment = Enum.TextYAlignment.Center
	requirementsText.Parent = bottomDescription
	ThemeManager:setCustom(requirementsText, "TextColor3", {
		Light = Color3.fromRGB(98, 98, 98),
		Dark = Color3.fromRGB(204, 204, 204),
	})

	local infoLink = Instance.new("TextButton")
	infoLink.BackgroundTransparency = 1
	infoLink.Font = Enum.Font.SourceSans
	infoLink.LayoutOrder = 0
	infoLink.Size = UDim2.new(1, 0, 0, 14)
	infoLink.Text = "What are Avatar types and import requirements?"
	infoLink.TextSize = 14
	infoLink.TextXAlignment = Enum.TextXAlignment.Center
	infoLink.TextYAlignment = Enum.TextYAlignment.Center
	infoLink.Parent = bottomDescription
	ThemeManager:setCustom(infoLink, "TextColor3", {
		Light = Color3.fromRGB(0, 162, 255),
		Dark = Color3.fromRGB(255, 255, 255),
	})

	infoLink.MouseButton1Click:Connect(function()
        GuiService:OpenBrowserWindow(HttpRbxApiService:GetDocumentationUrl(Globals.requirementsUrl))
	end)
	rthroButton.MouseButton1Click:Connect(function()
		self.selected:Fire("Rthro")
	end)
	rthroNarrowButton.MouseButton1Click:Connect(function()
		self.selected:Fire("RthroNarrow")
	end)
	r15Button.MouseButton1Click:Connect(function()
		self.selected:Fire("R15")
	end)
	customButton.MouseButton1Click:Connect(function()
		self.selected:Fire("Custom")
	end)
	closeButton.MouseButton1Click:Connect(function()
		self.closed:Fire()
	end)
end

return AvatarPrompt
