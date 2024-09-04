local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local React = require(CorePackages.Packages.React)
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local AppTopBanner = require(CorePackages.Workspace.Packages.AppTopBanner).AppTopBanner
local AppTopBannerType = require(CorePackages.Workspace.Packages.AppTopBanner).Enums.AppTopBannerType

local GetFFlagLuaAppEnableSquadPage =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableSquadPage

local contentMaps = {
    [AppTopBannerType.None] = nil,
    [AppTopBannerType.ActiveSquad] = if GetFFlagLuaAppEnableSquadPage() then require(CorePackages.Workspace.Packages.SquadsCore).SquadTopBanner else nil,
} :: { [string]: React.ElementType? }

type AppTopBannerContainerProps = {
    displayOrder: number,
}

local function AppTopBannerContainer(props: AppTopBannerContainerProps)
    local safeZoneTopHeight, setSafeZoneTopHeight = React.useState(GuiService:GetSafeZoneOffsets().top)
    React.useEffect(function()
        local connection: RBXScriptConnection? = GuiService.SafeZoneOffsetsChanged:Connect(function()
            setSafeZoneTopHeight(GuiService:GetSafeZoneOffsets().top)
        end)

        return function()
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end, {})

    return React.createElement("ScreenGui", {
        Enabled = true,
        DisplayOrder = props.displayOrder,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        IgnoreGuiInset = true,
        OnTopOfCoreBlur = true,
        ScreenInsets = Enum.ScreenInsets.None,
        ClipToDeviceSafeArea = false,
        SafeAreaCompatibility = Enum.SafeAreaCompatibility.None,
    }, {
        AppTopBanner = React.createElement(AppTopBanner, {
            contentMaps = contentMaps,
            deviceStatusBarHeight = safeZoneTopHeight,
        }),
    })
end

return AppTopBannerContainer
