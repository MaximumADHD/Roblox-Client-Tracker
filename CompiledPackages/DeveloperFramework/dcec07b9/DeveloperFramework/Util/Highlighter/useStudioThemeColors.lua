local Framework = script.Parent.Parent.Parent
local React = require(Framework.Util.React)
local useState = React.useState
local useEffect = React.useEffect

local ContextServices = require(Framework.ContextServices)
local Design = ContextServices.Design

local Theme = require(Framework.Util.Highlighter.Theme)
local isCli = require(Framework.TestHelpers.isCli)

local function useStudioThemeColors()
	local colors, setColors = useState(Theme.defaultColors)

	local designContext = Design.use()

	useEffect(function()
		local function getTokens()
			if isCli() then
				return Theme.defaultColors
			end
			return {
				background = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptBackground),
				iden = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptText),
				keyword = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptKeyword),
				builtin = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptBuiltInFunction),
				string = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptString),
				number = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptNumber),
				comment = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptComment),
				operator = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptOperator),
				custom = designContext.getStudioThemeColor(Enum.StudioStyleGuideColor.ScriptBool),
			}
		end
		setColors(getTokens())

		local connection = designContext:getSignal():Connect(function()
			setColors(getTokens())
		end)

		return function()
			connection:Disconnect()
		end
	end, {})

	return colors
end

return useStudioThemeColors
