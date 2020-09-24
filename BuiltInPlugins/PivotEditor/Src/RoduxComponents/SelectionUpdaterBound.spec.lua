return function()
	local Selection = game:GetService("Selection")
	local Workspace = game:GetService("Workspace")

	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Rodux = require(Plugin.Packages.Rodux)

	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local MockWrapper = require(Plugin.Src.Utility.MockWrapper)
	local SelectObjectForEditing = require(Plugin.Src.Actions.SelectObjectForEditing)

	local SelectionUpdaterBound = require(Plugin.Src.RoduxComponents.SelectionUpdaterBound)

	describe("Mounting", function()
		it("should deselect an existing selection", function()
			local container = Instance.new("Folder")
			Selection:Set({})

			local store = Rodux.Store.new(MainReducer, nil, {Rodux.thunkMiddleware})
			local oldPart = Instance.new("Part")
			store:dispatch(SelectObjectForEditing(oldPart))
			expect(store:getState().targetObject).to.equal(oldPart)

			local handle = Roact.mount(MockWrapper({
				Store = store,
			}, Roact.createElement(SelectionUpdaterBound, {})), container)
			Roact.unmount(handle)

			expect(store:getState().targetObject).to.equal(nil)

			oldPart:Destroy()
			container:Destroy()
		end)

		it("should select a not selected object", function()
			local container = Instance.new("Folder")
			local part = Instance.new("Part", Workspace)
			Selection:Set({part})

			local store = Rodux.Store.new(MainReducer, nil, {Rodux.thunkMiddleware})
			expect(store:getState().targetObject).to.equal(nil)

			local handle = Roact.mount(MockWrapper({
				Store = store,
			}, Roact.createElement(SelectionUpdaterBound, {})), container)
			Roact.unmount(handle)

			expect(store:getState().targetObject).to.equal(part)

			part:Destroy()
			container:Destroy()
		end)
	end)
end