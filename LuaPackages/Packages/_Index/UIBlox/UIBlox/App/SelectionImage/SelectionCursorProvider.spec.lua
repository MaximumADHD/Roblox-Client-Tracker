return function()
	local Packages = script.Parent.Parent.Parent.Parent

	local Roact = require(Packages.Roact)
	local UIBlox = require(Packages.UIBlox)

	local SelectionCursorProvider = require(script.Parent.SelectionCursorProvider)
	local SelectionImageContext = require(script.Parent.SelectionImageContext)
	local CursorKind = require(script.Parent.CursorKind)
	local testStyle = require(Packages.UIBlox.App.Style.Validator.TestStyle)
	local StyleProvider = UIBlox.Core.Style.Provider

	describe("Managed singleton cache of UI elements for use as selection cursors", function()
		it("should provide a ref that refers to an ImageLabel", function()
			local ref
			local function CaptureRef()
				return Roact.createElement(SelectionImageContext.Consumer, {
					render = function(getSelectionCursor)
						ref = getSelectionCursor(CursorKind.RoundedRect)
						return nil
					end,
				})
			end

			local tree = Roact.mount(Roact.createElement(StyleProvider, {
				style = testStyle,
			}, {
				SelectionCursorProvider = Roact.createElement(SelectionCursorProvider, {}, {
					RefCapturer = Roact.createElement(CaptureRef)
				})
			}))

			expect(typeof(ref.getValue)).to.equal("function")
			expect(typeof(ref:getValue())).to.equal("Instance")
			expect(ref:getValue():IsA("ImageLabel")).to.equal(true)

			Roact.unmount(tree)
		end)

		it("should return the same object on multiple calls", function()
			local capturedRefs = {}
			local function CaptureRef(props)
				return Roact.createElement(SelectionImageContext.Consumer, {
					render = function(getSelectionCursor)
						capturedRefs[props.key] = getSelectionCursor(CursorKind.RoundedRect)
						return nil
					end,
				})
			end

			local tree = Roact.mount(Roact.createElement(StyleProvider, {
				style = testStyle,
			}, {
				SelectionCursorProvider = Roact.createElement(SelectionCursorProvider, {}, {
					RefCapturer1 = Roact.createElement(CaptureRef, {
						key = "ref1",
					}),
					RefCapturer2 = Roact.createElement(CaptureRef, {
						key = "ref2",
					}),
				})
			}))

			expect(capturedRefs.ref1).to.be.ok()
			expect(capturedRefs.ref2).to.be.ok()
			expect(capturedRefs.ref1).to.equal(capturedRefs.ref2)

			Roact.unmount(tree)
		end)

		it("Should throw an error when invoked with an invalid argument", function()
			local badAssetName = "doesn't exist"
			local function BadCursor(props)
				return Roact.createElement(SelectionImageContext.Consumer, {
					render = function(getSelectionCursor)
						getSelectionCursor(badAssetName)
						return nil
					end,
				})
			end

			local ok, err = pcall(function()
				Roact.mount(Roact.createElement(SelectionCursorProvider, {}, {
					BadCursor = Roact.createElement(BadCursor),
				}))
			end)

			expect(ok).to.equal(false)
			expect(err:find(badAssetName)).to.be.ok()
		end)
	end)
end
