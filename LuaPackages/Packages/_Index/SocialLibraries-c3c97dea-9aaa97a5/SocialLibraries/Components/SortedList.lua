local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local SortedList = Roact.PureComponent:extend("SortedList")
SortedList.defaultProps = {
	entries = {}, --tables of information used for sorting/filtering and also passed as props to the entryElement
	renderEntry = nil, --function that takes entryProps and children as an argument and returns a Roact element
	entryHeight = 48,

	sortComparator = function(entryA, entryB)
		return true
	end,

	LayoutOrder = 0,
}

function SortedList:sortEntries()
	local sortedEntries = {}

	for _, entry in pairs(self.props.entries) do
		table.insert(sortedEntries, entry)
	end

	table.sort(sortedEntries, self.props.sortComparator)

	return sortedEntries
end

function SortedList:render()
	local sortedEntries = self:sortEntries()

	local listChildren = {
		layout = Roact.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder
		}),
	}

	--create list roact elements
	for layoutOrder, entryProps in pairs(sortedEntries) do
		local isLastEntry = layoutOrder == #sortedEntries

		table.insert(listChildren, Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, self.props.entryHeight),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			entry = self.props.renderEntry(entryProps, isLastEntry),
		}))
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, #self.props.entries * self.props.entryHeight),
		BackgroundTransparency = 1,
		LayoutOrder = self.props.LayoutOrder,
	}, listChildren)
end

return SortedList
