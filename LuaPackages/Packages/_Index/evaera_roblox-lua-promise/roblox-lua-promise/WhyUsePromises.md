---
title: Why use Promises?
---

# Why use Promises?

Before diving in to Promises themselves, you might need some convincing of why we should even use Promises to begin with. That's totally fair! The following text should give you a brief introduction to Promises and a good understanding of why they are useful.

## Threads

When writing programs, it's possible to divide functions into two groups: "synchronous" and "asynchronous". A "synchronous operation" is one that can run to completion and generate any necessary return values with only the information available to your code at the time the operation begins. For example, a function that takes two Parts and returns the distance between them would be synchronous, because all information needed to compute that value is available when you call the function.

But sometimes situations arise where we call a function that needs access to a value that *doesn't* exist at call time. This could be because it requires a network request to get the data, or the user needs to input some text, or we're waiting for another process to finish computation and give us the value. In any case, we refer to this as an "asynchronous operation".

The simplest way to deal with this is to just stop execution of the thread, or "block". This means that when you call a function that needs some data that doesn't exist yet, the entire thread stops running and waits for the data to be ready before returning and continuing. This is actually how many low-level languages typically model asynchronous operations. To allow tasks to run at the same time, programs will create new threads that branch from parent threads and jump back on when they're finished blocking. However, this presents challenges with sharing memory and synchronizing data across threads, because at the operating system level threads truly are running in parallel.

## Coroutines

To simplify sharing memory and potentially reduce overhead, many programs will emulate a multi-threaded environment using green threads or coroutines, which are run concurrently inside of one OS thread. The key difference between OS threads and coroutines is that coroutines do not *actually* run in parallel -- only one coroutine is ever executing at a time. In the context of Lua, the term "thread" is used to refer to a coroutine, but they are not the same thing as OS threads.

To facilitate this emulation, a thread scheduler is introduced to keep track of the emulated threads and decide which thread to run next when the current thread yields. Yielding is similar to blocking, except when a coroutine yields, it signals to the thread scheduler that it can run other code and resume the thread at a later time.

When the game starts, each Script and LocalScript in your game becomes its own Lua thread in the thread scheduler and each script is run either to completion or until it yields. Once all of the scripts have gone through this process, Roblox does other things like updating humanoids and running physics. After all that's done, the next frame begins and this process repeats until the game closes.

So, what really happens when we call an asynchronous function like `Player:IsInGroup`? Well, the current Lua thread yields (letting other Lua code start running elsewhere in your game), and Roblox makes a new OS thread which blocks on an HTTP request to their internal group APIs in the background. Sometime in the future when that request comes back, the value jumps back onto the main Roblox thread and your Lua thread is scheduled to be resumed with the given arguments on the next step.

## Problems with the Coroutine Model

Coroutines fix the memory sharing problem of OS threads, but they still inherit other problems when used on their own:

- It's impossible to know if a function that you call is going to yield or not unless you look at the documentation or strictly abide by a naming convention (which is not realistic). Unintentionally yielding the thread is the source of a large class of bugs and race conditions that Roblox developers run into.
- When an asynchronous operation fails or an error is encountered, Lua functions usually either raise an error or return a success value followed by the actual value. Both of these methods lead to repeating the same tired patterns many times over for checking if the operation was successful, and make composing multiple asynchronous operations difficult.
- It is difficult to deal with running multiple asynchronous operations concurrently and then retrieve all of their values at the end without extraneous machinery.
- Coroutines lack easy access to introspection without manual work to enable it at the call site.
- Coroutines lack the ability to cancel an operation if the value is no longer needed without extraneous manual work at both the call site and the function implementation.

## Enter Promises

In Lua, Promises are an abstraction over coroutines. A "Promise" is just an object which we can use to represent a value that exists in the future, but doesn't right now. Promises are first-class citizens in other languages like JavaScript, which doesn't have coroutines and facilitates all asynchronous code through callbacks alone.

When calling an asynchronous function, instead of yielding, the function returns a Promise synchronously. The Promise object allows you to then attach a callback function which will be run later when the Promise *resolves*. The function you called is in charge of resolving the Promise with your value when it is done working.

Promises also have built-in error handling. In addition to resolving, a Promise can *reject*, which means that something went wrong when getting the future value we asked for. You can attach a different callback to be run when the Promise rejects so you can handle any error cases.

Let's take a look at this in action. We will make a function which wraps `HttpService:GetAsync` and instead of yielding, it will return a Promise.

```lua
local HttpService = game:GetService("HttpService")
local function httpGet(url)
	return Promise.new(function(resolve, reject)
		local ok, result = pcall(HttpService.GetAsync, HttpService, url)

		if ok then
			resolve(result)
		else
			reject(result)
		end
	end)
end
```

