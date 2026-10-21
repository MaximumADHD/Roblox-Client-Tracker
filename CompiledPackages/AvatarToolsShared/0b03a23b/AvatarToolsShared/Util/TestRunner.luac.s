PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["mock"]
        3 NEWTABLE                         R4 0 0
        5 NEWTABLE                         R5 0 0
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 NEWTABLE                         R6 0 0
       12 MOVE                             R7 R3
       13 CALL                             R4 3 1
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K1 ["Localization"]
       18 GETTABLEKS                       R5 R5 K0 ["mock"]
       20 DUPTABLE                         R6 K3 [{"libraries"}]
       21 NEWTABLE                         R7 1 0
       23 GETUPVAL                         R8 4
       24 GETTABLEKS                       R8 R8 K4 ["LOCALIZATION_PROJECT_NAME"]
       26 DUPTABLE                         R9 K7 [{"stringResourceTable", "translationResourceTable"}]
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K8 ["SourceStrings"]
       30 SETTABLEKS                       R10 R9 K5 ["stringResourceTable"]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K9 ["LocalizedStrings"]
       35 SETTABLEKS                       R10 R9 K6 ["translationResourceTable"]
       37 SETTABLE                         R9 R7 R8
       38 SETTABLEKS                       R7 R6 K2 ["libraries"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 5
       42 NEWTABLE                         R7 0 2
       44 MOVE                             R8 R4
       45 MOVE                             R9 R5
       46 SETLIST                          R7 R8 2 [1]
       48 MOVE                             R8 R0
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R7 R7 K10 ["mount"]
       53 MOVE                             R8 R6
       54 MOVE                             R9 R1
       55 CALL                             R7 2 1
       56 GETIMPORT                        R8 K12 [pcall]
       58 NEWCLOSURE                       R9 P0
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CALL                             R8 1 2
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R10 R10 K13 ["unmount"]
       65 MOVE                             R11 R7
       66 CALL                             R10 1 0
       67 NAMECALL                         R10 R1 K14 ["Destroy"]
       69 CALL                             R10 1 0
       70 JUMPIF                           R8 ; [+4]
       71 GETIMPORT                        R10 K16 [error]
       73 MOVE                             R11 R9
       74 CALL                             R10 1 0
       75 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R3 K3 [error]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K1 [{"test"}]
        2 SETTABLEKS                       R0 R3 K0 ["test"]
        4 GETIMPORT                        R4 K4 [Instance.new]
        6 LOADK                            R5 K5 ["ScreenGui"]
        7 CALL                             R4 1 1
        8 MOVE                             R5 R1
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 GETIMPORT                        R2 K5 [game]
        5 GETTABLEKS                       R2 R2 K6 ["CoreGui"]
        7 CALL                             R0 2 1
        8 LOADK                            R1 K7 ["PluginMockGui"]
        9 SETTABLEKS                       R1 R0 K8 ["Name"]
       11 GETIMPORT                        R1 K12 [Enum.ZIndexBehavior.Sibling]
       13 SETTABLEKS                       R1 R0 K10 ["ZIndexBehavior"]
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Resources"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K7 ["Components"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R1 K8 ["Framework"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R5 K9 ["ContextServices"]
       28 GETTABLEKS                       R7 R5 K10 ["Style"]
       30 GETTABLEKS                       R8 R7 K11 ["makeTheme"]
       32 GETTABLEKS                       R9 R7 K12 ["Themes"]
       34 GETTABLEKS                       R9 R9 K13 ["StudioTheme"]
       36 GETTABLEKS                       R10 R5 K14 ["TestHelpers"]
       38 GETTABLEKS                       R11 R10 K15 ["provideMockContext"]
       40 NEWTABLE                         R12 2 0
       42 DUPCLOSURE                       R13 K16 [PROTO_1]
       43 CAPTURE                          VAL R9
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R11
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R14 K17 [PROTO_3]
       51 SETTABLEKS                       R14 R12 K18 ["runTestMinimal"]
       53 DUPCLOSURE                       R14 K19 [PROTO_4]
       54 CAPTURE                          VAL R13
       55 SETTABLEKS                       R14 R12 K20 ["runComponentTest"]
       57 DUPCLOSURE                       R14 K21 [PROTO_5]
       58 RETURN                           R12 1
