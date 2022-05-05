--!strict
--[[
	Studio-specific implementation of the color system
	see: https://www.figma.com/file/AWDYdR2tX251Ag0D595v9z/Color-System-(Studio)
]]
local ColorSystem = require(script.Parent)

return {
	-- Background classes are used for large containers that appear recessed in the visual hierarchy.
	Background = {
		-- background behind all containers on a screen
		Default = {
			Dark = ColorSystem.Gray[120],
			Light = ColorSystem.Gray[40],
		},
		-- background for all subdued tabs, navigation bars, and menu lists
		Paper = {
			Dark = ColorSystem.Gray[100],
			Light = ColorSystem.Gray[30],
		},
	},
	-- Foreground classes are used for large and small containers that appear elevated in the visual hierarchy.
	Foreground = {
		-- backdrop for main tabs and windows
		Main = {
			Dark = ColorSystem.Gray[90],
			Light = ColorSystem.Gray[20],
		},
		-- backdrop for recessed content in the foreground
		Muted = {
			Dark = ColorSystem.Gray[110],
			Light = ColorSystem.Gray[10],
		},
		-- backdrop for prominent content in the foreground
		Contrast = {
			Dark = ColorSystem.Gray[80],
			Light = ColorSystem.Gray[40],
		},
	},
	-- Text classes are used specifically for text elements.
	Text = {
		-- text requiring higher contrast
		Primary = {
			Dark = ColorSystem.Gray[40],
			Light = ColorSystem.Gray[110],
		},
		-- text that can appear more subdued
		Secondary = {
			Dark = ColorSystem.Gray[60],
			Light = ColorSystem.Gray[80],
		},
		-- text requiring highest contrast (primary, secondary buttons; text in various states of components)
		Contrast = {
			Dark = ColorSystem.White[0],
			Light = ColorSystem.White[0],
		},
		-- text links
		Link = {
			Dark = ColorSystem.Blue[50],
			Light = ColorSystem.Blue[80],
		},
		-- disabled text
		Disabled = {
			Dark = ColorSystem.Gray[70],
			Light = ColorSystem.Gray[60],
		},
	},
	-- Error classes are used to indicate a negative alert.
	Error = {
		-- indicating error status
		Main = {
			Dark = ColorSystem.Red[90],
			Light = ColorSystem.Red[50],
		},
	},
	-- Success classes are used to indicate successful statuses.
	Success = {
		Main = {
			Dark = ColorSystem.Green[60],
			Light = ColorSystem.Green[80],
		},
	},
	-- Warning classes are used to indicate an alert.
	Warning = {
		Main = {
			Dark = ColorSystem.Yellow[65],
			Light = ColorSystem.Yellow[90],
		},
	},
	-- Action classes are used for interaction states.
	Action = {
		-- backdrop color for components in hover state
		Hover = {
			Dark = ColorSystem.Gray[70],
			Light = ColorSystem.Gray[40],
		},
		-- fill color for components in enabled state
		Enabled = {
			Dark = ColorSystem.Gray[40],
			Light = ColorSystem.Gray[80],
		},
		-- backdrop color for components in selected state
		Selected = {
			Dark = ColorSystem.Blue[80],
			Light = ColorSystem.Blue[10],
		},
		-- backdrop color for components in activated state
		Activated = {
			Dark = ColorSystem.Gray[110],
			Light = ColorSystem.Gray[50],
		},
		-- border color for components in focus state
		FocusBorder = {
			Dark = ColorSystem.Blue[70],
			Light = ColorSystem.Blue[70],
		},
	},
	-- Primary classes are used for elements that are at the top of the visual hierarchy.
	Primary = {
		-- primary brand color, used for primary buttons and accents in components
		Main = {
			Dark = ColorSystem.Gray[70],
			Light = ColorSystem.Gray[70],
		},
	},
	-- PrimaryState classes are used for components with states that are variants from the Action class.
	PrimaryStates = {
		HoverBackground = {
			Dark = ColorSystem.Gray[50],
			Light = ColorSystem.Gray[50],
		},
	},
	-- Secondary classes are used for most UI elements.
	Secondary = {
		-- secondary fill and backdrop color, used by most components
		Main = {
			Dark = ColorSystem.Gray[70],
			Light = ColorSystem.Gray[70],
		},
		-- alternate secondary shade, fill background used to give depth to components
		Muted = {
			Dark = ColorSystem.Gray[110],
			Light = ColorSystem.White[0],
		},
		-- alternate secondary shade, fill background used for additional contrast from the backdrop
		Contrast = {
			Dark = ColorSystem.Gray[60],
			Light = ColorSystem.Gray[70],
		},
	},
	-- Secondary/State classes are used for components with states that are variants from the Action class.
	SecondaryStates = {
		HoverBackground = {
			Dark = ColorSystem.Gray[60],
			Light = ColorSystem.Gray[60],
		},
		HoverOutlineBorder = {
			Dark = ColorSystem.Gray[120],
			Light = ColorSystem.Gray[60],
		},
		RestingOutlineBorder = {
			Dark = ColorSystem.Gray[70],
			Light = ColorSystem.Gray[60],
		},
	},
	-- Other classes are classes that do not belong in any other categories, or classes that are used for edge cases.
	Other = {
		FilledInputBackground = {
			Dark = ColorSystem.Gray[100],
			Light = ColorSystem.White[0],
		},
		-- divider/border style
		Divider = {
			Dark = ColorSystem.Gray[120],
			Light = ColorSystem.Gray[50],
		},
	},
}
