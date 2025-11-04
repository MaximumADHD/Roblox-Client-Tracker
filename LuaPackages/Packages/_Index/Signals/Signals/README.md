# signals

A minimal and scalable reactive programming framework for Luau.

## Overview

Signals provides fine-grained reactive primitives for building reactive systems. The core library consists of three fundamental primitives that enable automatic dependency tracking and efficient updates.

## Table of Contents

- [Quick Start](#quick-start)
- [Core Concepts](#core-concepts)
- [API Reference](#api-reference)
  - [createSignal](#createsignal)
  - [createComputed](#createcomputed)
  - [createEffect](#createeffect)
- [Advanced Topics](#advanced-topics)
  - [Scope Parameter](#scope-parameter)
  - [Custom Equality](#custom-equality)
  - [Lazy Initialization](#lazy-initialization)
- [Best Practices](#best-practices)

## Quick Start

```luau
local Signals = require(Packages.Signals)
local createSignal = Signals.createSignal
local createComputed = Signals.createComputed
local createEffect = Signals.createEffect

-- Create reactive state
local getFirstName, setFirstName = createSignal("David")
local getLastName, setLastName = createSignal("Tennant")

-- Create derived state
local getFullName = createComputed(function(scope)
    return `{getFirstName(scope)} {getLastName(scope)}`
end)

-- Create reactive side effects
local dispose = createEffect(function(scope)
    print(`Full name: {getFullName(scope)}`)
end)
-- Prints: Full name: David Tennant

-- Update state
setFirstName("Matt")
setLastName("Smith")
-- Prints: Full name: Matt Smith

-- Clean up
dispose()
```

## Core Concepts

### Reactive Graph

Signals builds a reactive dependency graph automatically:

1. **Signals** - Sources of reactive state
2. **Computeds** - Derived values from other reactive values
3. **Effects** - Side effects that re-run when dependencies change

```luau
-- Signal: Source of state
local getCount, setCount = createSignal(0)

-- Computed: Derived state
local getDouble = createComputed(function(scope)
    return getCount(scope) * 2
end)

-- Effect: Side effect
createEffect(function(scope)
    print("Double:", getDouble(scope))
end)
-- Prints: Double: 0

setCount(5)
-- Prints: Double: 10
```

### Automatic Dependency Tracking

Dependencies are tracked automatically when you pass `scope` to getters:

```luau
local getA, setA = createSignal(1)
local getB, setB = createSignal(2)

createEffect(function(scope)
    -- This effect depends on both getA and getB
    print(getA(scope) + getB(scope))
end)
-- Prints: 3

setA(5) -- Prints: 7
setB(10) -- Prints: 15
```

### Lazy Evaluation

Computeds are lazy - they only recalculate when read:

```luau
local getInput, setInput = createSignal(1)

local getExpensive = createComputed(function(scope)
    print("Computing...")
    return getInput(scope) * 2
end)

setInput(2) -- Doesn't print anything yet
setInput(3) -- Still doesn't print

print(getExpensive(false)) -- NOW it prints "Computing..." then "6"
```

## API Reference

### createSignal

Creates a queryable and settable reactive value.

```luau
function createSignal<T>(
    initial: (() -> T) | T,
    equals: equals<T>?
): (getter<T>, setter<T>)
```

#### Parameters

- **initial**: Initial value or a function that returns the initial value (for lazy initialization)
- **equals** *(optional)*: Custom equality function to determine if the value changed. Defaults to `==`

#### Returns

A tuple of `(getter, setter)`:
- **getter**: `(scope | false | nil) -> T` - Function to read the current value
- **setter**: `(update<T>) -> ()` - Function to update the value

#### Type Definitions

```luau
type getter<T> = (scope | false | nil) -> T
type setter<T> = (update<T>) -> ()
type update<T> = ((previous: T) -> T) | T
type equals<T> = (current: T, incoming: T) -> boolean
```

#### Examples

**Basic usage:**
```luau
local getCount, setCount = createSignal(0)

print(getCount(false)) -- 0

setCount(5)
print(getCount(false)) -- 5

-- Update based on previous value
setCount(function(prev) 
    return prev + 1 
end)
print(getCount(false)) -- 6
```

**Lazy initialization:**
```luau
local getExpensive, setExpensive = createSignal(function()
    print("Initializing...")
    return expensiveComputation()
end)

-- "Initializing..." not printed yet
print(getExpensive(false)) -- NOW it prints "Initializing..." and the result
```

**Custom equality:**
```luau
-- Only notify observers if the change is significant
local getPosition, setPosition = createSignal(
    Vector3.zero, 
    function(current, incoming)
        return (current - incoming).Magnitude < 0.01
    end
)

setPosition(Vector3.new(0, 0.005, 0)) -- Change too small, no notifications
setPosition(Vector3.new(0, 1, 0)) -- Significant change, observers notified
```

---

### createComputed

Creates a read-only reactive derived value.

```luau
function createComputed<T>(
    computed: (scope) -> T,
    equals: equals<T>?
): getter<T>
```

#### Parameters

- **computed**: A function that computes the derived value. Receives a `scope` parameter for tracking dependencies
- **equals** *(optional)*: Custom equality function to determine if the computed value changed. Defaults to `==`

#### Returns

- **getter**: `(scope | false | nil) -> T` - Function to read the computed value

#### Type Definitions

```luau
type getter<T> = (scope | false | nil) -> T
type scope = (source) -> observer
type equals<T> = (current: T, incoming: T) -> boolean
```

#### Behavior

- **Lazy evaluation**: Only recalculates when the value is read
- **Automatic caching**: Caches result until dependencies change
- **Automatic dependency tracking**: Tracks all signals/computeds accessed via `scope`
- **Smart updates**: Only notifies observers if the computed value actually changes

#### Examples

**Basic derived state:**
```luau
local getFirstName, setFirstName = createSignal("David")
local getLastName, setLastName = createSignal("Tennant")

local getFullName = createComputed(function(scope)
    return `{getFirstName(scope)} {getLastName(scope)}`
end)

print(getFullName(false)) -- "David Tennant"

setFirstName("Matt")
print(getFullName(false)) -- "Matt Tennant"
```

**Conditional dependencies:**
```luau
local getShowDetails, setShowDetails = createSignal(false)
local getDetails, setDetails = createSignal("Details here")
local getSummary, setSummary = createSignal("Summary")

local getDisplay = createComputed(function(scope)
    if getShowDetails(scope) then
        return getDetails(scope) -- Only depends on details when showing
    else
        return getSummary(scope) -- Only depends on summary otherwise
    end
end)
```

**Chaining computeds:**
```luau
local getRadius, setRadius = createSignal(5)

local getArea = createComputed(function(scope)
    local r = getRadius(scope)
    return math.pi * r * r
end)

local getFormattedArea = createComputed(function(scope)
    return string.format("%.2f", getArea(scope))
end)

print(getFormattedArea(false)) -- "78.54"
```

---

### createEffect

Creates a reactive side effect that automatically re-runs when dependencies change.

```luau
function createEffect(effect: (scope) -> ()): dispose
```

#### Parameters

- **effect**: A function containing the side effect. Receives a `scope` parameter for tracking dependencies

#### Returns

- **dispose**: `() -> ()` - Function to stop the effect and clean up

#### Type Definitions

```luau
type dispose = () -> ()
type scope = (source) -> observer
```

#### Behavior

- **Eager evaluation**: Runs immediately on creation
- **Automatic re-runs**: Re-executes whenever dependencies change
- **Automatic cleanup**: Old subscriptions are cleaned up before re-running
- **Batched updates**: Multiple changes within a batch only trigger one re-run

> ⚠️ **Important**: You MUST store a strong reference to the `dispose` function for the effect to be guaranteed to re-run. Not storing a strong reference means the effect is liable to be garbage collected.

#### Examples

**Basic effect:**
```luau
local getName, setName = createSignal("Alice")

local dispose = createEffect(function(scope)
    print("Hello,", getName(scope))
end)
-- Prints: Hello, Alice

setName("Bob")
-- Prints: Hello, Bob

dispose() -- Stop the effect
```

**Multiple dependencies:**
```luau
local getX, setX = createSignal(0)
local getY, setY = createSignal(0)

createEffect(function(scope)
    print(`Position: ({getX(scope)}, {getY(scope)})`)
end)
-- Prints: Position: (0, 0)

setX(5)
-- Prints: Position: (5, 0)

setY(10)
-- Prints: Position: (5, 10)
```

**Conditional dependencies:**
```luau
local getEnabled, setEnabled = createSignal(false)
local getValue, setValue = createSignal(0)

createEffect(function(scope)
    if getEnabled(scope) then
        -- Only tracks getValue when enabled
        print("Value:", getValue(scope))
    else
        print("Disabled")
    end
end)
-- Prints: Disabled

setValue(5) -- Doesn't print anything (not tracking getValue)
setEnabled(true)
-- Prints: Value: 5

setValue(10)
-- Prints: Value: 10
```

**Cleanup on re-run:**
```luau
local getUrl, setUrl = createSignal("https://example.com")

createEffect(function(scope)
    local url = getUrl(scope)
    local connection = HttpService:GetAsync(url)
    
    -- Effect automatically unsubscribes and re-runs when url changes
    print("Fetched from:", url)
end)
```

## Advanced Topics

### Scope Parameter

The `scope` parameter is key to automatic dependency tracking:

```luau
local getValue, setValue = createSignal(10)

-- With scope: tracks dependency
createEffect(function(scope)
    print(getValue(scope)) -- This effect will re-run when value changes
end)

-- Without scope (false or nil): no tracking
createEffect(function(scope)
    print(getValue(false)) -- This effect will NEVER re-run
end)
```

**When to use `false` or `nil`:**
- When reading a value without tracking it as a dependency
- When you want to "peek" at a value without subscribing to changes
- When reading values outside of reactive contexts

### Custom Equality

Custom equality functions can optimize updates:

```luau
-- Deep equality for tables
local function deepEqual(a, b)
    if type(a) ~= "table" or type(b) ~= "table" then
        return a == b
    end
    for k, v in a do
        if not deepEqual(v, b[k]) then
            return false
        end
    end
    for k in b do
        if a[k] == nil then
            return false
        end
    end
    return true
end

local getConfig, setConfig = createSignal({}, deepEqual)

setConfig({ theme = "dark" })
setConfig({ theme = "dark" }) -- No notifications, same content
setConfig({ theme = "light" }) -- Notifications sent, different content
```

### Lazy Initialization

Use functions for expensive initial values:

```luau
local getData, setData = createSignal(function()
    -- This only runs when first accessed
    return loadExpensiveData()
end)

-- Data not loaded yet...
print(getData(false)) -- NOW it loads
```

## Best Practices

### 1. Always Store Effect Disposal

```luau
-- ✅ Good: Stored disposal
local cleanup = createEffect(function(scope)
    -- effect code
end)

-- Later: cleanup()

-- ❌ Bad: No reference
createEffect(function(scope)
    -- This might get garbage collected!
end)
```

### 2. Use Computeds for Derived State

```luau
-- ✅ Good: Use computed
local getFullName = createComputed(function(scope)
    return `{getFirstName(scope)} {getLastName(scope)}`
end)

-- ❌ Bad: Manually managing derived state
local getFullName, setFullName = createSignal("")
createEffect(function(scope)
    setFullName(`{getFirstName(scope)} {getLastName(scope)}`)
end)
```

### 3. Minimize Effect Scope

```luau
-- ✅ Good: Separate concerns
createEffect(function(scope)
    print("Name:", getName(scope))
end)

createEffect(function(scope)
    print("Age:", getAge(scope))
end)

-- ❌ Bad: One large effect
createEffect(function(scope)
    print("Name:", getName(scope))
    print("Age:", getAge(scope))
    -- Changes to either trigger full re-run
end)
```

### 4. Use `false` to Prevent Tracking

```luau
createEffect(function(scope)
    local enabled = getEnabled(scope) -- Tracked
    
    if enabled then
        -- Read without tracking (won't cause re-runs)
        local config = getConfig(false)
        doSomething(config)
    end
end)
```

### 5. Custom Equality for Complex Types

```luau
-- For tables, vectors, or other complex types
local getPlayers, setPlayers = createSignal(
    {},
    function(a, b)
        return #a == #b and table.concat(a) == table.concat(b)
    end
)
```
