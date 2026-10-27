MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Parent"]
        9 GETTABLEKS                       R2 R2 K5 ["ReactDebugHooks"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["inspectHooks"]
       14 GETTABLEKS                       R3 R1 K7 ["inspectHooksOfFiber"]
       16 SETTABLEKS                       R2 R0 K6 ["inspectHooks"]
       18 SETTABLEKS                       R3 R0 K7 ["inspectHooksOfFiber"]
       20 RETURN                           R0 1
