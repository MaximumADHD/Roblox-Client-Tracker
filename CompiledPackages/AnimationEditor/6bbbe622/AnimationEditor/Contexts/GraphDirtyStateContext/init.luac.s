PROTO_0:
        0 LOADK                            R4 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+16]
        5 LOADK                            R4 K2 ["RBX_GraphDirty"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R0 K3 ["SetAttribute"]
        9 CALL                             R2 3 0
       10 JUMPIFNOT                        R1 ; [+10]
       11 LOADK                            R5 K5 ["RBX_GraphVersion"]
       12 NAMECALL                         R3 R0 K6 ["GetAttribute"]
       14 CALL                             R3 2 1
       15 ORK                              R2 R3 K4 [0]
       16 LOADK                            R5 K5 ["RBX_GraphVersion"]
       17 ADDK                             R6 R2 K7 [1]
       18 NAMECALL                         R3 R0 K3 ["SetAttribute"]
       20 CALL                             R3 3 0
       21 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 LOADK                            R3 K2 ["RBX_GraphDirty"]
        6 NAMECALL                         R1 R0 K3 ["GetAttribute"]
        8 CALL                             R1 2 1
        9 JUMPIFEQKB                       R1 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1
       14 LOADB                            R1 0
       15 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 LOADK                            R5 K2 ["AnimationEditor_AnimateScript"]
        7 NAMECALL                         R3 R3 K3 ["GetTagged"]
        9 CALL                             R3 2 3
       10 FORGPREP                         R3
       11 LOADK                            R10 K4 ["SourceAssetId"]
       12 NAMECALL                         R8 R7 K5 ["FindFirstChild"]
       14 CALL                             R8 2 1
       15 LOADK                            R11 K6 ["GraphName"]
       16 NAMECALL                         R9 R7 K5 ["FindFirstChild"]
       18 CALL                             R9 2 1
       19 JUMPIFNOT                        R8 ; [+7]
       20 JUMPIFNOT                        R9 ; [+6]
       21 GETTABLEKS                       R10 R9 K7 ["Value"]
       23 JUMPIFNOTEQ                      R10 R0 ; [+3]
       25 SETTABLEKS                       R2 R8 K7 ["Value"]
       27 FORGLOOP                         R3 2 ; [-17]
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 LOADK                            R3 K0 ["RBX_SourceAssetId"]
        3 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 LOADNIL                          R2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["RBX_SourceAssetId"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["SetAttribute"]
        4 CALL                             R2 3 0
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R3 R0 K2 ["Name"]
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 0
        3 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 LOADK                            R3 K2 ["RBX_GraphDirty"]
        9 LOADB                            R4 0
       10 NAMECALL                         R1 R0 K3 ["SetAttribute"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["promptSaveInstanceToRobloxAsync"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 3
        6 JUMPIFNOT                        R1 ; [+24]
        7 LOADK                            R6 K2 ["AnimationGraphDefinition"]
        8 NAMECALL                         R4 R0 K3 ["IsA"]
       10 CALL                             R4 2 1
       11 JUMPIFNOT                        R4 ; [+5]
       12 LOADK                            R6 K4 ["RBX_GraphDirty"]
       13 LOADB                            R7 0
       14 NAMECALL                         R4 R0 K5 ["SetAttribute"]
       16 CALL                             R4 3 0
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R0
       19 MOVE                             R6 R2
       20 CALL                             R4 2 0
       21 JUMPIFNOT                        R3 ; [+28]
       22 JUMPIFEQKS                       R3 K6 [""] ; [+27]
       24 GETTABLEKS                       R4 R0 K7 ["Name"]
       26 JUMPIFEQ                         R4 R3 ; [+23]
       28 SETTABLEKS                       R3 R0 K7 ["Name"]
       30 RETURN                           R0 0
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R5 R2
       33 GETIMPORT                        R4 K9 [tostring]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K12 [string.find]
       38 NAMECALL                         R6 R4 K13 ["lower"]
       40 CALL                             R6 1 1
       41 LOADK                            R7 K14 ["cancel"]
       42 CALL                             R5 2 1
       43 JUMPIF                           R5 ; [+6]
       44 GETIMPORT                        R5 K16 [warn]
       46 LOADK                            R7 K17 ["Failed to save graph to Roblox: "]
       47 MOVE                             R8 R4
       48 CONCAT                           R6 R7 R8
       49 CALL                             R5 1 0
       50 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createAssetVersionAsync"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        6 GETUPVAL                         R3 2
        7 LOADNIL                          R4
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+39]
        8 GETUPVAL                         R0 3
        9 JUMPIFEQKNIL                     R0 ; [+3]
       11 GETUPVAL                         R0 3
       12 CALL                             R0 0 0
       13 GETIMPORT                        R0 K2 [pcall]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CALL                             R0 1 2
       20 JUMPIFNOT                        R0 ; [+17]
       21 GETUPVAL                         R2 1
       22 LOADK                            R5 K3 ["AnimationGraphDefinition"]
       23 NAMECALL                         R3 R2 K4 ["IsA"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+5]
       27 LOADK                            R5 K5 ["RBX_GraphDirty"]
       28 LOADB                            R6 0
       29 NAMECALL                         R3 R2 K6 ["SetAttribute"]
       31 CALL                             R3 3 0
       32 GETUPVAL                         R2 5
       33 JUMPIFEQKNIL                     R2 ; [+16]
       35 GETUPVAL                         R2 5
       36 CALL                             R2 0 0
       37 JUMP                             ; [+12]
       38 GETIMPORT                        R2 K8 [warn]
       40 FASTCALL1                        TOSTRING R1 ; [+3]
       41 MOVE                             R4 R1
       42 GETIMPORT                        R3 K10 [tostring]
       44 CALL                             R3 1 1
       45 CALL                             R2 1 0
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R0 6
       48 GETUPVAL                         R1 1
       49 CALL                             R0 1 0
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R0 R1 K0 ["current"]
       53 GETUPVAL                         R1 1
       54 LOADNIL                          R2
       55 SETTABLE                         R2 R0 R1
       56 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["current"]
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R3 K3 [task.spawn]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 0
        3 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+15]
        8 LOADK                            R3 K2 ["RBX_GraphDirty"]
        9 LOADB                            R4 1
       10 NAMECALL                         R1 R0 K3 ["SetAttribute"]
       12 CALL                             R1 3 0
       13 LOADK                            R4 K5 ["RBX_GraphVersion"]
       14 NAMECALL                         R2 R0 K6 ["GetAttribute"]
       16 CALL                             R2 2 1
       17 ORK                              R1 R2 K4 [0]
       18 LOADK                            R4 K5 ["RBX_GraphVersion"]
       19 ADDK                             R5 R1 K7 [1]
       20 NAMECALL                         R2 R0 K3 ["SetAttribute"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 0
        3 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+15]
        8 LOADK                            R3 K2 ["RBX_GraphDirty"]
        9 LOADB                            R4 1
       10 NAMECALL                         R1 R0 K3 ["SetAttribute"]
       12 CALL                             R1 3 0
       13 LOADK                            R4 K5 ["RBX_GraphVersion"]
       14 NAMECALL                         R2 R0 K6 ["GetAttribute"]
       16 CALL                             R2 2 1
       17 ORK                              R1 R2 K4 [0]
       18 LOADK                            R4 K5 ["RBX_GraphVersion"]
       19 ADDK                             R5 R1 K7 [1]
       20 NAMECALL                         R2 R0 K3 ["SetAttribute"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R1 ; [+23]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+21]
        3 GETUPVAL                         R2 0
        4 LOADK                            R5 K0 ["AnimationGraphDefinition"]
        5 NAMECALL                         R3 R2 K1 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+15]
        9 LOADK                            R5 K2 ["RBX_GraphDirty"]
       10 LOADB                            R6 1
       11 NAMECALL                         R3 R2 K3 ["SetAttribute"]
       13 CALL                             R3 3 0
       14 LOADK                            R6 K5 ["RBX_GraphVersion"]
       15 NAMECALL                         R4 R2 K6 ["GetAttribute"]
       17 CALL                             R4 2 1
       18 ORK                              R3 R4 K4 [0]
       19 LOADK                            R6 K5 ["RBX_GraphVersion"]
       20 ADDK                             R7 R3 K7 [1]
       21 NAMECALL                         R4 R2 K3 ["SetAttribute"]
       23 CALL                             R4 3 0
       24 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R1 0
        3 LOADK                            R4 K0 ["AnimationGraphDefinition"]
        4 NAMECALL                         R2 R1 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+9]
        8 LOADK                            R4 K2 ["RBX_GraphDirty"]
        9 NAMECALL                         R2 R1 K3 ["GetAttribute"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKB                       R2 TRUE ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 JUMP                             ; [+1]
       17 LOADB                            R0 0
       18 JUMPIF                           R0 ; [+11]
       19 GETUPVAL                         R1 0
       20 LOADK                            R4 K0 ["AnimationGraphDefinition"]
       21 NAMECALL                         R2 R1 K1 ["IsA"]
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+5]
       25 LOADK                            R4 K2 ["RBX_GraphDirty"]
       26 LOADB                            R5 0
       27 NAMECALL                         R2 R1 K4 ["SetAttribute"]
       29 CALL                             R2 3 0
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R0 R1 K5 ["OnUndo"]
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          UPVAL U0
       35 NAMECALL                         R0 R0 K6 ["Connect"]
       37 CALL                             R0 2 1
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R1 R2 K7 ["OnRedo"]
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          UPVAL U0
       43 NAMECALL                         R1 R1 K6 ["Connect"]
       45 CALL                             R1 2 1
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R2 R3 K8 ["OnRecordingFinished"]
       49 NEWCLOSURE                       R4 P2
       50 CAPTURE                          UPVAL U0
       51 NAMECALL                         R2 R2 K6 ["Connect"]
       53 CALL                             R2 2 1
       54 NEWCLOSURE                       R3 P3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useContext"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["Context"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["useState"]
       15 LOADNIL                          R4
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K3 ["useSignalState"]
       20 GETTABLEKS                       R6 R2 K4 ["observeSelectedGraphInstance"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R5
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 0
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K6 ["useCallback"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U4
       41 NEWTABLE                         R8 0 0
       43 CALL                             R6 2 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R5
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R8 R9 K6 ["useCallback"]
       58 NEWCLOSURE                       R9 P3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R6
       61 NEWTABLE                         R10 0 2
       63 MOVE                             R11 R6
       64 GETTABLEKS                       R12 R1 K7 ["promptSaveInstanceToRobloxAsync"]
       66 SETLIST                          R10 R11 2 [1]
       68 CALL                             R8 2 1
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R9 R10 K8 ["useRef"]
       72 NEWTABLE                         R10 0 0
       74 CALL                             R9 1 1
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R10 R11 K6 ["useCallback"]
       78 NEWCLOSURE                       R11 P4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R8
       83 NEWTABLE                         R12 0 3
       85 GETTABLEKS                       R13 R1 K9 ["createAssetVersionAsync"]
       87 MOVE                             R14 R8
       88 MOVE                             R15 R3
       89 SETLIST                          R12 R13 3 [1]
       91 CALL                             R10 2 1
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R11 R12 K6 ["useCallback"]
       95 NEWCLOSURE                       R12 P5
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R10
       98 NEWTABLE                         R13 0 2
      100 MOVE                             R14 R10
      101 MOVE                             R15 R5
      102 SETLIST                          R13 R14 2 [1]
      104 CALL                             R11 2 1
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R12 R13 K6 ["useCallback"]
      108 NEWCLOSURE                       R13 P6
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R8
      111 NEWTABLE                         R14 0 2
      113 MOVE                             R15 R5
      114 MOVE                             R16 R8
      115 SETLIST                          R14 R15 2 [1]
      117 CALL                             R12 2 1
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R13 R14 K5 ["useEffect"]
      121 NEWCLOSURE                       R14 P7
      122 CAPTURE                          VAL R5
      123 CAPTURE                          UPVAL U5
      124 NEWTABLE                         R15 0 1
      126 MOVE                             R16 R5
      127 SETLIST                          R15 R16 1 [1]
      129 CALL                             R13 2 0
      130 GETUPVAL                         R13 6
      131 MOVE                             R14 R10
      132 LOADK                            R15 K10 ["RBX_GraphDirty"]
      133 CALL                             R13 2 0
      134 GETUPVAL                         R14 7
      135 GETTABLEKS                       R13 R14 K11 ["useBoundAction"]
      137 GETUPVAL                         R15 8
      138 GETTABLEKS                       R14 R15 K12 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
      140 MOVE                             R15 R7
      141 CALL                             R13 2 0
      142 GETUPVAL                         R14 7
      143 GETTABLEKS                       R13 R14 K11 ["useBoundAction"]
      145 GETUPVAL                         R15 8
      146 GETTABLEKS                       R14 R15 K13 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
      148 MOVE                             R15 R11
      149 CALL                             R13 2 0
      150 GETUPVAL                         R14 7
      151 GETTABLEKS                       R13 R14 K11 ["useBoundAction"]
      153 GETUPVAL                         R15 8
      154 GETTABLEKS                       R14 R15 K14 ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"]
      156 MOVE                             R15 R12
      157 CALL                             R13 2 0
      158 GETUPVAL                         R14 7
      159 GETTABLEKS                       R13 R14 K15 ["useReplicatedState"]
      161 GETUPVAL                         R15 9
      162 GETTABLEKS                       R14 R15 K16 ["SOURCE_ASSET_ID"]
      164 MOVE                             R15 R3
      165 CALL                             R13 2 0
      166 DUPTABLE                         R13 K21 [{"saveSelectedGraphToRobloxAsync", "publishSelectedGraphAsNewAsync", "markSelectedGraphCleanAsync", "sourceAssetId"}]
      167 SETTABLEKS                       R11 R13 K17 ["saveSelectedGraphToRobloxAsync"]
      169 SETTABLEKS                       R12 R13 K18 ["publishSelectedGraphAsNewAsync"]
      171 SETTABLEKS                       R7 R13 K19 ["markSelectedGraphCleanAsync"]
      173 SETTABLEKS                       R3 R13 K20 ["sourceAssetId"]
      175 GETUPVAL                         R15 0
      176 GETTABLEKS                       R14 R15 K22 ["createElement"]
      178 GETUPVAL                         R16 10
      179 GETTABLEKS                       R15 R16 K23 ["Provider"]
      181 DUPTABLE                         R16 K25 [{"value"}]
      182 SETTABLEKS                       R13 R16 K24 ["value"]
      184 GETTABLEKS                       R17 R0 K26 ["children"]
      186 CALL                             R14 3 -1
      187 RETURN                           R14 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["SOURCE_ASSET_ID"]
        6 LOADNIL                          R3
        7 CALL                             R1 2 1
        8 DUPTABLE                         R2 K6 [{"saveSelectedGraphToRobloxAsync", "publishSelectedGraphAsNewAsync", "markSelectedGraphCleanAsync", "sourceAssetId"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K7 ["useBoundAction"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K8 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K2 ["saveSelectedGraphToRobloxAsync"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K7 ["useBoundAction"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K9 ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K3 ["publishSelectedGraphAsNewAsync"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K7 ["useBoundAction"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K10 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K4 ["markSelectedGraphCleanAsync"]
       36 SETTABLEKS                       R1 R2 K5 ["sourceAssetId"]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R3 R4 K11 ["createElement"]
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R4 R5 K12 ["Provider"]
       44 DUPTABLE                         R5 K14 [{"value"}]
       45 SETTABLEKS                       R2 R5 K13 ["value"]
       47 GETTABLEKS                       R6 R0 K15 ["children"]
       49 CALL                             R3 3 -1
       50 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CollectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Contexts"]
       23 GETTABLEKS                       R4 R5 K12 ["AssetServiceContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       30 GETTABLEKS                       R5 R6 K13 ["NativeGraphContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R0 K14 ["Util"]
       37 GETTABLEKS                       R7 R8 K15 ["Networking"]
       39 GETTABLEKS                       R6 R7 K16 ["NetworkUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R8 R0 K17 ["Parent"]
       46 GETTABLEKS                       R7 R8 K18 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R9 R0 K17 ["Parent"]
       53 GETTABLEKS                       R8 R9 K19 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Parent"]
       60 GETTABLEKS                       R9 R10 K20 ["SignalsReact"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETIMPORT                        R11 K1 [script]
       67 GETTABLEKS                       R10 R11 K21 ["usePublishWarnings"]
       69 CALL                             R9 1 1
       70 DUPTABLE                         R10 K26 [{"saveSelectedGraphToRobloxAsync", "publishSelectedGraphAsNewAsync", "markSelectedGraphCleanAsync", "sourceAssetId"}]
       71 GETTABLEKS                       R11 R7 K27 ["createUnimplemented"]
       73 LOADK                            R12 K22 ["saveSelectedGraphToRobloxAsync"]
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K22 ["saveSelectedGraphToRobloxAsync"]
       77 GETTABLEKS                       R11 R7 K27 ["createUnimplemented"]
       79 LOADK                            R12 K23 ["publishSelectedGraphAsNewAsync"]
       80 CALL                             R11 1 1
       81 SETTABLEKS                       R11 R10 K23 ["publishSelectedGraphAsNewAsync"]
       83 GETTABLEKS                       R11 R7 K27 ["createUnimplemented"]
       85 LOADK                            R12 K24 ["markSelectedGraphCleanAsync"]
       86 CALL                             R11 1 1
       87 SETTABLEKS                       R11 R10 K24 ["markSelectedGraphCleanAsync"]
       89 LOADNIL                          R11
       90 SETTABLEKS                       R11 R10 K25 ["sourceAssetId"]
       92 GETTABLEKS                       R11 R6 K28 ["createContext"]
       94 MOVE                             R12 R10
       95 CALL                             R11 1 1
       96 DUPTABLE                         R12 K32 [{"MARK_SELECTED_GRAPH_CLEAN_ASYNC", "SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC", "PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"}]
       97 LOADK                            R13 K33 ["GraphDirtyStateContext_MarkSelectedGraphCleanAsync"]
       98 SETTABLEKS                       R13 R12 K29 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
      100 LOADK                            R13 K34 ["GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync"]
      101 SETTABLEKS                       R13 R12 K30 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
      103 LOADK                            R13 K35 ["GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"]
      104 SETTABLEKS                       R13 R12 K31 ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"]
      106 DUPTABLE                         R13 K37 [{"SOURCE_ASSET_ID"}]
      107 LOADK                            R14 K38 ["GraphDirtyStateContext_SourceAssetId"]
      108 SETTABLEKS                       R14 R13 K36 ["SOURCE_ASSET_ID"]
      110 DUPCLOSURE                       R14 K39 [PROTO_0]
      111 DUPCLOSURE                       R15 K40 [PROTO_1]
      112 DUPCLOSURE                       R16 K41 [PROTO_2]
      113 CAPTURE                          VAL R2
      114 DUPCLOSURE                       R17 K42 [PROTO_19]
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R11
      126 DUPCLOSURE                       R18 K43 [PROTO_20]
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R11
      132 DUPTABLE                         R19 K51 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "DIRTY_ATTRIBUTE_NAME", "SOURCE_ASSET_ID_ATTRIBUTE_NAME", "VERSION_ATTRIBUTE_NAME", "_syncAnimateScriptsSourceAssetId"}]
      133 SETTABLEKS                       R11 R19 K44 ["Context"]
      135 SETTABLEKS                       R17 R19 K45 ["EditableDataModelProvider"]
      137 SETTABLEKS                       R18 R19 K46 ["UIDataModelProvider"]
      139 LOADK                            R20 K52 ["RBX_GraphDirty"]
      140 SETTABLEKS                       R20 R19 K47 ["DIRTY_ATTRIBUTE_NAME"]
      142 LOADK                            R20 K53 ["RBX_SourceAssetId"]
      143 SETTABLEKS                       R20 R19 K48 ["SOURCE_ASSET_ID_ATTRIBUTE_NAME"]
      145 LOADK                            R20 K54 ["RBX_GraphVersion"]
      146 SETTABLEKS                       R20 R19 K49 ["VERSION_ATTRIBUTE_NAME"]
      148 SETTABLEKS                       R16 R19 K50 ["_syncAnimateScriptsSourceAssetId"]
      150 RETURN                           R19 1
