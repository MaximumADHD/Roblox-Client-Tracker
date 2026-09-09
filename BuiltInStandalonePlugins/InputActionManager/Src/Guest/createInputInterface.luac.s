PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R3 K2 ["%*\n%*"]
        3 MOVE                             R5 R0
        4 GETIMPORT                        R6 K5 [debug.traceback]
        6 CALL                             R6 0 1
        7 NAMECALL                         R3 R3 K6 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+3]
        3 MOVE                             R3 R1
        4 CALL                             R3 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K0 ["TryBeginRecording"]
       10 CALL                             R3 2 1
       11 GETIMPORT                        R4 K2 [xpcall]
       13 MOVE                             R5 R1
       14 DUPCLOSURE                       R6 K3 [PROTO_0]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R3 ; [+16]
       17 GETUPVAL                         R5 1
       18 MOVE                             R7 R3
       19 JUMPIFNOT                        R4 ; [+4]
       20 JUMPIFNOT                        R2 ; [+3]
       21 GETIMPORT                        R8 K7 [Enum.FinishRecordingOperation.Append]
       23 JUMP                             ; [+6]
       24 JUMPIFNOT                        R4 ; [+3]
       25 GETIMPORT                        R8 K9 [Enum.FinishRecordingOperation.Commit]
       27 JUMP                             ; [+2]
       28 GETIMPORT                        R8 K11 [Enum.FinishRecordingOperation.Cancel]
       30 NAMECALL                         R5 R5 K12 ["FinishRecording"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["connectionsByUuid"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETTABLE                         R3 R2 R1
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETTABLE                         R3 R2 R1
        8 NAMECALL                         R3 R3 K1 ["Disconnect"]
       10 CALL                             R3 1 0
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R1
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K1 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["connectionsByUuid"]
        3 GETTABLE                         R3 R4 R1
        4 JUMPIF                           R3 ; [+6]
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["connectionsByUuid"]
       10 SETTABLE                         R3 R4 R1
       11 SETTABLE                         R2 R3 R0
       12 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Initialized"]
        2 LOADNIL                          R3
        3 GETIMPORT                        R4 K3 [table.clone]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K4 ["inputContexts"]
        8 CALL                             R4 1 1
        9 GETIMPORT                        R5 K3 [table.clone]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["inputActions"]
       14 CALL                             R5 1 1
       15 GETIMPORT                        R6 K3 [table.clone]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K6 ["inputBindings"]
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K7 ["contextOrder"]
       24 NAMECALL                         R0 R0 K8 ["FireGuest"]
       26 CALL                             R0 7 0
       27 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 DUPCLOSURE                       R2 K2 [PROTO_6]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialized"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["ContextUpdated"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R6 3
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETIMPORT                        R5 K4 [table.clone]
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R5
       16 NAMECALL                         R0 R0 K5 ["FireGuest"]
       18 CALL                             R0 5 0
       19 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R4 K2 [PROTO_9]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialized"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["ActionUpdated"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R6 3
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETIMPORT                        R5 K4 [table.clone]
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R5
       16 NAMECALL                         R0 R0 K5 ["FireGuest"]
       18 CALL                             R0 5 0
       19 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R4 K2 [PROTO_12]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialized"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["BindingUpdated"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R6 3
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETIMPORT                        R5 K4 [table.clone]
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R5
       16 NAMECALL                         R0 R0 K5 ["FireGuest"]
       18 CALL                             R0 5 0
       19 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R4 K2 [PROTO_15]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialized"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["ContextOrderChanged"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["contextOrder"]
       10 NAMECALL                         R0 R0 K3 ["FireGuest"]
       12 CALL                             R0 4 0
       13 RETURN                           R0 0

PROTO_18:
        0 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 DUPCLOSURE                       R2 K2 [PROTO_18]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialized"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["StateChange"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 NAMECALL                         R5 R5 K2 ["GetState"]
       11 CALL                             R5 1 -1
       12 NAMECALL                         R0 R0 K3 ["FireGuest"]
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 DUPCLOSURE                       R4 K2 [PROTO_21]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETTABLEKS                       R2 R1 K1 ["ActionStateChanged"]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETTABLEKS                       R2 R1 K1 ["ActionStateChanged"]
       10 NAMECALL                         R2 R2 K2 ["Disconnect"]
       12 CALL                             R2 1 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K1 ["ActionStateChanged"]
       16 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETIMPORT                        R2 K1 [xpcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R4 K2 [PROTO_21]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["connectionsByUuid"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIFNOT                        R2 ; [+11]
       10 GETTABLEKS                       R3 R2 K2 ["ActionStateChanged"]
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETTABLEKS                       R3 R2 K2 ["ActionStateChanged"]
       15 NAMECALL                         R3 R3 K3 ["Disconnect"]
       17 CALL                             R3 1 0
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K2 ["ActionStateChanged"]
       21 GETIMPORT                        R2 K5 [xpcall]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 DUPCLOSURE                       R4 K6 [PROTO_21]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R2 R0 K7 ["StateChanged"]
       32 NEWCLOSURE                       R4 P2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 NAMECALL                         R2 R2 K8 ["Connect"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K1 ["connectionsByUuid"]
       43 GETTABLE                         R3 R4 R1
       44 JUMPIF                           R3 ; [+6]
       45 NEWTABLE                         R3 0 0
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K1 ["connectionsByUuid"]
       50 SETTABLE                         R3 R4 R1
       51 SETTABLEKS                       R2 R3 K2 ["ActionStateChanged"]
       53 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialized"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["UpdateSelection"]
        6 LOADNIL                          R3
        7 DUPTABLE                         R4 K3 [{"button"}]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K4 ["serializeBindingButton"]
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 1
       13 SETTABLEKS                       R5 R4 K2 ["button"]
       15 NAMECALL                         R0 R0 K5 ["FireGuest"]
       17 CALL                             R0 4 0
       18 RETURN                           R0 0

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialized"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["UpdateSelection"]
        6 LOADNIL                          R3
        7 DUPTABLE                         R4 K4 [{["button"] = }]
        8 NAMECALL                         R0 R0 K5 ["FireGuest"]
       10 CALL                             R0 4 0
       11 RETURN                           R0 0

PROTO_29:
        0 RETURN                           R0 0

PROTO_30:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 LOADK                            R8 K1 ["GuiButton"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+14]
       11 GETUPVAL                         R6 1
       12 SETTABLEKS                       R5 R6 K3 ["button"]
       14 GETIMPORT                        R6 K5 [xpcall]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R5
       21 DUPCLOSURE                       R8 K6 [PROTO_27]
       22 CALL                             R6 2 0
       23 LOADB                            R0 1
       24 JUMP                             ; [+2]
       25 FORGLOOP                         R1 2 ; [-20]
       27 JUMPIF                           R0 ; [+11]
       28 GETUPVAL                         R1 1
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K3 ["button"]
       32 GETIMPORT                        R1 K5 [xpcall]
       34 NEWCLOSURE                       R2 P2
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 DUPCLOSURE                       R3 K7 [PROTO_29]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["serializeBindingProperty"]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 4
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 1
       14 GETIMPORT                        R2 K3 [xpcall]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 DUPCLOSURE                       R4 K4 [PROTO_15]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+1]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 LOADK                            R3 K0 ["Binding%*NameChanged"]
        6 MOVE                             R5 R0
        7 NAMECALL                         R3 R3 K1 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETUPVAL                         R3 1
       12 LOADK                            R6 K2 ["Name"]
       13 NAMECALL                         R4 R1 K3 ["GetPropertyChangedSignal"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U5
       23 NAMECALL                         R4 R4 K4 ["Connect"]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K5 ["connectionsByUuid"]
       29 GETTABLE                         R5 R6 R3
       30 JUMPIF                           R5 ; [+6]
       31 NEWTABLE                         R5 0 0
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K5 ["connectionsByUuid"]
       36 SETTABLE                         R5 R6 R3
       37 SETTABLE                         R4 R5 R2
       38 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["serializeBindingProperty"]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 LOADK                            R4 K2 ["UIButton"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 1
       14 GETIMPORT                        R2 K4 [xpcall]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 DUPCLOSURE                       R4 K5 [PROTO_15]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["serializeBindingProperty"]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 LOADK                            R4 K2 ["UIButton"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 1
       14 GETIMPORT                        R2 K4 [xpcall]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 DUPCLOSURE                       R4 K5 [PROTO_15]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+22]
        9 GETTABLEKS                       R2 R1 K2 ["uiButton"]
       11 JUMPIFNOT                        R2 ; [+43]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
       16 GETTABLE                         R4 R5 R3
       17 JUMPIFNOT                        R4 ; [+37]
       18 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       23 NAMECALL                         R5 R5 K5 ["Disconnect"]
       25 CALL                             R5 1 0
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       29 JUMP                             ; [+25]
       30 GETUPVAL                         R2 2
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+22]
       33 JUMPIFNOTEQKS                    R0 K6 ["UIModifier"] ; [+21]
       35 GETTABLEKS                       R2 R1 K7 ["uiModifier"]
       37 JUMPIFNOT                        R2 ; [+17]
       38 GETUPVAL                         R3 1
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
       42 GETTABLE                         R4 R5 R3
       43 JUMPIFNOT                        R4 ; [+11]
       44 GETTABLEKS                       R5 R4 K8 ["BindingUIModifierNameChanged"]
       46 JUMPIFNOT                        R5 ; [+5]
       47 GETTABLEKS                       R5 R4 K8 ["BindingUIModifierNameChanged"]
       49 NAMECALL                         R5 R5 K5 ["Disconnect"]
       51 CALL                             R5 1 0
       52 LOADNIL                          R5
       53 SETTABLEKS                       R5 R4 K8 ["BindingUIModifierNameChanged"]
       55 GETUPVAL                         R2 3
       56 GETTABLEKS                       R2 R2 K9 ["serializeBindingProperty"]
       58 GETUPVAL                         R3 4
       59 MOVE                             R4 R1
       60 MOVE                             R5 R0
       61 CALL                             R2 3 1
       62 JUMPIF                           R2 ; [+1]
       63 RETURN                           R0 0
       64 GETUPVAL                         R2 2
       65 CALL                             R2 0 1
       66 JUMPIFNOT                        R2 ; [+18]
       67 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+8]
       69 GETUPVAL                         R2 5
       70 LOADK                            R3 K1 ["UIButton"]
       71 GETUPVAL                         R4 4
       72 GETTABLEKS                       R4 R4 K1 ["UIButton"]
       74 CALL                             R2 2 0
       75 JUMP                             ; [+45]
       76 JUMPIFNOTEQKS                    R0 K6 ["UIModifier"] ; [+44]
       78 GETUPVAL                         R2 5
       79 LOADK                            R3 K6 ["UIModifier"]
       80 GETUPVAL                         R4 4
       81 GETTABLEKS                       R4 R4 K6 ["UIModifier"]
       83 CALL                             R2 2 0
       84 JUMP                             ; [+36]
       85 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+35]
       87 GETUPVAL                         R2 4
       88 GETTABLEKS                       R2 R2 K1 ["UIButton"]
       90 JUMPIFNOT                        R2 ; [+30]
       91 GETUPVAL                         R2 1
       92 GETUPVAL                         R3 4
       93 GETTABLEKS                       R3 R3 K1 ["UIButton"]
       95 LOADK                            R5 K10 ["Name"]
       96 NAMECALL                         R3 R3 K11 ["GetPropertyChangedSignal"]
       98 CALL                             R3 2 1
       99 NEWCLOSURE                       R5 P0
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U1
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          UPVAL U6
      105 NAMECALL                         R3 R3 K12 ["Connect"]
      107 CALL                             R3 2 1
      108 GETUPVAL                         R5 0
      109 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
      111 GETTABLE                         R4 R5 R2
      112 JUMPIF                           R4 ; [+6]
      113 NEWTABLE                         R4 0 0
      115 GETUPVAL                         R5 0
      116 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
      118 SETTABLE                         R4 R5 R2
      119 SETTABLEKS                       R3 R4 K4 ["BindingUIButtonNameChanged"]
      121 GETUPVAL                         R2 1
      122 GETIMPORT                        R3 K14 [xpcall]
      124 NEWCLOSURE                       R4 P1
      125 CAPTURE                          UPVAL U0
      126 CAPTURE                          UPVAL U6
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R1
      129 DUPCLOSURE                       R5 K15 [PROTO_15]
      130 CALL                             R3 2 0
      131 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U4
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+11]
       15 MOVE                             R3 R2
       16 LOADK                            R4 K1 ["UIButton"]
       17 GETTABLEKS                       R5 R0 K1 ["UIButton"]
       19 CALL                             R3 2 0
       20 MOVE                             R3 R2
       21 LOADK                            R4 K2 ["UIModifier"]
       22 GETTABLEKS                       R5 R0 K2 ["UIModifier"]
       24 CALL                             R3 2 0
       25 JUMP                             ; [+31]
       26 GETTABLEKS                       R3 R0 K1 ["UIButton"]
       28 JUMPIFNOT                        R3 ; [+28]
       29 GETTABLEKS                       R3 R0 K1 ["UIButton"]
       31 LOADK                            R5 K3 ["Name"]
       32 NAMECALL                         R3 R3 K4 ["GetPropertyChangedSignal"]
       34 CALL                             R3 2 1
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U4
       41 NAMECALL                         R3 R3 K5 ["Connect"]
       43 CALL                             R3 2 1
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K6 ["connectionsByUuid"]
       47 GETTABLE                         R4 R5 R1
       48 JUMPIF                           R4 ; [+6]
       49 NEWTABLE                         R4 0 0
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K6 ["connectionsByUuid"]
       54 SETTABLE                         R4 R5 R1
       55 SETTABLEKS                       R3 R4 K7 ["BindingUIButtonNameChanged"]
       57 GETTABLEKS                       R3 R0 K8 ["Changed"]
       59 NEWCLOSURE                       R5 P2
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U4
       67 NAMECALL                         R3 R3 K5 ["Connect"]
       69 CALL                             R3 2 1
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R5 R5 K6 ["connectionsByUuid"]
       73 GETTABLE                         R4 R5 R1
       74 JUMPIF                           R4 ; [+6]
       75 NEWTABLE                         R4 0 0
       77 GETUPVAL                         R5 2
       78 GETTABLEKS                       R5 R5 K6 ["connectionsByUuid"]
       80 SETTABLE                         R4 R5 R1
       81 SETTABLEKS                       R3 R4 K9 ["BindingPropertyChanged"]
       83 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["serializeBinding"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R1 R3 K2 ["parentUuid"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["inputBindings"]
       15 SETTABLE                         R3 R4 R2
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["inputBindingInstances"]
       19 SETTABLE                         R0 R4 R2
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R0
       22 CALL                             R4 1 0
       23 RETURN                           R2 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K1 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K2 ["inputBindings"]
       22 GETTABLE                         R1 R2 R0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K2 ["inputBindings"]
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R2 R0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K3 ["inputBindingInstances"]
       31 LOADNIL                          R3
       32 SETTABLE                         R3 R2 R0
       33 JUMPIFNOT                        R1 ; [+10]
       34 GETIMPORT                        R2 K5 [xpcall]
       36 LOADNIL                          R4
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 DUPCLOSURE                       R4 K6 [PROTO_15]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["inputActions"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 NEWTABLE                         R3 0 0
       13 NAMECALL                         R4 R0 K2 ["GetInputBindings"]
       15 CALL                             R4 1 3
       16 FORGPREP                         R4
       17 LOADK                            R12 K3 ["InputBinding"]
       18 NAMECALL                         R10 R8 K4 ["IsA"]
       20 CALL                             R10 2 1
       21 FASTCALL2K                       ASSERT R10 K5 ; [+4]
       23 LOADK                            R11 K5 ["Binding is not a InputBinding"]
       24 GETIMPORT                        R9 K7 [assert]
       26 CALL                             R9 2 0
       27 GETUPVAL                         R9 0
       28 MOVE                             R11 R8
       29 NAMECALL                         R9 R9 K0 ["GetOrCreateUniqueId"]
       31 CALL                             R9 2 1
       32 LOADB                            R10 1
       33 SETTABLE                         R10 R3 R9
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R11 R11 K8 ["inputBindings"]
       37 GETTABLE                         R10 R11 R9
       38 JUMPIF                           R10 ; [+45]
       39 GETUPVAL                         R11 0
       40 MOVE                             R13 R8
       41 NAMECALL                         R11 R11 K0 ["GetOrCreateUniqueId"]
       43 CALL                             R11 2 1
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R12 R12 K9 ["serializeBinding"]
       47 MOVE                             R13 R8
       48 CALL                             R12 1 1
       49 SETTABLEKS                       R1 R12 K10 ["parentUuid"]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K8 ["inputBindings"]
       54 SETTABLE                         R12 R13 R11
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R13 R13 K11 ["inputBindingInstances"]
       58 SETTABLE                         R8 R13 R11
       59 GETUPVAL                         R13 3
       60 MOVE                             R14 R8
       61 CALL                             R13 1 0
       62 MOVE                             R10 R11
       63 GETTABLEKS                       R12 R2 K12 ["bindings"]
       65 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       67 MOVE                             R13 R10
       68 GETIMPORT                        R11 K15 [table.insert]
       70 CALL                             R11 2 0
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R12 R12 K8 ["inputBindings"]
       74 GETTABLE                         R11 R12 R10
       75 GETIMPORT                        R12 K17 [xpcall]
       77 NEWCLOSURE                       R13 P0
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 DUPCLOSURE                       R14 K18 [PROTO_15]
       83 CALL                             R12 2 0
       84 FORGLOOP                         R4 2 ; [-68]
       86 NEWTABLE                         R4 0 0
       88 GETTABLEKS                       R5 R2 K12 ["bindings"]
       90 LOADNIL                          R6
       91 LOADNIL                          R7
       92 FORGPREP                         R5
       93 GETTABLE                         R10 R3 R9
       94 JUMPIFNOT                        R10 ; [+8]
       95 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       97 MOVE                             R11 R4
       98 MOVE                             R12 R9
       99 GETIMPORT                        R10 K15 [table.insert]
      101 CALL                             R10 2 0
      102 JUMP                             ; [+44]
      103 GETUPVAL                         R11 1
      104 GETTABLEKS                       R11 R11 K19 ["connectionsByUuid"]
      106 GETTABLE                         R10 R11 R9
      107 JUMPIFNOT                        R10 ; [+14]
      108 MOVE                             R11 R10
      109 LOADNIL                          R12
      110 LOADNIL                          R13
      111 FORGPREP                         R11
      112 NAMECALL                         R16 R15 K20 ["Disconnect"]
      114 CALL                             R16 1 0
      115 FORGLOOP                         R11 2 ; [-4]
      117 GETUPVAL                         R11 1
      118 GETTABLEKS                       R11 R11 K19 ["connectionsByUuid"]
      120 LOADNIL                          R12
      121 SETTABLE                         R12 R11 R9
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K8 ["inputBindings"]
      125 GETTABLE                         R10 R11 R9
      126 GETUPVAL                         R11 1
      127 GETTABLEKS                       R11 R11 K8 ["inputBindings"]
      129 LOADNIL                          R12
      130 SETTABLE                         R12 R11 R9
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K11 ["inputBindingInstances"]
      134 LOADNIL                          R12
      135 SETTABLE                         R12 R11 R9
      136 JUMPIFNOT                        R10 ; [+10]
      137 GETIMPORT                        R11 K17 [xpcall]
      139 LOADNIL                          R13
      140 NEWCLOSURE                       R12 P0
      141 CAPTURE                          UPVAL U1
      142 CAPTURE                          UPVAL U4
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R13
      145 DUPCLOSURE                       R13 K18 [PROTO_15]
      146 CALL                             R11 2 0
      147 FORGLOOP                         R5 2 ; [-55]
      149 SETTABLEKS                       R4 R2 K12 ["bindings"]
      151 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K0 ["inputActions"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R1 R2 R3
        9 GETIMPORT                        R2 K2 [xpcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R4 K3 [PROTO_12]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputActions"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["serializeActionProperty"]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R2 3 1
       13 JUMPIFNOT                        R2 ; [+10]
       14 GETUPVAL                         R2 1
       15 GETIMPORT                        R3 K3 [xpcall]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 DUPCLOSURE                       R5 K4 [PROTO_12]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K1 ["InputBindingsChanged"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R2 R2 K2 ["Connect"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       19 GETTABLE                         R3 R4 R1
       20 JUMPIF                           R3 ; [+6]
       21 NEWTABLE                         R3 0 0
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       26 SETTABLE                         R3 R4 R1
       27 SETTABLEKS                       R2 R3 K4 ["ActionBindingsChanged"]
       29 GETTABLEKS                       R2 R0 K5 ["Changed"]
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U3
       37 NAMECALL                         R2 R2 K2 ["Connect"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       43 GETTABLE                         R3 R4 R1
       44 JUMPIF                           R3 ; [+6]
       45 NEWTABLE                         R3 0 0
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       50 SETTABLE                         R3 R4 R1
       51 SETTABLEKS                       R2 R3 K6 ["ActionPropertyChanged"]
       53 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["serializeAction"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R1 R3 K2 ["parentUuid"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["inputActions"]
       15 SETTABLE                         R3 R4 R2
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["inputActionInstances"]
       19 SETTABLE                         R0 R4 R2
       20 NAMECALL                         R4 R0 K5 ["GetInputBindings"]
       22 CALL                             R4 1 3
       23 FORGPREP                         R4
       24 LOADK                            R12 K6 ["InputBinding"]
       25 NAMECALL                         R10 R8 K7 ["IsA"]
       27 CALL                             R10 2 1
       28 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       30 LOADK                            R11 K8 ["Binding is not a InputBinding"]
       31 GETIMPORT                        R9 K10 [assert]
       33 CALL                             R9 2 0
       34 GETUPVAL                         R10 0
       35 MOVE                             R12 R8
       36 NAMECALL                         R10 R10 K0 ["GetOrCreateUniqueId"]
       38 CALL                             R10 2 1
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R11 R11 K11 ["serializeBinding"]
       42 MOVE                             R12 R8
       43 CALL                             R11 1 1
       44 SETTABLEKS                       R2 R11 K2 ["parentUuid"]
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K12 ["inputBindings"]
       49 SETTABLE                         R11 R12 R10
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R12 R12 K13 ["inputBindingInstances"]
       53 SETTABLE                         R8 R12 R10
       54 GETUPVAL                         R12 3
       55 MOVE                             R13 R8
       56 CALL                             R12 1 0
       57 MOVE                             R9 R10
       58 GETTABLEKS                       R11 R3 K14 ["bindings"]
       60 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       62 MOVE                             R12 R9
       63 GETIMPORT                        R10 K17 [table.insert]
       65 CALL                             R10 2 0
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K12 ["inputBindings"]
       69 GETTABLE                         R10 R11 R9
       70 GETIMPORT                        R11 K19 [xpcall]
       72 NEWCLOSURE                       R12 P0
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R10
       77 DUPCLOSURE                       R13 K20 [PROTO_15]
       78 CALL                             R11 2 0
       79 FORGLOOP                         R4 2 ; [-56]
       81 GETUPVAL                         R4 5
       82 MOVE                             R5 R0
       83 CALL                             R4 1 0
       84 GETUPVAL                         R4 6
       85 CALL                             R4 0 1
       86 JUMPIFNOT                        R4 ; [+3]
       87 GETUPVAL                         R4 7
       88 MOVE                             R5 R0
       89 CALL                             R4 1 0
       90 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputActions"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["bindings"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K2 ["connectionsByUuid"]
       14 GETTABLE                         R7 R8 R6
       15 JUMPIFNOT                        R7 ; [+14]
       16 MOVE                             R8 R7
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 NAMECALL                         R13 R12 K3 ["Disconnect"]
       22 CALL                             R13 1 0
       23 FORGLOOP                         R8 2 ; [-4]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K2 ["connectionsByUuid"]
       28 LOADNIL                          R9
       29 SETTABLE                         R9 R8 R6
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K4 ["inputBindings"]
       33 GETTABLE                         R7 R8 R6
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K4 ["inputBindings"]
       37 LOADNIL                          R9
       38 SETTABLE                         R9 R8 R6
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K5 ["inputBindingInstances"]
       42 LOADNIL                          R9
       43 SETTABLE                         R9 R8 R6
       44 JUMPIFNOT                        R7 ; [+10]
       45 GETIMPORT                        R8 K7 [xpcall]
       47 LOADNIL                          R10
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R10
       53 DUPCLOSURE                       R10 K8 [PROTO_15]
       54 CALL                             R8 2 0
       55 FORGLOOP                         R2 2 ; [-45]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K2 ["connectionsByUuid"]
       60 GETTABLE                         R2 R3 R0
       61 JUMPIFNOT                        R2 ; [+14]
       62 MOVE                             R3 R2
       63 LOADNIL                          R4
       64 LOADNIL                          R5
       65 FORGPREP                         R3
       66 NAMECALL                         R8 R7 K3 ["Disconnect"]
       68 CALL                             R8 1 0
       69 FORGLOOP                         R3 2 ; [-4]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K2 ["connectionsByUuid"]
       74 LOADNIL                          R4
       75 SETTABLE                         R4 R3 R0
       76 GETUPVAL                         R2 0
       77 GETTABLEKS                       R2 R2 K0 ["inputActions"]
       79 LOADNIL                          R3
       80 SETTABLE                         R3 R2 R0
       81 GETUPVAL                         R2 0
       82 GETTABLEKS                       R2 R2 K9 ["inputActionInstances"]
       84 LOADNIL                          R3
       85 SETTABLE                         R3 R2 R0
       86 GETIMPORT                        R2 K7 [xpcall]
       88 LOADNIL                          R4
       89 NEWCLOSURE                       R3 P2
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R4
       94 DUPCLOSURE                       R4 K10 [PROTO_12]
       95 CALL                             R2 2 0
       96 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["inputContexts"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R2 K2 ["actions"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 LOADB                            R9 1
       19 SETTABLE                         R9 R3 R8
       20 FORGLOOP                         R4 2 ; [-3]
       22 NEWTABLE                         R4 0 0
       24 NAMECALL                         R5 R0 K3 ["GetInputActions"]
       26 CALL                             R5 1 3
       27 FORGPREP                         R5
       28 LOADK                            R13 K4 ["InputAction"]
       29 NAMECALL                         R11 R9 K5 ["IsA"]
       31 CALL                             R11 2 1
       32 FASTCALL2K                       ASSERT R11 K6 ; [+4]
       34 LOADK                            R12 K6 ["Action is not a InputAction"]
       35 GETIMPORT                        R10 K8 [assert]
       37 CALL                             R10 2 0
       38 GETUPVAL                         R10 0
       39 MOVE                             R12 R9
       40 NAMECALL                         R10 R10 K0 ["GetOrCreateUniqueId"]
       42 CALL                             R10 2 1
       43 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       45 MOVE                             R12 R4
       46 MOVE                             R13 R10
       47 GETIMPORT                        R11 K11 [table.insert]
       49 CALL                             R11 2 0
       50 GETTABLE                         R11 R3 R10
       51 JUMPIFNOT                        R11 ; [+3]
       52 LOADNIL                          R11
       53 SETTABLE                         R11 R3 R10
       54 JUMP                             ; [+25]
       55 GETUPVAL                         R11 2
       56 MOVE                             R12 R9
       57 MOVE                             R13 R1
       58 CALL                             R11 2 1
       59 GETTABLEKS                       R13 R2 K2 ["actions"]
       61 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       63 MOVE                             R14 R11
       64 GETIMPORT                        R12 K11 [table.insert]
       66 CALL                             R12 2 0
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K12 ["inputActions"]
       70 GETTABLE                         R12 R13 R11
       71 GETIMPORT                        R13 K14 [xpcall]
       73 NEWCLOSURE                       R14 P0
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 DUPCLOSURE                       R15 K15 [PROTO_12]
       79 CALL                             R13 2 0
       80 FORGLOOP                         R5 2 ; [-53]
       82 MOVE                             R5 R3
       83 LOADNIL                          R6
       84 LOADNIL                          R7
       85 FORGPREP                         R5
       86 GETUPVAL                         R11 1
       87 GETTABLEKS                       R11 R11 K16 ["inputActionInstances"]
       89 GETTABLE                         R10 R11 R8
       90 JUMPIFNOT                        R10 ; [+12]
       91 GETUPVAL                         R11 1
       92 GETTABLEKS                       R11 R11 K16 ["inputActionInstances"]
       94 GETTABLE                         R10 R11 R8
       95 LOADK                            R12 K17 ["InputContext"]
       96 NAMECALL                         R10 R10 K18 ["FindFirstAncestor"]
       98 CALL                             R10 2 1
       99 JUMPIF                           R10 ; [+3]
      100 GETUPVAL                         R10 4
      101 MOVE                             R11 R8
      102 CALL                             R10 1 0
      103 FORGLOOP                         R5 1 ; [-18]
      105 SETTABLEKS                       R4 R2 K2 ["actions"]
      107 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K0 ["inputContexts"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R1 R2 R3
        9 GETIMPORT                        R2 K2 [xpcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R4 K3 [PROTO_9]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputContexts"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["serializeContextProperty"]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R2 3 1
       13 JUMPIFNOT                        R2 ; [+10]
       14 GETUPVAL                         R2 1
       15 GETIMPORT                        R3 K3 [xpcall]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 DUPCLOSURE                       R5 K4 [PROTO_9]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K1 ["InputActionsChanged"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R2 R2 K2 ["Connect"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       19 GETTABLE                         R3 R4 R1
       20 JUMPIF                           R3 ; [+6]
       21 NEWTABLE                         R3 0 0
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       26 SETTABLE                         R3 R4 R1
       27 SETTABLEKS                       R2 R3 K4 ["ContextActionsChanged"]
       29 GETTABLEKS                       R2 R0 K5 ["Changed"]
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U3
       37 NAMECALL                         R2 R2 K2 ["Connect"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       43 GETTABLE                         R3 R4 R1
       44 JUMPIF                           R3 ; [+6]
       45 NEWTABLE                         R3 0 0
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       50 SETTABLE                         R3 R4 R1
       51 SETTABLEKS                       R2 R3 K6 ["ContextPropertyChanged"]
       53 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["serializeContext"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R4 R0 K2 ["Parent"]
       12 JUMPIFNOT                        R4 ; [+7]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R5 R0 K2 ["Parent"]
       16 NAMECALL                         R3 R3 K0 ["GetOrCreateUniqueId"]
       18 CALL                             R3 2 1
       19 JUMP                             ; [+11]
       20 GETTABLEKS                       R4 R0 K3 ["Name"]
       22 JUMPIFNOTEQKS                    R4 K4 ["Default"] ; [+3]
       24 LOADK                            R3 K5 ["DefaultContext"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R3 0
       27 GETUPVAL                         R5 2
       28 NAMECALL                         R3 R3 K0 ["GetOrCreateUniqueId"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K6 ["parentUuid"]
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K7 ["inputContexts"]
       36 SETTABLE                         R2 R3 R1
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K8 ["inputContextInstances"]
       40 SETTABLE                         R0 R3 R1
       41 NAMECALL                         R3 R0 K9 ["GetInputActions"]
       43 CALL                             R3 1 3
       44 FORGPREP                         R3
       45 LOADK                            R11 K10 ["InputAction"]
       46 NAMECALL                         R9 R7 K11 ["IsA"]
       48 CALL                             R9 2 1
       49 FASTCALL2K                       ASSERT R9 K12 ; [+4]
       51 LOADK                            R10 K12 ["Action is not a InputAction"]
       52 GETIMPORT                        R8 K14 [assert]
       54 CALL                             R8 2 0
       55 GETUPVAL                         R8 4
       56 MOVE                             R9 R7
       57 MOVE                             R10 R1
       58 CALL                             R8 2 1
       59 GETTABLEKS                       R10 R2 K15 ["actions"]
       61 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       63 MOVE                             R11 R8
       64 GETIMPORT                        R9 K18 [table.insert]
       66 CALL                             R9 2 0
       67 GETUPVAL                         R10 3
       68 GETTABLEKS                       R10 R10 K19 ["inputActions"]
       70 GETTABLE                         R9 R10 R8
       71 GETIMPORT                        R10 K21 [xpcall]
       73 NEWCLOSURE                       R11 P0
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R9
       78 DUPCLOSURE                       R12 K22 [PROTO_12]
       79 CALL                             R10 2 0
       80 FORGLOOP                         R3 2 ; [-36]
       82 GETUPVAL                         R3 6
       83 MOVE                             R4 R0
       84 CALL                             R3 1 0
       85 GETUPVAL                         R4 3
       86 GETTABLEKS                       R4 R4 K23 ["contextOrder"]
       88 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       90 MOVE                             R5 R1
       91 GETIMPORT                        R3 K18 [table.insert]
       93 CALL                             R3 2 0
       94 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputContexts"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["actions"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 1
       12 MOVE                             R8 R6
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 2 ; [-4]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["connectionsByUuid"]
       19 GETTABLE                         R2 R3 R0
       20 JUMPIFNOT                        R2 ; [+14]
       21 MOVE                             R3 R2
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 NAMECALL                         R8 R7 K3 ["Disconnect"]
       27 CALL                             R8 1 0
       28 FORGLOOP                         R3 2 ; [-4]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K2 ["connectionsByUuid"]
       33 LOADNIL                          R4
       34 SETTABLE                         R4 R3 R0
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K0 ["inputContexts"]
       38 LOADNIL                          R3
       39 SETTABLE                         R3 R2 R0
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K4 ["inputContextInstances"]
       43 LOADNIL                          R3
       44 SETTABLE                         R3 R2 R0
       45 NEWTABLE                         R2 0 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K5 ["contextOrder"]
       50 LOADNIL                          R4
       51 LOADNIL                          R5
       52 FORGPREP                         R3
       53 JUMPIFEQ                         R7 R0 ; [+8]
       55 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       57 MOVE                             R9 R2
       58 MOVE                             R10 R7
       59 GETIMPORT                        R8 K8 [table.insert]
       61 CALL                             R8 2 0
       62 FORGLOOP                         R3 2 ; [-10]
       64 GETUPVAL                         R3 0
       65 SETTABLEKS                       R2 R3 K5 ["contextOrder"]
       67 GETIMPORT                        R3 K10 [xpcall]
       69 LOADNIL                          R5
       70 NEWCLOSURE                       R4 P0
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R5
       75 DUPCLOSURE                       R5 K11 [PROTO_9]
       76 CALL                             R3 2 0
       77 GETIMPORT                        R3 K10 [xpcall]
       79 NEWCLOSURE                       R4 P2
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U2
       82 DUPCLOSURE                       R5 K12 [PROTO_18]
       83 CALL                             R3 2 0
       84 RETURN                           R0 0

PROTO_51:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["contextOrder"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADB                            R6 1
        9 SETTABLE                         R6 R0 R5
       10 FORGLOOP                         R1 2 ; [-3]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R2 R2 K1 ["GetInputContexts"]
       17 CALL                             R2 1 3
       18 FORGPREP                         R2
       19 LOADK                            R10 K2 ["InputContext"]
       20 NAMECALL                         R8 R6 K3 ["IsA"]
       22 CALL                             R8 2 1
       23 FASTCALL2K                       ASSERT R8 K4 ; [+4]
       25 LOADK                            R9 K4 ["Context is not a InputContext"]
       26 GETIMPORT                        R7 K6 [assert]
       28 CALL                             R7 2 0
       29 GETUPVAL                         R7 2
       30 MOVE                             R9 R6
       31 NAMECALL                         R7 R7 K7 ["GetOrCreateUniqueId"]
       33 CALL                             R7 2 1
       34 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       36 MOVE                             R9 R1
       37 MOVE                             R10 R7
       38 GETIMPORT                        R8 K10 [table.insert]
       40 CALL                             R8 2 0
       41 GETTABLE                         R8 R0 R7
       42 JUMPIFNOT                        R8 ; [+3]
       43 LOADNIL                          R8
       44 SETTABLE                         R8 R0 R7
       45 JUMP                             ; [+16]
       46 GETUPVAL                         R8 3
       47 MOVE                             R9 R6
       48 CALL                             R8 1 0
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K11 ["inputContexts"]
       52 GETTABLE                         R8 R9 R7
       53 GETIMPORT                        R9 K13 [xpcall]
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R11 K14 [PROTO_9]
       61 CALL                             R9 2 0
       62 FORGLOOP                         R2 2 ; [-44]
       64 MOVE                             R2 R0
       65 LOADNIL                          R3
       66 LOADNIL                          R4
       67 FORGPREP                         R2
       68 GETUPVAL                         R7 5
       69 MOVE                             R8 R5
       70 CALL                             R7 1 0
       71 FORGLOOP                         R2 2 ; [-4]
       73 GETUPVAL                         R2 0
       74 SETTABLEKS                       R1 R2 K0 ["contextOrder"]
       76 GETIMPORT                        R2 K13 [xpcall]
       78 NEWCLOSURE                       R3 P2
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U4
       81 DUPCLOSURE                       R4 K15 [PROTO_18]
       82 CALL                             R2 2 0
       83 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["contextOrder"]
        3 RETURN                           R1 1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["context"]
        3 JUMPIF                           R0 ; [+23]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["uuid"]
        7 JUMPIFNOT                        R0 ; [+19]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["inputContextInstances"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["uuid"]
       14 GETTABLE                         R0 R1 R2
       15 JUMPIFNOT                        R0 ; [+10]
       16 GETUPVAL                         R1 2
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K3 ["Parent"]
       22 RETURN                           R0 0
       23 NAMECALL                         R1 R0 K4 ["Destroy"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["context"]
       30 FASTCALL2K                       ASSERT R1 K5 ; [+4]
       32 LOADK                            R2 K5 ["Context is required"]
       33 GETIMPORT                        R0 K7 [assert]
       35 CALL                             R0 2 0
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K1 ["uuid"]
       39 JUMPIFNOT                        R0 ; [+17]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K2 ["inputContextInstances"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K1 ["uuid"]
       46 GETTABLE                         R0 R1 R2
       47 JUMPIFNOT                        R0 ; [+58]
       48 GETUPVAL                         R1 3
       49 GETTABLEKS                       R1 R1 K8 ["deserializeContext"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K0 ["context"]
       54 MOVE                             R3 R0
       55 CALL                             R1 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R1 0
       58 GETTABLEKS                       R1 R1 K0 ["context"]
       60 GETTABLEKS                       R1 R1 K9 ["name"]
       62 FASTCALL2K                       ASSERT R1 K10 ; [+4]
       64 LOADK                            R2 K10 ["When creating a new context, a name must be defined."]
       65 GETIMPORT                        R0 K7 [assert]
       67 CALL                             R0 2 0
       68 GETIMPORT                        R0 K13 [Instance.new]
       70 LOADK                            R1 K14 ["InputContext"]
       71 CALL                             R0 1 1
       72 GETUPVAL                         R1 4
       73 LOADK                            R3 K15 ["Inputs"]
       74 NAMECALL                         R1 R1 K16 ["FindFirstChild"]
       76 CALL                             R1 2 1
       77 JUMPIF                           R1 ; [+18]
       78 GETIMPORT                        R2 K13 [Instance.new]
       80 LOADK                            R3 K17 ["Folder"]
       81 CALL                             R2 1 1
       82 MOVE                             R1 R2
       83 FASTCALL2K                       ASSERT R1 K18 ; [+5]
       85 MOVE                             R3 R1
       86 LOADK                            R4 K18 ["Inputs folder not found"]
       87 GETIMPORT                        R2 K7 [assert]
       89 CALL                             R2 2 0
       90 LOADK                            R2 K15 ["Inputs"]
       91 SETTABLEKS                       R2 R1 K19 ["Name"]
       93 GETUPVAL                         R2 4
       94 SETTABLEKS                       R2 R1 K3 ["Parent"]
       96 SETTABLEKS                       R1 R0 K3 ["Parent"]
       98 GETUPVAL                         R2 3
       99 GETTABLEKS                       R2 R2 K8 ["deserializeContext"]
      101 GETUPVAL                         R3 0
      102 GETTABLEKS                       R3 R3 K0 ["context"]
      104 MOVE                             R4 R0
      105 CALL                             R2 2 0
      106 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 GETTABLEKS                       R5 R1 K1 ["appendRecording"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["action"]
        3 JUMPIF                           R0 ; [+23]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["uuid"]
        7 JUMPIFNOT                        R0 ; [+19]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["inputActionInstances"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["uuid"]
       14 GETTABLE                         R0 R1 R2
       15 JUMPIFNOT                        R0 ; [+10]
       16 GETUPVAL                         R1 2
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K3 ["Parent"]
       22 RETURN                           R0 0
       23 NAMECALL                         R1 R0 K4 ["Destroy"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["action"]
       30 FASTCALL2K                       ASSERT R1 K5 ; [+4]
       32 LOADK                            R2 K5 ["Action is required"]
       33 GETIMPORT                        R0 K7 [assert]
       35 CALL                             R0 2 0
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K1 ["uuid"]
       39 JUMPIFNOT                        R0 ; [+17]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K2 ["inputActionInstances"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K1 ["uuid"]
       46 GETTABLE                         R0 R1 R2
       47 JUMPIFNOT                        R0 ; [+90]
       48 GETUPVAL                         R1 3
       49 GETTABLEKS                       R1 R1 K8 ["deserializeAction"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K0 ["action"]
       54 MOVE                             R3 R0
       55 CALL                             R1 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R1 0
       58 GETTABLEKS                       R1 R1 K0 ["action"]
       60 GETTABLEKS                       R1 R1 K9 ["name"]
       62 FASTCALL2K                       ASSERT R1 K10 ; [+4]
       64 LOADK                            R2 K10 ["When creating a new action, a name must be defined."]
       65 GETIMPORT                        R0 K7 [assert]
       67 CALL                             R0 2 0
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R1 R1 K0 ["action"]
       71 GETTABLEKS                       R1 R1 K11 ["parentUuid"]
       73 FASTCALL2K                       ASSERT R1 K12 ; [+4]
       75 LOADK                            R2 K12 ["When creating a new action, a parent must be defined."]
       76 GETIMPORT                        R0 K7 [assert]
       78 CALL                             R0 2 0
       79 GETUPVAL                         R0 0
       80 GETTABLEKS                       R0 R0 K0 ["action"]
       82 GETTABLEKS                       R0 R0 K11 ["parentUuid"]
       84 GETUPVAL                         R2 1
       85 GETTABLEKS                       R2 R2 K13 ["inputContextInstances"]
       87 GETTABLE                         R1 R2 R0
       88 JUMPIF                           R1 ; [+1]
       89 RETURN                           R0 0
       90 GETIMPORT                        R2 K16 [Instance.new]
       92 LOADK                            R3 K17 ["InputAction"]
       93 CALL                             R2 1 1
       94 GETTABLEKS                       R3 R1 K3 ["Parent"]
       96 JUMPIF                           R3 ; [+31]
       97 GETTABLEKS                       R3 R1 K18 ["Name"]
       99 JUMPIFNOTEQKS                    R3 K19 ["Default"] ; [+28]
      101 GETUPVAL                         R3 4
      102 LOADK                            R5 K20 ["Inputs"]
      103 NAMECALL                         R3 R3 K21 ["FindFirstChild"]
      105 CALL                             R3 2 1
      106 JUMPIF                           R3 ; [+18]
      107 GETIMPORT                        R4 K16 [Instance.new]
      109 LOADK                            R5 K22 ["Folder"]
      110 CALL                             R4 1 1
      111 MOVE                             R3 R4
      112 FASTCALL2K                       ASSERT R3 K23 ; [+5]
      114 MOVE                             R5 R3
      115 LOADK                            R6 K23 ["Inputs folder not found"]
      116 GETIMPORT                        R4 K7 [assert]
      118 CALL                             R4 2 0
      119 LOADK                            R4 K20 ["Inputs"]
      120 SETTABLEKS                       R4 R3 K18 ["Name"]
      122 GETUPVAL                         R4 4
      123 SETTABLEKS                       R4 R3 K3 ["Parent"]
      125 SETTABLEKS                       R3 R2 K3 ["Parent"]
      127 JUMP                             ; [+2]
      128 SETTABLEKS                       R1 R2 K3 ["Parent"]
      130 GETUPVAL                         R3 3
      131 GETTABLEKS                       R3 R3 K8 ["deserializeAction"]
      133 GETUPVAL                         R4 0
      134 GETTABLEKS                       R4 R4 K0 ["action"]
      136 MOVE                             R5 R2
      137 CALL                             R3 2 0
      138 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 GETTABLEKS                       R5 R1 K1 ["appendRecording"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["binding"]
        3 JUMPIF                           R0 ; [+23]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["uuid"]
        7 JUMPIFNOT                        R0 ; [+19]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["inputBindingInstances"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["uuid"]
       14 GETTABLE                         R0 R1 R2
       15 JUMPIFNOT                        R0 ; [+10]
       16 GETUPVAL                         R1 2
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K3 ["Parent"]
       22 RETURN                           R0 0
       23 NAMECALL                         R1 R0 K4 ["Destroy"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["binding"]
       30 FASTCALL2K                       ASSERT R1 K5 ; [+4]
       32 LOADK                            R2 K5 ["Binding is required"]
       33 GETIMPORT                        R0 K7 [assert]
       35 CALL                             R0 2 0
       36 GETUPVAL                         R0 3
       37 CALL                             R0 0 1
       38 JUMPIFNOT                        R0 ; [+181]
       39 GETUPVAL                         R0 0
       40 GETTABLEKS                       R0 R0 K1 ["uuid"]
       42 JUMPIFNOT                        R0 ; [+89]
       43 GETUPVAL                         R1 1
       44 GETTABLEKS                       R1 R1 K2 ["inputBindingInstances"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K1 ["uuid"]
       49 GETTABLE                         R0 R1 R2
       50 JUMPIFNOT                        R0 ; [+8]
       51 GETUPVAL                         R1 4
       52 GETTABLEKS                       R1 R1 K8 ["deserializeBinding"]
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K0 ["binding"]
       57 MOVE                             R3 R0
       58 CALL                             R1 2 0
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K0 ["binding"]
       62 GETTABLEKS                       R1 R1 K9 ["uiButton"]
       64 JUMPIFNOT                        R1 ; [+11]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K0 ["binding"]
       68 GETTABLEKS                       R2 R2 K9 ["uiButton"]
       70 GETTABLEKS                       R2 R2 K1 ["uuid"]
       72 JUMPIFNOTEQKS                    R2 K10 [""] ; [+2]
       74 LOADB                            R1 0 +1
       75 LOADB                            R1 1
       76 JUMPIFNOT                        R1 ; [+9]
       77 GETUPVAL                         R2 1
       78 GETTABLEKS                       R2 R2 K11 ["button"]
       80 JUMPIFNOT                        R2 ; [+5]
       81 GETUPVAL                         R2 1
       82 GETTABLEKS                       R2 R2 K11 ["button"]
       84 SETTABLEKS                       R2 R0 K12 ["UIButton"]
       86 GETUPVAL                         R2 0
       87 GETTABLEKS                       R2 R2 K0 ["binding"]
       89 GETTABLEKS                       R2 R2 K13 ["uiModifier"]
       91 JUMPIFNOT                        R2 ; [+11]
       92 GETUPVAL                         R3 0
       93 GETTABLEKS                       R3 R3 K0 ["binding"]
       95 GETTABLEKS                       R3 R3 K13 ["uiModifier"]
       97 GETTABLEKS                       R3 R3 K1 ["uuid"]
       99 JUMPIFNOTEQKS                    R3 K10 [""] ; [+2]
      101 LOADB                            R2 0 +1
      102 LOADB                            R2 1
      103 JUMPIFNOT                        R2 ; [+9]
      104 GETUPVAL                         R3 1
      105 GETTABLEKS                       R3 R3 K11 ["button"]
      107 JUMPIFNOT                        R3 ; [+5]
      108 GETUPVAL                         R3 1
      109 GETTABLEKS                       R3 R3 K11 ["button"]
      111 SETTABLEKS                       R3 R0 K14 ["UIModifier"]
      113 GETUPVAL                         R3 5
      114 GETUPVAL                         R4 4
      115 GETTABLEKS                       R4 R4 K15 ["serializeBinding"]
      117 MOVE                             R5 R0
      118 CALL                             R4 1 -1
      119 CALL                             R3 -1 1
      120 JUMPIF                           R3 ; [+10]
      121 GETUPVAL                         R3 2
      122 CALL                             R3 0 1
      123 JUMPIFNOT                        R3 ; [+4]
      124 LOADNIL                          R3
      125 SETTABLEKS                       R3 R0 K3 ["Parent"]
      127 RETURN                           R0 0
      128 NAMECALL                         R3 R0 K4 ["Destroy"]
      130 CALL                             R3 1 0
      131 RETURN                           R0 0
      132 GETUPVAL                         R1 0
      133 GETTABLEKS                       R1 R1 K0 ["binding"]
      135 GETTABLEKS                       R1 R1 K16 ["name"]
      137 FASTCALL2K                       ASSERT R1 K17 ; [+4]
      139 LOADK                            R2 K17 ["When creating a new binding, a name must be defined."]
      140 GETIMPORT                        R0 K7 [assert]
      142 CALL                             R0 2 0
      143 GETUPVAL                         R1 0
      144 GETTABLEKS                       R1 R1 K0 ["binding"]
      146 GETTABLEKS                       R1 R1 K18 ["parentUuid"]
      148 FASTCALL2K                       ASSERT R1 K19 ; [+4]
      150 LOADK                            R2 K19 ["When creating a new binding, a parent must be defined."]
      151 GETIMPORT                        R0 K7 [assert]
      153 CALL                             R0 2 0
      154 GETUPVAL                         R0 0
      155 GETTABLEKS                       R0 R0 K0 ["binding"]
      157 GETTABLEKS                       R0 R0 K18 ["parentUuid"]
      159 GETUPVAL                         R2 1
      160 GETTABLEKS                       R2 R2 K20 ["inputActionInstances"]
      162 GETTABLE                         R1 R2 R0
      163 JUMPIF                           R1 ; [+1]
      164 RETURN                           R0 0
      165 GETUPVAL                         R3 0
      166 GETTABLEKS                       R3 R3 K0 ["binding"]
      168 GETTABLEKS                       R3 R3 K9 ["uiButton"]
      170 JUMPIFNOT                        R3 ; [+8]
      171 GETUPVAL                         R3 1
      172 GETTABLEKS                       R3 R3 K11 ["button"]
      174 JUMPIFNOT                        R3 ; [+4]
      175 GETUPVAL                         R2 1
      176 GETTABLEKS                       R2 R2 K11 ["button"]
      178 JUMP                             ; [+1]
      179 LOADNIL                          R2
      180 GETUPVAL                         R3 0
      181 GETTABLEKS                       R3 R3 K0 ["binding"]
      183 GETTABLEKS                       R3 R3 K9 ["uiButton"]
      185 JUMPIFNOT                        R3 ; [+16]
      186 JUMPIFNOT                        R2 ; [+15]
      187 GETUPVAL                         R3 0
      188 GETTABLEKS                       R3 R3 K0 ["binding"]
      190 GETTABLEKS                       R3 R3 K9 ["uiButton"]
      192 GETTABLEKS                       R3 R3 K1 ["uuid"]
      194 GETUPVAL                         R4 6
      195 MOVE                             R6 R2
      196 NAMECALL                         R4 R4 K21 ["GetOrCreateUniqueId"]
      198 CALL                             R4 2 1
      199 JUMPIFEQ                         R3 R4 ; [+2]
      201 RETURN                           R0 0
      202 GETIMPORT                        R3 K24 [Instance.new]
      204 LOADK                            R4 K25 ["InputBinding"]
      205 CALL                             R3 1 1
      206 SETTABLEKS                       R1 R3 K3 ["Parent"]
      208 JUMPIFNOT                        R2 ; [+2]
      209 SETTABLEKS                       R2 R3 K12 ["UIButton"]
      211 GETUPVAL                         R4 4
      212 GETTABLEKS                       R4 R4 K8 ["deserializeBinding"]
      214 GETUPVAL                         R5 0
      215 GETTABLEKS                       R5 R5 K0 ["binding"]
      217 MOVE                             R6 R3
      218 CALL                             R4 2 0
      219 RETURN                           R0 0
      220 GETUPVAL                         R0 0
      221 GETTABLEKS                       R0 R0 K1 ["uuid"]
      223 JUMPIFNOT                        R0 ; [+75]
      224 GETUPVAL                         R1 1
      225 GETTABLEKS                       R1 R1 K2 ["inputBindingInstances"]
      227 GETUPVAL                         R2 0
      228 GETTABLEKS                       R2 R2 K1 ["uuid"]
      230 GETTABLE                         R0 R1 R2
      231 JUMPIFNOT                        R0 ; [+8]
      232 GETUPVAL                         R1 4
      233 GETTABLEKS                       R1 R1 K8 ["deserializeBinding"]
      235 GETUPVAL                         R2 0
      236 GETTABLEKS                       R2 R2 K0 ["binding"]
      238 MOVE                             R3 R0
      239 CALL                             R1 2 0
      240 GETUPVAL                         R2 0
      241 GETTABLEKS                       R2 R2 K0 ["binding"]
      243 GETTABLEKS                       R2 R2 K9 ["uiButton"]
      245 JUMPIFNOT                        R2 ; [+8]
      246 GETUPVAL                         R2 1
      247 GETTABLEKS                       R2 R2 K11 ["button"]
      249 JUMPIFNOT                        R2 ; [+4]
      250 GETUPVAL                         R1 1
      251 GETTABLEKS                       R1 R1 K11 ["button"]
      253 JUMP                             ; [+1]
      254 LOADNIL                          R1
      255 JUMPIF                           R1 ; [+1]
      256 RETURN                           R0 0
      257 GETUPVAL                         R2 0
      258 GETTABLEKS                       R2 R2 K0 ["binding"]
      260 GETTABLEKS                       R2 R2 K9 ["uiButton"]
      262 JUMPIFNOT                        R2 ; [+33]
      263 GETUPVAL                         R2 0
      264 GETTABLEKS                       R2 R2 K0 ["binding"]
      266 GETTABLEKS                       R2 R2 K9 ["uiButton"]
      268 GETTABLEKS                       R2 R2 K1 ["uuid"]
      270 GETUPVAL                         R3 6
      271 MOVE                             R5 R1
      272 NAMECALL                         R3 R3 K21 ["GetOrCreateUniqueId"]
      274 CALL                             R3 2 1
      275 JUMPIFEQ                         R2 R3 ; [+20]
      277 GETUPVAL                         R2 0
      278 GETTABLEKS                       R2 R2 K0 ["binding"]
      280 GETTABLEKS                       R2 R2 K9 ["uiButton"]
      282 GETTABLEKS                       R2 R2 K1 ["uuid"]
      284 JUMPIF                           R2 ; [+10]
      285 GETUPVAL                         R2 2
      286 CALL                             R2 0 1
      287 JUMPIFNOT                        R2 ; [+4]
      288 LOADNIL                          R2
      289 SETTABLEKS                       R2 R0 K3 ["Parent"]
      291 RETURN                           R0 0
      292 NAMECALL                         R2 R0 K4 ["Destroy"]
      294 CALL                             R2 1 0
      295 RETURN                           R0 0
      296 SETTABLEKS                       R1 R0 K12 ["UIButton"]
      298 RETURN                           R0 0
      299 GETUPVAL                         R1 0
      300 GETTABLEKS                       R1 R1 K0 ["binding"]
      302 GETTABLEKS                       R1 R1 K16 ["name"]
      304 FASTCALL2K                       ASSERT R1 K17 ; [+4]
      306 LOADK                            R2 K17 ["When creating a new binding, a name must be defined."]
      307 GETIMPORT                        R0 K7 [assert]
      309 CALL                             R0 2 0
      310 GETUPVAL                         R1 0
      311 GETTABLEKS                       R1 R1 K0 ["binding"]
      313 GETTABLEKS                       R1 R1 K18 ["parentUuid"]
      315 FASTCALL2K                       ASSERT R1 K19 ; [+4]
      317 LOADK                            R2 K19 ["When creating a new binding, a parent must be defined."]
      318 GETIMPORT                        R0 K7 [assert]
      320 CALL                             R0 2 0
      321 GETUPVAL                         R0 0
      322 GETTABLEKS                       R0 R0 K0 ["binding"]
      324 GETTABLEKS                       R0 R0 K18 ["parentUuid"]
      326 GETUPVAL                         R2 1
      327 GETTABLEKS                       R2 R2 K20 ["inputActionInstances"]
      329 GETTABLE                         R1 R2 R0
      330 JUMPIF                           R1 ; [+1]
      331 RETURN                           R0 0
      332 GETUPVAL                         R3 0
      333 GETTABLEKS                       R3 R3 K0 ["binding"]
      335 GETTABLEKS                       R3 R3 K9 ["uiButton"]
      337 JUMPIFNOT                        R3 ; [+8]
      338 GETUPVAL                         R3 1
      339 GETTABLEKS                       R3 R3 K11 ["button"]
      341 JUMPIFNOT                        R3 ; [+4]
      342 GETUPVAL                         R2 1
      343 GETTABLEKS                       R2 R2 K11 ["button"]
      345 JUMP                             ; [+1]
      346 LOADNIL                          R2
      347 GETUPVAL                         R3 0
      348 GETTABLEKS                       R3 R3 K0 ["binding"]
      350 GETTABLEKS                       R3 R3 K9 ["uiButton"]
      352 JUMPIFNOT                        R3 ; [+16]
      353 JUMPIFNOT                        R2 ; [+15]
      354 GETUPVAL                         R3 0
      355 GETTABLEKS                       R3 R3 K0 ["binding"]
      357 GETTABLEKS                       R3 R3 K9 ["uiButton"]
      359 GETTABLEKS                       R3 R3 K1 ["uuid"]
      361 GETUPVAL                         R4 6
      362 MOVE                             R6 R2
      363 NAMECALL                         R4 R4 K21 ["GetOrCreateUniqueId"]
      365 CALL                             R4 2 1
      366 JUMPIFEQ                         R3 R4 ; [+2]
      368 RETURN                           R0 0
      369 GETIMPORT                        R3 K24 [Instance.new]
      371 LOADK                            R4 K25 ["InputBinding"]
      372 CALL                             R3 1 1
      373 SETTABLEKS                       R1 R3 K3 ["Parent"]
      375 JUMPIFNOT                        R2 ; [+2]
      376 SETTABLEKS                       R2 R3 K12 ["UIButton"]
      378 GETUPVAL                         R4 4
      379 GETTABLEKS                       R4 R4 K8 ["deserializeBinding"]
      381 GETUPVAL                         R5 0
      382 GETTABLEKS                       R5 R5 K0 ["binding"]
      384 MOVE                             R6 R3
      385 CALL                             R4 2 0
      386 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 GETTABLEKS                       R5 R1 K1 ["appendRecording"]
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputContextInstances"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["uuid"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOT                        R0 ; [+7]
        8 NAMECALL                         R1 R0 K2 ["Clone"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R0 K3 ["Parent"]
       13 SETTABLEKS                       R2 R1 K3 ["Parent"]
       15 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputActionInstances"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["uuid"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETTABLEKS                       R1 R0 K2 ["Parent"]
       10 JUMPIFNOT                        R1 ; [+7]
       11 NAMECALL                         R1 R0 K3 ["Clone"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K2 ["Parent"]
       16 SETTABLEKS                       R2 R1 K2 ["Parent"]
       18 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["initialized"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["initialized"]
       10 GETIMPORT                        R0 K2 [xpcall]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 DUPCLOSURE                       R2 K3 [PROTO_6]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R2 4
       19 NAMECALL                         R0 R0 K4 ["GetOrCreateUniqueId"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K5 ["InputContextsChanged"]
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R1 R1 K6 ["Connect"]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K7 ["connectionsByUuid"]
       33 GETTABLE                         R2 R3 R0
       34 JUMPIF                           R2 ; [+6]
       35 NEWTABLE                         R2 0 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K7 ["connectionsByUuid"]
       40 SETTABLE                         R2 R3 R0
       41 SETTABLEKS                       R1 R2 K8 ["ContextsChanged"]
       43 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["connectionsByUuid"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R6 R7 R4
       10 JUMPIFNOT                        R6 ; [+14]
       11 MOVE                             R7 R6
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 NAMECALL                         R12 R11 K1 ["Disconnect"]
       17 CALL                             R12 1 0
       18 FORGLOOP                         R7 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R8
       24 SETTABLE                         R8 R7 R4
       25 FORGLOOP                         R1 2 ; [-20]
       27 GETIMPORT                        R1 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
       32 CALL                             R1 1 0
       33 GETIMPORT                        R1 K4 [table.clear]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
       38 CALL                             R1 1 0
       39 GETIMPORT                        R1 K4 [table.clear]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K5 ["inputContexts"]
       44 CALL                             R1 1 0
       45 GETIMPORT                        R1 K4 [table.clear]
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K6 ["inputActions"]
       50 CALL                             R1 1 0
       51 GETIMPORT                        R1 K4 [table.clear]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R2 R2 K7 ["inputBindings"]
       56 CALL                             R1 1 0
       57 GETIMPORT                        R1 K4 [table.clear]
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K8 ["inputContextInstances"]
       62 CALL                             R1 1 0
       63 GETIMPORT                        R1 K4 [table.clear]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K9 ["inputActionInstances"]
       68 CALL                             R1 1 0
       69 GETIMPORT                        R1 K4 [table.clear]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R2 R2 K10 ["inputBindingInstances"]
       74 CALL                             R1 1 0
       75 GETUPVAL                         R1 0
       76 NEWTABLE                         R2 0 0
       78 SETTABLEKS                       R2 R1 K11 ["contextOrder"]
       80 GETUPVAL                         R1 1
       81 CALL                             R1 0 0
       82 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 1
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 2
       36 JUMPIFNOT                        R0 ; [+2]
       37 GETUPVAL                         R0 2
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 3
       40 JUMPIFNOT                        R0 ; [+2]
       41 GETUPVAL                         R0 3
       42 CALL                             R0 0 0
       43 GETUPVAL                         R0 4
       44 JUMPIFNOT                        R0 ; [+2]
       45 GETUPVAL                         R0 4
       46 CALL                             R0 0 0
       47 GETUPVAL                         R0 5
       48 JUMPIFNOT                        R0 ; [+2]
       49 GETUPVAL                         R0 5
       50 CALL                             R0 0 0
       51 GETUPVAL                         R0 6
       52 CALL                             R0 0 1
       53 JUMPIFNOT                        R0 ; [+8]
       54 GETUPVAL                         R0 7
       55 JUMPIFNOT                        R0 ; [+2]
       56 GETUPVAL                         R0 7
       57 CALL                             R0 0 0
       58 GETUPVAL                         R0 8
       59 JUMPIFNOT                        R0 ; [+2]
       60 GETUPVAL                         R0 8
       61 CALL                             R0 0 0
       62 GETUPVAL                         R0 9
       63 JUMPIFNOT                        R0 ; [+4]
       64 GETUPVAL                         R0 9
       65 NAMECALL                         R0 R0 K1 ["Disconnect"]
       67 CALL                             R0 1 0
       68 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETIMPORT                        R0 K2 [table.clear]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["inputContexts"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["inputActions"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K2 [table.clear]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K5 ["inputBindings"]
       19 CALL                             R0 1 0
       20 GETIMPORT                        R0 K2 [table.clear]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K6 ["inputContextInstances"]
       25 CALL                             R0 1 0
       26 GETIMPORT                        R0 K2 [table.clear]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K7 ["inputActionInstances"]
       31 CALL                             R0 1 0
       32 GETIMPORT                        R0 K2 [table.clear]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K8 ["inputBindingInstances"]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 1
       39 NEWTABLE                         R1 0 0
       41 SETTABLEKS                       R1 R0 K9 ["contextOrder"]
       43 RETURN                           R0 0

PROTO_69:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPTABLE                         R2 K13 [{["button"] = , ["inputContexts"], ["inputActions"], ["inputBindings"], ["inputContextInstances"], ["inputActionInstances"], ["inputBindingInstances"], ["contextOrder"], ["connectionsByUuid"], ["initialized"] = False}]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K3 ["inputContexts"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K4 ["inputActions"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K5 ["inputBindings"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K6 ["inputContextInstances"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K7 ["inputActionInstances"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K8 ["inputBindingInstances"]
       28 NEWTABLE                         R3 0 0
       30 SETTABLEKS                       R3 R2 K9 ["contextOrder"]
       32 NEWTABLE                         R3 0 0
       34 SETTABLEKS                       R3 R2 K10 ["connectionsByUuid"]
       36 NEWCLOSURE                       R3 P1
       37 CAPTURE                          VAL R2
       38 NEWCLOSURE                       R4 P2
       39 CAPTURE                          VAL R2
       40 NEWCLOSURE                       R5 P3
       41 CAPTURE                          VAL R2
       42 NEWCLOSURE                       R6 P4
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 NEWCLOSURE                       R7 P5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 NEWCLOSURE                       R8 P6
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R0
       51 NEWCLOSURE                       R9 P7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 NEWCLOSURE                       R10 P8
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 NEWCLOSURE                       R11 P9
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 NEWCLOSURE                       R12 P10
       61 CAPTURE                          VAL R2
       62 NEWCLOSURE                       R13 P11
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R0
       66 NEWCLOSURE                       R14 P12
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U4
       71 GETUPVAL                         R15 3
       72 GETTABLEKS                       R15 R15 K14 ["SelectionChanged"]
       74 MOVE                             R17 R14
       75 NAMECALL                         R15 R15 K15 ["Connect"]
       77 CALL                             R15 2 1
       78 NEWCLOSURE                       R16 P13
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          VAL R2
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          VAL R0
       84 NEWCLOSURE                       R17 P14
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R16
       89 NEWCLOSURE                       R18 P15
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R0
       92 NEWCLOSURE                       R19 P16
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R0
       98 NEWCLOSURE                       R20 P17
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U4
      104 NEWCLOSURE                       R21 P18
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R20
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          VAL R13
      113 NEWCLOSURE                       R22 P19
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R0
      116 NEWCLOSURE                       R23 P20
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R21
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R22
      122 NEWCLOSURE                       R24 P21
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          VAL R23
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U4
      128 NEWCLOSURE                       R25 P22
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          UPVAL U7
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R24
      136 NEWCLOSURE                       R26 P23
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R22
      139 CAPTURE                          VAL R0
      140 NEWCLOSURE                       R27 P24
      141 CAPTURE                          VAL R2
      142 CAPTURE                          UPVAL U7
      143 CAPTURE                          UPVAL U2
      144 CAPTURE                          VAL R25
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R26
      147 LOADK                            R30 K16 ["GetContexts"]
      148 NEWCLOSURE                       R31 P25
      149 CAPTURE                          VAL R2
      150 NAMECALL                         R28 R0 K17 ["OnHostInvokeAsync"]
      152 CALL                             R28 3 2
      153 LOADK                            R32 K18 ["UpdateContext"]
      154 NEWCLOSURE                       R33 P26
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R2
      157 CAPTURE                          UPVAL U0
      158 CAPTURE                          UPVAL U4
      159 CAPTURE                          UPVAL U8
      160 NAMECALL                         R30 R0 K19 ["OnHostEvent"]
      162 CALL                             R30 3 2
      163 LOADK                            R34 K20 ["UpdateAction"]
      164 NEWCLOSURE                       R35 P27
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R2
      167 CAPTURE                          UPVAL U0
      168 CAPTURE                          UPVAL U4
      169 CAPTURE                          UPVAL U8
      170 NAMECALL                         R32 R0 K19 ["OnHostEvent"]
      172 CALL                             R32 3 2
      173 LOADK                            R36 K21 ["UpdateBinding"]
      174 NEWCLOSURE                       R37 P28
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R2
      177 CAPTURE                          UPVAL U0
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          UPVAL U4
      180 CAPTURE                          UPVAL U9
      181 CAPTURE                          UPVAL U2
      182 NAMECALL                         R34 R0 K19 ["OnHostEvent"]
      184 CALL                             R34 3 2
      185 LOADNIL                          R36
      186 LOADNIL                          R37
      187 LOADNIL                          R38
      188 LOADNIL                          R39
      189 GETUPVAL                         R40 10
      190 CALL                             R40 0 1
      191 JUMPIFNOT                        R40 ; [+18]
      192 LOADK                            R42 K22 ["DuplicateContext"]
      193 NEWCLOSURE                       R43 P29
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R2
      196 NAMECALL                         R40 R0 K19 ["OnHostEvent"]
      198 CALL                             R40 3 2
      199 MOVE                             R36 R40
      200 MOVE                             R37 R41
      201 LOADK                            R42 K23 ["DuplicateAction"]
      202 NEWCLOSURE                       R43 P30
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R2
      205 NAMECALL                         R40 R0 K19 ["OnHostEvent"]
      207 CALL                             R40 3 2
      208 MOVE                             R38 R40
      209 MOVE                             R39 R41
      210 NEWCLOSURE                       R40 P31
      211 CAPTURE                          VAL R2
      212 NEWCLOSURE                       R41 P32
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R27
      215 CAPTURE                          VAL R0
      216 CAPTURE                          UPVAL U2
      217 CAPTURE                          UPVAL U7
      218 LOADK                            R44 K24 ["RequestAsync"]
      219 NEWCLOSURE                       R45 P33
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R41
      222 NAMECALL                         R42 R0 K19 ["OnHostEvent"]
      224 CALL                             R42 3 2
      225 NEWCLOSURE                       R44 P34
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R29
      228 CAPTURE                          VAL R43
      229 CAPTURE                          VAL R31
      230 CAPTURE                          VAL R33
      231 CAPTURE                          VAL R35
      232 CAPTURE                          UPVAL U10
      233 CAPTURE                          REF R37
      234 CAPTURE                          REF R39
      235 CAPTURE                          VAL R15
      236 NAMECALL                         R45 R0 K25 ["IsHost"]
      238 CALL                             R45 1 1
      239 JUMPIFNOT                        R45 ; [+2]
      240 MOVE                             R45 R41
      241 CALL                             R45 0 0
      242 NEWCLOSURE                       R45 P35
      243 CAPTURE                          VAL R44
      244 CAPTURE                          VAL R2
      245 DUPTABLE                         R46 K29 [{"destroy", "Request", "GetContextsAsync", "UpdateContext", "UpdateAction", "UpdateBinding", "DuplicateContext", "DuplicateAction"}]
      246 SETTABLEKS                       R45 R46 K26 ["destroy"]
      248 SETTABLEKS                       R42 R46 K27 ["Request"]
      250 SETTABLEKS                       R28 R46 K28 ["GetContextsAsync"]
      252 SETTABLEKS                       R30 R46 K18 ["UpdateContext"]
      254 SETTABLEKS                       R32 R46 K20 ["UpdateAction"]
      256 SETTABLEKS                       R34 R46 K21 ["UpdateBinding"]
      258 SETTABLEKS                       R36 R46 K22 ["DuplicateContext"]
      260 SETTABLEKS                       R38 R46 K23 ["DuplicateAction"]
      262 CLOSEUPVALS                      R37
      263 RETURN                           R46 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["Selection"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["UniqueIdLookupService"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K9 [script]
       33 LOADK                            R7 K10 ["InputActionManager"]
       34 NAMECALL                         R5 R5 K11 ["FindFirstAncestor"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K13 [require]
       39 GETTABLEKS                       R7 R5 K14 ["Packages"]
       41 GETTABLEKS                       R7 R7 K15 ["DMNetworking"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K13 [require]
       46 GETTABLEKS                       R8 R5 K16 ["Src"]
       48 GETTABLEKS                       R8 R8 K17 ["Types"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K13 [require]
       53 GETTABLEKS                       R9 R5 K16 ["Src"]
       55 GETTABLEKS                       R9 R9 K18 ["Util"]
       57 GETTABLEKS                       R9 R9 K19 ["PropertyManager"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R5 K16 ["Src"]
       62 GETTABLEKS                       R9 R9 K18 ["Util"]
       64 GETIMPORT                        R10 K13 [require]
       66 GETTABLEKS                       R11 R9 K20 ["Cell"]
       68 GETTABLEKS                       R11 R11 K21 ["isValidBinding"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R5 K16 ["Src"]
       73 GETTABLEKS                       R11 R11 K22 ["Flags"]
       75 GETIMPORT                        R12 K13 [require]
       77 GETTABLEKS                       R13 R11 K23 ["getFFlagIAMUIModifier"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K13 [require]
       82 GETTABLEKS                       R14 R11 K24 ["getFFlagIAMDuplicate"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K13 [require]
       87 GETTABLEKS                       R15 R11 K25 ["getFFlagIAMLiveDebugging"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K13 [require]
       92 GETTABLEKS                       R16 R11 K26 ["getFFlagIAMUndoRedo"]
       94 CALL                             R15 1 1
       95 DUPCLOSURE                       R16 K27 [PROTO_69]
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R13
      107 RETURN                           R16 1
