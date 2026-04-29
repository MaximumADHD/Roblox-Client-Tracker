PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["connectionsByUuid"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K1 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["connectionsByUuid"]
        3 GETTABLE                         R3 R4 R1
        4 JUMPIF                           R3 ; [+6]
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["connectionsByUuid"]
       10 SETTABLE                         R3 R4 R1
       11 SETTABLE                         R2 R3 R0
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Initialized"]
        2 LOADNIL                          R3
        3 GETIMPORT                        R4 K3 [table.clone]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K4 ["inputContexts"]
        8 CALL                             R4 1 1
        9 GETIMPORT                        R5 K3 [table.clone]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K5 ["inputActions"]
       14 CALL                             R5 1 1
       15 GETIMPORT                        R6 K3 [table.clone]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K6 ["inputBindings"]
       20 CALL                             R6 1 1
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K7 ["contextOrder"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["initialized"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["initialized"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["initialized"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["initialized"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["ContextOrderChanged"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["contextOrder"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["serializeBindingProperty"]
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["serializeBindingProperty"]
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

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["inputBindings"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+21]
        9 GETTABLEKS                       R2 R1 K2 ["uiButton"]
       11 JUMPIFNOT                        R2 ; [+17]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K3 ["connectionsByUuid"]
       16 GETTABLE                         R4 R5 R3
       17 JUMPIFNOT                        R4 ; [+11]
       18 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       23 NAMECALL                         R5 R5 K5 ["Disconnect"]
       25 CALL                             R5 1 0
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K6 ["serializeBindingProperty"]
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R1
       34 MOVE                             R5 R0
       35 CALL                             R2 3 1
       36 JUMPIF                           R2 ; [+1]
       37 RETURN                           R0 0
       38 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+35]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R2 R3 K1 ["UIButton"]
       43 JUMPIFNOT                        R2 ; [+30]
       44 GETUPVAL                         R2 1
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R3 R4 K1 ["UIButton"]
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
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R5 R6 K3 ["connectionsByUuid"]
       64 GETTABLE                         R4 R5 R2
       65 JUMPIF                           R4 ; [+6]
       66 NEWTABLE                         R4 0 0
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R5 R6 K3 ["connectionsByUuid"]
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

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["UniqueId"]
        2 GETTABLEKS                       R2 R0 K1 ["UIButton"]
        4 JUMPIFNOT                        R2 ; [+28]
        5 GETTABLEKS                       R2 R0 K1 ["UIButton"]
        7 LOADK                            R4 K2 ["Name"]
        8 NAMECALL                         R2 R2 K3 ["GetPropertyChangedSignal"]
       10 CALL                             R2 2 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R2 R2 K4 ["Connect"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K5 ["connectionsByUuid"]
       23 GETTABLE                         R3 R4 R1
       24 JUMPIF                           R3 ; [+6]
       25 NEWTABLE                         R3 0 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K5 ["connectionsByUuid"]
       30 SETTABLE                         R3 R4 R1
       31 SETTABLEKS                       R2 R3 K6 ["BindingUIButtonNameChanged"]
       33 GETTABLEKS                       R2 R0 K7 ["Changed"]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U2
       41 NAMECALL                         R2 R2 K4 ["Connect"]
       43 CALL                             R2 2 1
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K5 ["connectionsByUuid"]
       47 GETTABLE                         R3 R4 R1
       48 JUMPIF                           R3 ; [+6]
       49 NEWTABLE                         R3 0 0
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R4 R5 K5 ["connectionsByUuid"]
       54 SETTABLE                         R3 R4 R1
       55 SETTABLEKS                       R2 R3 K8 ["BindingPropertyChanged"]
       57 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["UniqueId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["serializeBinding"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R1 R3 K2 ["parentUuid"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["inputBindings"]
       12 SETTABLE                         R3 R4 R2
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K4 ["inputBindingInstances"]
       16 SETTABLE                         R0 R4 R2
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R0
       19 CALL                             R4 1 0
       20 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K1 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K2 ["inputBindings"]
       22 GETTABLE                         R1 R2 R0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K2 ["inputBindings"]
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R2 R0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K3 ["inputBindingInstances"]
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

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["UniqueId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["inputActions"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 NEWTABLE                         R3 0 0
       10 NAMECALL                         R4 R0 K2 ["GetInputBindings"]
       12 CALL                             R4 1 3
       13 FORGPREP                         R4
       14 LOADK                            R12 K3 ["InputBinding"]
       15 NAMECALL                         R10 R8 K4 ["IsA"]
       17 CALL                             R10 2 1
       18 FASTCALL2K                       ASSERT R10 K5 ; [+4]
       20 LOADK                            R11 K5 ["Binding is not a InputBinding"]
       21 GETIMPORT                        R9 K7 [assert]
       23 CALL                             R9 2 0
       24 GETTABLEKS                       R9 R8 K0 ["UniqueId"]
       26 LOADB                            R10 1
       27 SETTABLE                         R10 R3 R9
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R11 R12 K8 ["inputBindings"]
       31 GETTABLE                         R10 R11 R9
       32 JUMPIF                           R10 ; [+42]
       33 GETTABLEKS                       R11 R8 K0 ["UniqueId"]
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R12 R13 K9 ["serializeBinding"]
       38 MOVE                             R13 R8
       39 CALL                             R12 1 1
       40 SETTABLEKS                       R1 R12 K10 ["parentUuid"]
       42 GETUPVAL                         R14 0
       43 GETTABLEKS                       R13 R14 K8 ["inputBindings"]
       45 SETTABLE                         R12 R13 R11
       46 GETUPVAL                         R14 0
       47 GETTABLEKS                       R13 R14 K11 ["inputBindingInstances"]
       49 SETTABLE                         R8 R13 R11
       50 GETUPVAL                         R13 2
       51 MOVE                             R14 R8
       52 CALL                             R13 1 0
       53 MOVE                             R10 R11
       54 GETTABLEKS                       R12 R2 K12 ["bindings"]
       56 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       58 MOVE                             R13 R10
       59 GETIMPORT                        R11 K15 [table.insert]
       61 CALL                             R11 2 0
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R12 R13 K8 ["inputBindings"]
       65 GETTABLE                         R11 R12 R10
       66 GETIMPORT                        R12 K17 [xpcall]
       68 NEWCLOSURE                       R13 P0
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R11
       73 DUPCLOSURE                       R14 K18 [PROTO_13]
       74 CALL                             R12 2 0
       75 FORGLOOP                         R4 2 ; [-62]
       77 NEWTABLE                         R4 0 0
       79 GETTABLEKS                       R5 R2 K12 ["bindings"]
       81 LOADNIL                          R6
       82 LOADNIL                          R7
       83 FORGPREP                         R5
       84 GETTABLE                         R10 R3 R9
       85 JUMPIFNOT                        R10 ; [+8]
       86 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       88 MOVE                             R11 R4
       89 MOVE                             R12 R9
       90 GETIMPORT                        R10 K15 [table.insert]
       92 CALL                             R10 2 0
       93 JUMP                             ; [+44]
       94 GETUPVAL                         R12 0
       95 GETTABLEKS                       R11 R12 K19 ["connectionsByUuid"]
       97 GETTABLE                         R10 R11 R9
       98 JUMPIFNOT                        R10 ; [+14]
       99 MOVE                             R11 R10
      100 LOADNIL                          R12
      101 LOADNIL                          R13
      102 FORGPREP                         R11
      103 NAMECALL                         R16 R15 K20 ["Disconnect"]
      105 CALL                             R16 1 0
      106 FORGLOOP                         R11 2 ; [-4]
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R11 R12 K19 ["connectionsByUuid"]
      111 LOADNIL                          R12
      112 SETTABLE                         R12 R11 R9
      113 GETUPVAL                         R12 0
      114 GETTABLEKS                       R11 R12 K8 ["inputBindings"]
      116 GETTABLE                         R10 R11 R9
      117 GETUPVAL                         R12 0
      118 GETTABLEKS                       R11 R12 K8 ["inputBindings"]
      120 LOADNIL                          R12
      121 SETTABLE                         R12 R11 R9
      122 GETUPVAL                         R12 0
      123 GETTABLEKS                       R11 R12 K11 ["inputBindingInstances"]
      125 LOADNIL                          R12
      126 SETTABLE                         R12 R11 R9
      127 JUMPIFNOT                        R10 ; [+10]
      128 GETIMPORT                        R11 K17 [xpcall]
      130 LOADNIL                          R13
      131 NEWCLOSURE                       R12 P0
      132 CAPTURE                          UPVAL U0
      133 CAPTURE                          UPVAL U3
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R13
      136 DUPCLOSURE                       R13 K18 [PROTO_13]
      137 CALL                             R11 2 0
      138 FORGLOOP                         R5 2 ; [-55]
      140 SETTABLEKS                       R4 R2 K12 ["bindings"]
      142 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R3 3
        5 GETTABLEKS                       R2 R3 K0 ["inputActions"]
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

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["inputActions"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["serializeActionProperty"]
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

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["UniqueId"]
        2 GETTABLEKS                       R2 R0 K1 ["InputBindingsChanged"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R2 R2 K2 ["Connect"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K3 ["connectionsByUuid"]
       16 GETTABLE                         R3 R4 R1
       17 JUMPIF                           R3 ; [+6]
       18 NEWTABLE                         R3 0 0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K3 ["connectionsByUuid"]
       23 SETTABLE                         R3 R4 R1
       24 SETTABLEKS                       R2 R3 K4 ["ActionBindingsChanged"]
       26 GETTABLEKS                       R2 R0 K5 ["Changed"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 NAMECALL                         R2 R2 K2 ["Connect"]
       36 CALL                             R2 2 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K3 ["connectionsByUuid"]
       40 GETTABLE                         R3 R4 R1
       41 JUMPIF                           R3 ; [+6]
       42 NEWTABLE                         R3 0 0
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K3 ["connectionsByUuid"]
       47 SETTABLE                         R3 R4 R1
       48 SETTABLEKS                       R2 R3 K6 ["ActionPropertyChanged"]
       50 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["UniqueId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["serializeAction"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R1 R3 K2 ["parentUuid"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["inputActions"]
       12 SETTABLE                         R3 R4 R2
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K4 ["inputActionInstances"]
       16 SETTABLE                         R0 R4 R2
       17 NAMECALL                         R4 R0 K5 ["GetInputBindings"]
       19 CALL                             R4 1 3
       20 FORGPREP                         R4
       21 LOADK                            R12 K6 ["InputBinding"]
       22 NAMECALL                         R10 R8 K7 ["IsA"]
       24 CALL                             R10 2 1
       25 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       27 LOADK                            R11 K8 ["Binding is not a InputBinding"]
       28 GETIMPORT                        R9 K10 [assert]
       30 CALL                             R9 2 0
       31 GETTABLEKS                       R10 R8 K0 ["UniqueId"]
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R11 R12 K11 ["serializeBinding"]
       36 MOVE                             R12 R8
       37 CALL                             R11 1 1
       38 SETTABLEKS                       R2 R11 K2 ["parentUuid"]
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R12 R13 K12 ["inputBindings"]
       43 SETTABLE                         R11 R12 R10
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R12 R13 K13 ["inputBindingInstances"]
       47 SETTABLE                         R8 R12 R10
       48 GETUPVAL                         R12 2
       49 MOVE                             R13 R8
       50 CALL                             R12 1 0
       51 MOVE                             R9 R10
       52 GETTABLEKS                       R11 R3 K14 ["bindings"]
       54 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       56 MOVE                             R12 R9
       57 GETIMPORT                        R10 K17 [table.insert]
       59 CALL                             R10 2 0
       60 FORGLOOP                         R4 2 ; [-40]
       62 GETUPVAL                         R4 3
       63 MOVE                             R5 R0
       64 CALL                             R4 1 0
       65 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["inputActions"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["bindings"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
       14 GETTABLE                         R7 R8 R6
       15 JUMPIFNOT                        R7 ; [+14]
       16 MOVE                             R8 R7
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 NAMECALL                         R13 R12 K3 ["Disconnect"]
       22 CALL                             R13 1 0
       23 FORGLOOP                         R8 2 ; [-4]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
       28 LOADNIL                          R9
       29 SETTABLE                         R9 R8 R6
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K4 ["inputBindings"]
       33 GETTABLE                         R7 R8 R6
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K4 ["inputBindings"]
       37 LOADNIL                          R9
       38 SETTABLE                         R9 R8 R6
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R8 R9 K5 ["inputBindingInstances"]
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
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R3 R4 K2 ["connectionsByUuid"]
       60 GETTABLE                         R2 R3 R0
       61 JUMPIFNOT                        R2 ; [+14]
       62 MOVE                             R3 R2
       63 LOADNIL                          R4
       64 LOADNIL                          R5
       65 FORGPREP                         R3
       66 NAMECALL                         R8 R7 K3 ["Disconnect"]
       68 CALL                             R8 1 0
       69 FORGLOOP                         R3 2 ; [-4]
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R3 R4 K2 ["connectionsByUuid"]
       74 LOADNIL                          R4
       75 SETTABLE                         R4 R3 R0
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R2 R3 K0 ["inputActions"]
       79 LOADNIL                          R3
       80 SETTABLE                         R3 R2 R0
       81 GETUPVAL                         R3 0
       82 GETTABLEKS                       R2 R3 K9 ["inputActionInstances"]
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

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["UniqueId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["inputContexts"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R2 K2 ["actions"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 LOADB                            R9 1
       16 SETTABLE                         R9 R3 R8
       17 FORGLOOP                         R4 2 ; [-3]
       19 NEWTABLE                         R4 0 0
       21 NAMECALL                         R5 R0 K3 ["GetInputActions"]
       23 CALL                             R5 1 3
       24 FORGPREP                         R5
       25 LOADK                            R13 K4 ["InputAction"]
       26 NAMECALL                         R11 R9 K5 ["IsA"]
       28 CALL                             R11 2 1
       29 FASTCALL2K                       ASSERT R11 K6 ; [+4]
       31 LOADK                            R12 K6 ["Action is not a InputAction"]
       32 GETIMPORT                        R10 K8 [assert]
       34 CALL                             R10 2 0
       35 GETTABLEKS                       R10 R9 K0 ["UniqueId"]
       37 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       39 MOVE                             R12 R4
       40 MOVE                             R13 R10
       41 GETIMPORT                        R11 K11 [table.insert]
       43 CALL                             R11 2 0
       44 GETTABLE                         R11 R3 R10
       45 JUMPIFNOT                        R11 ; [+3]
       46 LOADNIL                          R11
       47 SETTABLE                         R11 R3 R10
       48 JUMP                             ; [+25]
       49 GETUPVAL                         R11 1
       50 MOVE                             R12 R9
       51 MOVE                             R13 R1
       52 CALL                             R11 2 1
       53 GETTABLEKS                       R13 R2 K2 ["actions"]
       55 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       57 MOVE                             R14 R11
       58 GETIMPORT                        R12 K11 [table.insert]
       60 CALL                             R12 2 0
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R13 R14 K12 ["inputActions"]
       64 GETTABLE                         R12 R13 R11
       65 GETIMPORT                        R13 K14 [xpcall]
       67 NEWCLOSURE                       R14 P0
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R12
       72 DUPCLOSURE                       R15 K15 [PROTO_10]
       73 CALL                             R13 2 0
       74 FORGLOOP                         R5 2 ; [-50]
       76 MOVE                             R5 R3
       77 LOADNIL                          R6
       78 LOADNIL                          R7
       79 FORGPREP                         R5
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R11 R12 K16 ["inputActionInstances"]
       83 GETTABLE                         R10 R11 R8
       84 JUMPIFNOT                        R10 ; [+12]
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R11 R12 K16 ["inputActionInstances"]
       88 GETTABLE                         R10 R11 R8
       89 LOADK                            R12 K17 ["InputContext"]
       90 NAMECALL                         R10 R10 K18 ["FindFirstAncestor"]
       92 CALL                             R10 2 1
       93 JUMPIF                           R10 ; [+3]
       94 GETUPVAL                         R10 3
       95 MOVE                             R11 R8
       96 CALL                             R10 1 0
       97 FORGLOOP                         R5 1 ; [-18]
       99 SETTABLEKS                       R4 R2 K2 ["actions"]
      101 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R3 3
        5 GETTABLEKS                       R2 R3 K0 ["inputContexts"]
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

PROTO_32:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["inputContexts"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["serializeContextProperty"]
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

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["UniqueId"]
        2 GETTABLEKS                       R2 R0 K1 ["InputActionsChanged"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R2 R2 K2 ["Connect"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K3 ["connectionsByUuid"]
       16 GETTABLE                         R3 R4 R1
       17 JUMPIF                           R3 ; [+6]
       18 NEWTABLE                         R3 0 0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K3 ["connectionsByUuid"]
       23 SETTABLE                         R3 R4 R1
       24 SETTABLEKS                       R2 R3 K4 ["ContextActionsChanged"]
       26 GETTABLEKS                       R2 R0 K5 ["Changed"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 NAMECALL                         R2 R2 K2 ["Connect"]
       36 CALL                             R2 2 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K3 ["connectionsByUuid"]
       40 GETTABLE                         R3 R4 R1
       41 JUMPIF                           R3 ; [+6]
       42 NEWTABLE                         R3 0 0
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K3 ["connectionsByUuid"]
       47 SETTABLE                         R3 R4 R1
       48 SETTABLEKS                       R2 R3 K6 ["ContextPropertyChanged"]
       50 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["UniqueId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["serializeContext"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R0 K2 ["Parent"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETTABLEKS                       R4 R0 K2 ["Parent"]
       12 GETTABLEKS                       R3 R4 K0 ["UniqueId"]
       14 JUMP                             ; [+3]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K0 ["UniqueId"]
       18 SETTABLEKS                       R3 R2 K3 ["parentUuid"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K4 ["inputContexts"]
       23 SETTABLE                         R2 R3 R1
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K5 ["inputContextInstances"]
       27 SETTABLE                         R0 R3 R1
       28 NAMECALL                         R3 R0 K6 ["GetInputActions"]
       30 CALL                             R3 1 3
       31 FORGPREP                         R3
       32 LOADK                            R11 K7 ["InputAction"]
       33 NAMECALL                         R9 R7 K8 ["IsA"]
       35 CALL                             R9 2 1
       36 FASTCALL2K                       ASSERT R9 K9 ; [+4]
       38 LOADK                            R10 K9 ["Action is not a InputAction"]
       39 GETIMPORT                        R8 K11 [assert]
       41 CALL                             R8 2 0
       42 GETUPVAL                         R8 3
       43 MOVE                             R9 R7
       44 MOVE                             R10 R1
       45 CALL                             R8 2 1
       46 GETTABLEKS                       R10 R2 K12 ["actions"]
       48 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       50 MOVE                             R11 R8
       51 GETIMPORT                        R9 K15 [table.insert]
       53 CALL                             R9 2 0
       54 FORGLOOP                         R3 2 ; [-23]
       56 GETUPVAL                         R3 4
       57 MOVE                             R4 R0
       58 CALL                             R3 1 0
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R4 R5 K16 ["contextOrder"]
       62 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       64 MOVE                             R5 R1
       65 GETIMPORT                        R3 K15 [table.insert]
       67 CALL                             R3 2 0
       68 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["inputContexts"]
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
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K2 ["connectionsByUuid"]
       19 GETTABLE                         R2 R3 R0
       20 JUMPIFNOT                        R2 ; [+14]
       21 MOVE                             R3 R2
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 NAMECALL                         R8 R7 K3 ["Disconnect"]
       27 CALL                             R8 1 0
       28 FORGLOOP                         R3 2 ; [-4]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K2 ["connectionsByUuid"]
       33 LOADNIL                          R4
       34 SETTABLE                         R4 R3 R0
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K0 ["inputContexts"]
       38 LOADNIL                          R3
       39 SETTABLE                         R3 R2 R0
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K4 ["inputContextInstances"]
       43 LOADNIL                          R3
       44 SETTABLE                         R3 R2 R0
       45 NEWTABLE                         R2 0 0
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R3 R6 K5 ["contextOrder"]
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

PROTO_36:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["contextOrder"]
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
       29 GETTABLEKS                       R7 R6 K7 ["UniqueId"]
       31 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       33 MOVE                             R9 R1
       34 MOVE                             R10 R7
       35 GETIMPORT                        R8 K10 [table.insert]
       37 CALL                             R8 2 0
       38 GETTABLE                         R8 R0 R7
       39 JUMPIFNOT                        R8 ; [+3]
       40 LOADNIL                          R8
       41 SETTABLE                         R8 R0 R7
       42 JUMP                             ; [+16]
       43 GETUPVAL                         R8 2
       44 MOVE                             R9 R6
       45 CALL                             R8 1 0
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K11 ["inputContexts"]
       49 GETTABLE                         R8 R9 R7
       50 GETIMPORT                        R9 K13 [xpcall]
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R8
       57 DUPCLOSURE                       R11 K14 [PROTO_7]
       58 CALL                             R9 2 0
       59 FORGLOOP                         R2 2 ; [-41]
       61 MOVE                             R2 R0
       62 LOADNIL                          R3
       63 LOADNIL                          R4
       64 FORGPREP                         R2
       65 GETUPVAL                         R7 4
       66 MOVE                             R8 R5
       67 CALL                             R7 1 0
       68 FORGLOOP                         R2 2 ; [-4]
       70 GETUPVAL                         R2 0
       71 SETTABLEKS                       R1 R2 K0 ["contextOrder"]
       73 GETIMPORT                        R2 K13 [xpcall]
       75 NEWCLOSURE                       R3 P2
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          UPVAL U3
       78 DUPCLOSURE                       R4 K15 [PROTO_16]
       79 CALL                             R2 2 0
       80 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["contextOrder"]
        3 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R2 R1 K0 ["context"]
        2 JUMPIF                           R2 ; [+8]
        3 GETTABLEKS                       R2 R1 K1 ["uuid"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R1 K1 ["uuid"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETTABLEKS                       R3 R1 K0 ["context"]
       13 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       15 LOADK                            R4 K2 ["Context is required"]
       16 GETIMPORT                        R2 K4 [assert]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R2 R1 K1 ["uuid"]
       21 JUMPIFNOT                        R2 ; [+15]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K5 ["inputContextInstances"]
       25 GETTABLEKS                       R4 R1 K1 ["uuid"]
       27 GETTABLE                         R2 R3 R4
       28 JUMPIFNOT                        R2 ; [+32]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R3 R4 K6 ["deserializeContext"]
       32 GETTABLEKS                       R4 R1 K0 ["context"]
       34 MOVE                             R5 R2
       35 CALL                             R3 2 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R4 R1 K0 ["context"]
       39 GETTABLEKS                       R3 R4 K7 ["name"]
       41 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       43 LOADK                            R4 K8 ["When creating a new context, a name must be defined."]
       44 GETIMPORT                        R2 K4 [assert]
       46 CALL                             R2 2 0
       47 GETIMPORT                        R2 K11 [Instance.new]
       49 LOADK                            R3 K12 ["InputContext"]
       50 CALL                             R2 1 1
       51 GETUPVAL                         R3 3
       52 SETTABLEKS                       R3 R2 K13 ["Parent"]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R3 R4 K6 ["deserializeContext"]
       57 GETTABLEKS                       R4 R1 K0 ["context"]
       59 MOVE                             R5 R2
       60 CALL                             R3 2 0
       61 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R1 K0 ["action"]
        2 JUMPIF                           R2 ; [+8]
        3 GETTABLEKS                       R2 R1 K1 ["uuid"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R1 K1 ["uuid"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETTABLEKS                       R3 R1 K0 ["action"]
       13 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       15 LOADK                            R4 K2 ["Action is required"]
       16 GETIMPORT                        R2 K4 [assert]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R2 R1 K1 ["uuid"]
       21 JUMPIFNOT                        R2 ; [+15]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K5 ["inputActionInstances"]
       25 GETTABLEKS                       R4 R1 K1 ["uuid"]
       27 GETTABLE                         R2 R3 R4
       28 JUMPIFNOT                        R2 ; [+51]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R3 R4 K6 ["deserializeAction"]
       32 GETTABLEKS                       R4 R1 K0 ["action"]
       34 MOVE                             R5 R2
       35 CALL                             R3 2 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R4 R1 K0 ["action"]
       39 GETTABLEKS                       R3 R4 K7 ["name"]
       41 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       43 LOADK                            R4 K8 ["When creating a new action, a name must be defined."]
       44 GETIMPORT                        R2 K4 [assert]
       46 CALL                             R2 2 0
       47 GETTABLEKS                       R4 R1 K0 ["action"]
       49 GETTABLEKS                       R3 R4 K9 ["parentUuid"]
       51 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       53 LOADK                            R4 K10 ["When creating a new action, a parent must be defined."]
       54 GETIMPORT                        R2 K4 [assert]
       56 CALL                             R2 2 0
       57 GETTABLEKS                       R3 R1 K0 ["action"]
       59 GETTABLEKS                       R2 R3 K9 ["parentUuid"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R4 R5 K11 ["inputContextInstances"]
       64 GETTABLE                         R3 R4 R2
       65 JUMPIF                           R3 ; [+1]
       66 RETURN                           R0 0
       67 GETIMPORT                        R4 K14 [Instance.new]
       69 LOADK                            R5 K15 ["InputAction"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R3 R4 K16 ["Parent"]
       73 GETUPVAL                         R6 2
       74 GETTABLEKS                       R5 R6 K6 ["deserializeAction"]
       76 GETTABLEKS                       R6 R1 K0 ["action"]
       78 MOVE                             R7 R4
       79 CALL                             R5 2 0
       80 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R2 R1 K0 ["binding"]
        2 JUMPIF                           R2 ; [+50]
        3 GETTABLEKS                       R2 R1 K1 ["uuid"]
        5 JUMPIFNOT                        R2 ; [+47]
        6 GETTABLEKS                       R2 R1 K1 ["uuid"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["connectionsByUuid"]
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOT                        R3 ; [+14]
       13 MOVE                             R4 R3
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 NAMECALL                         R9 R8 K3 ["Disconnect"]
       19 CALL                             R9 1 0
       20 FORGLOOP                         R4 2 ; [-4]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K2 ["connectionsByUuid"]
       25 LOADNIL                          R5
       26 SETTABLE                         R5 R4 R2
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K4 ["inputBindings"]
       30 GETTABLE                         R3 R4 R2
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K4 ["inputBindings"]
       34 LOADNIL                          R5
       35 SETTABLE                         R5 R4 R2
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K5 ["inputBindingInstances"]
       39 LOADNIL                          R5
       40 SETTABLE                         R5 R4 R2
       41 JUMPIFNOT                        R3 ; [+10]
       42 GETIMPORT                        R4 K7 [xpcall]
       44 LOADNIL                          R6
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 DUPCLOSURE                       R6 K8 [PROTO_13]
       51 CALL                             R4 2 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R3 R1 K0 ["binding"]
       55 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       57 LOADK                            R4 K9 ["Binding is required"]
       58 GETIMPORT                        R2 K11 [assert]
       60 CALL                             R2 2 0
       61 GETTABLEKS                       R2 R1 K1 ["uuid"]
       63 JUMPIFNOT                        R2 ; [+15]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R3 R4 K5 ["inputBindingInstances"]
       67 GETTABLEKS                       R4 R1 K1 ["uuid"]
       69 GETTABLE                         R2 R3 R4
       70 JUMPIFNOT                        R2 ; [+51]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R3 R4 K12 ["deserializeBinding"]
       74 GETTABLEKS                       R4 R1 K0 ["binding"]
       76 MOVE                             R5 R2
       77 CALL                             R3 2 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R4 R1 K0 ["binding"]
       81 GETTABLEKS                       R3 R4 K13 ["name"]
       83 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       85 LOADK                            R4 K14 ["When creating a new binding, a name must be defined."]
       86 GETIMPORT                        R2 K11 [assert]
       88 CALL                             R2 2 0
       89 GETTABLEKS                       R4 R1 K0 ["binding"]
       91 GETTABLEKS                       R3 R4 K15 ["parentUuid"]
       93 FASTCALL2K                       ASSERT R3 K16 ; [+4]
       95 LOADK                            R4 K16 ["When creating a new binding, a parent must be defined."]
       96 GETIMPORT                        R2 K11 [assert]
       98 CALL                             R2 2 0
       99 GETTABLEKS                       R3 R1 K0 ["binding"]
      101 GETTABLEKS                       R2 R3 K15 ["parentUuid"]
      103 GETUPVAL                         R5 0
      104 GETTABLEKS                       R4 R5 K17 ["inputActionInstances"]
      106 GETTABLE                         R3 R4 R2
      107 JUMPIF                           R3 ; [+1]
      108 RETURN                           R0 0
      109 GETIMPORT                        R4 K20 [Instance.new]
      111 LOADK                            R5 K21 ["InputBinding"]
      112 CALL                             R4 1 1
      113 SETTABLEKS                       R3 R4 K22 ["Parent"]
      115 GETUPVAL                         R6 2
      116 GETTABLEKS                       R5 R6 K12 ["deserializeBinding"]
      118 GETTABLEKS                       R6 R1 K0 ["binding"]
      120 MOVE                             R7 R4
      121 CALL                             R5 2 0
      122 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_43:
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
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R0 R1 K4 ["UniqueId"]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R1 R2 K5 ["InputContextsChanged"]
       23 NEWCLOSURE                       R3 P2
       24 CAPTURE                          UPVAL U1
       25 NAMECALL                         R1 R1 K6 ["Connect"]
       27 CALL                             R1 2 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K7 ["connectionsByUuid"]
       31 GETTABLE                         R2 R3 R0
       32 JUMPIF                           R2 ; [+6]
       33 NEWTABLE                         R2 0 0
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K7 ["connectionsByUuid"]
       38 SETTABLE                         R2 R3 R0
       39 SETTABLEKS                       R1 R2 K8 ["ContextsChanged"]
       41 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["connectionsByUuid"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K0 ["connectionsByUuid"]
        9 GETTABLE                         R6 R7 R4
       10 JUMPIFNOT                        R6 ; [+14]
       11 MOVE                             R7 R6
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 NAMECALL                         R12 R11 K1 ["Disconnect"]
       17 CALL                             R12 1 0
       18 FORGLOOP                         R7 2 ; [-4]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K0 ["connectionsByUuid"]
       23 LOADNIL                          R8
       24 SETTABLE                         R8 R7 R4
       25 FORGLOOP                         R1 2 ; [-20]
       27 GETIMPORT                        R1 K4 [table.clear]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
       32 CALL                             R1 1 0
       33 GETIMPORT                        R1 K4 [table.clear]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
       38 CALL                             R1 1 0
       39 GETIMPORT                        R1 K4 [table.clear]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R2 R3 K5 ["inputContexts"]
       44 CALL                             R1 1 0
       45 GETIMPORT                        R1 K4 [table.clear]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R2 R3 K6 ["inputActions"]
       50 CALL                             R1 1 0
       51 GETIMPORT                        R1 K4 [table.clear]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R2 R3 K7 ["inputBindings"]
       56 CALL                             R1 1 0
       57 GETIMPORT                        R1 K4 [table.clear]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R2 R3 K8 ["inputContextInstances"]
       62 CALL                             R1 1 0
       63 GETIMPORT                        R1 K4 [table.clear]
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R2 R3 K9 ["inputActionInstances"]
       68 CALL                             R1 1 0
       69 GETIMPORT                        R1 K4 [table.clear]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R2 R3 K10 ["inputBindingInstances"]
       74 CALL                             R1 1 0
       75 GETUPVAL                         R1 0
       76 NEWTABLE                         R2 0 0
       78 SETTABLEKS                       R2 R1 K11 ["contextOrder"]
       80 GETUPVAL                         R1 1
       81 CALL                             R1 0 0
       82 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
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
       51 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
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
       51 GETIMPORT                        R0 K4 [table.clear]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R1 R2 K5 ["inputContexts"]
       56 CALL                             R0 1 0
       57 GETIMPORT                        R0 K4 [table.clear]
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R1 R2 K6 ["inputActions"]
       62 CALL                             R0 1 0
       63 GETIMPORT                        R0 K4 [table.clear]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R1 R2 K7 ["inputBindings"]
       68 CALL                             R0 1 0
       69 GETIMPORT                        R0 K4 [table.clear]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R1 R2 K8 ["inputContextInstances"]
       74 CALL                             R0 1 0
       75 GETIMPORT                        R0 K4 [table.clear]
       77 GETUPVAL                         R2 0
       78 GETTABLEKS                       R1 R2 K9 ["inputActionInstances"]
       80 CALL                             R0 1 0
       81 GETIMPORT                        R0 K4 [table.clear]
       83 GETUPVAL                         R2 0
       84 GETTABLEKS                       R1 R2 K10 ["inputBindingInstances"]
       86 CALL                             R0 1 0
       87 GETUPVAL                         R0 0
       88 NEWTABLE                         R1 0 0
       90 SETTABLEKS                       R1 R0 K11 ["contextOrder"]
       92 RETURN                           R0 0

PROTO_47:
        0 DUPTABLE                         R1 K9 [{"inputContexts", "inputActions", "inputBindings", "inputContextInstances", "inputActionInstances", "inputBindingInstances", "contextOrder", "connectionsByUuid", "initialized"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["inputContexts"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["inputActions"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["inputBindings"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["inputContextInstances"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["inputActionInstances"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K5 ["inputBindingInstances"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R1 K6 ["contextOrder"]
       29 NEWTABLE                         R2 0 0
       31 SETTABLEKS                       R2 R1 K7 ["connectionsByUuid"]
       33 LOADB                            R2 0
       34 SETTABLEKS                       R2 R1 K8 ["initialized"]
       36 NEWCLOSURE                       R2 P0
       37 CAPTURE                          VAL R1
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          VAL R1
       40 NEWCLOSURE                       R4 P2
       41 CAPTURE                          VAL R1
       42 NEWCLOSURE                       R5 P3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 NEWCLOSURE                       R6 P4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R0
       48 NEWCLOSURE                       R7 P5
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 NEWCLOSURE                       R8 P6
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 NEWCLOSURE                       R9 P7
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R0
       57 NEWCLOSURE                       R10 P8
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R0
       61 NEWCLOSURE                       R11 P9
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R10
       65 NEWCLOSURE                       R12 P10
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R0
       68 NEWCLOSURE                       R13 P11
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R0
       73 NEWCLOSURE                       R14 P12
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U0
       78 NEWCLOSURE                       R15 P13
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R14
       83 NEWCLOSURE                       R16 P14
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R0
       86 NEWCLOSURE                       R17 P15
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R16
       91 NEWCLOSURE                       R18 P16
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U0
       96 NEWCLOSURE                       R19 P17
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          UPVAL U1
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R18
      102 NEWCLOSURE                       R20 P18
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R0
      106 NEWCLOSURE                       R21 P19
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          VAL R19
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R20
      112 LOADK                            R24 K10 ["GetContexts"]
      113 NEWCLOSURE                       R25 P20
      114 CAPTURE                          VAL R1
      115 NAMECALL                         R22 R0 K11 ["OnHostInvokeAsync"]
      117 CALL                             R22 3 2
      118 LOADK                            R26 K12 ["UpdateContext"]
      119 NEWCLOSURE                       R27 P21
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          UPVAL U2
      124 NAMECALL                         R24 R0 K13 ["OnHostEvent"]
      126 CALL                             R24 3 2
      127 LOADK                            R28 K14 ["UpdateAction"]
      128 NEWCLOSURE                       R29 P22
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R1
      131 CAPTURE                          UPVAL U0
      132 NAMECALL                         R26 R0 K13 ["OnHostEvent"]
      134 CALL                             R26 3 2
      135 LOADK                            R30 K15 ["UpdateBinding"]
      136 NEWCLOSURE                       R31 P23
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U0
      140 NAMECALL                         R28 R0 K13 ["OnHostEvent"]
      142 CALL                             R28 3 2
      143 NEWCLOSURE                       R30 P24
      144 CAPTURE                          VAL R1
      145 NEWCLOSURE                       R31 P25
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R0
      149 CAPTURE                          UPVAL U1
      150 LOADK                            R34 K16 ["RequestAsync"]
      151 NEWCLOSURE                       R35 P26
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R31
      154 NAMECALL                         R32 R0 K13 ["OnHostEvent"]
      156 CALL                             R32 3 2
      157 NEWCLOSURE                       R34 P27
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R33
      161 CAPTURE                          VAL R25
      162 CAPTURE                          VAL R27
      163 CAPTURE                          VAL R29
      164 NAMECALL                         R35 R0 K17 ["IsHost"]
      166 CALL                             R35 1 1
      167 JUMPIFNOT                        R35 ; [+2]
      168 MOVE                             R35 R31
      169 CALL                             R35 0 0
      170 NEWCLOSURE                       R35 P28
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R33
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R27
      176 CAPTURE                          VAL R29
      177 DUPTABLE                         R36 K21 [{"destroy", "Request", "GetContextsAsync", "UpdateContext", "UpdateAction", "UpdateBinding"}]
      178 SETTABLEKS                       R35 R36 K18 ["destroy"]
      180 SETTABLEKS                       R32 R36 K19 ["Request"]
      182 SETTABLEKS                       R22 R36 K20 ["GetContextsAsync"]
      184 SETTABLEKS                       R24 R36 K12 ["UpdateContext"]
      186 SETTABLEKS                       R26 R36 K14 ["UpdateAction"]
      188 SETTABLEKS                       R28 R36 K15 ["UpdateBinding"]
      190 RETURN                           R36 1

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
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["InputActionManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["DMNetworking"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R6 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R2 K13 ["Src"]
       37 GETTABLEKS                       R7 R8 K15 ["Util"]
       39 GETTABLEKS                       R6 R7 K16 ["PropertyManager"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K17 [PROTO_47]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 RETURN                           R6 1
