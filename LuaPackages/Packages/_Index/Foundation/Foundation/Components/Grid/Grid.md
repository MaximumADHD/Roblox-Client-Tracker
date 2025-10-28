---
category: Layout
---

## Overview

`Grid` provides a responsive, column-based layout system built on StyleSheet-driven sizing and breakpoint-aware configuration. It automatically adapts to container width using breakpoints, similar to container queries in CSS.

The Grid system consists of:
- `Grid.Root`: Container that measures width and applies responsive layout
- `Grid.Cell`: Items that declare column spans via responsive size props
- `Grid.Debug`: Visual debugging overlay for development

Grid uses container-relative breakpoints rather than global screen size, meaning each Grid instance responds to its own container width independently.

## Responsive Behavior

Grid automatically determines the active breakpoint based on the container width:
- **XSmall (xs)**: 360px - 3 columns
- **Small (sm)**: 600px - 6 columns  
- **Medium (md)**: 1140px - 12 columns
- **Large (lg)**: 1520px - 12 columns
- **XLarge (xl)**: 1920px - 12 columns
- **XXLarge (xxl)**: >1920px - 12 columns

Column counts, margins, and gutters are automatically adjusted for each breakpoint

## Grid.Cell Size Behavior

Grid.Cell accepts a `size` prop that should typically be a responsive map using breakpoint short names:

```luau
-- xs=3 cols, sm=6 cols, md+=12 cols
size = { xs = 3, sm = 6, md = 6, lg = 4, xl = 4 }

-- Number (useful for static layouts)
size = 6
```

**Responsive maps are strongly recommended** as they ensure your layout adapts properly across all screen sizes. Each key uses breakpoint short names (`xs`, `sm`, `md`, `lg`, `xl`, `xxl`).

When using responsive maps:
- Size `0` hides the element at that breakpoint
- Missing breakpoint keys fall back to the total column count for that breakpoint (full width)
- Sizes are automatically clamped between 0 and the maximum columns for the breakpoint

## Layout Behavior

### Wrapped Layout (default)
When `Wraps = true` (default), Grid uses `UIFlexAlignment.SpaceBetween` for horizontal spacing. This avoids unwanted vertical padding but means incomplete rows will have large gaps between cells. For best results, ensure rows use all available columns or add invisible spacer cells.

### Non-Wrapped Layout
When `Wraps = false`, Grid uses regular `UIListLayout.Padding` equal to the gutter width for consistent horizontal spacing without wrapping.

---

## Usage

### Responsive Grid Layout (Recommended)

```luau
local Foundation = require(Packages.Foundation)
local Grid = Foundation.Grid

-- Responsive three-column layout: 1-up on xs, 2-up on sm, 3-up on md+
local columnSize = { xs = 3, sm = 3, md = 4, lg = 4, xl = 4 }

return React.createElement(Grid.Root, {}, {
    A = React.createElement(Grid.Cell, { size = columnSize }),
    B = React.createElement(Grid.Cell, { size = columnSize }),
    C = React.createElement(Grid.Cell, { size = columnSize }),
})
```

### Card Grid with Progressive Enhancement

```luau
local Foundation = require(Packages.Foundation)
local Grid = Foundation.Grid

-- Progressive card layout: 1-up → 2-up → 3-up as screen size increases
local cardSize = { xs = 3, sm = 3, md = 6, lg = 4, xl = 4 }

return React.createElement(Grid.Root, {}, {
    Card1 = React.createElement(Grid.Cell, { size = cardSize }),
    Card2 = React.createElement(Grid.Cell, { size = cardSize }),
    Card3 = React.createElement(Grid.Cell, { size = cardSize }),
    Card4 = React.createElement(Grid.Cell, { size = cardSize }),
})
```

### Sidebar Layout

```luau
local Foundation = require(Packages.Foundation)
local Grid = Foundation.Grid

-- Sidebar that stacks on small screens
local sidebarSize = { xs = 3, sm = 6, md = 4, lg = 3, xl = 3 }
local contentSize = { xs = 3, sm = 6, md = 8, lg = 9, xl = 9 }

return React.createElement(Grid.Root, {}, {
    Sidebar = React.createElement(Grid.Cell, { size = sidebarSize }),
    Content = React.createElement(Grid.Cell, { size = contentSize }),
})
```

### Using Style Tags

You can apply responsive column tags directly without using Grid.Cell for more control:

