-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/element-queries.js
local Packages = script.Parent.Parent.Parent

local RegExp = require(Packages.LuauRegExp)

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local describe = JestGlobals.describe
local afterEach = JestGlobals.afterEach

local CollectionService = game:GetService("CollectionService")

local configure = require(script.Parent.Parent.config).configure

-- ROBLOX deviation START: to restore config
local getConfig = require(script.Parent.Parent.config).getConfig
-- ROBLOX deviation START

local test_utilsModule = require(script.Parent.helpers["test-utils"])
local render = test_utilsModule.render
local renderIntoDocument = test_utilsModule.renderIntoDocument
test("query can return null", function()
	local div = Instance.new("Frame")
	local ref = render({ div })
	local _queryByLabelText, queryByDisplayValue, queryByPlaceholderText, queryByText, queryByTestId, _queryByAltText =
		ref.queryByLabelText,
		ref.queryByDisplayValue,
		ref.queryByPlaceholderText,
		ref.queryByText,
		ref.queryByTestId,
		ref.queryByAltText

	-- ROBLOX deviation START: Unsupported queries commented out
	expect(queryByTestId("LucyRicardo")).toBeNull()
	-- expect(queryByLabelText("LucyRicardo")).toBeNull()
	expect(queryByDisplayValue("LucyRicardo")).toBeNull()
	expect(queryByPlaceholderText("LucyRicardo")).toBeNull()
	expect(queryByText("LucyRicardo")).toBeNull()
	-- expect(queryByAltText("LucyRicardo")).toBeNull()
	-- ROBLOX deviation END
end)
test("get throws a useful error message", function()
	local div = Instance.new("Frame")
	local ref = render({ div })

	local _getByLabelText, getByDisplayValue, getByPlaceholderText, getByText, getByTestId, _getByAltText, _getByTitle, _getByRole =
		ref.getByLabelText,
		ref.getByDisplayValue,
		ref.getByPlaceholderText,
		ref.getByText,
		ref.getByTestId,
		ref.getByAltText,
		ref.getByTitle,
		ref.getByRole

	-- ROBLOX deviation START: prettified element
	local prettyDiv = [[Frame {
  "AbsolutePosition": Vector2(0, 0),
  "AbsoluteRotation": 0,
  "AbsoluteSize": Vector2(0, 0),
  "Active": false,
  "AnchorPoint": Vector2(0, 0),
  "Archivable": true,
  "AutoLocalize": true,
  "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
  "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
  "BackgroundTransparency": 0,
  "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
  "BorderMode": EnumItem(Enum.BorderMode.Outline),
  "BorderSizePixel": 1,
  "ClassName": "Frame",
  "ClipsDescendants": false,
  "LayoutOrder": 0,
  "Name": "Frame",
  "NextSelectionDown": nil,
  "NextSelectionLeft": nil,
  "NextSelectionRight": nil,
  "NextSelectionUp": nil,
  "Parent": "Document" [Folder],
  "Position": UDim2({0, 0}, {0, 0}),
  "RootLocalizationTable": nil,
  "Rotation": 0,
  "Selectable": false,
  "SelectionImageObject": nil,
  "Size": UDim2({0, 0}, {0, 0}),
  "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
  "Style": EnumItem(Enum.FrameStyle.Custom),
  "Visible": true,
  "ZIndex": 1,
  "Frame": Frame {
    "AbsolutePosition": Vector2(0, 0),
    "AbsoluteRotation": 0,
    "AbsoluteSize": Vector2(0, 0),
    "Active": false,
    "AnchorPoint": Vector2(0, 0),
    "Archivable": true,
    "AutoLocalize": true,
    "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
    "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
    "BackgroundTransparency": 0,
    "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
    "BorderMode": EnumItem(Enum.BorderMode.Outline),
    "BorderSizePixel": 1,
    "ClassName": "Frame",
    "ClipsDescendants": false,
    "LayoutOrder": 0,
    "Name": "Frame",
    "NextSelectionDown": nil,
    "NextSelectionLeft": nil,
    "NextSelectionRight": nil,
    "NextSelectionUp": nil,
    "Parent": "Frame" [Frame],
    "Position": UDim2({0, 0}, {0, 0}),
    "RootLocalizationTable": nil,
    "Rotation": 0,
    "Selectable": false,
    "SelectionImageObject": nil,
    "Size": UDim2({0, 0}, {0, 0}),
    "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
    "Style": EnumItem(Enum.FrameStyle.Custom),
    "Visible": true,
    "ZIndex": 1,
  },
}]]
	-- ROBLOX deviation END

	-- ROBLOX deviation START: Unsupported queries commented out
	-- 		expect(function()
	-- 			return getByLabelText("LucyRicardo")
	-- 		end).toThrowErrorMatchingInlineSnapshot([[

	--     Unable to find a label with the text of: LucyRicardo

	--     Ignored nodes: comments, <script />, <style />
	--     <div>
	--       <div />
	--     </div>
	--   ]])
	expect(function()
		return getByPlaceholderText("LucyRicardo")
	end).toThrowError(([[
Unable to find an element with the placeholder text of: LucyRicardo

%s]]):format(prettyDiv))

	expect(function()
		return getByText("LucyRicardo")
	end).toThrowError(([[
Unable to find an element with the text: LucyRicardo. This could be because the text is broken up by multiple elements. In this case, you can provide a function for your text matcher to make your matcher more flexible.

%s]]):format(prettyDiv))

	expect(function()
		return getByText("Lucy      Ricardo")
	end).toThrowError(([[
Unable to find an element with the text: Lucy Ricardo (normalized from 'Lucy      Ricardo'). This could be because the text is broken up by multiple elements. In this case, you can provide a function for your text matcher to make your matcher more flexible.

%s]]):format(prettyDiv))

	expect(function()
		return getByTestId("LucyRicardo")
	end).toThrowError(([[
Unable to find an element by: [data-testid="LucyRicardo"]

%s]]):format(prettyDiv))
	-- 		expect(function()
	-- 			return getByAltText("LucyRicardo")
	-- 		end).toThrowErrorMatchingInlineSnapshot([[

	--     Unable to find an element with the alt text: LucyRicardo

	--     Ignored nodes: comments, <script />, <style />
	--     <div>
	--       <div />
	--     </div>
	--   ]])
	-- 		expect(function()
	-- 			return getByTitle("LucyRicardo")
	-- 		end).toThrowErrorMatchingInlineSnapshot([[

	--     Unable to find an element with the title: LucyRicardo.

	--     Ignored nodes: comments, <script />, <style />
	--     <div>
	--       <div />
	--     </div>
	--   ]])
	expect(function()
		return getByDisplayValue("LucyRicardo")
	end).toThrowError(([[
Unable to find an element with the display value: LucyRicardo.

%s]]):format(prettyDiv))
	-- 		expect(function()
	-- 			return getByRole("LucyRicardo")
	-- 		end).toThrowErrorMatchingInlineSnapshot([[

	--     Unable to find an accessible element with the role "LucyRicardo"

	--     There are no accessible roles. But there might be some inaccessible roles. If you wish to access them, then set the `hidden` option to `true`. Learn more about this here: https://testing-library.com/docs/dom-testing-library/api-queries#byrole

	--     Ignored nodes: comments, <script />, <style />
	--     <div>
	--       <div />
	--     </div>
	--   ]])
	-- ROBLOX deviation END
end)
test("can get elements by matching their text content", function()
	local div = Instance.new("Frame")
	local span1 = Instance.new("TextLabel")
	span1.Text = "Currently showing"
	local span2 = Instance.new("TextLabel")
	span2.Text = [[
Step
1

  of 4]]
	span1.Parent = div
	span2.Parent = div

	local queryByText = render({ div }).queryByText
	expect(queryByText("Currently showing")).toBeTruthy()
	expect(queryByText("Step 1 of 4")).toBeTruthy()
end)

