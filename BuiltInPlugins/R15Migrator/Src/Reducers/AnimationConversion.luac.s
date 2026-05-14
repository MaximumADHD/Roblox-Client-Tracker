PROTO_0:
        0 DUPTABLE                         R0 K5 [{"selection", "previewSelection", "previewSpeed", "animations", "status"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["selection"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K6 ["None"]
        8 SETTABLEKS                       R1 R0 K1 ["previewSelection"]
       10 LOADN                            R1 1
       11 SETTABLEKS                       R1 R0 K2 ["previewSpeed"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["animations"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["Status"]
       20 GETTABLEKS                       R1 R1 K8 ["NotStarted"]
       22 SETTABLEKS                       R1 R0 K4 ["status"]
       24 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selection"}]
        7 GETTABLEKS                       R5 R1 K2 ["selection"]
        9 SETTABLEKS                       R5 R4 K2 ["selection"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"previewSelection"}]
        7 GETTABLEKS                       R6 R1 K2 ["previewSelection"]
        9 JUMPIFNOT                        R6 ; [+3]
       10 GETTABLEKS                       R5 R1 K2 ["previewSelection"]
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["None"]
       16 SETTABLEKS                       R5 R4 K2 ["previewSelection"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"previewSpeed"}]
        7 GETTABLEKS                       R5 R1 K2 ["previewSpeed"]
        9 SETTABLEKS                       R5 R4 K2 ["previewSpeed"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"animations"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["animations"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["id"]
       18 GETTABLEKS                       R9 R1 K5 ["animation"]
       20 SETTABLE                         R9 R7 R8
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K2 ["animations"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"animations"}]
        7 GETTABLEKS                       R5 R1 K2 ["animations"]
        9 SETTABLEKS                       R5 R4 K2 ["animations"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"status"}]
        7 GETTABLEKS                       R5 R1 K2 ["status"]
        9 SETTABLEKS                       R5 R4 K2 ["status"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Util"]
       25 GETTABLEKS                       R3 R3 K11 ["AnimationConversion"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K12 ["constants"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 GETTABLEKS                       R6 R1 K14 ["createReducer"]
       37 MOVE                             R7 R5
       38 CALL                             R7 0 1
       39 DUPTABLE                         R8 K22 [{"SetSelection", "SetPreviewSelection", "SetPreviewSpeed", "SetAnimation", "SetAnimations", "SetStatus", "ResetAllAnimationConversion"}]
       40 DUPCLOSURE                       R9 K23 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R9 R8 K15 ["SetSelection"]
       44 DUPCLOSURE                       R9 K24 [PROTO_2]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R9 R8 K16 ["SetPreviewSelection"]
       48 DUPCLOSURE                       R9 K25 [PROTO_3]
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R9 R8 K17 ["SetPreviewSpeed"]
       52 DUPCLOSURE                       R9 K26 [PROTO_4]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R9 R8 K18 ["SetAnimation"]
       56 DUPCLOSURE                       R9 K27 [PROTO_5]
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R9 R8 K19 ["SetAnimations"]
       60 DUPCLOSURE                       R9 K28 [PROTO_6]
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R9 R8 K20 ["SetStatus"]
       64 DUPCLOSURE                       R9 K29 [PROTO_7]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R9 R8 K21 ["ResetAllAnimationConversion"]
       69 CALL                             R6 2 -1
       70 RETURN                           R6 -1
