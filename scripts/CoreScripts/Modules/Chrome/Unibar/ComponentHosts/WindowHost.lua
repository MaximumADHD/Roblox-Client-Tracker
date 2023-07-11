local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local CoreGui = game:GetService("CoreGui")

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local IconButton = UIBlox.App.Button.IconButton
local useStyle = UIBlox.Core.Style.useStyle

local ChromeService = require(script.Parent.Parent.Parent.Service)
local Constants = require(script.Parent.Parent.Parent.Unibar.Constants)
local ChromeTypes = require(script.Parent.Parent.Parent.Service.Types)

local CLOSE_ICON = Images["icons/navigation/close_small"]

export type WindowHostProps = {
	integration: ChromeTypes.IntegrationComponentProps,
	size: UDim2 | nil,
	position: UDim2 | nil,
}

function WindowHost(props: WindowHostProps)
	local style = useStyle()
	local theme = style.Theme
	local backgroundHover = theme.BackgroundOnHover

	return ReactRoblox.createPortal({
		Name = React.createElement("ScreenGui", {
			Name = Constants.WINDOW_HOST_GUI_NAME .. ":" .. props.integration.id,
			-- TODO manage display ordering
			DisplayOrder = 100,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			React.createElement("Frame", {
				Size = props.size or UDim2.new(0, Constants.DEFAULT_WIDTH, 0, Constants.DEFAULT_HEIGHT),
				AnchorPoint = Vector2.new(1, 0),
				LayoutOrder = 1,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Position = props.position,
			}, {
				-- TODO handle hover states and transparency
				React.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = backgroundHover.Color,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				}, {
					-- TODO enforce corner in integrations or let them set corners
					corner = React.createElement("UICorner", {
						CornerRadius = Constants.CORNER_RADIUS,
					}),
					closeButton = React.createElement(IconButton, {
						icon = CLOSE_ICON,
						iconSize = Constants.CLOSE_ICON_SIZE,
						onActivated = function()
							ChromeService:toggleWindow(props.integration.id)
						end,
					}),
					integration = props.integration.component(props) or nil,
				}),
			}),
		}),
	}, CoreGui)
end

return WindowHost
