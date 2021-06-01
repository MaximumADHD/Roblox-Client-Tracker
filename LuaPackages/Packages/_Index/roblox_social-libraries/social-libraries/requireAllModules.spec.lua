return function()
	local root = script.Parent

	describe("all of SocialLibraries' module scripts should require successfully", function()
		for _, object in ipairs(root:GetDescendants()) do
			if object:IsA("ModuleScript") and not string.find(object.Name, ".spec$") then
				it(string.format("SHOULD require %s successfully", object:GetFullName()), function()
					require(object)
				end)
			end
		end
	end)
end
