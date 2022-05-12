--[[
	AvatarButton - Creates an image button based on configurations stored in Constants.lua

	Props
		string name - the name of the button, displayed at the bottom
		string avatarType - Constants.AVATAR_TYPE from Constants.lua
		table contextInfo - One of the following from Constants.lua:
			- Constants.RTHRO_INFO
			- Constants.RTHRO_SLENDER_INFO
			- Constants.R15_INFO
			- Constants.CUSTOM_INFO
		table iconOptions - One of the following from Assets.lua:
			- Assets.RTHRO
			- Assets.RTHRO_NARROW
			- Assets.R15
			- Assets.CUSTOM
		number layoutOrder - sets the LayoutOrder property
]]

local root = script.Parent.Parent.Parent
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")

-- imports
local Roact = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Roact) else require(root.Packages._Old.lib.Roact)
local RoactRodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.RoactRodux) else require(root.Packages._Old.lib.RoactRodux)
local Assets = require(root.src.Assets)
local themeConfig = require(root.src.utils.themeConfig)
local getTextWidth = require(root.src.utils.getTextWidth)

local Tooltip = require(root.src.components.Tooltip)

local Import = require(root.src.thunks.Import)
local DetectType = require(root.src.thunks.DetectType)
local DetectTypeWithOrigAvatarType = require(root.src.thunks.DetectTypeWithOrigAvatarType)

local Constants = require(root.src.Constants)

local Studio = settings().Studio

local TOOLTIP_PADDING = 5
local TOOLTIP_FIELD_HEIGHT = 14

local function getTooltipSize(titleText, topText, bottomText)
	titleText = titleText or ""
	topText = topText or ""
	bottomText = bottomText or ""

	local maxWidth = math.max(
		getTextWidth(titleText, Constants.FONT_SIZE_SMALL, Constants.FONT_BOLD),
		getTextWidth(topText, Constants.FONT_SIZE_SMALL, Constants.FONT),
		getTextWidth(bottomText, Constants.FONT_SIZE_SMALL, Constants.FONT)
	)

	local amtNonEmpty = 0
	if titleText ~= "" then
		amtNonEmpty = amtNonEmpty + 1
	end
	if topText ~= "" then
		amtNonEmpty = amtNonEmpty + 1
	end
	if bottomText ~= "" then
		amtNonEmpty = amtNonEmpty + 1
	end
	local width = maxWidth + 2*TOOLTIP_PADDING
	local height = TOOLTIP_PADDING + TOOLTIP_FIELD_HEIGHT*amtNonEmpty + TOOLTIP_PADDING
	return UDim2.new(0, width, 0, height)
end

-- component
local AvatarButton = Roact.Component:extend("AvatarButton")

function AvatarButton:init()
	self.state = {
		hover = false,
		down = false,
	}
end

function AvatarButton:getColor()
	if self.state.down then
		return Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Pressed)
	elseif self.state.hover then
		return Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Hover)
	else
		return Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, Enum.StudioStyleGuideModifier.Default)
	end
end

