local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local RoactInspectorReducer = require(script.Parent.RoactInspectorReducer)

local Dash = require(Plugin.Packages.Dash)
local keys = Dash.keys
local pretty = Dash.pretty

local Actions = Plugin.Src.Actions
local UpdateInstances = require(Actions.RoactInspector.UpdateInstances)
local SelectInstance = require(Actions.RoactInspector.SelectInstance)
local ToggleInstance = require(Actions.RoactInspector.ToggleInstance)
local SelectNode = require(Actions.RoactInspector.SelectNode)
local PickInstance = require(Actions.RoactInspector.PickInstance)
local UpdateBranch = require(Actions.RoactInspector.UpdateBranch)
local UpdateFields = require(Actions.RoactInspector.UpdateFields)
local SelectField = require(Actions.RoactInspector.SelectField)
local ToggleField = require(Actions.RoactInspector.ToggleField)
local SetPicking = require(Actions.RoactInspector.SetPicking)

local function getRootPartial()
	return {
		Test = {
			Name = "Test",
			Children = {
				MyChild = {
					Name = "MyChild"
				}
			}
		}
	}
end

local function getChildPartial()
	return {
		MyChild = {
			Name = "MyChild",
			Children = {
				MyGrandChild = {
					Name = "MyGrandChild"
				}
			}
		}
	}
end

