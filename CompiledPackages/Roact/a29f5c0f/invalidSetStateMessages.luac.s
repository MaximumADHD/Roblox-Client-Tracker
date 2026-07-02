MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ComponentLifecyclePhase"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 0 0
       12 GETTABLEKS                       R2 R0 K6 ["WillUpdate"]
       14 LOADK                            R3 K7 ["setState cannot be used in the willUpdate lifecycle method.\nConsider using the didUpdate method instead, or using getDerivedStateFromProps.\n\nCheck the definition of willUpdate in the component %q."]
       15 SETTABLE                         R3 R1 R2
       16 GETTABLEKS                       R2 R0 K8 ["ShouldUpdate"]
       18 LOADK                            R3 K9 ["setState cannot be used in the shouldUpdate lifecycle method.\nshouldUpdate must be a pure function that only depends on props and state.\n\nCheck the definition of shouldUpdate in the component %q."]
       19 SETTABLE                         R3 R1 R2
       20 GETTABLEKS                       R2 R0 K10 ["Render"]
       22 LOADK                            R3 K11 ["setState cannot be used in the render method.\nrender must be a pure function that only depends on props and state.\n\nCheck the definition of render in the component %q."]
       23 SETTABLE                         R3 R1 R2
       24 LOADK                            R2 K12 ["setState can not be used in the current situation, because Roact doesn't know\nwhich part of the lifecycle this component is in.\n\nThis is a bug in Roact.\nIt was triggered by the component %q.\n"]
       25 SETTABLEKS                       R2 R1 K13 ["default"]
       27 RETURN                           R1 1
