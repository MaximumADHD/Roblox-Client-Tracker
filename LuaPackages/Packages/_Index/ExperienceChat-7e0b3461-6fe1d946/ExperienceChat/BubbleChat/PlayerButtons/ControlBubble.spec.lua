local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local jest = globals.jest
local Dictionary = require(Packages.llama).Dictionary
local Roact = require(Packages.Roact)

local GetFFlagForceChatBubbleColor = require(ExperienceChat.Flags.GetFFlagForceChatBubbleColor)
local UIBlox = require(Packages.UIBlox)
-- Don't error if already initialized
local ok, err = pcall(function()
	local UIBloxConfig = require(Packages:FindFirstChild("ExperienceChat"):FindFirstChild("UIBloxConfig"))
	UIBlox.init(UIBloxConfig)
end)
if not ok then
	warn("Error initializing UIBlox", err)
end

local Colors = UIBlox.App.Style.Colors
local Images = UIBlox.App.ImageSet.Images

local VIDEO_IMAGE = Images["icons/controls/video"]
local DISABLED_ICON_COLOR = Colors.Flint
local DISABLED_ICON_TRANSPARENCY = 0.5

return function()
	beforeAll(function(root)
		local onFadeOut = jest.fn()
		root.onFadeOut = onFadeOut

		local storyDefinition = require(script.Parent:FindFirstChild("ControlBubble.story"))
		local createProps = function()
			return {
				controls = {},
				LayoutOrder = 1,
				icon = "",
				imageSetIcon = false,
				onActivated = function() end,
				enabled = true,
				isImageSet = false,
				chatSettings = {},
			}
		end

		root.mount = root.createMount(storyDefinition.story, createProps)

		root.update = function(c, roactInstance, updateProps)
			local updateCreateProps = function()
				return Dictionary.join(createProps(), updateProps)
			end

			local tree = c:makeTree(storyDefinition.story, updateCreateProps)
			Roact.update(roactInstance, tree)
		end
	end)

	describe("ControlBubble", function()
		it("SHOULD work", function(c)
			local result = c:mount()
			local icon = result.instance:FindFirstChild("Icon", true)
			assert(icon, "needs Icon")
		end)

		if GetFFlagForceChatBubbleColor() then
			it("Background color should always be default if flag is on", function(c)
				local backgroundColor = Color3.fromRGB(250, 0, 0)
				local result = c:mount()
				local newProps = {
					controls = {},
					LayoutOrder = 1,
					icon = "",
					imageSetIcon = false,
					onActivated = function() end,
					enabled = false,
					isImageSet = false,
					chatSettings = {
						BackgroundColor3 = backgroundColor,
					},
				}
				c:update(result.roactInstance, newProps)

				local Contents = result.instance:FindFirstChild("Contents", true)

				assert(
					Contents.BackgroundColor3 == Colors.Graphite,
					"default background color should be Graphite when ForceChatBubbleColor is on"
				)
			end)
		else
			it("Background color should reflect configuration", function(c)
				local backgroundColor = Color3.fromRGB(250, 0, 0)
				local result = c:mount()
				local newProps = {
					controls = {},
					LayoutOrder = 1,
					icon = "",
					imageSetIcon = false,
					onActivated = function() end,
					enabled = true,
					isImageSet = false,
					chatSettings = {
						BackgroundColor3 = backgroundColor,
					},
				}
				c:update(result.roactInstance, newProps)

				local Contents = result.instance:FindFirstChild("Contents", true)

				assert(Contents.BackgroundColor3 ~= Colors.Graphite, "Background color should change")
				assert(Contents.BackgroundColor3 == backgroundColor, "Background color should change")
			end)
		end

		it("SHOULD work with enabled = false", function(c)
			local result = c:mount()

			-- enabled = false path
			local newProps = {
				controls = {},
				LayoutOrder = 1,
				icon = "",
				imageSetIcon = false,
				onActivated = function() end,
				enabled = false,
				isImageSet = false,
				chatSettings = {},
			}
			c:update(result.roactInstance, newProps)

			local Contents = result.instance:FindFirstChild("Contents", true)

			assert(Contents.BackgroundColor3 == Colors.Graphite, "default background color should be Graphite")

			local icon = result.instance:FindFirstChild("Icon", true)
			assert(icon.ImageTransparency == DISABLED_ICON_TRANSPARENCY, "disabled transparency should be 0.5")
			assert(icon.ImageColor3 == DISABLED_ICON_COLOR, "disabled transparency should be 0.5")
		end)

		it("SHOULD work with isImageSet = true", function(c)
			local result = c:mount()

			-- enabled = false path
			local newProps = {
				controls = {},
				LayoutOrder = 1,
				icon = "",
				imageSetIcon = VIDEO_IMAGE,
				onActivated = function() end,
				enabled = false,
				isImageSet = true,
				chatSettings = {},
			}
			c:update(result.roactInstance, newProps)

			local icon = result.instance:FindFirstChild("Icon", true)
			assert(icon.Image == VIDEO_IMAGE.Image, "ImageSet icon should match")
		end)
	end)
end
