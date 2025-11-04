# Resources

A lightweight resource management library for Luau that implements the disposer pattern for safe, composable resource cleanup.

## When to Use This

Use Resources when you have cleanup logic that needs to happen automatically, especially when:
- Building complex UI components from smaller reusable pieces
- Managing interconnected services or connections
- Wrapping external resources (events, timers, network connections)
- Ensuring cleanup happens in the correct order

## Quick Start

```luau
local Resources = require(Packages.Resources)
local createResource = Resources.createResource

-- Define a simple leaf resource (no composition needed)
local function connectResource(signal, handler)
    local connection = signal:Connect(handler)
    return function()
        connection:Disconnect()
    end
end

-- Use it
local dispose = connectResource(workspace.ChildAdded, function(child)
    print("Child added:", child.Name)
end)

-- Clean up when done
dispose()

-- Compose multiple resources together (needs createResource)
local uiResource = createResource(function(defer, button)
    defer(connectResource(button.Activated, onActivated)) -- `defer` captures and manages the disposal for you!
    defer(connectResource(button.MouseEnter, onHover))
    defer(connectResource(button.MouseLeave, onLeave))

    return function()
        print("All connections cleaned up!")
    end
end)

local cleanup = uiResource(myButton)
-- Later: cleanup() disposes all three connections in reverse order
```

## Table of Contents

