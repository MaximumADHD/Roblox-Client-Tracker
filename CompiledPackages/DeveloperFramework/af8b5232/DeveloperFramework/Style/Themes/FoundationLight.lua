--[[
	A partial copy of this file is included because of some issues adding new dependencies to DeveloperFramework.

	This should be kept in sync with upstream:
	https://github.com/Roblox/rbx-design-foundations/blob/main/modules/foundation/rblx-rods-style-lua/src/tokens/FoundationLight.lua

	Only tokens that deviate from FoundationDark need to be included here.

	When this is removed, please remove the corresponding --exclude from the CPD command in analyze.
]]
return function(_scale: number)
	return {
		Color = {
			Shift = {
				Shift_100 = {
					Color3 = Color3.fromRGB(27, 37, 75),
					Transparency = 0.96,
				},
				Shift_200 = {
					Color3 = Color3.fromRGB(27, 37, 75),
					Transparency = 0.92,
				},
				Shift_300 = {
					Color3 = Color3.fromRGB(27, 37, 75),
					Transparency = 0.88,
				},
				Shift_400 = {
					Color3 = Color3.fromRGB(27, 37, 75),
					Transparency = 0.84,
				},
			},
			ActionEmphasis = {
				Background = {
					Color3 = Color3.fromRGB(51, 95, 255),
					Transparency = 0,
				},
				Foreground = {
					Color3 = Color3.fromRGB(247, 247, 248),
					Transparency = 0,
				},
				Border = {
					Color3 = Color3.fromRGB(0, 0, 0),
					Transparency = 1,
				},
			},
			ActionSoftEmphasis = {
				Background = {
					Color3 = Color3.fromRGB(51, 95, 255),
					Transparency = 0.7,
				},
				Foreground = {
					Color3 = Color3.fromRGB(0, 20, 92),
					Transparency = 0,
				},
				Border = {
					Color3 = Color3.fromRGB(0, 0, 0),
					Transparency = 1,
				},
			},
			ActionSubEmphasis = {
				Background = {
					Color3 = Color3.fromRGB(32, 34, 39),
					Transparency = 0,
				},
				Foreground = {
					Color3 = Color3.fromRGB(247, 247, 248),
					Transparency = 0,
				},
				Border = {
					Color3 = Color3.fromRGB(0, 0, 0),
					Transparency = 1,
				},
			},
		},
		LightMode = {
			None = {
				Color3 = Color3.fromRGB(0, 0, 0),
				Transparency = 1,
			},
			Surface = {
				Surface_0 = {
					Color3 = Color3.fromRGB(255, 255, 255),
					Transparency = 0,
				},
				Surface_100 = {
					Color3 = Color3.fromRGB(247, 247, 248),
					Transparency = 0,
				},
				Surface_200 = {
					Color3 = Color3.fromRGB(255, 255, 255),
					Transparency = 0,
				},
				Surface_300 = {
					Color3 = Color3.fromRGB(247, 247, 248),
					Transparency = 0,
				},
			},
		},
	}
end
