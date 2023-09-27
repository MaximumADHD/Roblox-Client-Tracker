return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Cryo = require(CorePackages.Cryo)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InspectAndBuyFolder = script.Parent.Parent
	local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)
    local Constants = require(InspectAndBuyFolder.Constants)
    local CompactView = require(InspectAndBuyFolder.CompactView)
    local WideView = require(InspectAndBuyFolder.WideView)
    local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)

    it("should wrap render function correctly", function()
        local capturedView1
        local capturedView2

        local ViewComponent = Roact.Component:extend("ViewComponent")

        function ViewComponent:render()
            return Roact.createElement(InspectAndBuyContext.Consumer, {
                render = function(views)
                    capturedView1 = views[self.props.view1]
                    capturedView2 = views[self.props.view2]
                    return Roact.createElement("Frame")
                end
            })
        end

        local element = Roact.createElement(TestContainer, nil, {
            Roact.createElement("Frame", {}, {
                Roact.createElement(ViewComponent, {
                    view1 = Constants.View.Compact,
                    view2 = Constants.View.Wide,
                })
            })
        })

        local instance = Roact.mount(element)

		expect(capturedView1).toBe(CompactView)
		expect(capturedView2).toBe(WideView)

        Roact.unmount(instance)
    end)

    it("should wrap Roact component correctly", function()
        local capturedView1
        local capturedView2

        local ViewComponent = Roact.Component:extend("ViewComponent")

        function ViewComponent:render()
            capturedView1 = self.props.views[self.props.view1]
            capturedView2 = self.props.views[self.props.view2]
            return Roact.createElement("Frame")
        end

        local function ViewComponentWrapper(props)
            return Roact.createElement(InspectAndBuyContext.Consumer, {
                render = function(views)
                    local componentProps = Cryo.Dictionary.join(props, { views = views })
                    return Roact.createElement(ViewComponent, componentProps)
                end
            })
        end

        local element = Roact.createElement(TestContainer, nil, {
            Roact.createElement("Frame", {}, {
                Roact.createElement(ViewComponentWrapper, {
                    view1 = Constants.View.Compact,
                    view2 = Constants.View.Wide,
                })
            })
        })

        local instance = Roact.mount(element)

		expect(capturedView1).toBe(CompactView)
		expect(capturedView2).toBe(WideView)

        Roact.unmount(instance)
    end)
end
