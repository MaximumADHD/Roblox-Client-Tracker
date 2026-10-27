local Framework = script:FindFirstAncestor("UI").Parent

local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy
local StyleModifier = require(Framework.Util.StyleModifier)

local StyleKey = require(Framework.Style.StyleKey)

local Box = require(Framework.UI.Components.Box)
local RoundBox = require(Framework.UI.Components.RoundBox)
local Image = require(Framework.UI.Components.Image)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBoxStyle = require(UIFolderData.RoundBox.style)

local roundBox = deepCopy(RoundBoxStyle)

local roundBoxLeft = Cryo.Dictionary.join(roundBox, {
	BackgroundImage = "rbxasset://textures/StudioSharedUI/RoundedLeftBackground.png",
	BorderImage = "rbxasset://textures/StudioSharedUI/RoundedLeftBorder.png",
})

local roundBoxCenter = Cryo.Dictionary.join(roundBox, {
	BackgroundImage = "rbxasset://textures/StudioSharedUI/RoundedCenterBackground.png",
	BorderImage = "rbxasset://textures/StudioSharedUI/RoundedCenterBorder.png",
})

local roundBoxRight = Cryo.Dictionary.join(roundBox, {
	BackgroundImage = "rbxasset://textures/StudioSharedUI/RoundedRightBackground.png",
	BorderImage = "rbxasset://textures/StudioSharedUI/RoundedRightBorder.png",
})

local roundPrimary = {
	Font = Enum.Font.SourceSansBold,
	Background = RoundBox,
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
}

local function roundBase(base)
	return {
		Background = RoundBox,
		BackgroundStyle = base,
		[StyleModifier.Hover] = {
			BackgroundStyle = Cryo.Dictionary.join(base, {
				Color = StyleKey.ButtonHover,
			}),
		},
		[StyleModifier.Disabled] = {
			BackgroundStyle = Cryo.Dictionary.join(base, {
				Color = StyleKey.ButtonDisabled,
			}),
			TextColor = StyleKey.ButtonTextDisabled,
		},
		[StyleModifier.Pressed] = {
			BackgroundStyle = Cryo.Dictionary.join(base, {
				Color = StyleKey.ButtonPressed,
			}),
		},
	}
end

local function roundActive(base)
	return {
		Background = RoundBox,
		BackgroundStyle = Cryo.Dictionary.join(base, {
			Color = StyleKey.ActionActivated,
		}),
		TextColor = StyleKey.DialogMainButtonText,
		[StyleModifier.Hover] = {
			BackgroundStyle = Cryo.Dictionary.join(base, {
				Color = StyleKey.ButtonHover,
			}),
		},
		[StyleModifier.Disabled] = {
			BackgroundStyle = Cryo.Dictionary.join(base, {
				Color = StyleKey.DialogMainButtonDisabled,
			}),
			TextColor = StyleKey.DialogMainButtonTextDisabled,
		},
	}
end

-- TODO: RIDE-4702: Stylizer should merge table properties when applying StyleModifiers
-- Cleanup awkward BackgroundStyle code once issues with extending styles are fixed.
return {
	IconPadding = 5,
	IconSize = UDim2.fromOffset(16, 16),
	Padding = 0,
	TextXAlignment = Enum.TextXAlignment.Center,
	TextYAlignment = Enum.TextYAlignment.Center,
	TextColor = StyleKey.ButtonText,
	Background = Box,
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
		Background = RoundBox,
		BackgroundStyle = {
			Color = StyleKey.SubBackground,
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
		[StyleModifier.Selected] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = StyleKey.ActionActivated,
			}),
			TextColor = StyleKey.ButtonTextDisabled,
		},
	},

	["&RoundLeft"] = roundBase(roundBoxLeft),

	["&RoundCenter"] = roundBase(roundBoxCenter),

	["&RoundRight"] = roundBase(roundBoxRight),

	["&RoundLeftActive"] = roundActive(roundBoxLeft),

	["&RoundCenterActive"] = roundActive(roundBoxCenter),

	["&RoundRightActive"] = roundActive(roundBoxRight),

	["&Round"] = {
		Background = RoundBox,
	},

	["&RoundPrimary"] = roundPrimary,

	["&RoundLargeText"] = {
		Background = RoundBox,
		TextSize = 22,
	},

	["&RoundLargeTextPrimary"] = Cryo.Dictionary.join(roundPrimary, {
		Font = Enum.Font.SourceSans,
		TextSize = 22,
	}),

	["&RoundActive"] = {
		Font = Enum.Font.SourceSansBold,
		Background = RoundBox,
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
	},

	["&Close"] = {
		Foreground = Image,
		Size = UDim2.fromOffset(24, 24),
		ForegroundStyle = {
			Image = "rbxasset://textures/StudioSharedUI/clear.png",
			Color = StyleKey.SubText,
		},
		[StyleModifier.Disabled] = {
			ForegroundStyle = {
				Image = "rbxasset://textures/StudioSharedUI/clear.png",
				Color = StyleKey.ButtonDisabled,
			},
		},
		[StyleModifier.Hover] = {
			ForegroundStyle = {
				Image = "rbxasset://textures/StudioSharedUI/clear-hover.png",
				Color = StyleKey.SubText,
			},
		},
	},

	["&ModernDropdown"] = {
		Font = Enum.Font.BuilderSans,
		BackgroundStyle = {
			Transparency = 1,
		},
		[StyleModifier.Hover] = {
			BackgroundStyle = {
				Color = StyleKey.ActionSecondaryHover,
				Transparency = StyleKey.ActionSecondaryHoverTransparency,
			},
		},
	},
}
