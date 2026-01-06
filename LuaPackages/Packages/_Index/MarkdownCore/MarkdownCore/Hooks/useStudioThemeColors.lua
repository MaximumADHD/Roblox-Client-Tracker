local Main = script:FindFirstAncestor("Hooks").Parent

local React = require(Main.Parent.React)
local Theme = require(Main.Utils.Highlighter.Theme)
local Types = require(Main.Types)
local isCli = require(Main.Utils.isCli)

local function useStudioThemeColors()
	local colors, setColors = React.useState(Theme.defaultColors)

	React.useEffect(function()
		local function getTokens(): Types.TokenColors
			if isCli() then
				return Theme.defaultColors
			end

			local ok, studioTheme = pcall(function()
				return settings().Studio.Theme
			end)

			if not ok then
				return {}
			end

			return {
				background = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBackground),
				iden = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptText),
				keyword = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptKeyword),
				builtin = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBuiltInFunction),
				string = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptString),
				number = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptNumber),
				comment = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptComment),
				operator = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptOperator),
				custom = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBool),
			}
		end

		setColors(getTokens())

		local ok, connection = pcall(function()
			return settings().Studio.ThemeChanged:Connect(function()
				setColors(getTokens())
			end)
		end)

		return function()
			if ok and connection then
				connection:Disconnect()
			end
		end
	end, {})

	return colors
end

return useStudioThemeColors
