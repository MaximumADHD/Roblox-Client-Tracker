-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/get-node-text.ts
local exports = {}

-- ROBLOX deviation START: Helper function to allow us to check if a node contains a Text key (Object.keys was not working for the same)
local function hasText(node: Instance)
	return (node :: any).Text
end
-- ROBLOX deviation END

local function getText(node: Instance)
	local ok = pcall(hasText, node)
	return if ok and not node:IsA("TextBox") then (node :: any).Text else ""
end

local function getNodeText(node: Instance): string
	-- ROBLOX deviation START: Checking whether the node table contains a 'Text' key, simplifiead beacuse there are no text nodes
	local text = getText(node)

	-- local children = node:GetChildren()

	return text
	-- .. Array.join(
	-- 	Array.map(
	-- 		Array.filter(children, function(child:Instance)
	-- 		return Boolean.toJSBoolean(getText(child))
	-- 		end),
	-- 		function(childWithText: Instance)
	-- 			-- ROBLOX NOTE: We don't have access to textContent in Roblox, using recursive call to traverse the Roblox element tree and extract text
	-- 			return getNodeText(childWithText)
	-- 		end
	-- 	),
	-- 	""
	-- )
	-- ROBLOX deviation END
end

exports.getNodeText = getNodeText
return exports
