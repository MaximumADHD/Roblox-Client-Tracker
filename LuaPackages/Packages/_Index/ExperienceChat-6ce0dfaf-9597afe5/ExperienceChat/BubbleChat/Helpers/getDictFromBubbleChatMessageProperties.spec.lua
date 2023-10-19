local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local getDictFromBubbleChatMessageProperties = require(script.Parent.getDictFromBubbleChatMessageProperties)

return function()
	game:SetFastFlagForTesting("ReplicateUIPaddingChildProperties", true)

	describe("GIVEN a BubbleChatMessageProperties instance", function()
		local BubbleChatMessageProperties = Instance.new("BubbleChatMessageProperties")
		BubbleChatMessageProperties.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
		BubbleChatMessageProperties.BackgroundTransparency = 0.9
		BubbleChatMessageProperties.FontFace = Font.new("rbxasset://fonts/families/Arial.json")
		BubbleChatMessageProperties.TextColor3 = Color3.fromRGB(110, 110, 110)
		BubbleChatMessageProperties.TextSize = 25

		it("SHOULD copy over the instance properties to a dictionary", function()
			local res = getDictFromBubbleChatMessageProperties(BubbleChatMessageProperties)

			local properties = { "BackgroundColor3", "BackgroundTransparency", "FontFace", "TextColor3", "TextSize" }
			for _, property in ipairs(properties) do
				expect(res[property]).toEqual(BubbleChatMessageProperties[property])
			end

			-- No children parented to BubbleChatMessageProperties
			expect(res.ImageLabel).toBeNil()
			expect(res.UICorner).toBeNil()
			expect(res.UIGradient).toBeNil()
			expect(res.UIPadding).toBeNil()
		end)

		it("SHOULD copy over the ImageLabel child properties if an ImageLabel is parented", function()
			local ImageLabel = Instance.new("ImageLabel")
			ImageLabel.Image = "rbxassetid://2610133241"
			ImageLabel.ImageColor3 = Color3.fromRGB(120, 120, 120)
			ImageLabel.ImageRectOffset = Vector2.new()
			ImageLabel.ImageRectSize = Vector2.new()
			ImageLabel.ScaleType = Enum.ScaleType.Stretch
			ImageLabel.SliceCenter = Rect.new(Vector2.new(), Vector2.new())
			ImageLabel.SliceScale = 1
			ImageLabel.TileSize = UDim2.fromScale(1, 1)
			ImageLabel.Parent = BubbleChatMessageProperties
			local res = getDictFromBubbleChatMessageProperties(BubbleChatMessageProperties)

			local properties = {
				"Image",
				"ImageColor3",
				"ImageRectOffset",
				"ImageRectSize",
				"ScaleType",
				"SliceCenter",
				"SliceScale",
				"TileSize",
			}
			for _, property in ipairs(properties) do
				expect(res.ImageLabel[property]).toEqual(ImageLabel[property])
			end
		end)

		it("SHOULD copy over the UICorner child properties if an UICorner is parented", function()
			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(5, 5)
			UICorner.Parent = BubbleChatMessageProperties
			local res = getDictFromBubbleChatMessageProperties(BubbleChatMessageProperties)

			expect(res.UICorner["CornerRadius"]).toEqual(UICorner["CornerRadius"])
		end)

		it("SHOULD copy over the UIGradient child properties if an UIGradient is parented", function()
			local UIGradient = Instance.new("UIGradient")
			UIGradient.Enabled = true
			UIGradient.Color = ColorSequence.new(Color3.fromRGB(150, 150, 150), Color3.fromRGB(250, 250, 250))
			UIGradient.Offset = Vector2.new()
			UIGradient.Rotation = 5
			UIGradient.Transparency = NumberSequence.new(1)
			UIGradient.Parent = BubbleChatMessageProperties
			local res = getDictFromBubbleChatMessageProperties(BubbleChatMessageProperties)

			local properties = { "Enabled", "Color", "Offset", "Rotation", "Transparency" }
			for _, property in ipairs(properties) do
				expect(res.UIGradient[property]).toEqual(UIGradient[property])
			end
		end)

		it("SHOULD copy over the UIPadding child properties if an UIPadding is parented", function()
			local UIPadding = Instance.new("UIPadding")
			UIPadding.PaddingTop = UDim.new(0, 40)
			UIPadding.PaddingBottom = UDim.new(0, 40)
			UIPadding.PaddingLeft = UDim.new(0, 40)
			UIPadding.PaddingRight = UDim.new(0, 40)
			UIPadding.Parent = BubbleChatMessageProperties
			local res = getDictFromBubbleChatMessageProperties(BubbleChatMessageProperties)

			local properties = { "PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight" }
			for _, property in ipairs(properties) do
				expect(res.UIPadding[property]).toEqual(UIPadding[property])
			end
		end)
	end)
end
