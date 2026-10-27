PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K1 ["IsUIDM"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+11]
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K2 ["EDIT_TIME_DATA_MODEL"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K0 ["current"]
       21 NAMECALL                         R0 R0 K3 ["FireEditableDM"]
       23 CALL                             R0 4 0
       24 GETUPVAL                         R0 1
       25 NAMECALL                         R0 R0 K4 ["IsEditableDM"]
       27 CALL                             R0 1 1
       28 JUMPIFNOT                        R0 ; [+11]
       29 GETUPVAL                         R0 1
       30 GETUPVAL                         R2 2
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K2 ["EDIT_TIME_DATA_MODEL"]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K0 ["current"]
       37 NAMECALL                         R0 R0 K5 ["FireUIDM"]
       39 CALL                             R0 4 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K0 ["current"]
        6 NAMECALL                         R1 R1 K1 ["FireEditableDM"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K0 ["current"]
        6 NAMECALL                         R1 R1 K1 ["FireUIDM"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["IsUIDM"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+17]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R1 R1 K1 ["OnUIDMEvent"]
       15 CALL                             R1 3 2
       16 JUMPIFNOT                        R2 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       19 MOVE                             R4 R0
       20 MOVE                             R5 R2
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R1 0
       25 NAMECALL                         R1 R1 K5 ["IsEditableDM"]
       27 CALL                             R1 1 1
       28 JUMPIFNOT                        R1 ; [+17]
       29 GETUPVAL                         R1 0
       30 GETUPVAL                         R3 1
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 NAMECALL                         R1 R1 K6 ["OnEditableDMEvent"]
       37 CALL                             R1 3 2
       38 JUMPIFNOT                        R2 ; [+7]
       39 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       41 MOVE                             R4 R0
       42 MOVE                             R5 R2
       43 GETIMPORT                        R3 K4 [table.insert]
       45 CALL                             R3 2 0
       46 NEWCLOSURE                       R1 P2
       47 CAPTURE                          VAL R0
       48 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Context"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R3 R3 K2 ["getNetworking"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R1 R4 K4 ["current"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R7 0 4
       28 MOVE                             R8 R3
       29 MOVE                             R9 R1
       30 MOVE                             R10 R2
       31 MOVE                             R11 R4
       32 SETLIST                          R7 R8 4 [1]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R7 0 2
       44 MOVE                             R8 R3
       45 MOVE                             R9 R4
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 0
       49 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["IsUIDM"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+22]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K1 ["OnUIDMEvent"]
       14 CALL                             R2 3 2
       15 JUMPIFNOT                        R3 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R3
       20 GETIMPORT                        R4 K4 [table.insert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 1
       24 GETUPVAL                         R6 2
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K5 ["EDIT_TIME_DATA_MODEL"]
       28 NAMECALL                         R4 R4 K6 ["FireEditableDM"]
       30 CALL                             R4 3 0
       31 GETUPVAL                         R2 1
       32 NAMECALL                         R2 R2 K7 ["IsEditableDM"]
       34 CALL                             R2 1 1
       35 JUMPIFNOT                        R2 ; [+22]
       36 GETUPVAL                         R2 1
       37 GETUPVAL                         R4 2
       38 MOVE                             R5 R0
       39 NAMECALL                         R2 R2 K8 ["OnEditableDMEvent"]
       41 CALL                             R2 3 2
       42 JUMPIFNOT                        R3 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       45 MOVE                             R5 R1
       46 MOVE                             R6 R3
       47 GETIMPORT                        R4 K4 [table.insert]
       49 CALL                             R4 2 0
       50 GETUPVAL                         R4 1
       51 GETUPVAL                         R6 2
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K5 ["EDIT_TIME_DATA_MODEL"]
       55 NAMECALL                         R4 R4 K9 ["FireUIDM"]
       57 CALL                             R4 3 0
       58 NEWCLOSURE                       R2 P1
       59 CAPTURE                          VAL R1
       60 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useContext"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["Context"]
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R4 R4 K3 ["getNetworking"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 NEWTABLE                         R7 0 2
       25 MOVE                             R8 R3
       26 MOVE                             R9 R0
       27 SETLIST                          R7 R8 2 [1]
       29 CALL                             R5 2 0
       30 RETURN                           R2 1

PROTO_10:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 MOVE                             R2 R1
        6 GETVARARGS                       R3 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1
        9 GETIMPORT                        R2 K2 [error]
       11 LOADK                            R3 K3 ["Action is not connected. This callback must still be connected for invocation to return."]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 NAMECALL                         R0 R0 K0 ["IsUIDM"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["EDIT_TIME_DATA_MODEL"]
       11 GETVARARGS                       R4 -1
       12 NAMECALL                         R0 R0 K2 ["InvokeEditableDM"]
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1
       16 GETUPVAL                         R0 0
       17 NAMECALL                         R0 R0 K3 ["IsEditableDM"]
       19 CALL                             R0 1 1
       20 JUMPIFNOT                        R0 ; [+10]
       21 GETUPVAL                         R0 0
       22 GETUPVAL                         R2 1
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K1 ["EDIT_TIME_DATA_MODEL"]
       26 GETVARARGS                       R4 -1
       27 NAMECALL                         R0 R0 K4 ["InvokeUIDM"]
       29 CALL                             R0 -1 -1
       30 RETURN                           R0 -1
       31 GETIMPORT                        R0 K6 [error]
       33 LOADK                            R1 K7 ["Networking is neither UIDM nor EditableDM"]
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["IsUIDM"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K1 ["OnUIDMInvoke"]
       14 CALL                             R2 3 2
       15 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       17 MOVE                             R5 R1
       18 MOVE                             R6 R3
       19 GETIMPORT                        R4 K4 [table.insert]
       21 CALL                             R4 2 0
       22 GETUPVAL                         R2 1
       23 NAMECALL                         R2 R2 K5 ["IsEditableDM"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R2 ; [+13]
       27 GETUPVAL                         R2 1
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R0
       30 NAMECALL                         R2 R2 K6 ["OnEditableDMInvoke"]
       32 CALL                             R2 3 2
       33 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       35 MOVE                             R5 R1
       36 MOVE                             R6 R3
       37 GETIMPORT                        R4 K4 [table.insert]
       39 CALL                             R4 2 0
       40 GETUPVAL                         R2 3
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U4
       45 SETTABLEKS                       R3 R2 K7 ["current"]
       47 NEWCLOSURE                       R2 P2
       48 CAPTURE                          VAL R1
       49 RETURN                           R2 1

PROTO_14:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["current"]
        4 JUMPIF                           R0 ; [+4]
        5 GETIMPORT                        R1 K2 [error]
        7 LOADK                            R2 K3 ["Action is not connected"]
        8 CALL                             R1 1 0
        9 MOVE                             R1 R0
       10 GETVARARGS                       R2 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K2 ["getNetworking"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["useRef"]
       13 LOADNIL                          R4
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["useRef"]
       18 LOADNIL                          R5
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R1 R4 K4 ["current"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U2
       31 NEWTABLE                         R7 0 3
       33 MOVE                             R8 R2
       34 MOVE                             R9 R0
       35 MOVE                             R10 R3
       36 SETLIST                          R7 R8 3 [1]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R7 0 1
       46 MOVE                             R8 R3
       47 SETLIST                          R7 R8 1 [1]
       49 CALL                             R5 2 -1
       50 RETURN                           R5 -1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R4 R4 K9 ["NetworkingContext"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Utils"]
       25 GETTABLEKS                       R5 R5 K11 ["Networking"]
       27 GETTABLEKS                       R5 R5 K12 ["NetworkIdentifiers"]
       29 CALL                             R4 1 1
       30 NEWTABLE                         R5 4 0
       32 DUPCLOSURE                       R6 K13 [PROTO_5]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R6 R5 K14 ["useReplicatedState"]
       38 DUPCLOSURE                       R6 K15 [PROTO_9]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 SETTABLEKS                       R6 R5 K16 ["useReplicatedStateListener"]
       44 DUPCLOSURE                       R6 K17 [PROTO_15]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R6 R5 K18 ["useBoundAction"]
       50 RETURN                           R5 1
