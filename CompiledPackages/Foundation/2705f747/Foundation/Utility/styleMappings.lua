type StyleMapping = { filter: string?, property: string | { table: string, key: string } }

local styleMappings: { [string]: { [string]: StyleMapping } } = {
	GuiObject = {
		AnchorPoint = {
			property = "AnchorPoint",
		},
		AutomaticSize = {
			property = "AutomaticSize",
		},
		BackgroundColor3 = {
			property = {
				table = "backgroundStyle",
				key = "Color3",
			},
		},
		BackgroundTransparency = {
			property = {
				table = "backgroundStyle",
				key = "Transparency",
			},
		},
		TextColor3 = {
			filter = "Text",
			property = {
				table = "textStyle",
				key = "Color3",
			},
		},
		TextTransparency = {
			filter = "Text",
			property = {
				table = "textStyle",
				key = "Transparency",
			},
		},
		TextTruncate = {
			filter = "Text",
			property = "TextTruncate",
		},
		TextXAlignment = {
			filter = "Text",
			property = "TextXAlignment",
		},
		TextYAlignment = {
			filter = "Text",
			property = "TextYAlignment",
		},
		TextWrapped = {
			filter = "Text",
			property = "TextWrapped",
		},
		Font = {
			filter = "Text",
			property = {
				table = "fontStyle",
				key = "Font",
			},
		},
		TextSize = {
			filter = "Text",
			property = {
				table = "fontStyle",
				key = "FontSize",
			},
		},
		LineHeight = {
			filter = "Text",
			property = {
				table = "fontStyle",
				key = "LineHeight",
			},
		},
		ImageColor3 = {
			filter = "Image",
			property = {
				table = "imageStyle",
				key = "Color3",
			},
		},
		ImageTransparency = {
			filter = "Image",
			property = {
				table = "imageStyle",
				key = "Transparency",
			},
		},
		Size = {
			property = "Size",
		},
		Position = {
			property = "Position",
		},
		ClipsDescendants = {
			property = "ClipsDescendants",
		},
	},
	UIAspectRatioConstraint = {
		AspectRatio = {
			property = {
				table = "aspectRatio",
				key = "AspectRatio",
			},
		},
	},
	UIPadding = {
		PaddingTop = {
			property = {
				table = "padding",
				key = "top",
			},
		},
		PaddingBottom = {
			property = {
				table = "padding",
				key = "bottom",
			},
		},
		PaddingLeft = {
			property = {
				table = "padding",
				key = "left",
			},
		},
		PaddingRight = {
			property = {
				table = "padding",
				key = "right",
			},
		},
	},
	UIStroke = {
		Color = {
			property = {
				table = "stroke",
				key = "Color",
			},
		},
		Transparency = {
			property = {
				table = "stroke",
				key = "Transparency",
			},
		},
		Thickness = {
			property = {
				table = "stroke",
				key = "Thickness",
			},
		},
		BorderStrokePosition = {
			property = {
				table = "stroke",
				key = "BorderStrokePosition",
			},
		},
	},
	UIListLayout = {
		SortOrder = {
			property = {
				table = "layout",
				key = "SortOrder",
			},
		},
		ItemLineAlignment = {
			property = {
				table = "layout",
				key = "ItemLineAlignment",
			},
		},
		HorizontalAlignment = {
			property = {
				table = "layout",
				key = "HorizontalAlignment",
			},
		},
		VerticalAlignment = {
			property = {
				table = "layout",
				key = "VerticalAlignment",
			},
		},
		HorizontalFlex = {
			property = {
				table = "layout",
				key = "HorizontalFlex",
			},
		},
		VerticalFlex = {
			property = {
				table = "layout",
				key = "VerticalFlex",
			},
		},
		Padding = {
			property = {
				table = "layout",
				key = "Padding",
			},
		},
		FillDirection = {
			property = {
				table = "layout",
				key = "FillDirection",
			},
		},
		Wraps = {
			property = {
				table = "layout",
				key = "Wraps",
			},
		},
	},
	UIFlexItem = {
		ItemLineAlignment = {
			property = {
				table = "flexItem",
				key = "ItemLineAlignment",
			},
		},
		FlexMode = {
			property = {
				table = "flexItem",
				key = "FlexMode",
			},
		},
		ShrinkRatio = {
			property = {
				table = "flexItem",
				key = "ShrinkRatio",
			},
		},
		GrowRatio = {
			property = {
				table = "flexItem",
				key = "GrowRatio",
			},
		},
	},
	UICorner = {
		CornerRadius = {
			property = "cornerRadius",
		},
	},
}

return styleMappings
