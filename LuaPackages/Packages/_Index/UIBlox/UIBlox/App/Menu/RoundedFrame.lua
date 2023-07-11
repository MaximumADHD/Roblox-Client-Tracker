local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local StyleTypes = require(App.Style.StyleTypes)

export type Props = {
	-- ZIndex of the frame
	zIndex: number,
	-- Background color of the frame, and it will be transparent when set as nil.
	background: StyleTypes.ThemeItem,
	-- Radius of the top rounded corner if not nil.
	topCornerRadius: UDim?,
	-- Radius of the bottom rounded corner if not nil.
	bottomCornerRadius: UDim?,
}

local defaultProps = {
	zIndex = 1,
}

return function(providedProps: Props)
	local props: Props = Object.assign({}, defaultProps, providedProps)
	return React.createElement("Frame", {
		ZIndex = props.zIndex,
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {
		TopContainer = React.createElement("Frame", {
			Position = UDim2.fromScale(0, 0),
			Size = UDim2.fromScale(1, 0.5),
			ClipsDescendants = true,
			BackgroundTransparency = 1,
		}, {
			Content = React.createElement("Frame", {
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 2),
				BackgroundColor3 = props.background.Color,
				BackgroundTransparency = props.background.Transparency,
			}, {
				UICorner = if props.topCornerRadius
					then React.createElement("UICorner", {
						CornerRadius = props.topCornerRadius,
					})
					else nil,
			}),
		}),
		BottomContainer = React.createElement("Frame", {
			Position = UDim2.fromScale(0, 0.5),
			Size = UDim2.fromScale(1, 0.5),
			ClipsDescendants = true,
			BackgroundTransparency = 1,
		}, {
			Content = React.createElement("Frame", {
				Position = UDim2.fromScale(0, -1),
				Size = UDim2.fromScale(1, 2),
				BackgroundColor3 = props.background.Color,
				BackgroundTransparency = props.background.Transparency,
			}, {
				UICorner = if props.bottomCornerRadius
					then React.createElement("UICorner", {
						CornerRadius = props.bottomCornerRadius,
					})
					else nil,
			}),
		}),
	})
end
