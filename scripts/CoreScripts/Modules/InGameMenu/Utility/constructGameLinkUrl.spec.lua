local constructGameLinkUrl = require(script.Parent.constructGameLinkUrl)

return function()
    it("should return the correct game link URL", function()
        local placeId = 123456789
        local expectedUrl = "roblox.com/games/123456789"
        local actualUrl = constructGameLinkUrl(placeId)
        expect(actualUrl).to.equal(expectedUrl)
    end)
end
