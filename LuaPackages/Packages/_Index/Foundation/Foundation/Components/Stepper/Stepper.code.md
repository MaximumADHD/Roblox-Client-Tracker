---
category: Display
---

## Overview

Stepper displays a horizontal bottom-line sequence of steps. Each step shows a leading indicator beside a label and optional description, with a bottom border that highlights the current step.

Step visual states (complete, current, incomplete) are derived automatically from `activeStepId` and step order.

Key features:

- `XSmall`, `Small`, and `Medium` sizes
- `Fill` and `Fit` layout behavior
- Horizontal scroll overflow when steps do not fit

## Usage

```luau
local Foundation = require(Packages.Foundation)
local Stepper = Foundation.Stepper
local InputSize = Foundation.Enums.InputSize
local FillBehavior = Foundation.Enums.FillBehavior

React.createElement(Stepper, {
	steps = {
		{ id = "details", label = "Details", description = "Basic information" },
		{ id = "review", label = "Review", description = "Confirm and submit" },
	},
	activeStepId = "details",
	size = InputSize.Medium,
	fillBehavior = FillBehavior.Fill,
})
```

## Public API

| Export                   | Description   |
| ------------------------ | ------------- |
| `Foundation.Stepper`     | Component     |
| `Foundation.StepperProps`| Props type    |
| `Foundation.Step`        | Step item type|

## Props

| Prop           | Type                                                              | Default      | Description                                                                  |
| -------------- | ----------------------------------------------------------------- | ------------ | ---------------------------------------------------------------------------- |
| `steps`        | `{ Step }`                                                        | required     | Steps to render in order                                                     |
| `activeStepId` | `ItemId?`                                                         | first step   | Active step                                                                  |
| `size`         | `InputSize.XSmall \| InputSize.Small \| InputSize.Medium`         | `Medium`     | Step size                                                                    |
| `fillBehavior` | `FillBehavior?`                                                   | `Fill`       | Whether steps fill the width equally (`Fill`) or take minimum space (`Fit`) |

### Step

| Field         | Type      | Description              |
| ------------- | --------- | ------------------------ |
| `id`          | `ItemId`  | Unique step identifier   |
| `label`       | `string`  | Primary step label       |
| `description` | `string?` | Optional supporting text |
