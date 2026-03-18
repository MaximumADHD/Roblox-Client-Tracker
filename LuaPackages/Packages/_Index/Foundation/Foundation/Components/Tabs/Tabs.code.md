---
category: Display
---

## Overview

The `Tabs` component provides a way to organize content into multiple sections that can be displayed one at a time. It
consists of a row of tab items, where clicking on a tab displays its associated content.

Key features:

- Horizontal scrolling with overflow indicators when tabs don't fit in the available space
- Support for both text and icon in tab items
- Customizable size and fill behavior
- Support for disabled tabs

## Usage

There are two ways to use the `Tabs` component:

- Uncontrolled. You pass the `defaultTabId` to set the initial active tab, and you pass content for each tab with the `tabs` prop.

```luau
local Foundation = require(Packages.Foundation)
local Tabs = Foundation.Tabs
local InputSize = Foundation.Enums.InputSize
local FillBehavior = Foundation.Enums.FillBehavior

local function MyComponent()
	return React.createElement(Tabs, {
		defaultActiveTabId = "1",
		-- you can still react to the changes of the active tab.
		onActivated = setActiveTabId,
		tabs = {
			{
				id = "1",
				text = "Tab 1",
				content = React.createElement(Text, {
					Text = "Content for Tab 1",
				}),
			},
			{
				id = "2",
				text = "Tab 2",
				content = React.createElement(Text, {
					Text = "Content for Tab 2",
				}),
			},
			{
				id = "3",
				text = "Tab with Icon",
				icon = "star",
				content = React.createElement(Text, {
					Text = "Content for Tab 3",
				}),
			},
			{
				id = "4",
				text = "Disabled Tab",
				isDisabled = true,
				content = React.createElement(Text, {
					Text = "Content for Tab 4",
				}),
			},
		},
		size = InputSize.Medium,
		fillBehavior = FillBehavior.Fill,
	})
end

```

- Controlled. You pass the `activeTabId` to control the active tab, and you also control how to render the content.

```luau
local Foundation = require(Packages.Foundation)
local Tabs = Foundation.Tabs
local InputSize = Foundation.Enums.InputSize
local FillBehavior = Foundation.Enums.FillBehavior

local function MyComponent()
	local activeTabId, setActiveTabId = React.useState(tabs[1].id)

	return React.createElement(
		View,
		{
			tag = "col auto-y size-full-0",
		},
		React.createElement(Tabs, {
			activeTabId = activeTabId,
			onActivated = setActiveTabId,
			tabs = {
				{
					id = "1",
					text = "Tab 1",
				},
				{
					id = "2",
					text = "Tab 2",
				},
				{
					id = "3",
					text = "Tab with Icon",
					icon = "star",
				},
				{
					id = "4",
					text = "Disabled Tab",
					isDisabled = true,
				},
			},
			size = InputSize.Medium,
			fillBehavior = FillBehavior.Fill,
		}),
		React.createElement(
			View,
			{
				Visible = activeTabId == tabs[1].id,
				tag = "auto-y size-full-0",
			},
			React.createElement(Text, {
				Text = "Content for Tab 1",
			})
		),
		React.createElement(
			View,
			{
				Visible = activeTabId == tabs[2].id,
				tag = "auto-y size-full-0",
			},
			React.createElement(Text, {
				Text = "Content for Tab 2",
			})
		),
		React.createElement(
			View,
			{
				Visible = activeTabId == tabs[3].id,
				tag = "auto-y size-full-0",
			},
			React.createElement(Text, {
				Text = "Content for Tab 3",
			})
		)
	)
end
```
