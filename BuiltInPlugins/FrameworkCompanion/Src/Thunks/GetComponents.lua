--[[
	Gets info for all components in the DevFramework.
	Stores this info in the Components reducer.
]]

local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework.Util)
local DocParser = Util.Typecheck.DocParser

local SetComponents = require(Plugin.Src.Actions.SetComponents)

local function getComponentsFromDirectory(directory, scripts, tests)
	local components = {}

	for _, componentScript in ipairs(directory:GetChildren()) do
		if componentScript:IsA("ModuleScript") then
			local name = componentScript.Name
			if not (name:find(".spec")) then
				local component = require(componentScript)
				local isImmutable = getmetatable(component) ~= nil and getmetatable(component).__newindex ~= nil
				local isComponent = type(component) == "table" and not isImmutable and component.render ~= nil
				if isComponent and component.validateProps ~= nil then
					local docs = DocParser.new(component, componentScript):parse()
					docs.Summary = docs.Summary:gsub("\n", " ")
					for propName, prop in ipairs(docs.Required) do
						docs.Required[propName].Comment = prop.Comment:gsub("\n", " ")
					end
					for propName, prop in ipairs(docs.Optional) do
						docs.Optional[propName].Comment = prop.Comment:gsub("\n", " ")
					end
					for propName, prop in ipairs(docs.Style) do
						docs.Style[propName].Comment = prop.Comment:gsub("\n", " ")
					end
					components[name] = docs
					scripts[name] = componentScript
					tests[name] = componentScript:FindFirstChild("test.spec")
				end
			end
		end
	end

	return components
end

return function()
	return function(store)
		local Framework = Plugin.Packages.Framework

		local components = {}
		local scripts = {}
		local tests = {}
		components.UI = getComponentsFromDirectory(Framework.UI, scripts, tests)
		components.StudioUI = getComponentsFromDirectory(Framework.StudioUI, scripts, tests)

		store:dispatch(SetComponents(components, scripts, tests))
	end
end
