local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local ChromeConstants = require(Chrome.ChromeShared.Unibar.Constants)
local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local useMappedSignal = require(CorePackages.Workspace.Packages.Chrome).Hooks.useMappedSignal
local usePartyIcon = require(Chrome.Integrations.Party.usePartyIcon)

local MappedSignal = ChromeUtils.MappedSignal
local useTokens = Foundation.Hooks.useTokens
local UnibarStyle = require(CorePackages.Workspace.Packages.Chrome).UnibarStyle

local SubMenuContext = require(Chrome.ChromeShared.Unibar.SubMenuContext)
local InExperienceAppChatModal = require(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal)

local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local AVATAR_SIZE = 24

local ICON_OFF = "icons/menu/2-person-with-bubble"
local ICON_ON = "icons/menu/2-person-with-bubble-on"

local function PartyIcon(): React.ReactElement
	local tokens = useTokens()
	local unibarStyle
	local iconSize
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconSize = unibarStyle.ICON_SIZE
	else
		iconSize = ChromeConstants.ICON_SIZE
	end

	local visibilitySignal = MappedSignal.new(InExperienceAppChatModal.default.visibilitySignal.Event, function(visible)
		return InExperienceAppChatModal:getVisible()
	end)

	local visible = useMappedSignal(visibilitySignal)
	local icon = usePartyIcon(iconSize, AVATAR_SIZE, if visible then ICON_ON else ICON_OFF)

	local submenuTransition = React.useContext(SubMenuContext)
	local function getTransparency(transparency: number): any
		return if submenuTransition
			then submenuTransition:map(function(v)
				return transparency + (1 - transparency) * (1 - v)
			end)
			else transparency
	end

	return React.createElement(Foundation.View, {
		Size = UDim2.new(0, iconSize, 0, iconSize),
	}, {
		Icon = React.createElement(Foundation.Image, {
			Size = icon.size:map(function(value)
				return UDim2.fromOffset(value, value)
			end),
			backgroundStyle = if icon.image.backgroundColor
				then {
					Color3 = icon.image.backgroundColor,
					Transparency = getTransparency(0),
				}
				else tokens.Color.None,
			Image = icon.image.thumbnail,
			imageStyle = {
				Color3 = tokens.Color.Content.Emphasis.Color3,
				Transparency = getTransparency(tokens.Color.Content.Emphasis.Transparency),
			},
			tag = "anchor-center-center position-center-center radius-circle",
		}),
		Badge = React.createElement(Foundation.View, {
			Position = UDim2.new(1, -tokens.Stroke.Thicker, 0, tokens.Stroke.Thicker),
			backgroundStyle = {
				Color3 = tokens.Color.System.Success.Color3,
				Transparency = getTransparency(tokens.Color.System.Success.Transparency),
			},
			stroke = {
				Color = tokens.Color.Surface.Surface_0.Color3,
				Transparency = getTransparency(tokens.Color.Surface.Surface_0.Transparency),
				Thickness = tokens.Stroke.Thicker,
			},
			tag = "anchor-top-right radius-circle size-200 stroke-thicker",
			ZIndex = 2,
		}),
	})
end

return PartyIcon
