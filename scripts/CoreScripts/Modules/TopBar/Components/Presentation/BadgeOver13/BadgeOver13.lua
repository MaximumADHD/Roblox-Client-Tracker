local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local e = React.createElement

local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local LinkButton = UIBlox.App.Button.LinkButton
local Interactable = UIBlox.Core.Control.Interactable

local Badge = require(script.Parent.Badge)
local Popup = require(script.Parent.Popup)
local useAnalytics = require(script.Parent.useAnalytics)

type Props = {
	visible: boolean,
	layoutOrder: number,
	bodyText: { string },
	linkText: string,
	openWebview: () -> (),
	analyticsCopyType: string,
}

return function(props: Props)
	local isPopupVisible, setIsPopupVisible = React.useState(false)
	local analytics = useAnalytics()

	React.useEffect(function()
		if props.visible then
			analytics.fireEvent("badgeImpression", {
				badgeType = "13Plus",
			})
		end
	end, { props.visible })

	return e("Frame", {
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.fromOffset(0, 32),
		LayoutOrder = props.layoutOrder,
		Visible = props.visible,
	}, {
		layout = e("UIListLayout", {
			Padding = UDim.new(0, 14),
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		badge = e(Badge, {
			isPopupVisible = isPopupVisible,
			setIsPopupVisible = setIsPopupVisible,
			layoutOrder = 1,
		}),
		popup = e(Popup, {
			bodyText = props.bodyText,
			linkText = props.linkText,
			openWebview = props.openWebview,
			visible = isPopupVisible,
			analyticsCopyType = props.analyticsCopyType,
			layoutOrder = 2,
		}),
	})
end
