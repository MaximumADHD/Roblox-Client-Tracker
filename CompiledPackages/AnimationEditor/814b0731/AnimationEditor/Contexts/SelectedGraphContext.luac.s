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
       61 GETTABLEKS                       R8 R8 K0 ["useContext"]
       63 GETUPVAL                         R9 10
       64 GETTABLEKS                       R9 R9 K1 ["Context"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R8 K6 ["lastOpenedGraph"]
       69 GETTABLEKS                       R10 R8 K7 ["setLastOpenedGraph"]
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       74 NEWCLOSURE                       R12 P2
       75 CAPTURE                          VAL R2
       76 CAPTURE                          UPVAL U11
       77 CAPTURE                          VAL R10
       78 NEWTABLE                         R13 0 2
       80 GETTABLEKS                       R14 R2 K9 ["selectionService"]
       82 MOVE                             R15 R10
       83 SETLIST                          R13 R14 2 [1]
       85 CALL                             R11 2 1
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R12 R12 K10 ["useEffect"]
       89 NEWCLOSURE                       R13 P3
       90 CAPTURE                          UPVAL U11
       91 CAPTURE                          UPVAL U12
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R10
       94 NEWTABLE                         R14 0 2
       96 MOVE                             R15 R6
       97 MOVE                             R16 R10
       98 SETLIST                          R14 R15 2 [1]
      100 CALL                             R12 2 0
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K10 ["useEffect"]
      104 NEWCLOSURE                       R13 P4
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R11
      108 NEWTABLE                         R14 0 1
      110 MOVE                             R15 R9
      111 SETLIST                          R14 R15 1 [1]
      113 CALL                             R12 2 0
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      117 NEWCLOSURE                       R13 P5
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R11
      120 NEWTABLE                         R14 0 2
      122 MOVE                             R15 R11
      123 GETTABLEKS                       R16 R2 K9 ["selectionService"]
      125 SETLIST                          R14 R15 2 [1]
      127 CALL                             R12 2 1
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R13 R13 K4 ["useMemo"]
      131 NEWCLOSURE                       R14 P6
      132 CAPTURE                          UPVAL U13
      133 CAPTURE                          VAL R4
      134 NEWTABLE                         R15 0 1
      136 MOVE                             R16 R4
      137 SETLIST                          R15 R16 1 [1]
      139 CALL                             R13 2 1
      140 GETUPVAL                         R14 0
      141 GETTABLEKS                       R14 R14 K8 ["useCallback"]
      143 NEWCLOSURE                       R15 P7
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R2
      146 NEWTABLE                         R16 0 2
      148 MOVE                             R17 R6
      149 GETTABLEKS                       R18 R2 K9 ["selectionService"]
      151 SETLIST                          R16 R17 2 [1]
      153 CALL                             R14 2 1
      154 GETUPVAL                         R15 14
      155 GETTABLEKS                       R15 R15 K11 ["useSignalProducer"]
      157 MOVE                             R16 R7
      158 CALL                             R15 1 0
      159 GETUPVAL                         R15 15
      160 GETTABLEKS                       R15 R15 K12 ["useProducer"]
      162 MOVE                             R16 R12
      163 CALL                             R15 1 0
      164 GETUPVAL                         R15 16
      165 GETTABLEKS                       R15 R15 K12 ["useProducer"]
      167 MOVE                             R16 R14
      168 CALL                             R15 1 0
      169 GETUPVAL                         R15 0
      170 GETTABLEKS                       R15 R15 K4 ["useMemo"]
      172 NEWCLOSURE                       R16 P8
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R14
      180 NEWTABLE                         R17 0 7
      182 MOVE                             R18 R6
      183 MOVE                             R19 R11
      184 MOVE                             R20 R13
      185 MOVE                             R21 R7
      186 MOVE                             R22 R12
      187 MOVE                             R23 R5
      188 MOVE                             R24 R14
      189 SETLIST                          R17 R18 7 [1]
      191 CALL                             R15 2 1
      192 GETUPVAL                         R16 0
      193 GETTABLEKS                       R16 R16 K13 ["createElement"]
      195 GETUPVAL                         R17 17
      196 GETTABLEKS                       R17 R17 K14 ["Provider"]
      198 DUPTABLE                         R18 K16 [{"value"}]
      199 SETTABLEKS                       R15 R18 K15 ["value"]
      201 GETTABLEKS                       R19 R0 K17 ["children"]
      203 CALL                             R16 3 -1
      204 RETURN                           R16 -1

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
       12 LOADK                            R5 K2 ["AnimationGraphDefinition"]
       13 NAMECALL                         R3 R2 K3 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R2 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

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
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalConsumer"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["useConsumer"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       19 DUPCLOSURE                       R5 K5 [PROTO_23]
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
       94 GETUPVAL                         R10 11
       95 GETTABLEKS                       R10 R10 K3 ["useConsumer"]
       97 CALL                             R10 0 1
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K4 ["useMemo"]
      101 NEWCLOSURE                       R12 P5
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R10
      109 NEWTABLE                         R13 0 7
      111 MOVE                             R14 R8
      112 MOVE                             R15 R7
      113 MOVE                             R16 R9
      114 MOVE                             R17 R2
      115 MOVE                             R18 R3
      116 MOVE                             R19 R6
      117 MOVE                             R20 R10
      118 SETLIST                          R13 R14 7 [1]
      120 CALL                             R11 2 1
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K10 ["createElement"]
      124 GETUPVAL                         R13 12
      125 GETTABLEKS                       R13 R13 K11 ["Provider"]
      127 DUPTABLE                         R14 K13 [{"value"}]
      128 SETTABLEKS                       R11 R14 K12 ["value"]
      130 GETTABLEKS                       R15 R0 K14 ["children"]
      132 CALL                             R12 3 -1
      133 RETURN                           R12 -1

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
      101 GETTABLEKS                       R13 R13 K26 ["getFFlagAnimGraphUIReopenLastGraph"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R14 R0 K25 ["Flags"]
      108 GETTABLEKS                       R14 R14 K27 ["getFFlagAnimGraphUI_RunTimeDebug"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K9 [require]
      113 GETTABLEKS                       R15 R0 K28 ["Hooks"]
      115 GETTABLEKS                       R15 R15 K29 ["useObserveSelection"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R16 R0 K10 ["Contexts"]
      122 GETTABLEKS                       R16 R16 K30 ["LastOpenedGraphContext"]
      124 CALL                             R15 1 1
      125 DUPTABLE                         R16 K38 [{"observeSelectedGraphInstance", "observeSelectedGraphInstanceId", "observeSelectedGraphIsEphemeral", "setSelectedGraphInstance", "setSelectedGraphInstanceIdAsync", "setEphemeralGraphByAssetIdAsync", "showInExplorer"}]
      126 GETTABLEKS                       R17 R11 K39 ["of"]
      128 LOADNIL                          R18
      129 CALL                             R17 1 1
      130 SETTABLEKS                       R17 R16 K31 ["observeSelectedGraphInstance"]
      132 GETTABLEKS                       R17 R11 K39 ["of"]
      134 LOADNIL                          R18
      135 CALL                             R17 1 1
      136 SETTABLEKS                       R17 R16 K32 ["observeSelectedGraphInstanceId"]
      138 GETTABLEKS                       R17 R11 K39 ["of"]
      140 LOADB                            R18 0
      141 CALL                             R17 1 1
      142 SETTABLEKS                       R17 R16 K33 ["observeSelectedGraphIsEphemeral"]
      144 GETTABLEKS                       R17 R6 K40 ["createUnimplemented"]
      146 LOADK                            R18 K34 ["setSelectedGraphInstance"]
      147 CALL                             R17 1 1
      148 SETTABLEKS                       R17 R16 K34 ["setSelectedGraphInstance"]
      150 GETTABLEKS                       R17 R6 K40 ["createUnimplemented"]
      152 LOADK                            R18 K35 ["setSelectedGraphInstanceIdAsync"]
      153 CALL                             R17 1 1
      154 SETTABLEKS                       R17 R16 K35 ["setSelectedGraphInstanceIdAsync"]
      156 GETTABLEKS                       R17 R6 K40 ["createUnimplemented"]
      158 LOADK                            R18 K36 ["setEphemeralGraphByAssetIdAsync"]
      159 CALL                             R17 1 1
      160 SETTABLEKS                       R17 R16 K36 ["setEphemeralGraphByAssetIdAsync"]
      162 GETTABLEKS                       R17 R6 K40 ["createUnimplemented"]
      164 LOADK                            R18 K37 ["showInExplorer"]
      165 CALL                             R17 1 1
      166 SETTABLEKS                       R17 R16 K37 ["showInExplorer"]
      168 GETTABLEKS                       R17 R5 K41 ["createContext"]
      170 MOVE                             R18 R16
      171 CALL                             R17 1 1
      172 GETTABLEKS                       R18 R4 K42 ["createBoundAction"]
      174 LOADK                            R19 K43 ["SelectedGraphContext_setSelectedGraphInstanceIdAsync"]
      175 CALL                             R18 1 1
      176 GETTABLEKS                       R19 R4 K42 ["createBoundAction"]
      178 LOADK                            R20 K44 ["SelectedGraphContext_setEphemeralGraphByAssetIdAsync"]
      179 CALL                             R19 1 1
      180 GETTABLEKS                       R20 R4 K42 ["createBoundAction"]
      182 LOADK                            R21 K45 ["SelectedGraphContext_showInExplorer"]
      183 CALL                             R20 1 1
      184 GETTABLEKS                       R21 R4 K46 ["createReplicatedState"]
      186 LOADK                            R22 K47 ["SelectedGraphContext_selectedGraphInstanceId"]
      187 CALL                             R21 1 1
      188 GETTABLEKS                       R22 R4 K46 ["createReplicatedState"]
      190 LOADK                            R23 K48 ["SelectedGraphContext_ephemeralGraphDataAssetId"]
      191 CALL                             R22 1 1
      192 DUPCLOSURE                       R23 K49 [PROTO_9]
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R10
      200 DUPCLOSURE                       R24 K50 [PROTO_22]
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R17
      219 DUPCLOSURE                       R25 K51 [PROTO_31]
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R23
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R17
      233 DUPTABLE                         R26 K55 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      234 SETTABLEKS                       R17 R26 K52 ["Context"]
      236 SETTABLEKS                       R24 R26 K53 ["EditableDataModelProvider"]
      238 SETTABLEKS                       R25 R26 K54 ["UIDataModelProvider"]
      240 RETURN                           R26 1
