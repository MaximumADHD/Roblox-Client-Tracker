---
title: Tour of Promises
---

# Tour of Promises

Here's quick introduction to Promises. For more complete information, check out the [API Reference](/lib).

## Creating a Promise

There are a few ways to create a Promise. The most common way is to call <ApiLink to="Promise.new" />:

```lua
local myFunction()
	return Promise.new(function(resolve, reject, onCancel)
		somethingThatYields()
		resolve("Hello world!")
	end)
end

myFunction():andThen(print)
```

Another example which resolves a Promise after the first time an event fires:

::: tip
There's actually a built-in function called <ApiLink to="Promise.fromEvent" /> that does exactly this!
:::

```lua
local myFunction()
	return Promise.new(function(resolve, reject, onCancel)
		local connection

		connection = someEvent:Connect(function(...)
			connection:Disconnect()
			resolve(...)
		end)

		onCancel(function()
			connection:Disconnect()
		end)
	end)
end

myFunction():andThen(print)
```

If you just want to wrap a single value in a Promise, you can use <ApiLink to="Promise.resolve" />:

```lua
local myFunction()
	return Promise.resolve("Hello world!")
end

myFunction():andThen(print)
```

If you already have a function that yields, and you want it to return a Promise instead, you can use <ApiLink to="Promise.promisify" /> or <ApiLink to="Promise.try" />:

```lua
local function myYieldingFunction(waitTime, text)
	wait(waitTime)
	return text
end

local myFunction = Promise.promisify(myYieldingFunction)
myFunction(1.2, "Hello world!"):andThen(print):catch(function()
	warn("Oh no... goodbye world.")
end)
```

## Rejection and Errors

You must observe the result of a Promise, either with `catch` or `finally`, otherwise an unhandled Promise rejection warning will be printed to the console.

If an error occurs while executing the Promise body, the Promise will be rejected automatically with the error text and a trace back.

## Chaining

One of the best parts about Promises is that they are chainable.

Every time you call `andThen`, `catch`, or `finally`, it returns a *new* Promise, which resolves with whatever value you return from the success or failure handlers, respectively.

```lua
somePromise:andThen(function(number)
  return number + 1
end):andThen(print)
```

You can also return a Promise from your handler, and it will be chained onto:

```lua
Promise.new(function(resolve)
	somethingThatYields()
	resolve(1)
end):andThen(function(x)
	return Promise.new(function(resolve)
		somethingThatYields()
		resolve(x + 1)
	end)
end):andThen(print) --> 2
```

You can also call `:andThen` multiple times on a single Promise to have multiple branches off of a single Promise.

Resolving a Promise with a Promise will be chained as well:
```lua
Promise.new(function(resolve)
	somethingThatYields()
	resolve(Promise.new(function(resolve)
		somethingThatYields()
		resolve(1)
	end))
end):andThen(print) --> 1
```

However, any value that is returned from the Promise executor (the function you pass into `Promise.new`) is discarded. Do not return values from the function executor.

## A Better Alternative to `spawn`, `wait`, and `delay`

Using `spawn`, `wait`, or `delay` alongside asynchronous code can be tempting, but you should **never** use them!

`spawn`, `wait`, and `delay` do not resume threads at a consistent interval. If Roblox has resumed too many threads in a single Lua step, it will begin throttling and your thread that was meant to be resumed on the next frame could actually be resumed several seconds later. The unexpected delay caused by this behavior will cause cascading timing issues in your game and could lead to some potentially ugly bugs.

You should use <ApiLink to="Promise.delay" /> instead, which has an accurate custom scheduler.

```lua
Promise.delay(5):andThen(function()
	print("5 seconds have passed!")
end)
```

For quickly launching a new thread (similar to `spawn`), you can use <ApiLink to="Promise.try" />:

```lua
Promise.try(function()
	somethingThatYields()
end)
-- Doesn't block this
someCode()
```

As a convenience, <ApiLink to="Promise.timeout" /> exists, which will return a rejected Promise if the Promise you call it on doesn't resolve within the given amount of seconds:

```lua
returnsAPromise():timeout(5):andThen(function()
	print("This returned in at most 5 seconds")
end)
```

## Cancellation
Promises are cancellable, but abort semantics are optional. This means that you can cancel any Promise and it will never resolve or reject, even if the function is still working in the background. But you can optionally add a cancellation hook which allows you to abort ongoing operations with the third `onCancel` parameter given to your Promise executor.

If a Promise is already cancelled at the time of calling its `onCancel` hook, the hook will be called immediately.

::: tip
It's good practice to add an `onCancel` hook to all of your asynchronous Promises unless it's impossible to abort an operation safely.

Even if you don't plan to directly cancel a particular Promise, chaining with other Promises can cause it to become automatically cancelled if no one cares about the value anymore.
:::

If you attach a `:andThen` or `:catch` handler to a Promise after it's been cancelled, the chained Promise will be instantly rejected with `Promise.Error(Promise.Error.Kind.AlreadyCancelled)`. This also applies to Promises that you pass to `resolve`. However, `finally` does not have this constraint.

::: warning
If you cancel a Promise immediately after creating it without yielding in between, the fate of the Promise is dependent on if the Promise handler yields or not. If the Promise handler resolves without yielding, then the Promise will already be settled by the time you are able to cancel it, thus any consumers of the Promise will have already been called and cancellation is not possible.

If the Promise does yield, then cancelling it immediately *will* prevent its resolution.
:::

Attempting to cancel an already-settled Promise is ignored.

### Cancellation Propagation
When you cancel a Promise, the cancellation propagates up and down the Promise chain. Promises keep a list of other Promises that consume them (e.g. `andThen`).

When the upwards propagation encounters a Promise that no longer has any consumers, that Promise is cancelled as well. Note that it's impossible to cancel an already-settled Promise, so upwards propagation will stop when it reaches a settled Promise.

If a cancelled Promise has any consumers itself, those Promises are also cancelled.

Resolving a Promise with a Promise will cause the resolving Promise to become a consumer of the chained Promise, so if the chained Promise becomes cancelled then the resolving Promise will also become cancelled.

If you call `resolve` with a Promise within a Promise which is already cancelled, the passed Promise will be cancelled if it has no other consumers as an optimization.
