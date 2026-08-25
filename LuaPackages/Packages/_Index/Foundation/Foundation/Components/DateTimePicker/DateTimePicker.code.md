---
category: Inputs
---

## Overview

[[DateTimePicker]] is a labeled text input that opens a calendar popover for choosing a date, a date range, or a date and time.

Variants are defined in DateTimePickerVariant:

- **Single** — one date
- **Dual** — start and end date
- **SingleWithTime** — one date with a time
- **DualWithPresets** — two-month range picker with preset chips

The user can type into the field or pick from the calendar. Use `onChanged` to receive parsed `DateTime` values. For range variants, each endpoint may be `nil` while the other parses; a cleared field reports `nil`.

**Apply** and **Cancel** commit or dismiss popover selections. **DualWithPresets** and **SingleWithTime** also expose **Reset all** to revert draft changes to the last applied value. Typed text commits immediately via `onChanged` and does not enable Reset all.

---

## Usage

Supply a `label` and `onChanged`. Set `variant` to match the selection you need. For range variants, `onChanged` receives `(startDateTime, endDateTime)`.

Optional props:

- `placeholder` — shown when the input is empty
- `referenceDate` — month/year the calendar opens to when nothing is selected
- `defaultDates` — pre-fill Single or Dual values
- `selectableDateRange` — limit which dates can be chosen (compared at start of day)

### Single

```luau
local Foundation = require(Packages.Foundation)
local DateTimePicker = Foundation.DateTimePicker
local DateTimePickerVariant = Foundation.Enums.DateTimePickerVariant

return React.createElement(DateTimePicker, {
	label = "Date",
	onChanged = function(dateTime: DateTime?, _endDateTime: DateTime?)
		if dateTime then
			-- valid date
		end
	end,
	variant = DateTimePickerVariant.Single,
})
```

### Dual

```luau
return React.createElement(DateTimePicker, {
	label = "Date range",
	onChanged = function(startDateTime: DateTime?, endDateTime: DateTime?)
		if startDateTime and endDateTime then
			-- valid range
		end
	end,
	variant = DateTimePickerVariant.Dual,
	defaultDates = {
		DateTime.fromLocalTime(2024, 1, 1),
		DateTime.fromLocalTime(2024, 1, 31),
	},
})
```

### Single with time

```luau
return React.createElement(DateTimePicker, {
	label = "Date and time",
	onChanged = function(dateTime: DateTime?, _endDateTime: DateTime?)
		if dateTime then
			-- valid date and time
		end
	end,
	variant = DateTimePickerVariant.SingleWithTime,
})
```

### Dual with presets

Shows two months, preset chips (Today, This week, etc.), and a draft range that commits on Apply.

```luau
return React.createElement(DateTimePicker, {
	label = "Reporting period",
	onChanged = function(startDateTime: DateTime?, endDateTime: DateTime?)
		if startDateTime and endDateTime then
			-- valid range
		end
	end,
	referenceDate = DateTime.fromLocalTime(2024, 6, 15),
	variant = DateTimePickerVariant.DualWithPresets,
})
```

### Error state

For **Single** variants, `onChanged` reports `nil` when the text is empty or unparseable. For **Dual** and **DualWithPresets**, typing reports `(start?, end?)` per endpoint; only a cleared field reports a single `nil`. Set `hasError` when the typed text is non-empty but not a valid selection, including dates outside `selectableDateRange`. See the Controlled component story for a full example.

```luau
return React.createElement(DateTimePicker, {
	hasError = hasError,
	hint = if hasError then "Invalid date" else nil,
	label = "Date",
	onChanged = function(dateTime: DateTime?, _endDateTime: DateTime?)
		setSelectedDate(dateTime)
	end,
	variant = DateTimePickerVariant.Single,
})
```

For more examples, see the [story](https://github.com/Roblox/foundation/blob/main/modules/foundation/src/Components/DateTimePicker/DateTimePicker.story.lua).
