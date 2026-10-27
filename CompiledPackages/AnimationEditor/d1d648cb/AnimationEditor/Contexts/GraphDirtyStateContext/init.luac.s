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
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 2
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useContext"]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K1 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R2 R2 K2 ["assetType"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R4 4
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+8]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K0 ["useContext"]
       25 GETUPVAL                         R4 5
       26 GETTABLEKS                       R4 R4 K1 ["Context"]
       28 CALL                             R3 1 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["useContext"]
       34 GETUPVAL                         R5 6
       35 GETTABLEKS                       R5 R5 K1 ["Context"]
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K3 ["useState"]
       41 LOADNIL                          R6
       42 CALL                             R5 1 2
       43 GETUPVAL                         R8 4
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+7]
       46 GETUPVAL                         R7 7
       47 GETTABLEKS                       R7 R7 K4 ["useSignalState"]
       49 GETTABLEKS                       R8 R3 K5 ["observeSelectedGraphInstance"]
       51 CALL                             R7 1 1
       52 JUMP                             ; [+6]
       53 GETUPVAL                         R7 7
       54 GETTABLEKS                       R7 R7 K4 ["useSignalState"]
       56 GETTABLEKS                       R8 R4 K6 ["observeSelectedGraphInstance_DEPRECATED"]
       58 CALL                             R7 1 1
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K7 ["useEffect"]
       62 NEWCLOSURE                       R9 P0
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 NEWTABLE                         R10 0 1
       67 MOVE                             R11 R7
       68 SETLIST                          R10 R11 1 [1]
       70 CALL                             R8 2 0
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       74 NEWCLOSURE                       R9 P1
       75 CAPTURE                          VAL R6
       76 CAPTURE                          UPVAL U8
       77 NEWTABLE                         R10 0 0
       79 CALL                             R8 2 1
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       83 NEWCLOSURE                       R10 P2
       84 CAPTURE                          VAL R7
       85 NEWTABLE                         R11 0 1
       87 MOVE                             R12 R7
       88 SETLIST                          R11 R12 1 [1]
       90 CALL                             R9 2 1
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       94 NEWCLOSURE                       R11 P3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R8
       97 CAPTURE                          UPVAL U9
       98 NEWTABLE                         R12 0 2
      100 MOVE                             R13 R8
      101 GETTABLEKS                       R14 R1 K9 ["promptSaveInstanceToRobloxAsync"]
      103 SETLIST                          R12 R13 2 [1]
      105 CALL                             R10 2 1
      106 GETUPVAL                         R11 0
      107 GETTABLEKS                       R11 R11 K10 ["useRef"]
      109 NEWTABLE                         R12 0 0
      111 CALL                             R11 1 1
      112 GETUPVAL                         R12 0
      113 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      115 NEWCLOSURE                       R13 P4
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R10
      120 NEWTABLE                         R14 0 3
      122 GETTABLEKS                       R15 R1 K11 ["createAssetVersionAsync"]
      124 MOVE                             R16 R10
      125 MOVE                             R17 R5
      126 SETLIST                          R14 R15 3 [1]
      128 CALL                             R12 2 1
      129 GETUPVAL                         R13 0
      130 GETTABLEKS                       R13 R13 K8 ["useCallback"]
      132 NEWCLOSURE                       R14 P5
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R12
      135 NEWTABLE                         R15 0 2
      137 MOVE                             R16 R12
      138 MOVE                             R17 R7
      139 SETLIST                          R15 R16 2 [1]
      141 CALL                             R13 2 1
      142 GETUPVAL                         R14 0
      143 GETTABLEKS                       R14 R14 K8 ["useCallback"]
      145 NEWCLOSURE                       R15 P6
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R10
      148 NEWTABLE                         R16 0 2
      150 MOVE                             R17 R7
      151 MOVE                             R18 R10
      152 SETLIST                          R16 R17 2 [1]
      154 CALL                             R14 2 1
      155 GETUPVAL                         R15 0
      156 GETTABLEKS                       R15 R15 K7 ["useEffect"]
      158 NEWCLOSURE                       R16 P7
      159 CAPTURE                          VAL R7
      160 CAPTURE                          UPVAL U10
      161 NEWTABLE                         R17 0 1
      163 MOVE                             R18 R7
      164 SETLIST                          R17 R18 1 [1]
      166 CALL                             R15 2 0
      167 GETUPVAL                         R15 0
      168 GETTABLEKS                       R15 R15 K7 ["useEffect"]
      170 NEWCLOSURE                       R16 P8
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          UPVAL U11
      173 CAPTURE                          VAL R2
      174 CAPTURE                          UPVAL U12
      175 NEWTABLE                         R17 0 1
      177 GETUPVAL                         R19 2
      178 CALL                             R19 0 1
      179 JUMPIFNOT                        R19 ; [+2]
      180 MOVE                             R18 R2
      181 JUMP                             ; [+1]
      182 LOADNIL                          R18
      183 SETLIST                          R17 R18 1 [1]
      185 CALL                             R15 2 0
      186 GETUPVAL                         R15 13
      187 MOVE                             R16 R12
      188 LOADK                            R17 K12 ["RBX_GraphDirty"]
      189 CALL                             R15 2 0
      190 GETUPVAL                         R15 14
      191 GETTABLEKS                       R15 R15 K13 ["useBoundAction"]
      193 LOADK                            R16 K14 ["GraphDirtyStateContext_MarkSelectedGraphCleanAsync"]
      194 MOVE                             R17 R9
      195 CALL                             R15 2 0
      196 GETUPVAL                         R15 14
      197 GETTABLEKS                       R15 R15 K13 ["useBoundAction"]
      199 LOADK                            R16 K15 ["GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync"]
      200 MOVE                             R17 R13
      201 CALL                             R15 2 0
      202 GETUPVAL                         R15 14
      203 GETTABLEKS                       R15 R15 K13 ["useBoundAction"]
      205 LOADK                            R16 K16 ["GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"]
      206 MOVE                             R17 R14
      207 CALL                             R15 2 0
      208 GETUPVAL                         R15 14
      209 GETTABLEKS                       R15 R15 K17 ["useReplicatedState"]
      211 LOADK                            R16 K18 ["GraphDirtyStateContext_SourceAssetId"]
      212 MOVE                             R17 R5
      213 CALL                             R15 2 0
      214 GETUPVAL                         R15 0
      215 GETTABLEKS                       R15 R15 K19 ["useMemo"]
      217 NEWCLOSURE                       R16 P9
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R5
      222 NEWTABLE                         R17 0 4
      224 MOVE                             R18 R13
      225 MOVE                             R19 R14
      226 MOVE                             R20 R9
      227 MOVE                             R21 R5
      228 SETLIST                          R17 R18 4 [1]
      230 CALL                             R15 2 1
      231 GETUPVAL                         R16 0
      232 GETTABLEKS                       R16 R16 K20 ["createElement"]
      234 GETUPVAL                         R17 15
      235 GETTABLEKS                       R17 R17 K21 ["Provider"]
      237 DUPTABLE                         R18 K23 [{"value"}]
      238 SETTABLEKS                       R15 R18 K22 ["value"]
      240 GETTABLEKS                       R19 R0 K24 ["children"]
      242 CALL                             R16 3 -1
      243 RETURN                           R16 -1

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
       53 GETTABLEKS                       R8 R0 K14 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K19 ["OpenableAssetTypeContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       62 GETTABLEKS                       R9 R9 K19 ["OpenableAssetTypeContext"]
       64 GETTABLEKS                       R9 R9 K20 ["OpenableAssetTypeUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R0 K21 ["Parent"]
       71 GETTABLEKS                       R10 R10 K22 ["React"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R0 K21 ["Parent"]
       78 GETTABLEKS                       R11 R11 K23 ["ReactUtils"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R12 R12 K21 ["Parent"]
       87 GETTABLEKS                       R12 R12 K24 ["SelectedGraphContext"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K10 [require]
       92 GETTABLEKS                       R13 R0 K21 ["Parent"]
       94 GETTABLEKS                       R13 R13 K25 ["SignalsReact"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K10 [require]
       99 GETTABLEKS                       R14 R0 K26 ["Types"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K10 [require]
      104 GETTABLEKS                       R15 R0 K27 ["Flags"]
      106 GETTABLEKS                       R15 R15 K28 ["getFFlagAnimGraphCreateSAScript"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K10 [require]
      111 GETTABLEKS                       R16 R0 K27 ["Flags"]
      113 GETTABLEKS                       R16 R16 K29 ["getFFlagAnimGraphUI_RunTimeDebug"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R0 K27 ["Flags"]
      120 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimationEditorAnimationTypes"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K10 [require]
      125 GETIMPORT                        R18 K1 [script]
      127 GETTABLEKS                       R18 R18 K31 ["usePublishWarnings"]
      129 CALL                             R17 1 1
      130 DUPTABLE                         R18 K37 [{["saveSelectedGraphToRobloxAsync"], ["publishSelectedGraphAsNewAsync"], ["markSelectedGraphCleanAsync"], ["sourceAssetId"] = }]
      131 GETTABLEKS                       R19 R10 K38 ["createUnimplemented"]
      133 LOADK                            R20 K32 ["saveSelectedGraphToRobloxAsync"]
      134 CALL                             R19 1 1
      135 SETTABLEKS                       R19 R18 K32 ["saveSelectedGraphToRobloxAsync"]
      137 GETTABLEKS                       R19 R10 K38 ["createUnimplemented"]
      139 LOADK                            R20 K33 ["publishSelectedGraphAsNewAsync"]
      140 CALL                             R19 1 1
      141 SETTABLEKS                       R19 R18 K33 ["publishSelectedGraphAsNewAsync"]
      143 GETTABLEKS                       R19 R10 K38 ["createUnimplemented"]
      145 LOADK                            R20 K34 ["markSelectedGraphCleanAsync"]
      146 CALL                             R19 1 1
      147 SETTABLEKS                       R19 R18 K34 ["markSelectedGraphCleanAsync"]
      149 GETTABLEKS                       R19 R9 K39 ["createContext"]
      151 MOVE                             R20 R18
      152 CALL                             R19 1 1
      153 DUPTABLE                         R20 K46 [{["MARK_SELECTED_GRAPH_CLEAN_ASYNC"] = "GraphDirtyStateContext_MarkSelectedGraphCleanAsync", ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"] = "GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync", ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"] = "GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"}]
      154 DUPTABLE                         R21 K49 [{["SOURCE_ASSET_ID"] = "GraphDirtyStateContext_SourceAssetId"}]
      155 DUPCLOSURE                       R22 K50 [PROTO_0]
      156 DUPCLOSURE                       R23 K51 [PROTO_1]
      157 DUPCLOSURE                       R24 K52 [PROTO_2]
      158 CAPTURE                          VAL R14
      159 DUPCLOSURE                       R25 K53 [PROTO_3]
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R14
      162 DUPCLOSURE                       R26 K54 [PROTO_4]
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R14
      165 DUPCLOSURE                       R27 K55 [PROTO_24]
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R26
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R19
      182 DUPCLOSURE                       R28 K56 [PROTO_26]
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R19
      186 DUPTABLE                         R29 K68 [{["Context"], ["EditableDataModelProvider"], ["UIDataModelProvider"], ["DIRTY_ATTRIBUTE_NAME"] = "RBX_GraphDirty", ["SOURCE_ASSET_ID_ATTRIBUTE_NAME"] = "RBX_SourceAssetId", ["VERSION_ATTRIBUTE_NAME"] = "RBX_GraphVersion", ["_syncAnimateScriptsSourceAssetId"], ["_syncAnimateScriptsGraphName"]}]
      187 SETTABLEKS                       R19 R29 K57 ["Context"]
      189 SETTABLEKS                       R27 R29 K58 ["EditableDataModelProvider"]
      191 SETTABLEKS                       R28 R29 K59 ["UIDataModelProvider"]
      193 SETTABLEKS                       R25 R29 K66 ["_syncAnimateScriptsSourceAssetId"]
      195 SETTABLEKS                       R26 R29 K67 ["_syncAnimateScriptsGraphName"]
      197 RETURN                           R29 1
