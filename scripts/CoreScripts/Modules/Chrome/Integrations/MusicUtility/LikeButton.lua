local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)

local GetFFlagEnableChromeLikeButtonIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeLikeButtonIntegration
local GetFFlagPeekUseLikeButtonWrapper =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekUseLikeButtonWrapper

return if GetFFlagEnableChromeLikeButtonIntegration()
	then ChromeService:register({
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		id = "like_button",
		label = "CoreScripts.TopBar.PeekLike",
		components = {
			Icon = function(props)
				if GetFFlagPeekUseLikeButtonWrapper() then
					return React.createElement(Songbird.LikeButtonWrapper)
				else
					return React.createElement(Songbird.LikeButton)
				end
			end,
		},
	})
	else nil
