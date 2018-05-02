return function()
	local CoreGui = game:GetService("CoreGui")

	local Modules = CoreGui.RobloxGui.Modules
	local LuaChat = Modules.LuaChat

	local MessageModel = require(LuaChat.Models.Message)
	local ChatBubble = require(LuaChat.Components.ChatBubble)
	local AppState = require(LuaChat.AppState)

	describe("new", function()
		it("should create with no errors", function()
			local appState = AppState.new()
			local message = MessageModel.mock({
				content = "testing",
			})

			local chat = ChatBubble.new(appState, message)

			expect(chat).to.be.ok()
		end)
	end)

	describe("asset card creation", function()
		describe("web protocol filtering", function()
			it("should make a card with http:// prefix", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "http://www.roblox.com/games/1818/Classic-Crossroads"
				})

				local chat = ChatBubble.new(appState, message)
				expect(#chat.bubbles).to.equal(1)
				expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[1].assetId).to.equal("1818")
			end)

			it("should make a card with https:// prefix", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "https://www.roblox.com/games/1818/Classic-Crossroads"
				})

				local chat = ChatBubble.new(appState, message)
				expect(#chat.bubbles).to.equal(1)
				expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[1].assetId).to.equal("1818")
			end)

			it("should make a card with no protocol prefix", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "www.roblox.com/games/1818/Classic-Crossroads"
				})

				local chat = ChatBubble.new(appState, message)
				expect(#chat.bubbles).to.equal(1)
				expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[1].assetId).to.equal("1818")
			end)
		end)

		describe("web resource names", function()
			describe("www.", function()
				it("should make a card with https:// protocol", function()
					local appState = AppState.new()
					local message1 = MessageModel.mock({
						content = "https://www.roblox.com/games/1818/Classic-Crossroads"
					})
					local chat1 = ChatBubble.new(appState, message1)
					expect(#chat1.bubbles).to.equal(1)
					expect(chat1.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat1.bubbles[1].assetId).to.equal("1818")
				end)
				it("should make a card with http:// protocol", function()
					local appState = AppState.new()
					local message2 = MessageModel.mock({
						content = "http://www.roblox.com/games/1818/Classic-Crossroads"
					})
					local chat2 = ChatBubble.new(appState, message2)
					expect(#chat2.bubbles).to.equal(1)
					expect(chat2.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat2.bubbles[1].assetId).to.equal("1818")
				end)

				it("should make a card with no protocol", function()
					local appState = AppState.new()
					local message3 = MessageModel.mock({
						content = "www.roblox.com/games/1818/Classic-Crossroads"
					})
					local chat3 = ChatBubble.new(appState, message3)
					expect(#chat3.bubbles).to.equal(1)
					expect(chat3.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat3.bubbles[1].assetId).to.equal("1818")
				end)
			end)

			describe("web.", function()
				it("should make a card with https:// protocol", function()
					local appState = AppState.new()
					local message1 = MessageModel.mock({
						content = "https://web.roblox.com/games/1818/Classic-Crossroads"
					})
					local chat1 = ChatBubble.new(appState, message1)
					expect(#chat1.bubbles).to.equal(1)
					expect(chat1.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat1.bubbles[1].assetId).to.equal("1818")
				end)
				it("should make a card with http:// protocol", function()
					local appState = AppState.new()
					local message2 = MessageModel.mock({
						content = "http://web.roblox.com/games/1818/Classic-Crossroads"
					})
					local chat2 = ChatBubble.new(appState, message2)
					expect(#chat2.bubbles).to.equal(1)
					expect(chat2.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat2.bubbles[1].assetId).to.equal("1818")
				end)

				it("should make a card with no protocol", function()
					local appState = AppState.new()
					local message3 = MessageModel.mock({
						content = "web.roblox.com/games/1818/Classic-Crossroads"
					})
					local chat3 = ChatBubble.new(appState, message3)
					expect(#chat3.bubbles).to.equal(1)
					expect(chat3.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat3.bubbles[1].assetId).to.equal("1818")
				end)
			end)
		end)

		describe("whitelisted domains", function()
			describe("roblox.com", function()
				it("should make a card with http protocol prefixes", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "https://www.roblox.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)

				it("should make a card with only a resouce name", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "www.roblox.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)

				it("should make a card without a http protocol prefixes", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "roblox.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)
			end)

			describe("sitetest1.robloxlabs.com", function()
				it("should make a card with http protocol prefixes", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "https://www.sitetest1.robloxlabs.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)

				it("should make a card with only a resouce name", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "web.sitetest1.robloxlabs.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)

				it("should make a card without a http protocol prefixes", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "sitetest1.robloxlabs.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)
			end)

			describe("gametest1.robloxlabs.com", function()
				it("should make a card with http protocol prefixes", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "https://www.gametest1.robloxlabs.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)

				it("should make a card with only a resouce name", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "web.gametest1.robloxlabs.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)

				it("should make a card without a http protocol prefixes", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "gametest1.robloxlabs.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
					expect(chat.bubbles[1].assetId).to.equal("1818")
				end)
			end)

			describe("invalid domains", function()
				it("should not create an asset card for non roblox domains", function()
					local appState = AppState.new()
					local message = MessageModel.mock({
						content = "https://www.google.com/games/1818/Classic-Crossroads"
					})

					local chat = ChatBubble.new(appState, message)

					expect(#chat.bubbles).to.equal(1)
					expect(chat.bubbles[1].bubbleType).to.never.equal("AssetCard")
				end)
			end)
		end)

		describe("game link format", function()
			it("should create an asset card with link without appended title text", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "https://www.roblox.com/games/1818/"
				})

				local chat = ChatBubble.new(appState, message)

				expect(#chat.bubbles).to.equal(1)
				expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[1].assetId).to.equal("1818")
			end)

			it("should ignore case when creating an asset card with link", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "https://www.ROBLOX.com/games/1818/"
				})

				local chat = ChatBubble.new(appState, message)

				expect(#chat.bubbles).to.equal(1)
				expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[1].assetId).to.equal("1818")
			end)

			it("should not create an asset card for non games", function()
				local appState = AppState.new()
				local message1 = MessageModel.mock({
					content = "https://www.roblox.com/users/1922632/profile"
				})

				local chat1 = ChatBubble.new(appState, message1)

				expect(#chat1.bubbles).to.equal(1)
				expect(chat1.bubbles[1].bubbleType).to.never.equal("AssetCard")

				local message2 = MessageModel.mock({
					content = "https://www.roblox.com/Groups/Group.aspx?gid=3475371"
				})

				local chat2 = ChatBubble.new(appState, message2)

				expect(#chat2.bubbles).to.equal(1)
				expect(chat2.bubbles[1].bubbleType).to.never.equal("AssetCard")

				local message3 = MessageModel.mock({
					content = "https://www.roblox.com/catalog/100929604/Green-Sparkle-Time-Fedora"
				})

				local chat3 = ChatBubble.new(appState, message3)

				expect(#chat3.bubbles).to.equal(1)
				expect(chat3.bubbles[1].bubbleType).to.never.equal("AssetCard")
			end)
		end)

		describe("roblox links with text", function()
			it("should create one UserChatBubble when presented with raw text", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "testing",
				})

				local chat = ChatBubble.new(appState, message)

				expect(#chat.bubbles).to.equal(1)
				expect(chat.bubbles[1].bubbleType).to.equal("UserChatBubble")
				expect(chat.bubbles[1].textContent.Text).to.equal("testing")
			end)

			it("should create one an AssetCard when presented with roblox link", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "https://www.roblox.com/games/1818/Classic-Crossroads",
				})

				local chat = ChatBubble.new(appState, message)

				expect(#chat.bubbles).to.equal(1)
				expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[1].assetId).to.equal("1818")
			end)

			it("should create two cards when presented a link with text if the link is first", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "https://www.roblox.com/games/1818/Classic-Crossroads Play my game!"
				})

				local chat = ChatBubble.new(appState, message)

				expect(#chat.bubbles).to.equal(2)
				expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[1].assetId).to.equal("1818")
				expect(chat.bubbles[2].bubbleType).to.equal("UserChatBubble")
				expect(chat.bubbles[2].textContent.Text).to.equal(" Play my game!")
			end)

			it("should create two cards when presented a link with text if the link is second", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "Play my game! https://www.roblox.com/games/1818/Classic-Crossroads"
				})

				local chat = ChatBubble.new(appState, message)

				expect(#chat.bubbles).to.equal(2)
				expect(chat.bubbles[1].bubbleType).to.equal("UserChatBubble")
				expect(chat.bubbles[1].textContent.Text).to.equal("Play my game! ")
				expect(chat.bubbles[2].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[2].assetId).to.equal("1818")
			end)

			it("should create three cards when presented a link with text", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "Play my game! https://www.roblox.com/games/1818/Classic-Crossroads Or dont."
				})

				local chat = ChatBubble.new(appState, message)

				expect(#chat.bubbles).to.equal(3)
				expect(chat.bubbles[1].bubbleType).to.equal("UserChatBubble")
				expect(chat.bubbles[1].textContent.Text).to.equal("Play my game! ")
				expect(chat.bubbles[2].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[2].assetId).to.equal("1818")
				expect(chat.bubbles[3].bubbleType).to.equal("UserChatBubble")
				expect(chat.bubbles[3].textContent.Text).to.equal(" Or dont.")
			end)

			it("should optionally accept the final / when parsing a roblox link", function()
				local appState = AppState.new()
				local message1 = MessageModel.mock({
					content = "https://www.roblox.com/games/1818/"
				})
				local chat1 = ChatBubble.new(appState, message1)

				expect(#chat1.bubbles).to.equal(1)
				expect(chat1.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat1.bubbles[1].assetId).to.equal("1818")

				local message2 = MessageModel.mock({
					content = "https://www.roblox.com/games/1337"
				})
				local chat2 = ChatBubble.new(appState, message2)

				expect(#chat2.bubbles).to.equal(1)
				expect(chat2.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat2.bubbles[1].assetId).to.equal("1337")
			end)

			it("should handle text in between two links", function()
				local appState = AppState.new()
				local message = MessageModel.mock({
					content = "https://www.roblox.com/games/1818/ or https://www.roblox.com/games/1337"
				})

				local chat = ChatBubble.new(appState, message)

				expect(#chat.bubbles).to.equal(3)
				expect(chat.bubbles[1].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[1].assetId).to.equal("1818")
				expect(chat.bubbles[2].bubbleType).to.equal("UserChatBubble")
				expect(chat.bubbles[2].textContent.Text).to.equal(" or ")
				expect(chat.bubbles[3].bubbleType).to.equal("AssetCard")
				expect(chat.bubbles[3].assetId).to.equal("1337")
			end)
		end)
	end)
end