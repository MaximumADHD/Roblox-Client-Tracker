PROTO_0:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R1 3
        7 ADDK                             R0 R1 K1 [1]
        8 SETUPVAL                         R0 3
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K2 ["createElement"]
       12 LOADK                            R1 K3 ["Frame"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 LOADNIL                          R1
        1 LOADN                            R2 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          REF R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          REF R2
        7 DUPTABLE                         R4 K3 [{"component", "getCapturedValue", "getUpdateCount"}]
        8 SETTABLEKS                       R3 R4 K0 ["component"]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          REF R1
       12 SETTABLEKS                       R5 R4 K1 ["getCapturedValue"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          REF R2
       16 SETTABLEKS                       R5 R4 K2 ["getUpdateCount"]
       18 CLOSEUPVALS                      R1
       19 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 OR                               R2 R3 R1
        3 RETURN                           R2 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 DUPCLOSURE                       R1 K0 [PROTO_5]
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K7 [{"useReplicatedStateListener", "useBoundAction", "useReplicatedState", "setReplicatedState", "setBoundAction", "getReplicatedStates", "getBoundActions"}]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R3 R2 K0 ["useReplicatedStateListener"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["useBoundAction"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R3 R2 K2 ["useReplicatedState"]
       17 NEWCLOSURE                       R3 P3
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R3 R2 K3 ["setReplicatedState"]
       21 NEWCLOSURE                       R3 P4
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K4 ["setBoundAction"]
       25 NEWCLOSURE                       R3 P5
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R3 R2 K5 ["getReplicatedStates"]
       29 NEWCLOSURE                       R3 P6
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R3 R2 K6 ["getBoundActions"]
       33 RETURN                           R2 1

PROTO_13:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K4 [table.remove]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 DUPTABLE                         R2 K4 [{"Disconnect"}]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K3 ["Disconnect"]
       13 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MOVE                             R7 R6
        6 CALL                             R7 0 0
        7 FORGLOOP                         R2 2 ; [-3]
        9 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K1 [{"Connect"}]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R3 R2 K0 ["Connect"]
        9 DUPTABLE                         R3 K5 [{"Get", "Set", "SelectionChanged"}]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          REF R0
       12 SETTABLEKS                       R4 R3 K2 ["Get"]
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          REF R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R4 R3 K3 ["Set"]
       19 SETTABLEKS                       R2 R3 K4 ["SelectionChanged"]
       21 CLOSEUPVALS                      R0
       22 RETURN                           R3 1

PROTO_18:
        0 LOADB                            R2 1
        1 JUMPIFEQKS                       R1 K0 ["FaceControls"] ; [+5]
        3 JUMPIFEQKS                       R1 K1 ["Instance"] ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_19:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 2
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETIMPORT                        R1 K4 [table.remove]
       10 GETUPVAL                         R3 0
       11 GETUPVAL                         R4 1
       12 GETTABLE                         R2 R3 R4
       13 MOVE                             R3 R0
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLE                         R3 R4 R5
        3 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        5 MOVE                             R4 R1
        6 GETIMPORT                        R2 K2 [table.insert]
        8 CALL                             R2 2 0
        9 DUPTABLE                         R2 K4 [{"Disconnect"}]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R3 R2 K3 ["Disconnect"]
       16 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 SETTABLE                         R3 R2 R1
        7 DUPTABLE                         R2 K1 [{"Connect"}]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K0 ["Connect"]
       13 RETURN                           R2 1

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 GETUPVAL                         R4 1
        3 GETTABLE                         R3 R4 R1
        4 JUMPIFNOT                        R3 ; [+9]
        5 GETUPVAL                         R6 1
        6 GETTABLE                         R3 R6 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R7
       11 CALL                             R8 0 0
       12 FORGLOOP                         R3 2 ; [-3]
       14 RETURN                           R0 0

PROTO_25:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K4 [{"ClassName", "IsA", "GetPropertyChangedSignal", "Destroy"}]
        7 LOADK                            R4 K5 ["FaceControls"]
        8 SETTABLEKS                       R4 R3 K0 ["ClassName"]
       10 DUPCLOSURE                       R4 K6 [PROTO_18]
       11 SETTABLEKS                       R4 R3 K1 ["IsA"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R2
       15 SETTABLEKS                       R4 R3 K2 ["GetPropertyChangedSignal"]
       17 DUPCLOSURE                       R4 K7 [PROTO_22]
       18 SETTABLEKS                       R4 R3 K3 ["Destroy"]
       20 DUPTABLE                         R6 K10 [{"__index", "__newindex"}]
       21 NEWCLOSURE                       R7 P3
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R7 R6 K8 ["__index"]
       25 NEWCLOSURE                       R7 P4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R7 R6 K9 ["__newindex"]
       30 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       32 MOVE                             R5 R3
       33 GETIMPORT                        R4 K12 [setmetatable]
       35 CALL                             R4 2 0
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 4 0
       16 DUPCLOSURE                       R4 K8 [PROTO_3]
       17 CAPTURE                          VAL R2
       18 SETTABLEKS                       R4 R3 K9 ["createContextConsumer"]
       20 DUPCLOSURE                       R4 K10 [PROTO_12]
       21 SETTABLEKS                       R4 R3 K11 ["createMockNetworkUtils"]
       23 DUPCLOSURE                       R4 K12 [PROTO_17]
       24 SETTABLEKS                       R4 R3 K13 ["createMockSelection"]
       26 DUPCLOSURE                       R4 K14 [PROTO_25]
       27 SETTABLEKS                       R4 R3 K15 ["createMockFaceControls"]
       29 RETURN                           R3 1
