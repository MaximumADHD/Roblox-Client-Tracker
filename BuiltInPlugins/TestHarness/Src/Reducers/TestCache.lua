local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local join = Dash.join
local collectSet = Dash.collectSet
local omit = Dash.omit
local copy = Dash.copy
local keys = Dash.keys

local Actions = Plugin.Src.Actions
local CacheTest = require(Actions.CacheTest)
local CollapseAll = require(Actions.CollapseAll)
local CollapseTest = require(Actions.CollapseTest)
local DisplayTests = require(Actions.DisplayTests)
local ExpandAll = require(Actions.ExpandAll)
local ExpandTest = require(Actions.ExpandTest)
local HideTest = require(Actions.HideTest)
local ResetTestCache = require(Actions.ResetTestCache)
local SelectTests = require(Actions.SelectTests)

return Rodux.createReducer({
	AlwaysHidden = {}, -- Test.Source
	Displayed = {}, -- Hiearchy of DisplayNodes
	Expanded = {}, -- Test.Source
	Selected = {}, -- DisplayNode
	TestInstances = {}, -- Test.Source = Instance
}, {
	[CacheTest.name] = function(state, action)
		return join(state, {
			TestInstances = join(state.TestInstances, {
				[action.testObject.Source] = action.testObject,
			}),
			-- When a test is added, always display it, but don't expand it.
			Displayed = join(state.Displayed, {
				action.testObject.Source
			})
		})
	end,
	[CollapseAll.name] = function(state, action)
		return join(state, {
			Expanded = {},
		})
	end,
	[CollapseTest.name] = function(state, action)
		return join(state, {
			Expanded = omit(copy(state.Expanded), {
				[action.token] = false,
			}),
		})
	end,
	[DisplayTests.name] = function(state, action)
		local ignored = state.AlwaysHidden or {}
		return join(state, {
			-- When the set of tests that are displayed changes,
			-- the set of expanded tests should stay the same
			Displayed = omit(action.testSet, ignored),
		})
	end,
	[ExpandTest.name] = function(state, action)
		return join(state, {
			Expanded = join(state.Expanded, {
				[action.token] = true,
			}),
		})
	end,
	[ExpandAll.name] = function(state, action)
		-- Returns a table where for instance, {[instance] = true}
		return join(state, {
			Expanded = collectSet(state.TestInstances, function(key)
				return key
			end)
		})
	end,
	[HideTest.name] = function(state, action)
		return join(state, {
			-- When a test is hidden, mark it as such
			AlwaysHidden = join(state.AlwaysHidden, {
				action.token
			}),
			-- and then update the display
			Displayed = omit(state.Displayed, {
				action.token
			}),
		})
	end,
	[ResetTestCache.name] = function(state, action)
		return join(state, {
			-- To reset the cache: All tests are collapsed,
			Expanded = {},
			-- All tests are displayed,
			AlwaysHidden = {},
			Displayed = keys(state.TestInstances),
			-- No tests are selected
			Selected = {},
			-- and no changes actually happen to "found" tests
		})
	end,
	[SelectTests.name] = function(state, action)
		return join(state, {
			Selected = action.selectedNodes,
		})
	end,
})
