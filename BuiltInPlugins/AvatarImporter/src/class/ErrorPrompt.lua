-- ErrorPrompt class

local GuiService = game:GetService("GuiService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

-- imports
local Assets = require(script.Parent.Parent.Assets)
local CustomTextButton = require(script.Parent.CustomTextButton)
local Globals = require(script.Parent.Parent.Globals)
local ThemeManager = require(script.Parent.Parent.ThemeManager)

local ErrorPrompt = {}
ErrorPrompt.__index = ErrorPrompt

function ErrorPrompt.new(screenGui)
	local self = setmetatable({}, ErrorPrompt)

	-- private members
	self._enabled = false

	-- public members
	self.closed = Instance.new("BindableEvent")
	self.retried = Instance.new("BindableEvent")

	-- construction logic
	self:_constructUI(screenGui)

	return self
end

function ErrorPrompt:setEnabled(value)
	self._enabled = value
	self.background.Visible = self._enabled
end

function ErrorPrompt:setRequirements(text)
	self.requirements.Text = text
	self.background.Size = UDim2.new(0, 476, 0, 300 + self.requirements.TextBounds.Y)
end

function ErrorPrompt:setName(name)
	self.errorTitle.Text = string.format("Failed to import file '%s'", name)
end

function ErrorPrompt:_constructUI(screenGui)
	local background = Instance.new("ImageLabel")
	background.AnchorPoint = Vector2.new(0.5, 0.5)
	background.Position = UDim2.new(0.5, 0, 0.5, 0)
	background.BackgroundTransparency = 1
	background.Image = Assets.BACKGROUND_IMAGE
	background.Name = "ErrorPrompt"
	background.ScaleType = Enum.ScaleType.Slice
	background.Size = UDim2.new(0, 476, 0, 316)
	background.SliceCenter = Rect.new(8, 8, 9, 9)
	background.Visible = false
	background.Parent = screenGui
	self.background = background
	ThemeManager:setImageColor(background, Enum.StudioStyleGuideColor.MainBackground)

	local content = Instance.new("Frame")
	content.BackgroundTransparency = 1
	content.Name = "Content"
	content.Position = UDim2.new(0, 0, 0, 40)
	content.Size = UDim2.new(1, 0, 1, -40)
	content.Parent = background

	local header = Instance.new("ImageLabel")
	header.BackgroundTransparency = 1
	header.Image = Assets.HEADER_IMAGE
	header.Name = "Header"
	header.ScaleType = Enum.ScaleType.Slice
	header.Size = UDim2.new(1, 0, 0, 40)
	header.SliceCenter = Rect.new(8, 8, 9, 9)
	header.Parent = background
	ThemeManager:setImageColor(header, Enum.StudioStyleGuideColor.TabBar)

	local headerTitle = Instance.new("TextLabel")
	headerTitle.BackgroundTransparency = 1
	headerTitle.Font = Enum.Font.SourceSans
	headerTitle.Name = "Title"
	headerTitle.Position = UDim2.new(0, 24, 0, 0)
	headerTitle.Size = UDim2.new(0, 119, 1, 0)
	headerTitle.Text = "Unable to Import"
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

	local errorIcon = Instance.new("ImageLabel")
	errorIcon.Name = "ErrorIcon"
	errorIcon.BackgroundTransparency = 1
	errorIcon.Image = Assets.ERROR_ICON
	errorIcon.Size = UDim2.new(0, 22, 0, 22)
	errorIcon.Position = UDim2.new(0, 30, 0, 20)
	errorIcon.Parent = content

	local errorTitle = Instance.new("TextLabel")
	errorTitle.BackgroundTransparency = 1
	errorTitle.Font = Enum.Font.SourceSans
	errorTitle.Name = "ErrorTitle"
	errorTitle.Position = UDim2.new(0, 62, 0, 20)
	errorTitle.Size = UDim2.new(1, -62, 0, 20)
	errorTitle.Text = ""
	errorTitle.TextSize = 20
	errorTitle.TextXAlignment = Enum.TextXAlignment.Left
	errorTitle.TextYAlignment = Enum.TextYAlignment.Center
	errorTitle.ClipsDescendants = true
	errorTitle.Parent = content
	self.errorTitle = errorTitle
	ThemeManager:setTextColor(errorTitle, Enum.StudioStyleGuideColor.MainText)

	local requirementsHeader = Instance.new("TextLabel")
	requirementsHeader.BackgroundTransparency = 1
	requirementsHeader.Font = Enum.Font.SourceSansBold
	requirementsHeader.Name = "RequirementsHeader"
	requirementsHeader.Position = UDim2.new(0, 62, 0, 60)
	requirementsHeader.Size = UDim2.new(0, 302, 0, 16)
	requirementsHeader.Text = "The file failed to meet the import requirement(s):"
	requirementsHeader.TextSize = 16
	requirementsHeader.TextXAlignment = Enum.TextXAlignment.Left
	requirementsHeader.TextYAlignment = Enum.TextYAlignment.Center
	requirementsHeader.Parent = content
	ThemeManager:setTextColor(requirementsHeader, Enum.StudioStyleGuideColor.MainText)

	local requirements = Instance.new("TextLabel")
	requirements.BackgroundTransparency = 1
	requirements.Font = Enum.Font.SourceSans
	requirements.Name = "Requirements"
	requirements.Position = UDim2.new(0, 62, 0, 86)
	requirements.Size = UDim2.new(0, 302, 0, 16)
	requirements.Text = "- Its source wasn't Maya or Blender"
	requirements.TextSize = 16
	requirements.TextXAlignment = Enum.TextXAlignment.Left
	requirements.TextYAlignment = Enum.TextYAlignment.Top
	requirements.Parent = content
	self.requirements = requirements
	ThemeManager:setTextColor(requirements, Enum.StudioStyleGuideColor.MainText)

	local bottomDescription = Instance.new("TextLabel")
	bottomDescription.BackgroundTransparency = 1
	bottomDescription.Font = Enum.Font.SourceSans
	bottomDescription.Name = "BottomDescription"
	bottomDescription.Position = UDim2.new(0, 62, 1, -149)
	bottomDescription.Size = UDim2.new(0, 210, 0, 16)
	bottomDescription.Text = "Please update the file and try again"
	bottomDescription.TextSize = 16
	bottomDescription.TextXAlignment = Enum.TextXAlignment.Left
	bottomDescription.TextYAlignment = Enum.TextYAlignment.Top
	bottomDescription.Parent = content
	ThemeManager:setTextColor(bottomDescription, Enum.StudioStyleGuideColor.MainText)

	local infoLink = Instance.new("TextButton")
	infoLink.BackgroundTransparency = 1
	infoLink.Font = Enum.Font.SourceSans
	infoLink.Name = "InfoLink"
	infoLink.Position = UDim2.new(0, 62, 1, -123)
	infoLink.Size = UDim2.new(0, 210, 0, 16)
	infoLink.Text = "What are import requirements?"
	infoLink.TextColor3 = Color3.fromRGB(0, 162, 255)
	infoLink.TextSize = 16
	infoLink.TextXAlignment = Enum.TextXAlignment.Left
	infoLink.TextYAlignment = Enum.TextYAlignment.Top
	infoLink.Parent = content
	ThemeManager:setCustom(infoLink, "TextColor3", {
		Light = Color3.fromRGB(0, 162, 255),
		Dark = Color3.fromRGB(255, 255, 255),
	})

	local buttons = Instance.new("Frame")
	buttons.BackgroundTransparency = 1
	buttons.Name = "Buttons"
	buttons.Position = UDim2.new(0, 0, 1, -64)
	buttons.Size = UDim2.new(1, 0, 0, 34)
	buttons.Parent = content

	local buttonsListLayout = Instance.new("UIListLayout")
	buttonsListLayout.Padding = UDim.new(0, 21)
	buttonsListLayout.FillDirection = Enum.FillDirection.Horizontal
	buttonsListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	buttonsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	buttonsListLayout.Parent = buttons

	local cancelButton = CustomTextButton.new("CancelButton", "Cancel", buttons)
	local cancelButtonObj = cancelButton:getButton()
	cancelButtonObj.LayoutOrder = 0

	local retryButton = CustomTextButton.new("RetryButton", "Try Again", buttons)
	retryButton:setIsMain(true)
	local retryButtonObj = retryButton:getButton()
	retryButtonObj.LayoutOrder = 1

	infoLink.MouseButton1Click:Connect(function()
        GuiService:OpenBrowserWindow(HttpRbxApiService:GetDocumentationUrl(Globals.requirementsUrl))
	end)
	cancelButtonObj.MouseButton1Click:Connect(function()
		self.closed:Fire()
	end)
	retryButtonObj.MouseButton1Click:Connect(function()
		self.retried:Fire()
	end)
	closeButton.MouseButton1Click:Connect(function()
		self.closed:Fire()
	end)
end

return ErrorPrompt
