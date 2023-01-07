local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local RoduxContacts = dependencies.RoduxContacts
local llama = dependencies.llama

local reducer = RoduxContacts.installReducer()

return function(state, action)
	return llama.List.reduce({ action }, reducer, state)
end
