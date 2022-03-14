return function()
	local AppsFlyerUtil = require(script.Parent.AppsFlyerUtil)

	describe("AppsFlyerUtil", function()
		describe("replaceNewlines", function()
			it("should replace newlines", function()
				local str = "windows\r\nand\nlinux\r\nnewlines\nare so cool!"
				expect(AppsFlyerUtil.replaceNewlines(str)).to.equal(
					"windows and linux newlines are so cool!"
				)
			end)

			it("should work with a specific replacement", function()
				local str = "windows\r\nand\nlinux newlines"
				expect(AppsFlyerUtil.replaceNewlines(str, "!!")).to.equal(
					"windows!!and!!linux newlines"
				)
			end)
		end)

		describe("truncateLength", function()
			it("should work with the default argument of 140", function()
				-- 137 a's
				local longString = string.rep("a", 137)

				expect(
					AppsFlyerUtil.truncateLength(longString)
				).to.equal(longString)

				expect(
					AppsFlyerUtil.truncateLength(longString .. "aaa")
				).to.equal(longString .. "aaa")

				expect(
					AppsFlyerUtil.truncateLength(longString .. "aaaa")
				).to.equal(longString .. "...")
			end)

			it("should return strings less than or equal the length", function()
				expect(
					AppsFlyerUtil.truncateLength("0123456", 10)
				).to.equal("0123456")

				expect(
					AppsFlyerUtil.truncateLength("0123456789", 10)
				).to.equal("0123456789")
			end)

			it("should truncate ascii with no spaces", function()
				expect(
					AppsFlyerUtil.truncateLength("01234567890", 10)
				).to.equal("0123456...")
			end)

			it("should truncate with spaces", function()
				expect(
					AppsFlyerUtil.truncateLength("012 45 67890", 10)
				).to.equal("012 45...")
			end)

			it("should truncate with emojis", function()
				expect(
					AppsFlyerUtil.truncateLength("😊 😊 cool", 10)
				).to.equal("😊...")

				expect(
					AppsFlyerUtil.truncateLength("😊😊😊", 11)
				).to.equal("😊😊...")

				expect(
					AppsFlyerUtil.truncateLength("😊😊😊", 12)
				).to.equal("😊😊😊")
			end)
		end)

		describe("sanitizeDescription", function()
			it("should truncate new lines and work with emojis", function()
				local longDescription = "📢 UPDATE: World 31 is out! ⛏\r\n"
					.. "👍 LIKE IF YOU WANT MORE UPDATES!\r\n"
					.. "\r\n"
					.. "FEATURES:\r\n"
					.. "🐝 Experience the busy life of a bee!\r\n"
					.. "🍯 Collect pollen, turn it into honey and expand your plot!\r\n"
					.. "🌸 Thousands of flowers await you!\r\n"
					.. "👑 Show your skills and become the Queen Bee!\r\n"
					.. "\r\n"
					.. "Please join our group to stay tuned 🙂 https://www.roblox.com/groups/7083660/StealthWhale"
				expect(
					AppsFlyerUtil.sanitizeDescription(longDescription)
				).to.equal("📢 UPDATE: World 31 is out! ⛏ 👍 LIKE IF YOU WANT MORE UPDATES!  FEATURES: 🐝 Experience the busy life of a bee! 🍯 Collect...")
			end)
		end)
	end)
end
