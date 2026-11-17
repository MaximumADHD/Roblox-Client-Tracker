PROTO_0:
        0 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R3 K2 ["RBX_GraphEditStamp"]
        7 NAMECALL                         R1 R0 K3 ["GetAttribute"]
        9 CALL                             R1 2 1
       10 GETIMPORT                        R3 K6 [DateTime.now]
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R3 R3 K7 ["UnixTimestampMillis"]
       15 GETUPVAL                         R5 0
       16 ADDK                             R4 R5 K8 [1]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R7 R1
       19 GETIMPORT                        R6 K10 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K11 ["number"] ; [+3]
       24 ADDK                             R5 R1 K8 [1]
       25 JUMP                             ; [+1]
       26 LOADN                            R5 0
       27 FASTCALL                         MATH_MAX ; [+2]
       28 GETIMPORT                        R2 K14 [math.max]
       30 CALL                             R2 3 1
       31 SETUPVAL                         R2 0
       32 LOADK                            R5 K2 ["RBX_GraphEditStamp"]
       33 MOVE                             R6 R2
       34 NAMECALL                         R3 R0 K15 ["SetAttribute"]
       36 CALL                             R3 3 0
       37 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+5]
        1 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        2 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        4 CALL                             R1 2 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["markDirty"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["RBX_GraphEditStamp"]
        2 NAMECALL                         R2 R0 K1 ["GetAttribute"]
        4 CALL                             R2 2 1
        5 SETTABLE                         R2 R1 R0
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 LOADB                            R4 0
        9 CALL                             R3 1 1
       10 ADDK                             R2 R3 K2 [1]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADK                            R4 K2 ["RBX_GraphEditStamp"]
        8 NAMECALL                         R2 R0 K3 ["GetAttribute"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R0
       13 JUMPIFNOTEQ                      R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 GETTABLE                         R3 R4 R5
        9 JUMPIFNOTEQ                      R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["of"]
        8 LOADB                            R2 0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["attributes"]
       14 GETTABLEKS                       R1 R1 K4 ["observeNumber"]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K5 ["RBX_GraphEditStamp"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K6 ["createComputed"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R0
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 GETTABLEKS                       R2 R2 K8 ["Experimental"]
       15 GETTABLEKS                       R2 R2 K9 ["SignalExperimentalUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K7 ["Signals"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K7 ["Signals"]
       31 GETTABLEKS                       R4 R4 K11 ["SignalsInstanceUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Util"]
       38 GETTABLEKS                       R5 R5 K7 ["Signals"]
       40 GETTABLEKS                       R5 R5 K12 ["TypedInstanceSignals"]
       42 CALL                             R4 1 1
       43 NEWTABLE                         R6 0 0
       45 DUPTABLE                         R7 K15 [{["__mode"] = "k"}]
       46 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       48 GETIMPORT                        R5 K17 [setmetatable]
       50 CALL                             R5 2 1
       51 GETTABLEKS                       R6 R2 K18 ["createSignal"]
       53 LOADN                            R7 0
       54 CALL                             R6 1 2
       55 LOADN                            R8 0
       56 DUPTABLE                         R9 K21 [{["EDIT_STAMP_ATTRIBUTE_NAME"] = "RBX_GraphEditStamp"}]
       57 NEWCLOSURE                       R10 P0
       58 CAPTURE                          REF R8
       59 SETTABLEKS                       R10 R9 K22 ["markDirty"]
       61 DUPCLOSURE                       R10 K23 [PROTO_1]
       62 CAPTURE                          VAL R9
       63 SETTABLEKS                       R10 R9 K24 ["markDirtyFromChild"]
       65 DUPCLOSURE                       R10 K25 [PROTO_2]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R10 R9 K26 ["markSaved"]
       71 DUPCLOSURE                       R10 K27 [PROTO_3]
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R10 R9 K28 ["isDirty"]
       75 DUPCLOSURE                       R10 K29 [PROTO_5]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R10 R9 K30 ["observeIsDirty"]
       83 CLOSEUPVALS                      R8
       84 RETURN                           R9 1
