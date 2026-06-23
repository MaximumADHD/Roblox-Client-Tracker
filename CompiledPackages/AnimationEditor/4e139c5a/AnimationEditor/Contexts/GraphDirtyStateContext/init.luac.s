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
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AnimationEditor_AnimateScript"]
        2 NAMECALL                         R2 R2 K1 ["GetTagged"]
        4 CALL                             R2 2 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K2 ["GraphName"]
        7 NAMECALL                         R7 R6 K3 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+6]
       11 GETTABLEKS                       R8 R7 K4 ["Value"]
       13 JUMPIFNOTEQ                      R8 R0 ; [+3]
       15 SETTABLEKS                       R1 R7 K4 ["Value"]
       17 FORGLOOP                         R2 2 ; [-12]
       19 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["promptSaveInstanceToRobloxAsync"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAssetVersionAsync"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        6 GETUPVAL                         R3 2
        7 LOADNIL                          R4
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
      154 MOVE                             R15 R11
      155 LOADK                            R16 K11 ["RBX_GraphDirty"]
      156 CALL                             R14 2 0
      157 GETUPVAL                         R14 10
      158 GETTABLEKS                       R14 R14 K12 ["useBoundAction"]
      160 GETUPVAL                         R15 11
      161 GETTABLEKS                       R15 R15 K13 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
      163 MOVE                             R16 R8
      164 CALL                             R14 2 0
      165 GETUPVAL                         R14 10
      166 GETTABLEKS                       R14 R14 K12 ["useBoundAction"]
      168 GETUPVAL                         R15 11
      169 GETTABLEKS                       R15 R15 K14 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
      171 MOVE                             R16 R12
      172 CALL                             R14 2 0
      173 GETUPVAL                         R14 10
      174 GETTABLEKS                       R14 R14 K12 ["useBoundAction"]
      176 GETUPVAL                         R15 11
      177 GETTABLEKS                       R15 R15 K15 ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"]
      179 MOVE                             R16 R13
      180 CALL                             R14 2 0
      181 GETUPVAL                         R14 10
      182 GETTABLEKS                       R14 R14 K16 ["useReplicatedState"]
      184 GETUPVAL                         R15 12
      185 GETTABLEKS                       R15 R15 K17 ["SOURCE_ASSET_ID"]
      187 MOVE                             R16 R4
      188 CALL                             R14 2 0
      189 GETUPVAL                         R14 0
      190 GETTABLEKS                       R14 R14 K18 ["useMemo"]
      192 NEWCLOSURE                       R15 P8
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R4
      197 NEWTABLE                         R16 0 4
      199 MOVE                             R17 R12
      200 MOVE                             R18 R13
      201 MOVE                             R19 R8
      202 MOVE                             R20 R4
      203 SETLIST                          R16 R17 4 [1]
      205 CALL                             R14 2 1
      206 GETUPVAL                         R15 0
      207 GETTABLEKS                       R15 R15 K19 ["createElement"]
      209 GETUPVAL                         R16 13
      210 GETTABLEKS                       R16 R16 K20 ["Provider"]
      212 DUPTABLE                         R17 K22 [{"value"}]
      213 SETTABLEKS                       R14 R17 K21 ["value"]
      215 GETTABLEKS                       R18 R0 K23 ["children"]
      217 CALL                             R15 3 -1
      218 RETURN                           R15 -1

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["SOURCE_ASSET_ID"]
        6 LOADNIL                          R3
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["useBoundAction"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K2 ["useBoundAction"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K4 ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K2 ["useBoundAction"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K5 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R7 0 4
       39 MOVE                             R8 R2
       40 MOVE                             R9 R3
       41 MOVE                             R10 R4
       42 MOVE                             R11 R1
       43 SETLIST                          R7 R8 4 [1]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K7 ["createElement"]
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K8 ["Provider"]
       52 DUPTABLE                         R8 K10 [{"value"}]
       53 SETTABLEKS                       R5 R8 K9 ["value"]
       55 GETTABLEKS                       R9 R0 K11 ["children"]
       57 CALL                             R6 3 -1
       58 RETURN                           R6 -1

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
       21 GETTABLEKS                       R4 R0 K11 ["Contexts"]
       23 GETTABLEKS                       R4 R4 K12 ["AssetServiceContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Contexts"]
       30 GETTABLEKS                       R5 R5 K13 ["NativeGraphContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K14 ["Util"]
       37 GETTABLEKS                       R6 R6 K15 ["Networking"]
       39 GETTABLEKS                       R6 R6 K16 ["NetworkUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K17 ["Parent"]
       46 GETTABLEKS                       R7 R7 K18 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K17 ["Parent"]
       53 GETTABLEKS                       R8 R8 K19 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K17 ["Parent"]
       62 GETTABLEKS                       R9 R9 K20 ["SelectedGraphContext"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K17 ["Parent"]
       69 GETTABLEKS                       R10 R10 K21 ["SignalsReact"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R11 R0 K22 ["Flags"]
       76 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimGraphUI_RunTimeDebug"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETIMPORT                        R12 K1 [script]
       83 GETTABLEKS                       R12 R12 K24 ["usePublishWarnings"]
       85 CALL                             R11 1 1
       86 DUPTABLE                         R12 K29 [{"saveSelectedGraphToRobloxAsync", "publishSelectedGraphAsNewAsync", "markSelectedGraphCleanAsync", "sourceAssetId"}]
       87 GETTABLEKS                       R13 R7 K30 ["createUnimplemented"]
       89 LOADK                            R14 K25 ["saveSelectedGraphToRobloxAsync"]
       90 CALL                             R13 1 1
       91 SETTABLEKS                       R13 R12 K25 ["saveSelectedGraphToRobloxAsync"]
       93 GETTABLEKS                       R13 R7 K30 ["createUnimplemented"]
       95 LOADK                            R14 K26 ["publishSelectedGraphAsNewAsync"]
       96 CALL                             R13 1 1
       97 SETTABLEKS                       R13 R12 K26 ["publishSelectedGraphAsNewAsync"]
       99 GETTABLEKS                       R13 R7 K30 ["createUnimplemented"]
      101 LOADK                            R14 K27 ["markSelectedGraphCleanAsync"]
      102 CALL                             R13 1 1
      103 SETTABLEKS                       R13 R12 K27 ["markSelectedGraphCleanAsync"]
      105 LOADNIL                          R13
      106 SETTABLEKS                       R13 R12 K28 ["sourceAssetId"]
      108 GETTABLEKS                       R13 R6 K31 ["createContext"]
      110 MOVE                             R14 R12
      111 CALL                             R13 1 1
      112 DUPTABLE                         R14 K35 [{"MARK_SELECTED_GRAPH_CLEAN_ASYNC", "SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC", "PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"}]
      113 LOADK                            R15 K36 ["GraphDirtyStateContext_MarkSelectedGraphCleanAsync"]
      114 SETTABLEKS                       R15 R14 K32 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
      116 LOADK                            R15 K37 ["GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync"]
      117 SETTABLEKS                       R15 R14 K33 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
      119 LOADK                            R15 K38 ["GraphDirtyStateContext_PublishSelectedGraphAsNewAsync"]
      120 SETTABLEKS                       R15 R14 K34 ["PUBLISH_SELECTED_GRAPH_AS_NEW_ASYNC"]
      122 DUPTABLE                         R15 K40 [{"SOURCE_ASSET_ID"}]
      123 LOADK                            R16 K41 ["GraphDirtyStateContext_SourceAssetId"]
      124 SETTABLEKS                       R16 R15 K39 ["SOURCE_ASSET_ID"]
      126 DUPCLOSURE                       R16 K42 [PROTO_0]
      127 DUPCLOSURE                       R17 K43 [PROTO_1]
      128 DUPCLOSURE                       R18 K44 [PROTO_2]
      129 CAPTURE                          VAL R2
      130 DUPCLOSURE                       R19 K45 [PROTO_3]
      131 CAPTURE                          VAL R2
      132 DUPCLOSURE                       R20 K46 [PROTO_21]
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R13
      147 DUPCLOSURE                       R21 K47 [PROTO_23]
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R13
      153 DUPTABLE                         R22 K56 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "DIRTY_ATTRIBUTE_NAME", "SOURCE_ASSET_ID_ATTRIBUTE_NAME", "VERSION_ATTRIBUTE_NAME", "_syncAnimateScriptsSourceAssetId", "_syncAnimateScriptsGraphName"}]
      154 SETTABLEKS                       R13 R22 K48 ["Context"]
      156 SETTABLEKS                       R20 R22 K49 ["EditableDataModelProvider"]
      158 SETTABLEKS                       R21 R22 K50 ["UIDataModelProvider"]
      160 LOADK                            R23 K57 ["RBX_GraphDirty"]
      161 SETTABLEKS                       R23 R22 K51 ["DIRTY_ATTRIBUTE_NAME"]
      163 LOADK                            R23 K58 ["RBX_SourceAssetId"]
      164 SETTABLEKS                       R23 R22 K52 ["SOURCE_ASSET_ID_ATTRIBUTE_NAME"]
      166 LOADK                            R23 K59 ["RBX_GraphVersion"]
      167 SETTABLEKS                       R23 R22 K53 ["VERSION_ATTRIBUTE_NAME"]
      169 SETTABLEKS                       R18 R22 K54 ["_syncAnimateScriptsSourceAssetId"]
      171 SETTABLEKS                       R19 R22 K55 ["_syncAnimateScriptsGraphName"]
      173 RETURN                           R22 1
