PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Analytics"]
        5 GETTABLEKS                       R0 R1 K2 ["mock"]
        7 CALL                             R0 0 1
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K3 ["_knownHandlers"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K4 ["_reportCallCount"]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R1 R2 K5 ["report"]
       20 SETTABLEKS                       R1 R0 K5 ["report"]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K6 ["getReportCount"]
       25 SETTABLEKS                       R1 R0 K6 ["getReportCount"]
       27 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_knownHandlers"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+6]
        4 GETIMPORT                        R2 K2 [error]
        6 LOADK                            R4 K3 ["Unknown analytics ID: "]
        7 MOVE                             R5 R1
        8 CONCAT                           R3 R4 R5
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R0 K4 ["_reportCallCount"]
       12 GETTABLEKS                       R6 R0 K4 ["_reportCallCount"]
       14 GETTABLE                         R5 R6 R1
       15 ORK                              R4 R5 K6 [0]
       16 ADDK                             R3 R4 K5 [1]
       17 SETTABLE                         R3 R2 R1
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_knownHandlers"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+6]
        4 GETIMPORT                        R2 K2 [error]
        6 LOADK                            R4 K3 ["Unknown analytics ID: "]
        7 MOVE                             R5 R1
        8 CONCAT                           R3 R4 R5
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R4 R0 K5 ["_reportCallCount"]
       12 GETTABLE                         R3 R4 R1
       13 ORK                              R2 R3 K4 [0]
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RbxAnalyticsService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R0 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Resources"]
       19 GETTABLEKS                       R3 R4 K12 ["createAnalyticsHandlers"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Packages"]
       26 GETTABLEKS                       R4 R5 K14 ["Framework"]
       28 CALL                             R3 1 1
       29 NEWTABLE                         R4 4 0
       31 DUPCLOSURE                       R5 K15 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R5 R4 K16 ["new"]
       38 DUPCLOSURE                       R5 K17 [PROTO_1]
       39 SETTABLEKS                       R5 R4 K18 ["report"]
       41 DUPCLOSURE                       R5 K19 [PROTO_2]
       42 SETTABLEKS                       R5 R4 K20 ["getReportCount"]
       44 RETURN                           R4 1
