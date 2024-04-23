return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local OpenOverlay = require(InspectAndBuyFolder.Actions.OpenOverlay)
	local CloseOverlay = require(InspectAndBuyFolder.Actions.CloseOverlay)
	local OverlayEnum = require(InspectAndBuyFolder.Enums.Overlay)
	local Overlay = require(script.Parent.Overlay)

	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	describe("Overlay", function()
		it("should default to correct values", function()
			local store = Rodux.Store.new(Overlay)
			local state = store:getState()
			expect(state).toEqual({
				overlay = nil,
				overlayProps = {},
			})
		end)

		it("should open from a closed state", function()
			local store = Rodux.Store.new(Overlay)
			local state = store:getState()
			local newState = Overlay(state, OpenOverlay(OverlayEnum.AttributionTraversal, {isVisible = false}))
			expect(newState).toEqual({
				overlay = OverlayEnum.AttributionTraversal,
				overlayProps = {
					isVisible = false
				},
			})
		end)

		it("should close from an opened state", function()
			local store = Rodux.Store.new(Overlay)
			local state = store:getState()
			local newState = Overlay(state, OpenOverlay(OverlayEnum.AttributionTraversal, {isVisible = false}))
			newState = Overlay(newState, CloseOverlay())
			expect(newState).toEqual({
				overlay = nil,
				overlayProps = {},
			})
		end)
	end)
end
