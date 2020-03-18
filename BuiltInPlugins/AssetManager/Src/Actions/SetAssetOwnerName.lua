local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(assetId, username)
    assert(type(assetId) == "number",
        string.format("SetAssetOwnerName requires assetId to be a string, not %s", type(assetId)))
    assert(type(username) == "string",
        string.format("SetAssetOwnerName requires username to be a string, not %s", type(username)))

    return {
        assetId = assetId,
        username = username,
    }
end)