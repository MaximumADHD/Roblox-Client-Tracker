local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local useTokens = Foundation.Hooks.useTokens
local IconName = Foundation.Enums.IconName
local IconSize = Foundation.Enums.IconSize
local IconVariant = Foundation.Enums.IconVariant

local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local useMappedSignal = require(Chrome.ChromeShared.Hooks.useMappedSignal)
local SubMenuContext = require(Chrome.ChromeShared.Unibar.SubMenuContext)

export type Props = {
	isActive: ChromeUtils.MappedSignal<boolean>,
}

local function AvatarSwitcherIcon(props: Props)
	local isActive = useMappedSignal(props.isActive)
	local submenuTransition = React.useContext(SubMenuContext)
	local tokens = useTokens()

	local style = if submenuTransition
		then submenuTransition:map(function(v)
			return {
				Color3 = tokens.Color.Content.Default.Color3,
				Transparency = math.lerp(1, tokens.Color.Content.Default.Transparency, v),
			}
		end)
		else tokens.Color.Content.Default

	return React.createElement(Foundation.Icon, {
		name = IconName.CirclePerson,
		size = IconSize.Large,
		variant = if isActive then IconVariant.Filled else IconVariant.Regular,
		style = style,
	})
end

return AvatarSwitcherIcon