return function()
	it("should return its expected default state", function()
		local store = Rodux.Store.new(RoactInspectorReducer)
		expect(store:getState()).to.be.ok()
	end)
	describe("UpdateInstances", function()
		it("should update the root instance", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local state = RoactInspectorReducer(store:getState(), UpdateInstances({}, getRootPartial()))
			local serialized = pretty(state.rootInstance, {multiline = true, depth = 100})
			expect(serialized).to.equal([[{
	Children = {
		Test = {
			Children = {
				MyChild = {
					Name = "MyChild"
				}
			},
			Name = "Test"
		}
	}
}]])
		end)

		it("should update a child of the root instance", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local state = RoactInspectorReducer(store:getState(), UpdateInstances({}, getRootPartial()))
			state = RoactInspectorReducer(state, UpdateInstances({"Test"}, getChildPartial()))
			local serialized = pretty(state.rootInstance, {multiline = true, depth = 100})
			expect(serialized).to.equal([[{
	Children = {
		Test = {
			Children = {
				MyChild = {
					Children = {
						MyGrandChild = {
							Name = "MyGrandChild"
						}
					},
					Name = "MyChild"
				}
			},
			Name = "Test"
		}
	}
}]])
		end)

		it("should not update a missing nested root", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local state = RoactInspectorReducer(store:getState(), UpdateInstances({}, getRootPartial()))
			state = RoactInspectorReducer(state, UpdateInstances({"Test", "Missing"}, getChildPartial()))
			local serialized = pretty(state.rootInstance, {multiline = true, depth = 100})
			expect(serialized).to.equal([[{
	Children = {
		Test = {
			Children = {
				MyChild = {
					Name = "MyChild"
				}
			},
			Name = "Test"
		}
	}
}]])
		end)

	end)
	describe("UpdateBranch", function()
		it("should update branch if path matches", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local list = {1, 2, 3}
			local state = RoactInspectorReducer(store:getState(), UpdateBranch({}, list))
			expect(state.nodes).to.equal(list)
		end)
		it("should not update the branch if path does not match", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local list = {1, 2, 3}
			local state = RoactInspectorReducer(store:getState(), UpdateBranch({"Toolbox"}, list))
			expect(state.nodes).never.to.equal(list)
		end)
	end)
	describe("SelectNode", function()
		it("should update state as expected", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local state = RoactInspectorReducer(store:getState(), SelectNode(10))
			expect(state.selectedNodeIndex).to.equal(10)
		end)
	end)
	describe("SelectInstance", function()
		it("should update state as expected", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local instance = {
				Path = {"Example"}
			}
			local change = {
				[instance] = true
			}
			local state = RoactInspectorReducer(store:getState(), SelectInstance(change))
			expect(state.selectedInstances).to.equal(change)
			expect(state.selectedPath).to.equal(instance.Path)
		end)
	end)
	describe("ToggleInstance", function()
		it("should update state as expected", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local instance = {
				Path = {"Example"}
			}
			local change = {
				[instance] = true
			}
			local state = RoactInspectorReducer(store:getState(), ToggleInstance(change))
			expect(state.expandedInstances[instance]).to.equal(true)
			local instance2 = {
				Path = {"Example", "Child"}
			}
			local change2 = {
				[instance2] = true
			}
			state = RoactInspectorReducer(state, ToggleInstance(change2))
			expect(state.expandedInstances[instance]).to.equal(true)
			expect(state.expandedInstances[instance2]).to.equal(true)
		end)
	end)
	describe("PickInstance", function()
		it("should update state as expected", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local state = RoactInspectorReducer(store:getState(), UpdateInstances({}, getRootPartial()))
			state = RoactInspectorReducer(store:getState(), UpdateInstances({"MyChild"}, getChildPartial()))
			
			local path = {"MyChild", "MyGrandChild"}
			state = RoactInspectorReducer(state, PickInstance(path))
			expect(state.selectedPath).to.equal(path)

			local expandedKeys = keys(state.expandedInstances)
			expect(#expandedKeys).to.equal(2)
		end)
	end)
	describe("UpdateFields", function()
		it("should update fields if path matches", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local children = {
				A = {
					Name = "A"
				},
				B = {
					Name = "B"
				},
				C = {
					Name = "C"
				}
			}
			local state = RoactInspectorReducer(store:getState(), UpdateFields({}, 0, {"props"}, children))
			local serialized = pretty(state.fields, {multiline = true, depth = 100})
			expect(serialized).to.equal([[{
	Children = {
		_context = {
			Children = {},
			Name = "_context",
			Path = {
				"_context"
			}
		},
		props = {
			Children = {
				A = {
					Name = "A"
				},
				B = {
					Name = "B"
				},
				C = {
					Name = "C"
				}
			},
			Name = "props",
			Path = {
				"props"
			}
		},
		state = {
			Children = {},
			Name = "state",
			Path = {
				"state"
			}
		}
	}
}]])
		end)
		it("should not update the fields if path does not match", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local list = {1, 2, 3}
			local state = RoactInspectorReducer(store:getState(), UpdateFields({"Toolbox"}, 0, {}, list))
			expect(state.fields).never.to.equal(list)
		end)
		it("should not update the fields if index does not match", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local list = {1, 2, 3}
			local state = RoactInspectorReducer(store:getState(), UpdateFields({}, 10, {}, list))
			expect(state.fields).never.to.equal(list)
		end)
	end)
	describe("SelectField", function()
		it("should update state as expected", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local instance = {
				Path = {"Example"}
			}
			local change = {
				[instance] = true
			}
			local state = RoactInspectorReducer(store:getState(), SelectField(change))
			expect(state.selectedFields).to.equal(change)
		end)
	end)
	describe("ToggleField", function()
		it("should update state as expected", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local instance = {
				Path = {"Example"}
			}
			local change = {
				[instance] = true
			}
			local state = RoactInspectorReducer(store:getState(), ToggleField(change))
			expect(state.expandedFields[instance]).to.equal(true)
			local instance2 = {
				Path = {"Example", "Child"}
			}
			local change2 = {
				[instance2] = true
			}
			state = RoactInspectorReducer(state, ToggleField(change2))
			expect(state.expandedFields[instance]).to.equal(true)
			expect(state.expandedFields[instance2]).to.equal(true)
		end)
	end)
	describe("SetPicking", function()
		it("should update state as expected", function()
			local store = Rodux.Store.new(RoactInspectorReducer)
			local state = RoactInspectorReducer(store:getState(), SetPicking(true))
			expect(state.isPicking).to.equal(true)
		end)
	end)
end