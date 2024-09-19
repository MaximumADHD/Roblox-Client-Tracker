local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)

local ChromeService = require(Chrome.Service)
local IntegrationRow = require(Chrome.Peek.IntegrationRow)
local useChromePeekItems = require(Chrome.Hooks.useChromePeekItems)
local Constants = require(Chrome.Unibar.Constants)

local GetFFlagEnableSongbirdPeek = require(Chrome.Flags.GetFFlagEnableSongbirdPeek)
local GetFStringChromeMusicIntegrationId =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringChromeMusicIntegrationId

local useStyle = UIBlox.Core.Style.useStyle

function configurePeek()
	if GetFFlagEnableSongbirdPeek() then
		ChromeService:configurePeek("music_peek", {
			integrations = { "peek_close", GetFStringChromeMusicIntegrationId() },
		})
	end
end

configurePeek()

export type Props = {
	layoutOrder: number,
	onAreaChanged: (id: string, position: Vector2, size: Vector2) -> nil,
	onMinWidthChanged: (width: number) -> (),
}

local function Peek(props: Props): React.Node?
	local style = useStyle()
	local peekItems = useChromePeekItems()

	if #peekItems == 0 then
		return nil
	end

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, Constants.ICON_SIZE),
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
		SelectionGroup = true,
		SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
		SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
		SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
	}, {
		Layout = React.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),

		Background = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.fromScale(0, 1),
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency
				* style.Settings.PreferredTransparency,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),

			Padding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, style.Tokens.Global.Space_25),
				PaddingRight = UDim.new(0, style.Tokens.Global.Space_25),
				PaddingBottom = UDim.new(0, style.Tokens.Global.Space_25),
				PaddingLeft = UDim.new(0, style.Tokens.Global.Space_25),
			}),

			IntegrationRow = React.createElement(IntegrationRow, {
				integrations = peekItems,
			}),
		}),
	})
end

return Peek
