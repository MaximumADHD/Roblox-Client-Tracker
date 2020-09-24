return function()
	local DraggerSchemaCore = script.Parent.Parent
	local getSelectableWithCache = require(DraggerSchemaCore.getSelectableWithCache)

	beforeEach(function()
		for _, child in pairs(workspace:GetChildren()) do
			if not child:IsA("Terrain") then
				child:Destroy()
			end
		end
	end)

	it("should fail if no cache is passed", function()
		local part = Instance.new("Part", workspace)
		expect(function()
			getSelectableWithCache(part, false, nil)
		end).to.throw()
	end)

	it("should return the part itself for a part under workspace", function()
		local part = Instance.new("Part", workspace)
		local selectable = getSelectableWithCache(part, false, {})
		expect(selectable).to.equal(part)
	end)

	it("should return the model for a part within a model", function()
		local model = Instance.new("Model", workspace)
		local model2 = Instance.new("Model", model)
		local part = Instance.new("Part", model2)
		local selectable = getSelectableWithCache(part, false, {})
		expect(selectable).to.equal(model)
	end)

	it("should return the object itself if drill is true", function()
		local model = Instance.new("Model", workspace)
		local model2 = Instance.new("Model", model)
		local part = Instance.new("Part", model2)
		local selectable = getSelectableWithCache(part, true, {})
		expect(selectable).to.equal(part)
	end)

	it("should return the object itself when in folders", function()
		local folder = Instance.new("Folder", workspace)
		local folder2 = Instance.new("Folder", folder)
		local part = Instance.new("Part", folder2)
		local selectable = getSelectableWithCache(part, false, {})
		expect(selectable).to.equal(part)
	end)

	it("should always return the object itself for constraints / attachments", function()
		local function getIt(objectType)
			local model = Instance.new("Model", workspace)
			local model2 = Instance.new("Model", model)
			local part = Instance.new("Part", model2)
			local object = Instance.new(objectType, part)
			return object, getSelectableWithCache(object, false, {})
		end

		do
			local object, selectable = getIt("Attachment")
			expect(object).to.equal(selectable)
		end

		do
			local object, selectable = getIt("WeldConstraint")
			expect(object).to.equal(selectable)
		end

		do
			local object, selectable = getIt("SpringConstraint")
			expect(object).to.equal(selectable)
		end

		do
			local object, selectable = getIt("NoCollisionConstraint")
			expect(object).to.equal(selectable)
		end
	end)

	it("should return nothing for unknown object types", function()
		local thing = Instance.new("IntValue", workspace)
		expect(getSelectableWithCache(thing, false, {})).to.equal(nil)
	end)
end