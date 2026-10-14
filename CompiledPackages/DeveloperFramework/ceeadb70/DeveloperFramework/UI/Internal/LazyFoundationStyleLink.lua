--[[
	Links Foundation styling into the current instance scope. When a plugin Design
	is present, it derives Foundation so one StyleLink can apply both style sheets.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Parent.React)
local Foundation = require(Framework.Parent.Foundation)

local useStyleSheet = Foundation.Hooks.useStyleSheet
local useStudioThemeName = require(Framework.UI.Hooks.useStudioThemeName)

export type Props = {
	Design: StyleSheet?,
}

local references = setmetatable({}, { __mode = "k" })

local function addDerive(design: StyleSheet, styleSheet: StyleSheet)
	local designReferences = references[design]
	if designReferences == nil then
		designReferences = {}
		references[design] = designReferences
	end

	local reference = designReferences[styleSheet]
	if reference == nil then
		reference = {
			count = 0,
			inserted = table.find(design:GetDerives(), styleSheet) == nil,
		}
		designReferences[styleSheet] = reference
		if reference.inserted then
			local derives = table.clone(design:GetDerives())
			table.insert(derives, 1, styleSheet)
			design:SetDerives(derives)
		end
	end
	reference.count += 1
end

local function removeDerive(design: StyleSheet, styleSheet: StyleSheet)
	local designReferences = references[design]
	local reference = if designReferences then designReferences[styleSheet] else nil
	if reference == nil then
		return
	end

	reference.count -= 1
	if reference.count > 0 then
		return
	end

	designReferences[styleSheet] = nil
	if reference.inserted then
		local derives = {}
		for _, derive in design:GetDerives() do
			if derive ~= styleSheet then
				table.insert(derives, derive)
			end
		end
		design:SetDerives(derives)
	end
end

local function LazyFoundationStyleLink(props: Props)
	local styleSheet = useStyleSheet()
	local design = props.Design
	local themeName = useStudioThemeName()
	React.useEffect(function()
		if design == nil or styleSheet == nil then
			return
		end

		addDerive(design, styleSheet)

		return function()
			removeDerive(design, styleSheet)
		end
	end, { design, styleSheet, themeName })

	if styleSheet == nil and design == nil then
		return nil
	end

	return React.createElement("StyleLink", {
		StyleSheet = design or styleSheet :: StyleSheet,
	})
end

return LazyFoundationStyleLink
