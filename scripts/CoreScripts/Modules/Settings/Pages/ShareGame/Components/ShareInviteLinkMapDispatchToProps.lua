local CorePackages = game:GetService("CorePackages")
local dependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies

local ShareLinksNetworking = dependencies.ShareLinksNetworking
local ShareLinksRodux = dependencies.ShareLinksRodux

local mapDispatchToProps = function(dispatch)
    return {
        fetchShareInviteLink = function()
            dispatch(ShareLinksNetworking.GenerateLink.API({ linkType = ShareLinksRodux.Enums.LinkType.ExperienceInvite.rawValue() }))
        end
    }
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