-- ROBLOX deviation START: no equivalent of a TextNode, wrapping in text label changes results
-- it("can get elements by matching their text across adjacent text nodes", function()
-- 	local textDiv = Instance.new("Frame")
-- 	local textNodeContent = { "\u{A3}", "24", ".", "99" }
-- 	Array.forEach(
-- 		Array.map(textNodeContent, function(text)
-- 			local textNode = Instance.new("TextLabel")
-- 			textNode.Text = text
-- 			return textNode
-- 		end),
-- 		function(textNode)
-- 			textNode.Parent = textDiv
-- 		end
-- 	)
-- 	local div = Instance.new("Frame")
-- 	local ref = render({ div })
-- 	local container, queryByText = ref.container, ref.queryByText
-- 	textDiv.Parent = container
-- 	expect(queryByText("\u{A3}24.99")).toBeTruthy()
-- end)
-- ROBLOX deviation END
test("can get input elements with type submit, button, or reset", function()
	local div = Instance.new("Frame")
	local button1 = Instance.new("TextButton")
	button1.Text = "Send data"
	button1.Parent = div
	local button2 = Instance.new("TextButton")
	button2.Text = "Clear EVERYTHING"
	button2.Parent = div
	local button3 = Instance.new("TextButton")
	button3.Text = "Push me!"
	button3.Parent = div
	local input = Instance.new("TextBox")
	input.Text = "user data"
	input.Parent = div
	local queryByText = render({ div }).queryByText
	expect(queryByText("Send data")).toBeTruthy()
	expect(queryByText("Clear EVERYTHING")).toBeTruthy()
	expect(queryByText("Push me!")).toBeTruthy()
	expect(queryByText("user data")).toBeFalsy()
end)
test("matches case with RegExp matcher", function()
	local span = Instance.new("TextLabel")
	span.Text = "STEP 1 of 4"
	local queryByText = render({ span }).queryByText
	expect(queryByText(RegExp("STEP 1 of 4"))).toBeTruthy()
	expect(queryByText(RegExp("Step 1 of 4"))).never.toBeTruthy()
end)
test("queryByText matches case with non-string matcher", function()
	local span = Instance.new("TextLabel")
	span.Text = "1"
	local queryByText = render({ span }).queryByText
	expect(queryByText(1)).toBeTruthy()
end)

-- ROBLOX deviation START: ByLabelText not supported
-- 	it("can get form controls by label text", function()
-- 		local getByLabelText = render([[

--     <div>
--       <label>
--         1st<input id="first-id" />
--       </label>
--       <div>
--         <label for="second-id">2nd</label>
--         <input id="second-id" />
--       </div>
--       <div>
--         <label id="third-label">3rd</label>
--         <input aria-labelledby="third-label" id="third-id" />
--       </div>
--       <div>
--         <label for="fourth.id">4th</label>
--         <input id="fourth.id" />
--       </div>
--       <div>
--       <div>
--         <label id="fifth-label-one">5th one</label>
--         <label id="fifth-label-two">5th two</label>
--         <input aria-labelledby="fifth-label-one fifth-label-two" id="fifth-id" />
--       </div>
--       <div>
--         <input id="sixth-label-one" value="6th one"/>
--         <input id="sixth-label-two" value="6th two"/>
--         <label id="sixth-label-three">6th three</label>
--         <input aria-labelledby="sixth-label-one sixth-label-two sixth-label-three" id="sixth-id" />
--       </div>
--       <div>
--         <span id="seventh-label-one">7th one</span>
--         <input aria-labelledby="seventh-label-one" id="seventh-id" />
--       </div>
--       <div>
--         <label id="eighth.label">8th one</label>
--         <input aria-labelledby="eighth.label" id="eighth.id" />
--       </div>
--     </div>
--   ]]).getByLabelText
-- 		expect(getByLabelText("1st").id).toBe("first-id")
-- 		expect(getByLabelText("2nd").id).toBe("second-id")
-- 		expect(getByLabelText("3rd").id).toBe("third-id")
-- 		expect(getByLabelText("4th").id).toBe("fourth.id")
-- 		expect(getByLabelText("5th one").id).toBe("fifth-id")
-- 		expect(getByLabelText("5th two").id).toBe("fifth-id")
-- 		expect(getByLabelText("6th one").id).toBe("sixth-id")
-- 		expect(getByLabelText("6th two").id).toBe("sixth-id")
-- 		expect(getByLabelText("6th one 6th two").id).toBe("sixth-id")
-- 		expect(getByLabelText("6th one 6th two 6th three").id).toBe("sixth-id")
-- 		expect(getByLabelText("7th one").id).toBe("seventh-id")
-- 		expect(getByLabelText("8th one").id).toBe("eighth.id")
-- 	end)

-- 	it("can get elements labelled with aria-labelledby attribute", function()
-- 		local getByLabelText, getAllByLabelText
-- 		do
-- 			local ref = render([[

--     <div>
--       <h1 id="content-header">The Gettysburg Address</h1>
--       <main id="sibling-of-content-header" aria-labelledby="content-header">
--         <section aria-labelledby="content-header section-one-header" id="section-one">
--           <h2 id="section-one-header">Section One</h2>
--           <p>Four score and seven years ago, ...</p>
--         </section>
--       </main>
--       <p>The Gettysburg Address</p>
--     </div>
--   ]])
-- 			getByLabelText, getAllByLabelText = ref.getByLabelText, ref.getAllByLabelText
-- 		end
-- 		local result = Array.map(getAllByLabelText("The Gettysburg Address"), function(el)
-- 			return el.id
-- 		end) --[[ ROBLOX CHECK: check if 'getAllByLabelText('The Gettysburg Address')' is an Array ]]
-- 		expect(result).toHaveLength(2)
-- 		expect(result).toEqual(expect:arrayContaining({ "sibling-of-content-header", "section-one" }))
-- 		expect(getByLabelText("Section One").id).toBe("section-one")
-- 	end)

-- 	it("can get sibling elements with aria-labelledby attribute", function()
-- 		local getAllByLabelText = render([[

--     <div>
--       <svg id="icon" aria-labelledby="icon-desc"></svg>
--       <span id="icon-desc">Tacos</span>
--     </div>
--   ]]).getAllByLabelText
-- 		local result = getAllByLabelText("Tacos")
-- 		expect(result).toHaveLength(1)
-- 		expect(result[
-- 			1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 		].id).toBe("icon")
-- 	end)

-- 	it("can filter results of label query based on selector", function()
-- 		local getAllByLabelText = render([[

--     <div>
--       <label id="label1" for="input1">
--         Test Label
--         <input id="input2" />
--       </label>
--       <input id="input1" class="fancy-input" />
--       <span aria-labelledby="label1">Some hint text</span>
--     </div>
--   ]]).getAllByLabelText
-- 		local result = getAllByLabelText("Test Label", { selector = ".fancy-input" })
-- 		expect(result).toHaveLength(1)
-- 		expect(result[
-- 			1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 		].id).toBe("input1")
-- 	end)

