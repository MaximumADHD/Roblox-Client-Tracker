--! DEPRECATED please use the version found in LuaApps SocialCommon
local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama

local UIBlox = dependencies.UIBlox
local PlayerTile = UIBlox.App.Tile.PlayerTile
local Interactable = UIBlox.Core.Control.Interactable

local getUserAvatarImage = require(SocialLibraries.User.getUserAvatarImage)
local PlayerName = require(script.Parent.PlayerName)
local StyleTypes = require(script.Parent.StyleTypes)
local Constants = require(script.Parent.Constants)

local noOpt = function()end

export type Buttons = {
	icon: StyleTypes.Icon?,
	onActivated: (() -> ())?,
	isSecondary: boolean?,
	isDisabled: boolean?,
}

export type Props = {
	userId: string?,
	userName: string?,
	tileSize: number,
	layoutOrder: number?,

	onActivatedTile: (() -> ())?,
	onActivatedContextual: (() -> ())?,

	renderPlayerTile: (() -> Instance)?,
	renderContextualInfo: (() -> Instance)?,
	renderPlayerName: (() -> Instance)?,
	renderButtons: (() -> Buttons)?,

	nameTopPadding: number?,
	contextualTopPadding: number?,
}

local defaultProps = {
	tileSize = Constants.TILE_SIZE,
	nameTopPadding = Constants.NAME_TOP_PADDING,
	contextualTopPadding = Constants.CONTEXTUAL_TOP_PADDING,
}

local CarouselUserTile = function(passedProps: Props)
	local props: Props = llama.Dictionary.join(defaultProps, passedProps)
	local tileSize = props.tileSize

	local renderButtons = function()
		return if props.renderButtons
			then props.renderButtons()
			else nil
	end

	local renderPlayerTile = function()
		return if props.renderPlayerTile
			then props.renderPlayerTile()
			else Roact.createElement(PlayerTile, {
				tileSize = UDim2.fromOffset(props.tileSize, props.tileSize),
				thumbnail = getUserAvatarImage(props.userId),
				onActivated = props.onActivatedTile,
				buttons = renderButtons(),
			})
	end

	local renderContextualInfo = function()
		return if props.renderContextualInfo
			then props.renderContextualInfo()
			else nil
	end

	local renderPlayerName = function()
		return if props.renderPlayerName
			then props.renderPlayerName()
			else props.userName and Roact.createElement(PlayerName, {
				name = props.userName,
				width = props.tileSize,
			}) or nil
	end

	return Roact.createElement("Frame", {
		LayoutOrder = props.layoutOrder,
		Size = UDim2.fromOffset(tileSize, 0),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		PlayerTileFrame = Roact.createElement("Frame", {
			LayoutOrder = 1,
			Size = UDim2.fromOffset(tileSize, tileSize),
			BackgroundTransparency = 1,
		},{
			PlayerTile = renderPlayerTile(),
		}),
		NameTopPadding = if props.nameTopPadding
			then Roact.createElement("Frame", {
				LayoutOrder = 2,
				Size = UDim2.fromOffset(0, props.nameTopPadding),
				BackgroundTransparency = 1,
			})
			else nil,
		UserInfo = Roact.createElement(Interactable, {
			LayoutOrder = 3,
			[Roact.Event.Activated] = props.onActivatedContextual,
			AutomaticSize = Enum.AutomaticSize.XY,
			onStateChanged = noOpt,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			PlayerNameFrame = Roact.createElement("Frame", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
			}, {
				PlayerName = renderPlayerName(),
			}),
			ContextualTopPadding = if props.contextualTopPadding
				then Roact.createElement("Frame", {
					LayoutOrder = 2,
					Size = UDim2.fromOffset(0, props.contextualTopPadding),
					BackgroundTransparency = 1,
				})
				else nil,
			ContextualInfoFrame = Roact.createElement("Frame", {
				LayoutOrder = 3,
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
			}, {
				ContextualInfo = renderContextualInfo(),
			})
		})
	})
end

return CarouselUserTile
