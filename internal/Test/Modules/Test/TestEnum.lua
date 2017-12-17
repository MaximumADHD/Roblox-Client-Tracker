--[[
	Constants used throughout the testing framework.
]]

local TestEnum = {}

TestEnum.TestStatus = {
	Success = "Success",
	Failure = "Failure",
	Skipped = "Skipped"
}

TestEnum.NodeType = {
	Describe = "Describe",
	It = "It"
}

TestEnum.NodeModifier = {
	None = "None",
	Skip = "Skip",
	Focus = "Focus"
}

return TestEnum