-- 	it("can find any labelable element when label text is inside other elements", function()
-- 		local getByLabelText = render([[

--     <label>
--       <span>Test</span>
--       <span>Label</span>
--       <button />
--       <input />
--       <meter />
--       <output />
--       <progress />
--       <select />
--       <textarea />
--     </label>
--   ]]).getByLabelText
-- 		local nodeTypes = { "button", "input", "meter", "output", "progress", "select", "textarea" }
-- 		Array.forEach(nodeTypes, function(nodeType)
-- 			expect(getByLabelText("Test Label", { selector = nodeType }).nodeName).toEqual(nodeType:toUpperCase())
-- 		end) --[[ ROBLOX CHECK: check if 'nodeTypes' is an Array ]]
-- 	end) -- According to the spec, the first descendant of a label that is a labelable element is the labeled control
-- 	-- https://html.spec.whatwg.org/multipage/forms.html#the-label-element
-- 	it("returns the labelable element control inside a label", function()
-- 		local getByLabelText = render([[

--     <label>
--       <span>Test</span>
--       <span>Label</span>
--       <button />
--       <input />
--       <meter />
--       <output />
--       <progress />
--       <select />
--       <textarea ></textarea>
--     </label>
--   ]]).getByLabelText
-- 		expect(getByLabelText("Test Label").nodeName).toEqual("BUTTON")
-- 	end)
-- 	it("can find non-input elements when aria-labelledby a label", function()
-- 		local getAllByLabelText = render([[

--     <div>
--       <label id="label1">Test Label</label>
--       <ul aria-labelledby="label1">
--         <li>Hello</li>
--       </ul
--     </div>
--   ]]).getAllByLabelText
-- 		local result = getAllByLabelText("Test Label")
-- 		expect(result).toHaveLength(1)
-- 		expect(result[
-- 			1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 		].nodeName).toBe("UL")
-- 	end)
-- 	it("can find the correct element when there are multiple matching labels", function()
-- 		local getByLabelText = render([[

--     <label>
--       Test Label
--       <input />
--     </label>
--     <label>
--       Test Label
--       <textarea></textarea>
--     </label>
--   ]]).getByLabelText
-- 		local result = getByLabelText("Test Label", { selector = "input" })
-- 		expect(result.nodeName).toBe("INPUT")
-- 	end)
-- ROBLOX deviation END
test("get can get form controls by placeholder", function()
	local input = Instance.new("TextBox")
	input.PlaceholderText = "username"
	input:SetAttribute("id", "username-id")
	local getByPlaceholderText = render({ input }).getByPlaceholderText
	expect(getByPlaceholderText("username"):GetAttribute("id")).toBe("username-id")
end)
test("queryByPlaceholderText matches case with non-string matcher", function()
	local input = Instance.new("TextBox")
	input.PlaceholderText = "1"
	local queryByPlaceholderText = render({ input }).queryByPlaceholderText
	expect(queryByPlaceholderText(1)).toBeTruthy()
end)

-- ROBLOX deviation START: ByLabelText not supported
-- 	it("label with no form control", function()
-- 		local getByLabelText, queryByLabelText
-- 		do
-- 			local ref = render("<label>All alone</label>")
-- 			getByLabelText, queryByLabelText = ref.getByLabelText, ref.queryByLabelText
-- 		end
-- 		expect(queryByLabelText(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /alone/ ]]
-- 		)).toBeNull()
-- 		expect(function()
-- 			return getByLabelText(
-- 				error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /alone/ ]]
-- 			)
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     Found a label with the text of: /alone/, however no form control was found associated to that label. Make sure you're using the "for" attribute or "aria-labelledby" attribute correctly.

--     Ignored nodes: comments, <script />, <style />
--     <div>
--       <label>
--         All alone
--       </label>
--     </div>
--   ]])
-- 	end)

-- 	it('label with "for" attribute but no form control and fuzzy matcher', function()
-- 		local getByLabelText, queryByLabelText
-- 		do
-- 			local ref = render('<label for="foo">All alone label</label>')
-- 			getByLabelText, queryByLabelText = ref.getByLabelText, ref.queryByLabelText
-- 		end
-- 		expect(queryByLabelText("alone", { exact = false })).toBeNull()
-- 		expect(function()
-- 			return getByLabelText("alone", { exact = false })
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     Found a label with the text of: alone, however no form control was found associated to that label. Make sure you're using the "for" attribute or "aria-labelledby" attribute correctly.

--     Ignored nodes: comments, <script />, <style />
--     <div>
--       <label
--         for="foo"
--       >
--         All alone label
--       </label>
--     </div>
--   ]])
-- 	end)

-- 	it("label with children with no form control", function()
-- 		local getByLabelText, queryByLabelText
-- 		do
-- 			local ref = render([[

--   <label>
--     All alone but with children
--     <textarea>Hello</textarea>
--     <select><option value="0">zero</option></select>
--   </label>]])
-- 			getByLabelText, queryByLabelText = ref.getByLabelText, ref.queryByLabelText
-- 		end
-- 		expect(queryByLabelText(
-- 			error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /alone/ ]]
-- 			{ selector = "input" }
-- 		)).toBeNull()
-- 		expect(function()
-- 			return getByLabelText(
-- 				error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /alone/ ]]
-- 				{ selector = "input" }
-- 			)
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     Found a label with the text of: /alone/, however no form control was found associated to that label. Make sure you're using the "for" attribute or "aria-labelledby" attribute correctly.

--     Ignored nodes: comments, <script />, <style />
--     <div>

--       <label>

--         All alone but with children

--         <textarea>
--           Hello
--         </textarea>

--         <select>
--           <option
--             value="0"
--           >
--             zero
--           </option>
--         </select>

--       </label>
--     </div>
--   ]])
-- 	end)

-- 	it("label with non-labellable element", function()
-- 		local getByLabelText, queryByLabelText
-- 		do
-- 			local ref = render([[

--   <div>
--     <label for="div1">Label 1</label>
--     <div id="div1">
--       Hello
--     </div>
--   </div>
--   ]])
-- 			getByLabelText, queryByLabelText = ref.getByLabelText, ref.queryByLabelText
-- 		end
-- 		expect(queryByLabelText(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /Label/ ]]
-- 		)).toBeNull()
-- 		expect(function()
-- 			return getByLabelText(
-- 				error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /Label/ ]]
-- 			)
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     Found a label with the text of: /Label/, however the element associated with this label (<div />) is non-labellable [https://html.spec.whatwg.org/multipage/forms.html#category-label]. If you really need to label a <div />, you can use aria-label or aria-labelledby instead.

--     Ignored nodes: comments, <script />, <style />
--     <div>

--       <div>

--         <label
--           for="div1"
--         >
--           Label 1
--         </label>

--         <div
--           id="div1"
--         >

--           Hello

--         </div>

--       </div>

--     </div>
--   ]])
-- 	end)

