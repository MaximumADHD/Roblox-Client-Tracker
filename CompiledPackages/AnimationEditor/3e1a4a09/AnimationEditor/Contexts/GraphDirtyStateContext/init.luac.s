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
        0 LOADK                            R3 K0 ["GraphName"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_3:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 LOADK                            R5 K2 ["AnimationEditor_AnimateScript"]
        7 NAMECALL                         R3 R3 K3 ["GetTagged"]
        9 CALL                             R3 2 3
       10 FORGPREP                         R3
       11 LOADK                            R10 K4 ["GraphName"]
       12 NAMECALL                         R8 R7 K5 ["GetAttribute"]
       14 CALL                             R8 2 1
       15 JUMPIFNOTEQ                      R8 R0 ; [+6]
       17 LOADK                            R11 K6 ["SourceAssetId"]
       18 MOVE                             R12 R2
       19 NAMECALL                         R9 R7 K7 ["SetAttribute"]
       21 CALL                             R9 3 0
       22 FORGLOOP                         R3 2 ; [-12]
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AnimationEditor_AnimateScript"]
        2 NAMECALL                         R2 R2 K1 ["GetTagged"]
        4 CALL                             R2 2 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K2 ["GraphName"]
        7 NAMECALL                         R7 R6 K3 ["GetAttribute"]
        9 CALL                             R7 2 1
       10 JUMPIFNOTEQ                      R7 R0 ; [+6]
       12 LOADK                            R10 K2 ["GraphName"]
       13 MOVE                             R11 R1
       14 NAMECALL                         R8 R6 K4 ["SetAttribute"]
       16 CALL                             R8 3 0
       17 FORGLOOP                         R2 2 ; [-12]
       19 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+20]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["markSaved"]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 LOADK                            R3 K1 ["AnimationGraphDefinition"]
       13 NAMECALL                         R1 R0 K2 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+5]
       17 LOADK                            R3 K3 ["RBX_GraphDirty"]
       18 LOADB                            R4 0
       19 NAMECALL                         R1 R0 K4 ["SetAttribute"]
       21 CALL                             R1 3 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["promptSaveInstanceToRobloxAsync"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 3
        7 JUMPIFNOT                        R1 ; [+39]
        8 GETUPVAL                         R4 1
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+6]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["markSaved"]
       14 MOVE                             R5 R0
       15 CALL                             R4 1 0
       16 JUMP                             ; [+10]
       17 LOADK                            R6 K3 ["AnimationGraphDefinition"]
       18 NAMECALL                         R4 R0 K4 ["IsA"]
       20 CALL                             R4 2 1
       21 JUMPIFNOT                        R4 ; [+5]
       22 LOADK                            R6 K5 ["RBX_GraphDirty"]
       23 LOADB                            R7 0
       24 NAMECALL                         R4 R0 K6 ["SetAttribute"]
       26 CALL                             R4 3 0
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R0
       29 MOVE                             R6 R2
       30 CALL                             R4 2 0
       31 JUMPIFNOT                        R3 ; [+52]
       32 JUMPIFEQKS                       R3 K7 [""] ; [+51]
       34 GETTABLEKS                       R4 R0 K8 ["Name"]
       36 JUMPIFEQ                         R4 R3 ; [+47]
       38 GETTABLEKS                       R4 R0 K8 ["Name"]
       40 SETTABLEKS                       R3 R0 K8 ["Name"]
       42 GETUPVAL                         R5 4
       43 MOVE                             R6 R4
       44 MOVE                             R7 R3
       45 CALL                             R5 2 0
       46 RETURN                           R0 0
       47 FASTCALL1                        TOSTRING R2 ; [+3]
       48 MOVE                             R5 R2
       49 GETIMPORT                        R4 K10 [tostring]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K13 [string.find]
       54 NAMECALL                         R6 R4 K14 ["lower"]
       56 CALL                             R6 1 1
       57 LOADK                            R7 K15 ["cancel"]
       58 CALL                             R5 2 1
       59 JUMPIF                           R5 ; [+24]
       60 GETUPVAL                         R5 5
       61 CALL                             R5 0 1
       62 JUMPIFNOT                        R5 ; [+15]
       63 GETIMPORT                        R5 K17 [warn]
       65 GETUPVAL                         R6 6
       66 LOADK                            R8 K18 ["Common"]
       67 LOADK                            R9 K19 ["AnimationEditor"]
       68 LOADK                            R10 K20 ["Output"]
       69 LOADK                            R11 K21 ["SaveToRobloxFailed"]
       70 DUPTABLE                         R12 K23 [{"message"}]
       71 SETTABLEKS                       R4 R12 K22 ["message"]
       73 NAMECALL                         R6 R6 K24 ["getExternalText"]
       75 CALL                             R6 6 -1
       76 CALL                             R5 -1 0
       77 RETURN                           R0 0
       78 GETIMPORT                        R5 K17 [warn]
       80 LOADK                            R7 K25 ["Failed to save graph to Roblox: "]
       81 MOVE                             R8 R4
       82 CONCAT                           R6 R7 R8
       83 CALL                             R5 1 0
       84 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAssetVersionAsync"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        6 GETUPVAL                         R3 2
        7 LOADNIL                          R4
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+49]
        8 GETUPVAL                         R0 3
        9 JUMPIFEQKNIL                     R0 ; [+3]
       11 GETUPVAL                         R0 3
       12 CALL                             R0 0 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R0 K2 [pcall]
       20 CALL                             R0 1 2
       21 JUMPIFNOT                        R0 ; [+26]
       22 GETUPVAL                         R2 5
       23 CALL                             R2 0 1
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETUPVAL                         R2 6
       26 GETTABLEKS                       R2 R2 K3 ["markSaved"]
       28 GETUPVAL                         R3 1
       29 CALL                             R2 1 0
       30 JUMP                             ; [+11]
       31 GETUPVAL                         R2 1
       32 LOADK                            R5 K4 ["AnimationGraphDefinition"]
       33 NAMECALL                         R3 R2 K5 ["IsA"]
       35 CALL                             R3 2 1
       36 JUMPIFNOT                        R3 ; [+5]
       37 LOADK                            R5 K6 ["RBX_GraphDirty"]
       38 LOADB                            R6 0
       39 NAMECALL                         R3 R2 K7 ["SetAttribute"]
       41 CALL                             R3 3 0
       42 GETUPVAL                         R2 7
       43 JUMPIFEQKNIL                     R2 ; [+16]
       45 GETUPVAL                         R2 7
       46 CALL                             R2 0 0
       47 JUMP                             ; [+12]
       48 GETIMPORT                        R2 K9 [warn]
       50 FASTCALL1                        TOSTRING R1 ; [+3]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K11 [tostring]
       54 CALL                             R3 1 1
       55 CALL                             R2 1 0
       56 JUMP                             ; [+3]
       57 GETUPVAL                         R0 8
       58 GETUPVAL                         R1 1
       59 CALL                             R0 1 0
       60 GETUPVAL                         R0 0
       61 GETTABLEKS                       R0 R0 K0 ["current"]
       63 GETUPVAL                         R1 1
       64 LOADNIL                          R2
       65 SETTABLE                         R2 R0 R1
       66 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
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
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U5
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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
       30 GETUPVAL                         R0 1
       31 GETTABLEKS                       R0 R0 K5 ["OnUndo"]
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          UPVAL U0
       35 NAMECALL                         R0 R0 K6 ["Connect"]
       37 CALL                             R0 2 1
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K7 ["OnRedo"]
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          UPVAL U0
       43 NAMECALL                         R1 R1 K6 ["Connect"]
       45 CALL                             R1 2 1
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R2 K8 ["OnRecordingFinished"]
       49 NEWCLOSURE                       R4 P2
       50 CAPTURE                          UPVAL U0
       51 NAMECALL                         R2 R2 K6 ["Connect"]
       53 CALL                             R2 2 1
       54 NEWCLOSURE                       R3 P3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getServerStorageContainer"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+21]
        5 NAMECALL                         R1 R0 K1 ["GetDescendants"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 GETUPVAL                         R8 1
       10 NAMECALL                         R6 R5 K2 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+10]
       14 LOADK                            R8 K3 ["RBX_GraphDirty"]
       15 LOADNIL                          R9
       16 NAMECALL                         R6 R5 K4 ["SetAttribute"]
       18 CALL                             R6 3 0
       19 LOADK                            R8 K5 ["RBX_GraphVersion"]
       20 LOADNIL                          R9
       21 NAMECALL                         R6 R5 K4 ["SetAttribute"]
       23 CALL                             R6 3 0
       24 FORGLOOP                         R1 2 ; [-16]
       26 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getClassName"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R0 K1 ["AnimationGraphDefinition"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_23:
        0 DUPTABLE                         R0 K4 [{"saveSelectedGraphToRobloxAsync", "publishSelectedGraphAsNewAsync", "markSelectedGraphCleanAsync", "sourceAssetId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["saveSelectedGraphToRobloxAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["publishSelectedGraphAsNewAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["markSelectedGraphCleanAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["sourceAssetId"]
       13 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 3
       14 CALL                             R4 0 1
       15 JUMPIFNOT                        R4 ; [+10]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["useContext"]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K4 ["Context"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K5 ["assetType"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R3
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K3 ["useContext"]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K4 ["Context"]
       33 CALL                             R4 1 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K6 ["useState"]
       37 LOADNIL                          R6
       38 CALL                             R5 1 2
       39 GETUPVAL                         R7 6
       40 GETTABLEKS                       R7 R7 K7 ["useSignalState"]
       42 GETTABLEKS                       R8 R4 K8 ["observeSelectedGraphInstance"]
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R6
       51 NEWTABLE                         R10 0 1
       53 MOVE                             R11 R7
       54 SETLIST                          R10 R11 1 [1]
       56 CALL                             R8 2 0
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       60 NEWCLOSURE                       R9 P1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          UPVAL U7
       63 NEWTABLE                         R10 0 0
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       69 NEWCLOSURE                       R10 P2
       70 CAPTURE                          VAL R7
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          UPVAL U9
       73 NEWTABLE                         R11 0 1
       75 MOVE                             R12 R7
       76 SETLIST                          R11 R12 1 [1]
       78 CALL                             R9 2 1
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       82 NEWCLOSURE                       R11 P3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          UPVAL U8
       85 CAPTURE                          UPVAL U9
       86 CAPTURE                          VAL R8
       87 CAPTURE                          UPVAL U10
       88 CAPTURE                          UPVAL U11
       89 CAPTURE                          VAL R1
       90 NEWTABLE                         R12 0 3
       92 MOVE                             R13 R8
       93 GETTABLEKS                       R14 R2 K11 ["promptSaveInstanceToRobloxAsync"]
       95 MOVE                             R15 R1
       96 SETLIST                          R12 R13 3 [1]
       98 CALL                             R10 2 1
       99 GETUPVAL                         R11 1
      100 GETTABLEKS                       R11 R11 K12 ["useRef"]
      102 NEWTABLE                         R12 0 0
      104 CALL                             R11 1 1
      105 GETUPVAL                         R12 1
      106 GETTABLEKS                       R12 R12 K10 ["useCallback"]
      108 NEWCLOSURE                       R13 P4
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R2
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          UPVAL U9
      114 CAPTURE                          VAL R10
      115 NEWTABLE                         R14 0 3
      117 GETTABLEKS                       R15 R2 K13 ["createAssetVersionAsync"]
      119 MOVE                             R16 R10
      120 MOVE                             R17 R5
      121 SETLIST                          R14 R15 3 [1]
      123 CALL                             R12 2 1
      124 GETUPVAL                         R13 1
      125 GETTABLEKS                       R13 R13 K10 ["useCallback"]
      127 NEWCLOSURE                       R14 P5
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R12
      130 NEWTABLE                         R15 0 2
      132 MOVE                             R16 R12
      133 MOVE                             R17 R7
      134 SETLIST                          R15 R16 2 [1]
      136 CALL                             R13 2 1
      137 GETUPVAL                         R14 1
      138 GETTABLEKS                       R14 R14 K10 ["useCallback"]
      140 NEWCLOSURE                       R15 P6
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R10
      143 NEWTABLE                         R16 0 2
      145 MOVE                             R17 R7
      146 MOVE                             R18 R10
      147 SETLIST                          R16 R17 2 [1]
      149 CALL                             R14 2 1
      150 GETUPVAL                         R15 8
      151 CALL                             R15 0 1
      152 JUMPIF                           R15 ; [+31]
      153 GETUPVAL                         R15 1
      154 GETTABLEKS                       R15 R15 K9 ["useEffect"]
      156 NEWCLOSURE                       R16 P7
      157 CAPTURE                          VAL R7
      158 CAPTURE                          UPVAL U12
      159 NEWTABLE                         R17 0 1
      161 MOVE                             R18 R7
      162 SETLIST                          R17 R18 1 [1]
      164 CALL                             R15 2 0
      165 GETUPVAL                         R15 1
      166 GETTABLEKS                       R15 R15 K9 ["useEffect"]
      168 NEWCLOSURE                       R16 P8
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          UPVAL U13
      171 CAPTURE                          VAL R3
      172 CAPTURE                          UPVAL U14
      173 NEWTABLE                         R17 0 1
      175 GETUPVAL                         R19 3
      176 CALL                             R19 0 1
      177 JUMPIFNOT                        R19 ; [+2]
      178 MOVE                             R18 R3
      179 JUMP                             ; [+1]
      180 LOADNIL                          R18
      181 SETLIST                          R17 R18 1 [1]
      183 CALL                             R15 2 0
      184 GETUPVAL                         R15 15
      185 MOVE                             R16 R12
      186 LOADK                            R17 K14 ["RBX_GraphDirty"]
      187 CALL                             R15 2 0
      188 GETUPVAL                         R15 16
      189 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      191 LOADK                            R16 K16 ["GraphDirtyStateContext_MarkSelectedGraphCleanAsync"]
      192 MOVE                             R17 R9
      193 CALL                             R15 2 0
      194 GETUPVAL                         R15 16
      195 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      197 LOADK                            R16 K17 ["GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync"]
      198 MOVE                             R17 R13
      199 CALL                             R15 2 0
      200 GETUPVAL                         R15 16
      201 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      203 LOADK                            R16 K18 ["GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"]
      204 MOVE                             R17 R14
      205 CALL                             R15 2 0
      206 GETUPVAL                         R15 16
      207 GETTABLEKS                       R15 R15 K19 ["useReplicatedState"]
      209 LOADK                            R16 K20 ["GraphDirtyStateContext_SourceAssetId"]
      210 MOVE                             R17 R5
      211 CALL                             R15 2 0
      212 GETUPVAL                         R15 1
      213 GETTABLEKS                       R15 R15 K21 ["useMemo"]
      215 NEWCLOSURE                       R16 P9
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R5
      220 NEWTABLE                         R17 0 4
      222 MOVE                             R18 R13
      223 MOVE                             R19 R14
      224 MOVE                             R20 R9
      225 MOVE                             R21 R5
      226 SETLIST                          R17 R18 4 [1]
      228 CALL                             R15 2 1
      229 GETUPVAL                         R16 1
      230 GETTABLEKS                       R16 R16 K22 ["createElement"]
      232 GETUPVAL                         R17 17
      233 GETTABLEKS                       R17 R17 K23 ["Provider"]
      235 DUPTABLE                         R18 K25 [{"value"}]
      236 SETTABLEKS                       R15 R18 K24 ["value"]
      238 GETTABLEKS                       R19 R0 K26 ["children"]
      240 CALL                             R16 3 -1
      241 RETURN                           R16 -1

PROTO_25:
        0 DUPTABLE                         R0 K4 [{"saveSelectedGraphToRobloxAsync", "publishSelectedGraphAsNewAsync", "markSelectedGraphCleanAsync", "sourceAssetId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["saveSelectedGraphToRobloxAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["publishSelectedGraphAsNewAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["markSelectedGraphCleanAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["sourceAssetId"]
       13 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 LOADK                            R2 K1 ["GraphDirtyStateContext_SourceAssetId"]
        4 LOADNIL                          R3
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useBoundAction"]
        9 LOADK                            R3 K3 ["GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["useBoundAction"]
       14 LOADK                            R4 K4 ["GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K2 ["useBoundAction"]
       19 LOADK                            R5 K5 ["GraphDirtyStateContext_MarkSelectedGraphCleanAsync"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R7 0 4
       31 MOVE                             R8 R2
       32 MOVE                             R9 R3
       33 MOVE                             R10 R4
       34 MOVE                             R11 R1
       35 SETLIST                          R7 R8 4 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K7 ["createElement"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K8 ["Provider"]
       44 DUPTABLE                         R8 K10 [{"value"}]
       45 SETTABLEKS                       R5 R8 K9 ["value"]
       47 GETTABLEKS                       R9 R0 K11 ["children"]
       49 CALL                             R6 3 -1
       50 RETURN                           R6 -1

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
       21 GETTABLEKS                       R4 R0 K11 ["Util"]
       23 GETTABLEKS                       R4 R4 K12 ["Rig"]
       25 GETTABLEKS                       R4 R4 K13 ["AnimationRigDataUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R0 K14 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K15 ["AssetServiceContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K16 ["Parent"]
       39 GETTABLEKS                       R6 R6 K17 ["Framework"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K18 ["GraphDirtyUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Util"]
       53 GETTABLEKS                       R8 R8 K19 ["Networking"]
       55 GETTABLEKS                       R8 R8 K20 ["NetworkUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       62 GETTABLEKS                       R9 R9 K21 ["OpenableAssetTypeContext"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K14 ["Contexts"]
       69 GETTABLEKS                       R10 R10 K21 ["OpenableAssetTypeContext"]
       71 GETTABLEKS                       R10 R10 K22 ["OpenableAssetTypeUtils"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R0 K16 ["Parent"]
       78 GETTABLEKS                       R11 R11 K23 ["React"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R12 R0 K16 ["Parent"]
       85 GETTABLEKS                       R12 R12 K24 ["ReactUtils"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETIMPORT                        R13 K1 [script]
       92 GETTABLEKS                       R13 R13 K16 ["Parent"]
       94 GETTABLEKS                       R13 R13 K25 ["SelectedGraphContext"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K10 [require]
       99 GETTABLEKS                       R14 R0 K16 ["Parent"]
      101 GETTABLEKS                       R14 R14 K26 ["SignalsReact"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K10 [require]
      106 GETTABLEKS                       R15 R0 K27 ["Types"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K10 [require]
      111 GETTABLEKS                       R16 R0 K28 ["Flags"]
      113 GETTABLEKS                       R16 R16 K29 ["getFFlagAnimGraphUI_FixUndoHistory"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R0 K28 ["Flags"]
      120 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimGraphUI_Localization2"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K10 [require]
      125 GETTABLEKS                       R18 R0 K28 ["Flags"]
      127 GETTABLEKS                       R18 R18 K31 ["getFFlagAnimationEditorAnimationTypes"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K10 [require]
      132 GETIMPORT                        R19 K1 [script]
      134 GETTABLEKS                       R19 R19 K32 ["usePublishWarnings"]
      136 CALL                             R18 1 1
      137 DUPTABLE                         R19 K38 [{["saveSelectedGraphToRobloxAsync"], ["publishSelectedGraphAsNewAsync"], ["markSelectedGraphCleanAsync"], ["sourceAssetId"] = }]
      138 GETTABLEKS                       R20 R11 K39 ["createUnimplemented"]
      140 LOADK                            R21 K33 ["saveSelectedGraphToRobloxAsync"]
      141 CALL                             R20 1 1
      142 SETTABLEKS                       R20 R19 K33 ["saveSelectedGraphToRobloxAsync"]
      144 GETTABLEKS                       R20 R11 K39 ["createUnimplemented"]
      146 LOADK                            R21 K34 ["publishSelectedGraphAsNewAsync"]
      147 CALL                             R20 1 1
      148 SETTABLEKS                       R20 R19 K34 ["publishSelectedGraphAsNewAsync"]
      150 GETTABLEKS                       R20 R11 K39 ["createUnimplemented"]
      152 LOADK                            R21 K35 ["markSelectedGraphCleanAsync"]
      153 CALL                             R20 1 1
      154 SETTABLEKS                       R20 R19 K35 ["markSelectedGraphCleanAsync"]
      156 GETTABLEKS                       R20 R10 K40 ["createContext"]
      158 MOVE                             R21 R19
      159 CALL                             R20 1 1
      160 DUPTABLE                         R21 K47 [{["MARK_SELECTED_GRAPH_CLEAN_ASYNC"] = "GraphDirtyStateContext_MarkSelectedGraphCleanAsync", ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"] = "GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync", ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"] = "GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"}]
      161 DUPTABLE                         R22 K50 [{["SOURCE_ASSET_ID"] = "GraphDirtyStateContext_SourceAssetId"}]
      162 DUPCLOSURE                       R23 K51 [PROTO_0]
      163 DUPCLOSURE                       R24 K52 [PROTO_1]
      164 DUPCLOSURE                       R25 K53 [PROTO_2]
      165 DUPCLOSURE                       R26 K54 [PROTO_3]
      166 CAPTURE                          VAL R2
      167 DUPCLOSURE                       R27 K55 [PROTO_4]
      168 CAPTURE                          VAL R2
      169 DUPCLOSURE                       R28 K56 [PROTO_24]
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R27
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R20
      188 DUPCLOSURE                       R29 K57 [PROTO_26]
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R20
      192 DUPTABLE                         R30 K69 [{["Context"], ["EditableDataModelProvider"], ["UIDataModelProvider"], ["DIRTY_ATTRIBUTE_NAME"] = "RBX_GraphDirty", ["SOURCE_ASSET_ID_ATTRIBUTE_NAME"] = "RBX_SourceAssetId", ["VERSION_ATTRIBUTE_NAME"] = "RBX_GraphVersion", ["_syncAnimateScriptsSourceAssetId"], ["_syncAnimateScriptsGraphName"]}]
      193 SETTABLEKS                       R20 R30 K58 ["Context"]
      195 SETTABLEKS                       R28 R30 K59 ["EditableDataModelProvider"]
      197 SETTABLEKS                       R29 R30 K60 ["UIDataModelProvider"]
      199 SETTABLEKS                       R26 R30 K67 ["_syncAnimateScriptsSourceAssetId"]
      201 SETTABLEKS                       R27 R30 K68 ["_syncAnimateScriptsGraphName"]
      203 RETURN                           R30 1
