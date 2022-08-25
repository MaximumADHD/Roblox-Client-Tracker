--!nonstrict
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local ContextMenuItems = require(script.Parent.ContextMenuItems)

local CoreGuiService = game:GetService("CoreGui")
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local FFlagAvatarContextMenuItemsChatButtonRefactor
	= require(CoreGuiModules.Flags.FFlagAvatarContextMenuItemsChatButtonRefactor)

return function()
	-- Returns a frame with context menu items as children.
	local function makeContextMenuItemsFrame(props, config)
		local parentFrame = Instance.new("Frame")
		local contextMenuItems = ContextMenuItems.new(parentFrame, config)

		if not RobloxReplicatedStorage:FindFirstChild("SetPlayerBlockList") then
			local mockEvent = Instance.new("RemoteEvent")
			mockEvent.Name = "SetPlayerBlockList"
			mockEvent.Parent = RobloxReplicatedStorage
		end

		local mockPlayer = {
			UserId = 0,
		}

		contextMenuItems:BuildContextMenuItems(mockPlayer, props)
		return parentFrame
	end

	local function makeContextMenuButtons(props)
		if props == nil then
			props = {
				localPlayerChatEnabled = true,
				localPlayerCanChatWithSelectedPlayer = true,
			}
		end
		local menuItemsFrame = makeContextMenuItemsFrame(props)
		local buttons = menuItemsFrame:GetChildren()
		return buttons
	end

	describe("Avatar Context Menu Buttons Appearance", function()
		if not FFlagAvatarContextMenuItemsChatButtonRefactor then
			SKIP()
		end

		it("should have the same font for all buttons with center alignment", function()
			local buttons = makeContextMenuButtons()
			local font = nil
			for _, button in ipairs(buttons) do
				local buttonLabel = button:FindFirstChildWhichIsA("TextLabel")
				expect(buttonLabel).to.be.ok()
				expect(buttonLabel.Font).to.be.ok()
				if font == nil then
					font = buttonLabel.Font
				else
					expect(font).never.to.equal(nil)
					expect(buttonLabel.Font).to.equal(font)
					expect(buttonLabel.TextXAlignment).to.equal(Enum.TextXAlignment.Center)
					expect(buttonLabel.TextYAlignment).to.equal(Enum.TextYAlignment.Center)
				end
			end
		end)

		it("all buttons should have white text color", function()
			local buttons = makeContextMenuButtons()
			local whiteColor = Color3.fromRGB(255,255,255)

			for _, button in ipairs(buttons) do
				local buttonLabel = button:FindFirstChildWhichIsA("TextLabel")
				expect(buttonLabel).to.be.ok()
				expect(buttonLabel.TextColor3).to.equal(whiteColor)
			end
		end)

		describe("GIVEN the EnableExperienceChat Flag", function()
			beforeAll(function(context)
				context.testForCorrectButtonNames = function(buttonNames, textChatService)
					local props = {
						localPlayerChatEnabled = true,
						localPlayerCanChatWithSelectedPlayer = true,
					}
					local menuItemsFrame = makeContextMenuItemsFrame(props, { TextChatService = textChatService })
					local buttons = menuItemsFrame:GetChildren()
					expect(#buttons).to.equal(#buttonNames)

					for _, name in ipairs(buttonNames) do
						expect(menuItemsFrame:FindFirstChild(name)).to.be.ok()
					end
				end
			end)

			describe("WHEN EnableExperienceChat Flag is true", function()
				describe("WHEN TextChatService.ChatVersion is Legacy Chat", function()

					it("SHOULD have 4 default buttons: Friend, Chat, Wave, View.", function(c)
						c.TextChatService = {
							ChatVersion = Enum.ChatVersion.LegacyChatService,
						}
						c.testForCorrectButtonNames(
							{ "Wave", "ChatStatus", "FriendStatus", "View" },
							c.TextChatService
						)
					end)
				end)

				describe("WHEN TextChatService.ChatVersion is new TextChatService", function()

					it("SHOULD have 4 default buttons: Friend, Chat, Wave, View.", function(c)
							c.TextChatService = {
								ChatVersion = Enum.ChatVersion.TextChatService,
							}
							c.testForCorrectButtonNames(
								{ "Wave", "ChatStatus", "FriendStatus", "View" },
								c.TextChatService
							)
					end)
				end)
			end)
		end)


	end)
end
