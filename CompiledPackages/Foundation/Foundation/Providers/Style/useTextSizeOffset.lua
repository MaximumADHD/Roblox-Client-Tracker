local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local TextSizeOffsetContext = require(Style.TextSizeOffsetContext)

local React = require(Packages.React)

local function useTextSizeOffset()
	return React.useContext(TextSizeOffsetContext)
end

return useTextSizeOffset
