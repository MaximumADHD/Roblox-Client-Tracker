local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local getTextBounds = require(script.Parent.getTextBounds)

return function()
	beforeAll(function(rootContext)
		rootContext.chatSettings = {
			TextSize = 16,
			Font = Enum.Font.GothamMedium,
			FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json"),
			MaxWidth = 300,
			Padding = 8,
			UIPadding = {
				PaddingBottom = UDim.new(8),
				PaddingLeft = UDim.new(8),
				PaddingRight = UDim.new(8),
				PaddingTop = UDim.new(8),
			},
		}
	end)

	describe("GIVEN ChatVersion is TextChatService", function()
		it("SHOULD calculate bounds correctly", function(c)
			local result = getTextBounds("hello world", c.chatSettings)
			expect(result).toEqual(Vector2.new(2277, 272))
		end)

		it("SHOULD calculate bounds correctly when FontFace setting is missing", function()
			local chatSettings = {
				TextSize = 16,
				Font = Enum.Font.GothamMedium,
				MaxWidth = 300,
				Padding = 8,
				UIPadding = {
					PaddingBottom = UDim.new(8),
					PaddingLeft = UDim.new(8),
					PaddingRight = UDim.new(8),
					PaddingTop = UDim.new(8),
				},
			}
			local result = getTextBounds("hello world", chatSettings)
			expect(result).toEqual(Vector2.new(2739, 272))
		end)

		it("SHOULD calculate bounds correctly when UIPadding setting is missing", function()
			local chatSettings = {
				TextSize = 16,
				Font = Enum.Font.GothamMedium,
				FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				MaxWidth = 300,
				Padding = 8,
			}
			local result = getTextBounds("hello world", chatSettings)
			expect(result).toEqual(Vector2.new(101, 32))
		end)
	end)

	describe("GIVEN ChatVersion is Legacy", function()
		it("SHOULD calculate bounds correctly", function(c)
			local mockTextChatService = {
				ChatVersion = Enum.ChatVersion.LegacyChatService,
			}
			local result = getTextBounds("hello world", c.chatSettings, mockTextChatService)
			expect(result).toEqual(Vector2.new(115, 32))
		end)
	end)
end
