local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Foundation = require(CorePackages.Packages.Foundation)
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout

local FIntVoiceRestrictionEndedSnackbarDismissSeconds =
	game:DefineFastInt("VoiceRestrictionEndedSnackbarDismissSeconds", 4)

local host: ScreenGui?
local root: ReactRoblox.RootType?

local function unmountSnackbar()
	if root then
		root:unmount()
		root = nil
	end
	if host then
		host:Destroy()
		host = nil
	end
end

type SnackbarProps = {
	onDismiss: () -> (),
}

local function VoiceRestrictionEndedSnackbar(props: SnackbarProps)
	local tokens = Foundation.Hooks.useTokens()

	React.useEffect(function()
		local timer = setTimeout(props.onDismiss, FIntVoiceRestrictionEndedSnackbarDismissSeconds * 1000)
		return function()
			clearTimeout(timer)
		end
	end, { props.onDismiss })

	return React.createElement(Foundation.Snackbar, {
		title = RobloxTranslator:FormatByKey(
			"Feature.InExperienceIntervention.Description.StartNewGameToTurnOnVoiceChat"
		),
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -tokens.Padding.XLarge),
	})
end

--[[
	Shows a snackbar telling the player their voice restriction ended and they need to
	start a new game to use voice chat. Replaces any snackbar already shown by this helper.
]]
local function showVoiceRestrictionEndedSnackbar()
	unmountSnackbar()

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "VoiceRestrictionEndedSnackbar"
	screenGui.DisplayOrder = 10
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.ResetOnSpawn = false
	screenGui.Parent = CoreGui
	host = screenGui

	local newRoot = ReactRoblox.createRoot(screenGui)
	root = newRoot
	newRoot:render(React.createElement(Foundation.FoundationProvider, {
		colorMode = Foundation.Enums.ColorMode.Dark,
	}, {
		Snackbar = React.createElement(VoiceRestrictionEndedSnackbar, {
			onDismiss = unmountSnackbar,
		}),
	}))
end

return showVoiceRestrictionEndedSnackbar
