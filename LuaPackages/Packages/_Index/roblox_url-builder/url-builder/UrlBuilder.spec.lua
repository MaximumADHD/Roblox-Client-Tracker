
return function()
	local UrlBuilder = require(script.Parent.UrlBuilder)

	describe("simple", function()
		local pattern = UrlBuilder.fromString("api:game/{universeId}/thumbnail?size={pxWidth|150}")

		it("should generate proper url", function()
			local url = pattern({
				universeId = "1356984689",
				pxWidth = 720,
			})
			expect(url).to.equal("https://api.roblox.com/game/1356984689/thumbnail?size=720")
		end)

		it("table values duplicate url parts", function()
			local url = pattern({
				universeId = {"1356984689", "8745654337"},
				pxWidth = {720, 320},
			})
			expect(url).to.equal("https://api.roblox.com/game/1356984689/8745654337/thumbnail?size=720&size=320")
		end)

		it("empty table should remove url part", function()
			local url = pattern({
				universeId = "1356984689",
				pxWidth = {},
			})
			expect(url).to.equal("https://api.roblox.com/game/1356984689/thumbnail")
		end)

		it("missing values should throw", function()
			local function getUrl()
				pattern({pxWidth = 720})
			end
			expect(getUrl).to.throw()
		end)

		it("missing optional values should not throw", function()
			local url = pattern({universeId = "1356984689"})
			expect(url).to.equal("https://api.roblox.com/game/1356984689/thumbnail?size=150")
		end)

	end)

	describe("complex", function()
		local pattern = UrlBuilder.fromString(" https://roblox.com/ test/{special}/path / // {empty}/{multiple}/ x ? {num}&param1=static&dupl={multiple}&")

		it("complex pattern/values with nultiple edge cases", function()
			local url = pattern({
				special = "$pec!al",
				num = 568,
				multiple = {"ab/", "c d"},
				empty = "",
			})
			expect(url).to.equal("https://roblox.com/test/%24pec!al/path/ab%2F/c%20d/x?num=568&param1=static&dupl=ab%2F&dupl=c%20d")
		end)
	end)

	describe("invalid patterns", function()

		it("should throw on malformed placeholder", function()
			local function invalidPattern()
				UrlBuilder.fromString("api:game/{universeI}d/thumbnail?size={pxWidth|150}")
			end
			expect(invalidPattern).to.throw()
		end)

		it("should throw on missing base", function()
			local function invalidPattern()
				UrlBuilder.fromString("/game/{universeId}/thumbnail?size={pxWidth|150}")
			end
			expect(invalidPattern).to.throw()
		end)

		it("should throw on missing parameter name", function()
			local function invalidPattern()
				UrlBuilder.fromString("api:game/{universeId}/thumbnail?={pxWidth|150}")
			end
			expect(invalidPattern).to.throw()
		end)

	end)

end
