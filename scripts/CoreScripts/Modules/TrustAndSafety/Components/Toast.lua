local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local SlideFromTopToast = UIBlox.App.Dialog.Toast
local UIBloxImages = UIBlox.App.ImageSet.Images

local Toast = Roact.PureComponent:extend("Toast")

Toast.validateProps = t.strictInterface({
	toastTitle = t.optional(t.string),
	toastSubtitle = t.optional(t.string),
})

function Toast:render()
	if not self.props.toastTitle then
		return nil
	end
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 100, -- on top of other UIs
	}, {
		Toast = Roact.createElement(SlideFromTopToast, {
			duration = 3,
			toastContent = {
				iconImage = UIBloxImages["icons/status/success"],
				toastTitle = self.props.toastTitle,
				toastSubtitle = self.props.toastSubtitle,
			},
		}),
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		toastTitle = state.common.toastTitle,
		toastSubtitle = state.common.toastSubtitle,
	}
end, nil)(Toast)