-- 	it("multiple labels with non-labellable elements", function()
-- 		local getAllByLabelText, queryAllByLabelText
-- 		do
-- 			local ref = render([[

--   <div>
--     <label for="span1">Label 1</label>
--     <span id="span1">
--       Hello
--     </span>
--     <label for="p1">Label 2</label>
--     <p id="p1">
--       World
--     </p>
--   </div>
--   ]])
-- 			getAllByLabelText, queryAllByLabelText = ref.getAllByLabelText, ref.queryAllByLabelText
-- 		end
-- 		expect(queryAllByLabelText(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /Label/ ]]
-- 		)).toEqual({})
-- 		expect(function()
-- 			return getAllByLabelText(
-- 				error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /Label/ ]]
-- 			)
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     Found a label with the text of: /Label/, however the element associated with this label (<span />) is non-labellable [https://html.spec.whatwg.org/multipage/forms.html#category-label]. If you really need to label a <span />, you can use aria-label or aria-labelledby instead.

--     Found a label with the text of: /Label/, however the element associated with this label (<p />) is non-labellable [https://html.spec.whatwg.org/multipage/forms.html#category-label]. If you really need to label a <p />, you can use aria-label or aria-labelledby instead.

--     Ignored nodes: comments, <script />, <style />
--     <div>

--       <div>

--         <label
--           for="span1"
--         >
--           Label 1
--         </label>

--         <span
--           id="span1"
--         >

--           Hello

--         </span>

--         <label
--           for="p1"
--         >
--           Label 2
--         </label>

--         <p
--           id="p1"
--         >

--           World

--         </p>

--       </div>

--     </div>
--   ]])
-- 	end)

-- 	it("totally empty label", function()
-- 		local getByLabelText, queryByLabelText
-- 		do
-- 			local ref = render("<label />")
-- 			getByLabelText, queryByLabelText = ref.getByLabelText, ref.queryByLabelText
-- 		end
-- 		expect(queryByLabelText("")).toBeNull()
-- 		expect(function()
-- 			return getByLabelText("")
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     Found a label with the text of: , however no form control was found associated to that label. Make sure you're using the "for" attribute or "aria-labelledby" attribute correctly.

--     Ignored nodes: comments, <script />, <style />
--     <div>
--       <label />
--     </div>
--   ]])
-- 	end)

-- 	it("getByLabelText with aria-label", function()
-- 		-- not recommended normally, but supported for completeness
-- 		local queryByLabelText = render('<input aria-label="batman" />').queryByLabelText
-- 		expect(queryByLabelText(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /bat/ ]]
-- 		)).toBeTruthy()
-- 	end)

-- 	it("queryByLabelText matches case with non-string matcher", function()
-- 		local queryByLabelText = render('<input aria-label="1" />').queryByLabelText
-- 		expect(queryByLabelText(1)).toBeTruthy()
-- 	end)
--ROBLOX deviation END

-- ROBLOX deviation START: ByAltText not supported
-- 	it("get element by its alt text", function()
-- 		local getByAltText = render([[

--     <div>
--       <input data-info="no alt here" />
--       <img alt="finding nemo poster" src="/finding-nemo.png" />
--     </div>,
--   ]]).getByAltText
-- 		expect(getByAltText(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /fin.*nem.*poster$/i ]]
-- 		).src).toContain("/finding-nemo.png")
-- 	end)

-- 	it("queryByAltText matches case with non-string matcher", function()
-- 		local queryByAltText = render('<img alt="1" src="/finding-nemo.png" />').queryByAltText
-- 		expect(queryByAltText(1)).toBeTruthy()
-- 	end)
-- ROBLOX deviation END

-- ROBLOX deviation START: ByTitle not supported
-- 	it("query/get element by its title", function()
-- 		local getByTitle, queryByTitle
-- 		do
-- 			local ref = render([[

--     <div>
--         <span title="Ignore this" id="1"/>
--         <span title="Delete" id="2"/>
--         <span title="Ignore this as well" id="3"/>
--         <div title="WrongTitle" id="4">HelloWorld</div>
--     </div>
--   ]])
-- 			getByTitle, queryByTitle = ref.getByTitle, ref.queryByTitle
-- 		end
-- 		expect(getByTitle("Delete").id).toEqual("2")
-- 		expect(queryByTitle("Delete").id).toEqual("2")
-- 		expect(queryByTitle("Del", { exact = false }).id).toEqual("2")
-- 		expect(queryByTitle("HelloWorld")).toBeNull()
-- 	end)

-- 	it("query/get title element of SVG", function()
-- 		local getByTitle, queryByTitle
-- 		do
-- 			local ref = render([[

--     <div>
--         <svg>
--             <title id="svg-title">Close</title>
--             <g>
--               <path />
--             </g>
--         </svg>
--     </div>
--   ]])
-- 			getByTitle, queryByTitle = ref.getByTitle, ref.queryByTitle
-- 		end
-- 		expect(getByTitle("Close").id).toEqual("svg-title")
-- 		expect(queryByTitle("Close").id).toEqual("svg-title")
-- 	end)

-- 	it("queryByTitle matches case with non-string matcher", function()
-- 		local queryByTitle = render('<span title="1" />').queryByTitle
-- 		expect(queryByTitle(1)).toBeTruthy()
-- 	end)
-- ROBLOX deviation END
test("query/get element by its value", function()
	local div = Instance.new("Frame")
	local input1 = Instance.new("TextBox")
	input1.PlaceholderText = "name"
	local input2 = Instance.new("TextBox")
	input2.PlaceholderText = "lastname"
	input2.Text = "Norris"
	local input3 = Instance.new("TextBox")
	input3.PlaceholderText = "email"
	input1.Parent = div
	input2.Parent = div
	input3.Parent = div
	local ref = render({ div })
	local getByDisplayValue, queryByDisplayValue = ref.getByDisplayValue, ref.queryByDisplayValue
	expect(getByDisplayValue("Norris").PlaceholderText).toEqual("lastname")
	expect(queryByDisplayValue("Norris").PlaceholderText).toEqual("lastname")
end)

-- ROBLOX deviation START: no select component equivalent
-- 	it("query/get select by text with the default option selected", function()
-- 		local getByDisplayValue, queryByDisplayValue
-- 		do
-- 			local ref = render([[

--   <select id="state-select">
--     <option value="">State</option>
--     <option value="AL">Alabama</option>
--     <option value="AK" >Alaska</option>
--     <option value="AZ">Arizona</option>
--   </select>
--   ]])
-- 			getByDisplayValue, queryByDisplayValue = ref.getByDisplayValue, ref.queryByDisplayValue
-- 		end
-- 		expect(getByDisplayValue("State").id).toEqual("state-select")
-- 		expect(queryByDisplayValue("State").id).toEqual("state-select")
-- 	end)

-- 	it("query/get select by text with one option selected", function()
-- 		local getByDisplayValue, queryByDisplayValue
-- 		do
-- 			local ref = render([[

--   <select id="state-select">
--     <option value="">State</option>
--     <option value="AL">Alabama</option>
--     <option selected value="AK" >Alaska</option>
--     <option value="AZ">Arizona</option>
--   </select>
--   ]])
-- 			getByDisplayValue, queryByDisplayValue = ref.getByDisplayValue, ref.queryByDisplayValue
-- 		end
-- 		expect(getByDisplayValue("Alaska").id).toEqual("state-select")
-- 		expect(queryByDisplayValue("Alaska").id).toEqual("state-select")
-- 	end)

