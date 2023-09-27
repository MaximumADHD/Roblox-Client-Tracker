--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Packages.Roact)

	local storybook = require(script.Parent["BubbleChat.storybook"])
	local mapStory = storybook.mapStory

	local screenGui = Instance.new("ScreenGui")

	describe("SHOULD run all stories with no issue", function()
		for _, object in ipairs(script.Parent:GetDescendants()) do
			if object:IsA("ModuleScript") then
				if object.Name:find(".story$") then
					it("SHOULD mount: " .. object:GetFullName(), function()
						local story = mapStory(require(object))
						local handle = Roact.mount(Roact.createElement(story), screenGui)
						Roact.unmount(handle)
					end)
				end
			end
		end
	end)
end