```luau
local Foundation = require(Packages.Foundation)
local Grid = Foundation.Grid
local View = Foundation.View

return React.createElement(Grid.Root, {}, {
    -- Responsive tags using breakpoint short names
    Left = React.createElement(View, { 
        tag = "xs-col-3 sm-col-3 md-col-6 lg-col-6 xl-col-6" 
    }),
    Right = React.createElement(View, { 
        tag = "xs-col-3 sm-col-3 md-col-6 lg-col-6 xl-col-6" 
    }),
})
```

**Short-name tags are preferred** as they make responsive behavior explicit. Available tags:
- `xs-col-{N}`, `sm-col-{N}`, `md-col-{N}`, `lg-col-{N}`, `xl-col-{N}`, `xxl-col-{N}`
- Use `{breakpoint}-col-0` to hide elements at specific breakpoints

### Responsive Visibility Control

```luau
local Foundation = require(Packages.Foundation)
local Grid = Foundation.Grid

-- Show/hide elements at different breakpoints using responsive maps
local promoSize = { xs = 0, sm = 0, md = 12, lg = 12, xl = 12 }
local mainSize = { xs = 3, sm = 6, md = 12, lg = 12, xl = 12 }

Root = React.createElement(Grid.Root, {}, {
    MainContent = React.createElement(Grid.Cell, { size = mainSize }),
    PromoSection = React.createElement(Grid.Cell, { size = promoSize }), -- Hidden on xs/sm
})

-- Or using tags directly:
MainContent = React.createElement(View, { 
    tag = "xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12" 
})
PromoSection = React.createElement(View, { 
    tag = "xs-col-0 sm-col-0 md-col-12 lg-col-12 xl-col-12" 
})
```

### Development Debugging

`Grid.Debug` provides visual debugging overlays to help you understand and validate your grid layout during development. It renders colored overlays showing the grid structure and displays real-time information about the current breakpoint and container dimensions:

- Grid columns: Visual representation of all available columns for the current breakpoint
- Margins: Left and right outer margins
- Gutters: Horizontal spacing between columns
- Breakpoint info: Current breakpoint name, container width, column count, and spacing values

Grid.Debug renders colored overlays using the same grid metrics that Grid.Root renders with and creates a visual grid that sits behind your actual content, helping you to see how your cells align with the underlying column structure.

```luau
local Foundation = require(Packages.Foundation)
local Grid = Foundation.Grid

return React.createElement(Grid.Debug, {
    debugTransparency = 0.8, -- optional
    align = Enum.ItemLineAlignment.Start, -- optional alignment
}, {
    -- Your grid content here
    GridRoot = React.createElement(Grid.Root, {}, {
        Cell1 = React.createElement(Grid.Cell, { size = { xs = 3, sm = 3, md = 4 } }),
        Cell2 = React.createElement(Grid.Cell, { size = { xs = 3, sm = 3, md = 4 } }),
        Cell3 = React.createElement(Grid.Cell, { size = { xs = 3, sm = 3, md = 4 } }),
    }),
})
```

---

## Advanced Usage: getGridMetrics

For custom grid implementations, Foundation exposes `getGridMetrics` as part of the public API. This utility function computes all grid math for a given container width and breakpoint, allowing you to create custom layouts that align with the grid system.

### API

```luau
local getGridMetrics = Foundation.Utility.getGridMetrics

local metrics = getGridMetrics(responsiveConfig, breakpoint, containerWidth, size)
```

**Parameters:**
- `responsiveConfig`: Grid and breakpoint configuration (from `useResponsive().config`)
- `breakpoint`: Active breakpoint (from `useBreakpoint()`)
- `containerWidth`: Available width in pixels
- `size` (optional): Column span as number or responsive map

**Returns:**
- `cellSize`: `UDim2` for the specified size
- `cellWidth`: Pixel width for the specified size
- `colWidth`: Width of a single column
- `gridWidth`: Container width minus margins
- `gutterWidth`: Horizontal spacing between columns
- `margin`: Left/right margins
- `colCount`: Effective columns for the size
- `gutterCount`: Number of gutters in the size

### Custom Layout Example

