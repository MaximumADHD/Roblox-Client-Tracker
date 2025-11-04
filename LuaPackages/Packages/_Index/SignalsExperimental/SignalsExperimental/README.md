# signals-experimental

Experimental APIs and advanced patterns for Signals.

## Overview

`signals-experimental` provides experimental and advanced utilities that extend Signals with additional patterns. These APIs are less stable than core Signals but offer powerful abstractions for complex reactive scenarios.

> ⚠️ **Warning**: APIs in this package are experimental and may change in future versions.

## Table of Contents

- [API Reference](#api-reference)
  - [createProxy](#createproxy)
  - [createReducer](#createreducer)
  - [onDisposed](#ondisposed)
  - [batch](#batch)
- [Examples](#examples)
- [Best Practices](#best-practices)

## API Reference

### createProxy

Creates a reactive proxy that tracks individual properties as signals.

```luau
function createProxy<T>(initial: T): proxy<T>
```

#### Parameters

- **initial**: Initial table/object to create proxy from

#### Returns

- **proxy**: A reactive proxy object with special behavior

#### Type Definition

```luau
type proxy<T> = typeof(setmetatable({}, {} :: { 
    __call: (unknown, scope?) -> readonly<T> 
})) & T
```

#### Behavior

The proxy has two modes:

**Direct access (writable):**
- Access properties directly: `proxy.key`
- Modify properties: `proxy.key = value`
- Individual properties are tracked as signals
- Setting `nil` removes the property

**Called with scope (read-only):**
- Call with scope: `proxy(scope)`
- Returns read-only version
- Tracks all accessed properties as dependencies
- Throws error on write attempts

#### Examples

**Basic usage:**
```luau
local SignalsExperimental = require(Packages.SignalsExperimental)
local Signals = require(Packages.Signals)

local proxy = SignalsExperimental.createProxy({
    name = "Alice",
    score = 0
})

-- Direct writes
proxy.name = "Bob"
proxy.score = 100

-- Reactive reads
local dispose = Signals.createEffect(function(scope)
    local state = proxy(scope) -- Get reactive snapshot
    print(`{state.name}: {state.score}`)
end)
-- Prints: Bob: 100

proxy.score = 200
-- Prints: Bob: 200

dispose()
```

**Tracking specific properties:**
```luau
local proxy = SignalsExperimental.createProxy({
    x = 0,
    y = 0
})

-- Effect only depends on x
Signals.createEffect(function(scope)
    local state = proxy(scope)
    print(`X: {state.x}`)
end)

proxy.x = 10 -- Prints: X: 10
proxy.y = 20 -- Doesn't print (not tracking y in this effect)
```

**Dynamic properties:**
```luau
local proxy = SignalsExperimental.createProxy({})

-- Add properties dynamically
proxy.newProperty = "Hello"

Signals.createEffect(function(scope)
    local state = proxy(scope)
    print(state.newProperty or "Not set")
end)
-- Prints: Hello

-- Remove properties
proxy.newProperty = nil
-- Prints: Not set
```

**Iteration:**
```luau
local proxy = SignalsExperimental.createProxy({
    a = 1,
    b = 2,
    c = 3
})

Signals.createEffect(function(scope)
    local state = proxy(scope)
    for key, value in state do
        print(key, value)
    end
end)
-- Prints: a 1, b 2, c 3

proxy.d = 4
-- Reprints all including: d 4
```

---

### createReducer

Creates a computed value using a reducer pattern that accumulates state over time.

```luau
function createReducer<T>(
    reducer: (scope, previous: T) -> T,
    initial: (() -> T) | T
): getter<T>
```

#### Parameters

- **reducer**: Function that takes current state and returns new state, with access to `scope` for dependency tracking
- **initial**: Initial state value or function that returns initial state

#### Returns

- **getter**: Signal getter that returns the accumulated state

#### Behavior

- Initializes with `initial` value
- Calls `reducer` with previous state and `scope`
- `reducer` can access reactive dependencies via `scope`
- State accumulates over time
- Re-runs when dependencies change

#### Examples

**Accumulating values:**
```luau
local Signals = require(Packages.Signals)
local SignalsExperimental = require(Packages.SignalsExperimental)

local getValue, setValue = Signals.createSignal(1)

-- Accumulate sum
local getSum = SignalsExperimental.createReducer(function(scope, previous)
    return previous + getValue(scope)
end, 0)

print(getSum(false)) -- 1 (0 + 1)

setValue(5)
print(getSum(false)) -- 6 (1 + 5)

setValue(10)
print(getSum(false)) -- 16 (6 + 10)
```

**Event counter:**
```luau
local getEvent, setEvent = Signals.createSignal(false)

local getEventCount = SignalsExperimental.createReducer(function(scope, previous)
    if getEvent(scope) then
        return previous + 1
    end
    return previous
end, 0)

print(getEventCount(false)) -- 0

setEvent(true)
print(getEventCount(false)) -- 1

setEvent(false)
print(getEventCount(false)) -- 1 (still 1)

setEvent(true)
print(getEventCount(false)) -- 2
```

**State machine:**
```luau
local getAction, setAction = Signals.createSignal("IDLE")

type State = { status: string, count: number }

local getState = SignalsExperimental.createReducer(function(scope, previous: State): State
    local action = getAction(scope)
    
    if action == "INCREMENT" then
        return { status = "ACTIVE", count = previous.count + 1 }
    elseif action == "RESET" then
        return { status = "IDLE", count = 0 }
    end
    
    return previous
end, { status = "IDLE", count = 0 })

setAction("INCREMENT")
print(getState(false).count) -- 1

setAction("INCREMENT")
print(getState(false).count) -- 2

setAction("RESET")
print(getState(false).count) -- 0
```

---

### onDisposed

Registers a disposal callback that runs when an effect's scope is disposed.

```luau
function onDisposed(scope: scope, callback: () -> ()): ()
```

#### Parameters

- **scope**: The current scope (from effect or computed)
- **callback**: Callback to run when scope is disposed

#### Returns

- Nothing

#### Behavior

- Registers cleanup callback with the scope
- Callback runs when effect re-runs or is disposed
- Useful for manual resource cleanup
- Callback runs in reverse order of registration

#### Examples

**Cleanup on effect disposal:**
```luau
local Signals = require(Packages.Signals)
local SignalsExperimental = require(Packages.SignalsExperimental)

local getValue, setValue = Signals.createSignal(1)

local dispose = Signals.createEffect(function(scope)
    local value = getValue(scope)
    
    print(`Effect running with value: {value}`)
    
    SignalsExperimental.onDisposed(scope, function()
        print(`Cleaning up value: {value}`)
    end)
end)
-- Prints: Effect running with value: 1

setValue(2)
-- Prints: Cleaning up value: 1
-- Prints: Effect running with value: 2

dispose()
-- Prints: Cleaning up value: 2
```

**Resource management:**
```luau
local getUrl, setUrl = Signals.createSignal("https://example.com")

Signals.createEffect(function(scope)
    local url = getUrl(scope)
    local connection = HttpService:GetAsync(url)
    
    print(`Fetched from: {url}`)
    
    SignalsExperimental.onDisposed(scope, function()
        connection:Close() -- Cleanup connection
        print(`Closed connection to: {url}`)
    end)
end)
```

**Multiple cleanup callbacks:**
```luau
Signals.createEffect(function(scope)
    SignalsExperimental.onDisposed(scope, function()
        print("Cleanup 1")
    end)
    
    SignalsExperimental.onDisposed(scope, function()
        print("Cleanup 2")
    end)
    
    SignalsExperimental.onDisposed(scope, function()
        print("Cleanup 3")
    end)
end)
-- On disposal prints:
-- Cleanup 3
-- Cleanup 2  
-- Cleanup 1
-- (reverse order)
```

---

### batch

Batches multiple signal updates into a single notification cycle.

```luau
function batch(fn: () -> ()): ()
```

#### Parameters

- **fn**: Function containing signal updates to batch

#### Returns

- Nothing

#### Behavior

- Groups multiple signal updates together
- Effects only run once after all updates complete
- Nested batches are automatically merged
- Improves performance when updating multiple signals

#### Examples

**Basic batching:**
```luau
local SignalsExperimental = require(Packages.SignalsExperimental)
local Signals = require(Packages.Signals)

local getA, setA = Signals.createSignal(1)
local getB, setB = Signals.createSignal(2)

Signals.createEffect(function(scope)
    print(`A: {getA(scope)}, B: {getB(scope)}`)
end)
-- Prints: A: 1, B: 2

-- Without batch: two notifications
setA(10)
-- Prints: A: 10, B: 2
setB(20)
-- Prints: A: 10, B: 20

-- With batch: one notification
SignalsExperimental.batch(function()
    setA(100)
    setB(200)
end)
-- Prints: A: 100, B: 200 (only once)
```

**Nested batches:**
```luau
SignalsExperimental.batch(function()
    setA(1)
    
    SignalsExperimental.batch(function()
        setB(2)
        setC(3)
    end)
    
    setD(4)
end)
-- All updates batched together, one notification
```

**Performance optimization:**
```luau
-- Update many signals efficiently
local signals = {}
for i = 1, 100 do
    local get, set = Signals.createSignal(0)
    table.insert(signals, { get = get, set = set })
end

-- Batch all updates
SignalsExperimental.batch(function()
    for i, signal in signals do
        signal.set(i)
    end
end)
-- Effects only run once after all updates
```

## Examples

### Reactive Store with Proxy

```luau
local SignalsExperimental = require(Packages.SignalsExperimental)
local Signals = require(Packages.Signals)

-- Create reactive store
local store = SignalsExperimental.createProxy({
    user = {
        name = "Alice",
        age = 30
    },
    settings = {
        theme = "dark",
        notifications = true
    }
})

-- React to specific changes
Signals.createEffect(function(scope)
    local state = store(scope)
    print(`Theme: {state.settings.theme}`)
end)

Signals.createEffect(function(scope)
    local state = store(scope)
    print(`User: {state.user.name}`)
end)

-- Update state
store.settings.theme = "light"
-- Prints: Theme: light

store.user.name = "Bob"
-- Prints: User: Bob
```

### State Machine with Reducer

```luau
local Signals = require(Packages.Signals)
local SignalsExperimental = require(Packages.SignalsExperimental)

type Action = "FETCH" | "SUCCESS" | "ERROR" | "RESET"
type State = {
    status: "idle" | "loading" | "success" | "error",
    data: any?,
    error: string?
}

local getAction, setAction = Signals.createSignal("RESET" :: Action)

local getState = SignalsExperimental.createReducer(function(scope, prev: State): State
    local action = getAction(scope)
    
    if action == "FETCH" then
        return { status = "loading", data = nil, error = nil }
    elseif action == "SUCCESS" then
        return { status = "success", data = "Data loaded", error = nil }
    elseif action == "ERROR" then
        return { status = "error", data = nil, error = "Failed to load" }
    else -- RESET
        return { status = "idle", data = nil, error = nil }
    end
end, { status = "idle", data = nil, error = nil })

-- Monitor state changes
Signals.createEffect(function(scope)
    local state = getState(scope)
    print(`Status: {state.status}`)
end)

-- Trigger state transitions
setAction("FETCH") -- Prints: Status: loading
setAction("SUCCESS") -- Prints: Status: success
setAction("ERROR") -- Prints: Status: error
setAction("RESET") -- Prints: Status: idle
```

### Resource Cleanup with onDisposed

```luau
local Signals = require(Packages.Signals)
local SignalsExperimental = require(Packages.SignalsExperimental)

local getComponentId, setComponentId = Signals.createSignal(1)

Signals.createEffect(function(scope)
    local id = getComponentId(scope)
    
    -- Setup resources
    local connection = workspace.ChildAdded:Connect(function(child)
        print(`Component {id} sees: {child.Name}`)
    end)
    
    local timer = task.delay(5, function()
        print(`Component {id} timer fired`)
    end)
    
    -- Register cleanup
    SignalsExperimental.onDisposed(scope, function()
        connection:Disconnect()
        task.cancel(timer)
        print(`Component {id} cleaned up`)
    end)
end)

setComponentId(2)
-- Prints: Component 1 cleaned up
-- Component 2 starts monitoring
```

## Best Practices

### 1. Use Proxy for Complex State

Proxies are ideal for object-like state:

```luau
-- ✅ Good: Proxy for complex state
local state = SignalsExperimental.createProxy({
    ui = { visible: true, mode: "edit" },
    data: { items: {}, selected: nil }
})

-- ❌ Overkill: Separate signals for simple state
local getVisible, setVisible = Signals.createSignal(true)
local getMode, setMode = Signals.createSignal("edit")
```

### 2. Use Reducers for Accumulation

Use `createReducer` when state depends on previous state:

```luau
-- ✅ Good: Reducer for accumulation
local getTotal = SignalsExperimental.createReducer(function(scope, prev)
    return prev + getValue(scope)
end, 0)

-- ❌ Less clear: Manual accumulation
local total = 0
Signals.createEffect(function(scope)
    total = total + getValue(scope)
end)
```

### 3. Clean Up Resources with onDisposed

Use `onDisposed` for explicit cleanup:

```luau
-- ✅ Good: Explicit cleanup
Signals.createEffect(function(scope)
    local conn = event:Connect(handler)
    SignalsExperimental.onDisposed(scope, function()
        conn:Disconnect()
    end)
end)
```

### 4. Batch Related Updates

Always batch multiple related signal updates:

```luau
-- ✅ Good: Batched updates
SignalsExperimental.batch(function()
    setFirstName("John")
    setLastName("Doe")
    setAge(30)
end)

-- ❌ Bad: Three separate notifications
setFirstName("John")
setLastName("Doe")
setAge(30)
```

### 5. Read-Only Proxy Access

Always use scope when reading proxy in reactive context:

```luau
-- ✅ Good: Reactive read
Signals.createEffect(function(scope)
    local state = proxy(scope) -- Tracks dependencies
    print(state.value)
end)

-- ❌ Bad: Direct read doesn't track
Signals.createEffect(function(scope)
    print(proxy.value) -- Won't re-run on changes
end)
```
