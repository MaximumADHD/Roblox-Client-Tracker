return function(storybook, describe, it)
	local storyRoots = storybook.storyRoots
	local middleware = storybook.mapStory

	describe("SHOULD run all stories with no issue", function()
		for _, storyRoot in ipairs(storyRoots) do
			for _, object in ipairs(storyRoot:GetDescendants()) do
				if object:IsA("ModuleScript") then
					if object.Name:find(".story$") then
						it("SHOULD mount: " .. object:GetFullName(), function(context)
							local story = require(object)
							local storyElement = middleware(function()
								return story
							end)()

							local _, cleanup = context.UnitTestHelpers.mountFrame((storyElement))

							cleanup()
						end)
					end
				end
			end
		end
	end)
end
