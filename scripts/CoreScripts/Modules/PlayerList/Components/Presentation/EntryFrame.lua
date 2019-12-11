local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")

local EntryFrame = Roact.PureComponent:extend("EntryFrame")

if FFlagPlayerListDesignUpdate then
	EntryFrame.validateProps = t.strictInterface({
		sizeX = t.integer,
		sizeY = t.integer,
		isTeamFrame = t.boolean,

		onActivated = t.optional(t.callback),
		onSelectionGained = t.optional(t.callback),
		onSelectionLost = t.optional(t.callback),
		onMouseEnter = t.optional(t.callback),
		onMouseLeave = t.optional(t.callback),
		onMouseDown = t.optional(t.callback),
		onMouseUp = t.optional(t.callback),

		backgroundStyle = t.strictInterface({
			Color = t.Color3,
			Transparency = t.number,
		}),
		overlayStyle = t.strictInterface({
			Color = t.Color3,
			Transparency = t.number,
		}),
		doubleOverlay = t.optional(t.boolean),

		[Roact.Ref] = t.optional(t.table),
		[Roact.Children] = t.optional(t.table),
	})
else
	EntryFrame.validateProps = t.strictInterface({
		sizeX = t.integer,
		sizeY = t.integer,
		isTeamFrame = t.boolean,

		onActivated = t.optional(t.callback),
		onSelectionGained = t.optional(t.callback),
		onSelectionLost = t.optional(t.callback),
		onMouseEnter = t.optional(t.callback),
		onMouseLeave = t.optional(t.callback),

		backgroundStyle = t.strictInterface({
			Color = t.Color3,
			Transparency = t.number,
		}),

		[Roact.Ref] = t.optional(t.table),
		[Roact.Children] = t.optional(t.table),
	})
end

if not FFlagPlayerListDesignUpdate then
	function EntryFrame:init()
		self.state  = {
			isGamepadSelected = false,
		}
	end
end

function EntryFrame:render()
	if FFlagPlayerListDesignUpdate then
		return Roact.createElement("TextButton", {
			Size = UDim2.new(0, self.props.sizeX, 0, self.props.sizeY),
			BackgroundTransparency = self.props.backgroundStyle.Transparency,
			BackgroundColor3 = self.props.backgroundStyle.Color,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Text = "",
			AutoLocalize = false,
			Selectable = not self.props.isTeamFrame, -- dont allow gamepad selection of team frames
			Active = not self.props.isTeamFrame,

			[Roact.Event.Activated] = self.props.onActivated,
			[Roact.Event.SelectionGained] = self.props.onSelectionGained,
			[Roact.Event.SelectionLost] = self.props.onSelectionLost,
			[Roact.Event.MouseEnter] = self.props.onMouseEnter,
			[Roact.Event.MouseLeave] = self.props.onMouseLeave,
			[Roact.Event.MouseButton1Down] = self.props.onMouseDown,
			[Roact.Event.MouseButton1Up] = self.props.onMouseUp,

			[Roact.Ref] = self.props[Roact.Ref],
		}, {
			DoubleOverLay = Roact.createElement("Frame", {
				ZIndex = 1,
				Visible = self.props.doubleOverlay,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = self.props.overlayStyle.Transparency,
				BackgroundColor3 = self.props.overlayStyle.Color,
				BorderSizePixel = 0,
			}),

			OverlayFrame = Roact.createElement("Frame", {
				ZIndex = 2,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = self.props.overlayStyle.Transparency,
				BackgroundColor3 = self.props.overlayStyle.Color,
				BorderSizePixel = 0,
			}, self.props[Roact.Children]),
		})
	else
		return Roact.createElement("TextButton", {
			Size = UDim2.new(0, self.props.sizeX, 0, self.props.sizeY),
			BackgroundTransparency = self.props.backgroundStyle.Transparency,
			BackgroundColor3 = self.props.backgroundStyle.Color,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Text = "",
			AutoLocalize = false,
			Selectable = not self.props.isTeamFrame, -- dont allow gamepad selection of team frames
			Active = not self.props.isTeamFrame,

			[Roact.Event.Activated] = self.props.onActivated,
			[Roact.Event.SelectionGained] = self.props.onSelectionGained,
			[Roact.Event.SelectionLost] = self.props.onSelectionLost,
			[Roact.Event.MouseEnter] = self.props.onMouseEnter,
			[Roact.Event.MouseLeave] = self.props.onMouseLeave,

			[Roact.Ref] = self.props[Roact.Ref],
		}, self.props[Roact.Children])
	end
end

return EntryFrame