return function()
	local ExpandableTextAreaFolder = script.Parent
	local Text = ExpandableTextAreaFolder.Parent
	local App = Text.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local ExpandableTextArea = require(ExpandableTextAreaFolder.ExpandableTextArea)

	local UIBloxConfig = require(UIBlox.UIBloxConfig)
	local expandableTextAutomaticResizeConfig = UIBloxConfig.expandableTextAutomaticResizeConfig

	local descriptionText = [[
		This golden crown was awarded as a prize in the June 2007 Domino Rally Building Contest.
		Perhaps its most unique characteristic is its ability to inspire viewers with awe
		while at the same time making the wearer look goofy.
	]]

	describe("ExpandableTextArea", function()
		it("should create and destroy without errors", function()
			local element = mockStyleComponent({
				Image = Roact.createElement(ExpandableTextArea, {
					Text = descriptionText,
					width = not expandableTextAutomaticResizeConfig and UDim.new(0, 200) or nil,
				})
			})

			local instance = Roact.mount(element, nil, "ExpandableTextArea")
			Roact.unmount(instance)
		end)
	end)
end
