return function()
	local Selection = game:GetService("Selection")
	local Workspace = game:GetService("Workspace")

	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local SelectionUpdater = require(Plugin.Src.Components.SelectionUpdater)

	-- Returns: A table tracking the calls to the
	local function makeTestComponent(currentTargetObject)
		local calls = {
			selectObjectForEditing = 0,
			selectInvalidSelection = 0,
		}
		return calls, Roact.createElement(SelectionUpdater, {
			targetObject = currentTargetObject,
			selectObjectForEditing = function(object)
				calls.selectObjectForEditing = calls.selectObjectForEditing + 1
				calls.selectObjectForEditingArg = object
			end,
			selectInvalidSelection = function()
				calls.selectInvalidSelection = calls.selectInvalidSelection + 1
			end,
		})
	end

	local function mountPoint()
		return Instance.new("Folder")
	end

	afterEach(function()
		for _, child in pairs(workspace:GetChildren()) do
			if not child:IsA("Terrain") then
				child:Destroy()
			end
		end
	end)

	describe("Component", function()
		it("should mount", function()
			local _, component = makeTestComponent(nil)
			local handle = Roact.mount(component, mountPoint())
			Roact.unmount(handle)
		end)
	end)

	describe("Initialization", function()
		it("should update when mounted", function()
			local a = Instance.new("Part", Workspace)
			Selection:Set({a})

			local calls, component = makeTestComponent(nil)
			local handle = Roact.mount(component, mountPoint())
			expect(calls.selectObjectForEditing).to.equal(1)
			expect(calls.selectObjectForEditingArg).to.equal(a)
			expect(calls.selectInvalidSelection).to.equal(0)
			Roact.unmount(handle)
		end)

		it("should not update if the state is already up to date", function()
			local a = Instance.new("Part", Workspace)
			Selection:Set({a})

			local calls, component = makeTestComponent(a)
			local handle = Roact.mount(component, mountPoint())
			expect(calls.selectObjectForEditing).to.equal(0)
			expect(calls.selectInvalidSelection).to.equal(0)
			Roact.unmount(handle)
		end)

		it("should clear the state if nothing is selected", function()
			local a = Instance.new("Part", Workspace)
			Selection:Set({})

			local calls, component = makeTestComponent(a)
			local handle = Roact.mount(component, mountPoint())
			expect(calls.selectObjectForEditing).to.equal(0)
			expect(calls.selectInvalidSelection).to.equal(1)
			Roact.unmount(handle)
		end)

		it("should clear the state if too many objects are selected", function()
			local a = Instance.new("Part", Workspace)
			local b = Instance.new("Part", Workspace)
			Selection:Set({a, b})

			local calls, component = makeTestComponent(a)
			local handle = Roact.mount(component, mountPoint())
			expect(calls.selectObjectForEditing).to.equal(0)
			expect(calls.selectInvalidSelection).to.equal(1)
			Roact.unmount(handle)
		end)
	end)

	describe("Selection Changes", function()
		it("should clear the selection when nothing becomes selected", function()
			local a = Instance.new("Part", Workspace)
			Selection:Set({a})

			local calls, component = makeTestComponent(a)
			local handle = Roact.mount(component, mountPoint())
			Selection:Set({})
			expect(calls.selectObjectForEditing).to.equal(0)
			expect(calls.selectInvalidSelection).to.equal(1)
			Roact.unmount(handle)
		end)

		it("should set the selection when a valid selection becomes selected", function()
			local a = Instance.new("Part", Workspace)
			local b = Instance.new("Part", Workspace)
			Selection:Set({a})

			local calls, component = makeTestComponent(nil)
			local handle = Roact.mount(component, mountPoint())
			Selection:Set({b})
			expect(calls.selectObjectForEditing).to.equal(2)
			expect(calls.selectObjectForEditingArg).to.equal(b)
			expect(calls.selectInvalidSelection).to.equal(0)
			Roact.unmount(handle)
		end)
	end)
end