-- 	it("query/get select by text with multiple options selected", function()
-- 		local getByDisplayValue, queryByDisplayValue
-- 		do
-- 			local ref = render([[

--   <select multiple id="state-select">
--     <option value="">State</option>
--     <option selected value="AL">Alabama</option>
--     <option selected value="AK" >Alaska</option>
--     <option value="AZ">Arizona</option>
--   </select>
--   ]])
-- 			getByDisplayValue, queryByDisplayValue = ref.getByDisplayValue, ref.queryByDisplayValue
-- 		end
-- 		expect(getByDisplayValue("Alabama").id).toEqual("state-select")
-- 		expect(queryByDisplayValue("Alaska").id).toEqual("state-select")
-- 	end)

-- 	it("queryByDisplayValue matches case with non-string matcher", function()
-- 		local queryByDisplayValue = render([[

--   <select multiple id="state-select">
--     <option selected value="one">1</option>
--   </select>
--   ]]).queryByDisplayValue
-- 		expect(queryByDisplayValue(1)).toBeTruthy()
-- 	end)
-- ROBLOX deviation END

describe("query by test id", function()
	afterEach(function()
		-- Restore the default test id attribute
		-- even if these tests failed
		configure({ testIdAttribute = "data-testid" })
	end)

	test("can get elements by test id", function()
		local div = Instance.new("Frame")
		CollectionService:AddTag(div, "data-testid=firstName")
		local queryByTestId = render({ div }).queryByTestId
		expect(queryByTestId("firstName")).toBeTruthy()
		expect(queryByTestId(RegExp("first"))).toBeTruthy()
		expect(queryByTestId(function(testid)
			return testid == "firstName"
		end)).toBeTruthy()
		-- match should be exact, case-sensitive
		expect(queryByTestId("firstname")).never.toBeTruthy()
		expect(queryByTestId("first")).never.toBeTruthy()
		expect(queryByTestId("firstNamePlusMore")).never.toBeTruthy()
		expect(queryByTestId("first-name")).never.toBeTruthy()
	end)

	test("queryByTestId matches case with non-string matcher", function()
		local span = Instance.new("TextLabel")
		CollectionService:AddTag(span, "data-testid=1")
		local queryByTestId = render({ span }).queryByTestId
		expect(queryByTestId(1)).toBeTruthy()
	end)

	test("can override test id attribute", function()
		local div = Instance.new("Frame")
		CollectionService:AddTag(div, "data-my-test-id=theTestId")
		local queryByTestId = render({ div }).queryByTestId
		configure({ testIdAttribute = "data-my-test-id" })
		expect(queryByTestId("theTestId")).toBeTruthy()
		configure({ testIdAttribute = "something-else" })
		expect(queryByTestId("theTestId")).toBeFalsy()
	end)
end)

-- ROBLOX deviation START: ByRole not supported
-- 	it("queryAllByRole returns semantic html elements", function()
-- 		local queryAllByRole = render([[

--     <form>
--       <h1>Heading 1</h1>
--       <h2>Heading 2</h2>
--       <h3>Heading 3</h3>
--       <h4>Heading 4</h4>
--       <h5>Heading 5</h5>
--       <h6>Heading 6</h6>
--       <svg role="img">
--         <rect width="100" height="100" />
--       </svg>
--       <ol>
--         <li></li>
--         <li></li>
--       </ol>
--       <ul>
--         <li></li>
--       </ul>
--       <input>
--       <input type="text">
--       <input type="checkbox">
--       <input type="radio">
--       <table>
--         <thead>
--           <tr>
--             <th></th>
--             <th scope="row"></th>
--           </tr>
--         </thead>
--         <tbody>
--           <tr></tr>
--           <tr></tr>
--         </tbody>
--       </table>
--       <table role="grid"></table>
--       <div role="meter progressbar" />
--       <button>Button</button>
--       <select><option value="1">one</option></select>
--       <select size="2">
--         <option value="1">one</option>
--         <option value="2">two</option>
--       </select>
--     </form>
--   ]]).queryAllByRole
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /table/i ]]
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole(
-- 			error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /tabl/i ]]
-- 			{ exact = false }
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /columnheader/i ]]
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /rowheader/i ]]
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /grid/i ]]
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /form/i ]]
-- 		)).toHaveLength(0)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /button/i ]]
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /heading/i ]]
-- 		)).toHaveLength(6)
-- 		expect(queryAllByRole("list")).toHaveLength(2)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /listitem/i ]]
-- 		)).toHaveLength(3)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /textbox/i ]]
-- 		)).toHaveLength(2)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /checkbox/i ]]
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /radio/i ]]
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole("row")).toHaveLength(3)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /rowgroup/i ]]
-- 		)).toHaveLength(2)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /(table)|(textbox)/i ]]
-- 		)).toHaveLength(3)
-- 		expect(queryAllByRole(
-- 			error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /img/i ]]
-- 		)).toHaveLength(1)
-- 		expect(queryAllByRole("meter")).toHaveLength(1)
-- 		expect(queryAllByRole("progressbar")).toHaveLength(0)
-- 		expect(queryAllByRole("progressbar", { queryFallbacks = true })).toHaveLength(1)
-- 		expect(queryAllByRole("combobox")).toHaveLength(1)
-- 		expect(queryAllByRole("listbox")).toHaveLength(1)
-- 	end)

-- 	it("queryByRole matches case with non-string matcher", function()
-- 		local queryByRole = render('<span role="1" />').queryByRole
-- 		expect(queryByRole(1)).toBeTruthy()
-- 	end)
-- ROBLOX deviation END
test("getAll* matchers return an array", function()
	local div1 = Instance.new("Frame")
	local img1 = Instance.new("ImageLabel")
	CollectionService:AddTag(img1, "data-testid=poster")
	local img2 = Instance.new("ImageLabel")
	CollectionService:AddTag(img2, "data-testid=poster")
	local img3 = Instance.new("ImageLabel")
	CollectionService:AddTag(img3, "data-testid=poster")
	local p = Instance.new("TextLabel")
	p.Text = "Where to next?"
	local input = Instance.new("TextBox")
	input.PlaceholderText = "Dwayne 'The Rock' Johnson"
	input:SetAttribute("id", "username")
	-- ROBLOX deviation START: replacing select with TextBox to preserve tests results
	local select1 = Instance.new("TextBox")
	select1.Text = "German cars"
	local select2 = Instance.new("TextBox")
	select2.Text = "Japanese cars"
	local div2 = Instance.new("Frame")

	img1.Parent = div1
	img2.Parent = div1
	img3.Parent = div1
	p.Parent = div1
	input.Parent = div1
	select1.Parent = div1
	select2.Parent = div1
	div2.Parent = div1

	local ref = render({ div1 })
	local _getAllByAltText, getAllByTestId, _getAllByLabelText, getAllByDisplayValue, getAllByPlaceholderText, getAllByText, _getAllByRole =
		ref.getAllByAltText,
		ref.getAllByTestId,
		ref.getAllByLabelText,
		ref.getAllByDisplayValue,
		ref.getAllByPlaceholderText,
		ref.getAllByText,
		ref.getAllByRole

	-- ROBLOX deviation START: unsupported queries commented out
	-- expect(getAllByAltText(
	-- 	error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /finding.*poster$/i ]]
	-- )).toHaveLength(2)
	-- expect(getAllByAltText(
	-- 	error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /jumanji/ ]]
	-- )).toHaveLength(1)
	expect(getAllByTestId("poster")).toHaveLength(3)
	expect(getAllByPlaceholderText(RegExp("The Rock"))).toHaveLength(1)
	-- expect(getAllByLabelText("User Name")).toHaveLength(1)
	expect(getAllByDisplayValue("Japanese cars")).toHaveLength(1)
	expect(getAllByDisplayValue(RegExp("cars$"))).toHaveLength(2)
	expect(getAllByText(
		-- ROBLOX FIXME START: case insensitive flag not working: should be ^where
		RegExp("^Where", "i")
		-- ROBLOX FIXME END: case insensitive flag not working
	)).toHaveLength(1)
	-- expect(getAllByRole(
	-- 	RegExp("container")
	-- )).toHaveLength(1)
	-- expect(getAllByRole("meter")).toHaveLength(1)
	-- expect(getAllByRole("progressbar", { queryFallbacks = true })).toHaveLength(1)
	-- ROBLOX deviation END
