local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("ChatTranslationFTUX.story"))
		rootContext.mount = function(c)
			local Roact = c.Roact
			local storyMiddleware = c.storyMiddleware
			local instance = Instance.new("ScreenGui")
			instance.Parent = game:GetService("CoreGui")

			local callback = jest.fn()
			local tree = Roact.createElement("ImageButton", {
				Size = c.size,
				[Roact.Event.Activated] = callback,
			}, {
				story = Roact.createElement(storyMiddleware(storyDefinition.story), {}),
			})
			local roactInstance = Roact.mount(tree, instance)
			return {
				instance = instance,
				unmount = function()
					Roact.unmount(roactInstance)
					instance:Destroy()
				end,
				callback = callback,
			}
		end
	end)

	describe("WHEN created", function()
		it("SHOULD mount correctly", function(c)
			local findFirstInstance = c.findFirstInstance
			local instance = findFirstInstance(c:mount().instance, { ClassName = "Frame" })
			expect(instance).never.toBeNil()

			expect(instance.BubbleBody).never.toBeNil()
			expect(instance.BubbleBody.Title).never.toBeNil()
			expect(instance.BubbleBody.Title.Text).toEqual("CoreScripts.TextChat.ChatTranslation.FTUX.TitleNew")
			expect(instance.BubbleBody.Body).never.toBeNil()
			expect(instance.BubbleBody.Body.Text).toEqual("CoreScripts.TextChat.ChatTranslation.FTUX.BodyNew")
		end)
	end)
end
