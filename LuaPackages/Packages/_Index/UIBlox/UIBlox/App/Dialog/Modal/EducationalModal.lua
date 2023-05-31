--!nonstrict
local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local FitFrame = require(Packages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local withStyle = require(UIBlox.Core.Style.withStyle)
local ButtonType = require(UIBlox.App.Button.Enum.ButtonType)
local getIconSize = require(AppRoot.ImageSet.getIconSize)
local IconSize = require(AppRoot.ImageSet.Enum.IconSize)

local Checkbox = require(UIBlox.App.InputButton.Checkbox)

local PartialPageModal = require(ModalRoot.PartialPageModal)

local BODY_CONTENTS_WIDTH = 253
local BODY_CONTENTS_MARGIN = 36

local EducationalModal = Roact.PureComponent:extend("EducationalModal")

EducationalModal.validateProps = t.strictInterface({
	-- Array of contents
	bodyContents = t.array(t.strictInterface({
		-- Icon that goes above the title. It can take either an rbxasset address recognized by Roblox Studio	or an imageSet table.
		icon = t.optional(t.union(t.string, t.table)),
		text = t.string,
		layoutOrder = t.optional(t.integer),
		-- Uses the system menu icon. Overrides the `icon` property above.
		isSystemMenuIcon = t.optional(t.boolean),
	})),
	-- Whether or not the modal should include a "Don't Show Again" toggle
	hasDoNotShow = t.optional(t.boolean),
	-- Text on secondary button
	cancelText = t.string,
	-- Text on primary button
	confirmText = t.string,
	-- Text on the checkbox for toggling the modal's permanent dismissal
	doNotShowText = t.optional(t.string),
	-- Title text of the `Modal
	titleText = t.optional(t.string),
	-- Title background image of the `Modal`
	titleBackgroundImageProps = t.strictInterface({
		-- Title background image ID
		image = t.string,
		-- Title background image height
		imageHeight = t.number,
		-- Rich text content centered in the background image.  Can replace `titleText`.
		text = t.optional(t.string),
	}),
	-- Size of the container housing the `Modal`. This is necessary to dynamically scale the modal's width.
	screenSize = t.Vector2,
	-- A function that is called when the X button in the Title has been clicked
	onDismiss = t.callback,
	-- A function that is called when the secondary button has been clicked
	onCancel = t.callback,
	-- A function that is called when the primary button has been clicked
	onConfirm = t.callback,
})

local function ContentItem(props)
	local totalTextSize = Vector2.new(16, 16)
	local paddingBetween = 8

	local isSystemMenuIcon = props.isSystemMenuIcon or false
	local hasIcon = isSystemMenuIcon or props.icon

	local stylePalette = props.stylePalette
	local theme = stylePalette.Theme
	local font = stylePalette.Font
	local textSize = font.Body.RelativeSize * font.BaseSize

	return Roact.createElement("Frame", {
		Size = hasIcon and UDim2.new(0, BODY_CONTENTS_WIDTH, 0, totalTextSize.Y) or UDim2.new(1, 0, 0, totalTextSize.Y),
		AutomaticSize = hasIcon and Enum.AutomaticSize.None or Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
	}, {
		HorizontalLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = isSystemMenuIcon and UDim.new(0, paddingBetween + 2) or UDim.new(0, paddingBetween),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = isSystemMenuIcon and UDim.new(0, 2) or UDim.new(0, 0),
		}),
		Icon = isSystemMenuIcon and Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(32, 32),
			Image = "rbxasset://textures/ui/TopBar/iconBase.png",
			LayoutOrder = 1,
		}, {
			Icon = Roact.createElement(ImageSetLabel, {
				ZIndex = 1,
				BackgroundTransparency = 1,
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.fromOffset(24, 24),
				Image = "rbxasset://textures/ui/TopBar/coloredlogo.png",
			}),
		}) or hasIcon and Roact.createElement(ImageSetLabel, {
			Image = props.icon,
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium)),
			ImageColor3 = theme.IconDefault.Color,
			ImageTransparency = theme.IconDefault.Transparency,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}) or nil,
		Text = props.text and Roact.createElement(GenericTextLabel, {
			Size = UDim2.new(1, 0, 0, totalTextSize.Y),
			AutomaticSize = hasIcon and Enum.AutomaticSize.None or Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Text = props.text,
			TextSize = textSize,
			colorStyle = theme.TextDefault,
			TextTransparency = theme.TextDefault.Transparency,
			fontStyle = font.Body,
			TextXAlignment = hasIcon and Enum.TextXAlignment.Left or Enum.TextXAlignment.Center,
			TextWrapped = true,
			LayoutOrder = 2,
		}),
	})
end

function EducationalModal:init()
	self.state = {
		shouldNotShowAgain = false,
	}
	self.contentSize, self.changeContentSize = Roact.createBinding(Vector2.new(0, 0))

	self.toggleDoNotShow = function()
		self:setState(function(state)
			return {
				shouldNotShowAgain = not state.shouldNotShowAgain,
			}
		end)
	end

	self.onDismiss = function()
		self.props.onDismiss(self.state.shouldNotShowAgain)
	end
	self.onCancel = function()
		self.props.onCancel(self.state.shouldNotShowAgain)
	end
	self.onConfirm = function()
		self.props.onConfirm(self.state.shouldNotShowAgain)
	end
end

function EducationalModal:render()
	local props = self.props
	local hasDoNotShow = props.hasDoNotShow

	return withStyle(function(style)
		local elementCount = 0
		local elements = {}
		for index, content in ipairs(props.bodyContents) do
			local current = Roact.createElement(ContentItem, {
				key = tostring(index),
				icon = content.icon,
				text = content.text,
				layoutOrder = index,
				isSystemMenuIcon = content.isSystemMenuIcon,
				stylePalette = style,
			})
			table.insert(elements, current)
			elementCount = elementCount + 1
		end
		local theme = style.Theme

		if hasDoNotShow then
			local DoNotShow = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 50),
				LayoutOrder = elementCount + 1,
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, 21),
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				Divider = Roact.createElement("Frame", {
					LayoutOrder = 1,
					BackgroundColor3 = theme.Divider.Color,
					BackgroundTransparency = theme.Divider.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 1),
				}),
				DoNotShowCheckbox = Roact.createElement(Checkbox, {
					text = props.doNotShowText,
					onActivated = self.toggleDoNotShow,
					isSelected = self.state.shouldNotShowAgain,
					layoutOrder = 2,
				}),
			})
			table.insert(elements, DoNotShow)
		end

		return Roact.createElement(PartialPageModal, {
			title = props.titleText,
			titleBackgroundImageProps = props.titleBackgroundImageProps,
			screenSize = props.screenSize,
			bottomPadding = 50,
			buttonStackProps = {
				buttons = {
					{
						props = {
							isDisabled = false,
							onActivated = if hasDoNotShow then self.onCancel else props.onCancel,
							text = props.cancelText,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							isDisabled = false,
							onActivated = if hasDoNotShow then self.onConfirm else props.onConfirm,
							text = props.confirmText,
						},
					},
				},
			},
			onCloseClicked = if hasDoNotShow then self.onDismiss else props.onDismiss,
		}, {
			BodyContents = Roact.createElement(FitFrameVertical, {
				BackgroundTransparency = 1,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				width = UDim.new(1, 0),
				contentPadding = UDim.new(0, 28),
				margin = {
					top = BODY_CONTENTS_MARGIN,
					bottom = BODY_CONTENTS_MARGIN,
				},
				[Roact.Change.AbsoluteSize] = function(rbx)
					self.changeContentSize(rbx.AbsoluteSize)
				end,
			}, elements),
		})
	end)
end

return EducationalModal
