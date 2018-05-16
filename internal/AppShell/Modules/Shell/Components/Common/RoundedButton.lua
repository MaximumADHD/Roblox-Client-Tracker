--[[
		Creates a Roact component that is a rounded button
		Props:
			Button : dictionary - Config for the button.
				.Image : Content - The image of the button.
				.Size : UDim2 - Size of the button.
				.Position : UDim2 - Position of the button.
				.AnchorPoint : UDim2 - The anchor point of the button.
				.ZIndex: int - Determines the order in which GUI objects are rendered, with 10 being in front and 1 in back.
				.LayoutOrder: int - Controls the sorting priority of this button.

			Text : dictionary - A map of props for the text
				.Text : string - The label of the button.
				.Size : UDim2 - Size of the button.
				.Position : UDim2 - Position of the button.
				.AnchorPoint : The anchor point of the button.
				.Font : Font - The font used to display the given text.
				.TextSize : float - The font size in pixels.
				.TextXAlignment : TextXAlignment - Sets where text is placed on the X axis within the TextLabel.
				.ZIndex: int - Determines the order in which GUI objects are rendered, with 10 being in front and 1 in back.


			Focused : bool - Is the button in focus.

			OnCreate : function(guiObject : Ref<GuiObject>) -
								callback function for when the button GuiObject is created and the index of the button.
			OnSelectionGained : bool function() -
								Fired when the GuiObject is being focused on with the Gamepad selector.
								Return true if it should be focused. False otherwise.
			OnSelectionLost : bool function() -
								Fired when the Gamepad selector stops focusing on the GuiObject.
								Return false if it should be un-focused. True otherwise.
			OnActivated : function() - Fires when the button is activated.

			HideSelectionImage : bool - Whether or not to hide the selection object

			DefaultProps : dictionary a map for the default props of the button.
				.ImageColor3 : Color3
				.ImageTransparency : float
				.TextColor3 : Color3

			FocusedProps : dictionary a map for the focused props of the button.
				.ImageColor3 : Color3
				.ImageTransparency : float
				.TextColor3 : Color3
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local Utility = require(Modules.Shell.Utility)
local GlobalSettings = require(Modules.Shell.GlobalSettings)
local SoundComponent = require(Modules.Shell.Components.Common.SoundComponent)
local RoundedButton = Roact.PureComponent:extend("RoundedButton")

function RoundedButton:init()
	self.SelectionImageObject = Utility.Create "ImageLabel"
	{
		Name = "SelectorImage",
		Image = GlobalSettings.Images.ButtonSelector,
		Position = UDim2.new(0, -7, 0, -7),
		Size = UDim2.new(1, 14, 1, 14),
		BackgroundTransparency = 1,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(31, 31, 63, 63)
	}

	self.DefaultProps =
	{
		ImageColor3 = GlobalSettings.Colors.WhiteButton,
		ImageTransparency = 0.8,
		TextColor3 = GlobalSettings.Colors.WhiteText
	}
	self.FocusedProps =
	{
		ImageColor3 = GlobalSettings.Colors.BlueButton,
		ImageTransparency = 0,
		TextColor3 = GlobalSettings.Colors.TextSelected
	}
	self.buttonImage = GlobalSettings.Images.ButtonDefault
end

function RoundedButton:render()
	local button = self.props.Button or {}
	local text = self.props.Text or {}

	local inputDefaultProps = self.props.DefaultProps or {}
	local defaultProps = {}
	for k in pairs(self.DefaultProps) do
		defaultProps[k] = inputDefaultProps[k] or self.DefaultProps[k]
	end

	local inputFocusedProps = self.props.FocusedProps or {}
	local focusedProps = {}
	for k in pairs(self.FocusedProps) do
		focusedProps[k] = inputFocusedProps[k] or self.FocusedProps[k]
	end

	if self.props.HideSelectionImage then
		self.SelectionImageObject.Visible = false
	else
		self.SelectionImageObject.Visible = true
	end

	local currentProps = defaultProps
	if self.props.Focused then
		currentProps = focusedProps
	end

	local buttonProps =
	{
		Image = button.Image or self.buttonImage,
		Size = button.Size or UDim2.new(1, 0, 1, 0),
		Position = button.Position or UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = button.AnchorPoint or Vector2.new(0.5, 0.5),
		ZIndex = button.ZIndex,
		LayoutOrder = button.LayoutOrder,
		[Roact.Ref] = self.props.OnCreate,
		[Roact.Event.SelectionGained] = self.props.OnSelectionGained,
		[Roact.Event.SelectionLost] = self.props.OnSelectionLost,
		[Roact.Event.Activated] = self.props.OnActivated,
		ImageColor3 = currentProps.ImageColor3,
		ImageTransparency = currentProps.ImageTransparency,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8, 8, 9, 9),
		SelectionImageObject = self.SelectionImageObject,
		BackgroundTransparency = 1,
	}

	local textProps =
	{
		Text = text.Text or "",
		Size = text.Size or UDim2.new(1, 0, 1, 0),
		Position = text.Position or UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = text.AnchorPoint or Vector2.new(0.5, 0.5),
		ZIndex = text.ZIndex,
		Font = text.Font or GlobalSettings.Fonts.Regular,
		TextSize = text.TextSize or GlobalSettings.TextSizes.Button,
		TextXAlignment = text.TextXAlignment or Enum.TextXAlignment.Left,
		TextColor3 = currentProps.TextColor3,
		BackgroundTransparency = 1
	}

	return Roact.createElement(
		"ImageButton",
		buttonProps,
		{
			Roact.createElement("TextLabel", textProps),
			MoveSelection = Roact.createElement(
				SoundComponent,
				{
					SoundName = "MoveSelection"
				}
			)
		}
	)
end

return RoundedButton
