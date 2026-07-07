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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 LOADK                            R3 K0 ["GraphName"]
        4 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 LOADK                            R3 K0 ["GraphName"]
        9 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R2 R1 K3 ["Value"]
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

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
       11 GETUPVAL                         R9 1
       12 CALL                             R9 0 1
       13 JUMPIFNOT                        R9 ; [+5]
       14 LOADK                            R10 K4 ["GraphName"]
       15 NAMECALL                         R8 R7 K5 ["GetAttribute"]
       17 CALL                             R8 2 1
       18 JUMP                             ; [+9]
       19 LOADK                            R11 K4 ["GraphName"]
       20 NAMECALL                         R9 R7 K6 ["FindFirstChild"]
       22 CALL                             R9 2 1
       23 JUMPIFNOT                        R9 ; [+3]
       24 GETTABLEKS                       R8 R9 K7 ["Value"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R8
       28 JUMPIFNOTEQ                      R8 R0 ; [+17]
       30 GETUPVAL                         R9 1
       31 CALL                             R9 0 1
       32 JUMPIFNOT                        R9 ; [+6]
       33 LOADK                            R11 K8 ["SourceAssetId"]
       34 MOVE                             R12 R2
       35 NAMECALL                         R9 R7 K9 ["SetAttribute"]
       37 CALL                             R9 3 0
       38 JUMP                             ; [+7]
       39 LOADK                            R11 K8 ["SourceAssetId"]
       40 NAMECALL                         R9 R7 K6 ["FindFirstChild"]
       42 CALL                             R9 2 1
       43 JUMPIFNOT                        R9 ; [+2]
       44 SETTABLEKS                       R2 R9 K7 ["Value"]
       46 FORGLOOP                         R3 2 ; [-36]
       48 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AnimationEditor_AnimateScript"]
        2 NAMECALL                         R2 R2 K1 ["GetTagged"]
        4 CALL                             R2 2 3
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 1
        7 CALL                             R8 0 1
        8 JUMPIFNOT                        R8 ; [+5]
        9 LOADK                            R9 K2 ["GraphName"]
       10 NAMECALL                         R7 R6 K3 ["GetAttribute"]
       12 CALL                             R7 2 1
       13 JUMP                             ; [+9]
       14 LOADK                            R10 K2 ["GraphName"]
       15 NAMECALL                         R8 R6 K4 ["FindFirstChild"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+3]
       19 GETTABLEKS                       R7 R8 K5 ["Value"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R7
       23 JUMPIFNOTEQ                      R7 R0 ; [+17]
       25 GETUPVAL                         R8 1
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R8 ; [+6]
       28 LOADK                            R10 K2 ["GraphName"]
       29 MOVE                             R11 R1
       30 NAMECALL                         R8 R6 K6 ["SetAttribute"]
       32 CALL                             R8 3 0
       33 JUMP                             ; [+7]
       34 LOADK                            R10 K2 ["GraphName"]
       35 NAMECALL                         R8 R6 K4 ["FindFirstChild"]
       37 CALL                             R8 2 1
       38 JUMPIFNOT                        R8 ; [+2]
       39 SETTABLEKS                       R1 R8 K5 ["Value"]
       41 FORGLOOP                         R2 2 ; [-36]
       43 RETURN                           R0 0

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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["promptSaveInstanceToRobloxAsync"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 3
        6 JUMPIFNOT                        R1 ; [+30]
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
       21 JUMPIFNOT                        R3 ; [+34]
       22 JUMPIFEQKS                       R3 K6 [""] ; [+33]
       24 GETTABLEKS                       R4 R0 K7 ["Name"]
       26 JUMPIFEQ                         R4 R3 ; [+29]
       28 GETTABLEKS                       R4 R0 K7 ["Name"]
       30 SETTABLEKS                       R3 R0 K7 ["Name"]
       32 GETUPVAL                         R5 2
       33 MOVE                             R6 R4
       34 MOVE                             R7 R3
       35 CALL                             R5 2 0
       36 RETURN                           R0 0
       37 FASTCALL1                        TOSTRING R2 ; [+3]
       38 MOVE                             R5 R2
       39 GETIMPORT                        R4 K9 [tostring]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K12 [string.find]
       44 NAMECALL                         R6 R4 K13 ["lower"]
       46 CALL                             R6 1 1
       47 LOADK                            R7 K14 ["cancel"]
       48 CALL                             R5 2 1
       49 JUMPIF                           R5 ; [+6]
       50 GETIMPORT                        R5 K16 [warn]
       52 LOADK                            R7 K17 ["Failed to save graph to Roblox: "]
       53 MOVE                             R8 R4
       54 CONCAT                           R6 R7 R8
       55 CALL                             R5 1 0
       56 RETURN                           R0 0

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
       50 GETUPVAL                         R0 0
       51 GETTABLEKS                       R0 R0 K0 ["current"]
       53 GETUPVAL                         R1 1
       54 LOADNIL                          R2
       55 SETTABLE                         R2 R0 R1
       56 RETURN                           R0 0

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
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

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
        9 LOADK                            R8 K2 ["AnimationGraphDefinition"]
       10 NAMECALL                         R6 R5 K3 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+10]
       14 LOADK                            R8 K4 ["RBX_GraphDirty"]
       15 LOADNIL                          R9
       16 NAMECALL                         R6 R5 K5 ["SetAttribute"]
       18 CALL                             R6 3 0
       19 LOADK                            R8 K6 ["RBX_GraphVersion"]
       20 LOADNIL                          R9
       21 NAMECALL                         R6 R5 K5 ["SetAttribute"]
       23 CALL                             R6 3 0
       24 FORGLOOP                         R1 2 ; [-16]
       26 RETURN                           R0 0

PROTO_22:
        0 DUPCLOSURE                       R0 K0 [PROTO_21]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

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
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 2
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+8]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useContext"]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K1 ["Context"]
       14 CALL                             R2 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["useContext"]
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R4 R4 K1 ["Context"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["useState"]
       27 LOADNIL                          R5
       28 CALL                             R4 1 2
       29 GETUPVAL                         R7 2
       30 CALL                             R7 0 1
       31 JUMPIFNOT                        R7 ; [+7]
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K3 ["useSignalState"]
       35 GETTABLEKS                       R7 R2 K4 ["observeSelectedGraphInstance"]
       37 CALL                             R6 1 1
       38 JUMP                             ; [+6]
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R6 R6 K3 ["useSignalState"]
       42 GETTABLEKS                       R7 R3 K5 ["observeSelectedGraphInstance_DEPRECATED"]
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R9 0 1
       53 MOVE                             R10 R6
       54 SETLIST                          R9 R10 1 [1]
       56 CALL                             R7 2 0
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       60 NEWCLOSURE                       R8 P1
       61 CAPTURE                          VAL R5
       62 CAPTURE                          UPVAL U6
       63 NEWTABLE                         R9 0 0
       65 CALL                             R7 2 1
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       69 NEWCLOSURE                       R9 P2
       70 CAPTURE                          VAL R6
       71 NEWTABLE                         R10 0 1
       73 MOVE                             R11 R6
       74 SETLIST                          R10 R11 1 [1]
       76 CALL                             R8 2 1
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       80 NEWCLOSURE                       R10 P3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R7
       83 CAPTURE                          UPVAL U7
       84 NEWTABLE                         R11 0 2
       86 MOVE                             R12 R7
       87 GETTABLEKS                       R13 R1 K8 ["promptSaveInstanceToRobloxAsync"]
       89 SETLIST                          R11 R12 2 [1]
       91 CALL                             R9 2 1
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K9 ["useRef"]
       95 NEWTABLE                         R11 0 0
       97 CALL                             R10 1 1
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K7 ["useCallback"]
      101 NEWCLOSURE                       R12 P4
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R9
      106 NEWTABLE                         R13 0 3
      108 GETTABLEKS                       R14 R1 K10 ["createAssetVersionAsync"]
      110 MOVE                             R15 R9
      111 MOVE                             R16 R4
      112 SETLIST                          R13 R14 3 [1]
      114 CALL                             R11 2 1
      115 GETUPVAL                         R12 0
      116 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      118 NEWCLOSURE                       R13 P5
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R11
      121 NEWTABLE                         R14 0 2
      123 MOVE                             R15 R11
      124 MOVE                             R16 R6
      125 SETLIST                          R14 R15 2 [1]
      127 CALL                             R12 2 1
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R13 R13 K7 ["useCallback"]
      131 NEWCLOSURE                       R14 P6
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R9
      134 NEWTABLE                         R15 0 2
      136 MOVE                             R16 R6
      137 MOVE                             R17 R9
      138 SETLIST                          R15 R16 2 [1]
      140 CALL                             R13 2 1
      141 GETUPVAL                         R14 0
      142 GETTABLEKS                       R14 R14 K6 ["useEffect"]
      144 NEWCLOSURE                       R15 P7
      145 CAPTURE                          VAL R6
      146 CAPTURE                          UPVAL U8
      147 NEWTABLE                         R16 0 1
      149 MOVE                             R17 R6
      150 SETLIST                          R16 R17 1 [1]
      152 CALL                             R14 2 0
      153 GETUPVAL                         R14 9
      154 CALL                             R14 0 1
      155 JUMPIFNOT                        R14 ; [+8]
      156 GETUPVAL                         R14 0
      157 GETTABLEKS                       R14 R14 K6 ["useEffect"]
      159 DUPCLOSURE                       R15 K11 [PROTO_22]
      160 CAPTURE                          UPVAL U10
      161 NEWTABLE                         R16 0 0
      163 CALL                             R14 2 0
      164 GETUPVAL                         R14 11
      165 MOVE                             R15 R11
      166 LOADK                            R16 K12 ["RBX_GraphDirty"]
      167 CALL                             R14 2 0
      168 GETUPVAL                         R14 12
      169 GETTABLEKS                       R14 R14 K13 ["useBoundAction"]
      171 LOADK                            R15 K14 ["GraphDirtyStateContext_MarkSelectedGraphCleanAsync"]
      172 MOVE                             R16 R8
      173 CALL                             R14 2 0
      174 GETUPVAL                         R14 12
      175 GETTABLEKS                       R14 R14 K13 ["useBoundAction"]
      177 LOADK                            R15 K15 ["GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync"]
      178 MOVE                             R16 R12
      179 CALL                             R14 2 0
      180 GETUPVAL                         R14 12
      181 GETTABLEKS                       R14 R14 K13 ["useBoundAction"]
      183 LOADK                            R15 K16 ["GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"]
      184 MOVE                             R16 R13
      185 CALL                             R14 2 0
      186 GETUPVAL                         R14 12
      187 GETTABLEKS                       R14 R14 K17 ["useReplicatedState"]
      189 LOADK                            R15 K18 ["GraphDirtyStateContext_SourceAssetId"]
      190 MOVE                             R16 R4
      191 CALL                             R14 2 0
      192 GETUPVAL                         R14 0
      193 GETTABLEKS                       R14 R14 K19 ["useMemo"]
      195 NEWCLOSURE                       R15 P9
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R4
      200 NEWTABLE                         R16 0 4
      202 MOVE                             R17 R12
      203 MOVE                             R18 R13
      204 MOVE                             R19 R8
      205 MOVE                             R20 R4
      206 SETLIST                          R16 R17 4 [1]
      208 CALL                             R14 2 1
      209 GETUPVAL                         R15 0
      210 GETTABLEKS                       R15 R15 K20 ["createElement"]
      212 GETUPVAL                         R16 13
      213 GETTABLEKS                       R16 R16 K21 ["Provider"]
      215 DUPTABLE                         R17 K23 [{"value"}]
      216 SETTABLEKS                       R14 R17 K22 ["value"]
      218 GETTABLEKS                       R18 R0 K24 ["children"]
      220 CALL                             R15 3 -1
      221 RETURN                           R15 -1

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
       37 GETTABLEKS                       R6 R0 K14 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K16 ["NativeGraphContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Util"]
       46 GETTABLEKS                       R7 R7 K17 ["Networking"]
       48 GETTABLEKS                       R7 R7 K18 ["NetworkUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R0 K19 ["Parent"]
       55 GETTABLEKS                       R8 R8 K20 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K19 ["Parent"]
       62 GETTABLEKS                       R9 R9 K21 ["ReactUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETIMPORT                        R10 K1 [script]
       69 GETTABLEKS                       R10 R10 K19 ["Parent"]
       71 GETTABLEKS                       R10 R10 K22 ["SelectedGraphContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R0 K19 ["Parent"]
       78 GETTABLEKS                       R11 R11 K23 ["SignalsReact"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R12 R0 K24 ["Flags"]
       85 GETTABLEKS                       R12 R12 K25 ["getFFlagAnimGraphCreateSAScript"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Flags"]
       92 GETTABLEKS                       R13 R13 K26 ["getFFlagAnimGraphUICleanUpGraphDataOnExit"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Flags"]
       99 GETTABLEKS                       R14 R14 K27 ["getFFlagAnimGraphUI_RunTimeDebug"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K10 [require]
      104 GETIMPORT                        R15 K1 [script]
      106 GETTABLEKS                       R15 R15 K28 ["usePublishWarnings"]
      108 CALL                             R14 1 1
      109 DUPTABLE                         R15 K34 [{["saveSelectedGraphToRobloxAsync"], ["publishSelectedGraphAsNewAsync"], ["markSelectedGraphCleanAsync"], ["sourceAssetId"] = }]
      110 GETTABLEKS                       R16 R8 K35 ["createUnimplemented"]
      112 LOADK                            R17 K29 ["saveSelectedGraphToRobloxAsync"]
      113 CALL                             R16 1 1
      114 SETTABLEKS                       R16 R15 K29 ["saveSelectedGraphToRobloxAsync"]
      116 GETTABLEKS                       R16 R8 K35 ["createUnimplemented"]
      118 LOADK                            R17 K30 ["publishSelectedGraphAsNewAsync"]
      119 CALL                             R16 1 1
      120 SETTABLEKS                       R16 R15 K30 ["publishSelectedGraphAsNewAsync"]
      122 GETTABLEKS                       R16 R8 K35 ["createUnimplemented"]
      124 LOADK                            R17 K31 ["markSelectedGraphCleanAsync"]
      125 CALL                             R16 1 1
      126 SETTABLEKS                       R16 R15 K31 ["markSelectedGraphCleanAsync"]
      128 GETTABLEKS                       R16 R7 K36 ["createContext"]
      130 MOVE                             R17 R15
      131 CALL                             R16 1 1
      132 DUPTABLE                         R17 K43 [{["MARK_SELECTED_GRAPH_CLEAN_ASYNC"] = "GraphDirtyStateContext_MarkSelectedGraphCleanAsync", ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"] = "GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync", ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"] = "GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"}]
      133 DUPTABLE                         R18 K46 [{["SOURCE_ASSET_ID"] = "GraphDirtyStateContext_SourceAssetId"}]
      134 DUPCLOSURE                       R19 K47 [PROTO_0]
      135 DUPCLOSURE                       R20 K48 [PROTO_1]
      136 DUPCLOSURE                       R21 K49 [PROTO_2]
      137 CAPTURE                          VAL R11
      138 DUPCLOSURE                       R22 K50 [PROTO_3]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R11
      141 DUPCLOSURE                       R23 K51 [PROTO_4]
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R11
      144 DUPCLOSURE                       R24 K52 [PROTO_24]
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R16
      159 DUPCLOSURE                       R25 K53 [PROTO_26]
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R16
      163 DUPTABLE                         R26 K65 [{["Context"], ["EditableDataModelProvider"], ["UIDataModelProvider"], ["DIRTY_ATTRIBUTE_NAME"] = "RBX_GraphDirty", ["SOURCE_ASSET_ID_ATTRIBUTE_NAME"] = "RBX_SourceAssetId", ["VERSION_ATTRIBUTE_NAME"] = "RBX_GraphVersion", ["_syncAnimateScriptsSourceAssetId"], ["_syncAnimateScriptsGraphName"]}]
      164 SETTABLEKS                       R16 R26 K54 ["Context"]
      166 SETTABLEKS                       R24 R26 K55 ["EditableDataModelProvider"]
      168 SETTABLEKS                       R25 R26 K56 ["UIDataModelProvider"]
      170 SETTABLEKS                       R22 R26 K63 ["_syncAnimateScriptsSourceAssetId"]
      172 SETTABLEKS                       R23 R26 K64 ["_syncAnimateScriptsGraphName"]
      174 RETURN                           R26 1