end)
test("getAll* matchers throw for 0 matches", function()
	local div = Instance.new("Frame")
	local label = Instance.new("TextLabel")
	label.Text = "No Matches Please"
	label.Parent = div

	local ref = render({ div })
	local _getAllByAltText, getAllByTestId, _getAllByLabelText, getAllByDisplayValue, getAllByPlaceholderText, getAllByText, _getAllByRole =
		ref.getAllByAltText,
		ref.getAllByTestId,
		ref.getAllByLabelText,
		ref.getAllByDisplayValue,
		ref.getAllByPlaceholderText,
		ref.getAllByText,
		ref.getAllByRole

	-- ROBLOX deviation START: unsupported queries commented out
	expect(function()
		return getAllByTestId("nope")
	end).toThrow()
	expect(function()
		return getAllByTestId("abc")
	end).toThrow()
	-- expect(function()
	-- 	return getAllByAltText("nope")
	-- end).toThrow()
	-- expect(function()
	-- 	return getAllByLabelText("nope")
	-- end).toThrow()
	-- expect(function()
	-- 	return getAllByLabelText("no matches please")
	-- end).toThrow()
	expect(function()
		return getAllByDisplayValue("nope")
	end).toThrow()
	expect(function()
		return getAllByPlaceholderText("nope")
	end).toThrow()
	expect(function()
		return getAllByText("nope")
	end).toThrow()
	-- expect(function()
	-- 	return getAllByRole("nope")
	-- end).toThrow()
	expect(function()
		return getAllByDisplayValue("nope")
	end).toThrow()
	-- ROBLOX deviation END
end)
test("queryAll* matchers return an array for 0 matches", function()
	local div = Instance.new("Frame")

	local ref = render({ div })
	local _queryAllByAltText, queryAllByTestId, _queryAllByLabelText, queryAllByDisplayValue, queryAllByPlaceholderText, queryAllByText, _queryAllByRole =
		ref.queryAllByAltText,
		ref.queryAllByTestId,
		ref.queryAllByLabelText,
		ref.queryAllByDisplayValue,
		ref.queryAllByPlaceholderText,
		ref.queryAllByText,
		ref.queryAllByRole

	-- ROBLOX deviation START: no equivalent of a TextNode, wrapping in text label changes results
	expect(queryAllByTestId("nope")).toHaveLength(0)
	-- expect(queryAllByAltText("nope")).toHaveLength(0)
	-- expect(queryAllByLabelText("nope")).toHaveLength(0)
	expect(queryAllByDisplayValue("nope")).toHaveLength(0)
	expect(queryAllByPlaceholderText("nope")).toHaveLength(0)
	expect(queryAllByText("nope")).toHaveLength(0)
	-- expect(queryAllByRole("nope")).toHaveLength(0)
	-- ROBLOX deviation END
end)

-- ROBLOX deviation START: Text nodes not available
-- it("queryAllByText can query dom nodes", function()
-- 	local queryAllByText = render("hi").queryAllByText
-- 	expect(queryAllByText("hi")).toHaveLength(1)
-- 	expect(queryAllByText("not here")).toHaveLength(0)
-- 	expect(queryAllByText("hi", { selector = "span" })).toHaveLength(0)
-- end)
-- ROBLOX deviation END
test("queryAllByText works with document container", function()
	local p = Instance.new("TextLabel")
	p.Text = "hello"
	-- This is required for Cypress as it uses `document`
	-- as the container for all methods
	local queryAllByText = renderIntoDocument({ p }).queryAllByText
	expect(queryAllByText("hello")).toHaveLength(1)
	expect(queryAllByText("not here")).toHaveLength(0)
	expect(queryAllByText("hello", { selector = { "span" } })).toHaveLength(0)
end)
test("using jest helpers to assert element states", function()
	local span = Instance.new("TextLabel")
	span.Text = "2"
	CollectionService:AddTag(span, "data-testid=count-value")

	local queryByTestId = render({ span }).queryByTestId
	-- other ways to assert your test cases, but you don't need all of them.
	expect(queryByTestId("count-value")).toBeTruthy()
	expect(queryByTestId("count-value1")).never.toBeTruthy()
	expect(queryByTestId("count-value")).toHaveTextContent("2")
	expect(queryByTestId("count-value")).never.toHaveTextContent("21")
	expect(function()
		return expect(queryByTestId("count-value2")).toHaveTextContent("2")
	end).toThrowError()

	-- negative test cases wrapped in throwError assertions for coverage.
	expect(function()
		return expect(queryByTestId("count-value")).never.toBeTruthy()
	end).toThrowError()
	expect(function()
		return expect(queryByTestId("count-value1")).toBeTruthy()
	end).toThrowError()
	expect(function()
		return expect(queryByTestId("count-value")).toHaveTextContent("3")
	end).toThrowError()
	expect(function()
		return expect(queryByTestId("count-value")).never.toHaveTextContent("2")
	end).toThrowError()
end)
test("using jest helpers to check element attributes", function()
	local button = Instance.new("TextButton")
	button.Text = "OK"
	button.Active = false
	CollectionService:AddTag(button, "data-testid=ok-button")
	button:SetAttribute("type", "submit")
	local getByTestId = render({ button }).getByTestId

	-- ROBLOX deviation START: replace some unavailable methods
	expect(getByTestId("ok-button").Active).toBe(false)
	expect(getByTestId("ok-button"):GetAttribute("type")).toBeTruthy()
	expect(getByTestId("ok-button"):GetAttribute("class")).toBeFalsy()
	expect(getByTestId("ok-button"):GetAttribute("type")).toBe("submit")
	expect(getByTestId("ok-button"):GetAttribute("type")).never.toBe("button")
	expect(function()
		return expect(getByTestId("ok-button").Active).toBe(true)
	end).toThrowError()
	expect(function()
		return expect(getByTestId("ok-button"):GetAttribute("type")).never.toBeTruthy()
	end).toThrowError()
	expect(function()
		return expect(getByTestId("ok-button"):GetAttribute("class")).toBeTruthy()
	end).toThrowError()
	expect(function()
		return expect(getByTestId("ok-button"):GetAttribute("type")).never.toBe("submit")
	end).toThrowError()
	expect(function()
		return expect(getByTestId("ok-button"):GetAttribute("type")).toBe("button")
	end).toThrowError()
	-- ROBLOX deviation END
end)
test("using jest helpers to check element class names", function()
	local div = Instance.new("Frame")
	local button1 = Instance.new("TextButton")
	CollectionService:AddTag(button1, "data-testid=delete-button")
	button1:SetAttribute("class", "btn extra btn-danger")
	button1.Text = "Delete item"
	local button2 = Instance.new("TextButton")
	CollectionService:AddTag(button2, "data-testid=cancel-button")
	button2:SetAttribute("class", "btn")
	button2.Text = "Cancel"

	button1.Parent = div
	button2.Parent = div

	local getByTestId = render({ div }).getByTestId
	expect(getByTestId("delete-button"):GetAttribute("class")).toContain("btn")
	expect(getByTestId("delete-button"):GetAttribute("class")).toContain("btn-danger")
	expect(getByTestId("delete-button"):GetAttribute("class")).toContain("extra")
	expect(getByTestId("delete-button"):GetAttribute("class")).never.toBe("xtra")
	-- ROBLOX deviation START: no matcher for partial attribute
	-- expect(getByTestId("delete-button"):GetAttribute("class")).toBe("btn btn-danger")
	-- ROBLOX deviation END
	expect(getByTestId("delete-button"):GetAttribute("class")).never.toBe("btn-link")
	expect(getByTestId("cancel-button"):GetAttribute("class")).never.toBe("btn-danger")
	expect(function()
		return expect(getByTestId("delete-button"):GetAttribute("class")).never.toContain("btn")
	end).toThrowError()
	expect(function()
		return expect(getByTestId("delete-button"):GetAttribute("class")).never.toContain("btn-danger")
	end).toThrowError()
	expect(function()
		return expect(getByTestId("delete-button"):GetAttribute("class")).never.toContain("extra")
	end).toThrowError()
	expect(function()
		return expect(getByTestId("delete-button"):GetAttribute("class")).toBe("xtra")
	end).toThrowError()
	-- ROBLOX deviation START: no matcher for partial attribute
	-- expect(function()
	-- 	return expect(getByTestId("delete-button"):GetAttribute("class")).never.toBe("btn btn-danger")
	-- end).toThrowError()
	-- ROBLOX deviation END
	expect(function()
		return expect(getByTestId("delete-button"):GetAttribute("class")).toBe("btn-link")
	end).toThrowError()
	expect(function()
		return expect(getByTestId("cancel-button"):GetAttribute("class")).toBe("btn-danger")
	end).toThrowError()
end)

