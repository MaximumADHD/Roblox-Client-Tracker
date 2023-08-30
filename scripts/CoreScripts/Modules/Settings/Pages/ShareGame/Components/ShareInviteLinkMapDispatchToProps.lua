local CorePackages = game:GetService("CorePackages")
local dependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies

local NetworkingShareLinks = dependencies.NetworkingShareLinks
local RoduxShareLinks = dependencies.RoduxShareLinks

local mapDispatchToProps = function(dispatch)
    return {
        fetchShareInviteLink = function()
            dispatch(NetworkingShareLinks.GenerateLink.API({ linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue() }))
        end
    }
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
