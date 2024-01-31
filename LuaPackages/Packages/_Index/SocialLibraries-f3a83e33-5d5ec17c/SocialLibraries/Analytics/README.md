# Analytics

The primary goal of these helpers is to make it easy to see what events we log, and what information we send, and to reduce the boilerplate we need to validate all this. With analytics, it can be hard to keep track of the events, and names of things (e.g. homepage is 'homepage' or the profile page has a subPage type of 'peekView').

The solution here is to add an `eventList` you pass into the function setup. The function sorts out formatting and validating the data, you just have to provide a list of events, and what info should be fired. Aka you can declaratively define what events you want. Then when you want to fire an event, you pass the name (and optionally extra data) in instead. The EventList file will be a document of all the events a project fires and becomes fairly easy to check for additions/removals. It's also easier to test - with the [TestingAnalytics](./../TestingAnalytics/README.md) module you can also validate and check these are correctly formatted and provide valid fields.

You can then also use the `Enums` to provide consistency between the names of particular info we sent through. For example `Contexts` provides a list of names we already use for different contexts. It makes it easier to be consistent across projects without adding too much extra load.

The design allows two different uses. Class-based (coming soon) and functional.

## FireEvent (Functional)

This module allows you to use simple functions to fire EventStream and diag events. This is good if you just want to fire one-off events, or want to build your module more functionally. They're easy to add to a new class too if you wish.

It comes with two main events.

### fireDiagCounter
This is a wrapper for diag counter events. It'll take a setup function that provides the actual diagImplementation, the list of allowed events, and an optional lumberyak logger.

examples:
```lua
-- without lumberyak logging
local fireEventWithoutLogging = fireDiagCounter({ diagImp = DiagImpl, eventList = EventList })
fireEventWithoutLogging("NameOfEvent")

-- with lumberyak logging
local fireEventWithLogging = fireDiagCounter({ diagImp = DiagImpl, eventList = EventList, loggerImpl = Logger })
fireEventWithLogging("NameOfEvent")

```

### fireEventStream

This is a wrapper for event stream events. It'll take a setup function that provides the actual eventStream implementation, eventList, and an optional lumberyak logger (the function will automatically add lumberyak logging if you wish.) It also will take an `infoForAllEvents` argument, this is for any information - e.g. a user's id - that you want to be stored as additional information in an event. The main difference between the two functions is you can add `additionalInfo` to eventStreamEvents. This can be fixed information (defined in the eventList fire) or dynamic information that you pass in when you call the function. The function will handle joining and formatting the information.

examples:
```lua
-- without lumberyak logging
local fireEventWithoutLogging = fireEventStream({ eventStreamImp = eventStreamImpl, eventList = EventList })
fireEventWithoutLogging("NameOfEvent", { additionalField = "Test" })

-- with lumberyak logging
local fireEventWithLogging = fireEventStream({ eventStreamImp = eventStreamImpl, eventList = EventList, loggerImpl = Logger })
fireEventWithoutLogging("NameOfEvent", { additionalField = "Test" })

-- with fixed additional info for every event fired logging
local fireEventWithLogging = fireEventStream({ eventStreamImp = eventStreamImpl, eventList = EventList, infoForAllEvents = { uid = "9891"  } })
fireEventWithoutLogging("NameOfEvent", { additionalField = "Test" })

```

## Class (to be added in follow up)

## Enums

This is a store of values we frequently use in events. Enums provide more safety when dealing with the many strings involved in analytics, and can help make sure no mistakes or incorrect values are made.

### Required fields

These are enums fore required fields for events:

- Context: all events fired by `eventStream` must have a context field. It should be in this Enum.

- EventTypes: all events fired by `eventStream` must have an event type field. It should be in this Enum.

### AdditionalInfo

These are enums for fields that get provided in the `additionalInfo` section (and are optional) for events.

- FriendStatuses: The different names for friendship statuses we have with users. Links to the `friendStatus` key.

- PresenceTypes: The different names for friendship statuses we have with users. Links to the `presence` key.

- ContextTypes = The different recommendation types we have for users. Links to the `recommendationType` key.

- SubPages = We've only used once in Social. We've only used for pop up elements which we wanted to mark as more substantive. It could be a useful for field for sub elements we want to explicitly track.

- Pages: We've only used once in Social. Can overlap with `context`. This is more a historic field, it isn't used much.

## Formatters

These are helper functions that you can use for `formatRulesForAdditionalInfo` - to format inputs (primarily data from one of our rodux packages) to match the required field data for analytics events.

- formatContextType = a function to format RecommendationContextType's from the RoduxFriends package into the correct format for the analytics `contextType` field.

- formatPresence = a function to format EnumPresenceType from the RoduxPresence package into the correct format for the analytics `presence` field.

## Navigation

Any event that involves navigating from one project to another, is stored in the `Navigation` module.

See the `EventNames` to see what Events you can fire, if you want to see which fire event stream and or diag events, see the `DiagEventList` and `EventStreamEventList` respectively.

It also returns a timestamp if you want to store/log times between navigating to places.
