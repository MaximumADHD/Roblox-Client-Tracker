return function()
	SKIP()

	--[[local pluginRoot = script.Parent.Parent.Parent
	local paths = require(pluginRoot.Code.Paths)	
	paths.requireAll(require(pluginRoot.Code.Debug).GetRoactRoduxPath(pluginRoot, require(pluginRoot.Code.UtilityFunctions.UtilityFunctionsService)))

	describe("createAction()", function()
		it("should return a table", function()
			local action = paths.UtilityFunctionsAction.createAction("foo", function()
				return {}
			end)

			expect(action).to.be.a("table")
		end)

		it("should set the name of the action", function()
			local action = paths.UtilityFunctionsAction.createAction("foo", function()
				return {}
			end)

			expect(action.name).to.equal("foo")
		end)

		it("should be able to be called as a function", function()
			local action = paths.UtilityFunctionsAction.createAction("foo", function()
				return {}
			end)

			expect(action).never.to.throw()
		end)

		it("should return a table when called as a function", function()
			local action = paths.UtilityFunctionsAction.createAction("foo", function()
				return {}
			end)

			expect(action()).to.be.a("table")
		end)

		it("should set the type of the action", function()
			local action = paths.UtilityFunctionsAction.createAction("foo", function()
				return {}
			end)

			expect(action().type).to.equal("foo")
		end)

		it("should set values", function()
			local action = paths.UtilityFunctionsAction.createAction("foo", function(value)
				return {
					value = value
				}
			end)

			expect(action(100).value).to.equal(100)
		end)

		it("should throw when passed a function", function()
			local action = paths.UtilityFunctionsAction.createAction("foo", function()
				return function() end
			end)

			expect(action).to.throw()
		end)

		it("should throw with a invalid name", function()
			expect(function()
				paths.UtilityFunctionsAction.createAction(nil, function()
					return {}
				end)
			end).to.throw()

			expect(function()
				paths.UtilityFunctionsAction.createAction(100, function()
					return {}
				end)
			end).to.throw()
		end)

		it("should throw when passed a invalid function", function()
			expect(function()
				paths.UtilityFunctionsAction.createAction("foo", nil)
			end).to.throw()

			expect(function()
				paths.UtilityFunctionsAction.createAction("foo", {})
			end).to.throw()
		end)
	end)

	describe("isActionOfType()", function()
		it("should recognize action is of type", function()
			local actionType = paths.UtilityFunctionsAction.createAction("foo", function()
				return {}
			end)

			local actionTypeInstance = actionType()

			expect(paths.UtilityFunctionsAction.isActionOfType(actionTypeInstance, actionType)).to.equal(true)
		end)

		it("should recognize action is not of type", function()
			local actionType = paths.UtilityFunctionsAction.createAction("foo", function()
				return {}
			end)
			local actionTypeInstance = actionType()

			local differentActionType = paths.UtilityFunctionsAction.createAction("differentFoo", function()
				return {}
			end)
			local differentActionTypeInstance = differentActionType()

			expect(paths.UtilityFunctionsAction.isActionOfType(actionTypeInstance, differentActionType)).to.equal(false)

			expect(paths.UtilityFunctionsAction.isActionOfType(differentActionTypeInstance, actionType)).to.equal(false)
		end)
	end)]]
end
