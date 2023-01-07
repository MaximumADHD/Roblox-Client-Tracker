return function()
	local getGameIcon = require(script.Parent.getGameIcon)

	describe("GetGameIcon", function()
		it("should return a game's icon url if it exists", function()
			local universeId = 123
			local mockState = {
				GameIcons = {
					[universeId] = { url = "iconUrl" },
				},
			}

			expect(getGameIcon(mockState, universeId)).to.equal(mockState.GameIcons[universeId].url)
		end)

		it("should return an empty string if there's no data for a universe", function()
			local universeId = 123
			local mockState = {
				GameIcons = {},
			}

			expect(getGameIcon(mockState, universeId)).to.equal("")
		end)
	end)
end
