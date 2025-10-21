Validation runs on the root instance, which represents what the end users will see. However, users in studio may have selected multiple instances and a bad actor may send improper R15Fixed or other secondary instances.

This validates that the input we recieved is as expected, so all other validations can focus on only the root instance and not test everything twice like the old system. 