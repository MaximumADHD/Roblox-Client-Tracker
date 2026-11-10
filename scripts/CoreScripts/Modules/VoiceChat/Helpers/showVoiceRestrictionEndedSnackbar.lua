local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Foundation = require(CorePackages.Packages.Foundation)
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local useSnackbarSlideMotionFromBottom = require(script.Parent.useSnackbarSlideMotionFromBottom)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout

local FIntVoiceRestrictionEndedSnackbarDismissSeconds =
	game:DefineFastInt("VoiceRestrictionEndedSnackbarDismissSeconds", 4)

local host: ScreenGui?
local root: ReactRoblox.RootType?
local getShowCount, setShowCount = Signals.createSignal(0)

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

local function dismissSnackbar(dismissedShowCount: number)
	-- A show can land after the exit finishes but before its effect re-enters.
	if getShowCount(false) ~= dismissedShowCount then
		return
	end
	unmountSnackbar()
end

type SnackbarProps = {
	onDismiss: (dismissedShowCount: number) -> (),
}

local function VoiceRestrictionEndedSnackbar(props: SnackbarProps)
	local showCount = SignalsReact.useSignalState(getShowCount)
	local slideMotion = useSnackbarSlideMotionFromBottom()
	local enter = slideMotion.enter
	local exit = slideMotion.exit

	-- Each show restarts the dismiss timer, and brings the snackbar back if it is leaving.
	React.useEffect(function()
		enter()
		local timer = setTimeout(function()
			exit(function()
				props.onDismiss(showCount)
			end)
		end, FIntVoiceRestrictionEndedSnackbarDismissSeconds * 1000)
		return function()
			clearTimeout(timer)
		end
	end, { showCount, enter, exit, props.onDismiss } :: { unknown })

	return React.createElement(Foundation.Snackbar, {
		title = RobloxTranslator:FormatByKey(
			"Feature.InExperienceIntervention.Description.StartNewGameToTurnOnVoiceChat"
		),
		AnchorPoint = slideMotion.anchorPoint,
		Position = slideMotion.position,
	})
end

local function mountHost(): ReactRoblox.RootType
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "VoiceRestrictionEndedSnackbar"
	screenGui.DisplayOrder = 10
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.ResetOnSpawn = false
	-- useSnackbarSlideMotionFromBottom applies the safe area itself and starts off-screen.
	screenGui.ScreenInsets = Enum.ScreenInsets.None
	screenGui.ClipToDeviceSafeArea = false
	screenGui.Parent = CoreGui
	host = screenGui

	local newRoot = ReactRoblox.createRoot(screenGui)
	root = newRoot
	return newRoot
end

--[[
	Shows a snackbar telling the player their voice restriction ended and they need to
	start a new game to use voice chat. It slides up from the bottom edge, rests the
	Foundation snackbar margin above it (more on devices with a bottom safe-area inset),
	and slides back down before unmounting. Showing it again while it is up keeps it up
	for the full dismiss delay; if it is sliding out, it slides back in.
]]
local function showVoiceRestrictionEndedSnackbar()
	setShowCount(getShowCount(false) + 1)
	if root then
		return
	end
	-- Render only on mount and re-show through the signal: CoreScriptsRootProvider
	-- creates a Rodux store, which never gets destroyed, on every render.
	mountHost():render(React.createElement(CoreScriptsRootProvider, {}, {
		Snackbar = React.createElement(VoiceRestrictionEndedSnackbar, {
			onDismiss = dismissSnackbar,
		}),
	}))
end

return showVoiceRestrictionEndedSnackbar