```luau
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)
local getGridMetrics = Foundation.Utility.getGridMetrics
local useResponsive = Foundation.Providers.Responsive.useResponsive
local useBreakpoint = Foundation.Providers.Responsive.Hooks.useBreakpoint

local function CustomTwoColumn(props)
    local responsive = useResponsive()
    local measureRef, setMeasureRef = React.useState(nil)
    local breakpoint, size = useBreakpoint(measureRef)
    
    -- Calculate metrics for 4 and 8 column spans
    local leftMetrics = getGridMetrics(responsive.config, breakpoint, size.X, 4)
    local rightMetrics = getGridMetrics(responsive.config, breakpoint, size.X, 8)
    
    return React.createElement("Frame", {
        ref = setMeasureRef,
        Size = UDim2.new(1, 0, 0, 200),
    }, {
        Left = React.createElement("Frame", {
            Size = leftMetrics.cellSize,
            BackgroundColor3 = Color3.new(0.8, 0.8, 0.8),
        }),
        Right = React.createElement("Frame", {
            Size = rightMetrics.cellSize,
            Position = UDim2.new(0, leftMetrics.cellWidth + leftMetrics.gutterWidth, 0, 0),
            BackgroundColor3 = Color3.new(0.6, 0.6, 0.6),
        }),
    })
end
```

### Responsive Custom Layout

```luau
local function ResponsiveCustom(props)
    local responsive = useResponsive()
    local measureRef, setMeasureRef = React.useState(nil)
    local breakpoint, size = useBreakpoint(measureRef)
    
    -- Define responsive spans
    local leftSize = { xs = 3, sm = 2, md = 3, lg = 3, xl = 3 }
    local rightSize = { xs = 3, sm = 4, md = 9, lg = 9, xl = 9 }
    
    local leftMetrics = getGridMetrics(responsive.config, breakpoint, size.X, leftSize)
    local rightMetrics = getGridMetrics(responsive.config, breakpoint, size.X, rightSize)
    
    return React.createElement("Frame", {
        ref = setMeasureRef,
        Size = UDim2.new(1, 0, 0, 200),
    }, {
        -- Custom layout implementation using computed metrics
    })
end
```

Use `getGridMetrics` when you need precise grid calculations for custom components that should align with Foundation's grid system but can't use the standard Grid.Root/Grid.Cell pattern.

---

## Known Limitations

### Single Active Breakpoint
The grid only applies styles for the currently active breakpoint. Unlike CSS media queries where multiple rules can be active simultaneously, Foundation's StyleSheet system activates only one breakpoint's rules at a time based on the container width.

### Incomplete Row Spacing
When using wrapped layouts (default), incomplete rows will have large gaps between cells due to `UIFlexAlignment.SpaceBetween` spacing. Ensure rows use all available columns or add invisible spacer cells to fill remaining column space.

### Fractional Pixel Handling
Cell widths use `math.floor` to avoid fractional pixels, which means the sum of cells might be a few pixels short of the theoretical total. Visual alignment is maintained through gutters and flex spacing.

### Container Width Constraints
Very narrow containers (width <= total gutter width) will collapse cells to zero width. The maximum container width is capped at `BreakpointConfig.widths[XLarge]` (1920px by default).

### Conflicting Column Tags
Using both the `size` prop and column style tags `md-col-6` in the `tag` prop is not supported. The style tags will conflict with the tags generated by the `size` prop, resulting in undefined behavior. Use either the `size` prop OR manual column tags, not both.

## Future Improvements & Vision

### Performance: Bindings for Grid Metrics

Currently, `Grid`'s marign and layout spacing are  configured form `gridMetrics` and driven by `absoluteSize` changes. This means that when the size of a Grid changes, the entire Grid component may re-render, which can be expensive for large or complex layouts. A future improvement would be to make `absoluteSize` a binding, and have `gridMetrics` map from it as a binding as well. This would allow only the necessary parts of the UI to update in response to size changes, improving performance and responsiveness.

### Decoupling Stylesheets from React

The current implementation creates a new stylesheet per Grid instance to set custom stylesheet attribute values for each container query size. This is necessary because the size of a column depends on the Grid's container size, which varies independently for each instance.

Looking forward, there is a vision to decouple the stylesheet orchestration from React entirely. By moving stylesheet creation and updates outside of the React lifecycle, we could manage stylesheets more efficiently and share them across components. We could leverage an `AbsoluteSize` listener bound to each Grid instance to update the relevant attribute values when the container size changes.

### Improved Engine-Level Support

The longer term ideal scenario would be for the engine itself to support container queries and CSS-style `calc` expressions natively. With these features, we could define a global set of Grid style rules that would apply to all Grid instances, eliminating the need to create per-instance stylesheets in Lua. This would simplify the implementation, reduce overhead.
