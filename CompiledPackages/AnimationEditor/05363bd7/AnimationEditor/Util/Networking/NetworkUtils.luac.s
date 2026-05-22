PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K1 ["IsGuest"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+9]
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K0 ["current"]
       19 NAMECALL                         R0 R0 K2 ["FireHost"]
       21 CALL                             R0 4 0
       22 GETUPVAL                         R0 1
       23 NAMECALL                         R0 R0 K3 ["IsHost"]
       25 CALL                             R0 1 1
       26 JUMPIFNOT                        R0 ; [+9]
       27 GETUPVAL                         R0 1
       28 GETUPVAL                         R2 2
       29 LOADNIL                          R3
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K0 ["current"]
       33 NAMECALL                         R0 R0 K4 ["FireGuest"]
       35 CALL                             R0 4 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K0 ["current"]
        6 NAMECALL                         R1 R1 K1 ["FireHost"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K0 ["current"]
        6 NAMECALL                         R1 R1 K1 ["FireGuest"]
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
        3 NAMECALL                         R1 R1 K0 ["IsGuest"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+17]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R1 R1 K1 ["OnGuestEvent"]
       15 CALL                             R1 3 2
       16 JUMPIFNOT                        R2 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       19 MOVE                             R4 R0
       20 MOVE                             R5 R2
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R1 0
       25 NAMECALL                         R1 R1 K5 ["IsHost"]
       27 CALL                             R1 1 1
       28 JUMPIFNOT                        R1 ; [+17]
       29 GETUPVAL                         R1 0
       30 GETUPVAL                         R3 1
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 NAMECALL                         R1 R1 K6 ["OnHostEvent"]
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
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 4
       27 MOVE                             R8 R3
       28 MOVE                             R9 R1
       29 MOVE                             R10 R2
       30 MOVE                             R11 R4
       31 SETLIST                          R7 R8 4 [1]
       33 CALL                             R5 2 0
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R7 0 2
       43 MOVE                             R8 R3
       44 MOVE                             R9 R4
       45 SETLIST                          R7 R8 2 [1]
       47 CALL                             R5 2 0
       48 RETURN                           R0 0

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
        5 NAMECALL                         R2 R2 K0 ["IsGuest"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+20]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       14 CALL                             R2 3 2
       15 JUMPIFNOT                        R3 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R3
       20 GETIMPORT                        R4 K4 [table.insert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 1
       24 GETUPVAL                         R6 2
       25 LOADNIL                          R7
       26 NAMECALL                         R4 R4 K5 ["FireHost"]
       28 CALL                             R4 3 0
       29 GETUPVAL                         R2 1
       30 NAMECALL                         R2 R2 K6 ["IsHost"]
       32 CALL                             R2 1 1
       33 JUMPIFNOT                        R2 ; [+20]
       34 GETUPVAL                         R2 1
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R0
       37 NAMECALL                         R2 R2 K7 ["OnHostEvent"]
       39 CALL                             R2 3 2
       40 JUMPIFNOT                        R3 ; [+7]
       41 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       43 MOVE                             R5 R1
       44 MOVE                             R6 R3
       45 GETIMPORT                        R4 K4 [table.insert]
       47 CALL                             R4 2 0
       48 GETUPVAL                         R4 1
       49 GETUPVAL                         R6 2
       50 LOADNIL                          R7
       51 NAMECALL                         R4 R4 K8 ["FireGuest"]
       53 CALL                             R4 3 0
       54 NEWCLOSURE                       R2 P1
       55 CAPTURE                          VAL R1
       56 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K2 ["getNetworking"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 2
       19 MOVE                             R6 R1
       20 MOVE                             R7 R0
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["useReplicatedStateListenerCallback"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R3
       10 CALL                             R4 2 0
       11 RETURN                           R2 1

PROTO_11:
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

PROTO_12:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 NAMECALL                         R0 R0 K0 ["IsGuest"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 GETVARARGS                       R4 -1
       10 NAMECALL                         R0 R0 K1 ["InvokeHostAsync"]
       12 CALL                             R0 -1 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 0
       15 NAMECALL                         R0 R0 K2 ["IsHost"]
       17 CALL                             R0 1 1
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R0 0
       20 GETUPVAL                         R2 1
       21 LOADNIL                          R3
       22 GETVARARGS                       R4 -1
       23 NAMECALL                         R0 R0 K3 ["InvokeGuestAsync"]
       25 CALL                             R0 -1 -1
       26 RETURN                           R0 -1
       27 GETIMPORT                        R0 K5 [error]
       29 LOADK                            R1 K6 ["Networking is neither UIDM nor EditableDM"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_14:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["IsGuest"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K1 ["OnGuestInvokeAsync"]
       14 CALL                             R2 3 2
       15 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       17 MOVE                             R5 R1
       18 MOVE                             R6 R3
       19 GETIMPORT                        R4 K4 [table.insert]
       21 CALL                             R4 2 0
       22 GETUPVAL                         R2 1
       23 NAMECALL                         R2 R2 K5 ["IsHost"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R2 ; [+13]
       27 GETUPVAL                         R2 1
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R0
       30 NAMECALL                         R2 R2 K6 ["OnHostInvokeAsync"]
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
       44 SETTABLEKS                       R3 R2 K7 ["current"]
       46 NEWCLOSURE                       R2 P2
       47 CAPTURE                          VAL R1
       48 RETURN                           R2 1

PROTO_15:
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

PROTO_16:
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
       30 NEWTABLE                         R7 0 3
       32 MOVE                             R8 R2
       33 MOVE                             R9 R0
       34 MOVE                             R10 R3
       35 SETLIST                          R7 R8 3 [1]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R3
       43 NEWTABLE                         R7 0 1
       45 MOVE                             R8 R3
       46 SETLIST                          R7 R8 1 [1]
       48 CALL                             R5 2 -1
       49 RETURN                           R5 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBoundAction"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_19:
        0 DUPTABLE                         R1 K2 [{"useProducer", "useConsumer"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K0 ["useProducer"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K1 ["useConsumer"]
       11 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_22:
        0 DUPTABLE                         R1 K2 [{"useProducer", "useConsumer"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K0 ["useProducer"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K1 ["useConsumer"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["NetworkingContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 8 0
       23 DUPCLOSURE                       R4 K10 [PROTO_5]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R4 R3 K11 ["useReplicatedState"]
       28 DUPCLOSURE                       R4 K12 [PROTO_9]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K13 ["useReplicatedStateListenerCallback"]
       33 DUPCLOSURE                       R4 K14 [PROTO_10]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R4 R3 K15 ["useReplicatedStateListener"]
       38 DUPCLOSURE                       R4 K16 [PROTO_16]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R4 R3 K17 ["useBoundAction"]
       43 DUPCLOSURE                       R4 K18 [PROTO_19]
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R4 R3 K19 ["createBoundAction"]
       47 DUPCLOSURE                       R4 K20 [PROTO_22]
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R4 R3 K21 ["createReplicatedState"]
       51 RETURN                           R3 1
