local CorePackages = game:GetService("CorePackages")
local FFlagExpChatUseNewRepository = game:DefineFastFlag("ExpChatUseNewRepository", false)

if FFlagExpChatUseNewRepository then
    return require(CorePackages.Workspace.Packages.ExpChat)
else
    -- so long space cowboy
    return require(CorePackages.Packages.ExperienceChat) :: any
end