-- ROBLOX deviation START: ByRole not supported
-- 	it("using jest helpers to check element role", function()
-- 		local getByRole = render([[

--     <div role="dialog">
--       <span>Contents</span>
--     </div>
--   ]]).getByRole
-- 		expect(getByRole("dialog")).toHaveTextContent("Contents")
-- 	end)
-- 	it("using jest helpers to check element fallback roles", function()
-- 		local getByRole = render([[

--     <div role="meter progressbar">
--       <span>Contents</span>
--     </div>
--   ]]).getByRole
-- 		expect(getByRole("progressbar", { queryFallbacks = true })).toHaveTextContent("Contents")
-- 	end)
-- ROBLOX deviation END
test("the debug helper prints the dom state here", function()
	local originalDebugPrintLimit = _G.DEBUG_PRINT_LIMIT
	local Large = Instance.new("Frame")

	-- ROBLOX deviation START: reduce number of instances, cause 7000 Instances will hang
	for i = 1, 70 do
		local divWithText = Instance.new("TextLabel")
		CollectionService:AddTag(divWithText, "data-testid=debugging")
		divWithText.Text = "Hello World!"
		divWithText.Parent = Large
	end
	-- ROBLOX deviation END

	local getByText = renderIntoDocument({ Large }).getByText
	-- render large DOM which exceeds 7000 limit
	expect(function()
		return expect(getByText("not present")).toBeTruthy()
	end).toThrowError()

	local Hello = Instance.new("TextLabel")
	CollectionService:AddTag(Hello, "data-testid=debugging")
	CollectionService:AddTag(Hello, "data-otherid=debugging")
	Hello.Text = "Hello World!"
	local getByTestId = renderIntoDocument({ Hello }).getByTestId
	_G.DEBUG_PRINT_LIMIT = 5
	-- user should see `...`
	expect(function()
		return expect(getByTestId("not present")).toBeTruthy()
	end).toThrowError(RegExp("...$"))
	--[[ ROBLOX deviation START:
			had to clone element, otherwise there's an error
			"The Parent property of TextLabel is locked"
		]]
	local getByLabelText = renderIntoDocument({ Hello:Clone() }).getByLabelText
	-- ROBLOX deviation END
	_G.DEBUG_PRINT_LIMIT = 10000
	-- user shouldn't see `...`
	expect(function()
		return expect(getByLabelText("not present")).toBeTruthy(RegExp("^((?!%.%.%.).)*$"))
	end).toThrowError()
	--all good replacing it with old value
	_G.DEBUG_PRINT_LIMIT = originalDebugPrintLimit
end)

-- ROBLOX deviation START:nothing is ignored by default
-- it("getByText ignores script tags by default", function()
-- 	local getAllByText = render("<script>Hello</script><div>Hello</div><style>.Hello{}</style>").getAllByText
-- 	local divOnly = getAllByText(
-- 		RegExp("hello")
-- 	)
-- 	expect(divOnly).toHaveLength(1)
-- 	expect(divOnly[
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	].tagName).toBe("DIV")
-- 	local noScript = getAllByText(
-- 		error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /hello/i ]]
-- 		{ ignore = "script" }
-- 	)
-- 	expect(noScript[
-- 		1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	].tagName).toBe("DIV")
-- 	expect(noScript[
-- 		2 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 	].tagName).toBe("STYLE")
-- 	expect(noScript).toHaveLength(2)
-- 	expect(getAllByText(
-- 		error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /hello/i ]]
-- 		{ ignore = false }
-- 	)).toHaveLength(3)
-- end)
-- ROBLOX deviation END
test("the default value for `ignore` can be configured", function()
	-- ROBLOX deviation START: adjusting ignored elements to make sense in lua, restore defaultIgnore
	local defaultIgnore = getConfig().defaultIgnore
	configure({ defaultIgnore = { "TextButton" } })
	local toIgnore = Instance.new("TextButton")
	toIgnore.Text = "Hello"
	local div = Instance.new("TextLabel")
	div.Text = "Hello"
	local dontIgnore = Instance.new("TextLabel")
	dontIgnore.Text = "Hello"
	local getAllByText = render({ dontIgnore, div, toIgnore }).getAllByText
	local noStyle = getAllByText(RegExp("Hello"))
	expect(noStyle).toHaveLength(2)
	expect(noStyle[1].ClassName).toBe("TextLabel")
	expect(noStyle[2].ClassName).toBe("TextLabel")
	configure({ defaultIgnore = defaultIgnore })
	-- ROBLOX deviation END
end)
test("get/query input element by current value", function()
	local div = Instance.new("Frame")
	local input = Instance.new("TextBox")
	input.PlaceholderText = "name"
	CollectionService:AddTag(input, "data-testid=name")
	input.Text = "Mercury"
	input.Parent = div
	local ref = renderIntoDocument({ div })
	local getByDisplayValue, queryByDisplayValue, getByTestId =
		ref.getByDisplayValue, ref.queryByDisplayValue, ref.getByTestId
	expect(getByDisplayValue("Mercury").PlaceholderText).toEqual("name")
	expect(queryByDisplayValue("Mercury").PlaceholderText).toEqual("name")
	getByTestId("name").Text = "Norris"
	expect(getByDisplayValue("Norris").PlaceholderText).toEqual("name")
	expect(queryByDisplayValue("Norris").PlaceholderText).toEqual("name")
	expect(queryByDisplayValue("Nor", { exact = false }).PlaceholderText).toEqual("name")
end)

