local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local AvatarSize = require(Foundation.Enums.AvatarSize)
local ControlState = require(Foundation.Enums.ControlState)
local Types = require(Foundation.Components.Types)
local UserPresence = require(Foundation.Enums.UserPresence)
local View = require(Foundation.Components.View)
local getStateLayerStyle = require(Foundation.Components.Interactable.getStateLayerStyle)
local useTokens = require(Foundation.Providers.Style.useTokens)

type Bindable<T> = Types.Bindable<T>
type ControlState = ControlState.ControlState
type UserPresence = UserPresence.UserPresence

export type TilePlayerAvatarProps = {
	userId: Bindable<number>,
	userPresence: UserPresence?,
	includeProfileFrame: boolean?,
	backgroundStyle: Types.ColorStyle?,
	controlState: React.Binding<ControlState>?,
	testId: string,
}

local REFERENCE_SIZE = 100

-- Avatar only comes in fixed sizes, so this scales the largest one to fill its parent.
local function TilePlayerAvatar(props: TilePlayerAvatarProps)
	local tokens = useTokens()
	local avatarSize = tokens.Size.Size_2400

	-- Absolute sizes include any ancestor UIScale, so measure the width against a reference of known offset size.
	local absoluteWidth, setAbsoluteWidth = React.useBinding(0)
	local ancestorScale, setAncestorScale = React.useBinding(1)
	local width = React.useMemo(function()
		return React.joinBindings({ absoluteWidth, ancestorScale }):map(function(values: { number })
			return values[1] / values[2]
		end)
	end, {})
	local onSizeChanged = React.useCallback(function(instance: GuiObject)
		setAbsoluteWidth(instance.AbsoluteSize.X)
	end, {})
	local onReferenceSizeChanged = React.useCallback(function(instance: GuiObject)
		if instance.AbsoluteSize.X > 0 then
			setAncestorScale(instance.AbsoluteSize.X / REFERENCE_SIZE)
		end
	end, {})

	-- Avatar draws the in-experience ring outside its circle, and BaseTile clips the media well, so inset the avatar by the stroke.
	local ringWidth = if props.userPresence == UserPresence.InExperience
		then tokens.Stroke.Thicker + tokens.Stroke.Standard
		else 0
	local outerSize = avatarSize + ringWidth * 2

	return React.createElement(View, {
		Size = UDim2.fromScale(1, 1),
		onAbsoluteSizeChanged = onSizeChanged,
	}, {
		Reference = React.createElement(View, {
			Size = UDim2.fromOffset(REFERENCE_SIZE, 0),
			onAbsoluteSizeChanged = onReferenceSizeChanged,
		}),
		AvatarContainer = React.createElement(View, {
			Size = UDim2.fromOffset(outerSize, outerSize),
			padding = UDim.new(0, ringWidth),
		}, {
			Scale = React.createElement("UIScale", {
				Scale = width:map(function(value: number)
					return value / outerSize
				end),
			}),
			Avatar = React.createElement(Avatar, {
				userId = props.userId,
				userPresence = props.userPresence,
				includeProfileFrame = props.includeProfileFrame,
				size = AvatarSize.Pictogram,
				backgroundStyle = props.backgroundStyle or tokens.Color.Shift.Shift_200,
				testId = `{props.testId}--avatar`,
			}),
		}),
		-- Drawn over the headshot so the tile's hover and press tint the avatar, not the fill behind it.
		StateLayer = if props.controlState
			then React.createElement(View, {
				tag = "size-full-full radius-circle",
				backgroundStyle = props.controlState:map(function(state)
					return getStateLayerStyle(tokens, nil, state :: ControlState)
				end),
				ZIndex = 2,
				testId = `{props.testId}--state-layer`,
			})
			else nil,
	})
end

return React.memo(TilePlayerAvatar)
