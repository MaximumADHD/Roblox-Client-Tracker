--!strict
-- Toolbar items
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

-- If set to a string, will put that inside of a square image.
-- Otherwise, will render the react node in a square frame of the same size.
-- This is useful for if you want to do something like a ViewportFrame icon.
export type Icon = string | React.ReactNode

export type Button = {
	Type: "Button",

	Tooltip: string,
	TooltipDescription: string?,

	Icon: Icon,

	OnClick: () -> (),

	-- Is the button currently in a highlighted "active" state?
	-- This will visualize a toggled button, for instance.
	-- Defaults to false.
	Selected: boolean?,

	-- Whether or not to grey out the button.
	-- Defaults to true.
	Enabled: boolean?,
}

-- A button that contains multiple sub-buttons within it, defaulting to the first
-- one provided. You can hold/right-click/click an arrow to open up the submenu to
-- choose the button.
-- Otherwise, normal clicks will just fire the OnClick.
-- Only static options are expected to be stable. That is, a given index will always mean the same tool,
-- and it will not go away.
export type SplitButton = {
	Type: "SplitButton",

	Options: { SplitButtonChoice },
}

export type SplitButtonChoice = {
	Icon: Icon,
	Text: string,
	TooltipDescription: string?,
	OnClick: () -> (),
	OnSelect: (() -> ())?,
}

export type TextButton = {
	Type: "TextButton",

	Text: string,

	OnClick: () -> (),

	-- Whether or not to grey out the button.
	-- Defaults to true.
	Enabled: boolean?,
}

export type DropdownItem = {
	Id: string,
	Label: string,
}

export type Dropdown = {
	Type: "Dropdown",

	-- Maps onto the given ID.
	Value: string,
	OnChange: (string) -> (),

	Items: { DropdownItem },
}

export type Radio = {
	Type: "Radio",

	-- Maps onto the given ID.
	Value: string,
	OnChange: (string) -> (),

	Items: {
		{
			Id: string,
			Tooltip: string,
			TooltipDescription: string?,
			Icon: Icon,
			Enabled: boolean?,
		}
	},
}

-- A basic piece of text
export type Label = {
	Type: "Label",
	Text: string,
}

export type Slider = {
	Type: "Slider",

	Value: number,
	OnChange: (number) -> (),

	Min: number,
	Max: number,

	-- The number of decimal places to show.
	-- Defaults to 2.
	InputPrecision: number?,

	-- A Lua format string to display for the current value.
	-- You should still specify an accurate InputPrecision, as that is used for judging how large the text can be.
	DisplayFormat: string?,

	-- If specified, will display [+]/[-] icons that add and subtract by this amount.
	IncrementStep: number?,

	Icon: Icon?,
	-- Only valid if an icon is provided with it
	Tooltip: string?,
	TooltipDescription: string?,

	Enabled: boolean?,
}

export type Separator = {
	Type: "Separator",
}

export type ToolbarItem = Button | Dropdown | Label | Radio | Separator | Slider | TextButton

export type ToolbarHorizontalItem = Button | Dropdown | SplitButton | Label | Radio | Separator | Slider | TextButton
export type ToolbarVerticalItem = Button | SplitButton | Radio | Separator

export type Toolbar =
	{
		DisplayOrder: number?,
		-- Defaults to Center
		InitialPosition: ("Center" | "Left" | "Right")?,
		HorizontalItems: { ToolbarHorizontalItem },
		OnToolbarSizeChanged: ((GuiBase2d) -> ())?,
	}
	| {
		DisplayOrder: number?,
		-- Defaults to center
		InitialPosition: ("Center" | "Top" | "Bottom")?,
		VerticalItems: { ToolbarVerticalItem },
		OnToolbarSizeChanged: ((GuiBase2d) -> ())?,
	}

return {}
