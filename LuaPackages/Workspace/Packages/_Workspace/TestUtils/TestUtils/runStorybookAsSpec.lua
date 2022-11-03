--!nonstrict
return function(storybook, describe, it)
	local storyRoot = storybook.storyRoot
	local middleware = storybook.middleware or function(...)
		return ...
	end

	local screenGui = Instance.new("ScreenGui")

	describe("SHOULD run all stories with no issue", function()
		for _, object in ipairs(storyRoot:GetDescendants()) do
			if object:IsA("ModuleScript") then
				if object.Name:find(".story$") then
					it("SHOULD mount: " .. object:GetFullName(), function()
						local story = require(object)
						middleware(story, screenGui)()
					end)
				end
			end
		end
	end)
end
