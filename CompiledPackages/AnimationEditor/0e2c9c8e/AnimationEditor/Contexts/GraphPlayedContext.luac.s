PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R1 R2
       11 GETIMPORT                        R2 K4 [table.freeze]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R3 K0 ["CharacterName"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["GraphName"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R1 ; [+16]
        9 JUMPIFNOT                        R2 ; [+15]
       10 GETTABLEKS                       R3 R1 K3 ["Value"]
       12 JUMPIFEQKS                       R3 K4 [""] ; [+12]
       14 GETTABLEKS                       R3 R2 K3 ["Value"]
       16 JUMPIFEQKS                       R3 K4 [""] ; [+8]
       18 GETTABLEKS                       R4 R1 K3 ["Value"]
       20 LOADK                            R5 K5 ["_"]
       21 GETTABLEKS                       R6 R2 K3 ["Value"]
       23 CONCAT                           R3 R4 R6
       24 RETURN                           R3 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 SETTABLE                         R7 R2 R6
        9 FORGLOOP                         R3 2 ; [-2]
       11 GETIMPORT                        R3 K4 [table.freeze]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_5:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETTABLE                         R3 R0 R1
        4 JUMPIFEQKB                       R3 TRUE ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["AnimationGraphEditor"]
        5 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R1 2
       10 LOADK                            R4 K2 ["CurrentAnimationId"]
       11 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K3 ["current"]
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetDebugData"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsServer"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["setDebugDataAsync"]
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K2 ["GetDebugData"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K2 [task.spawn]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K3 ["PostSimulation"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U0
       18 NAMECALL                         R0 R0 K4 ["Connect"]
       20 CALL                             R0 2 1
       21 NEWCLOSURE                       R1 P2
       22 CAPTURE                          VAL R0
       23 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+4]
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R3 1 0
        7 JUMPIFNOT                        R1 ; [+56]
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 1
       10 CALL                             R3 1 0
       11 JUMPIFNOT                        R2 ; [+31]
       12 LOADK                            R6 K0 ["CharacterName"]
       13 NAMECALL                         R4 R2 K1 ["FindFirstChild"]
       15 CALL                             R4 2 1
       16 LOADK                            R7 K2 ["GraphName"]
       17 NAMECALL                         R5 R2 K1 ["FindFirstChild"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R4 ; [+16]
       21 JUMPIFNOT                        R5 ; [+15]
       22 GETTABLEKS                       R6 R4 K3 ["Value"]
       24 JUMPIFEQKS                       R6 K4 [""] ; [+12]
       26 GETTABLEKS                       R6 R5 K3 ["Value"]
       28 JUMPIFEQKS                       R6 K4 [""] ; [+8]
       30 GETTABLEKS                       R6 R4 K3 ["Value"]
       32 LOADK                            R7 K5 ["_"]
       33 GETTABLEKS                       R8 R5 K3 ["Value"]
       35 CONCAT                           R3 R6 R8
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 JUMPIFNOT                        R3 ; [+4]
       39 GETUPVAL                         R4 3
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          VAL R3
       42 CALL                             R4 1 0
       43 GETUPVAL                         R3 0
       44 CALL                             R3 0 1
       45 JUMPIF                           R3 ; [+18]
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R3 R3 K6 ["current"]
       49 JUMPIFNOT                        R3 ; [+14]
       50 GETTABLEKS                       R4 R3 K3 ["Value"]
       52 JUMPIFEQKS                       R4 K4 [""] ; [+11]
       54 GETTABLEKS                       R4 R3 K3 ["Value"]
       56 JUMPIFEQ                         R4 R0 ; [+7]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R6 R3 K3 ["Value"]
       61 NEWCLOSURE                       R5 P0
       62 CAPTURE                          VAL R6
       63 CALL                             R4 1 0
       64 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R3 K0 ["Animator"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeDescendantsWithPredicate"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_12]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAnimationClipAsync"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        7 NAMECALL                         R1 R0 K2 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["Animation"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K1 ["AnimationId"]
        6 JUMPIFNOT                        R2 ; [+26]
        7 JUMPIFEQKS                       R2 K2 [""] ; [+25]
        9 LOADK                            R5 K3 ["AnimationEditor_GraphAnimation"]
       10 NAMECALL                         R3 R1 K4 ["HasTag"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 CALL                             R4 0 1
       15 JUMPIFNOT                        R4 ; [+8]
       16 GETIMPORT                        R4 K7 [task.spawn]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CALL                             R4 1 0
       24 GETUPVAL                         R4 3
       25 MOVE                             R5 R2
       26 MOVE                             R6 R3
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETTABLEKS                       R7 R1 K8 ["Parent"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R7
       32 CALL                             R4 3 0
       33 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADB                            R8 1
       10 SETTABLE                         R8 R2 R7
       11 FORGLOOP                         R3 2 ; [-3]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K0 ["current"]
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETTABLE                         R8 R2 R6
       20 JUMPIF                           R8 ; [+14]
       21 MOVE                             R8 R7
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 NAMECALL                         R13 R12 K1 ["Disconnect"]
       27 CALL                             R13 1 0
       28 FORGLOOP                         R8 2 ; [-4]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K0 ["current"]
       33 LOADNIL                          R9
       34 SETTABLE                         R9 R8 R6
       35 FORGLOOP                         R3 2 ; [-17]
       37 MOVE                             R3 R1
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K0 ["current"]
       44 GETTABLE                         R8 R9 R7
       45 JUMPIF                           R8 ; [+33]
       46 NEWTABLE                         R8 0 0
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 GETTABLEKS                       R10 R7 K2 ["AnimationPlayed"]
       55 MOVE                             R12 R9
       56 NAMECALL                         R10 R10 K3 ["Connect"]
       58 CALL                             R10 2 1
       59 NAMECALL                         R11 R7 K4 ["GetPlayingAnimationTracks"]
       61 CALL                             R11 1 3
       62 FORGPREP                         R11
       63 MOVE                             R16 R9
       64 MOVE                             R17 R15
       65 CALL                             R16 1 0
       66 FORGLOOP                         R11 2 ; [-4]
       68 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
       70 MOVE                             R12 R8
       71 MOVE                             R13 R10
       72 GETIMPORT                        R11 K7 [table.insert]
       74 CALL                             R11 2 0
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R11 R11 K0 ["current"]
       78 SETTABLE                         R8 R11 R7
       79 FORGLOOP                         R3 2 ; [-39]
       81 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R4
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 NAMECALL                         R10 R9 K1 ["Disconnect"]
       14 CALL                             R10 1 0
       15 FORGLOOP                         R5 2 ; [-4]
       17 FORGLOOP                         R0 2 ; [-10]
       19 GETUPVAL                         R0 1
       20 NEWTABLE                         R1 0 0
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 1
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_20:
        0 DUPTABLE                         R0 K7 [{"DEPRECATED_playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "previewDataModelDidBootstrap", "DEPRECATED_wasGraphPlayed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DEPRECATED_playedAssetIds"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["playedGraphKeys"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["previewHasEnded"]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K3 ["isPreviewRunning"]
       13 GETUPVAL                         R1 2
       14 SETTABLEKS                       R1 R0 K4 ["graphAnimationWasPlayed"]
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K5 ["previewDataModelDidBootstrap"]
       19 GETUPVAL                         R1 3
       20 SETTABLEKS                       R1 R0 K6 ["DEPRECATED_wasGraphPlayed"]
       22 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["useState"]
       15 NEWTABLE                         R3 0 0
       17 CALL                             R2 1 2
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K2 ["useState"]
       21 NEWTABLE                         R5 0 0
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K2 ["useState"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 2
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K2 ["useState"]
       32 LOADB                            R9 0
       33 CALL                             R8 1 2
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K3 ["useRef"]
       37 NEWTABLE                         R11 0 0
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R11 R11 K3 ["useRef"]
       43 LOADNIL                          R12
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K4 ["useEffect"]
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R11
       52 NEWTABLE                         R14 0 0
       54 CALL                             R12 2 0
       55 GETUPVAL                         R12 0
       56 CALL                             R12 0 1
       57 JUMPIFNOT                        R12 ; [+15]
       58 GETUPVAL                         R12 1
       59 GETTABLEKS                       R12 R12 K4 ["useEffect"]
       61 NEWCLOSURE                       R13 P1
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U5
       65 NEWTABLE                         R14 0 2
       67 MOVE                             R15 R6
       68 GETTABLEKS                       R16 R1 K5 ["setDebugDataAsync"]
       70 SETLIST                          R14 R15 2 [1]
       72 CALL                             R12 2 0
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R12 R12 K6 ["useCallback"]
       76 NEWCLOSURE                       R13 P2
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R11
       82 NEWTABLE                         R14 0 3
       84 MOVE                             R15 R3
       85 MOVE                             R16 R5
       86 MOVE                             R17 R9
       87 SETLIST                          R14 R15 3 [1]
       89 CALL                             R12 2 1
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R13 R13 K7 ["useMemo"]
       93 DUPCLOSURE                       R14 K8 [PROTO_13]
       94 CAPTURE                          UPVAL U6
       95 CAPTURE                          UPVAL U7
       96 NEWTABLE                         R15 0 0
       98 CALL                             R13 2 1
       99 GETUPVAL                         R14 1
      100 GETTABLEKS                       R14 R14 K4 ["useEffect"]
      102 NEWCLOSURE                       R15 P4
      103 CAPTURE                          UPVAL U8
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R10
      106 CAPTURE                          UPVAL U0
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R12
      110 NEWTABLE                         R16 0 2
      112 MOVE                             R17 R13
      113 MOVE                             R18 R12
      114 SETLIST                          R16 R17 2 [1]
      116 CALL                             R14 2 0
      117 GETUPVAL                         R14 3
      118 CALL                             R14 0 1
      119 JUMPIF                           R14 ; [+8]
      120 GETUPVAL                         R14 10
      121 GETTABLEKS                       R14 R14 K9 ["useReplicatedState"]
      123 GETUPVAL                         R15 11
      124 GETTABLEKS                       R15 R15 K10 ["PLAYED_ASSET_IDS"]
      126 MOVE                             R16 R2
      127 CALL                             R14 2 0
      128 GETUPVAL                         R14 10
      129 GETTABLEKS                       R14 R14 K9 ["useReplicatedState"]
      131 GETUPVAL                         R15 11
      132 GETTABLEKS                       R15 R15 K11 ["PLAYED_GRAPH_KEYS"]
      134 MOVE                             R16 R4
      135 CALL                             R14 2 0
      136 GETUPVAL                         R14 10
      137 GETTABLEKS                       R14 R14 K9 ["useReplicatedState"]
      139 GETUPVAL                         R15 11
      140 GETTABLEKS                       R15 R15 K12 ["GRAPH_ANIMATION_WAS_PLAYED"]
      142 MOVE                             R16 R8
      143 CALL                             R14 2 0
      144 GETUPVAL                         R14 10
      145 GETTABLEKS                       R14 R14 K9 ["useReplicatedState"]
      147 GETUPVAL                         R15 11
      148 GETTABLEKS                       R15 R15 K13 ["PREVIEW_DID_BOOTSTRAP"]
      150 LOADB                            R16 1
      151 CALL                             R14 2 0
      152 GETUPVAL                         R14 1
      153 GETTABLEKS                       R14 R14 K6 ["useCallback"]
      155 NEWCLOSURE                       R15 P5
      156 CAPTURE                          VAL R2
      157 NEWTABLE                         R16 0 1
      159 MOVE                             R17 R2
      160 SETLIST                          R16 R17 1 [1]
      162 CALL                             R14 2 1
      163 GETUPVAL                         R15 1
      164 GETTABLEKS                       R15 R15 K7 ["useMemo"]
      166 NEWCLOSURE                       R16 P6
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R14
      171 NEWTABLE                         R17 0 4
      173 MOVE                             R18 R2
      174 MOVE                             R19 R4
      175 MOVE                             R20 R8
      176 MOVE                             R21 R14
      177 SETLIST                          R17 R18 4 [1]
      179 CALL                             R15 2 1
      180 GETUPVAL                         R16 1
      181 GETTABLEKS                       R16 R16 K14 ["createElement"]
      183 GETUPVAL                         R17 12
      184 GETTABLEKS                       R17 R17 K15 ["Provider"]
      186 DUPTABLE                         R18 K17 [{"value"}]
      187 SETTABLEKS                       R15 R18 K16 ["value"]
      189 GETTABLEKS                       R19 R0 K18 ["children"]
      191 CALL                             R16 3 -1
      192 RETURN                           R16 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
        3 LOADB                            R1 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.PlayClient]
        6 JUMPIFEQ                         R0 R2 ; [+7]
        8 GETIMPORT                        R2 K6 [Enum.StudioDataModelType.PlayServer]
       10 JUMPIFEQ                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 JUMPIF                           R0 ; [+5]
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 FASTCALL2K                       ASSERT R0 K1 ; [+5]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K1 ["Expected MultipleDocumentInterfaceInstance to be available on the plugin"]
       16 GETIMPORT                        R1 K3 [assert]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R1 R0 K4 ["FocusedDataModelSession"]
       21 JUMPIF                           R1 ; [+8]
       22 GETUPVAL                         R2 1
       23 CALL                             R2 0 1
       24 JUMPIFNOT                        R2 ; [+3]
       25 GETUPVAL                         R2 2
       26 LOADB                            R3 0
       27 CALL                             R2 1 0
       28 LOADNIL                          R2
       29 RETURN                           R2 1
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U2
       33 GETTABLEKS                       R3 R1 K5 ["CurrentDataModelType"]
       35 LOADB                            R4 1
       36 GETIMPORT                        R5 K9 [Enum.StudioDataModelType.PlayClient]
       38 JUMPIFEQ                         R3 R5 ; [+7]
       40 GETIMPORT                        R5 K11 [Enum.StudioDataModelType.PlayServer]
       42 JUMPIFEQ                         R3 R5 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 GETUPVAL                         R5 2
       47 MOVE                             R6 R4
       48 CALL                             R5 1 0
       49 GETTABLEKS                       R3 R1 K12 ["CurrentDataModelTypeChanged"]
       51 MOVE                             R5 R2
       52 NAMECALL                         R3 R3 K13 ["Connect"]
       54 CALL                             R3 2 1
       55 NEWCLOSURE                       R4 P1
       56 CAPTURE                          VAL R3
       57 RETURN                           R4 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K4 ["useReplicatedState"]
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R5 R5 K5 ["IS_PREVIEW_RUNNING"]
       31 MOVE                             R6 R2
       32 CALL                             R4 2 0
       33 GETTABLEKS                       R4 R0 K6 ["children"]
       35 RETURN                           R4 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
        3 LOADB                            R1 1
        4 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.PlayClient]
        6 JUMPIFEQ                         R0 R2 ; [+7]
        8 GETIMPORT                        R2 K6 [Enum.StudioDataModelType.PlayServer]
       10 JUMPIFEQ                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["FocusedDataModelSession"]
       11 JUMPIF                           R0 ; [+25]
       12 GETUPVAL                         R1 2
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 LOADB                            R2 0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 4
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K2 ["current"]
       22 GETUPVAL                         R1 5
       23 NEWTABLE                         R2 0 0
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 6
       27 NEWTABLE                         R2 0 0
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 7
       31 LOADB                            R2 0
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 8
       34 LOADB                            R2 0
       35 CALL                             R1 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 3
       38 LOADB                            R2 0
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 4
       41 LOADB                            R2 0
       42 SETTABLEKS                       R2 R1 K2 ["current"]
       44 GETUPVAL                         R1 5
       45 NEWTABLE                         R2 0 0
       47 CALL                             R1 1 0
       48 GETUPVAL                         R1 6
       49 NEWTABLE                         R2 0 0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 7
       53 LOADB                            R2 0
       54 CALL                             R1 1 0
       55 GETUPVAL                         R1 8
       56 LOADB                            R2 0
       57 CALL                             R1 1 0
       58 NEWCLOSURE                       R1 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U2
       61 GETTABLEKS                       R2 R0 K3 ["CurrentDataModelType"]
       63 LOADB                            R3 1
       64 GETIMPORT                        R4 K7 [Enum.StudioDataModelType.PlayClient]
       66 JUMPIFEQ                         R2 R4 ; [+7]
       68 GETIMPORT                        R4 K9 [Enum.StudioDataModelType.PlayServer]
       70 JUMPIFEQ                         R2 R4 ; [+2]
       72 LOADB                            R3 0 +1
       73 LOADB                            R3 1
       74 GETUPVAL                         R4 2
       75 MOVE                             R5 R3
       76 CALL                             R4 1 0
       77 GETTABLEKS                       R2 R0 K10 ["CurrentDataModelTypeChanged"]
       79 MOVE                             R4 R1
       80 NAMECALL                         R2 R2 K11 ["Connect"]
       82 CALL                             R2 2 1
       83 SETUPVAL                         R2 0
       84 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 JUMPIF                           R0 ; [+4]
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 LOADNIL                          R1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          REF R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 MOVE                             R3 R2
       23 CALL                             R3 0 0
       24 LOADK                            R5 K1 ["FocusedDataModelSession"]
       25 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       27 CALL                             R3 2 1
       28 MOVE                             R5 R2
       29 NAMECALL                         R3 R3 K3 ["Connect"]
       31 CALL                             R3 2 1
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          REF R1
       35 CLOSEUPVALS                      R1
       36 RETURN                           R4 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+22]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 3
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 NEWTABLE                         R1 0 0
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 5
       18 NEWTABLE                         R1 0 0
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 6
       22 LOADB                            R1 0
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 7
       25 LOADB                            R1 0
       26 CALL                             R0 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 2
       29 GETTABLEKS                       R0 R0 K0 ["current"]
       31 JUMPIFNOT                        R0 ; [+3]
       32 GETUPVAL                         R0 3
       33 LOADB                            R1 1
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R0 2
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 LOADB                            R1 0
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_38:
        0 DUPTABLE                         R0 K7 [{"DEPRECATED_playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "previewDataModelDidBootstrap", "DEPRECATED_wasGraphPlayed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DEPRECATED_playedAssetIds"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["playedGraphKeys"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["previewHasEnded"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["isPreviewRunning"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["graphAnimationWasPlayed"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["previewDataModelDidBootstrap"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["DEPRECATED_wasGraphPlayed"]
       22 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 NEWTABLE                         R2 0 0
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["useReplicatedStateListener"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["PLAYED_ASSET_IDS"]
       19 NEWTABLE                         R4 0 0
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K2 ["useReplicatedStateListener"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K4 ["PLAYED_GRAPH_KEYS"]
       28 NEWTABLE                         R5 0 0
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K2 ["useReplicatedStateListener"]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K5 ["GRAPH_ANIMATION_WAS_PLAYED"]
       37 LOADB                            R6 0
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K2 ["useReplicatedStateListener"]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K6 ["PREVIEW_DID_BOOTSTRAP"]
       45 LOADB                            R7 0
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K7 ["useState"]
       50 NEWTABLE                         R7 0 0
       52 CALL                             R6 1 2
       53 GETUPVAL                         R8 4
       54 GETTABLEKS                       R8 R8 K7 ["useState"]
       56 NEWTABLE                         R9 0 0
       58 CALL                             R8 1 2
       59 GETUPVAL                         R10 4
       60 GETTABLEKS                       R10 R10 K7 ["useState"]
       62 LOADB                            R11 0
       63 CALL                             R10 1 2
       64 GETUPVAL                         R12 4
       65 GETTABLEKS                       R12 R12 K7 ["useState"]
       67 LOADB                            R13 0
       68 CALL                             R12 1 2
       69 GETUPVAL                         R14 4
       70 GETTABLEKS                       R14 R14 K7 ["useState"]
       72 LOADB                            R15 0
       73 CALL                             R14 1 2
       74 GETUPVAL                         R16 4
       75 GETTABLEKS                       R16 R16 K7 ["useState"]
       77 LOADB                            R17 0
       78 CALL                             R16 1 2
       79 GETUPVAL                         R18 4
       80 GETTABLEKS                       R18 R18 K8 ["useRef"]
       82 LOADB                            R19 0
       83 CALL                             R18 1 1
       84 GETUPVAL                         R19 4
       85 GETTABLEKS                       R19 R19 K8 ["useRef"]
       87 LOADB                            R20 0
       88 CALL                             R19 1 1
       89 GETUPVAL                         R20 4
       90 GETTABLEKS                       R20 R20 K9 ["useEffect"]
       92 NEWCLOSURE                       R21 P0
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R18
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R17
      102 NEWTABLE                         R22 0 1
      104 MOVE                             R23 R1
      105 SETLIST                          R22 R23 1 [1]
      107 CALL                             R20 2 0
      108 GETUPVAL                         R20 4
      109 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      111 NEWCLOSURE                       R21 P1
      112 CAPTURE                          VAL R19
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R17
      120 NEWTABLE                         R22 0 1
      122 MOVE                             R23 R14
      123 SETLIST                          R22 R23 1 [1]
      125 CALL                             R20 2 0
      126 GETUPVAL                         R20 4
      127 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      129 NEWCLOSURE                       R21 P2
      130 CAPTURE                          VAL R19
      131 CAPTURE                          UPVAL U1
      132 CAPTURE                          VAL R7
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          VAL R2
      135 NEWTABLE                         R22 0 1
      137 MOVE                             R23 R2
      138 SETLIST                          R22 R23 1 [1]
      140 CALL                             R20 2 0
      141 GETUPVAL                         R20 4
      142 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      144 NEWCLOSURE                       R21 P3
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R9
      147 CAPTURE                          UPVAL U6
      148 CAPTURE                          VAL R3
      149 NEWTABLE                         R22 0 1
      151 MOVE                             R23 R3
      152 SETLIST                          R22 R23 1 [1]
      154 CALL                             R20 2 0
      155 GETUPVAL                         R20 4
      156 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      158 NEWCLOSURE                       R21 P4
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R11
      161 NEWTABLE                         R22 0 1
      163 MOVE                             R23 R4
      164 SETLIST                          R22 R23 1 [1]
      166 CALL                             R20 2 0
      167 GETUPVAL                         R20 7
      168 CALL                             R20 0 1
      169 JUMPIFNOT                        R20 ; [+12]
      170 GETUPVAL                         R20 4
      171 GETTABLEKS                       R20 R20 K9 ["useEffect"]
      173 NEWCLOSURE                       R21 P5
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R17
      176 NEWTABLE                         R22 0 1
      178 MOVE                             R23 R5
      179 SETLIST                          R22 R23 1 [1]
      181 CALL                             R20 2 0
      182 GETUPVAL                         R20 4
      183 GETTABLEKS                       R20 R20 K10 ["useCallback"]
      185 NEWCLOSURE                       R21 P6
      186 CAPTURE                          VAL R6
      187 NEWTABLE                         R22 0 1
      189 MOVE                             R23 R6
      190 SETLIST                          R22 R23 1 [1]
      192 CALL                             R20 2 1
      193 GETUPVAL                         R21 4
      194 GETTABLEKS                       R21 R21 K11 ["useMemo"]
      196 NEWCLOSURE                       R22 P7
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R20
      204 NEWTABLE                         R23 0 7
      206 MOVE                             R24 R6
      207 MOVE                             R25 R8
      208 MOVE                             R26 R12
      209 MOVE                             R27 R14
      210 MOVE                             R28 R10
      211 MOVE                             R29 R16
      212 MOVE                             R30 R20
      213 SETLIST                          R23 R24 7 [1]
      215 CALL                             R21 2 1
      216 GETUPVAL                         R22 4
      217 GETTABLEKS                       R22 R22 K12 ["createElement"]
      219 GETUPVAL                         R23 8
      220 GETTABLEKS                       R23 R23 K13 ["Provider"]
      222 DUPTABLE                         R24 K15 [{"value"}]
      223 SETTABLEKS                       R21 R24 K14 ["value"]
      225 GETTABLEKS                       R25 R0 K16 ["children"]
      227 CALL                             R22 3 -1
      228 RETURN                           R22 -1

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
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["RunService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["Workspace"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R0 K13 ["Parent"]
       35 GETTABLEKS                       R6 R6 K14 ["Framework"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R0 K15 ["Contexts"]
       42 GETTABLEKS                       R7 R7 K16 ["GraphDebugDataContext"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R8 R0 K17 ["Util"]
       49 GETTABLEKS                       R8 R8 K18 ["Networking"]
       51 GETTABLEKS                       R8 R8 K19 ["NetworkUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R0 K13 ["Parent"]
       58 GETTABLEKS                       R9 R9 K20 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K12 [require]
       63 GETTABLEKS                       R10 R0 K13 ["Parent"]
       65 GETTABLEKS                       R10 R10 K21 ["Signals"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K12 [require]
       70 GETTABLEKS                       R11 R0 K17 ["Util"]
       72 GETTABLEKS                       R11 R11 K21 ["Signals"]
       74 GETTABLEKS                       R11 R11 K22 ["SignalsInstanceUtils"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K12 [require]
       79 GETTABLEKS                       R12 R0 K23 ["Flags"]
       81 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphCheckPreviewBootstrap"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K12 [require]
       86 GETTABLEKS                       R13 R0 K23 ["Flags"]
       88 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K12 [require]
       93 GETTABLEKS                       R14 R0 K23 ["Flags"]
       95 GETTABLEKS                       R14 R14 K26 ["getFFlagAnimGraphUI_RunTimeDebug"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R5 K27 ["ContextServices"]
      100 GETTABLEKS                       R14 R14 K28 ["Plugin"]
      102 DUPTABLE                         R15 K36 [{"DEPRECATED_playedAssetIds", "playedGraphKeys", "previewHasEnded", "isPreviewRunning", "graphAnimationWasPlayed", "previewDataModelDidBootstrap", "DEPRECATED_wasGraphPlayed"}]
      103 NEWTABLE                         R16 0 0
      105 SETTABLEKS                       R16 R15 K29 ["DEPRECATED_playedAssetIds"]
      107 NEWTABLE                         R16 0 0
      109 SETTABLEKS                       R16 R15 K30 ["playedGraphKeys"]
      111 LOADB                            R16 0
      112 SETTABLEKS                       R16 R15 K31 ["previewHasEnded"]
      114 LOADB                            R16 0
      115 SETTABLEKS                       R16 R15 K32 ["isPreviewRunning"]
      117 LOADB                            R16 0
      118 SETTABLEKS                       R16 R15 K33 ["graphAnimationWasPlayed"]
      120 LOADB                            R16 0
      121 SETTABLEKS                       R16 R15 K34 ["previewDataModelDidBootstrap"]
      123 DUPCLOSURE                       R16 K37 [PROTO_0]
      124 SETTABLEKS                       R16 R15 K35 ["DEPRECATED_wasGraphPlayed"]
      126 GETTABLEKS                       R16 R8 K38 ["createContext"]
      128 MOVE                             R17 R15
      129 CALL                             R16 1 1
      130 DUPTABLE                         R17 K44 [{"PLAYED_ASSET_IDS", "PLAYED_GRAPH_KEYS", "IS_PREVIEW_RUNNING", "GRAPH_ANIMATION_WAS_PLAYED", "PREVIEW_DID_BOOTSTRAP"}]
      131 LOADK                            R18 K45 ["GraphPlayedContext_PlayedAssetIds"]
      132 SETTABLEKS                       R18 R17 K39 ["PLAYED_ASSET_IDS"]
      134 LOADK                            R18 K46 ["GraphPlayedContext_PlayedGraphKeys"]
      135 SETTABLEKS                       R18 R17 K40 ["PLAYED_GRAPH_KEYS"]
      137 LOADK                            R18 K47 ["GraphPlayedContext_IsPreviewRunning"]
      138 SETTABLEKS                       R18 R17 K41 ["IS_PREVIEW_RUNNING"]
      140 LOADK                            R18 K48 ["GraphPlayedContext_GraphAnimationWasPlayed"]
      141 SETTABLEKS                       R18 R17 K42 ["GRAPH_ANIMATION_WAS_PLAYED"]
      143 LOADK                            R18 K49 ["GraphPlayedContext_PreviewDidBootstrap"]
      144 SETTABLEKS                       R18 R17 K43 ["PREVIEW_DID_BOOTSTRAP"]
      146 DUPCLOSURE                       R18 K50 [PROTO_2]
      147 DUPCLOSURE                       R19 K51 [PROTO_3]
      148 DUPCLOSURE                       R20 K52 [PROTO_4]
      149 DUPCLOSURE                       R21 K53 [PROTO_5]
      150 DUPCLOSURE                       R22 K54 [PROTO_21]
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R16
      164 DUPCLOSURE                       R23 K55 [PROTO_25]
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R17
      170 DUPCLOSURE                       R24 K56 [PROTO_39]
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R16
      180 DUPTABLE                         R25 K65 [{"Context", "EditableDataModelProvider", "PreviewDataModelProvider", "UIDataModelProvider", "_createAddIdUpdater", "_checkWasGraphPlayed", "_getGraphKeyFromAnimateScript", "_mergeIdSets"}]
      181 SETTABLEKS                       R16 R25 K57 ["Context"]
      183 SETTABLEKS                       R23 R25 K58 ["EditableDataModelProvider"]
      185 SETTABLEKS                       R22 R25 K59 ["PreviewDataModelProvider"]
      187 SETTABLEKS                       R24 R25 K60 ["UIDataModelProvider"]
      189 SETTABLEKS                       R18 R25 K61 ["_createAddIdUpdater"]
      191 SETTABLEKS                       R21 R25 K62 ["_checkWasGraphPlayed"]
      193 SETTABLEKS                       R19 R25 K63 ["_getGraphKeyFromAnimateScript"]
      195 SETTABLEKS                       R20 R25 K64 ["_mergeIdSets"]
      197 RETURN                           R25 1
