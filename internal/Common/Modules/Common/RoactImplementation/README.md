# Roact
Roact is a declarative Lua view framework intended to mirror Facebook's *React* framework. It exposes a very similar API to React and implements nearly identical semantics.

**This document is a work in progress. See the `Examples` folder for pure code examples of how to use Roact.**

## Hello, Roact!
This sample creates a full-screen `TextLabel` with a greeting:

```lua
local CoreGui = game:GetService("CoreGui")

local Roact = require(Common.Roact)

-- Define a functional component
local function HelloComponent()
	-- createElement takes three arguments:
	-- * The type of element to make
	-- * Optionally, a list of properties to provide
	-- * Optionally, a dictionary of children. The key is that child's Name

	return Roact.createElement("ScreenGui", {
	}, {
		MainLabel = Roact.createElement("TextLabel", {
			Text = "Hello, world!",
			Size = UDim2.new(1, 0, 1, 0),
		}),
	})
end

-- Create our virtual tree
local root = Roact.createElement(HelloComponent)

-- Turn our virtual tree into real instances and put them in CoreGui
Roact.reify(root, CoreGui, "HelloWorld")
```

We can also write this example using a *stateful* component:

```lua
local CoreGui = game:GetService("CoreGui")

local Roact = require(Common.Roact)

-- Create our component type
local HelloComponent = Roact.Component:extend("HelloComponent")

-- 'render' MUST be overridden.
function HelloComponent:render()
	-- createElement takes three arguments:
	-- * The type of element to make
	-- * Optionally, a list of properties to provide
	-- * Optionally, a dictionary of children. The key is that child's Name

	return Roact.createElement("ScreenGui", {
	}, {
		MainLabel = Roact.createElement("TextLabel", {
			Text = "Hello, world!",
			Size = UDim2.new(1, 0, 1, 0),
		}),
	})
end

-- Create our virtual tree
local root = Roact.createElement(HelloComponent)

-- Turn our virtual tree into real instances and put them in CoreGui
Roact.reify(root, CoreGui, "HelloWorld")
```

## Key Terms
### Virtual DOM
Roact uses an internal tree to describe how a UI should be structured. Some of the nodes in the tree correspond to actual Roblox GUI objects that get created, but many of them do not.

This tree is structured using **elements**.

### Element
An **element** is an object returned by `Roact.createElement`. It consists of an element *type* and optionally a list of *props* and *children*.

An element can be given one of three kinds of type:
* A string, which creates a *"primitive"* element. These Roact elements directly represent Roblox instances of the same name.
* A function, which creates a *"functional"* element. The function should take one parameter (props) and return either nil or a tree of elements.
* An extended 'Component' class, which creates a *"stateful"* element The component will have a `render` method that returns either nil or a tree of elements.

### Props

**Props** are an immutable set of properties passed to a component to tell it some information about how to display itself.

When creating a primitve element, the props you pass will match the properties you're assigning to:

```lua
local element = Roact.createElement("Frame", {
	Size = UDim2.new(1, 0, 1, 0),
	BackgroundColor3 = Color3.new(1, 1, 1)
})
```

It's important to note that you should never assign to `Name` or `Parent`, as these properties are set by Roact to sane values automatically.

When attaching to events to primitive elements, use values from the `Roact.Event` object as keys:

```lua
local element = Roact.createElement("Part", {
	[Roact.Event.Touched] = function(rbx)
		print("The part was touched!")
	end
})
```

You can also use `Roact.Ref` as a prop to get a handle to the underlying Roblox instance:

```lua
Roact.createElement("Frame", {
	[Roact.Ref] = function(rbx)
		print("Frame object is at", rbx)
	end
})
```