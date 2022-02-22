return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local Constants = require(Plugin.Core.Util.Constants)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local Suggestion = require(Plugin.Core.Types.Suggestion)

	local MainView = require(Plugin.Core.Components.MainView.MainView)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			MainView = Roact.createElement(MainView, {
				assets = {},
				suggestions = Suggestion.SUGGESTIONS,
				maxWidth = 100,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	itSKIP("should render correctly", function()
		local toolboxWidth = 100

		local element = Roact.createElement(MockWrapper, {}, {
			MainView = Roact.createElement(MainView, {
				assets = {},
				suggestions = Suggestion.SUGGESTIONS,
				maxWidth = toolboxWidth,
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container, "MainView")
		local mainView = container.MainView

		local scrollingFrameOuter = mainView.ScrollingFrame
		expect(scrollingFrameOuter).to.be.ok()

		local scrollingFrame = scrollingFrameOuter.ScrollingFrame
		expect(scrollingFrame).to.be.ok()

		local uiPadding = scrollingFrame.UIPadding
		expect(uiPadding).to.be.ok()

		local header = scrollingFrame.Header
		expect(header).to.be.ok()

		local suggestions = header.Suggestions
		expect(suggestions).to.be.ok()

		local assetGridContainer = scrollingFrame.AssetGridContainer
		expect(assetGridContainer).to.be.ok()

		--local innerHeight = header.AbsoluteSize.y + assetGridContainer.AbsoluteSize.y + Constants.MAIN_VIEW_VERTICAL_PADDING
		-- expect(scrollContainer.AbsoluteSize.y).to.be.equal(innerHeight)

		--local paddingTop = uiPadding.PaddingTop.Offset
		--local paddingBottom = uiPadding.PaddingBottom.Offset
		-- expect(scrollingFrame.CanvasSize.Y.Offset).to.be.equal(paddingTop + innerHeight + paddingBottom)

		Roact.unmount(instance)
	end)
end
