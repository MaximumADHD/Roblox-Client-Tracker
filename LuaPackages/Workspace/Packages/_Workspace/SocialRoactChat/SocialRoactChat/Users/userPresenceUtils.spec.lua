--!nonstrict
return function()
	local userPresenceUtils = require(script.Parent.userPresenceUtils)
	local getUserDisplayPresence = userPresenceUtils.getUserDisplayPresence
	local userPresenceImage = userPresenceUtils.userPresenceImage
	local userPresenceText = userPresenceUtils.userPresenceText

	local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
	local dependencies = require(SocialRoactChat.dependencies)
	local RoduxPresence = dependencies.RoduxPresence
	local EnumPresenceType = RoduxPresence.Enums.PresenceType

	local mockPresence = {
		Offline = {
			userPresenceType = EnumPresenceType.Offline,
			lastLocation = "Test location",
		},
		Online = {
			userPresenceType = EnumPresenceType.Online,
			lastLocation = "Test location",
		},
		InGame = {
			userPresenceType = EnumPresenceType.InGame,
			lastLocation = nil,
		},
		InGameWithLocation = {
			userPresenceType = EnumPresenceType.InGame,
			lastLocation = "Test location",
		},
		InStudio = {
			userPresenceType = EnumPresenceType.InStudio,
			lastLocation = nil,
		},
	}

	describe("WHEN getUserDisplayPresence called", function()
		it("SHOULD return empty text and not image if presence object is nil", function()
			local presence = getUserDisplayPresence(nil)
			expect(presence.image).to.equal(nil)
			expect(presence.text).to.be.ok().to.be.equal("")
		end)

		it("SHOULD return correct text and image for Offline presence", function()
			local presence = getUserDisplayPresence(mockPresence.Offline)
			expect(presence.image).to.be.ok().to.be.equal(userPresenceImage[EnumPresenceType.Offline])
			expect(presence.text).to.be.ok().to.be.equal(userPresenceText[EnumPresenceType.Offline])
		end)

		it("SHOULD return correct text and image for Online presence", function()
			local presence = getUserDisplayPresence(mockPresence.Online)
			expect(presence.image).to.be.ok().to.be.equal(userPresenceImage[EnumPresenceType.Online])
			expect(presence.text).to.be.ok().to.be.equal(userPresenceText[EnumPresenceType.Online])
		end)

		it("SHOULD return correct text and image for InGame presence without last location", function()
			local presence = getUserDisplayPresence(mockPresence.InGame)
			expect(presence.image).to.be.ok().to.be.equal(userPresenceImage[EnumPresenceType.InGame])
			expect(presence.text).to.be.ok().to.be.equal(userPresenceText[EnumPresenceType.Online])
		end)

		it("SHOULD return correct text and image for InGame presence with last location", function()
			local presence = getUserDisplayPresence(mockPresence.InGameWithLocation)
			expect(presence.image).to.be.ok().to.be.equal(userPresenceImage[EnumPresenceType.InGame])
			expect(presence.text).to.be.ok().to.be.equal(mockPresence.InGameWithLocation.lastLocation)
		end)

		it("SHOULD return correct text and image for InStudio presence without last location", function()
			local presence = getUserDisplayPresence(mockPresence.InStudio)
			expect(presence.image).to.be.ok().to.be.equal(userPresenceImage[EnumPresenceType.InStudio])
			expect(presence.text).to.be.ok().to.be.equal(userPresenceText[EnumPresenceType.Online])
		end)
	end)
end
