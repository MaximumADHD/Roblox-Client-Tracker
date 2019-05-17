return function()
	local Library = script.Parent.Parent
	local Roact = require(Library.Parent.Roact)

	local MockWrapper = require(Library.MockWrapper)

	local ExpandableList = require(script.Parent.ExpandableList)

	local function createTestExpandableList(props, children)
		return Roact.createElement(MockWrapper, {
            Container = Instance.new("Folder")
        }, {
			expandableList = Roact.createElement(ExpandableList, props, children)
		})
    end

    it("should create and destroy without errors", function()
		local element = createTestExpandableList({
            TopLevelItem = {},
            Content = {}
        })
		local instance = Roact.mount(element)
		Roact.unmount(instance)
    end)

    it("should require a top level item table", function()
		local element = createTestExpandableList({
            Content = {}
        })
		expect(function()
			Roact.mount(element)
		end).to.throw()
        local element = createTestExpandableList({
            TopLevelItem = true,
            Content = {}
        })
		expect(function()
			Roact.mount(element)
		end).to.throw()
    end)

    it("should require a content table", function()
		local element = createTestExpandableList({
            TopLevelItem = {}
        })
		expect(function()
			Roact.mount(element)
		end).to.throw()
        local element = createTestExpandableList({
            TopLevelItem = {},
            Content = true
        })
		expect(function()
			Roact.mount(element)
		end).to.throw()
    end)
end