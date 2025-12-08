MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["ComponentLifecyclePhase"]
  CALL R0 1 1
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K6 ["WillUpdate"]
  LOADK R3 K7 ["setState cannot be used in the willUpdate lifecycle method.
Consider using the didUpdate method instead, or using getDerivedStateFromProps.

Check the definition of willUpdate in the component %q."]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K8 ["ShouldUpdate"]
  LOADK R3 K9 ["setState cannot be used in the shouldUpdate lifecycle method.
shouldUpdate must be a pure function that only depends on props and state.

Check the definition of shouldUpdate in the component %q."]
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K10 ["Render"]
  LOADK R3 K11 ["setState cannot be used in the render method.
render must be a pure function that only depends on props and state.

Check the definition of render in the component %q."]
  SETTABLE R3 R1 R2
  LOADK R2 K12 ["setState can not be used in the current situation, because Roact doesn't know
which part of the lifecycle this component is in.

This is a bug in Roact.
It was triggered by the component %q.
"]
  SETTABLEKS R2 R1 K13 ["default"]
  RETURN R1 1
