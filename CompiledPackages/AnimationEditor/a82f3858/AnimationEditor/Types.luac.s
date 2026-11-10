MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Tests"]
       13 GETTABLEKS                       R2 R2 K8 ["HookTestController"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Instances"]
       22 GETTABLEKS                       R3 R3 K10 ["InstanceRegistry"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K9 ["Instances"]
       31 GETTABLEKS                       R4 R4 K11 ["InstanceSelectionRegistry"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Util"]
       38 GETTABLEKS                       R5 R5 K7 ["Tests"]
       40 GETTABLEKS                       R5 R5 K12 ["TestController"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Util"]
       47 GETTABLEKS                       R6 R6 K7 ["Tests"]
       49 GETTABLEKS                       R6 R6 K13 ["TestPlugin"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Util"]
       56 GETTABLEKS                       R7 R7 K7 ["Tests"]
       58 GETTABLEKS                       R7 R7 K14 ["TestSelection"]
       60 CALL                             R6 1 1
       61 NEWTABLE                         R7 0 0
       63 RETURN                           R7 1
