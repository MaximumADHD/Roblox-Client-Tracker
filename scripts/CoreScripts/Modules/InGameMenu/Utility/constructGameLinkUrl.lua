local InGameMenu = script.Parent.Parent
local Url = require(InGameMenu.Network.Url)

local function constructGameLinkUrl(placeId: number): string
    return `{Url.DOMAIN}games/{placeId}`
end

return constructGameLinkUrl
