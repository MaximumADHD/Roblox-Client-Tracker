MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Components"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["DataSources"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["DebugFlags"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["Dimensions"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["Renderers"]
       35 CALL                             R4 1 1
       36 NEWTABLE                         R5 8 0
       38 SETTABLEKS                       R0 R5 K4 ["Components"]
       40 SETTABLEKS                       R2 R5 K6 ["DebugFlags"]
       42 SETTABLEKS                       R1 R5 K5 ["DataSources"]
       44 SETTABLEKS                       R3 R5 K7 ["Dimensions"]
       46 SETTABLEKS                       R4 R5 K8 ["Renderers"]
       48 RETURN                           R5 1
