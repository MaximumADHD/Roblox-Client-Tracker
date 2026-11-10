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
       14 JUMPIFNOT                        R1 ; [+76]
       15 GETTABLEKS                       R5 R1 K0 ["state"]
       17 JUMPIFNOTEQKS                    R5 K1 ["loaded"] ; [+4]
       19 GETTABLEKS                       R4 R1 K2 ["instance"]
       21 JUMP                             ; [+70]
       22 GETTABLEKS                       R5 R1 K0 ["state"]
       24 JUMPIFNOTEQKS                    R5 K3 ["pending"] ; [+3]
       26 LOADNIL                          R4
       27 JUMP                             ; [+64]
       28 GETTABLEKS                       R5 R1 K0 ["state"]
       30 JUMPIFNOTEQKS                    R5 K4 ["error"] ; [+46]
       32 MOVE                             R4 R2
       33 GETUPVAL                         R5 3
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+29]
       36 GETIMPORT                        R5 K6 [warn]
       38 GETUPVAL                         R6 4
       39 LOADK                            R8 K7 ["Common"]
       40 LOADK                            R9 K8 ["AnimationEditor"]
       41 LOADK                            R10 K9 ["Output"]
       42 LOADK                            R11 K10 ["LoadGraphFailed"]
       43 DUPTABLE                         R12 K13 [{"assetId", "message"}]
       44 GETTABLEKS                       R14 R1 K11 ["assetId"]
       46 FASTCALL1                        TOSTRING R14 ; [+2]
       47 GETIMPORT                        R13 K15 [tostring]
       49 CALL                             R13 1 1
       50 SETTABLEKS                       R13 R12 K11 ["assetId"]
       52 GETTABLEKS                       R14 R1 K12 ["message"]
       54 FASTCALL1                        TOSTRING R14 ; [+2]
       55 GETIMPORT                        R13 K15 [tostring]
       57 CALL                             R13 1 1
       58 SETTABLEKS                       R13 R12 K12 ["message"]
       60 NAMECALL                         R6 R6 K16 ["getExternalText"]
       62 CALL                             R6 6 -1
       63 CALL                             R5 -1 0
       64 JUMP                             ; [+27]
       65 GETIMPORT                        R5 K6 [warn]
       67 LOADK                            R6 K17 ["Error loading graph for assetId $%*: $%*"]
       68 GETTABLEKS                       R8 R1 K11 ["assetId"]
       70 GETTABLEKS                       R9 R1 K12 ["message"]
       72 NAMECALL                         R6 R6 K18 ["format"]
       74 CALL                             R6 3 1
       75 CALL                             R5 1 0
       76 JUMP                             ; [+15]
       77 GETIMPORT                        R5 K19 [error]
       79 LOADK                            R6 K20 ["Unexpected state $%* for assetId $%* with message $%*"]
       80 GETTABLEKS                       R8 R1 K0 ["state"]
       82 GETTABLEKS                       R9 R1 K11 ["assetId"]
       84 GETTABLEKS                       R10 R1 K12 ["message"]
       86 NAMECALL                         R6 R6 K18 ["format"]
       88 CALL                             R6 4 1
       89 CALL                             R5 1 0
       90 JUMP                             ; [+1]
       91 MOVE                             R4 R2
       92 JUMPIFNOT                        R3 ; [+14]
       93 GETUPVAL                         R5 5
       94 GETTABLEKS                       R5 R5 K21 ["instanceRegistry"]
       96 MOVE                             R7 R3
       97 NAMECALL                         R5 R5 K22 ["idToInstance"]
       99 CALL                             R5 2 1
      100 JUMPIFNOT                        R5 ; [+6]
      101 GETUPVAL                         R8 6
      102 NAMECALL                         R6 R5 K23 ["IsA"]
      104 CALL                             R6 2 1
      105 JUMPIFNOT                        R6 ; [+1]
      106 RETURN                           R5 1
      107 RETURN                           R4 1

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
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["observeGraphWithConvertedParameterLayout"]
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K4 ["createComputed"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          VAL R0
       30 CALL                             R3 1 -1
       31 CALL                             R2 -1 -1
       32 RETURN                           R2 -1

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
       23 GETUPVAL                         R5 5
       24 GETTABLEKS                       R5 R5 K3 ["ContextServices"]
       26 GETTABLEKS                       R5 R5 K4 ["Localization"]
       28 NAMECALL                         R5 R5 K5 ["use"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U8
       41 NEWTABLE                         R8 0 2
       43 MOVE                             R9 R0
       44 GETUPVAL                         R11 0
       45 CALL                             R11 0 1
       46 JUMPIFNOT                        R11 ; [+2]
       47 MOVE                             R10 R2
       48 JUMP                             ; [+1]
       49 LOADNIL                          R10
       50 SETLIST                          R8 R9 2 [1]
       52 CALL                             R6 2 1
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       56 NEWCLOSURE                       R8 P1
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          VAL R3
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U11
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 NEWTABLE                         R9 0 6
       70 MOVE                             R10 R3
       71 MOVE                             R11 R6
       72 MOVE                             R12 R4
       73 MOVE                             R13 R1
       74 GETUPVAL                         R15 0
       75 CALL                             R15 0 1
       76 JUMPIFNOT                        R15 ; [+2]
       77 MOVE                             R14 R2
       78 JUMP                             ; [+1]
       79 LOADNIL                          R14
       80 MOVE                             R15 R5
       81 SETLIST                          R9 R10 6 [1]
       83 CALL                             R7 2 1
       84 RETURN                           R7 1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["selectionService"]
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 NAMECALL                         R1 R1 K1 ["Set"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K0 ["selectionService"]
       19 NEWTABLE                         R3 0 0
       21 NAMECALL                         R1 R1 K1 ["Set"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+4]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 RETURN                           R0 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       29 GETTABLEKS                       R4 R4 K3 ["useSignalConsumer"]
       31 LOADNIL                          R5
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 6
       34 GETTABLEKS                       R5 R5 K4 ["useConsumer"]
       36 CALL                             R5 0 1
       37 GETUPVAL                         R6 7
       38 MOVE                             R7 R4
       39 LOADNIL                          R8
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R9 0 2
       50 MOVE                             R10 R6
       51 GETTABLEKS                       R11 R1 K6 ["instanceRegistry"]
       53 SETLIST                          R9 R10 2 [1]
       55 CALL                             R7 2 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K0 ["useContext"]
       59 GETUPVAL                         R9 9
       60 GETTABLEKS                       R9 R9 K1 ["Context"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R8 K7 ["lastOpenedGraph"]
       65 GETTABLEKS                       R10 R8 K8 ["setLastOpenedGraph"]
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       70 NEWCLOSURE                       R12 P1
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R10
       73 NEWTABLE                         R13 0 2
       75 GETTABLEKS                       R14 R3 K10 ["selectionService"]
       77 MOVE                             R15 R10
       78 SETLIST                          R13 R14 2 [1]
       80 CALL                             R11 2 1
       81 GETUPVAL                         R12 0
       82 GETTABLEKS                       R12 R12 K11 ["useEffect"]
       84 NEWCLOSURE                       R13 P2
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R10
       88 NEWTABLE                         R14 0 2
       90 MOVE                             R15 R6
       91 MOVE                             R16 R10
       92 SETLIST                          R14 R15 2 [1]
       94 CALL                             R12 2 0
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R12 R12 K11 ["useEffect"]
       98 NEWCLOSURE                       R13 P3
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R11
      102 NEWTABLE                         R14 0 1
      104 MOVE                             R15 R9
      105 SETLIST                          R14 R15 1 [1]
      107 CALL                             R12 2 0
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R12 R12 K9 ["useCallback"]
      111 NEWCLOSURE                       R13 P4
      112 CAPTURE                          UPVAL U2
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R11
      117 NEWTABLE                         R14 0 4
      119 MOVE                             R15 R11
      120 GETTABLEKS                       R16 R3 K10 ["selectionService"]
      122 GETTABLEKS                       R17 R1 K6 ["instanceRegistry"]
      124 GETUPVAL                         R19 2
      125 CALL                             R19 0 1
      126 JUMPIFNOT                        R19 ; [+2]
      127 MOVE                             R18 R2
      128 JUMP                             ; [+1]
      129 LOADNIL                          R18
      130 SETLIST                          R14 R15 4 [1]
      132 CALL                             R12 2 1
      133 GETUPVAL                         R13 0
      134 GETTABLEKS                       R13 R13 K5 ["useMemo"]
      136 NEWCLOSURE                       R14 P5
      137 CAPTURE                          UPVAL U12
      138 CAPTURE                          VAL R4
      139 NEWTABLE                         R15 0 1
      141 MOVE                             R16 R4
      142 SETLIST                          R15 R16 1 [1]
      144 CALL                             R13 2 1
      145 GETUPVAL                         R14 0
      146 GETTABLEKS                       R14 R14 K9 ["useCallback"]
      148 NEWCLOSURE                       R15 P6
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R3
      151 NEWTABLE                         R16 0 2
      153 MOVE                             R17 R6
      154 GETTABLEKS                       R18 R3 K10 ["selectionService"]
      156 SETLIST                          R16 R17 2 [1]
      158 CALL                             R14 2 1
      159 GETUPVAL                         R15 13
      160 GETTABLEKS                       R15 R15 K12 ["useSignalProducer"]
      162 MOVE                             R16 R7
      163 CALL                             R15 1 0
      164 GETUPVAL                         R15 14
      165 GETTABLEKS                       R15 R15 K13 ["useProducer"]
      167 MOVE                             R16 R12
      168 CALL                             R15 1 0
      169 GETUPVAL                         R15 15
      170 GETTABLEKS                       R15 R15 K13 ["useProducer"]
      172 MOVE                             R16 R14
      173 CALL                             R15 1 0
      174 GETUPVAL                         R15 0
      175 GETTABLEKS                       R15 R15 K5 ["useMemo"]
      177 NEWCLOSURE                       R16 P7
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R14
      185 NEWTABLE                         R17 0 7
      187 MOVE                             R18 R6
      188 MOVE                             R19 R11
      189 MOVE                             R20 R13
      190 MOVE                             R21 R7
      191 MOVE                             R22 R12
      192 MOVE                             R23 R5
      193 MOVE                             R24 R14
      194 SETLIST                          R17 R18 7 [1]
      196 CALL                             R15 2 1
      197 GETUPVAL                         R16 0
      198 GETTABLEKS                       R16 R16 K14 ["createElement"]
      200 GETUPVAL                         R17 16
      201 GETTABLEKS                       R17 R17 K15 ["Provider"]
      203 DUPTABLE                         R18 K17 [{"value"}]
      204 SETTABLEKS                       R15 R18 K16 ["value"]
      206 GETTABLEKS                       R19 R0 K18 ["children"]
      208 CALL                             R16 3 -1
      209 RETURN                           R16 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_27:
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

PROTO_28:
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
       19 DUPCLOSURE                       R5 K5 [PROTO_22]
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
       59 GETUPVAL                         R8 7
       60 MOVE                             R9 R4
       61 MOVE                             R10 R2
       62 CALL                             R8 2 1
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       66 NEWCLOSURE                       R10 P3
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R4
       69 NEWTABLE                         R11 0 1
       71 MOVE                             R12 R4
       72 SETLIST                          R11 R12 1 [1]
       74 CALL                             R9 2 1
       75 GETUPVAL                         R10 9
       76 GETTABLEKS                       R10 R10 K3 ["useConsumer"]
       78 CALL                             R10 0 1
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       82 NEWCLOSURE                       R12 P4
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R10
       90 NEWTABLE                         R13 0 7
       92 MOVE                             R14 R8
       93 MOVE                             R15 R7
       94 MOVE                             R16 R9
       95 MOVE                             R17 R2
       96 MOVE                             R18 R3
       97 MOVE                             R19 R6
       98 MOVE                             R20 R10
       99 SETLIST                          R13 R14 7 [1]
      101 CALL                             R11 2 1
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K10 ["createElement"]
      105 GETUPVAL                         R13 10
      106 GETTABLEKS                       R13 R13 K11 ["Provider"]
      108 DUPTABLE                         R14 K13 [{"value"}]
      109 SETTABLEKS                       R11 R14 K12 ["value"]
      111 GETTABLEKS                       R15 R0 K14 ["children"]
      113 CALL                             R12 3 -1
      114 RETURN                           R12 -1

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
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K13 ["InstanceRegistryContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K14 ["NativeGraphContext"]
       33 GETTABLEKS                       R5 R5 K15 ["NativeGraphUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K16 ["Util"]
       40 GETTABLEKS                       R6 R6 K17 ["Networking"]
       42 GETTABLEKS                       R6 R6 K18 ["NetworkUtils"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K12 ["Contexts"]
       49 GETTABLEKS                       R7 R7 K19 ["OpenableAssetTypeContext"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       56 GETTABLEKS                       R8 R8 K19 ["OpenableAssetTypeContext"]
       58 GETTABLEKS                       R8 R8 K20 ["OpenableAssetTypeUtils"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K10 ["Parent"]
       65 GETTABLEKS                       R9 R9 K21 ["React"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Parent"]
       72 GETTABLEKS                       R10 R10 K22 ["ReactUtils"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K12 ["Contexts"]
       79 GETTABLEKS                       R11 R11 K23 ["SelectionServiceContext"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K16 ["Util"]
       86 GETTABLEKS                       R12 R12 K24 ["Signals"]
       88 GETTABLEKS                       R12 R12 K25 ["Experimental"]
       90 GETTABLEKS                       R12 R12 K26 ["SignalExperimentalUtils"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K10 ["Parent"]
       97 GETTABLEKS                       R13 R13 K24 ["Signals"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R0 K16 ["Util"]
      104 GETTABLEKS                       R14 R14 K24 ["Signals"]
      106 GETTABLEKS                       R14 R14 K25 ["Experimental"]
      108 GETTABLEKS                       R14 R14 K26 ["SignalExperimentalUtils"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K9 [require]
      113 GETTABLEKS                       R15 R0 K16 ["Util"]
      115 GETTABLEKS                       R15 R15 K24 ["Signals"]
      117 GETTABLEKS                       R15 R15 K27 ["SignalsInstanceUtils"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K9 [require]
      122 GETTABLEKS                       R16 R0 K28 ["Types"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K9 [require]
      127 GETTABLEKS                       R17 R0 K29 ["Flags"]
      129 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimGraphUI_Localization2"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K9 [require]
      134 GETTABLEKS                       R18 R0 K29 ["Flags"]
      136 GETTABLEKS                       R18 R18 K31 ["getFFlagAnimationEditorAnimationTypes"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K9 [require]
      141 GETTABLEKS                       R19 R0 K32 ["Hooks"]
      143 GETTABLEKS                       R19 R19 K33 ["useObserveSelection"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K9 [require]
      148 GETTABLEKS                       R20 R0 K12 ["Contexts"]
      150 GETTABLEKS                       R20 R20 K34 ["LastOpenedGraphContext"]
      152 CALL                             R19 1 1
      153 DUPTABLE                         R20 K42 [{"observeSelectedGraphInstance", "observeSelectedGraphInstanceId", "observeSelectedGraphIsEphemeral", "setSelectedGraphInstance", "setSelectedGraphInstanceIdAsync", "setEphemeralGraphByAssetIdAsync", "showInExplorer"}]
      154 GETTABLEKS                       R21 R14 K43 ["of"]
      156 LOADNIL                          R22
      157 CALL                             R21 1 1
      158 SETTABLEKS                       R21 R20 K35 ["observeSelectedGraphInstance"]
      160 GETTABLEKS                       R21 R14 K43 ["of"]
      162 LOADNIL                          R22
      163 CALL                             R21 1 1
      164 SETTABLEKS                       R21 R20 K36 ["observeSelectedGraphInstanceId"]
      166 GETTABLEKS                       R21 R14 K43 ["of"]
      168 LOADB                            R22 0
      169 CALL                             R21 1 1
      170 SETTABLEKS                       R21 R20 K37 ["observeSelectedGraphIsEphemeral"]
      172 GETTABLEKS                       R21 R9 K44 ["createUnimplemented"]
      174 LOADK                            R22 K38 ["setSelectedGraphInstance"]
      175 CALL                             R21 1 1
      176 SETTABLEKS                       R21 R20 K38 ["setSelectedGraphInstance"]
      178 GETTABLEKS                       R21 R9 K44 ["createUnimplemented"]
      180 LOADK                            R22 K39 ["setSelectedGraphInstanceIdAsync"]
      181 CALL                             R21 1 1
      182 SETTABLEKS                       R21 R20 K39 ["setSelectedGraphInstanceIdAsync"]
      184 GETTABLEKS                       R21 R9 K44 ["createUnimplemented"]
      186 LOADK                            R22 K40 ["setEphemeralGraphByAssetIdAsync"]
      187 CALL                             R21 1 1
      188 SETTABLEKS                       R21 R20 K40 ["setEphemeralGraphByAssetIdAsync"]
      190 GETTABLEKS                       R21 R9 K44 ["createUnimplemented"]
      192 LOADK                            R22 K41 ["showInExplorer"]
      193 CALL                             R21 1 1
      194 SETTABLEKS                       R21 R20 K41 ["showInExplorer"]
      196 GETTABLEKS                       R21 R8 K45 ["createContext"]
      198 MOVE                             R22 R20
      199 CALL                             R21 1 1
      200 GETTABLEKS                       R22 R5 K46 ["createBoundAction"]
      202 LOADK                            R23 K47 ["SelectedGraphContext_setSelectedGraphInstanceIdAsync"]
      203 CALL                             R22 1 1
      204 GETTABLEKS                       R23 R5 K46 ["createBoundAction"]
      206 LOADK                            R24 K48 ["SelectedGraphContext_setEphemeralGraphByAssetIdAsync"]
      207 CALL                             R23 1 1
      208 GETTABLEKS                       R24 R5 K46 ["createBoundAction"]
      210 LOADK                            R25 K49 ["SelectedGraphContext_showInExplorer"]
      211 CALL                             R24 1 1
      212 GETTABLEKS                       R25 R5 K50 ["createReplicatedState"]
      214 LOADK                            R26 K51 ["SelectedGraphContext_selectedGraphInstanceId"]
      215 CALL                             R25 1 1
      216 GETTABLEKS                       R26 R5 K50 ["createReplicatedState"]
      218 LOADK                            R27 K52 ["SelectedGraphContext_ephemeralGraphDataAssetId"]
      219 CALL                             R26 1 1
      220 DUPCLOSURE                       R27 K53 [PROTO_9]
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R16
      233 DUPCLOSURE                       R28 K54 [PROTO_21]
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R3
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R27
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R13
      247 CAPTURE                          VAL R25
      248 CAPTURE                          VAL R22
      249 CAPTURE                          VAL R24
      250 CAPTURE                          VAL R21
      251 DUPCLOSURE                       R29 K55 [PROTO_28]
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R3
      254 CAPTURE                          VAL R25
      255 CAPTURE                          VAL R22
      256 CAPTURE                          VAL R12
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R26
      259 CAPTURE                          VAL R27
      260 CAPTURE                          VAL R13
      261 CAPTURE                          VAL R24
      262 CAPTURE                          VAL R21
      263 DUPTABLE                         R30 K59 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      264 SETTABLEKS                       R21 R30 K56 ["Context"]
      266 SETTABLEKS                       R28 R30 K57 ["EditableDataModelProvider"]
      268 SETTABLEKS                       R29 R30 K58 ["UIDataModelProvider"]
      270 RETURN                           R30 1
