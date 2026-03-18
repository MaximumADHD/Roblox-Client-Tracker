---
category: Display
---

## Overview

`Skeleton` is a panel that displays scrolling shimmer animation (or a pulsate animation if `ReducedMotion` is `true`). It is an alternative loading indicator to [[Loading]].

Pages can feel like they're loading faster by using `Skeleton`. Things feel like they are happening immediately, and information can be incrementally displayed on the screen.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local Skeleton = Foundation.Skeleton

React.createElement(Skeleton, {
	Size = UDim2.fromOffset(100, 100),
})
```