function AvatarButton:getTooltipFields()
	local fields = {}
	if self.props.contextInfo.title then
		fields[#fields + 1] = self.props.contextInfo.title
	end
	if self.props.contextInfo.height then
		fields[#fields + 1] = string.format(
			"Ideal height: %s studs",
			tostring(self.props.contextInfo.height)
		)
	end
	if self.props.contextInfo.description then
		fields[#fields + 1] = self.props.contextInfo.description
	end
	return fields
end

function AvatarButton:render()
	local fields = self:getTooltipFields()
	local titleText = fields[1]
	local topText = fields[2]
	local bottomText = fields[3]

	local function detectRigTypeOrImport(avatarType)
		local importedAsR15 = avatarType ~= Constants.AVATAR_TYPE.CUSTOM
		if importedAsR15 then 
			self.props.doImport(self.props.avatarType)
		else
			-- if we are detecting rig type in r15 import, the original rig type must be set through detectTypeWithOrigAvatarType
			self.props.detectTypeWithOrigAvatarType(avatarType)
		end
	end

	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		Image = Assets.BUTTON_AVATAR_TYPE,
		LayoutOrder = self.props.layoutOrder,
		ScaleType = Enum.ScaleType.Slice,
		Size = UDim2.new(0, Constants.BUTTON_WIDTH, 0, Constants.BUTTON_HEIGHT),
		SliceCenter = Rect.new(4, 4, 5, 5),
		ImageColor3 = self:getColor(),

		[Roact.Event.InputBegan] = function(_, input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not self.state.hover then
				self:setState({ hover = true })
			end
		end,

		[Roact.Event.InputChanged] = function(_, input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and not self.state.hover then
				self:setState({ hover = true })
			end
		end,

		[Roact.Event.InputEnded] = function(_, input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and (self.state.hover or self.state.down) then
				self:setState({
					hover = false,
					down = false
				})
			end
		end,

		[Roact.Event.MouseButton1Down] = function()
			self:setState({ down = true })
		end,

		[Roact.Event.MouseButton1Up] = function()
			self:setState({ down = false })
		end,

		[Roact.Event.Activated] = function()
			if (self.props.avatarType == Constants.AVATAR_TYPE.CUSTOM) then 
				detectRigTypeOrImport(self.props.avatarType)
			elseif (self.props.avatarType ~= Constants.AVATAR_TYPE.CUSTOM) then 
				self.props.detectTypeWithOrigAvatarType(self.props.avatarType)
			else
				self.props.doImport(self.props.avatarType)
			end
		end,

	}, {
		tooltip = Roact.createElement(Tooltip, {
			Size = getTooltipSize(titleText, topText, bottomText)
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder
			}),

			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 5),
				PaddingTop = UDim.new(0, 5),
			}),

			Title = titleText and Roact.createElement("TextLabel", {
				ZIndex = 10,
				LayoutOrder = 0,
				BackgroundTransparency = 1,
				Font = Constants.FONT_BOLD,
				Size = UDim2.new(1, 0, 0, Constants.FONT_SIZE_SMALL),
				TextSize = Constants.FONT_SIZE_SMALL,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextColor3 = Studio.Theme:GetColor(
					Enum.StudioStyleGuideColor.MainText,
					Enum.StudioStyleGuideModifier.Default
				),
				Text = titleText,
			}),

			Top = topText and Roact.createElement("TextLabel", {
				ZIndex = 10,
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				Size = UDim2.new(1, 0, 0, Constants.FONT_SIZE_SMALL),
				TextSize = Constants.FONT_SIZE_SMALL,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextColor3 = Studio.Theme:GetColor(
					Enum.StudioStyleGuideColor.MainText,
					Enum.StudioStyleGuideModifier.Default
				),
				Text = topText,
			}),

			Bottom = bottomText and Roact.createElement("TextLabel", {
				ZIndex = 10,
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				Size = UDim2.new(1, 0, 0, Constants.FONT_SIZE_SMALL),
				TextSize = Constants.FONT_SIZE_SMALL,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextColor3 = Studio.Theme:GetColor(
					Enum.StudioStyleGuideColor.MainText,
					Enum.StudioStyleGuideModifier.Default
				),
				Text = bottomText,
			}),
		}),
		border = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = Assets.BUTTON_AVATAR_TYPE_BORDER,
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(1, 0, 1, 0),
			SliceCenter = Rect.new(4, 4, 5, 5),
			ImageColor3 = themeConfig({
				Light = Color3.fromRGB(184, 184, 184),
				Dark = Color3.fromRGB(60, 60, 60),
			}),
		}),
		icon = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 28, 0, 17),
			Size = UDim2.new(0, 91, 0, 160),
			Image = themeConfig(self.props.iconOptions),
		}),
		title = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT_SEMIBOLD,
			Position = UDim2.new(0, 0, 0, 188),
			Size = UDim2.new(1, 0, 0, Constants.FONT_SIZE_TITLE),
			Text = self.props.name,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = themeConfig({
				Light = Color3.fromRGB(0, 162, 255),
				Dark = Color3.fromRGB(204, 204, 204),
			})
		})
	})
end

local function mapDispatchToProps(dispatch)
	return {
		doImport = function(avatarType)
			dispatch(Import(avatarType))
		end,
		detectType = function()
			dispatch(DetectType())
		end,
		detectTypeWithOrigAvatarType = function(avatarType)
			dispatch(DetectTypeWithOrigAvatarType(avatarType))
		end
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(AvatarButton)