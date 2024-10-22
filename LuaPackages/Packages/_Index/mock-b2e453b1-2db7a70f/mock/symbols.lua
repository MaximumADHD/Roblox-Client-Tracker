local function newSymbol(name)
	local symbol = newproxy(true)
	name = ("Mocks.%s"):format(name)
	getmetatable(symbol).__tostring = function()
		return name
	end
	return symbol
end

return {
	Calls = newSymbol("Calls"),
	Children = newSymbol("Children"),
	None = newSymbol("None"),
	ReturnValue = newSymbol("ReturnValue"),
	Name = newSymbol("Name"),
	Address = newSymbol("Address"),
	Operations = newSymbol("Operations"),
	Spec = newSymbol("Spec"),
	SideEffect = newSymbol("SideEffect"),
	isSpy = newSymbol("isSpy"),
	isTuple = newSymbol("isTuple"),
	isMagicMock = newSymbol("isMagicMock"),
	isPredicate = newSymbol("isPredicate"),
}
