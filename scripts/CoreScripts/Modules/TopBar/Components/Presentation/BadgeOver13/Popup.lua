local TextService = game:GetService("TextService")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local e = React.createElement

local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local LinkButton = UIBlox.App.Button.LinkButton
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local List = require(CorePackages.Cryo).List

local useAnalytics = require(script.Parent.useAnalytics)

local PADDING = Vector2.new(8, 8)

local function Paragraph(props)
    -- We have to manually calculate the text bounds height since AutomaticSize will clamp our
    -- element height to the containing TopBar height (~36px) otherwise.
    local text = props.text
    local textSize = TextService:GetTextSize(text, props.textSize, props.font, Vector2.new(300 - (PADDING.X * 2), math.huge))

    return e("TextLabel", {
        AutomaticSize = Enum.AutomaticSize.X,
        Size = UDim2.fromOffset(0, textSize.Y),
        BackgroundTransparency = 1,
        Text = text,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        Font = props.font,
        TextSize = props.textSize,
        TextColor3 = props.textColor3,
        TextTransparency = props.textTransparency,
		LayoutOrder = props.layoutOrder,
    })
end

type Props = {
	visible: boolean,
	bodyText: { string },
	analyticsCopyType: string,
	layoutOrder: number,
	linkText: string,
	openWebview: () -> (),
}

return function(props: Props)
	local style = useStyle()
	local fontStyle = style.Font.Footer
    local bodyText: { string } = props.bodyText

	local analytics = useAnalytics()
	React.useEffect(function()
		if props.visible then
			analytics.fireEvent("popupImpression", {
				copyType = props.analyticsCopyType,
			})
		end
	end, { props.visible })

	return e("Frame", {
		Visible = props.visible,
		LayoutOrder = props.layoutOrder,
		Size = UDim2.fromOffset(300, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
		BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
	}, {
		layout = e("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 12),
		}),
		padding = e("UIPadding", {
			PaddingTop = UDim.new(0, PADDING.Y),
			PaddingBottom = UDim.new(0, PADDING.Y),
			PaddingLeft = UDim.new(0, PADDING.X),
			PaddingRight = UDim.new(0, PADDING.X),
		}),
		shape = e("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		body = e(React.Fragment, nil, List.map(bodyText, function(text, index)
            return e(Paragraph, {
				layoutOrder = index,
                text = text,
                font = fontStyle.Font,
                textSize = style.Font.BaseSize * fontStyle.RelativeSize,
                textColor3 = style.Theme.TextEmphasis.Color,
                textTransparency = style.Theme.TextEmphasis.Transparency,
            })
        end)),
		link = e(LinkButton, {
			text = props.linkText,
			fontStyle = "Footer",
			layoutOrder = 100,
			minPaddingX = 0,
			minPaddingY = 8,
			underlineAlwaysEnabled = true,
			onActivated = React.useCallback(function()
				analytics.fireEvent("formInteraction", {
					aType = "click",
					input = "learn_more",
				})
				props.openWebview()
			end),
			onStateChanged = React.useCallback(function(_oldState, newState)
				if newState == ControlState.Hover then
					analytics.fireEvent("formInteraction", {
						aType = "hover",
						input = "learn_more",
					})
				end
			end)
		})
	})
end