-- ROBLOX deviation START: no equivalent
-- 	it("get/query select element by current value", function()
-- 		local getByDisplayValue, queryByDisplayValue, getByTestId
-- 		do
-- 			local ref = renderIntoDocument([[

--     <select id="state-select" data-testid="state">
--       <option value="">State</option>
--       <option value="AL">Alabama</option>
--       <option selected value="AK" >Alaska</option>
--       <option value="AZ">Arizona</option>
--     </select>
--   ]])
-- 			getByDisplayValue, queryByDisplayValue, getByTestId =
-- 				ref.getByDisplayValue, ref.queryByDisplayValue, ref.getByTestId
-- 		end
-- 		expect(getByDisplayValue("Alaska").id).toEqual("state-select")
-- 		expect(queryByDisplayValue("Alaska").id).toEqual("state-select")
-- 		getByTestId("state").value = "AL"
-- 		expect(getByDisplayValue("Alabama").id).toEqual("state-select")
-- 		expect(queryByDisplayValue("Alabama").id).toEqual("state-select")
-- 	end)
-- ROBLOX deviation END

-- ROBLOX deviation START: no textarea equivalent
-- 	it("get/query textarea element by current value", function()
-- 		local getByDisplayValue, queryByDisplayValue, getByTestId
-- 		do
-- 			local ref = renderIntoDocument([[

--     <textarea id="content-textarea" data-testid="content">
--       Hello
--     </textarea>
--   ]])
-- 			getByDisplayValue, queryByDisplayValue, getByTestId =
-- 				ref.getByDisplayValue, ref.queryByDisplayValue, ref.getByTestId
-- 		end
-- 		expect(getByDisplayValue("Hello").id).toEqual("content-textarea")
-- 		expect(queryByDisplayValue("Hello").id).toEqual("content-textarea")
-- 		getByTestId("content").value = "World"
-- 		expect(getByDisplayValue("World").id).toEqual("content-textarea")
-- 		expect(queryByDisplayValue("World").id).toEqual("content-textarea")
-- 	end)
-- ROBLOX deviation END

-- ROBLOX deviation START: ByLabelText not supported
-- 	it("can get a textarea with children", function()
-- 		local getByLabelText = renderIntoDocument([[

--     <label>Label<textarea>Value</textarea></label>
--   ]]).getByLabelText
-- 		getByLabelText("Label")
-- 	end)

-- 	it("can get a select with options", function()
-- 		local getByLabelText = renderIntoDocument([[

--     <label>
--       Label
--       <select>
--         <option>Some</option>
--         <option>Options</option>
--       </select>
--     </label>
--   ]]).getByLabelText
-- 		getByLabelText("Label")
-- 	end)

-- 	it("can get an element with aria-labelledby when label has a child", function()
-- 		local getByLabelText = render([[

--     <div>
--       <label id='label-with-textarea'>
--         First Label
--         <textarea>Value</textarea>
--       </label>
--       <input aria-labelledby='label-with-textarea' id='1st-input'/>
--       <label id='label-with-select'>
--         Second Label
--         <select><option value="1">one</option></select>
--       </label>
--       <input aria-labelledby='label-with-select' id='2nd-input'/>
--     </div>
--   ]]).getByLabelText
-- 		expect(getByLabelText("First Label", { selector = "input" }).id).toBe("1st-input")
-- 		expect(getByLabelText("Second Label", { selector = "input" }).id).toBe("2nd-input")
-- 	end)

-- 	it("gets an element when there is an aria-labelledby a not found id", function()
-- 		local getByLabelText = render([[

--     <div>
--       <input aria-labelledby="not-existing-label"/>
--       <label id="existing-label">Test</label>
--       <input aria-labelledby="existing-label" id="input-id" />
--     </div>
--   ]]).getByLabelText
-- 		expect(getByLabelText("Test").id).toBe("input-id")
-- 	end)

-- 	it("return a proper error message when no label is found and there is an aria-labelledby a not found id", function()
-- 		local getByLabelText = render('<input aria-labelledby="not-existing-label"/>').getByLabelText
-- 		expect(function()
-- 			return getByLabelText("LucyRicardo")
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     Unable to find a label with the text of: LucyRicardo

--     Ignored nodes: comments, <script />, <style />
--     <div>
--       <input
--         aria-labelledby="not-existing-label"
--       />
--     </div>
--   ]])
-- 	end)

-- 	-- https://github.com/testing-library/dom-testing-library/issues/723
-- 	it("gets form controls by label text on IE and other legacy browsers", function()
-- 		-- Simulate lack of support for HTMLInputElement.prototype.labels
-- 		jest.spyOn(HTMLInputElement.prototype, "labels", "get"):mockReturnValue(nil)
-- 		local getByLabelText = renderIntoDocument([[

--     <label>
--       Label text
--       <input id="input-id" />
--     </label>
--   ]]).getByLabelText
-- 		expect(getByLabelText("Label text").id).toBe("input-id")
-- 	end)

-- 	-- https://github.com/testing-library/dom-testing-library/issues/787
-- 	it("get the output element by it's label", function()
-- 		local getByLabelText, rerender
-- 		do
-- 			local ref = renderIntoDocument([[

--     <label>foo
--       <output>bar</output>
--     </label>
--   ]])
-- 			getByLabelText, rerender = ref.getByLabelText, ref.rerender
-- 		end
-- 		expect(getByLabelText("foo")).toBeInTheDocument()
-- 		rerender([[

--     <label>
--       <small>foo</small>
--       <output>bar</output>
--     </label>
--   ]])
-- 		expect(getByLabelText("foo")).toBeInTheDocument()
-- 	end)

-- 	-- https://github.com/testing-library/dom-testing-library/issues/343#issuecomment-555385756
-- 	it("should get element by it's label when there are elements with same text", function()
-- 		local getByLabelText = renderIntoDocument([[

--     <label>test 1
--       <textarea>test</textarea>
--     </label>
--   ]]).getByLabelText
-- 		expect(getByLabelText("test 1")).toBeInTheDocument()
-- 	end)
-- ROBLOX deviation END

-- ROBLOX deviatino START: does not apply
-- TODO: undesired behavior. It should ignore the same element: https://github.com/testing-library/dom-testing-library/pull/907#pullrequestreview-678736288
-- 	it("ByText error message ignores not the same elements as configured in `ignore`", function()
-- 		local getByText = renderIntoDocument([[

--     <style>
--       .css-selector {
--         color: red;
--       }
--     </style>
--     <div class="css-selector"></div>
--   ]]).getByText
-- 		expect(function()
-- 			return getByText(".css-selector", { selector = "style", ignore = "script" })
-- 		end).toThrowErrorMatchingInlineSnapshot([[

--     Unable to find an element with the text: .css-selector. This could be because the text is broken up by multiple elements. In this case, you can provide a function for your text matcher to make your matcher more flexible.

--     Ignored nodes: comments, <script />, <style />
--     <body>

--       <div
--         class="css-selector"
--       />

--     </body>
--   ]])
-- 	end)
-- ROBLOX deviation END
return {}