- [Core Concepts](#core-concepts)
  - [Leaf vs Composite Resources](#leaf-vs-composite-resources)
- [API Reference](#api-reference)
- [Examples](#examples)
- [Best Practices](#best-practices)
- [Common Pitfalls](#common-pitfalls)
- [Advanced: Resource Protocol](#advanced-resource-protocol)

## Core Concepts

### The Disposer Pattern

Every resource returns a `dispose` function that cleans up when called:

```luau
local function createConnection()
    local connection = someEvent:Connect(function() ... end)
    
    -- return a dispose function
    return function()
        connection:Disconnect()
    end
end

local dispose = createConnection()
-- later...
dispose() -- clean up the connection
```

### Leaf vs Composite Resources

Resources come in two flavors:

**Leaf Resources** - Simple resources that don't use other resources:
```luau
-- Plain function, no createResource needed
local function timerResource(duration: number)
    local startTime = os.clock()
    return function()
        print("Timer ran for", os.clock() - startTime, "seconds")
    end
end

local dispose = timerResource(5)
dispose() -- Clean up
```

**Composite Resources** - Resources that compose other resources using `defer`:
```luau
-- Needs createResource to get defer parameter
local app = createResource(function(defer, config)
    defer(timerResource(config.duration))
    defer(timerResource(config.duration * 2))
    
    return function()
        print("App cleaned up")
    end
end)

local dispose = app({ duration = 5 })
dispose() -- Cleans up both timers and the app
```

You only need `createResource` when you want to compose multiple resources together. Leaf resources can be plain functions!

### Composition

The power of Resources comes from composition. Child resources are automatically tracked and disposed in reverse order:

```luau
local parent = createResource(function(defer)
    local child1 = defer(childResource()) -- Created first
    local child2 = defer(otherResource()) -- Created second
    
    return function()
        print("Parent disposing")
        -- child2 disposed first (reverse order)
        -- child1 disposed second
    end
end)
```

Think of it like nesting blocks - when you remove the outer block, all inner blocks come out in reverse order.

### Reference Counting

Use `createCachedResource` when multiple consumers need the same expensive resource:

```luau
local cachedDB = createCachedResource(databaseResource)

local dispose1, db1 = cachedDB() -- Creates database
local dispose2, db2 = cachedDB() -- Reuses same database

dispose1() -- Database still alive
dispose2() -- Now database closes
```

## API Reference

### createResource

Creates a composable resource that can use other resources.

```lua
function createResource<A..., R...>(
    resourceFunction: (defer, A...) -> (dispose, R...)
): resource<A..., R...>
```

#### Parameters

- **resourceFunction**: A function that receives:
  - `defer`: A function for composing child resources
  - `...A`: Arguments to parameterize the resource
  
  And returns:
  - `dispose`: A function to clean up this resource
  - `...R`: Optional values the resource provides

#### Returns

A callable resource that can be invoked with arguments to create an instance.

#### Example

```lua
local Resources = require(Packages.Resources)
local createResource = Resources.createResource

-- Simple resource with no dependencies
local timerResource = createResource(function(defer, duration: number)
    local startTime = os.clock()
    
    return function()
        print("Timer ran for", os.clock() - startTime, "seconds")
    end, startTime
end)

-- Using the resource
local dispose, startTime = timerResource(5)
-- ... do work ...
dispose() -- Prints elapsed time

-- Composed resource that uses another resource
local connectionResource = createResource(function(defer, signal: RBXScriptSignal)
    local connection = signal:Connect(function()
        print("Signal fired!")
    end)
    
    return function()
        connection:Disconnect()
    end
end)

local composedResource = createResource(function(defer)
    -- Use other resources - they'll be automatically disposed
    defer(connectionResource(workspace.ChildAdded))
    defer(connectionResource(workspace.ChildRemoved))
    defer(timerResource(10))
    
    return function()
        print("Composed resource disposed")
    end
end)

local dispose = composedResource()
-- Later: dispose() will clean up all three child resources in reverse order
```

### createCachedResource

Creates a reference-counted resource that's shared across multiple consumers.

```lua
function createCachedResource<T>(
    resource: resource<(), (T)>
): resource<(), (T)>
```

#### Parameters

- **resource**: A zero-argument resource that returns a single value

#### Returns

A new resource that:
- Creates the underlying resource on first use
- Returns the same instance to all consumers
- Only disposes when all consumers have disposed (ref-counting)
- Recreates if used again after full disposal

#### Example

```lua
-- Expensive resource we want to share
local databaseResource = createResource(function(defer)
    print("Connecting to database...")
    local db = connectToDatabase()
    
    return function()
        print("Closing database connection")
        db:close()
    end, db
end)

-- Make it shared
local cachedDB = createCachedResource(databaseResource())

-- Multiple consumers
local consumer1Dispose, db1 = cachedDB() -- Prints "Connecting to database..."
local consumer2Dispose, db2 = cachedDB() -- Reuses same connection
local consumer3Dispose, db3 = cachedDB() -- Reuses same connection

assert(db1 == db2 and db2 == db3) -- All reference the same database

consumer1Dispose() -- Reference count: 3 -> 2
consumer2Dispose() -- Reference count: 2 -> 1
consumer3Dispose() -- Reference count: 1 -> 0, prints "Closing database connection"

-- Using again creates a new instance
local consumer4Dispose, db4 = cachedDB() -- Prints "Connecting to database..." again
```

## Examples

### Level 1: Basic Disposal

A simple leaf resource for event connections (no `createResource` needed):

```luau
local function connectResource(signal: RBXScriptSignal, handler)
    local connection = signal:Connect(handler)
    
    return function()
        connection:Disconnect()
    end
end

-- Usage
local dispose = connectResource(workspace.ChildAdded, function(child)
    print("Added:", child.Name)
end)

dispose() -- Clean up
```

### Level 2: Composition

Build complex resources from simple ones:

```luau
local createButton = createResource(function(defer, button: TextButton, config)
    -- Compose multiple event handlers
    defer(connectResource(button.Activated, config.onClick))
    
    defer(connectResource(button.MouseEnter, function()
        button.BackgroundTransparency = 0.1
    end))
    
    defer(connectResource(button.MouseLeave, function()
        button.BackgroundTransparency = 0
    end))
    
    -- Additional setup
    button.Text = config.text
    
    return function()
        button.Text = ""
    end
end)

local dispose = createButton(myButton, {
    text = "Click Me",
    onClick = function() print("Clicked!") end
})
```

### Level 3: Sharing

Share expensive resources across multiple consumers:

```luau
local database = createResource(function(defer)
    print("Connecting to database...")
    local db = connectToDatabase()
    
    return function()
        print("Disconnecting from database")
        db:close()
    end, db
end)

local cachedDB = createCachedResource(database)

-- Multiple systems share the same connection
function setupSystem1()
    local dispose, db = cachedDB()
    -- Use db...
    return dispose
end

function setupSystem2()
    local dispose, db = cachedDB()
    -- Use same db instance...
    return dispose
end

-- Cleanup only happens when all consumers dispose
local cleanup1 = setupSystem1() -- Connects
local cleanup2 = setupSystem2() -- Reuses connection
cleanup1() -- Still connected
cleanup2() -- Now disconnects
```

### React Integration

Tie resource lifecycle to component lifecycle:

```luau
local useResource = require(Packages.ResourcesReact).useResource

function PlayerUI(props)
    -- Resource lifecycle tied to component
    useResource(createButton, props.button, {
        text = "Shop",
        onClick = function()
            -- Handle click
        end
    })
    
    return React.createElement("Frame", {
        -- UI definition
    })
end
```

## Best Practices

### 1. Always Dispose Resources

Every resource must be disposed to prevent leaks. When using `createResource`, child resources are automatically disposed in reverse order.

```luau
-- Manual disposal
local dispose, value = myResource(args)
dispose() -- Required!

-- Automatic disposal with composition
local parent = createResource(function(defer)
    local child1 = defer(childResource()) -- Disposed automatically
    local child2 = defer(otherResource()) -- Disposed automatically
    return function() end
end)
```

### 2. Compose Resources, Don't Repeat Yourself

Build complex resources from simple, reusable pieces:

```luau
-- Leaf resource - plain function, no composition needed
local function connectResource(signal, handler)
    local connection = signal:Connect(handler)
    return function()
        connection:Disconnect()
    end
end

-- Composite resource - uses createResource to compose multiple connections
local uiResource = createResource(function(defer, button)
    defer(connectResource(button.Activated, onActivated))
    defer(connectResource(button.MouseEnter, onHover))
    return function() end
end)
```

**Note:** `connectResource` is a leaf resource (doesn't compose others), so it doesn't need `createResource`. Only use `createResource` when you need the `defer` parameter for composition.

### 3. Use Cached Resources for Expensive Singletons

When multiple consumers need the same resource, share it with `createCachedResource` to avoid redundant initialization:

```luau
-- Expensive to create
local dataStore = createResource(function(defer)
    return function() end, DataStoreService:GetDataStore("Data")
end)

-- Share across all consumers
local cachedDataStore = createCachedResource(dataStore)

-- All users get the same instance
local dispose1, store1 = cachedDataStore()
local dispose2, store2 = cachedDataStore()
assert(store1 == store2)
```

### 4. Return Stable Values

Resource values should not change after creation. This makes reasoning about code simpler:

```luau
-- ✅ Good - stable reference
local resource = createResource(function(defer)
    local cache = {}
    return function() end, cache
end)

-- ❌ Avoid - value changes
local resource = createResource(function(defer)
    return function() end, { time = os.clock() } -- Different each call
end)
```

## Common Pitfalls

### Forgetting to Dispose

```luau
-- ❌ Resource leaked
function setupUI()
    local dispose = connectResource(button.Activated, onClick)
    -- Function ends without calling dispose!
end

-- ✅ Return disposal for caller to manage
function setupUI()
    local dispose = connectResource(button.Activated, onClick)
    return dispose -- Caller is responsible
end

-- ✅ Use composition to manage automatically
local uiResource = createResource(function(defer, button)
    defer(connectResource(button.Activated, onClick))
    return function() end
end)
```

### Using Resources Without `defer()`

```luau
-- ❌ Child won't be disposed automatically
local parent = createResource(function(defer)
    local childDispose, childValue = childResource() -- Direct call!
    return function() end, childValue
end)

-- ✅ Use the `defer` function
local parent = createResource(function(defer)
    local childValue = defer(childResource()) -- Tracked!
    return function() end, childValue
end)
```

### Over-sharing with createCachedResource

```luau
-- ❌ Don't share if each consumer needs independence
local cachedTimer = createCachedResource(function(defer, duration)
    -- Can't parameterize - all consumers get same duration!
    return function() end
end)

-- ✅ Only share zero-argument, singleton resources
local cachedDB = createCachedResource(databaseResource)
```

## Advanced: Resource Protocol

<details>
<summary>Click to expand type definitions and implementation details</summary>

Resources follow a simple protocol defined by type signatures:

```luau
-- A resource is a function that takes arguments and returns a dispose function plus optional values
type resource<A..., R...> = (A...) -> (dispose, R...)

-- A dispose function is called to clean up the resource
type dispose = () -> ()

-- The defer function allows composing resources
type defer = <A..., R...>(resource: resource<A..., R...>, A...) -> R...
```

### Key Properties

1. **Resources are functions** - They're called to acquire/initialize
2. **First return is always dispose** - The cleanup function
3. **Additional returns are resource values** - Optional data the resource provides
4. **Defer function enables composition** - Nested resources are automatically tracked

The `createResource` function sets up the `defer` function and tracks all child resources, ensuring they're disposed in reverse order when the parent is disposed.

</details>
