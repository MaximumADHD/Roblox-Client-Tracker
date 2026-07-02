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
       12 LOADK                            R5 K2 ["AnimationGraphDefinition"]
       13 NAMECALL                         R3 R0 K3 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+10]
       17 GETUPVAL                         R3 3
       18 DUPTABLE                         R4 K10 [{["assetId"], ["instance"] = , ["state"] = "error", ["message"]}]
       19 GETUPVAL                         R5 1
       20 SETTABLEKS                       R5 R4 K4 ["assetId"]
       22 SETTABLEKS                       R2 R4 K9 ["message"]
       24 CALL                             R3 1 0
       25 CLOSEUPVALS                      R0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 3
       28 DUPTABLE                         R4 K12 [{["assetId"], ["instance"], ["state"] = "loaded"}]
       29 GETUPVAL                         R5 1
       30 SETTABLEKS                       R5 R4 K4 ["assetId"]
       32 SETTABLEKS                       R0 R4 K5 ["instance"]
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
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          REF R1
       12 CLOSEUPVALS                      R1
       13 RETURN                           R2 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["provide"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["of"]
       14 LOADNIL                          R2
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_5]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

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
       14 JUMPIFNOT                        R1 ; [+46]
       15 GETTABLEKS                       R5 R1 K0 ["state"]
       17 JUMPIFNOTEQKS                    R5 K1 ["loaded"] ; [+4]
       19 GETTABLEKS                       R4 R1 K2 ["instance"]
       21 JUMP                             ; [+40]
       22 GETTABLEKS                       R5 R1 K0 ["state"]
       24 JUMPIFNOTEQKS                    R5 K3 ["pending"] ; [+3]
       26 LOADNIL                          R4
       27 JUMP                             ; [+34]
       28 GETTABLEKS                       R5 R1 K0 ["state"]
       30 JUMPIFNOTEQKS                    R5 K4 ["error"] ; [+15]
       32 MOVE                             R4 R2
       33 GETIMPORT                        R5 K6 [warn]
       35 LOADK                            R7 K7 ["Error loading graph for assetId $%*: $%*"]
       36 GETTABLEKS                       R9 R1 K8 ["assetId"]
       38 GETTABLEKS                       R10 R1 K9 ["message"]
       40 NAMECALL                         R7 R7 K10 ["format"]
       42 CALL                             R7 3 1
       43 MOVE                             R6 R7
       44 CALL                             R5 1 0
       45 JUMP                             ; [+16]
       46 GETIMPORT                        R5 K11 [error]
       48 LOADK                            R7 K12 ["Unexpected state $%* for assetId $%* with message $%*"]
       49 GETTABLEKS                       R9 R1 K0 ["state"]
       51 GETTABLEKS                       R10 R1 K8 ["assetId"]
       53 GETTABLEKS                       R11 R1 K9 ["message"]
       55 NAMECALL                         R7 R7 K10 ["format"]
       57 CALL                             R7 4 1
       58 MOVE                             R6 R7
       59 CALL                             R5 1 0
       60 JUMP                             ; [+1]
       61 MOVE                             R4 R2
       62 JUMPIFNOT                        R3 ; [+14]
       63 GETUPVAL                         R5 3
       64 GETTABLEKS                       R5 R5 K13 ["instanceRegistry"]
       66 MOVE                             R7 R3
       67 NAMECALL                         R5 R5 K14 ["idToInstance"]
       69 CALL                             R5 2 1
       70 JUMPIFNOT                        R5 ; [+6]
       71 LOADK                            R8 K15 ["AnimationGraphDefinition"]
       72 NAMECALL                         R6 R5 K16 ["IsA"]
       74 CALL                             R6 2 1
       75 JUMPIFNOT                        R6 ; [+1]
       76 RETURN                           R5 1
       77 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeEditingAnimationGraphDefinition"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["createComputed"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["Context"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R0
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R7 0 4
       34 MOVE                             R8 R2
       35 MOVE                             R9 R4
       36 MOVE                             R10 R3
       37 MOVE                             R11 R1
       38 SETLIST                          R7 R8 4 [1]
       40 CALL                             R5 2 1
       41 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeEditingAnimationGraphDefinition"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

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
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["selectionService"]
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 NAMECALL                         R1 R1 K1 ["Set"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["selectionService"]
       16 NEWTABLE                         R3 0 0
       18 NAMECALL                         R1 R1 K1 ["Set"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["idToInstance"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+9]
       10 LOADK                            R4 K2 ["AnimationGraphDefinition"]
       11 NAMECALL                         R2 R1 K3 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 LOADNIL                          R3
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 DUPTABLE                         R0 K6 [{"observeSelectedGraphInstance", "setSelectedGraphInstance", "observeSelectedGraphIsEphemeral", "observeSelectedGraphInstanceId", "setSelectedGraphInstanceIdAsync", "setEphemeralGraphByAssetIdAsync"}]
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
       19 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K2 ["useSignalConsumer"]
       19 LOADNIL                          R5
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R5 R5 K3 ["useConsumer"]
       24 CALL                             R5 0 1
       25 GETUPVAL                         R7 6
       26 CALL                             R7 0 1
       27 JUMPIFNOT                        R7 ; [+5]
       28 GETUPVAL                         R6 7
       29 MOVE                             R7 R4
       30 LOADNIL                          R8
       31 CALL                             R6 2 1
       32 JUMP                             ; [+12]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          VAL R3
       39 NEWTABLE                         R8 0 1
       41 MOVE                             R9 R3
       42 SETLIST                          R8 R9 1 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R1
       52 NEWTABLE                         R9 0 2
       54 MOVE                             R10 R6
       55 GETTABLEKS                       R11 R1 K5 ["instanceRegistry"]
       57 SETLIST                          R9 R10 2 [1]
       59 CALL                             R7 2 1
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       63 NEWCLOSURE                       R9 P2
       64 CAPTURE                          VAL R2
       65 NEWTABLE                         R10 0 1
       67 GETTABLEKS                       R11 R2 K7 ["selectionService"]
       69 SETLIST                          R10 R11 1 [1]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       75 NEWCLOSURE                       R10 P3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R8
       78 NEWTABLE                         R11 0 2
       80 MOVE                             R12 R8
       81 GETTABLEKS                       R13 R2 K7 ["selectionService"]
       83 SETLIST                          R11 R12 2 [1]
       85 CALL                             R9 2 1
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       89 NEWCLOSURE                       R11 P4
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          VAL R4
       92 NEWTABLE                         R12 0 1
       94 MOVE                             R13 R4
       95 SETLIST                          R12 R13 1 [1]
       97 CALL                             R10 2 1
       98 GETUPVAL                         R11 11
       99 GETTABLEKS                       R11 R11 K8 ["useSignalProducer"]
      101 MOVE                             R12 R7
      102 CALL                             R11 1 0
      103 GETUPVAL                         R11 12
      104 GETTABLEKS                       R11 R11 K9 ["useProducer"]
      106 MOVE                             R12 R9
      107 CALL                             R11 1 0
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R11 R11 K4 ["useMemo"]
      111 NEWCLOSURE                       R12 P5
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R5
      118 NEWTABLE                         R13 0 6
      120 MOVE                             R14 R6
      121 MOVE                             R15 R8
      122 MOVE                             R16 R10
      123 MOVE                             R17 R7
      124 MOVE                             R18 R9
      125 MOVE                             R19 R5
      126 SETLIST                          R13 R14 6 [1]
      128 CALL                             R11 2 1
      129 GETUPVAL                         R12 0
      130 GETTABLEKS                       R12 R12 K10 ["createElement"]
      132 GETUPVAL                         R13 13
      133 GETTABLEKS                       R13 R13 K11 ["Provider"]
      135 DUPTABLE                         R14 K13 [{"value"}]
      136 SETTABLEKS                       R11 R14 K12 ["value"]
      138 GETTABLEKS                       R15 R0 K14 ["children"]
      140 CALL                             R12 3 -1
      141 RETURN                           R12 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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
       12 LOADK                            R5 K2 ["AnimationGraphDefinition"]
       13 NAMECALL                         R3 R2 K3 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R2 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_26:
        0 DUPTABLE                         R0 K6 [{"observeSelectedGraphInstance", "setSelectedGraphInstance", "observeSelectedGraphIsEphemeral", "observeSelectedGraphInstanceId", "setSelectedGraphInstanceIdAsync", "setEphemeralGraphByAssetIdAsync"}]
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
       19 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalConsumer"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["useConsumer"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       19 DUPCLOSURE                       R5 K5 [PROTO_19]
       20 CAPTURE                          UPVAL U4
       21 NEWTABLE                         R6 0 0
       23 CALL                             R4 2 2
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       27 NEWCLOSURE                       R7 P1
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R5
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R7 R7 K7 ["useProducer"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 0
       40 GETUPVAL                         R7 6
       41 GETTABLEKS                       R7 R7 K8 ["useSignalProducer"]
       43 MOVE                             R8 R4
       44 CALL                             R7 1 0
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R9 0 2
       53 MOVE                             R10 R3
       54 GETTABLEKS                       R11 R1 K9 ["instanceRegistry"]
       56 SETLIST                          R9 R10 2 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R9 7
       60 CALL                             R9 0 1
       61 JUMPIFNOT                        R9 ; [+5]
       62 GETUPVAL                         R8 8
       63 MOVE                             R9 R4
       64 MOVE                             R10 R2
       65 CALL                             R8 2 1
       66 JUMP                             ; [+15]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       70 NEWCLOSURE                       R9 P3
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R1
       74 NEWTABLE                         R10 0 2
       76 MOVE                             R11 R2
       77 GETTABLEKS                       R12 R1 K9 ["instanceRegistry"]
       79 SETLIST                          R10 R11 2 [1]
       81 CALL                             R8 2 1
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       85 NEWCLOSURE                       R10 P4
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          VAL R4
       88 NEWTABLE                         R11 0 1
       90 MOVE                             R12 R4
       91 SETLIST                          R11 R12 1 [1]
       93 CALL                             R9 2 1
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       97 NEWCLOSURE                       R11 P5
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R6
      104 NEWTABLE                         R12 0 6
      106 MOVE                             R13 R8
      107 MOVE                             R14 R7
      108 MOVE                             R15 R9
      109 MOVE                             R16 R2
      110 MOVE                             R17 R3
      111 MOVE                             R18 R6
      112 SETLIST                          R12 R13 6 [1]
      114 CALL                             R10 2 1
      115 GETUPVAL                         R11 0
      116 GETTABLEKS                       R11 R11 K10 ["createElement"]
      118 GETUPVAL                         R12 11
      119 GETTABLEKS                       R12 R12 K11 ["Provider"]
      121 DUPTABLE                         R13 K13 [{"value"}]
      122 SETTABLEKS                       R10 R13 K12 ["value"]
      124 GETTABLEKS                       R14 R0 K14 ["children"]
      126 CALL                             R11 3 -1
      127 RETURN                           R11 -1

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
       40 GETTABLEKS                       R6 R0 K17 ["Parent"]
       42 GETTABLEKS                       R6 R6 K18 ["React"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K17 ["Parent"]
       49 GETTABLEKS                       R7 R7 K19 ["ReactUtils"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K10 ["Contexts"]
       56 GETTABLEKS                       R8 R8 K20 ["SelectionServiceContext"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K14 ["Util"]
       63 GETTABLEKS                       R9 R9 K21 ["Signals"]
       65 GETTABLEKS                       R9 R9 K22 ["Experimental"]
       67 GETTABLEKS                       R9 R9 K23 ["SignalExperimentalUtils"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R0 K17 ["Parent"]
       74 GETTABLEKS                       R10 R10 K21 ["Signals"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R0 K14 ["Util"]
       81 GETTABLEKS                       R11 R11 K21 ["Signals"]
       83 GETTABLEKS                       R11 R11 K22 ["Experimental"]
       85 GETTABLEKS                       R11 R11 K23 ["SignalExperimentalUtils"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R12 R0 K14 ["Util"]
       92 GETTABLEKS                       R12 R12 K21 ["Signals"]
       94 GETTABLEKS                       R12 R12 K24 ["SignalsInstanceUtils"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R13 R0 K25 ["Flags"]
      101 GETTABLEKS                       R13 R13 K26 ["getFFlagAnimGraphUI_RunTimeDebug"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R14 R0 K27 ["Hooks"]
      108 GETTABLEKS                       R14 R14 K28 ["useObserveSelection"]
      110 CALL                             R13 1 1
      111 DUPTABLE                         R14 K35 [{"observeSelectedGraphInstance", "observeSelectedGraphInstanceId", "observeSelectedGraphIsEphemeral", "setSelectedGraphInstance", "setSelectedGraphInstanceIdAsync", "setEphemeralGraphByAssetIdAsync"}]
      112 GETTABLEKS                       R15 R11 K36 ["of"]
      114 LOADNIL                          R16
      115 CALL                             R15 1 1
      116 SETTABLEKS                       R15 R14 K29 ["observeSelectedGraphInstance"]
      118 GETTABLEKS                       R15 R11 K36 ["of"]
      120 LOADNIL                          R16
      121 CALL                             R15 1 1
      122 SETTABLEKS                       R15 R14 K30 ["observeSelectedGraphInstanceId"]
      124 GETTABLEKS                       R15 R11 K36 ["of"]
      126 LOADB                            R16 0
      127 CALL                             R15 1 1
      128 SETTABLEKS                       R15 R14 K31 ["observeSelectedGraphIsEphemeral"]
      130 GETTABLEKS                       R15 R6 K37 ["createUnimplemented"]
      132 LOADK                            R16 K32 ["setSelectedGraphInstance"]
      133 CALL                             R15 1 1
      134 SETTABLEKS                       R15 R14 K32 ["setSelectedGraphInstance"]
      136 GETTABLEKS                       R15 R6 K37 ["createUnimplemented"]
      138 LOADK                            R16 K33 ["setSelectedGraphInstanceIdAsync"]
      139 CALL                             R15 1 1
      140 SETTABLEKS                       R15 R14 K33 ["setSelectedGraphInstanceIdAsync"]
      142 GETTABLEKS                       R15 R6 K37 ["createUnimplemented"]
      144 LOADK                            R16 K34 ["setEphemeralGraphByAssetIdAsync"]
      145 CALL                             R15 1 1
      146 SETTABLEKS                       R15 R14 K34 ["setEphemeralGraphByAssetIdAsync"]
      148 GETTABLEKS                       R15 R5 K38 ["createContext"]
      150 MOVE                             R16 R14
      151 CALL                             R15 1 1
      152 GETTABLEKS                       R16 R4 K39 ["createBoundAction"]
      154 LOADK                            R17 K40 ["SelectedGraphContext_setSelectedGraphInstanceIdAsync"]
      155 CALL                             R16 1 1
      156 GETTABLEKS                       R17 R4 K39 ["createBoundAction"]
      158 LOADK                            R18 K41 ["SelectedGraphContext_setEphemeralGraphByAssetIdAsync"]
      159 CALL                             R17 1 1
      160 GETTABLEKS                       R18 R4 K42 ["createReplicatedState"]
      162 LOADK                            R19 K43 ["SelectedGraphContext_selectedGraphInstanceId"]
      163 CALL                             R18 1 1
      164 GETTABLEKS                       R19 R4 K42 ["createReplicatedState"]
      166 LOADK                            R20 K44 ["SelectedGraphContext_ephemeralGraphDataAssetId"]
      167 CALL                             R19 1 1
      168 DUPCLOSURE                       R20 K45 [PROTO_9]
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R10
      176 DUPCLOSURE                       R21 K46 [PROTO_18]
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R15
      191 DUPCLOSURE                       R22 K47 [PROTO_27]
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R17
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R15
      204 DUPTABLE                         R23 K51 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      205 SETTABLEKS                       R15 R23 K48 ["Context"]
      207 SETTABLEKS                       R21 R23 K49 ["EditableDataModelProvider"]
      209 SETTABLEKS                       R22 R23 K50 ["UIDataModelProvider"]
      211 RETURN                           R23 1
