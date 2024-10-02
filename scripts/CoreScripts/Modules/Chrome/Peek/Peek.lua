local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactOtter = require(CorePackages.Packages.ReactOtter)
local ReactUtils = require(CorePackages.Workspace.Packages.ReactUtils)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local UIBlox = require(CorePackages.UIBlox)
local GuiObjectUtils = require(CorePackages.Workspace.Packages.GuiObjectUtils)

local ChromeService = require(Chrome.Service)
local IntegrationRow = require(Chrome.Peek.IntegrationRow)
local useChromePeekItems = require(Chrome.Hooks.useChromePeekItems)
local Types = require(Chrome.Service.Types)

local useHoverState = GuiObjectUtils.useHoverState
local useMusicPeek = Songbird.useMusicPeek
local usePrevious = ReactUtils.usePrevious
local useEffect = React.useEffect
local useRef = React.useRef
local useCallback = React.useCallback

local GetFFlagEnableSongbirdPeek = require(Chrome.Flags.GetFFlagEnableSongbirdPeek)
local GetFStringChromeMusicIntegrationId =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringChromeMusicIntegrationId
local GetFFlagPeekShowsOnSongChange = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekShowsOnSongChange
local GetFFlagSongbirdTranslationStrings =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSongbirdTranslationStrings
local GetFFlagFixPeekRenderingWithoutContent =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixPeekRenderingWithoutContent
local GetFFlagPeekShowsOneSongOverLifetime =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekShowsOneSongOverLifetime

local useStyle = UIBlox.Core.Style.useStyle

function configurePeek()
	if GetFFlagEnableSongbirdPeek() then
		ChromeService:configurePeek("music_peek", {
			integrations = if GetFFlagPeekShowsOneSongOverLifetime()
				then {
					"peek_close",
					"music_playing_icon",
					"peek_track_details",
					"like_button",
				}
				else {
					"peek_close",
					"music_playing_icon",
					if GetFFlagSongbirdTranslationStrings()
						then "now_playing"
						else GetFStringChromeMusicIntegrationId(),
					"like_button",
				},
		})
	end
end

configurePeek()

local SPRING_CONFIG: ReactOtter.SpringOptions = {
	damping = 20,
	mass = 1,
	stiffness = 100,
}

local function lerp(a: number, b: number, t: number)
	return a + (b - a) * t
end

export type Props = {
	layoutOrder: number,
}

local function Peek(props: Props): React.Node?
	local style = useStyle()
	local frameRef = useRef(nil :: Frame?)
	local peekItemsRef = useRef(nil :: Types.PeekList?)
	local peekItems = useChromePeekItems()
	local prevPeekItems = usePrevious(peekItems)

	local isHovered = useHoverState(frameRef)

	local onComplete = useCallback(function(alpha)
		if alpha == 0 then
			peekItemsRef.current = nil
		end
	end, {})

	local binding, setGoal = ReactOtter.useAnimatedBinding(0, onComplete)

	useEffect(function()
		if isHovered then
			ChromeService:lockCurrentPeek()
		else
			ChromeService:unlockCurrentPeek()
		end
	end, { isHovered })

	useEffect(function()
		if GetFFlagFixPeekRenderingWithoutContent() then
			if peekItems ~= prevPeekItems then
				if peekItems and #peekItems > 0 and not peekItemsRef.current then
					peekItemsRef.current = peekItems
					setGoal(ReactOtter.spring(1, SPRING_CONFIG))
				else
					setGoal(ReactOtter.spring(0, SPRING_CONFIG))
				end
			end
		else
			if prevPeekItems and peekItems ~= prevPeekItems then
				if peekItemsRef.current then
					setGoal(ReactOtter.spring(0, SPRING_CONFIG))
				else
					peekItemsRef.current = peekItems
					setGoal(ReactOtter.spring(1, SPRING_CONFIG))
				end
			end
		end
	end, { peekItems, prevPeekItems } :: { unknown })

	if GetFFlagPeekShowsOnSongChange() then
		useMusicPeek(ChromeService)
	end

	if peekItemsRef.current then
		return React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
			ref = frameRef,
		}, {
			PeekContainer = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				Position = binding:map(function(alpha)
					return UDim2.fromScale(0, lerp(-2, 0, alpha))
				end),
				BackgroundTransparency = 1,
				SelectionGroup = true,
				SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
				SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
				SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
			}, {
				Layout = React.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),

				PeekPill = React.createElement("Frame", {
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
						integrations = peekItemsRef.current,
					}),
				}),
			}),
		})
	else
		return nil
	end
end

return Peek
