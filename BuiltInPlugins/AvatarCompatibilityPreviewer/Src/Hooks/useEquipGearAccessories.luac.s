PROTO_0:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["LoadAsset"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 CALL                             R0 3 2
        8 JUMPIF                           R0 ; [+5]
        9 GETIMPORT                        R2 K4 [warn]
       11 LOADK                            R3 K5 ["NetworkError encountered, cannot equip accessory"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 LOADK                            R4 K6 ["Accessory"]
       15 NAMECALL                         R2 R1 K7 ["FindFirstChildWhichIsA"]
       17 CALL                             R2 2 1
       18 JUMPIFEQKNIL                     R2 ; [+11]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K8 ["ATTRIBUTE_ORIGINAL_BUILTIN_ASSET_ID"]
       23 GETUPVAL                         R6 1
       24 NAMECALL                         R3 R2 K9 ["SetAttribute"]
       26 CALL                             R3 3 0
       27 GETUPVAL                         R3 3
       28 SETTABLEKS                       R3 R2 K10 ["Parent"]
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K0 ["avatarAssets"]
       11 GETTABLEKS                       R6 R6 K1 ["gear"]
       13 GETTABLE                         R5 R6 R4
       14 JUMPIFNOTEQKS                    R4 K2 ["left"] ; [+3]
       16 LOADK                            R6 K3 ["LeftGripAttachment"]
       17 JUMP                             ; [+1]
       18 LOADK                            R6 K4 ["RightGripAttachment"]
       19 LOADB                            R7 0
       20 GETUPVAL                         R8 0
       21 NAMECALL                         R8 R8 K5 ["GetChildren"]
       23 CALL                             R8 1 3
       24 FORGPREP                         R8
       25 LOADK                            R15 K6 ["Accessory"]
       26 NAMECALL                         R13 R12 K7 ["IsA"]
       28 CALL                             R13 2 1
       29 JUMPIFNOT                        R13 ; [+23]
       30 LOADK                            R15 K8 ["Handle"]
       31 NAMECALL                         R13 R12 K9 ["FindFirstChild"]
       33 CALL                             R13 2 1
       34 JUMPIFNOT                        R13 ; [+18]
       35 MOVE                             R16 R6
       36 NAMECALL                         R14 R13 K9 ["FindFirstChild"]
       38 CALL                             R14 2 1
       39 JUMPIFNOT                        R14 ; [+13]
       40 GETUPVAL                         R16 3
       41 GETTABLEKS                       R16 R16 K10 ["ATTRIBUTE_ORIGINAL_BUILTIN_ASSET_ID"]
       43 NAMECALL                         R14 R12 K11 ["GetAttribute"]
       45 CALL                             R14 2 1
       46 JUMPIFNOTEQ                      R5 R14 ; [+3]
       48 LOADB                            R7 1
       49 JUMP                             ; [+5]
       50 NAMECALL                         R14 R12 K12 ["Remove"]
       52 CALL                             R14 1 0
       53 FORGLOOP                         R8 2 ; [-29]
       55 JUMPIFEQKNIL                     R5 ; [+10]
       57 JUMPIF                           R7 ; [+8]
       58 GETIMPORT                        R8 K15 [task.spawn]
       60 NEWCLOSURE                       R9 P0
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          VAL R5
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U0
       65 CALL                             R8 1 0
       66 FORGLOOP                         R0 2 ; [-59]
       68 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 NEWTABLE                         R4 0 2
       16 MOVE                             R5 R0
       17 GETTABLEKS                       R6 R1 K2 ["avatarAssets"]
       19 GETTABLEKS                       R6 R6 K3 ["gear"]
       21 SETLIST                          R4 R5 2 [1]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K15 ["Types"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K13 ["Util"]
       42 GETTABLEKS                       R6 R6 K16 ["EquipmentStateContext"]
       44 CALL                             R5 1 1
       45 NEWTABLE                         R6 0 2
       47 LOADK                            R7 K17 ["left"]
       48 LOADK                            R8 K18 ["right"]
       49 SETLIST                          R6 R7 2 [1]
       51 DUPCLOSURE                       R7 K19 [PROTO_2]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R0
       57 RETURN                           R7 1
