local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local ChromeService = require(Chrome.Service)
local PeekConstants = require(Chrome.Integrations.MusicUtility.Constants)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local WindowSizeSignal = require(Chrome.Service.WindowSizeSignal)

local GetFFlagChromeSongbirdWindow = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeSongbirdWindow

if GetFFlagChromeSongbirdWindow() then
	local MUSIC_WINDOW_MAX_SIZE = PeekConstants.MUSIC_WINDOW_MAX_SIZE

	local windowSize = WindowSizeSignal.new(MUSIC_WINDOW_MAX_SIZE.X, MUSIC_WINDOW_MAX_SIZE.Y)

	return ChromeService:register({
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		id = "music_entrypoint",
		draggable = true,
		cachePosition = true,
		windowSize = windowSize,
		label = "CoreScripts.TopBar.Music",
		activated = function()
			ChromeService:toggleWindow("music_entrypoint")
		end,
		components = {
			Icon = function(props)
				return CommonIcon("icons/common/music")
			end,
			Window = function()
				return React.createElement(Songbird.ChromeWindowWrapper, {
					onClose = function()
						ChromeService:toggleWindow("music_entrypoint")
					end,
				})
			end,
		},
	})
else
	return ChromeService:register({
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		id = "music_entrypoint",
		label = "CoreScripts.TopBar.Music",
		activated = function(self)
			ChromeService:toggleCompactUtility("music_utility")
		end,
		components = {
			Icon = function(props)
				-- MUS-1201 TODO: Add final icon
				return CommonIcon("icons/controls/emoteOff")
			end,
		},
	})
end
