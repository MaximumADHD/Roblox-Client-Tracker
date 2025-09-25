local Root = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local Chrome = require(CorePackages.Workspace.Packages.Chrome)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ChromeService = require(Root.Service)
local MusicConstants = require(Root.Integrations.MusicUtility.Constants)
local CommonIcon = require(Root.Integrations.CommonIcon)
local WindowSizeSignal = require(Root.ChromeShared.Service.WindowSizeSignal)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local ChromeUtils = require(Root.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

local GetFFlagChromeMusicWindowDirectionalInput =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeMusicWindowDirectionalInput

local MUSIC_WINDOW_MAX_SIZE = MusicConstants.MUSIC_WINDOW_MAX_SIZE

local useSignalState = SignalsReact.useSignalState

local windowSize = WindowSizeSignal.new(MUSIC_WINDOW_MAX_SIZE.X, MUSIC_WINDOW_MAX_SIZE.Y)

local mappedMusicOpenSignal = MappedSignal.new(ChromeService:onIntegrationStatusChanged(), function()
	return ChromeService:isWindowOpen("music_entrypoint")
end)

local getIsMusicFocused, setIsMusicFocused
if GetFFlagChromeMusicWindowDirectionalInput() then
	getIsMusicFocused, setIsMusicFocused = Signals.createSignal(false)
end

local focusMusicWindow
local unfocusMusicWindow
if GetFFlagChromeMusicWindowDirectionalInput() then
	function focusMusicWindow()
		GuiService:SetMenuIsOpen(true, "music_entrypoint")
		setIsMusicFocused(true)
	end

	function unfocusMusicWindow()
		setIsMusicFocused(false)
		GuiService:SetMenuIsOpen(false, "music_entrypoint")
	end
end

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "music_entrypoint",
	draggable = true,
	cachePosition = true,
	windowSize = windowSize,
	label = "CoreScripts.TopBar.Music",
	activated = function()
		if GetFFlagChromeMusicWindowDirectionalInput() then
			local inputModeStore = Responsive.GetInputModeStore(false)

			if inputModeStore.getLastInputType(false) == Responsive.Input.Directional then
				Chrome.FocusUtils.FocusOffChrome(focusMusicWindow)

				-- On gamepad we only open the window on the first interaction.
				-- Subsequent interactions should instead reselect the window
				-- element
				if not mappedMusicOpenSignal:get() then
					ChromeService:toggleWindow("music_entrypoint")
				end
			else
				ChromeService:toggleWindow("music_entrypoint")
			end
		else
			ChromeService:toggleWindow("music_entrypoint")
		end
	end,
	isActivated = function()
		return mappedMusicOpenSignal:get()
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/common/music", "icons/common/musicFilled_medium", mappedMusicOpenSignal)
		end,
		Window = function()
			local isMusicFocused = if GetFFlagChromeMusicWindowDirectionalInput()
				then useSignalState(getIsMusicFocused)
				else nil :: never

			return React.createElement(Foundation.View, {
				tag = "auto-xy",
				onAbsoluteSizeChanged = function(rbx: GuiObject)
					windowSize:requestSize(rbx.AbsoluteSize.X, rbx.AbsoluteSize.Y)
				end,
			}, {
				ChromeWindowWrapper = React.createElement(Songbird.ChromeWindowWrapper, {
					isFocused = if GetFFlagChromeMusicWindowDirectionalInput() then isMusicFocused else nil,
					onClose = function()
						if GetFFlagChromeMusicWindowDirectionalInput() then
							unfocusMusicWindow()
						end
						ChromeService:toggleWindow("music_entrypoint")
					end,
					onUnfocus = if GetFFlagChromeMusicWindowDirectionalInput()
						then unfocusMusicWindow
						else nil :: never,
				}),
			})
		end,
	},
})
