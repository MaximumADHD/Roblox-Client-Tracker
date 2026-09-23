---
category: Inputs
---

## Overview

An `Accordion` component provides a series of collapsible inputs or content. It displays a list of `AccordionItem`s whose content can be customized.

---

## Usage

### Default Usage

```luau
local Foundation = require(Packages.Foundation)
local BuilderIcons = require(Packages.BuilderIcons)

local Accordion = Foundation.Accordion
local AccordionItem = Foundation.Accordion.Item
local IconName = Foundation.Enums.IconName
local InputPlacement = Foundation.Enums.InputPlacement
local InputSize = Foundation.Enums.InputSize
type InputSize = InputSize.InputSize
type IconVariant = BuilderIcons.IconVariant

return React.createElement(Accordion, {
    width = UDim.new(0, 100),
    size = InputSize.Large, -- defaults to InputSize.Medium
}, {
    AccordionItem = React.createElement(AccordionItem, {
        text = "My First Item",
        description = "Optional supporting details",
        hasDivider = true,
        icon = {
            name = IconName.Star,
            variant = IconVariant.Filled,
        },
        id = 1
    }, {
        accordionItemContent = React.createElement("TextLabel", {}),
    }),
    AccordionItem2 = React.createElement(AccordionItem, {
        text = "My Second Item",
        hasDivider = false, -- defaults to true
        icon = IconName.Robux,
        id = 2
    }, {
        accordionItemContent = React.createElement("TextButton", {}),
    }),
})
```

### Item Descriptions

Use `description` for optional supporting context beneath an item's title. Descriptions remain on one line and truncate with an ellipsis when they exceed the available width.

### Containment and Chevron Position

Use `isContained` to add an inset to every item. `chevronPosition` uses `InputPlacement.End` by default and can be set to `InputPlacement.Start`.

```luau
return React.createElement(Accordion, {
    width = UDim.new(0, 400),
    isContained = true,
    chevronPosition = InputPlacement.Start,
}, {
    AccordionItem = React.createElement(AccordionItem, {
        text = "Item with a left chevron",
        icon = IconName.Star,
        id = 1,
    }, {
        Content = React.createElement("TextLabel", {}),
    }),
})
```

### Basic Controlled Usage

If you want to allow only one `AccordionItem` to expand at a time, or have some similarly custom behavior, you can use state in the container, and pass `onActivated` to your `Accordion`.

```luau
local expandedItem, setExpandedItem = React.useState(1)

return React.createElement(Accordion, {
    width = UDim.new(0, 400),
    onActivated = function(item, isExpanded)
        return function()
            if isExpanded then
                setExpandedItem(-1)
            else
                setExpandedItem(item) -- if activated item is collapsed, expand only this item
            end
        end
    end,
}, {
    AccordionItem1 = React.createElement(AccordionItem, {
        text = "Controlled Item 1",
        LayoutOrder = 1,
        isExpanded = expandedItem == 1,
        id = 1,
    }, {
        accordionItemContent = React.createElement("TextButton", {}),
    }),
    AccordionItem2 = React.createElement(AccordionItem, {
        text = "Controlled Item 2",
        LayoutOrder = 2,
        isExpanded = expandedItem == 2,
        id = 2,
    }, {
        accordionItemContent = React.createElement("TextButton", {}),
    })
})
```

The same behavior can be achieved by passing `onActivated` to each individual `AccordionItem`, if you prefer:

```luau
local expandedItem, setExpandedItem = React.useState(1)
return React.createElement(Accordion, {
    width = UDim.new(0, 400),
}, {
    AccordionItem1 = React.createElement(AccordionItem, {
        text = "Controlled Item 1",
        LayoutOrder = 1,
        isExpanded = expandedItem == 1,
        onActivated = function()
            if expandedItem == 1 then
                setExpandedItem(-1)
            else
                setExpandedItem(1)
            end
        end,
        id = 1,
    }, {
        accordionItemContent = React.createElement("TextButton", {}),
    }),
    AccordionItem2 = React.createElement(AccordionItem, {
        text = "Controlled Item 2",
        LayoutOrder = 2,
        isExpanded = expandedItem == 2,
        onActivated = function()
            if expandedItem == 2 then
                setExpandedItem(-1)
            else
                setExpandedItem(2)
            end
        end,
        id = 2,
    }, {
        accordionItemContent = React.createElement("TextButton", {}),
    }),
})
```

For more examples of Accordion usage, checkout the [story!](https://github.com/Roblox/foundation/blob/main/modules/foundation/src/Components/Accordion/Accordion.story.lua)
