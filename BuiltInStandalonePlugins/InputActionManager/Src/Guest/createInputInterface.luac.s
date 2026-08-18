PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 DUPCLOSURE                       R2 K2 [PROTO_4]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R4 K2 [PROTO_7]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R4 K2 [PROTO_10]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R4 K2 [PROTO_13]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 DUPCLOSURE                       R2 K2 [PROTO_16]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
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
       21 DUPCLOSURE                       R8 K6 [PROTO_19]
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
       37 DUPCLOSURE                       R3 K7 [PROTO_21]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_23:
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
       21 DUPCLOSURE                       R4 K5 [PROTO_13]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_24:
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
       21 DUPCLOSURE                       R4 K5 [PROTO_13]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+21]
        9 GETTABLEKS                       R2 R1 K2 ["uiButton"]
       11 JUMPIFNOT                        R2 ; [+17]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
       16 GETTABLE                         R4 R5 R3
       17 JUMPIFNOT                        R4 ; [+11]
       18 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       23 NAMECALL                         R5 R5 K5 ["Disconnect"]
       25 CALL                             R5 1 0
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K6 ["serializeBindingProperty"]
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R1
       34 MOVE                             R5 R0
       35 CALL                             R2 3 1
       36 JUMPIF                           R2 ; [+1]
       37 RETURN                           R0 0
       38 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+35]
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K1 ["UIButton"]
       43 JUMPIFNOT                        R2 ; [+30]
       44 GETUPVAL                         R2 1
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K1 ["UIButton"]
       48 LOADK                            R5 K7 ["Name"]
       49 NAMECALL                         R3 R3 K8 ["GetPropertyChangedSignal"]
       51 CALL                             R3 2 1
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 NAMECALL                         R3 R3 K9 ["Connect"]
       60 CALL                             R3 2 1
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
       64 GETTABLE                         R4 R5 R2
       65 JUMPIF                           R4 ; [+6]
       66 NEWTABLE                         R4 0 0
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
       71 SETTABLE                         R4 R5 R2
       72 SETTABLEKS                       R3 R4 K4 ["BindingUIButtonNameChanged"]
       74 GETUPVAL                         R2 1
       75 GETIMPORT                        R3 K11 [xpcall]
       77 NEWCLOSURE                       R4 P1
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 DUPCLOSURE                       R5 K12 [PROTO_13]
       83 CALL                             R3 2 0
       84 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K1 ["UIButton"]
        7 JUMPIFNOT                        R2 ; [+28]
        8 GETTABLEKS                       R2 R0 K1 ["UIButton"]
       10 LOADK                            R4 K2 ["Name"]
       11 NAMECALL                         R2 R2 K3 ["GetPropertyChangedSignal"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 NAMECALL                         R2 R2 K4 ["Connect"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K5 ["connectionsByUuid"]
       26 GETTABLE                         R3 R4 R1
       27 JUMPIF                           R3 ; [+6]
       28 NEWTABLE                         R3 0 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K5 ["connectionsByUuid"]
       33 SETTABLE                         R3 R4 R1
       34 SETTABLEKS                       R2 R3 K6 ["BindingUIButtonNameChanged"]
       36 GETTABLEKS                       R2 R0 K7 ["Changed"]
       38 NEWCLOSURE                       R4 P1
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U3
       44 NAMECALL                         R2 R2 K4 ["Connect"]
       46 CALL                             R2 2 1
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K5 ["connectionsByUuid"]
       50 GETTABLE                         R3 R4 R1
       51 JUMPIF                           R3 ; [+6]
       52 NEWTABLE                         R3 0 0
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K5 ["connectionsByUuid"]
       57 SETTABLE                         R3 R4 R1
       58 SETTABLEKS                       R2 R3 K8 ["BindingPropertyChanged"]
       60 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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
       42 DUPCLOSURE                       R4 K6 [PROTO_13]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

PROTO_29:
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
       82 DUPCLOSURE                       R14 K18 [PROTO_13]
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
      145 DUPCLOSURE                       R13 K18 [PROTO_13]
      146 CALL                             R11 2 0
      147 FORGLOOP                         R5 2 ; [-55]
      149 SETTABLEKS                       R4 R2 K12 ["bindings"]
      151 RETURN                           R0 0

PROTO_30:
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
       16 DUPCLOSURE                       R4 K3 [PROTO_10]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_31:
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
       22 DUPCLOSURE                       R5 K4 [PROTO_10]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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
       77 DUPCLOSURE                       R13 K20 [PROTO_13]
       78 CALL                             R11 2 0
       79 FORGLOOP                         R4 2 ; [-56]
       81 GETUPVAL                         R4 5
       82 MOVE                             R5 R0
       83 CALL                             R4 1 0
       84 RETURN                           R2 1

PROTO_34:
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
       53 DUPCLOSURE                       R10 K8 [PROTO_13]
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
       94 DUPCLOSURE                       R4 K10 [PROTO_10]
       95 CALL                             R2 2 0
       96 RETURN                           R0 0

PROTO_35:
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
       78 DUPCLOSURE                       R15 K15 [PROTO_10]
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

PROTO_36:
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
       16 DUPCLOSURE                       R4 K3 [PROTO_7]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_37:
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
       22 DUPCLOSURE                       R5 K4 [PROTO_7]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
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
       78 DUPCLOSURE                       R12 K22 [PROTO_10]
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

PROTO_40:
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
       75 DUPCLOSURE                       R5 K11 [PROTO_7]
       76 CALL                             R3 2 0
       77 GETIMPORT                        R3 K10 [xpcall]
       79 NEWCLOSURE                       R4 P2
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U2
       82 DUPCLOSURE                       R5 K12 [PROTO_16]
       83 CALL                             R3 2 0
       84 RETURN                           R0 0

PROTO_41:
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
       60 DUPCLOSURE                       R11 K14 [PROTO_7]
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
       81 DUPCLOSURE                       R4 K15 [PROTO_16]
       82 CALL                             R2 2 0
       83 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["contextOrder"]
        3 RETURN                           R1 1

PROTO_43:
        0 GETTABLEKS                       R2 R1 K0 ["context"]
        2 JUMPIF                           R2 ; [+14]
        3 GETTABLEKS                       R2 R1 K1 ["uuid"]
        5 JUMPIFNOT                        R2 ; [+11]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["inputContextInstances"]
        9 GETTABLEKS                       R4 R1 K1 ["uuid"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+3]
       13 NAMECALL                         R3 R2 K3 ["Destroy"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K0 ["context"]
       19 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       21 LOADK                            R4 K4 ["Context is required"]
       22 GETIMPORT                        R2 K6 [assert]
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R2 R1 K1 ["uuid"]
       27 JUMPIFNOT                        R2 ; [+15]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K2 ["inputContextInstances"]
       31 GETTABLEKS                       R4 R1 K1 ["uuid"]
       33 GETTABLE                         R2 R3 R4
       34 JUMPIFNOT                        R2 ; [+55]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K7 ["deserializeContext"]
       38 GETTABLEKS                       R4 R1 K0 ["context"]
       40 MOVE                             R5 R2
       41 CALL                             R3 2 0
       42 RETURN                           R0 0
       43 GETTABLEKS                       R3 R1 K0 ["context"]
       45 GETTABLEKS                       R3 R3 K8 ["name"]
       47 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       49 LOADK                            R4 K9 ["When creating a new context, a name must be defined."]
       50 GETIMPORT                        R2 K6 [assert]
       52 CALL                             R2 2 0
       53 GETIMPORT                        R2 K12 [Instance.new]
       55 LOADK                            R3 K13 ["InputContext"]
       56 CALL                             R2 1 1
       57 GETUPVAL                         R3 2
       58 LOADK                            R5 K14 ["Inputs"]
       59 NAMECALL                         R3 R3 K15 ["FindFirstChild"]
       61 CALL                             R3 2 1
       62 JUMPIF                           R3 ; [+18]
       63 GETIMPORT                        R4 K12 [Instance.new]
       65 LOADK                            R5 K16 ["Folder"]
       66 CALL                             R4 1 1
       67 MOVE                             R3 R4
       68 FASTCALL2K                       ASSERT R3 K17 ; [+5]
       70 MOVE                             R5 R3
       71 LOADK                            R6 K17 ["Inputs folder not found"]
       72 GETIMPORT                        R4 K6 [assert]
       74 CALL                             R4 2 0
       75 LOADK                            R4 K14 ["Inputs"]
       76 SETTABLEKS                       R4 R3 K18 ["Name"]
       78 GETUPVAL                         R4 2
       79 SETTABLEKS                       R4 R3 K19 ["Parent"]
       81 SETTABLEKS                       R3 R2 K19 ["Parent"]
       83 GETUPVAL                         R4 1
       84 GETTABLEKS                       R4 R4 K7 ["deserializeContext"]
       86 GETTABLEKS                       R5 R1 K0 ["context"]
       88 MOVE                             R6 R2
       89 CALL                             R4 2 0
       90 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R2 R1 K0 ["action"]
        2 JUMPIF                           R2 ; [+14]
        3 GETTABLEKS                       R2 R1 K1 ["uuid"]
        5 JUMPIFNOT                        R2 ; [+11]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["inputActionInstances"]
        9 GETTABLEKS                       R4 R1 K1 ["uuid"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+3]
       13 NAMECALL                         R3 R2 K3 ["Destroy"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K0 ["action"]
       19 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       21 LOADK                            R4 K4 ["Action is required"]
       22 GETIMPORT                        R2 K6 [assert]
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R2 R1 K1 ["uuid"]
       27 JUMPIFNOT                        R2 ; [+15]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K2 ["inputActionInstances"]
       31 GETTABLEKS                       R4 R1 K1 ["uuid"]
       33 GETTABLE                         R2 R3 R4
       34 JUMPIFNOT                        R2 ; [+85]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K7 ["deserializeAction"]
       38 GETTABLEKS                       R4 R1 K0 ["action"]
       40 MOVE                             R5 R2
       41 CALL                             R3 2 0
       42 RETURN                           R0 0
       43 GETTABLEKS                       R3 R1 K0 ["action"]
       45 GETTABLEKS                       R3 R3 K8 ["name"]
       47 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       49 LOADK                            R4 K9 ["When creating a new action, a name must be defined."]
       50 GETIMPORT                        R2 K6 [assert]
       52 CALL                             R2 2 0
       53 GETTABLEKS                       R3 R1 K0 ["action"]
       55 GETTABLEKS                       R3 R3 K10 ["parentUuid"]
       57 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       59 LOADK                            R4 K11 ["When creating a new action, a parent must be defined."]
       60 GETIMPORT                        R2 K6 [assert]
       62 CALL                             R2 2 0
       63 GETTABLEKS                       R2 R1 K0 ["action"]
       65 GETTABLEKS                       R2 R2 K10 ["parentUuid"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K12 ["inputContextInstances"]
       70 GETTABLE                         R3 R4 R2
       71 JUMPIF                           R3 ; [+1]
       72 RETURN                           R0 0
       73 GETIMPORT                        R4 K15 [Instance.new]
       75 LOADK                            R5 K16 ["InputAction"]
       76 CALL                             R4 1 1
       77 GETTABLEKS                       R5 R3 K17 ["Parent"]
       79 JUMPIF                           R5 ; [+31]
       80 GETTABLEKS                       R5 R3 K18 ["Name"]
       82 JUMPIFNOTEQKS                    R5 K19 ["Default"] ; [+28]
       84 GETUPVAL                         R5 2
       85 LOADK                            R7 K20 ["Inputs"]
       86 NAMECALL                         R5 R5 K21 ["FindFirstChild"]
       88 CALL                             R5 2 1
       89 JUMPIF                           R5 ; [+18]
       90 GETIMPORT                        R6 K15 [Instance.new]
       92 LOADK                            R7 K22 ["Folder"]
       93 CALL                             R6 1 1
       94 MOVE                             R5 R6
       95 FASTCALL2K                       ASSERT R5 K23 ; [+5]
       97 MOVE                             R7 R5
       98 LOADK                            R8 K23 ["Inputs folder not found"]
       99 GETIMPORT                        R6 K6 [assert]
      101 CALL                             R6 2 0
      102 LOADK                            R6 K20 ["Inputs"]
      103 SETTABLEKS                       R6 R5 K18 ["Name"]
      105 GETUPVAL                         R6 2
      106 SETTABLEKS                       R6 R5 K17 ["Parent"]
      108 SETTABLEKS                       R5 R4 K17 ["Parent"]
      110 JUMP                             ; [+2]
      111 SETTABLEKS                       R3 R4 K17 ["Parent"]
      113 GETUPVAL                         R5 1
      114 GETTABLEKS                       R5 R5 K7 ["deserializeAction"]
      116 GETTABLEKS                       R6 R1 K0 ["action"]
      118 MOVE                             R7 R4
      119 CALL                             R5 2 0
      120 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R2 R1 K0 ["binding"]
        2 JUMPIF                           R2 ; [+14]
        3 GETTABLEKS                       R2 R1 K1 ["uuid"]
        5 JUMPIFNOT                        R2 ; [+11]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["inputBindingInstances"]
        9 GETTABLEKS                       R4 R1 K1 ["uuid"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+3]
       13 NAMECALL                         R3 R2 K3 ["Destroy"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K0 ["binding"]
       19 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       21 LOADK                            R4 K4 ["Binding is required"]
       22 GETIMPORT                        R2 K6 [assert]
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R2 R1 K1 ["uuid"]
       27 JUMPIFNOT                        R2 ; [+62]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K2 ["inputBindingInstances"]
       31 GETTABLEKS                       R4 R1 K1 ["uuid"]
       33 GETTABLE                         R2 R3 R4
       34 JUMPIFNOT                        R2 ; [+7]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K7 ["deserializeBinding"]
       38 GETTABLEKS                       R4 R1 K0 ["binding"]
       40 MOVE                             R5 R2
       41 CALL                             R3 2 0
       42 GETTABLEKS                       R4 R1 K0 ["binding"]
       44 GETTABLEKS                       R4 R4 K8 ["uiButton"]
       46 JUMPIFNOT                        R4 ; [+8]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K9 ["button"]
       50 JUMPIFNOT                        R4 ; [+4]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K9 ["button"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R3
       56 JUMPIF                           R3 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R4 R1 K0 ["binding"]
       60 GETTABLEKS                       R4 R4 K8 ["uiButton"]
       62 JUMPIFNOT                        R4 ; [+24]
       63 GETTABLEKS                       R4 R1 K0 ["binding"]
       65 GETTABLEKS                       R4 R4 K8 ["uiButton"]
       67 GETTABLEKS                       R4 R4 K1 ["uuid"]
       69 GETUPVAL                         R5 2
       70 MOVE                             R7 R3
       71 NAMECALL                         R5 R5 K10 ["GetOrCreateUniqueId"]
       73 CALL                             R5 2 1
       74 JUMPIFEQ                         R4 R5 ; [+12]
       76 GETTABLEKS                       R4 R1 K0 ["binding"]
       78 GETTABLEKS                       R4 R4 K8 ["uiButton"]
       80 GETTABLEKS                       R4 R4 K1 ["uuid"]
       82 JUMPIF                           R4 ; [+3]
       83 NAMECALL                         R4 R2 K3 ["Destroy"]
       85 CALL                             R4 1 0
       86 RETURN                           R0 0
       87 SETTABLEKS                       R3 R2 K11 ["UIButton"]
       89 RETURN                           R0 0
       90 GETTABLEKS                       R3 R1 K0 ["binding"]
       92 GETTABLEKS                       R3 R3 K12 ["name"]
       94 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       96 LOADK                            R4 K13 ["When creating a new binding, a name must be defined."]
       97 GETIMPORT                        R2 K6 [assert]
       99 CALL                             R2 2 0
      100 GETTABLEKS                       R3 R1 K0 ["binding"]
      102 GETTABLEKS                       R3 R3 K14 ["parentUuid"]
      104 FASTCALL2K                       ASSERT R3 K15 ; [+4]
      106 LOADK                            R4 K15 ["When creating a new binding, a parent must be defined."]
      107 GETIMPORT                        R2 K6 [assert]
      109 CALL                             R2 2 0
      110 GETTABLEKS                       R2 R1 K0 ["binding"]
      112 GETTABLEKS                       R2 R2 K14 ["parentUuid"]
      114 GETUPVAL                         R4 0
      115 GETTABLEKS                       R4 R4 K16 ["inputActionInstances"]
      117 GETTABLE                         R3 R4 R2
      118 JUMPIF                           R3 ; [+1]
      119 RETURN                           R0 0
      120 GETTABLEKS                       R5 R1 K0 ["binding"]
      122 GETTABLEKS                       R5 R5 K8 ["uiButton"]
      124 JUMPIFNOT                        R5 ; [+8]
      125 GETUPVAL                         R5 0
      126 GETTABLEKS                       R5 R5 K9 ["button"]
      128 JUMPIFNOT                        R5 ; [+4]
      129 GETUPVAL                         R4 0
      130 GETTABLEKS                       R4 R4 K9 ["button"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R4
      134 GETTABLEKS                       R5 R1 K0 ["binding"]
      136 GETTABLEKS                       R5 R5 K8 ["uiButton"]
      138 JUMPIFNOT                        R5 ; [+15]
      139 JUMPIFNOT                        R4 ; [+14]
      140 GETTABLEKS                       R5 R1 K0 ["binding"]
      142 GETTABLEKS                       R5 R5 K8 ["uiButton"]
      144 GETTABLEKS                       R5 R5 K1 ["uuid"]
      146 GETUPVAL                         R6 2
      147 MOVE                             R8 R4
      148 NAMECALL                         R6 R6 K10 ["GetOrCreateUniqueId"]
      150 CALL                             R6 2 1
      151 JUMPIFEQ                         R5 R6 ; [+2]
      153 RETURN                           R0 0
      154 GETIMPORT                        R5 K19 [Instance.new]
      156 LOADK                            R6 K20 ["InputBinding"]
      157 CALL                             R5 1 1
      158 SETTABLEKS                       R3 R5 K21 ["Parent"]
      160 JUMPIFNOT                        R4 ; [+2]
      161 SETTABLEKS                       R4 R5 K11 ["UIButton"]
      163 GETUPVAL                         R6 1
      164 GETTABLEKS                       R6 R6 K7 ["deserializeBinding"]
      166 GETTABLEKS                       R7 R1 K0 ["binding"]
      168 MOVE                             R8 R5
      169 CALL                             R6 2 0
      170 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["inputContextInstances"]
        3 GETTABLEKS                       R4 R1 K1 ["uuid"]
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFNOT                        R2 ; [+7]
        7 NAMECALL                         R3 R2 K2 ["Clone"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R2 K3 ["Parent"]
       12 SETTABLEKS                       R4 R3 K3 ["Parent"]
       14 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["inputActionInstances"]
        3 GETTABLEKS                       R4 R1 K1 ["uuid"]
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETTABLEKS                       R3 R2 K2 ["Parent"]
        9 JUMPIFNOT                        R3 ; [+7]
       10 NAMECALL                         R3 R2 K3 ["Clone"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R2 K2 ["Parent"]
       15 SETTABLEKS                       R4 R3 K2 ["Parent"]
       17 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_50:
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
       15 DUPCLOSURE                       R2 K3 [PROTO_4]
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 DUPTABLE                         R1 K12 [{[1] = , ["inputContexts"], ["inputActions"], ["inputBindings"], ["inputContextInstances"], ["inputActionInstances"], ["inputBindingInstances"], ["contextOrder"], ["connectionsByUuid"], ["initialized"] = False}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K2 ["inputContexts"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K3 ["inputActions"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K4 ["inputBindings"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K5 ["inputContextInstances"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K6 ["inputActionInstances"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K7 ["inputBindingInstances"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R1 K8 ["contextOrder"]
       29 NEWTABLE                         R2 0 0
       31 SETTABLEKS                       R2 R1 K9 ["connectionsByUuid"]
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          VAL R1
       35 NEWCLOSURE                       R3 P1
       36 CAPTURE                          VAL R1
       37 NEWCLOSURE                       R4 P2
       38 CAPTURE                          VAL R1
       39 NEWCLOSURE                       R5 P3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 NEWCLOSURE                       R6 P4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R0
       45 NEWCLOSURE                       R7 P5
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R0
       48 NEWCLOSURE                       R8 P6
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 NEWCLOSURE                       R9 P7
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 NEWCLOSURE                       R10 P8
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U1
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K13 ["SelectionChanged"]
       62 MOVE                             R13 R10
       63 NAMECALL                         R11 R11 K14 ["Connect"]
       65 CALL                             R11 2 1
       66 NEWCLOSURE                       R12 P9
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R0
       71 NEWCLOSURE                       R13 P10
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R12
       76 NEWCLOSURE                       R14 P11
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R0
       79 NEWCLOSURE                       R15 P12
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R0
       85 NEWCLOSURE                       R16 P13
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U1
       91 NEWCLOSURE                       R17 P14
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R16
       98 NEWCLOSURE                       R18 P15
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R0
      101 NEWCLOSURE                       R19 P16
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R17
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R18
      107 NEWCLOSURE                       R20 P17
      108 CAPTURE                          UPVAL U2
      109 CAPTURE                          VAL R19
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U1
      113 NEWCLOSURE                       R21 P18
      114 CAPTURE                          UPVAL U2
      115 CAPTURE                          UPVAL U1
      116 CAPTURE                          UPVAL U3
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R20
      121 NEWCLOSURE                       R22 P19
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R0
      125 NEWCLOSURE                       R23 P20
      126 CAPTURE                          VAL R1
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          VAL R21
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R22
      132 LOADK                            R26 K15 ["GetContexts"]
      133 NEWCLOSURE                       R27 P21
      134 CAPTURE                          VAL R1
      135 NAMECALL                         R24 R0 K16 ["OnHostInvokeAsync"]
      137 CALL                             R24 3 2
      138 LOADK                            R28 K17 ["UpdateContext"]
      139 NEWCLOSURE                       R29 P22
      140 CAPTURE                          VAL R1
      141 CAPTURE                          UPVAL U1
      142 CAPTURE                          UPVAL U4
      143 NAMECALL                         R26 R0 K18 ["OnHostEvent"]
      145 CALL                             R26 3 2
      146 LOADK                            R30 K19 ["UpdateAction"]
      147 NEWCLOSURE                       R31 P23
      148 CAPTURE                          VAL R1
      149 CAPTURE                          UPVAL U1
      150 CAPTURE                          UPVAL U4
      151 NAMECALL                         R28 R0 K18 ["OnHostEvent"]
      153 CALL                             R28 3 2
      154 LOADK                            R32 K20 ["UpdateBinding"]
      155 NEWCLOSURE                       R33 P24
      156 CAPTURE                          VAL R1
      157 CAPTURE                          UPVAL U1
      158 CAPTURE                          UPVAL U2
      159 NAMECALL                         R30 R0 K18 ["OnHostEvent"]
      161 CALL                             R30 3 2
      162 LOADNIL                          R32
      163 LOADNIL                          R33
      164 LOADNIL                          R34
      165 LOADNIL                          R35
      166 GETUPVAL                         R36 5
      167 CALL                             R36 0 1
      168 JUMPIFNOT                        R36 ; [+16]
      169 LOADK                            R38 K21 ["DuplicateContext"]
      170 NEWCLOSURE                       R39 P25
      171 CAPTURE                          VAL R1
      172 NAMECALL                         R36 R0 K18 ["OnHostEvent"]
      174 CALL                             R36 3 2
      175 MOVE                             R32 R36
      176 MOVE                             R33 R37
      177 LOADK                            R38 K22 ["DuplicateAction"]
      178 NEWCLOSURE                       R39 P26
      179 CAPTURE                          VAL R1
      180 NAMECALL                         R36 R0 K18 ["OnHostEvent"]
      182 CALL                             R36 3 2
      183 MOVE                             R34 R36
      184 MOVE                             R35 R37
      185 NEWCLOSURE                       R36 P27
      186 CAPTURE                          VAL R1
      187 NEWCLOSURE                       R37 P28
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R23
      190 CAPTURE                          VAL R0
      191 CAPTURE                          UPVAL U2
      192 CAPTURE                          UPVAL U3
      193 LOADK                            R40 K23 ["RequestAsync"]
      194 NEWCLOSURE                       R41 P29
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R37
      197 NAMECALL                         R38 R0 K18 ["OnHostEvent"]
      199 CALL                             R38 3 2
      200 NEWCLOSURE                       R40 P30
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R39
      204 CAPTURE                          VAL R27
      205 CAPTURE                          VAL R29
      206 CAPTURE                          VAL R31
      207 CAPTURE                          UPVAL U5
      208 CAPTURE                          REF R33
      209 CAPTURE                          REF R35
      210 CAPTURE                          VAL R11
      211 NAMECALL                         R41 R0 K24 ["IsHost"]
      213 CALL                             R41 1 1
      214 JUMPIFNOT                        R41 ; [+2]
      215 MOVE                             R41 R37
      216 CALL                             R41 0 0
      217 NEWCLOSURE                       R41 P31
      218 CAPTURE                          VAL R40
      219 CAPTURE                          VAL R1
      220 DUPTABLE                         R42 K28 [{"destroy", "Request", "GetContextsAsync", "UpdateContext", "UpdateAction", "UpdateBinding", "DuplicateContext", "DuplicateAction"}]
      221 SETTABLEKS                       R41 R42 K25 ["destroy"]
      223 SETTABLEKS                       R38 R42 K26 ["Request"]
      225 SETTABLEKS                       R24 R42 K27 ["GetContextsAsync"]
      227 SETTABLEKS                       R26 R42 K17 ["UpdateContext"]
      229 SETTABLEKS                       R28 R42 K19 ["UpdateAction"]
      231 SETTABLEKS                       R30 R42 K20 ["UpdateBinding"]
      233 SETTABLEKS                       R32 R42 K21 ["DuplicateContext"]
      235 SETTABLEKS                       R34 R42 K22 ["DuplicateAction"]
      237 CLOSEUPVALS                      R33
      238 RETURN                           R42 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Selection"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["UniqueIdLookupService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["InputActionManager"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["DMNetworking"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R4 K15 ["Src"]
       42 GETTABLEKS                       R7 R7 K16 ["Types"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R8 R4 K15 ["Src"]
       49 GETTABLEKS                       R8 R8 K17 ["Util"]
       51 GETTABLEKS                       R8 R8 K18 ["PropertyManager"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R4 K15 ["Src"]
       56 GETTABLEKS                       R8 R8 K19 ["Flags"]
       58 GETIMPORT                        R9 K12 [require]
       60 GETTABLEKS                       R10 R8 K20 ["getFFlagIAMDuplicate"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K21 [PROTO_54]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R9
       70 RETURN                           R10 1
