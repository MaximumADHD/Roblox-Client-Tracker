# TestingAnalytics

This is for testing features in the [Analytics](./../Analytics/README.md) module. But can also be to test any usage of diag charts and event stream events.

## mockAnalytics

- This provides a mock analytics module which provides Diag and EventStream implementations. Will work with the `fireEventStream` function. See

- Inject in the jest mocking module and it will format mock functions for the events.

## mockLogger

- This provides a mock analytics module which provides Diag and EventStream implementations. Will work with the `fireEventStream` function.

- Inject in the jest mocking module and it will format mock functions for the events.

## validateDiagList

- You can pass an EventList for Diag events into this, and it will validate and check it is correctly formatted. Providing detailed errors of what needs to be fixed.

## validateEventList

- You can pass an EventList for EventStream events into this, and it will validate and check it is correctly formatted. Providing detailed errors of what needs to be fixed.
