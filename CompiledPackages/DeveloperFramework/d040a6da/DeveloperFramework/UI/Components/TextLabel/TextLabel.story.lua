local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Parent.React)

local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)
local joinTags = require(Framework.Styling.joinTags)

local styles = require(script.Parent.styles)

local function counter()
	local count = -1
	return function()
		count += 1
		return count
	end
end

return {
	story = function()
		local labels = {
			Default = React.createElement(TextLabel, {
				LayoutOrder = 1,
				Text = "Default",
				[React.Tag] = "X-Fit",
			}),
		}
		local count = counter()
		for key, style in styles:GetChildren() do
			-- Strip leading selector syntax
			local className = style.Selector:match("[A-Za-z0-9]+")
			labels[key] = React.createElement(TextLabel, {
				LayoutOrder = count(),
				Text = className,
				[React.Tag] = joinTags("X-Fit", className),
			})
		end

		local FONT_FAMILY_ASSET_ID = 8836875837
		labels["Using Font Face Prop"] = React.createElement(TextLabel, {
			FontFace = Font.fromId(FONT_FAMILY_ASSET_ID),
			LayoutOrder = count(),
			Text = "This TextLabel uses the FontFace prop",
			[React.Tag] = "X-Fit",
		})

		return React.createElement(Pane, {
			[React.Tag] = "X-ColumnM X-FitY",
		}, labels)
	end,
}
