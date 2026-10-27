PROTO_0:
        0 DUPTABLE                         R0 K5 [{[1], ["instance"] = , ["state"] = "pending"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["assetId"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GetAnimationClipAsync"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 2
        8 LOADNIL                          R3
        9 SETUPVAL                         R3 2
       10 JUMPIFNOT                        R1 ; [+6]
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R5 3
       13 NAMECALL                         R3 R0 K2 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+10]
       17 GETUPVAL                         R3 4
       18 DUPTABLE                         R4 K9 [{["assetId"], ["instance"] = , ["state"] = "error", ["message"]}]
       19 GETUPVAL                         R5 1
       20 SETTABLEKS                       R5 R4 K3 ["assetId"]
       22 SETTABLEKS                       R2 R4 K8 ["message"]
       24 CALL                             R3 1 0
       25 CLOSEUPVALS                      R0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 4
       28 DUPTABLE                         R4 K11 [{["assetId"], ["instance"], ["state"] = "loaded"}]
       29 GETUPVAL                         R5 1
       30 SETTABLEKS                       R5 R4 K3 ["assetId"]
       32 SETTABLEKS                       R0 R4 K4 ["instance"]
       34 CALL                             R3 1 0
       35 CLOSEUPVALS                      R0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K2 [task.spawn]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 1
       10 MOVE                             R1 R2
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          REF R1
       13 CLOSEUPVALS                      R1
       14 RETURN                           R2 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["provide"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["of"]
       15 LOADNIL                          R2
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getClassName"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R0 K1 ["AnimationGraphDefinition"]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["switchMap"]
       13 GETUPVAL                         R2 4
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          VAL R0
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 2
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 CALL                             R3 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R1 ; [+44]
       15 GETTABLEKS                       R5 R1 K0 ["state"]
       17 JUMPIFNOTEQKS                    R5 K1 ["loaded"] ; [+4]
       19 GETTABLEKS                       R4 R1 K2 ["instance"]
       21 JUMP                             ; [+38]
       22 GETTABLEKS                       R5 R1 K0 ["state"]
       24 JUMPIFNOTEQKS                    R5 K3 ["pending"] ; [+3]
       26 LOADNIL                          R4
       27 JUMP                             ; [+32]
       28 GETTABLEKS                       R5 R1 K0 ["state"]
       30 JUMPIFNOTEQKS                    R5 K4 ["error"] ; [+14]
       32 MOVE                             R4 R2
       33 GETIMPORT                        R5 K6 [warn]
       35 LOADK                            R6 K7 ["Error loading graph for assetId $%*: $%*"]
       36 GETTABLEKS                       R8 R1 K8 ["assetId"]
       38 GETTABLEKS                       R9 R1 K9 ["message"]
       40 NAMECALL                         R6 R6 K10 ["format"]
       42 CALL                             R6 3 1
       43 CALL                             R5 1 0
       44 JUMP                             ; [+15]
       45 GETIMPORT                        R5 K11 [error]
       47 LOADK                            R6 K12 ["Unexpected state $%* for assetId $%* with message $%*"]
       48 GETTABLEKS                       R8 R1 K0 ["state"]
       50 GETTABLEKS                       R9 R1 K8 ["assetId"]
       52 GETTABLEKS                       R10 R1 K9 ["message"]
       54 NAMECALL                         R6 R6 K10 ["format"]
       56 CALL                             R6 4 1
       57 CALL                             R5 1 0
       58 JUMP                             ; [+1]
       59 MOVE                             R4 R2
       60 JUMPIFNOT                        R3 ; [+14]
       61 GETUPVAL                         R5 3
       62 GETTABLEKS                       R5 R5 K13 ["instanceRegistry"]
       64 MOVE                             R7 R3
       65 NAMECALL                         R5 R5 K14 ["idToInstance"]
       67 CALL                             R5 2 1
       68 JUMPIFNOT                        R5 ; [+6]
       69 GETUPVAL                         R8 4
       70 NAMECALL                         R6 R5 K15 ["IsA"]
       72 CALL                             R6 2 1
       73 JUMPIFNOT                        R6 ; [+1]
       74 RETURN                           R5 1
       75 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getClassName"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R0 K1 ["AnimationGraphDefinition"]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["observeEditingAnimationGraphDefinition"]
       13 GETUPVAL                         R2 4
       14 GETUPVAL                         R3 2
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R2 R2 K3 ["createComputed"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          VAL R0
       25 CALL                             R2 1 -1
       26 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useContext"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Context"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K2 ["assetType"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K0 ["useContext"]
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R5 R5 K1 ["Context"]
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U7
       33 NEWTABLE                         R7 0 2
       35 MOVE                             R8 R0
       36 GETUPVAL                         R10 0
       37 CALL                             R10 0 1
       38 JUMPIFNOT                        R10 ; [+2]
       39 MOVE                             R9 R2
       40 JUMP                             ; [+1]
       41 LOADNIL                          R9
       42 SETLIST                          R7 R8 2 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          VAL R3
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 NEWTABLE                         R8 0 5
       60 MOVE                             R9 R3
       61 MOVE                             R10 R5
       62 MOVE                             R11 R4
       63 MOVE                             R12 R1
       64 GETUPVAL                         R14 0
       65 CALL                             R14 0 1
       66 JUMPIFNOT                        R14 ; [+2]
       67 MOVE                             R13 R2
       68 JUMP                             ; [+1]
       69 LOADNIL                          R13
       70 SETLIST                          R8 R9 5 [1]
       72 CALL                             R6 2 1
       73 RETURN                           R6 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeEditingAnimationGraphDefinition"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K1 ["instanceToId"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+18]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["selectionService"]
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 NAMECALL                         R1 R1 K1 ["Set"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+12]
       15 GETUPVAL                         R1 2
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["selectionService"]
       22 NEWTABLE                         R3 0 0
       24 NAMECALL                         R1 R1 K1 ["Set"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+4]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 1
       11 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 1
        7 JUMPIFEQKNIL                     R0 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getClassName"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R1 K1 ["AnimationGraphDefinition"]
       10 MOVE                             R2 R0
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["instanceRegistry"]
       15 MOVE                             R4 R0
       16 NAMECALL                         R2 R2 K3 ["idToInstance"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+9]
       20 MOVE                             R5 R1
       21 NAMECALL                         R3 R2 K4 ["IsA"]
       23 CALL                             R3 2 1
       24 JUMPIFNOT                        R3 ; [+4]
       25 GETUPVAL                         R3 4
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 4
       30 LOADNIL                          R4
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["selectionService"]
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 NAMECALL                         R1 R1 K1 ["Set"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R0 K7 [{"observeSelectedGraphInstance", "setSelectedGraphInstance", "observeSelectedGraphIsEphemeral", "observeSelectedGraphInstanceId", "setSelectedGraphInstanceIdAsync", "setEphemeralGraphByAssetIdAsync", "showInExplorer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeSelectedGraphInstance"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setSelectedGraphInstance"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeSelectedGraphIsEphemeral"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeSelectedGraphInstanceId"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setSelectedGraphInstanceIdAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setEphemeralGraphByAssetIdAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["showInExplorer"]
       22 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+10]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K2 ["assetType"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["useContext"]
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K1 ["Context"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 5
       29 CALL                             R4 0 1
       30 GETUPVAL                         R5 6
       31 GETTABLEKS                       R5 R5 K3 ["useSignalConsumer"]
       33 LOADNIL                          R6
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 7
       36 GETTABLEKS                       R6 R6 K4 ["useConsumer"]
       38 CALL                             R6 0 1
       39 GETUPVAL                         R8 8
       40 CALL                             R8 0 1
       41 JUMPIFNOT                        R8 ; [+5]
       42 GETUPVAL                         R7 9
       43 MOVE                             R8 R5
       44 LOADNIL                          R9
       45 CALL                             R7 2 1
       46 JUMP                             ; [+19]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       50 NEWCLOSURE                       R8 P0
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 NEWTABLE                         R9 0 2
       56 MOVE                             R10 R4
       57 GETUPVAL                         R12 2
       58 CALL                             R12 0 1
       59 JUMPIFNOT                        R12 ; [+2]
       60 MOVE                             R11 R2
       61 JUMP                             ; [+1]
       62 LOADNIL                          R11
       63 SETLIST                          R9 R10 2 [1]
       65 CALL                             R7 2 1
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       69 NEWCLOSURE                       R9 P1
       70 CAPTURE                          UPVAL U11
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 NEWTABLE                         R10 0 2
       75 MOVE                             R11 R7
       76 GETTABLEKS                       R12 R1 K6 ["instanceRegistry"]
       78 SETLIST                          R10 R11 2 [1]
       80 CALL                             R8 2 1
       81 GETUPVAL                         R9 0
       82 GETTABLEKS                       R9 R9 K0 ["useContext"]
       84 GETUPVAL                         R10 12
       85 GETTABLEKS                       R10 R10 K1 ["Context"]
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R10 R9 K7 ["lastOpenedGraph"]
       90 GETTABLEKS                       R11 R9 K8 ["setLastOpenedGraph"]
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       95 NEWCLOSURE                       R13 P2
       96 CAPTURE                          VAL R3
       97 CAPTURE                          UPVAL U13
       98 CAPTURE                          VAL R11
       99 NEWTABLE                         R14 0 2
      101 GETTABLEKS                       R15 R3 K10 ["selectionService"]
      103 MOVE                             R16 R11
      104 SETLIST                          R14 R15 2 [1]
      106 CALL                             R12 2 1
      107 GETUPVAL                         R13 0
      108 GETTABLEKS                       R13 R13 K11 ["useEffect"]
      110 NEWCLOSURE                       R14 P3
      111 CAPTURE                          UPVAL U13
      112 CAPTURE                          UPVAL U14
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R11
      115 NEWTABLE                         R15 0 2
      117 MOVE                             R16 R7
      118 MOVE                             R17 R11
      119 SETLIST                          R15 R16 2 [1]
      121 CALL                             R13 2 0
      122 GETUPVAL                         R13 0
      123 GETTABLEKS                       R13 R13 K11 ["useEffect"]
      125 NEWCLOSURE                       R14 P4
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R12
      129 NEWTABLE                         R15 0 1
      131 MOVE                             R16 R10
      132 SETLIST                          R15 R16 1 [1]
      134 CALL                             R13 2 0
      135 GETUPVAL                         R13 0
      136 GETTABLEKS                       R13 R13 K9 ["useCallback"]
      138 NEWCLOSURE                       R14 P5
      139 CAPTURE                          UPVAL U2
      140 CAPTURE                          UPVAL U15
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R12
      144 NEWTABLE                         R15 0 4
      146 MOVE                             R16 R12
      147 GETTABLEKS                       R17 R3 K10 ["selectionService"]
      149 GETTABLEKS                       R18 R1 K6 ["instanceRegistry"]
      151 GETUPVAL                         R20 2
      152 CALL                             R20 0 1
      153 JUMPIFNOT                        R20 ; [+2]
      154 MOVE                             R19 R2
      155 JUMP                             ; [+1]
      156 LOADNIL                          R19
      157 SETLIST                          R15 R16 4 [1]
      159 CALL                             R13 2 1
      160 GETUPVAL                         R14 0
      161 GETTABLEKS                       R14 R14 K5 ["useMemo"]
      163 NEWCLOSURE                       R15 P6
      164 CAPTURE                          UPVAL U16
      165 CAPTURE                          VAL R5
      166 NEWTABLE                         R16 0 1
      168 MOVE                             R17 R5
      169 SETLIST                          R16 R17 1 [1]
      171 CALL                             R14 2 1
      172 GETUPVAL                         R15 0
      173 GETTABLEKS                       R15 R15 K9 ["useCallback"]
      175 NEWCLOSURE                       R16 P7
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R3
      178 NEWTABLE                         R17 0 2
      180 MOVE                             R18 R7
      181 GETTABLEKS                       R19 R3 K10 ["selectionService"]
      183 SETLIST                          R17 R18 2 [1]
      185 CALL                             R15 2 1
      186 GETUPVAL                         R16 17
      187 GETTABLEKS                       R16 R16 K12 ["useSignalProducer"]
      189 MOVE                             R17 R8
      190 CALL                             R16 1 0
      191 GETUPVAL                         R16 18
      192 GETTABLEKS                       R16 R16 K13 ["useProducer"]
      194 MOVE                             R17 R13
      195 CALL                             R16 1 0
      196 GETUPVAL                         R16 19
      197 GETTABLEKS                       R16 R16 K13 ["useProducer"]
      199 MOVE                             R17 R15
      200 CALL                             R16 1 0
      201 GETUPVAL                         R16 0
      202 GETTABLEKS                       R16 R16 K5 ["useMemo"]
      204 NEWCLOSURE                       R17 P8
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R15
      212 NEWTABLE                         R18 0 7
      214 MOVE                             R19 R7
      215 MOVE                             R20 R12
      216 MOVE                             R21 R14
      217 MOVE                             R22 R8
      218 MOVE                             R23 R13
      219 MOVE                             R24 R6
      220 MOVE                             R25 R15
      221 SETLIST                          R18 R19 7 [1]
      223 CALL                             R16 2 1
      224 GETUPVAL                         R17 0
      225 GETTABLEKS                       R17 R17 K14 ["createElement"]
      227 GETUPVAL                         R18 20
      228 GETTABLEKS                       R18 R18 K15 ["Provider"]
      230 DUPTABLE                         R19 K17 [{"value"}]
      231 SETTABLEKS                       R16 R19 K16 ["value"]
      233 GETTABLEKS                       R20 R0 K18 ["children"]
      235 CALL                             R17 3 -1
      236 RETURN                           R17 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["instanceToId"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 LOADNIL                          R2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K1 ["idToInstance"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R5 2
       13 NAMECALL                         R3 R2 K2 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R2 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getClassName"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R0 K1 ["AnimationGraphDefinition"]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["createComputed"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_30:
        0 DUPTABLE                         R0 K7 [{"observeSelectedGraphInstance", "setSelectedGraphInstance", "observeSelectedGraphIsEphemeral", "observeSelectedGraphInstanceId", "setSelectedGraphInstanceIdAsync", "setEphemeralGraphByAssetIdAsync", "showInExplorer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeSelectedGraphInstance"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setSelectedGraphInstance"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeSelectedGraphIsEphemeral"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeSelectedGraphInstanceId"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setSelectedGraphInstanceIdAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setEphemeralGraphByAssetIdAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["showInExplorer"]
       22 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+10]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K2 ["assetType"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K3 ["useSignalConsumer"]
       24 LOADNIL                          R4
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 5
       27 GETTABLEKS                       R4 R4 K4 ["useConsumer"]
       29 CALL                             R4 0 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       33 DUPCLOSURE                       R6 K6 [PROTO_23]
       34 CAPTURE                          UPVAL U6
       35 NEWTABLE                         R7 0 0
       37 CALL                             R5 2 2
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       41 NEWCLOSURE                       R8 P1
       42 CAPTURE                          VAL R6
       43 NEWTABLE                         R9 0 1
       45 MOVE                             R10 R6
       46 SETLIST                          R9 R10 1 [1]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 7
       50 GETTABLEKS                       R8 R8 K8 ["useProducer"]
       52 MOVE                             R9 R7
       53 CALL                             R8 1 0
       54 GETUPVAL                         R8 8
       55 GETTABLEKS                       R8 R8 K9 ["useSignalProducer"]
       57 MOVE                             R9 R5
       58 CALL                             R8 1 0
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 NEWTABLE                         R10 0 2
       67 MOVE                             R11 R4
       68 GETTABLEKS                       R12 R1 K10 ["instanceRegistry"]
       70 SETLIST                          R10 R11 2 [1]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R10 9
       74 CALL                             R10 0 1
       75 JUMPIFNOT                        R10 ; [+5]
       76 GETUPVAL                         R9 10
       77 MOVE                             R10 R5
       78 MOVE                             R11 R3
       79 CALL                             R9 2 1
       80 JUMP                             ; [+24]
       81 GETUPVAL                         R9 0
       82 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       84 NEWCLOSURE                       R10 P3
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U11
       87 CAPTURE                          VAL R2
       88 CAPTURE                          UPVAL U12
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R1
       91 NEWTABLE                         R11 0 3
       93 MOVE                             R12 R3
       94 GETTABLEKS                       R13 R1 K10 ["instanceRegistry"]
       96 GETUPVAL                         R15 2
       97 CALL                             R15 0 1
       98 JUMPIFNOT                        R15 ; [+2]
       99 MOVE                             R14 R2
      100 JUMP                             ; [+1]
      101 LOADNIL                          R14
      102 SETLIST                          R11 R12 3 [1]
      104 CALL                             R9 2 1
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R10 R10 K5 ["useMemo"]
      108 NEWCLOSURE                       R11 P4
      109 CAPTURE                          UPVAL U13
      110 CAPTURE                          VAL R5
      111 NEWTABLE                         R12 0 1
      113 MOVE                             R13 R5
      114 SETLIST                          R12 R13 1 [1]
      116 CALL                             R10 2 1
      117 GETUPVAL                         R11 14
      118 GETTABLEKS                       R11 R11 K4 ["useConsumer"]
      120 CALL                             R11 0 1
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      124 NEWCLOSURE                       R13 P5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R11
      132 NEWTABLE                         R14 0 7
      134 MOVE                             R15 R9
      135 MOVE                             R16 R8
      136 MOVE                             R17 R10
      137 MOVE                             R18 R3
      138 MOVE                             R19 R4
      139 MOVE                             R20 R7
      140 MOVE                             R21 R11
      141 SETLIST                          R14 R15 7 [1]
      143 CALL                             R12 2 1
      144 GETUPVAL                         R13 0
      145 GETTABLEKS                       R13 R13 K11 ["createElement"]
      147 GETUPVAL                         R14 15
      148 GETTABLEKS                       R14 R14 K12 ["Provider"]
      150 DUPTABLE                         R15 K14 [{"value"}]
      151 SETTABLEKS                       R12 R15 K13 ["value"]
      153 GETTABLEKS                       R16 R0 K15 ["children"]
      155 CALL                             R13 3 -1
      156 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K11 ["InstanceRegistryContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K12 ["NativeGraphContext"]
       26 GETTABLEKS                       R4 R4 K13 ["NativeGraphUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["Networking"]
       35 GETTABLEKS                       R5 R5 K16 ["NetworkUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K17 ["OpenableAssetTypeContext"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K10 ["Contexts"]
       49 GETTABLEKS                       R7 R7 K17 ["OpenableAssetTypeContext"]
       51 GETTABLEKS                       R7 R7 K18 ["OpenableAssetTypeUtils"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K19 ["Parent"]
       58 GETTABLEKS                       R8 R8 K20 ["React"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K19 ["Parent"]
       65 GETTABLEKS                       R9 R9 K21 ["ReactUtils"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Contexts"]
       72 GETTABLEKS                       R10 R10 K22 ["SelectionServiceContext"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K14 ["Util"]
       79 GETTABLEKS                       R11 R11 K23 ["Signals"]
       81 GETTABLEKS                       R11 R11 K24 ["Experimental"]
       83 GETTABLEKS                       R11 R11 K25 ["SignalExperimentalUtils"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R0 K19 ["Parent"]
       90 GETTABLEKS                       R12 R12 K23 ["Signals"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K14 ["Util"]
       97 GETTABLEKS                       R13 R13 K23 ["Signals"]
       99 GETTABLEKS                       R13 R13 K24 ["Experimental"]
      101 GETTABLEKS                       R13 R13 K25 ["SignalExperimentalUtils"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R14 R0 K14 ["Util"]
      108 GETTABLEKS                       R14 R14 K23 ["Signals"]
      110 GETTABLEKS                       R14 R14 K26 ["SignalsInstanceUtils"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K9 [require]
      115 GETTABLEKS                       R15 R0 K27 ["Types"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R16 R0 K28 ["Flags"]
      122 GETTABLEKS                       R16 R16 K29 ["getFFlagAnimGraphUIReopenLastGraph"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K9 [require]
      127 GETTABLEKS                       R17 R0 K28 ["Flags"]
      129 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimGraphUI_RunTimeDebug"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K9 [require]
      134 GETTABLEKS                       R18 R0 K28 ["Flags"]
      136 GETTABLEKS                       R18 R18 K31 ["getFFlagAnimationEditorAnimationTypes"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K9 [require]
      141 GETTABLEKS                       R19 R0 K32 ["Hooks"]
      143 GETTABLEKS                       R19 R19 K33 ["useObserveSelection"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K9 [require]
      148 GETTABLEKS                       R20 R0 K10 ["Contexts"]
      150 GETTABLEKS                       R20 R20 K34 ["LastOpenedGraphContext"]
      152 CALL                             R19 1 1
      153 DUPTABLE                         R20 K42 [{"observeSelectedGraphInstance", "observeSelectedGraphInstanceId", "observeSelectedGraphIsEphemeral", "setSelectedGraphInstance", "setSelectedGraphInstanceIdAsync", "setEphemeralGraphByAssetIdAsync", "showInExplorer"}]
      154 GETTABLEKS                       R21 R13 K43 ["of"]
      156 LOADNIL                          R22
      157 CALL                             R21 1 1
      158 SETTABLEKS                       R21 R20 K35 ["observeSelectedGraphInstance"]
      160 GETTABLEKS                       R21 R13 K43 ["of"]
      162 LOADNIL                          R22
      163 CALL                             R21 1 1
      164 SETTABLEKS                       R21 R20 K36 ["observeSelectedGraphInstanceId"]
      166 GETTABLEKS                       R21 R13 K43 ["of"]
      168 LOADB                            R22 0
      169 CALL                             R21 1 1
      170 SETTABLEKS                       R21 R20 K37 ["observeSelectedGraphIsEphemeral"]
      172 GETTABLEKS                       R21 R8 K44 ["createUnimplemented"]
      174 LOADK                            R22 K38 ["setSelectedGraphInstance"]
      175 CALL                             R21 1 1
      176 SETTABLEKS                       R21 R20 K38 ["setSelectedGraphInstance"]
      178 GETTABLEKS                       R21 R8 K44 ["createUnimplemented"]
      180 LOADK                            R22 K39 ["setSelectedGraphInstanceIdAsync"]
      181 CALL                             R21 1 1
      182 SETTABLEKS                       R21 R20 K39 ["setSelectedGraphInstanceIdAsync"]
      184 GETTABLEKS                       R21 R8 K44 ["createUnimplemented"]
      186 LOADK                            R22 K40 ["setEphemeralGraphByAssetIdAsync"]
      187 CALL                             R21 1 1
      188 SETTABLEKS                       R21 R20 K40 ["setEphemeralGraphByAssetIdAsync"]
      190 GETTABLEKS                       R21 R8 K44 ["createUnimplemented"]
      192 LOADK                            R22 K41 ["showInExplorer"]
      193 CALL                             R21 1 1
      194 SETTABLEKS                       R21 R20 K41 ["showInExplorer"]
      196 GETTABLEKS                       R21 R7 K45 ["createContext"]
      198 MOVE                             R22 R20
      199 CALL                             R21 1 1
      200 GETTABLEKS                       R22 R4 K46 ["createBoundAction"]
      202 LOADK                            R23 K47 ["SelectedGraphContext_setSelectedGraphInstanceIdAsync"]
      203 CALL                             R22 1 1
      204 GETTABLEKS                       R23 R4 K46 ["createBoundAction"]
      206 LOADK                            R24 K48 ["SelectedGraphContext_setEphemeralGraphByAssetIdAsync"]
      207 CALL                             R23 1 1
      208 GETTABLEKS                       R24 R4 K46 ["createBoundAction"]
      210 LOADK                            R25 K49 ["SelectedGraphContext_showInExplorer"]
      211 CALL                             R24 1 1
      212 GETTABLEKS                       R25 R4 K50 ["createReplicatedState"]
      214 LOADK                            R26 K51 ["SelectedGraphContext_selectedGraphInstanceId"]
      215 CALL                             R25 1 1
      216 GETTABLEKS                       R26 R4 K50 ["createReplicatedState"]
      218 LOADK                            R27 K52 ["SelectedGraphContext_ephemeralGraphDataAssetId"]
      219 CALL                             R26 1 1
      220 DUPCLOSURE                       R27 K53 [PROTO_9]
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R6
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R12
      231 DUPCLOSURE                       R28 K54 [PROTO_22]
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R26
      239 CAPTURE                          VAL R23
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R27
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R10
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R6
      248 CAPTURE                          VAL R12
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R21
      253 DUPCLOSURE                       R29 K55 [PROTO_31]
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R17
      257 CAPTURE                          VAL R5
      258 CAPTURE                          VAL R25
      259 CAPTURE                          VAL R22
      260 CAPTURE                          VAL R11
      261 CAPTURE                          VAL R23
      262 CAPTURE                          VAL R26
      263 CAPTURE                          VAL R16
      264 CAPTURE                          VAL R27
      265 CAPTURE                          VAL R6
      266 CAPTURE                          VAL R10
      267 CAPTURE                          VAL R12
      268 CAPTURE                          VAL R24
      269 CAPTURE                          VAL R21
      270 DUPTABLE                         R30 K59 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      271 SETTABLEKS                       R21 R30 K56 ["Context"]
      273 SETTABLEKS                       R28 R30 K57 ["EditableDataModelProvider"]
      275 SETTABLEKS                       R29 R30 K58 ["UIDataModelProvider"]
      277 RETURN                           R30 1
