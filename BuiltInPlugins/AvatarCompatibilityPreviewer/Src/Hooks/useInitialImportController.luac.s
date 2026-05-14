PROTO_0:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+22]
        5 LOADK                            R4 K2 ["MeshPart"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K3 ["Name"]
       13 JUMPIFNOTEQKS                    R2 K4 ["Head"] ; [+13]
       15 GETUPVAL                         R1 0
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+9]
       18 LOADK                            R3 K5 ["Decal"]
       19 NAMECALL                         R1 R0 K1 ["IsA"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+4]
       23 LOADK                            R3 K6 ["WrapTextureTransfer"]
       24 NAMECALL                         R1 R0 K7 ["FindFirstChildWhichIsA"]
       26 CALL                             R1 2 1
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["filter"]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K1 ["GetChildren"]
        7 CALL                             R2 1 1
        8 DUPCLOSURE                       R3 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+22]
        5 LOADK                            R4 K2 ["MeshPart"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K3 ["Name"]
       13 JUMPIFNOTEQKS                    R2 K4 ["Head"] ; [+13]
       15 GETUPVAL                         R1 0
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+9]
       18 LOADK                            R3 K5 ["Decal"]
       19 NAMECALL                         R1 R0 K1 ["IsA"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+4]
       23 LOADK                            R3 K6 ["WrapTextureTransfer"]
       24 NAMECALL                         R1 R0 K7 ["FindFirstChildWhichIsA"]
       26 CALL                             R1 2 1
       27 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+23]
        3 DUPTABLE                         R0 K2 [{"palette", "item"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K3 ["animations"]
        7 GETTABLEN                        R1 R2 1
        8 SETTABLEKS                       R1 R0 K0 ["palette"]
       10 DUPTABLE                         R1 K6 [{"source", "builtinItem"}]
       11 LOADK                            R2 K7 ["builtin"]
       12 SETTABLEKS                       R2 R1 K4 ["source"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K8 ["IDLE_ANIMATION_ID"]
       17 SETTABLEKS                       R2 R1 K5 ["builtinItem"]
       19 SETTABLEKS                       R1 R0 K1 ["item"]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K9 ["addEquippedItem"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R1 5
       28 GETTABLEKS                       R1 R1 K10 ["filter"]
       30 GETUPVAL                         R2 6
       31 NAMECALL                         R2 R2 K11 ["GetChildren"]
       33 CALL                             R2 1 1
       34 DUPCLOSURE                       R3 K12 [PROTO_2]
       35 CAPTURE                          UPVAL U7
       36 CALL                             R1 2 -1
       37 CALL                             R0 -1 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [task.defer]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 7
       18 JUMPIFNOT                        R0 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 8
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 9
       24 CALL                             R0 0 1
       25 JUMPIFNOT                        R0 ; [+4]
       26 GETUPVAL                         R0 10
       27 GETTABLEKS                       R0 R0 K3 ["removeAllEquippedItems"]
       29 CALL                             R0 0 0
       30 GETIMPORT                        R0 K2 [task.defer]
       32 NEWCLOSURE                       R1 P1
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U11
       35 CAPTURE                          UPVAL U12
       36 CAPTURE                          UPVAL U10
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 LOADK                            R4 K0 ["initialImportComplete"]
        5 LOADB                            R5 0
        6 CALL                             R2 3 2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 GETUPVAL                         R6 2
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+7]
       12 GETUPVAL                         R6 1
       13 MOVE                             R7 R0
       14 LOADK                            R8 K1 ["shouldReimport"]
       15 LOADB                            R9 0
       16 CALL                             R6 3 2
       17 MOVE                             R4 R6
       18 MOVE                             R5 R7
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K2 ["useContext"]
       22 GETUPVAL                         R7 4
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K3 ["useEffect"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          REF R4
       30 CAPTURE                          REF R5
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          VAL R6
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 NEWTABLE                         R9 0 6
       43 MOVE                             R10 R1
       44 MOVE                             R11 R2
       45 MOVE                             R12 R0
       46 MOVE                             R13 R3
       47 GETUPVAL                         R15 2
       48 CALL                             R15 0 1
       49 JUMPIFNOT                        R15 ; [+2]
       50 MOVE                             R14 R4
       51 JUMP                             ; [+1]
       52 LOADNIL                          R14
       53 GETUPVAL                         R16 2
       54 CALL                             R16 0 1
       55 JUMPIFNOT                        R16 ; [+2]
       56 MOVE                             R15 R5
       57 JUMP                             ; [+1]
       58 LOADNIL                          R15
       59 SETLIST                          R9 R10 6 [1]
       61 CALL                             R7 2 0
       62 CLOSEUPVALS                      R4
       63 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Resources"]
       43 GETTABLEKS                       R6 R6 K14 ["CatalogItems"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K10 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["EquipmentStateContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       61 GETTABLEKS                       R8 R8 K17 ["useAddInstancesToUserCatalogAndEquip"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K9 ["Src"]
       68 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K18 ["useSerializedState"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K9 ["Src"]
       77 GETTABLEKS                       R10 R10 K19 ["Flags"]
       79 GETTABLEKS                       R10 R10 K20 ["getFFlagAvatarAutosetupOptionsInput"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K9 ["Src"]
       86 GETTABLEKS                       R11 R11 K19 ["Flags"]
       88 GETTABLEKS                       R11 R11 K21 ["getFFlagAvatarPreviewerEquipIdleOnInit"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K9 ["Src"]
       95 GETTABLEKS                       R12 R12 K19 ["Flags"]
       97 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarPreviewerMakeup"]
       99 CALL                             R11 1 1
      100 DUPCLOSURE                       R12 K23 [PROTO_5]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R3
      111 RETURN                           R12 1
