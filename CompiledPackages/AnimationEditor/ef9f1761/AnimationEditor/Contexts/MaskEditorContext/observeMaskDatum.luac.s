PROTO_0:
        0 DUPTABLE                         R1 K2 [{"instance", "mask"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 DUPTABLE                         R2 K7 [{"name", "flattenedJoints", "rigType", "rigName"}]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K3 ["name"]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K4 ["flattenedJoints"]
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K5 ["rigType"]
       20 GETUPVAL                         R3 4
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K6 ["rigName"]
       25 SETTABLEKS                       R2 R1 K1 ["mask"]
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["properties"]
        3 GETTABLEKS                       R2 R2 K1 ["observeString"]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K2 ["Name"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["attributes"]
       15 GETTABLEKS                       R4 R4 K1 ["observeString"]
       17 MOVE                             R5 R0
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["attributeMaskRigType"]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K3 ["attributes"]
       25 GETTABLEKS                       R5 R5 K1 ["observeString"]
       27 MOVE                             R6 R0
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K5 ["attributeMaskRigName"]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K6 ["createComputed"]
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CALL                             R6 1 -1
       42 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Instances"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["MaskEditorContext"]
       22 GETTABLEKS                       R3 R3 K11 ["MasksConstants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Signals"]
       31 GETTABLEKS                       R4 R4 K13 ["Experimental"]
       33 GETTABLEKS                       R4 R4 K14 ["SignalExperimentalUtils"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K15 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["Signals"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Util"]
       47 GETTABLEKS                       R6 R6 K12 ["Signals"]
       49 GETTABLEKS                       R6 R6 K16 ["TypedInstanceSignals"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       56 GETTABLEKS                       R7 R7 K10 ["MaskEditorContext"]
       58 GETTABLEKS                       R7 R7 K17 ["observeFlattenedJoints"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K18 [PROTO_1]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 RETURN                           R7 1
