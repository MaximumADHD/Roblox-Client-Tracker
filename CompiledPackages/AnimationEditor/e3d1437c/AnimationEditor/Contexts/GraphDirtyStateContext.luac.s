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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 LOADK                            R3 K1 ["RBX_SourceAssetId"]
        5 NAMECALL                         R1 R0 K2 ["GetAttribute"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 LOADNIL                          R2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["RBX_SourceAssetId"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["SetAttribute"]
        4 CALL                             R2 3 0
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        7 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        8 NAMECALL                         R1 R0 K2 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 LOADK                            R3 K3 ["RBX_GraphDirty"]
       13 LOADB                            R4 0
       14 NAMECALL                         R1 R0 K4 ["SetAttribute"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Animation]
        4 NAMECALL                         R0 R0 K4 ["PromptSaveInstanceToRobloxAsync"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+5]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["SaveInstanceToRobloxAsync is not enabled"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K4 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 3
       14 JUMPIFNOT                        R1 ; [+24]
       15 LOADK                            R6 K5 ["AnimationGraphDefinition"]
       16 NAMECALL                         R4 R0 K6 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+5]
       20 LOADK                            R6 K7 ["RBX_GraphDirty"]
       21 LOADB                            R7 0
       22 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       24 CALL                             R4 3 0
       25 GETUPVAL                         R4 2
       26 MOVE                             R5 R0
       27 MOVE                             R6 R2
       28 CALL                             R4 2 0
       29 JUMPIFNOT                        R3 ; [+28]
       30 JUMPIFEQKS                       R3 K9 [""] ; [+27]
       32 GETTABLEKS                       R4 R0 K10 ["Name"]
       34 JUMPIFEQ                         R4 R3 ; [+23]
       36 SETTABLEKS                       R3 R0 K10 ["Name"]
       38 RETURN                           R0 0
       39 FASTCALL1                        TOSTRING R2 ; [+3]
       40 MOVE                             R5 R2
       41 GETIMPORT                        R4 K12 [tostring]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K15 [string.find]
       46 NAMECALL                         R6 R4 K16 ["lower"]
       48 CALL                             R6 1 1
       49 LOADK                            R7 K17 ["cancel"]
       50 CALL                             R5 2 1
       51 JUMPIF                           R5 ; [+6]
       52 GETIMPORT                        R5 K1 [warn]
       54 LOADK                            R7 K18 ["Failed to save graph to Roblox: "]
       55 MOVE                             R8 R4
       56 CONCAT                           R6 R7 R8
       57 CALL                             R5 1 0
       58 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Animation]
        4 GETUPVAL                         R4 2
        5 LOADNIL                          R5
        6 NAMECALL                         R0 R0 K4 ["CreateAssetVersionAsync"]
        8 CALL                             R0 5 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+29]
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 1 2
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R2 2
       11 LOADK                            R5 K2 ["AnimationGraphDefinition"]
       12 NAMECALL                         R3 R2 K3 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+18]
       16 LOADK                            R5 K4 ["RBX_GraphDirty"]
       17 LOADB                            R6 0
       18 NAMECALL                         R3 R2 K5 ["SetAttribute"]
       20 CALL                             R3 3 0
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K7 [warn]
       24 FASTCALL1                        TOSTRING R1 ; [+3]
       25 MOVE                             R4 R1
       26 GETIMPORT                        R3 K9 [tostring]
       28 CALL                             R3 1 1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R0 3
       32 GETUPVAL                         R1 2
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K3 [task.spawn]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K3 [task.spawn]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+23]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        7 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        8 NAMECALL                         R1 R0 K2 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+15]
       12 LOADK                            R3 K3 ["RBX_GraphDirty"]
       13 LOADB                            R4 1
       14 NAMECALL                         R1 R0 K4 ["SetAttribute"]
       16 CALL                             R1 3 0
       17 LOADK                            R4 K6 ["RBX_GraphVersion"]
       18 NAMECALL                         R2 R0 K7 ["GetAttribute"]
       20 CALL                             R2 2 1
       21 ORK                              R1 R2 K5 [0]
       22 LOADK                            R4 K6 ["RBX_GraphVersion"]
       23 ADDK                             R5 R1 K8 [1]
       24 NAMECALL                         R2 R0 K4 ["SetAttribute"]
       26 CALL                             R2 3 0
       27 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+23]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        7 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        8 NAMECALL                         R1 R0 K2 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+15]
       12 LOADK                            R3 K3 ["RBX_GraphDirty"]
       13 LOADB                            R4 1
       14 NAMECALL                         R1 R0 K4 ["SetAttribute"]
       16 CALL                             R1 3 0
       17 LOADK                            R4 K6 ["RBX_GraphVersion"]
       18 NAMECALL                         R2 R0 K7 ["GetAttribute"]
       20 CALL                             R2 2 1
       21 ORK                              R1 R2 K5 [0]
       22 LOADK                            R4 K6 ["RBX_GraphVersion"]
       23 ADDK                             R5 R1 K8 [1]
       24 NAMECALL                         R2 R0 K4 ["SetAttribute"]
       26 CALL                             R2 3 0
       27 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+27]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["selectedGraphInstance"]
        4 JUMPIFNOT                        R2 ; [+23]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["selectedGraphInstance"]
        8 LOADK                            R5 K1 ["AnimationGraphDefinition"]
        9 NAMECALL                         R3 R2 K2 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+15]
       13 LOADK                            R5 K3 ["RBX_GraphDirty"]
       14 LOADB                            R6 1
       15 NAMECALL                         R3 R2 K4 ["SetAttribute"]
       17 CALL                             R3 3 0
       18 LOADK                            R6 K6 ["RBX_GraphVersion"]
       19 NAMECALL                         R4 R2 K7 ["GetAttribute"]
       21 CALL                             R4 2 1
       22 ORK                              R3 R4 K5 [0]
       23 LOADK                            R6 K6 ["RBX_GraphVersion"]
       24 ADDK                             R7 R3 K8 [1]
       25 NAMECALL                         R4 R2 K4 ["SetAttribute"]
       27 CALL                             R4 3 0
       28 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+32]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["selectedGraphInstance"]
        7 LOADK                            R4 K1 ["AnimationGraphDefinition"]
        8 NAMECALL                         R2 R1 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+9]
       12 LOADK                            R4 K3 ["RBX_GraphDirty"]
       13 NAMECALL                         R2 R1 K4 ["GetAttribute"]
       15 CALL                             R2 2 1
       16 JUMPIFEQKB                       R2 TRUE ; [+2]
       18 LOADB                            R0 0 +1
       19 LOADB                            R0 1
       20 JUMP                             ; [+1]
       21 LOADB                            R0 0
       22 JUMPIF                           R0 ; [+13]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K0 ["selectedGraphInstance"]
       26 LOADK                            R4 K1 ["AnimationGraphDefinition"]
       27 NAMECALL                         R2 R1 K2 ["IsA"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+5]
       31 LOADK                            R4 K3 ["RBX_GraphDirty"]
       32 LOADB                            R5 0
       33 NAMECALL                         R2 R1 K5 ["SetAttribute"]
       35 CALL                             R2 3 0
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R0 R1 K6 ["OnUndo"]
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U0
       41 NAMECALL                         R0 R0 K7 ["Connect"]
       43 CALL                             R0 2 1
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R1 R2 K8 ["OnRedo"]
       47 NEWCLOSURE                       R3 P1
       48 CAPTURE                          UPVAL U0
       49 NAMECALL                         R1 R1 K7 ["Connect"]
       51 CALL                             R1 2 1
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R2 R3 K9 ["OnRecordingFinished"]
       55 NEWCLOSURE                       R4 P2
       56 CAPTURE                          UPVAL U0
       57 NAMECALL                         R2 R2 K7 ["Connect"]
       59 CALL                             R2 2 1
       60 NEWCLOSURE                       R3 P3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K3 ["useEffect"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 1
       20 GETTABLEKS                       R7 R1 K4 ["selectedGraphInstance"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K5 ["useCallback"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R6 0 0
       32 CALL                             R4 2 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R7 0 1
       40 GETTABLEKS                       R8 R1 K4 ["selectedGraphInstance"]
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       48 NEWCLOSURE                       R7 P3
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R8 0 1
       54 MOVE                             R9 R4
       55 SETLIST                          R8 R9 1 [1]
       57 CALL                             R6 2 1
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K5 ["useCallback"]
       61 NEWCLOSURE                       R8 P4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          VAL R6
       66 NEWTABLE                         R9 0 3
       68 GETTABLEKS                       R10 R1 K4 ["selectedGraphInstance"]
       70 MOVE                             R11 R6
       71 MOVE                             R12 R2
       72 SETLIST                          R9 R10 3 [1]
       74 CALL                             R7 2 1
       75 GETUPVAL                         R9 0
       76 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       78 NEWCLOSURE                       R9 P5
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R6
       81 NEWTABLE                         R10 0 2
       83 GETTABLEKS                       R11 R1 K4 ["selectedGraphInstance"]
       85 MOVE                             R12 R6
       86 SETLIST                          R10 R11 2 [1]
       88 CALL                             R8 2 1
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K3 ["useEffect"]
       92 NEWCLOSURE                       R10 P6
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U5
       95 NEWTABLE                         R11 0 1
       97 GETTABLEKS                       R12 R1 K4 ["selectedGraphInstance"]
       99 SETLIST                          R11 R12 1 [1]
      101 CALL                             R9 2 0
      102 GETUPVAL                         R10 6
      103 GETTABLEKS                       R9 R10 K6 ["useBoundAction"]
      105 GETUPVAL                         R11 7
      106 GETTABLEKS                       R10 R11 K7 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
      108 MOVE                             R11 R5
      109 CALL                             R9 2 0
      110 GETUPVAL                         R10 6
      111 GETTABLEKS                       R9 R10 K6 ["useBoundAction"]
      113 GETUPVAL                         R11 7
      114 GETTABLEKS                       R10 R11 K8 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
      116 MOVE                             R11 R7
      117 CALL                             R9 2 0
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R9 R10 K6 ["useBoundAction"]
      121 GETUPVAL                         R11 7
      122 GETTABLEKS                       R10 R11 K9 ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"]
      124 MOVE                             R11 R8
      125 CALL                             R9 2 0
      126 GETUPVAL                         R10 6
      127 GETTABLEKS                       R9 R10 K10 ["useReplicatedState"]
      129 GETUPVAL                         R11 8
      130 GETTABLEKS                       R10 R11 K11 ["SOURCE_ASSET_ID"]
      132 MOVE                             R11 R2
      133 CALL                             R9 2 0
      134 DUPTABLE                         R9 K16 [{"saveSelectedGraphToRobloxAsync", "publishSelectedGraphAsNewAsync", "markSelectedGraphCleanAsync", "sourceAssetId"}]
      135 SETTABLEKS                       R7 R9 K12 ["saveSelectedGraphToRobloxAsync"]
      137 SETTABLEKS                       R8 R9 K13 ["publishSelectedGraphAsNewAsync"]
      139 SETTABLEKS                       R5 R9 K14 ["markSelectedGraphCleanAsync"]
      141 SETTABLEKS                       R2 R9 K15 ["sourceAssetId"]
      143 GETUPVAL                         R11 0
      144 GETTABLEKS                       R10 R11 K17 ["createElement"]
      146 GETUPVAL                         R12 9
      147 GETTABLEKS                       R11 R12 K18 ["Provider"]
      149 DUPTABLE                         R12 K20 [{"value"}]
      150 SETTABLEKS                       R9 R12 K19 ["value"]
      152 GETTABLEKS                       R13 R0 K21 ["children"]
      154 CALL                             R10 3 -1
      155 RETURN                           R10 -1

PROTO_18:
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
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R4 K11 ["NativeGraphContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R6 K13 ["Networking"]
       26 GETTABLEKS                       R4 R5 K14 ["NetworkUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K15 ["Parent"]
       33 GETTABLEKS                       R5 R6 K16 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K15 ["Parent"]
       40 GETTABLEKS                       R6 R7 K17 ["ReactUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K18 ["Flags"]
       47 GETTABLEKS                       R7 R8 K19 ["getFFlagSaveInstanceToRobloxAsyncEnabled"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [game]
       52 LOADK                            R9 K20 ["AssetService"]
       53 NAMECALL                         R7 R7 K7 ["GetService"]
       55 CALL                             R7 2 1
       56 GETIMPORT                        R8 K5 [game]
       58 LOADK                            R10 K21 ["StudioAssetService"]
       59 NAMECALL                         R8 R8 K7 ["GetService"]
       61 CALL                             R8 2 1
       62 DUPTABLE                         R9 K26 [{"saveSelectedGraphToRobloxAsync", "publishSelectedGraphAsNewAsync", "markSelectedGraphCleanAsync", "sourceAssetId"}]
       63 GETTABLEKS                       R10 R5 K27 ["createUnimplemented"]
       65 LOADK                            R11 K22 ["saveSelectedGraphToRobloxAsync"]
       66 CALL                             R10 1 1
       67 SETTABLEKS                       R10 R9 K22 ["saveSelectedGraphToRobloxAsync"]
       69 GETTABLEKS                       R10 R5 K27 ["createUnimplemented"]
       71 LOADK                            R11 K23 ["publishSelectedGraphAsNewAsync"]
       72 CALL                             R10 1 1
       73 SETTABLEKS                       R10 R9 K23 ["publishSelectedGraphAsNewAsync"]
       75 GETTABLEKS                       R10 R5 K27 ["createUnimplemented"]
       77 LOADK                            R11 K24 ["markSelectedGraphCleanAsync"]
       78 CALL                             R10 1 1
       79 SETTABLEKS                       R10 R9 K24 ["markSelectedGraphCleanAsync"]
       81 LOADNIL                          R10
       82 SETTABLEKS                       R10 R9 K25 ["sourceAssetId"]
       84 GETTABLEKS                       R10 R4 K28 ["createContext"]
       86 MOVE                             R11 R9
       87 CALL                             R10 1 1
       88 DUPTABLE                         R11 K32 [{"MARK_SELECTED_GRAPH_CLEAN_ASYNC", "SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC", "PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"}]
       89 LOADK                            R12 K33 ["GraphDirtyStateContext_MarkSelectedGraphCleanAsync"]
       90 SETTABLEKS                       R12 R11 K29 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
       92 LOADK                            R12 K34 ["GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync"]
       93 SETTABLEKS                       R12 R11 K30 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
       95 LOADK                            R12 K35 ["GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"]
       96 SETTABLEKS                       R12 R11 K31 ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"]
       98 DUPTABLE                         R12 K37 [{"SOURCE_ASSET_ID"}]
       99 LOADK                            R13 K38 ["GraphDirtyStateContext_SourceAssetId"]
      100 SETTABLEKS                       R13 R12 K36 ["SOURCE_ASSET_ID"]
      102 DUPCLOSURE                       R13 K39 [PROTO_0]
      103 DUPCLOSURE                       R14 K40 [PROTO_1]
      104 DUPCLOSURE                       R15 K41 [PROTO_17]
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R10
      115 DUPCLOSURE                       R16 K42 [PROTO_18]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R10
      121 DUPTABLE                         R17 K49 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "DIRTY_ATTRIBUTE_NAME", "SOURCE_ASSET_ID_ATTRIBUTE_NAME", "VERSION_ATTRIBUTE_NAME"}]
      122 SETTABLEKS                       R10 R17 K43 ["Context"]
      124 SETTABLEKS                       R15 R17 K44 ["EditableDataModelProvider"]
      126 SETTABLEKS                       R16 R17 K45 ["UIDataModelProvider"]
      128 LOADK                            R18 K50 ["RBX_GraphDirty"]
      129 SETTABLEKS                       R18 R17 K46 ["DIRTY_ATTRIBUTE_NAME"]
      131 LOADK                            R18 K51 ["RBX_SourceAssetId"]
      132 SETTABLEKS                       R18 R17 K47 ["SOURCE_ASSET_ID_ATTRIBUTE_NAME"]
      134 LOADK                            R18 K52 ["RBX_GraphVersion"]
      135 SETTABLEKS                       R18 R17 K48 ["VERSION_ATTRIBUTE_NAME"]
      137 RETURN                           R17 1
