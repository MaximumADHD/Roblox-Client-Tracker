local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactOtter = require(CorePackages.Packages.ReactOtter)
local ReactUtils = require(CorePackages.Workspace.Packages.ReactUtils)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local UIBlox = require(CorePackages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local GuiObjectUtils = require(CorePackages.Workspace.Packages.GuiObjectUtils)

local ChromeService = require(Chrome.Service)
local IntegrationRow = require(Chrome.Peek.IntegrationRow)
local useChromePeekId = require(Chrome.Hooks.useChromePeekId)
local useChromePeekItems = require(Chrome.Hooks.useChromePeekItems)
local Types = require(Chrome.Service.Types)
local shouldUseSmallPeek = require(Chrome.Integrations.MusicUtility.shouldUseSmallPeek)

local useHoverState = GuiObjectUtils.useHoverState
local useMusicPeek = Songbird.useMusicPeek
local usePrevious = ReactUtils.usePrevious
local useEffect = React.useEffect
local useRef = React.useRef
local useCallback = React.useCallback

local GetFFlagEnableSongbirdPeek = require(Chrome.Flags.GetFFlagEnableSongbirdPeek)
local GetFFlagPeekShowsOneSongOverLifetime =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekShowsOneSongOverLifetime
local GetFFlagPeekMobilePortraitResizing =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekMobilePortraitResizing
local GetFFlagPeekHoverStateFix = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekHoverStateFix
local GetFFlagPeekUseUpdatedDesign = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekUseUpdatedDesign
local GetFFlagEnablePeekStaticMusicIconIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnablePeekStaticMusicIconIntegration
local GetFFlagFixPeekTogglingWhenSpammingUnibar =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixPeekTogglingWhenSpammingUnibar

local useStyle = UIBlox.Core.Style.useStyle
local ControlState = Foundation.Enums.ControlState
local StateLayerAffordance = Foundation.Enums.StateLayerAffordance

function configurePeek()
	if GetFFlagEnableSongbirdPeek() then
		ChromeService:configurePeek("music_peek", {
			integrations = if GetFFlagPeekShowsOneSongOverLifetime()
				then {
					"peek_close",
					if GetFFlagEnablePeekStaticMusicIconIntegration() then "music_icon" else "music_playing_icon",
					"peek_track_details",
					"like_button",
				}
				else {
					"peek_close",
					if GetFFlagEnablePeekStaticMusicIconIntegration() then "music_icon" else "music_playing_icon",
					"now_playing",
					"like_button",
				},
		})
	end

	-- Same as above music_peek minus peek_close
	if GetFFlagPeekMobilePortraitResizing() then
		ChromeService:configurePeek("music_peek_portrait", {
			integrations = {
				if GetFFlagEnablePeekStaticMusicIconIntegration() then "music_icon" else "music_playing_icon",
				"peek_track_details",
				"like_button",
			},
		})
	end

	-- In the new design, the same components are rendered regardless of screen size
	-- TO-DO: clean up music_peek_portrait mentions once design is confirmed
	if GetFFlagPeekUseUpdatedDesign() then
		ChromeService:configurePeek("music_peek", {
			integrations = {
				if GetFFlagEnablePeekStaticMusicIconIntegration() then "music_icon" else "music_playing_icon",
				"peek_track_details",
				"peek_close",
			},
		})
		ChromeService:configurePeek("music_peek_portrait", {
			integrations = {
				if GetFFlagEnablePeekStaticMusicIconIntegration() then "music_icon" else "music_playing_icon",
				"peek_track_details",
				"peek_close",
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
	local frameRef = if GetFFlagPeekHoverStateFix() then nil else useRef(nil :: Frame?)
	local peekItemsRef = useRef(nil :: Types.PeekList?)
	local peekItems = useChromePeekItems()
	local peekId
	local prevPeekId
	if GetFFlagFixPeekTogglingWhenSpammingUnibar() then
		peekId = useChromePeekId()
		prevPeekId = usePrevious(peekId)
	end
	local prevPeekItems = if GetFFlagFixPeekTogglingWhenSpammingUnibar() then nil else usePrevious(peekItems)

	local isHovered = if GetFFlagPeekHoverStateFix() then nil else useHoverState(frameRef :: never)

	local onComplete = useCallback(function(alpha)
		if alpha == 0 then
			peekItemsRef.current = nil
		end
	end, {})

	local binding, setGoal = ReactOtter.useAnimatedBinding(0, onComplete)

	local onStateChanged = if GetFFlagPeekHoverStateFix()
		then useCallback(function(state)
			if state == ControlState.Pressed or state == ControlState.Hover then
				ChromeService:lockCurrentPeek()
			else
				ChromeService:unlockCurrentPeek()
			end
		end, {})
		else nil :: never

	if not GetFFlagPeekHoverStateFix() then
		useEffect(function()
			if isHovered then
				ChromeService:lockCurrentPeek()
			else
				ChromeService:unlockCurrentPeek()
			end
		end, { isHovered })
	end

	if GetFFlagFixPeekTogglingWhenSpammingUnibar() then
		useEffect(function()
			if peekId ~= prevPeekId then
				if peekItems and #peekItems > 0 and not peekItemsRef.current then
					peekItemsRef.current = peekItems
					setGoal(ReactOtter.spring(1, SPRING_CONFIG))
				else
					setGoal(ReactOtter.spring(0, SPRING_CONFIG))
				end
			end
		end, { peekId, prevPeekId, peekItems } :: { unknown })
	else
		useEffect(function()
			if peekItems ~= prevPeekItems then
				if peekItems and #peekItems > 0 and not peekItemsRef.current then
					peekItemsRef.current = peekItems
					setGoal(ReactOtter.spring(1, SPRING_CONFIG))
				else
					setGoal(ReactOtter.spring(0, SPRING_CONFIG))
				end
			end
		end, { peekItems, prevPeekItems } :: { unknown })
	end

	if GetFFlagPeekMobilePortraitResizing() then
		useMusicPeek(ChromeService, shouldUseSmallPeek())
	else
		useMusicPeek(ChromeService)
	end

	if peekItemsRef.current then
		return React.createElement(
			if GetFFlagPeekHoverStateFix() then Foundation.View else "Frame",
			if GetFFlagPeekHoverStateFix()
				then {
					Size = UDim2.fromScale(1, 1),
					LayoutOrder = props.layoutOrder,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					onStateChanged = onStateChanged,
				}
				else {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					LayoutOrder = props.layoutOrder,
					ref = frameRef,
				},
			{
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
							CornerRadius = if GetFFlagPeekUseUpdatedDesign()
								then UDim.new(0, style.Tokens.Global.Size_100)
								else UDim.new(1, 0),
						}),

						Padding = if GetFFlagPeekUseUpdatedDesign()
							then nil
							else React.createElement("UIPadding", {
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
			}
		)
	else
		return nil
	end
end

return Peek
