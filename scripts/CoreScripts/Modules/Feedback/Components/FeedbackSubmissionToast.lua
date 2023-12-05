--[[
	Toast that pops up when feedback is successfully submitted. Expected to last on screen for a set amount of time before disappearing
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

-- UIBlox components
local SlideFromTopToast = UIBlox.App.Dialog.Toast

-- UIBlox imageset
local UIBloxImages = UIBlox.App.ImageSet.Images

-- Localizations
local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization

local FeedbackSubmissionToast = Roact.PureComponent:extend("FeedbackSubmissionToast")

FeedbackSubmissionToast.validateProps = t.strictInterface({
	numFeedbackSubmissionAttempts = t.optional(t.number),
})

function FeedbackSubmissionToast:render()
	-- This property is used to determine if the toast should display or not, if it is nil then we return nothing
	if self.props.numFeedbackSubmissionAttempts == nil then
		return nil
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 100, -- on top of other UIs
	}, {
		Toast = withLocalization({
			toastTitle = "CoreScripts.Feedback.SubmissionToastHeader",
			toastSubtitle = "CoreScripts.Feedback.SubmissionToastBody",
		})(function(localized: { toastTitle: string, toastSubtitle: string })
			-- These extra states change the toast state so that it can redisplay for its duration when we want it to
			-- TODO: When/if a better state management for temporary toasts is available, replace this logic
			local constructedToastTitle = localized.toastTitle
			local constructedToastSubtitle = localized.toastSubtitle

			local useSpacer = (self.props.numFeedbackSubmissionAttempts % 2 == 0)

			if useSpacer then
				constructedToastTitle = localized.toastTitle .. " "
				constructedToastSubtitle = localized.toastSubtitle .. " "
			end

			return Roact.createElement(SlideFromTopToast, {
				duration = 3,
				toastContent = {
					iconImage = UIBloxImages["icons/status/success"],
					toastTitle = constructedToastTitle,
					toastSubtitle = constructedToastSubtitle,
				},
			})
		end),
	})
end

return RoactRodux.connect(function(state)
	return {
		numFeedbackSubmissionAttempts = state.common.numFeedbackSubmissionAttempts,
	}
end, nil)(FeedbackSubmissionToast)
