local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Cryo = Util.Cryo
local deepCopy = Util.deepCopy
local Style = Util.Style
local StyleModifier = Util.StyleModifier

local StyleKey = require(Framework.Style.StyleKey)

local UI = require(Framework.UI)
local Decoration = UI.Decoration

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local UIFolderData = require(Framework.UI.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)

if THEME_REFACTOR then
	local roundBox = deepCopy(RoundBox)
	-- TODO: RIDE-4702: Stylizer should merge table properties when applying StyleModifiers
	-- Cleanup awkward BackgroundStyle code once issues with extending styles are fixed.
	return {
		Padding = 0,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		TextColor = StyleKey.ButtonText,
		Background = Decoration.Box,
		BackgroundStyle = Cryo.Dictionary.join(roundBox, {
			Color = StyleKey.Button,
		}),

		[StyleModifier.Hover] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = StyleKey.ButtonHover,
			}),
		},
		[StyleModifier.Disabled] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = StyleKey.ButtonDisabled,
			}),
			TextColor = StyleKey.ButtonTextDisabled,
		},
		[StyleModifier.Pressed] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = StyleKey.ButtonPressed,
			}),
		},

		["&RoundSubtle"] = {
			Background = Decoration.RoundBox,
			BackgroundStyle = {
				Color = Decoration.SubBackground,
			},
			[StyleModifier.Disabled] = {
				BackgroundStyle = {
					Color = StyleKey.ButtonDisabled,
				},
				TextColor = StyleKey.ButtonTextDisabled,
			},
			[StyleModifier.Hover] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					Color = StyleKey.ButtonHover,
				}),
			},
			[StyleModifier.Pressed] = {
				BackgroundStyle = {
					Color = StyleKey.ButtonPressed,
				},
				TextColor = StyleKey.ButtonTextDisabled,
			},
		},

		["&Round"] = {
			Background = Decoration.RoundBox,
		},

		["&RoundPrimary"] = {
			Font = Enum.Font.SourceSansBold,
			Background = Decoration.RoundBox,
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				BorderColor = StyleKey.MainBackground,
				Color = StyleKey.DialogMainButton,
			}),
			TextColor = StyleKey.DialogMainButtonText,
			[StyleModifier.Hover] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					BorderColor = StyleKey.MainBackground,
					Color = StyleKey.DialogMainButtonHover,
				}),
			},
			[StyleModifier.Disabled] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					BorderColor = StyleKey.MainBackground,
					Color = StyleKey.DialogMainButtonDisabled,
				}),
				TextColor = StyleKey.DialogMainButtonTextDisabled,
			},
		},

		["&RoundActive"] = {
			Font = Enum.Font.SourceSansBold,
			Background = Decoration.RoundBox,
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				BorderColor = StyleKey.DialogMainButton,
				Color = StyleKey.Button,
			}),
			TextColor = StyleKey.DialogMainButtonText,
			[StyleModifier.Hover] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					BorderColor = StyleKey.DialogMainButton,
					Color = StyleKey.ButtonHover,
				}),
			},
			[StyleModifier.Disabled] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					BorderColor = StyleKey.DialogMainButton,
					Color = StyleKey.ButtonDisabled,
				}),
				TextColor = StyleKey.DialogMainButtonTextDisabled,
			},
		}
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)
		local roundBox = RoundBox(theme, getColor)

		local Default = Style.extend(common.MainText, {
			Padding = 0,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor = theme:GetColor("ButtonText"),
			Background = Decoration.Box,
			BackgroundStyle = Style.extend(roundBox.Default, {
				Color = theme:GetColor("Button"),
			}),
			[StyleModifier.Hover] = {
				BackgroundStyle = {
					Color = theme:GetColor("Button", "Hover"),
				},
			},
			[StyleModifier.Disabled] = {
				BackgroundStyle = {
					Color = theme:GetColor("Button", "Disabled"),
				},
				TextColor = theme:GetColor("ButtonText", "Disabled"),
			},
			[StyleModifier.Pressed] = {
				BackgroundStyle = {
					Color = theme:GetColor("Button", "Pressed"),
				},
			},
		})

		local Round = Style.extend(Default, {
			Background = Decoration.RoundBox,
		})

		local RoundPrimary = Style.extend(Round, {
			Font = Enum.Font.SourceSansBold,
			TextColor = theme:GetColor("DialogMainButtonText"),
			BackgroundStyle = Style.extend(roundBox.Default, {
				BorderColor = common.Background.Color,
				Color = theme:GetColor("DialogMainButton"),
			}),
			[StyleModifier.Hover] = {
				BackgroundStyle = Style.extend(roundBox.Default, {
					BorderColor = common.Background.Color,
					Color = theme:GetColor("DialogMainButton", "Hover"),
				}),
			},
			[StyleModifier.Disabled] = {
				BackgroundStyle = {
					Color = theme:GetColor("DialogMainButton", "Disabled"),
				},
				TextColor = theme:GetColor("DialogMainButtonText", "Disabled"),
			},
		})

		return {
			Default = Default,
			Round = Round,
			RoundPrimary = RoundPrimary,
		}
	end
end
