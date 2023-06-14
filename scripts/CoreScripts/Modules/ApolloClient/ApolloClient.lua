local CorePackages = game:GetService("CorePackages")

local initializeApolloClient = require(CorePackages.Workspace.Packages.RobloxApolloClient).initializeApolloClient
local apolloClient = initializeApolloClient({})

return apolloClient