Let's break this down. The `Promise.new` function accepts a function, called an *executor*, which receives a `resolve` function and a `reject` function. `Promise.new` calls the executor on the next Lua step. **Inside it, we have created a safe space to safely call yielding functions, which has no possibility of unintentionally delaying other parts of your code**. Since the Promise value itself was already returned from the `httpGet` function, we aren't delaying the return by yielding with `GetAsync`.

Let's use the value now:

```lua
local promise = httpGet("https://google.com")

promise:andThen(function(body)
	print("Here's the Google homepage:", body)
end)

promise:catch(function(err)
	warn("We failed to get the Google homepage!", err)
end)
```

So, we call the `andThen` method on the Promise returned from `httpGet`. If the Promise resolved, the handler we passed into `andThen` is called and given the resolved values as parameters (`body` in this example). 

Likewise, we attach a failure handler with `catch` to be run if the Promise rejects.

But wait! In addition to attaching a callback, `andThen` and `catch` also return *new* Promises themselves! If the original Promise rejects, then the Promise returned from `andThen` will *also* reject with the same error, allowing is to rewrite our code like this:

```lua
httpGet("https://google.com")
	:andThen(function(body)
		print("Here's the Google homepage:", body)
	end)
	:catch(function(err)
		warn("We failed to get the Google homepage!", err)
	end)
```

The Promise returned from `andThen` will resolve with whatever value you return from the callback. 

And if that value returned from the `andThen` handler is itself a Promise, it is automatically chained onto and the Promise returned from `andThen` won't resolve until *that* Promise resolves.

```lua
httpGet("https://google.com")
	:andThen(function(body) -- not doing anything with body for this example
		return httpGet("https://eryn.io") -- returning a new Promise here!
	end)
	:andThen(function(body) -- Doesn't get called until the above Promise resolves!
		print("Here's the eryn.io homepage:", body)
	end)
	:catch(warn) -- Still catches errors from both Promises!
```

## Composing Promises

Promises are *composable*. This means that Promises can easily be used, interact with, and consume one another without manually threading values between them. We already saw above how returning a Promise from the `andThen` handler will chain onto it. Let's expand that idea by diving into some more ways you can compose Promises with each other:

Let's assume that we have a number of asynchronous functions which all return Promises, `async1`, `async2`, `async3`, `async3`, etc. Calling one of these functions will return a Promise. But what if we want to call all of them in sequence, each one after the one before it finishes? It's as simple as this:

```lua
async1()
	:andThen(async2)
	:andThen(async3)
	:andThen(async4)
	:andThen(async5)
	:catch(function(err)
		warn("Oh no! This went wrong somewhere along the line:", err)
	end)
```

In this sample, we first call `async1`, then we chain the rest of the functions together with `andThen`. If *any* of the Promises returned from these functions *reject*, then all remaining `andThen`'d functions are skipped and it will jump instantly to the `catch` handler. 

And as a side note, if you forget to add a `catch` to a long chain of Promises and one of them errors, the Promise library is smart enough to emit a warning in the console. Always catch your Promises!

Let's think of another situation. What if we want to run all of the functions concurrently, and wait for all of them to be done? We don't want to run them one after another, because sometimes that can be wasteful. We want them all to run at once! We can do this with the static method `Promise.all`:

```lua
Promise.all({
	async1(),
	async2(),
	async3(),
	async4()
}):andThen(function(arrayOfResolvedValues)
	print("Done running all 4 functions!")
end):catch(function(err)
	warn("Uh oh, one of the Promises rejected! Abort mission!")
end)
```

`Promise.all` accepts an array of Promise objects, and returns a new Promise. The new Promise will *resolve* with an array of resolved values in the same places as the Promises were in the array. The new Promise will *reject* if *any* of the Promises that were passed in rejects.

