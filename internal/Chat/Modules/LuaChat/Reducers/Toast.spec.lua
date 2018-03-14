return function()
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local LuaChat = Modules.LuaChat
	local ShowToast = require(LuaChat.Actions.ShowToast)
	local ToastComplete = require(LuaChat.Actions.ToastComplete)
	local ToastReducer = require(script.Parent.Toast)
	local ToastModel = require(LuaChat.Models.ToastModel)
	describe("Action Toast", function()
		it("should return nil when passed nil", function()
			local state = ToastReducer(nil, {})
			expect(state).to.equal(nil)
		end)

		it("Action ShowToast", function()
			local state = ToastReducer(nil, {})
			local myToast = ToastModel.new()
			state = ToastReducer(state, ShowToast(myToast))

			expect(state).to.equal(myToast)
		end)

		it("Action ToastComplete", function()
			local state = ToastReducer(nil, {})
			state = ToastReducer(state, ToastComplete())

			expect(state).to.equal(nil)
		end)

		it("ToastComplete should clear current toast", function()
			local state = ToastReducer(nil, {})
			local myToast = ToastModel.new()
			state = ToastReducer(state, ShowToast(myToast))

			expect(state).to.equal(myToast)

			state = ToastReducer(state, ToastComplete())

			expect(state).to.equal(nil)
		end)
	end)
end