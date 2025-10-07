local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local Foundation = require(CorePackages.Packages.Foundation)
local useTokens = Foundation.Hooks.useTokens
local IconName = Foundation.Enums.IconName
local Visibility = Foundation.Enums.Visibility
local IconButton = Foundation.IconButton
local ScrollView = Foundation.ScrollView
local Text = Foundation.Text
local View = Foundation.View

local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local RobloxAppHooks = require(CorePackages.Workspace.Packages.RobloxAppHooks)
local useDeviceOrientation = RobloxAppHooks.useDeviceOrientation

local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local useBreakpointXOrLarger = Responsive.useBreakpointXOrLarger

local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local useDispatch = RoactUtils.Hooks.RoactRodux.useDispatch

local PeopleService = require(CorePackages.Workspace.Packages.PeopleService)

local ProfilePlatform = require(CorePackages.Workspace.Packages.ProfilePlatform)
local getProfilePlatform = ProfilePlatform.getProfilePlatform
local useDynamicSizeMargin = ProfilePlatform.useDynamicSizeMargin
local ProfileWrapperContext = ProfilePlatform.ProfileWrapperContext
local CurrentlyWearing = ProfilePlatform.CurrentlyWearing

local AddConnectionButton = require(script.Parent.AddConnectionButton)
local ProfileHeader = require(script.Parent.ProfileHeader)

type PlayerProfileProps = {
	userId: number,
	closePage: () -> (),
}

local PlayerProfile = function(props: PlayerProfileProps): React.ReactNode
	local tokens = useTokens()

	local profileWrapperContext = React.useContext(ProfileWrapperContext)
	local profileId = profileWrapperContext.profileId
	local profileType = profileWrapperContext.profileType

	local FriendStatusStore = React.useMemo(function()
		return PeopleService.getService("FriendStatusStore")
	end, {})

	local player = React.useMemo(function()
		return if props.userId then Players:GetPlayerByUserId(props.userId) else nil
	end, { props.userId })

	local shouldShowConnectionButton =
		SignalsReact.useSignalState(FriendStatusStore.getShouldShowFriendButton(props.userId, player))

	local deviceOrientation = useDeviceOrientation()
	local isWide = useBreakpointXOrLarger(Responsive.Keys.Medium)
	local isPortrait = deviceOrientation == RobloxAppEnums.DeviceOrientationMode.Portrait
	local isSmallPortrait = isPortrait and not isWide

	local sideMargin, updateSideMargin = useDynamicSizeMargin()

	local isLoading, setIsLoading = React.useState(true)
	local isError, setIsError = React.useState(false)

	local dispatch = useDispatch()

	React.useEffect(function()
		dispatch(getProfilePlatform.API({
				profileId = profileId,
				profileType = profileType,
				components = {
					{
						component = ProfilePlatform.Components.CurrentlyWearing,
					},
					{
						component = ProfilePlatform.Components.UserProfileHeader,
					},
				} :: { any },
				includeComponentOrdering = false,
				onlyEssentialComponents = true,
			}))
			:andThen(function(response)
				setIsLoading(false)
				setIsError(false)
			end)
			:catch(function(e)
				setIsLoading(false)
				setIsError(true)
			end)
	end, { profileId, profileType })

	if isLoading then
		return nil
	end

	if isError then
		return React.createElement(View, {
			tag = "size-full col",
		}, {
			BackBar = React.createElement(View, {
				tag = "size-full-0 auto-y row padding-xsmall",
				LayoutOrder = 1,
			}, {
				BackButton = React.createElement(IconButton, {
					icon = IconName.ChevronLargeLeft,
					onActivated = props.closePage,
				}),
			}),
			ErrorMessage = React.createElement(Text, {
				tag = "size-full-0 auto-y content-default text-title-medium",
				Text = "Error loading profile",
				LayoutOrder = 2,
			}),
		})
	end

	return React.createElement(View, {
		tag = "size-full padding-bottom-medium",
		onAbsoluteSizeChanged = updateSideMargin,
	}, {
		BackBar = React.createElement(View, {
			tag = "size-full-0 auto-y row padding-xsmall",
			LayoutOrder = 1,
		}, {
			BackButton = React.createElement(IconButton, {
				icon = IconName.ChevronLargeLeft,
				onActivated = props.closePage,
			}),
		}),
		ScrollView = React.createElement(ScrollView, {
			tag = "size-full",
			scroll = {
				scrollBarVisibility = Visibility.Auto,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				CanvasSize = UDim2.fromScale(1, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
			},
			layout = {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, tokens.Padding.XXLarge),
			},
			padding = {
				top = UDim.new(0, 48), -- Remove when UserProfileAvatar is added
			},
			LayoutOrder = 2,
		}, {
			ProfileHeaderContainer = React.createElement(View, {
				tag = {
					["size-full-0 auto-y"] = true,
					["col gap-xxlarge"] = isSmallPortrait,
				},
				LayoutOrder = 1,
			}, {
				ProfileHeader = React.createElement(ProfileHeader, {
					profileId = profileId,
					layoutOrder = 1,
				}),
				AddConnectionButtonContainer = if shouldShowConnectionButton
					then React.createElement(View, {
						tag = {
							["size-full-0 auto-y"] = isSmallPortrait,
							["size-2500-2200 row align-y-center"] = not isSmallPortrait and not isWide,
							["size-3000-2200 row align-y-center"] = not isSmallPortrait and isWide,
						},
						padding = if isSmallPortrait
							then {
								left = UDim.new(0, sideMargin),
								right = UDim.new(0, sideMargin),
							}
							else nil,
						AnchorPoint = Vector2.new(1, 0),
						Position = UDim2.new(1, -sideMargin, 0, 0),
						ZIndex = 2,
						LayoutOrder = 2,
					}, {
						AddConnectionButton = React.createElement(AddConnectionButton, {
							userId = props.userId,
						}),
					})
					else nil,
			}),
			CurrentlyWearingCarousel = React.createElement(CurrentlyWearing, {
				layoutOrder = 3,
			}),
		}),
	})
end

return React.memo(PlayerProfile)
