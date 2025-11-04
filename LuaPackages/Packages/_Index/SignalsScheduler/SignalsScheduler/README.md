# signals-scheduler

Low-level scheduling utilities for batching and managing reactive updates.

## Overview

`signals-scheduler` provides the scheduling primitives that power Signals' reactivity. While typically used internally by other Signals packages, it can be used directly for advanced use cases requiring fine-grained control over update batching and scheduling.

> **Note**: Most users should use `SignalsExperimental.batch()` instead of this package directly.

## Table of Contents

- [Core Concepts](#core-concepts)
- [API Reference](#api-reference)
  - [batch](#batch)
  - [flush](#flush)
  - [schedule](#schedule)
- [Examples](#examples)
- [Advanced Usage](#advanced-usage)

## Core Concepts

### Batching Updates

When multiple signals change, effects should ideally run only once after all changes complete. The scheduler manages this by batching updates:

```luau
-- Without batching: effect runs 3 times
setA(1)
setB(2)
setC(3)

-- With batching: effect runs 1 time
batch(function()
    setA(1)
    setB(2)
    setC(3)
end)
```

### Update Queue

The scheduler maintains a queue of work to be executed:

1. Signal changes notify observers
2. Effects are scheduled (added to queue)
3. Queue is processed at the end of the batch
4. Effects run and can schedule more work

### Continuations

"Continuations" are scheduled pieces of work that run after the current batch completes. This is how effects are scheduled to run.

## API Reference

### batch

Batches multiple operations into a single update cycle.

```luau
function batch(fn: () -> ()): ()
```

#### Parameters

- **fn**: Function containing operations to batch

#### Returns

- Nothing

#### Behavior

- Executes `fn` immediately
- Collects all scheduled work during execution
- Runs all collected work after `fn` completes
- Nested `batch` calls are automatically merged
- Prevents duplicate effect executions

#### Examples

**Basic batching:**
```luau
local Signals = require(Packages.Signals)
local SignalsScheduler = require(Packages.SignalsScheduler)

local getA, setA = Signals.createSignal(1)
local getB, setB = Signals.createSignal(2)

Signals.createEffect(function(scope)
    print(`A: {getA(scope)}, B: {getB(scope)}`)
end)

-- One notification instead of two
SignalsScheduler.batch(function()
    setA(10)
    setB(20)
end)
-- Prints: A: 10, B: 20 (once)
```

**Nested batching:**
```luau
SignalsScheduler.batch(function()
    setA(1)
    
    SignalsScheduler.batch(function()
        setB(2)
    end)
    
    setC(3)
end)
-- All updates batched together
```

---

### flush

Flushes all pending scheduled work immediately.

```luau
function flush(): ()
```

#### Parameters

- None

#### Returns

- Nothing

#### Behavior

- Processes all pending continuations
- Returns when queue is empty
- Equivalent to `batch(function() end)`
- Used internally to ensure effects run

#### Examples

**Manual flush:**
```luau
local Signals = require(Packages.Signals)
local SignalsScheduler = require(Packages.SignalsScheduler)

local getValue, setValue = Signals.createSignal(0)

local effectRan = false
Signals.createEffect(function(scope)
    getValue(scope)
    effectRan = true
end)

setValue(5)
-- Effect is scheduled but may not have run yet

SignalsScheduler.flush()
-- Now guaranteed to have run
assert(effectRan == true)
```

**Forcing immediate updates:**
```luau
local Signals = require(Packages.Signals)
local SignalsScheduler = require(Packages.SignalsScheduler)

local getCount, setCount = Signals.createSignal(0)

local lastSeen = 0
Signals.createEffect(function(scope)
    lastSeen = getCount(scope)
end)

setCount(5)
print(lastSeen) -- Might still be 0

SignalsScheduler.flush()
print(lastSeen) -- Guaranteed to be 5
```

---

### schedule

Schedules work to run after the current batch completes.

```luau
function schedule(work: () -> ()): ()
```

#### Parameters

- **work**: Function to schedule for execution

#### Returns

- Nothing

#### Behavior

- Adds `work` to the continuation queue
- Work runs when current batch completes
- If not in a batch, work runs immediately via auto-flush
- Used internally by `createEffect`

#### Examples

**Custom scheduled work:**
```luau
local SignalsScheduler = require(Packages.SignalsScheduler)

print("Before schedule")

SignalsScheduler.schedule(function()
    print("Scheduled work")
end)

print("After schedule")

SignalsScheduler.flush()

-- Prints:
-- Before schedule
-- After schedule
-- Scheduled work
```

**Multiple scheduled items:**
```luau
local SignalsScheduler = require(Packages.SignalsScheduler)

SignalsScheduler.batch(function()
    SignalsScheduler.schedule(function()
        print("Work 1")
    end)
    
    SignalsScheduler.schedule(function()
        print("Work 2")
    end)
    
    SignalsScheduler.schedule(function()
        print("Work 3")
    end)
end)

-- Prints (in order):
-- Work 1
-- Work 2
-- Work 3
```

## Examples

### Manual Batching

```luau
local Signals = require(Packages.Signals)
local SignalsScheduler = require(Packages.SignalsScheduler)

-- State
local getX, setX = Signals.createSignal(0)
local getY, setY = Signals.createSignal(0)
local getZ, setZ = Signals.createSignal(0)

-- Derived state
local getPosition = Signals.createComputed(function(scope)
    return Vector3.new(getX(scope), getY(scope), getZ(scope))
end)

-- Effect
Signals.createEffect(function(scope)
    local pos = getPosition(scope)
    print(`Position: {pos}`)
end)

-- Update all coordinates at once
SignalsScheduler.batch(function()
    setX(10)
    setY(20)
    setZ(30)
end)
-- Prints: Position: 10, 20, 30 (once)
```

### Synchronizing Updates

```luau
local Signals = require(Packages.Signals)
local SignalsScheduler = require(Packages.SignalsScheduler)

local getProgress, setProgress = Signals.createSignal(0)
local hasCompletedEffect = false

Signals.createEffect(function(scope)
    if getProgress(scope) >= 100 then
        hasCompletedEffect = true
    end
end)

setProgress(100)

-- Ensure effect has run before checking
SignalsScheduler.flush()
assert(hasCompletedEffect == true)
```

### Custom Scheduling

```luau
local Signals = require(Packages.Signals)
local SignalsScheduler = require(Packages.SignalsScheduler)

local getValue, setValue = Signals.createSignal(0)

-- Custom behavior after updates
local function updateWithLogging(newValue)
    SignalsScheduler.batch(function()
        setValue(newValue)
        
        SignalsScheduler.schedule(function()
            print("Update complete!")
        end)
    end)
end

updateWithLogging(42)
-- Value updated and "Update complete!" printed
```

### Deferred Execution

```luau
local SignalsScheduler = require(Packages.SignalsScheduler)

local operations = {}

-- Schedule multiple operations
for i = 1, 5 do
    SignalsScheduler.schedule(function()
        table.insert(operations, i)
    end)
end

print(#operations) -- 0 (not executed yet)

SignalsScheduler.flush()
print(#operations) -- 5 (all executed)
```

## Advanced Usage

### Understanding Effect Execution

Effects use the scheduler internally:

```luau
-- Simplified internal implementation of createEffect:
local function createEffect(effect)
    local function processNotification()
        -- Effect logic runs here
        effect()
    end
    
    local function observer()
        -- Schedule effect to run
        schedule(processNotification)
    end
    
    -- ... rest of implementation
end
```

### Avoiding Flush in Batches

Flushing inside a batch doesn't help (batch is already managing the queue):

```luau
-- ❌ Unnecessary: already in a batch
SignalsScheduler.batch(function()
    setValue(1)
    SignalsScheduler.flush() -- Does nothing useful
    setValue(2)
end)

-- ✅ Batch handles it automatically
SignalsScheduler.batch(function()
    setValue(1)
    setValue(2)
end)
```

### Nested Batches Merge

Nested batches automatically merge into the outer batch:

```luau
SignalsScheduler.batch(function()
    print("Outer batch start")
    
    SignalsScheduler.batch(function()
        print("Inner batch")
        -- This doesn't create a separate batch
    end)
    
    print("Outer batch end")
end)
-- All work processed at the end of outer batch
```

### Testing with Flush

Use `flush()` in tests to ensure synchronous execution:

```luau
-- In tests
local function test_signal_update()
    local getValue, setValue = Signals.createSignal(0)
    
    local observed = nil
    Signals.createEffect(function(scope)
        observed = getValue(scope)
    end)
    
    setValue(42)
    SignalsScheduler.flush() -- Ensure effect runs
    
    assert(observed == 42)
end
```

### Performance Optimization

Batch related updates for better performance:

```luau
-- ❌ Bad: Many separate updates
for i = 1, 100 do
    setValue(i) -- 100 effect executions
end

-- ✅ Good: Batched updates
SignalsScheduler.batch(function()
    for i = 1, 100 do
        setValue(i) -- 1 effect execution at end
    end
end)
```

## Best Practices

### 1. Prefer High-Level Batch

Use `SignalsExperimental.batch()` instead of `SignalsScheduler.batch()`:

```luau
-- ✅ Preferred: High-level API
local SignalsExperimental = require(Packages.SignalsExperimental)
SignalsExperimental.batch(function()
    setA(1)
    setB(2)
end)

-- ⚠️ Works but lower-level
local SignalsScheduler = require(Packages.SignalsScheduler)
SignalsScheduler.batch(function()
    setA(1)
    setB(2)
end)
```

### 2. Use Flush in Tests

Flush ensures deterministic test behavior:

```luau
-- ✅ Good: Deterministic test
local function testEffect()
    setValue(10)
    SignalsScheduler.flush() -- Guarantee effect ran
    assert(effectRan)
end
```

### 3. Don't Over-Batch

Only batch when you have multiple related updates:

```luau
-- ❌ Unnecessary: single update
SignalsScheduler.batch(function()
    setValue(1)
end)

-- ✅ Just update directly
setValue(1)
```

### 4. Batch User Actions

Batch updates from user interactions:

```luau
button.Activated:Connect(function()
    SignalsScheduler.batch(function()
        setButtonClicked(true)
        incrementClickCount()
        updateTimestamp()
    end)
end)
```

### 5. Understand Async Boundaries

Batches don't cross async boundaries:

```luau
-- ❌ Batch doesn't help here
SignalsScheduler.batch(function()
    setValue(1)
    
    task.spawn(function()
        -- This is outside the batch!
        setValue(2)
    end)
end)

-- ✅ Batch synchronous updates only
SignalsScheduler.batch(function()
    setValue(1)
    setValue(2)
    setValue(3)
end)
```

## Internal Details

### How Batching Works

```luau
local isContinuing = false
local continuations = {}

local function batch(fn)
    if not isContinuing then
        isContinuing = true
        fn() -- Execute work
        
        -- Process all scheduled work
        for _, work in continuations do
            work()
        end
        
        table.clear(continuations)
        isContinuing = false
    else
        fn() -- Already in batch, just run
    end
end
```

### Why Effects Use Schedule

Effects use `schedule()` to defer execution until after all signal updates complete:

1. Signal changes
2. Signal notifies observers (effects)
3. Effect schedules itself to run
4. All signals finish updating
5. Batch ends, scheduled effects run
6. Effects see consistent state

This prevents effects from seeing intermediate/inconsistent state during multi-signal updates.
