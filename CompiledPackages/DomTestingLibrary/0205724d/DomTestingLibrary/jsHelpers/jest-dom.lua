-- ROBLOX upstream: no upstream
--[[
    ROBLOX comment: 
    reduce deviations by adding matchers based on testing-library/jest-dom
]]
local Packages = script.Parent.Parent.Parent
local document = require(Packages.DomTestingLibrary).document

local exports = {}

local function toBeInTheDocument(self, received: Instance, expected)
	local matcherName = "toBeInTheDocument"
	local options = {
		isNot = self.isNot,
		promise = self.promise,
	}
	local pass = received:IsDescendantOf(document)
	local message = function()
		return self.utils.matcherHint(matcherName, nil, nil, options) :: string
			.. "\n\n"
			.. (
				if self.isNot then "element was found in the document" else "element could not be found in the document"
			)
	end
	return { message = message, pass = pass }
end
exports.toBeInTheDocument = toBeInTheDocument

local function toBeEmptyDOMElement(self, received: Instance, expected)
	local matcherName = "toBeEmptyDOMElement"
	local options = {
		isNot = self.isNot,
		promise = self.promise,
	}
	local pass = #received:GetChildren() == 0
	local message = function()
		return self.utils.matcherHint(matcherName, nil, nil, options) :: string
			.. "\n\n"
			.. (if self.isNot then "element is empty" else "element is not empty")
	end
	return { message = message, pass = pass }
end
exports.toBeEmptyDOMElement = toBeEmptyDOMElement

local function toHaveTextContent(self, received: Instance, expected)
	local matcherName = "toHaveTextContent"
	if received:IsA("TextBox") then
		error("toHaveTextContent is not meant to be used with TextBox")
	end

	local text = (received :: any).Text
	local checkingWithEmptyString = not expected or expected == "" or text == ""

	local check
	if typeof(expected) == "string" then
		check = string.find(text, expected, 1, true)
	elseif typeof(expected) == "table" and typeof(expected.test) == "function" then
		check = expected:test(text)
	else
		error("Unhandled expected value type: string or regex is required")
	end

	local options = {
		isNot = self.isNot,
		promise = self.promise,
	}

	local pass = not checkingWithEmptyString and not not check
	local message = function()
		return self.utils.matcherHint(matcherName, nil, nil, options) :: string
			.. "\n\n"
			.. (
				if checkingWithEmptyString
					then "Checking with empty string will always match, use .toBeEmptyDOMElement() instead"
					else "Expected element " .. (if self.isNot then "not to" else "to") .. " have text content"
			)
	end
	return { message = message, pass = pass }
end
exports.toHaveTextContent = toHaveTextContent

local function toHaveValue(self, received: Instance, expected)
	local matcherName = "toHaveValue"
	if not received:IsA("TextBox") then
		error("toHaveValue is meant to be used only with TextBox")
	end

	local text = (received :: any).Text

	local check
	if typeof(expected) == "string" then
		check = string.find(text, expected, 1, true)
	elseif typeof(expected) == "table" and typeof(expected.test) == "function" then
		check = expected:test(text)
	else
		error("Unhandled expected value type: string or regex is required")
	end

	local options = {
		isNot = self.isNot,
		promise = self.promise,
	}

	local pass = not not check
	local message = function()
		return self.utils.matcherHint(matcherName, nil, nil, options) :: string
			.. "\n\n"
			.. "Expected element "
			.. (if self.isNot then "not to" else "to")
			.. " have value"
	end
	return { message = message, pass = pass }
end
exports.toHaveValue = toHaveValue

return exports
