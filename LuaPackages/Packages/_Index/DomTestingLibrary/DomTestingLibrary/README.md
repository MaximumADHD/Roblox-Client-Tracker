# DOM Testing Library Lua
Simple and complete testing utilities that encourage good testing practices.

**Ported version [v8.14.0](https://github.com/testing-library/dom-testing-library/tree/v8.14.0)**

<hr />

## Table of Contents

- [The Problem](#the-problem)
- [This Solution](#this-solution)
- [Guiding Principles](#guiding-principles)
- [Requirements](#requirements)
- [Installation](#installation)
- [Deviations](#deviations)
- [Advanced](#advanced)

## The Problem

You want to write maintainable tests for your UI. As a part of this goal,
you want your tests to avoid including implementation details of your components
and rather focus on making your tests give you the confidence for which they are
intended. As part of this, you want your testbase to be maintainable in the long
run so refactors of your components (changes to implementation but not
functionality) don't break your tests and slow you and your team down.

## This Solution

The `DOM Testing Library` is a very light-weight solution for testing nodes 
(Instances). The main utilities it provides involve
querying for nodes in a way that's similar to how the user finds
elements on the page. In this way, the library helps ensure your tests give you
confidence in your UI code. 

## Guiding Principles

> [The more your tests resemble the way your software is used, the more
> confidence they can give you.][guiding-principle]

We try to only expose methods and utilities that encourage you to write tests
that closely resemble how your web pages are used.

Utilities are included in this project based on the following guiding
principles:

1.  If it relates to rendering components, it deals with nodes rather than
    component instances, nor should it encourage dealing with component
    instances.
2.  It should be generally useful for testing the application components in the
    way the user would use it. We _are_ making some trade-offs here because
    we're using a computer and often a headless engine environment, but in
    general, utilities should encourage tests that use the components the way
    they're intended to be used.
3.  Utility implementations and APIs should be simple and flexible.

At the end of the day, what we want is for this library to be pretty
light-weight, simple, and understandable.


## Requirements
`Dom Testing Library` requires `Jest-Roblox` v3 or higher. For more information on Jest-Roblox, check the documentation

**This guide assumes Jest-Roblox is installed and working**

## Installation

To install this library add it to your dev_dependencies in your rotriever.toml.

```
[dev_dependencies]
DomTestingLibrary = "github.com/roblox/dom-testing-library-lua@8.14.0"
```

Run `rotrieve install` to install Dom Testing Library Lua.

**Check the [the JS documentation](https://testing-library.com/docs/) for details. This guide focuses on deviations, and gives some examples.**

## Deviations
### Queries
Queries are the methods that Testing Library gives you to find elements on the page. There are several types of queries (`get`, `find`, `query`); the difference between them is whether the query will throw an error if no element is found or if it will return a Promise and retry. Depending on what page content you are selecting, different queries may be more or less appropriate.

| Type of Query | No Matches    | 1 Match           | >1 Matches    |
| ------------- | ------------- | ----------------- | ------------- |
| getBy...      | Throws        | Returns element   | Throws        |
| queryBy...    | Returns nil   | Returns element   | Throws        |
| findBy...     | Throws        | Returns element   | Throws        |
| getAllBy...   | Throws        | Returns array     | Returns array |
| queryAllBy... | Returns array | Returns array     | Returns array |
| findAllBy...  | Throws        | Returns array     | Returns array |

#### Ported
* ByText: Matches TextLabel and TextButton Text Property
* ByPlaceholderText
* ByDisplayValue: Matches TextBox Text Property
* ByTestId

#### Not Ported
These queries depend on the semantics of the DOM and accesiblity features of it. Since there is no equivalent in Lua, we cannot make assumptions on them or how they can be implemented.
* ByRole
* ByLabelText
* ByTitle
* ByAltText


## Deviations
### TestId
TestId is implemented as a Tag. DOM version is implemented as an HTML element attribute. This is due to the fact that attribute initialization of attributes is not possible when creating React components which make it cumbersome to set when using [react-testing-library-lua](https://github.com/Roblox/react-testing-library-lua).
The tag is declared as `<TEST_ID_ATTRIBUTE>=<VALUE>`. Like upstream, the attribute name by default is `data-testid` but can configured.

#### Example
Basic example
```lua
local div = Instance.new("Frame")
CollectionService:AddTag(div, "data-testid=firstName")
local queryByTestId = render({ div }).queryByTestId
expect(queryByTestId("firstName")).toBeTruthy()
```

Overriding the attribute name
```lua
local DomTestingLibrary = require(Packages.Dev.DomTestingLibraryLua)
local configure = configModule.configure
configure({ testIdAttribute = "TestId" })
local div = Instance.new("Frame")
CollectionService:AddTag(div, "TestId=firstName")
local queryByTestId = render({ div }).queryByTestId
expect(queryByTestId("firstName")).toBeTruthy()
```

### render, renderIntoDocument
The `render` and `renderIntoDocument` functions, will accept an array of Instances instead of a string (representing an HTML fragment). Using array makes it possible to mount more than one instance at once (not an issue upstream)
```lua
local p1 = Instance.new("TextLabel")
p1.Text = "hello"
local p2 = Instance.new("TextLabel")
p2.Text = "bye"
-- This is required for Cypress as it uses `document`
-- as the container for all methods
local queryAllByText = renderIntoDocument({ p1, p2 }).queryAllByText
```


### Document
Because in Lua there is no concept of document, we provide one Instance that will be used as the default one. This will ensure that tags, and events work as expected, while keeping the test setup simple.
Like upstream, you can add your own container and override the document, however make sure that is attached to the DataModel.

Default container(document)
```lua
local CoreGui = game:GetService("CoreGui")
local ScreenGui = Instance.new("ScreenGui")

local document = Instance.new("Folder")
document.Name = "Document"
document.Parent = ScreenGui
ScreenGui.Parent = CoreGui

return document
```

### Ignoring nodes
When querying, specified nodes can be ignored. In the upstream library, queries use a string representing a css selectors. Since we don't have such selectors, an array of ClassNames can be used to ignore nodes.
```lua
local defaultIgnore = getConfig().defaultIgnore
	local toIgnore = Instance.new("TextButton")
	toIgnore.Text = "Hello"
	local dontIgnore = Instance.new("TextLabel")
	dontIgnore.Text = "Hello"
	local getAllByText = render({ dontIgnore, toIgnore }, { ignore = {"TextButton"} }).getAllByText
	local nodes = getAllByText(RegExp("Hello"))
	expect(nodes).toHaveLength(1) -- TextButtons are ignored
```

### Events
Upstream, events can be triggered from the node itself. 
Some events require the use of Virtual Input. That means that some issues might be related to how it works. For example, overlapping Instances might interfere with each other. 
In Lua each event has to be implemented case by case, and making sure that it works for different type of Instances. It's expected that more events are added to the library.
Dom events are implemented in `src/jsHelpers/dispatchEvent.lua`

## Advanced
### Extending queries
More queries can be added to complent the existing one, this can be useful if some specific structure of UI elements is expected. The important thing is to comply guiding principles (How would the user interact with the element?)
For example a checkbox can be distinguish from the others by the text next to it, and provides the information required to the user to click it or not. A change in the text, can make a difference for the user.
Below an example of a query, to get an TextBox associated with a TextLabel.
```lua
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local rtl = require(Packages.Dev.ReactTestingLibrary)
local buildQueries = rtl.buildQueries

local function getAllDescendantsMatchingText(instance: Instance, text)
	local children = instance:GetChildren()

	local matchesResult = {}
	Array.forEach(children, function(child: Instance)
		if child:IsA("TextLabel") and child.Text == text then
			local input = instance:FindFirstChildWhichIsA("TextBox")
			if input then
				table.insert(matchesResult, input)
			end
		end
		matchesResult = Array.concat(matchesResult, getAllDescendantsMatchingText(child, text))
	end)
	return matchesResult
end

local function queryAllByLabelText(container, text, _options)
	return getAllDescendantsMatchingText(container, text)
end

local function getMultipleError(c, value)
	return ("Found multiple elements with the label of: %s"):format(tostring(value))
end

local function getMissingError(c, value)
	("Unable to find an element with the lable of: %s"):format(tostring(value))
end

local queryByLabelText, getAllByLabelText, getByLabelText, findAllByLabelText, findByLabelText =
	buildQueries(queryAllByLabelText, getMultipleError, getMissingError)

return {
	queryAllByLabelText = queryAllByLabelText,
	queryByLabelText = queryByLabelText,
	getAllByLabelText = getAllByLabelText,
	getByLabelText = getByLabelText,
	findAllByLabelText = findAllByLabelText,
	findByLabelText = findByLabelText,
}
```