[`Promise.race`](https://eryn.io/roblox-lua-promise/lib/#race) is similar to `Promise.all`, except it will resolve or reject as soon as one of the Promises resolves or rejects.

We can call functions that return Promises from inside a Promise and safely yield for their result by using the `await` method of Promises. This is akin to the `await` keyword in languages like JavaScript. Sometimes it might be easier to just directly resolve with a Promise though, in which case that Promise is chained onto and the outer Promise won't resolve until the inner one does.

```lua
local function async1()
	return Promise.new(function(resolve, reject)
		local ok, value = async2():await()
		if not ok then
			return reject(value)
		end
		
		resolve(value + 1)
	end)
end
```

## Wait, nevermind.

Sometimes, we no longer need a value that we previously asked for (or we just want to stop a sequence of events). This could be for a variety of reasons: perhaps the user closed a menu that was loading,  or a player's ability gets interrupted, or a player skips a cutscene.

When situations like these come up, we can *cancel* a Promise. Cancelling a Promise in its simplest form prevents the `andThen` or `catch` handlers from running. But we can also optionally attach a hook inside of the Promise executor so we know when the Promise has been cancelled, and stop doing work.

There is a third parameter sent to Promise executors, in addition to `resolve` and `reject`, called `onCancel`. `onCancel` allows you to register a callback which will be called whenever the Promise is cancelled. For example:

```lua
local function tween(obj, tweenInfo, props)
	return Promise.new(function(resolve, reject, onCancel)
		local tween = TweenService:Create(obj, tweenInfo, props)
			
		-- Register a callback to be called if the Promise is cancelled.
		onCancel(function()
			tween:Cancel()
		end) 
			
		tween.Completed:Connect(resolve)
		tween:Play()
	end)
end

-- Begin tweening immediately
local promise = tween(workspace.Part, TweenInfo.new(2), { Transparency = 0.5 }):andThen(function()
	print("This is never printed.")
end):catch(function()
	print("This is never printed.")
end):finally(function()
	print("But this *is* printed!")
end)
wait(1)
promise:cancel() -- Cancel the Promise, which cancels the tween.
```

If we didn't register an `onCancel` callback, the Promise returned from the `tween` would never resolve or reject (so the `andThen` and `catch` handlers would never get called), but the tween would still finish.

For times when we need to do something no matter the fate of the Promise, whether it gets resolved, rejected, *or* cancelled, we can use `finally`. `finally` is like `andThen` and `catch`, except it *always* runs whenever the Promise is done running.

## Propagation

Cancelling a Promise will propagate upwards and cancel the entire chain of Promises. So to revisit our sequence example:

```lua
local promise = async1()
	:andThen(async2)
	:andThen(async3)
	:andThen(async4)
	:andThen(async5)
	:catch(function(err)
		warn("Oh no! This went wrong somewhere along the line:", err)
	end)

promise:cancel()
```

Cancelling `promise` (which is the Promise that `catch` returns here) will end up cancelling every Promise in the chain, all the way up to the Promise returned by `async1`. The reason this happens is because if we cancel the bottom-most Promise, we are no longer doing anything with the value, which means that no one is doing anything with the value from the Promise above it either, and so on all the way to the top. However, Promises will *not* be cancelled if they have more than one `andThen` handler attached to them, unless all of those are also cancelled.

Cancellation also propagates downwards. If a Promise is cancelled, and other Promises are dependent on that Promise, there's no way they could resolve or reject anymore, so they are cancelled as well. 

So, now we understand the four possible states a Promise can be in: Started (running), Resolved, Rejected, and Cancelled. It's possible to read what state a Promise is in by calling `promise:getStatus()`.

## But I want to be able to use pre-existing functions that yield!

You can easily turn a yielding function into a Promise-returning one by calling `Promise.promisify` on it:

```lua
-- Assuming myFunctionAsync is a function that yields.
local myFunction = Promise.promisify(myFunctionAsync)

myFunction("some", "arguments"):andThen(print):catch(warn)
```

## Problems, revisited

Now, let's revisit the problems we laid about before and see if we've solved them by using Promises:

- It's impossible to know if a function that you call is going to yield or not.
  - Calling a function that returns a Promise will never yield! To use the value, we must call `andThen` or `await`, so we are sure that the caller knows that this is an asynchronous operation.
- When an asynchronous operation fails or an error is encountered, Lua functions usually either raise an error or return a success value followed by the actual value. Both of these methods lead to repeating the same patterns.
  - We have `Promise:catch` to allow catching errors that will cascade down a Promise chain and jump to the nearst `catch` handler.
- It is difficult to deal with running multiple asynchronous operations concurrently and then retrieve all of their values at the end without extraneous machinery.
  - We have `Promise.all`, `Promise.race`, or other utilities to make this a breeze.
- Coroutines lack easy access to introspection without manual work to enable it at the call site.
  - We can just call `:getStatus` on the returned Promise!
- Coroutines lack the ability to cancel an operation if the value is no longer needed without extraneous manual work at both the call site and the function implementation.
  - `promise:cancel()` is all we need!

Another point that's important to drive home is that you *can* do all of these things without Promises, but they require duplicated work each time you do them, which makes them incompatible with each other and that allows for slight differences between implementations which can lead to usage mistakes. Centralizing and abstracting all of this logic by using Promises ensures that all of your asynchronous APIs will be consistent and composable with one another.

## Next steps

Now that you are hopefully convinced of the benefits of using Promises in your code, move on to the [Guide](/lib/Tour.html) for a quick introduction, or dive in to the [API reference](/lib/)