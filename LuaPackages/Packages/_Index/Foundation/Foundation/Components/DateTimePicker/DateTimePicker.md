---
category: Inputs
---

## Overview
`DateTimePicker` is a stylized interactive, clickable calendar element.

There are 3 variant types defined in [[DateTimePickerVariant]]

* Single
* SingleWithTime
* Dual

## Usage
```luau
local Foundation = require(Packages.Foundation)
local DateTimePicker = Foundation.DateTimePicker

local isInvalidInput, setIsInvalidInput = React.useState(false)

local onChanged(dateTime: DateTime?, dateTime2: DateTime?)
    if dateTime and dateTime2 then
        -- Do something with the valid DateTime object
    else
        setIsInvalidInput(true)
    end
end

React.createElement(DateTimePicker, {
    hasError = isInvalidInput,
    isDisabled = false,
    isRequired = true,
    onChanged = onChanged,
    selectableDateRange = {
        startDate = DateTime.now(),
        endDate = DateTime.fromUnixTimestamp(DateTime.now().UnixTimestamp + (2 * 24 * 60 * 60)), -- 2 days from the current date
    },
    variant = DateTimePickerEnum.Single,
})
```

Using the `onChanged` callback will let you grab the user's input as a `DateTime` object if their input could be translated into a valid `DateTime` object. If using `Dual` then the first arg is the "start" and the second arg will be the "end" date.
