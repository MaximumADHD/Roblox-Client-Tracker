PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["MATERIAL_GENERATOR_ENABLED"]
        4 NAMECALL                         R1 R1 K1 ["GetItem"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["MATERIAL_MANAGER_ENABLED"]
        4 NAMECALL                         R1 R1 K1 ["GetItem"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+11]
        2 LOADK                            R3 K0 ["MaterialVariant"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 LOADK                            R4 K2 ["Material Generator"]
        8 NAMECALL                         R2 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R2 2 1
       11 NOT                              R1 R2
       12 RETURN                           R1 1
       13 LOADK                            R3 K0 ["MaterialVariant"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        4 CALL                             R1 1 1
        5 DUPCLOSURE                       R2 K1 [PROTO_2]
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["GetDescendants"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADK                            R9 K1 ["BasePart"]
        8 NAMECALL                         R7 R6 K2 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+5]
       12 GETUPVAL                         R7 1
       13 MOVE                             R8 R6
       14 CALL                             R7 1 1
       15 LOADB                            R8 1
       16 SETTABLE                         R8 R1 R7
       17 FORGLOOP                         R2 2 ; [-11]
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 0 0
       24 MOVE                             R4 R0
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 GETUPVAL                         R9 1
       29 MOVE                             R10 R8
       30 CALL                             R9 1 1
       31 GETIMPORT                        R10 K5 [table.find]
       33 MOVE                             R11 R2
       34 MOVE                             R12 R9
       35 CALL                             R10 2 1
       36 JUMPIFNOT                        R10 ; [+7]
       37 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       39 MOVE                             R12 R3
       40 MOVE                             R13 R8
       41 GETIMPORT                        R11 K7 [table.insert]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R4 2 ; [-17]
       46 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["indexInRecentlyUsedList"]
        2 GETTABLEKS                       R4 R1 K0 ["indexInRecentlyUsedList"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["plugin"]
        3 LOADK                            R3 K1 ["RecentlyUsed"]
        4 NAMECALL                         R1 R1 K2 ["GetSetting"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+5]
        8 NEWTABLE                         R1 0 1
       10 LOADK                            R2 K3 ["Plastic"]
       11 SETLIST                          R1 R2 1 [1]
       13 NEWTABLE                         R2 0 0
       15 MOVE                             R3 R0
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETUPVAL                         R8 1
       20 MOVE                             R9 R7
       21 CALL                             R8 1 1
       22 GETIMPORT                        R9 K6 [table.find]
       24 MOVE                             R10 R1
       25 MOVE                             R11 R8
       26 CALL                             R9 2 1
       27 JUMPIFNOT                        R9 ; [+11]
       28 DUPTABLE                         R12 K9 [{"indexInRecentlyUsedList", "indexInMaterialList"}]
       29 SETTABLEKS                       R9 R12 K7 ["indexInRecentlyUsedList"]
       31 SETTABLEKS                       R6 R12 K8 ["indexInMaterialList"]
       33 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       35 MOVE                             R11 R2
       36 GETIMPORT                        R10 K11 [table.insert]
       38 CALL                             R10 2 0
       39 FORGLOOP                         R3 2 ; [-21]
       41 GETIMPORT                        R3 K13 [table.sort]
       43 MOVE                             R4 R2
       44 DUPCLOSURE                       R5 K14 [PROTO_5]
       45 CALL                             R3 2 0
       46 NEWTABLE                         R3 0 0
       48 MOVE                             R4 R2
       49 LOADNIL                          R5
       50 LOADNIL                          R6
       51 FORGPREP                         R4
       52 GETTABLEKS                       R12 R8 K8 ["indexInMaterialList"]
       54 GETTABLE                         R11 R0 R12
       55 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       57 MOVE                             R10 R3
       58 GETIMPORT                        R9 K11 [table.insert]
       60 CALL                             R9 2 0
       61 FORGLOOP                         R4 2 ; [-10]
       63 RETURN                           R3 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 GETTABLEKS                       R2 R0 K3 ["Name"]
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K5 [string.find]
        7 MOVE                             R3 R1
        8 GETUPVAL                         R4 0
        9 LOADN                            R5 1
       10 LOADB                            R6 1
       11 CALL                             R2 4 1
       12 JUMPIF                           R2 ; [+9]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 0
       16 CALL                             R3 2 1
       17 LOADN                            R4 1
       18 JUMPIFLE                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        4 CALL                             R1 1 1
        5 DUPCLOSURE                       R2 K1 [PROTO_2]
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K2 ["customMaterials"]
       11 JUMPIF                           R1 ; [+6]
       12 GETUPVAL                         R1 4
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 5
       15 GETUPVAL                         R4 6
       16 CALL                             R3 1 -1
       17 CALL                             R1 -1 0
       18 MOVE                             R1 R0
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K3 ["recents"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R2 7
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 MOVE                             R1 R2
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K4 ["appliedInPlace"]
       30 JUMPIFNOT                        R2 ; [+4]
       31 GETUPVAL                         R2 8
       32 MOVE                             R3 R1
       33 CALL                             R2 1 1
       34 MOVE                             R1 R2
       35 GETUPVAL                         R2 9
       36 JUMPIFNOT                        R2 ; [+15]
       37 GETUPVAL                         R2 9
       38 JUMPIFEQKS                       R2 K5 [""] ; [+13]
       40 GETIMPORT                        R2 K8 [string.lower]
       42 GETUPVAL                         R3 9
       43 CALL                             R2 1 1
       44 SETUPVAL                         R2 9
       45 GETUPVAL                         R2 0
       46 MOVE                             R3 R1
       47 NEWCLOSURE                       R4 P1
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U10
       50 CALL                             R2 2 1
       51 MOVE                             R1 R2
       52 GETUPVAL                         R2 3
       53 GETTABLEKS                       R2 R2 K3 ["recents"]
       55 JUMPIF                           R2 ; [+5]
       56 GETIMPORT                        R2 K11 [table.sort]
       58 MOVE                             R3 R1
       59 DUPCLOSURE                       R4 K12 [PROTO_8]
       60 CALL                             R2 2 0
       61 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+23]
        1 LOADK                            R3 K0 ["BasePart"]
        2 NAMECALL                         R1 R0 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["current"]
        9 GETTABLE                         R1 R2 R0
       10 JUMPIF                           R1 ; [+13]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["current"]
       14 DUPTABLE                         R2 K5 [{"Material", "MaterialVariant"}]
       15 GETTABLEKS                       R3 R0 K3 ["Material"]
       17 SETTABLEKS                       R3 R2 K3 ["Material"]
       19 GETTABLEKS                       R3 R0 K4 ["MaterialVariant"]
       21 SETTABLEKS                       R3 R2 K4 ["MaterialVariant"]
       23 SETTABLE                         R2 R1 R0
       24 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 JUMPIFNOT                        R4 ; [+23]
        6 LOADK                            R7 K1 ["BasePart"]
        7 NAMECALL                         R5 R4 K2 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIFNOT                        R5 ; [+18]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K3 ["current"]
       14 GETTABLE                         R5 R6 R4
       15 JUMPIF                           R5 ; [+13]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K3 ["current"]
       19 DUPTABLE                         R6 K6 [{"Material", "MaterialVariant"}]
       20 GETTABLEKS                       R7 R4 K4 ["Material"]
       22 SETTABLEKS                       R7 R6 K4 ["Material"]
       24 GETTABLEKS                       R7 R4 K5 ["MaterialVariant"]
       26 SETTABLEKS                       R7 R6 K5 ["MaterialVariant"]
       28 SETTABLE                         R6 R5 R4
       29 LOADK                            R7 K7 ["Model"]
       30 NAMECALL                         R5 R4 K2 ["IsA"]
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+30]
       34 NAMECALL                         R5 R4 K8 ["GetDescendants"]
       36 CALL                             R5 1 3
       37 FORGPREP                         R5
       38 JUMPIFNOT                        R9 ; [+23]
       39 LOADK                            R12 K1 ["BasePart"]
       40 NAMECALL                         R10 R9 K2 ["IsA"]
       42 CALL                             R10 2 1
       43 JUMPIFNOT                        R10 ; [+18]
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R11 R11 K3 ["current"]
       47 GETTABLE                         R10 R11 R9
       48 JUMPIF                           R10 ; [+13]
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K3 ["current"]
       52 DUPTABLE                         R11 K6 [{"Material", "MaterialVariant"}]
       53 GETTABLEKS                       R12 R9 K4 ["Material"]
       55 SETTABLEKS                       R12 R11 K4 ["Material"]
       57 GETTABLEKS                       R12 R9 K5 ["MaterialVariant"]
       59 SETTABLEKS                       R12 R11 K5 ["MaterialVariant"]
       61 SETTABLE                         R11 R10 R9
       62 FORGLOOP                         R5 2 ; [-25]
       64 FORGLOOP                         R0 2 ; [-60]
       66 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["current"]
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 GETTABLEKS                       R5 R4 K3 ["Material"]
        9 SETTABLEKS                       R5 R3 K3 ["Material"]
       11 GETTABLEKS                       R5 R4 K4 ["MaterialVariant"]
       13 SETTABLEKS                       R5 R3 K4 ["MaterialVariant"]
       15 FORGLOOP                         R0 2 ; [-9]
       17 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 LOADK                            R8 K1 ["BasePart"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+10]
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R5
       13 CALL                             R6 1 1
       14 JUMPIFNOT                        R0 ; [+4]
       15 JUMPIFEQ                         R0 R6 ; [+3]
       17 LOADNIL                          R7
       18 RETURN                           R7 1
       19 MOVE                             R0 R6
       20 JUMP                             ; [+25]
       21 LOADK                            R8 K3 ["Model"]
       22 NAMECALL                         R6 R5 K2 ["IsA"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+20]
       26 NAMECALL                         R6 R5 K4 ["GetDescendants"]
       28 CALL                             R6 1 3
       29 FORGPREP                         R6
       30 LOADK                            R13 K1 ["BasePart"]
       31 NAMECALL                         R11 R10 K2 ["IsA"]
       33 CALL                             R11 2 1
       34 JUMPIFNOT                        R11 ; [+9]
       35 GETUPVAL                         R11 1
       36 MOVE                             R12 R10
       37 CALL                             R11 1 1
       38 JUMPIFNOT                        R0 ; [+4]
       39 JUMPIFEQ                         R0 R11 ; [+3]
       41 LOADNIL                          R12
       42 RETURN                           R12 1
       43 MOVE                             R0 R11
       44 FORGLOOP                         R6 2 ; [-15]
       46 FORGLOOP                         R1 2 ; [-41]
       48 RETURN                           R0 1

PROTO_14:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 GETTABLEKS                       R2 R0 K3 ["Name"]
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K5 [string.find]
        7 MOVE                             R3 R1
        8 GETUPVAL                         R4 0
        9 LOADN                            R5 1
       10 LOADB                            R6 1
       11 CALL                             R2 4 1
       12 JUMPIF                           R2 ; [+9]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 0
       16 CALL                             R3 2 1
       17 LOADN                            R4 1
       18 JUMPIFLE                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_15:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["BaseMaterial"]
        7 GETUPVAL                         R3 0
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_16:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["BaseMaterial"]
        7 GETUPVAL                         R3 0
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_18:
        0 GETIMPORT                        R3 K3 [string.find]
        2 GETIMPORT                        R4 K5 [string.lower]
        4 GETTABLEKS                       R5 R0 K6 ["Name"]
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 0
        8 LOADN                            R6 1
        9 LOADB                            R7 1
       10 CALL                             R3 4 1
       11 ORK                              R2 R3 K0 [999]
       12 GETIMPORT                        R4 K3 [string.find]
       14 GETIMPORT                        R5 K5 [string.lower]
       16 GETTABLEKS                       R6 R1 K6 ["Name"]
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 0
       20 LOADN                            R7 1
       21 LOADB                            R8 1
       22 CALL                             R4 4 1
       23 ORK                              R3 R4 K0 [999]
       24 GETUPVAL                         R4 1
       25 GETIMPORT                        R5 K5 [string.lower]
       27 GETTABLEKS                       R6 R0 K6 ["Name"]
       29 CALL                             R5 1 1
       30 GETUPVAL                         R6 0
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 1
       33 GETIMPORT                        R6 K5 [string.lower]
       35 GETTABLEKS                       R7 R1 K6 ["Name"]
       37 CALL                             R6 1 1
       38 GETUPVAL                         R7 0
       39 CALL                             R5 2 1
       40 MULK                             R7 R2 K7 [1000]
       41 ADD                              R6 R7 R4
       42 MULK                             R8 R3 K7 [1000]
       43 ADD                              R7 R8 R5
       44 JUMPIFLT                         R6 R7 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 RETURN                           R8 1

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_20:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+29]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["defaultMaterials"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 CALL                             R1 1 1
       11 MOVE                             R0 R1
       12 JUMP                             ; [+39]
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 NAMECALL                         R2 R2 K1 ["GetDescendants"]
       17 CALL                             R2 1 1
       18 DUPCLOSURE                       R3 K2 [PROTO_2]
       19 CAPTURE                          UPVAL U6
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K3 ["customMaterials"]
       24 JUMPIF                           R2 ; [+6]
       25 GETUPVAL                         R2 7
       26 MOVE                             R3 R1
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 3
       29 CALL                             R4 1 -1
       30 CALL                             R2 -1 0
       31 MOVE                             R0 R1
       32 JUMP                             ; [+19]
       33 GETUPVAL                         R1 4
       34 GETUPVAL                         R2 5
       35 NAMECALL                         R2 R2 K1 ["GetDescendants"]
       37 CALL                             R2 1 1
       38 DUPCLOSURE                       R3 K2 [PROTO_2]
       39 CAPTURE                          UPVAL U6
       40 CALL                             R1 2 1
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K3 ["customMaterials"]
       44 JUMPIF                           R2 ; [+6]
       45 GETUPVAL                         R2 7
       46 MOVE                             R3 R1
       47 GETUPVAL                         R4 2
       48 GETUPVAL                         R5 3
       49 CALL                             R4 1 -1
       50 CALL                             R2 -1 0
       51 MOVE                             R0 R1
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K4 ["recents"]
       55 JUMPIFNOT                        R1 ; [+4]
       56 GETUPVAL                         R1 8
       57 MOVE                             R2 R0
       58 CALL                             R1 1 1
       59 MOVE                             R0 R1
       60 GETUPVAL                         R1 1
       61 GETTABLEKS                       R1 R1 K5 ["appliedInPlace"]
       63 JUMPIFNOT                        R1 ; [+4]
       64 GETUPVAL                         R1 9
       65 MOVE                             R2 R0
       66 CALL                             R1 1 1
       67 MOVE                             R0 R1
       68 GETUPVAL                         R1 10
       69 JUMPIFNOT                        R1 ; [+109]
       70 GETUPVAL                         R1 10
       71 JUMPIFEQKS                       R1 K6 [""] ; [+107]
       73 GETIMPORT                        R1 K9 [string.lower]
       75 GETUPVAL                         R2 10
       76 CALL                             R1 1 1
       77 SETUPVAL                         R1 10
       78 GETUPVAL                         R1 4
       79 MOVE                             R2 R0
       80 NEWCLOSURE                       R3 P1
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          UPVAL U11
       83 CALL                             R1 2 1
       84 MOVE                             R0 R1
       85 GETUPVAL                         R2 12
       86 GETUPVAL                         R3 10
       87 GETTABLE                         R1 R2 R3
       88 GETUPVAL                         R2 0
       89 CALL                             R2 0 1
       90 JUMPIFNOT                        R2 ; [+33]
       91 JUMPIFNOT                        R1 ; [+60]
       92 GETUPVAL                         R2 1
       93 GETTABLEKS                       R2 R2 K0 ["defaultMaterials"]
       95 JUMPIF                           R2 ; [+56]
       96 GETUPVAL                         R2 4
       97 GETUPVAL                         R3 5
       98 NAMECALL                         R3 R3 K1 ["GetDescendants"]
      100 CALL                             R3 1 1
      101 NEWCLOSURE                       R4 P2
      102 CAPTURE                          VAL R1
      103 CALL                             R2 2 1
      104 MOVE                             R3 R2
      105 LOADNIL                          R4
      106 LOADNIL                          R5
      107 FORGPREP                         R3
      108 GETIMPORT                        R8 K12 [table.find]
      110 MOVE                             R9 R0
      111 MOVE                             R10 R7
      112 CALL                             R8 2 1
      113 JUMPIF                           R8 ; [+7]
      114 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
      116 MOVE                             R10 R0
      117 MOVE                             R11 R7
      118 GETIMPORT                        R9 K14 [table.insert]
      120 CALL                             R9 2 0
      121 FORGLOOP                         R3 2 ; [-14]
      123 JUMP                             ; [+28]
      124 JUMPIFNOT                        R1 ; [+27]
      125 GETUPVAL                         R2 4
      126 GETUPVAL                         R3 5
      127 NAMECALL                         R3 R3 K1 ["GetDescendants"]
      129 CALL                             R3 1 1
      130 NEWCLOSURE                       R4 P3
      131 CAPTURE                          VAL R1
      132 CALL                             R2 2 1
      133 MOVE                             R3 R2
      134 LOADNIL                          R4
      135 LOADNIL                          R5
      136 FORGPREP                         R3
      137 GETIMPORT                        R8 K12 [table.find]
      139 MOVE                             R9 R0
      140 MOVE                             R10 R7
      141 CALL                             R8 2 1
      142 JUMPIF                           R8 ; [+7]
      143 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
      145 MOVE                             R10 R0
      146 MOVE                             R11 R7
      147 GETIMPORT                        R9 K14 [table.insert]
      149 CALL                             R9 2 0
      150 FORGLOOP                         R3 2 ; [-14]
      152 LENGTH                           R2 R0
      153 LOADN                            R3 0
      154 JUMPIFNOTLT                      R3 R2 ; [+33]
      156 GETIMPORT                        R2 K16 [table.sort]
      158 MOVE                             R3 R0
      159 DUPCLOSURE                       R4 K17 [PROTO_17]
      160 CALL                             R2 2 0
      161 GETIMPORT                        R2 K16 [table.sort]
      163 MOVE                             R3 R0
      164 NEWCLOSURE                       R4 P5
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          UPVAL U11
      167 CALL                             R2 2 0
      168 GETUPVAL                         R2 13
      169 CALL                             R2 0 0
      170 GETUPVAL                         R2 14
      171 GETTABLEN                        R3 R0 1
      172 GETUPVAL                         R4 15
      173 CALL                             R2 2 0
      174 GETUPVAL                         R2 16
      175 LOADB                            R3 1
      176 SETTABLEKS                       R3 R2 K18 ["current"]
      178 RETURN                           R0 1
      179 GETUPVAL                         R1 1
      180 GETTABLEKS                       R1 R1 K4 ["recents"]
      182 JUMPIF                           R1 ; [+5]
      183 GETIMPORT                        R1 K16 [table.sort]
      185 MOVE                             R2 R0
      186 DUPCLOSURE                       R3 K19 [PROTO_19]
      187 CALL                             R1 2 0
      188 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K1 [pairs]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["current"]
        9 CALL                             R1 1 3
       10 FORGPREP_NEXT                    R1
       11 GETTABLEKS                       R6 R5 K3 ["Material"]
       13 SETTABLEKS                       R6 R4 K3 ["Material"]
       15 GETTABLEKS                       R6 R5 K4 ["MaterialVariant"]
       17 SETTABLEKS                       R6 R4 K4 ["MaterialVariant"]
       19 FORGLOOP                         R1 2 ; [-9]
       21 GETUPVAL                         R1 2
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K2 ["current"]
       25 GETUPVAL                         R1 3
       26 LOADN                            R2 0
       27 SETTABLEKS                       R2 R1 K2 ["current"]
       29 GETUPVAL                         R1 4
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K0 ["current"]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 3
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 4
       13 LOADK                            R5 K1 ["Applied %* Material to Selection"]
       14 MOVE                             R7 R1
       15 NAMECALL                         R5 R5 K2 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 NAMECALL                         R2 R2 K3 ["SetWaypoint"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 5
       23 GETUPVAL                         R3 6
       24 GETTABLEKS                       R3 R3 K4 ["plugin"]
       26 MOVE                             R4 R0
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 6
       29 GETTABLEKS                       R2 R2 K5 ["onMaterialSelected"]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 7
       34 MOVE                             R3 R0
       35 GETUPVAL                         R4 8
       36 CALL                             R2 2 0
       37 GETUPVAL                         R3 3
       38 NAMECALL                         R3 R3 K6 ["Get"]
       40 CALL                             R3 1 1
       41 LENGTH                           R2 R3
       42 LOADN                            R3 0
       43 JUMPIFNOTLT                      R3 R2 ; [+62]
       45 GETUPVAL                         R4 9
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 JUMPIFNOT                        R4 ; [+2]
       49 LOADK                            R3 K7 ["MaterialVariant"]
       50 JUMP                             ; [+1]
       51 LOADK                            R3 K8 ["BaseMaterial"]
       52 NEWTABLE                         R4 0 0
       54 GETIMPORT                        R5 K10 [pairs]
       56 GETUPVAL                         R6 10
       57 CALL                             R5 1 3
       58 FORGPREP_NEXT                    R5
       59 JUMPIFNOT                        R9 ; [+7]
       60 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       62 MOVE                             R11 R4
       63 MOVE                             R12 R8
       64 GETIMPORT                        R10 K13 [table.insert]
       66 CALL                             R10 2 0
       67 FORGLOOP                         R5 2 ; [-9]
       69 GETUPVAL                         R5 6
       70 GETTABLEKS                       R5 R5 K14 ["viewType"]
       72 GETUPVAL                         R7 11
       73 JUMPIFNOTEQKS                    R7 K15 [""] ; [+2]
       75 LOADB                            R6 0 +1
       76 LOADB                            R6 1
       77 GETIMPORT                        R7 K17 [table.concat]
       79 MOVE                             R8 R4
       80 LOADK                            R9 K18 [", "]
       81 CALL                             R7 2 1
       82 LENGTH                           R8 R4
       83 GETUPVAL                         R9 12
       84 LOADK                            R11 K19 ["MaterialApplied"]
       85 LOADK                            R12 K20 ["PopupDropdown"]
       86 MOVE                             R13 R2
       87 MOVE                             R14 R1
       88 MOVE                             R15 R3
       89 DUPTABLE                         R16 K24 [{"viewType", "isSearchBarUsed", "filterChips", "filterChipsCount"}]
       90 FASTCALL1                        TOSTRING R5 ; [+3]
       91 MOVE                             R18 R5
       92 GETIMPORT                        R17 K26 [tostring]
       94 CALL                             R17 1 1
       95 SETTABLEKS                       R17 R16 K14 ["viewType"]
       97 SETTABLEKS                       R6 R16 K21 ["isSearchBarUsed"]
       99 SETTABLEKS                       R7 R16 K22 ["filterChips"]
      101 SETTABLEKS                       R8 R16 K23 ["filterChipsCount"]
      103 NAMECALL                         R9 R9 K27 ["report"]
      105 CALL                             R9 7 0
      106 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["current"]
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 GETTABLEKS                       R5 R4 K3 ["Material"]
        9 SETTABLEKS                       R5 R3 K3 ["Material"]
       11 GETTABLEKS                       R5 R4 K4 ["MaterialVariant"]
       13 SETTABLEKS                       R5 R3 K4 ["MaterialVariant"]
       15 FORGLOOP                         R0 2 ; [-9]
       17 RETURN                           R0 0

PROTO_24:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_25:
        0 JUMPIFNOT                        R0 ; [+18]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETTABLEN                        R1 R2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K1 ["onClose"]
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K1 ["onClose"]
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["List"]
        5 JUMP                             ; [+3]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["Grid"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["setViewType"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 LOADK                            R3 K3 ["ViewTypeToggled"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R5 R0
       18 GETIMPORT                        R4 K5 [tostring]
       20 CALL                             R4 1 1
       21 NAMECALL                         R1 R1 K6 ["report"]
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["recents"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["recents"]
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K1 ["onFilterChipsUpdate"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K1 ["onFilterChipsUpdate"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETTABLEKS                       R2 R0 K0 ["recents"]
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADK                            R1 K2 ["On"]
       25 JUMP                             ; [+1]
       26 LOADK                            R1 K3 ["Off"]
       27 GETUPVAL                         R2 4
       28 LOADK                            R4 K4 ["FilterChipToggled"]
       29 LOADK                            R5 K5 ["Recents"]
       30 MOVE                             R6 R1
       31 NAMECALL                         R2 R2 K6 ["report"]
       33 CALL                             R2 4 0
       34 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["appliedInPlace"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["appliedInPlace"]
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K1 ["onFilterChipsUpdate"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K1 ["onFilterChipsUpdate"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETTABLEKS                       R2 R0 K0 ["appliedInPlace"]
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADK                            R1 K2 ["On"]
       25 JUMP                             ; [+1]
       26 LOADK                            R1 K3 ["Off"]
       27 GETUPVAL                         R2 4
       28 LOADK                            R4 K4 ["FilterChipToggled"]
       29 LOADK                            R5 K5 ["AppliedInPlace"]
       30 MOVE                             R6 R1
       31 NAMECALL                         R2 R2 K6 ["report"]
       33 CALL                             R2 4 0
       34 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETTABLEKS                       R1 R0 K0 ["defaultMaterials"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["defaultMaterials"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["customMaterials"]
       12 NOT                              R1 R2
       13 SETTABLEKS                       R1 R0 K1 ["customMaterials"]
       15 GETUPVAL                         R1 2
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K2 ["onFilterChipsUpdate"]
       21 JUMPIFNOT                        R1 ; [+5]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K2 ["onFilterChipsUpdate"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R2 R0 K1 ["customMaterials"]
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADK                            R1 K3 ["On"]
       31 JUMP                             ; [+1]
       32 LOADK                            R1 K4 ["Off"]
       33 GETUPVAL                         R2 4
       34 LOADK                            R4 K5 ["FilterChipToggled"]
       35 LOADK                            R5 K6 ["CustomMaterials"]
       36 MOVE                             R6 R1
       37 NAMECALL                         R2 R2 K7 ["report"]
       39 CALL                             R2 4 0
       40 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["defaultMaterials"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["defaultMaterials"]
        9 GETTABLEKS                       R1 R0 K1 ["customMaterials"]
       11 JUMPIFNOT                        R1 ; [+3]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K1 ["customMaterials"]
       15 GETUPVAL                         R1 2
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K2 ["onFilterChipsUpdate"]
       21 JUMPIFNOT                        R1 ; [+5]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K2 ["onFilterChipsUpdate"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R2 R0 K0 ["defaultMaterials"]
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADK                            R1 K3 ["On"]
       31 JUMP                             ; [+1]
       32 LOADK                            R1 K4 ["Off"]
       33 GETUPVAL                         R2 4
       34 LOADK                            R4 K5 ["FilterChipToggled"]
       35 LOADK                            R5 K6 ["DefaultMaterials"]
       36 MOVE                             R6 R1
       37 NAMECALL                         R2 R2 K7 ["report"]
       39 CALL                             R2 4 0
       40 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["customMaterials"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["customMaterials"]
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K1 ["onFilterChipsUpdate"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K1 ["onFilterChipsUpdate"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETTABLEKS                       R2 R0 K0 ["customMaterials"]
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADK                            R1 K2 ["On"]
       25 JUMP                             ; [+1]
       26 LOADK                            R1 K3 ["Off"]
       27 GETUPVAL                         R2 4
       28 LOADK                            R4 K4 ["FilterChipToggled"]
       29 LOADK                            R5 K5 ["CustomMaterials"]
       30 MOVE                             R6 R1
       31 NAMECALL                         R2 R2 K6 ["report"]
       33 CALL                             R2 4 0
       34 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Material"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Material"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["current"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R3 R0 K0 ["Material"]
       12 GETUPVAL                         R4 3
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 4
       15 LOADK                            R5 K2 ["Applied %* Material to Selection"]
       16 MOVE                             R7 R1
       17 NAMECALL                         R5 R5 K3 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 NAMECALL                         R2 R2 K4 ["SetWaypoint"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 5
       25 GETUPVAL                         R3 6
       26 GETTABLEKS                       R3 R3 K5 ["plugin"]
       28 GETTABLEKS                       R4 R0 K0 ["Material"]
       30 CALL                             R2 2 0
       31 GETUPVAL                         R2 6
       32 GETTABLEKS                       R2 R2 K6 ["onMaterialSelected"]
       34 GETTABLEKS                       R3 R0 K0 ["Material"]
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 7
       38 GETTABLEKS                       R3 R0 K0 ["Material"]
       40 GETUPVAL                         R4 8
       41 CALL                             R2 2 0
       42 GETUPVAL                         R3 3
       43 NAMECALL                         R3 R3 K7 ["Get"]
       45 CALL                             R3 1 1
       46 LENGTH                           R2 R3
       47 LOADN                            R3 0
       48 JUMPIFNOTLT                      R3 R2 ; [+62]
       50 GETUPVAL                         R4 9
       51 MOVE                             R5 R1
       52 CALL                             R4 1 1
       53 JUMPIFNOT                        R4 ; [+2]
       54 LOADK                            R3 K8 ["MaterialVariant"]
       55 JUMP                             ; [+1]
       56 LOADK                            R3 K9 ["BaseMaterial"]
       57 NEWTABLE                         R4 0 0
       59 GETIMPORT                        R5 K11 [pairs]
       61 GETUPVAL                         R6 10
       62 CALL                             R5 1 3
       63 FORGPREP_NEXT                    R5
       64 JUMPIFNOT                        R9 ; [+7]
       65 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       67 MOVE                             R11 R4
       68 MOVE                             R12 R8
       69 GETIMPORT                        R10 K14 [table.insert]
       71 CALL                             R10 2 0
       72 FORGLOOP                         R5 2 ; [-9]
       74 GETUPVAL                         R5 6
       75 GETTABLEKS                       R5 R5 K15 ["viewType"]
       77 GETUPVAL                         R7 11
       78 JUMPIFNOTEQKS                    R7 K16 [""] ; [+2]
       80 LOADB                            R6 0 +1
       81 LOADB                            R6 1
       82 GETIMPORT                        R7 K18 [table.concat]
       84 MOVE                             R8 R4
       85 LOADK                            R9 K19 [", "]
       86 CALL                             R7 2 1
       87 LENGTH                           R8 R4
       88 GETUPVAL                         R9 12
       89 LOADK                            R11 K20 ["MaterialApplied"]
       90 LOADK                            R12 K21 ["PopupDropdown"]
       91 MOVE                             R13 R2
       92 MOVE                             R14 R1
       93 MOVE                             R15 R3
       94 DUPTABLE                         R16 K25 [{"viewType", "isSearchBarUsed", "filterChips", "filterChipsCount"}]
       95 FASTCALL1                        TOSTRING R5 ; [+3]
       96 MOVE                             R18 R5
       97 GETIMPORT                        R17 K27 [tostring]
       99 CALL                             R17 1 1
      100 SETTABLEKS                       R17 R16 K15 ["viewType"]
      102 SETTABLEKS                       R6 R16 K22 ["isSearchBarUsed"]
      104 SETTABLEKS                       R7 R16 K23 ["filterChips"]
      106 SETTABLEKS                       R8 R16 K24 ["filterChipsCount"]
      108 NAMECALL                         R9 R9 K28 ["report"]
      110 CALL                             R9 7 0
      111 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["current"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 GETUPVAL                         R1 3
       14 CALL                             R1 0 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R2 R0 K2 ["Material"]
       18 GETUPVAL                         R3 5
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 SUBK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 JUMPIFNOTEQKN                    R0 K2 [0] ; [+18]
       11 GETIMPORT                        R0 K4 [pairs]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 CALL                             R0 1 3
       17 FORGPREP_NEXT                    R0
       18 GETTABLEKS                       R5 R4 K5 ["Material"]
       20 SETTABLEKS                       R5 R3 K5 ["Material"]
       22 GETTABLEKS                       R5 R4 K6 ["MaterialVariant"]
       24 SETTABLEKS                       R5 R3 K6 ["MaterialVariant"]
       26 FORGLOOP                         R0 2 ; [-9]
       28 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
        8 NAMECALL                         R0 R0 K2 ["Fire"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 3
       12 LOADK                            R2 K3 ["MaterialGeneratorOpened"]
       13 NAMECALL                         R0 R0 K4 ["report"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
        8 NAMECALL                         R0 R0 K2 ["Fire"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 3
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 4
       15 LOADK                            R2 K3 ["MaterialGeneratorOpened"]
       16 NAMECALL                         R0 R0 K4 ["report"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+43]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["MATERIAL_GENERATOR_ENABLED"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 1
       10 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 JUMPIF                           R0 ; [+22]
       15 LOADNIL                          R0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K3 ["MATERIAL_GENERATOR_READY"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          REF R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 NAMECALL                         R1 R1 K4 ["Bind"]
       27 CALL                             R1 3 1
       28 MOVE                             R0 R1
       29 GETUPVAL                         R1 1
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K5 ["LOAD_MATERIAL_GENERATOR"]
       33 NAMECALL                         R1 R1 K6 ["Fire"]
       35 CALL                             R1 2 0
       36 CLOSEUPVALS                      R0
       37 GETUPVAL                         R0 4
       38 GETTABLEKS                       R0 R0 K7 ["onClose"]
       40 JUMPIFNOT                        R0 ; [+38]
       41 GETUPVAL                         R0 4
       42 GETTABLEKS                       R0 R0 K7 ["onClose"]
       44 CALL                             R0 0 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R0 5
       47 JUMPIF                           R0 ; [+23]
       48 LOADNIL                          R0
       49 GETUPVAL                         R1 1
       50 GETUPVAL                         R3 2
       51 GETTABLEKS                       R3 R3 K3 ["MATERIAL_GENERATOR_READY"]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          REF R0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U3
       59 NAMECALL                         R1 R1 K4 ["Bind"]
       61 CALL                             R1 3 1
       62 MOVE                             R0 R1
       63 GETUPVAL                         R1 1
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K5 ["LOAD_MATERIAL_GENERATOR"]
       67 NAMECALL                         R1 R1 K6 ["Fire"]
       69 CALL                             R1 2 0
       70 CLOSEUPVALS                      R0
       71 GETUPVAL                         R0 4
       72 GETTABLEKS                       R0 R0 K7 ["onClose"]
       74 JUMPIFNOT                        R0 ; [+4]
       75 GETUPVAL                         R0 4
       76 GETTABLEKS                       R0 R0 K7 ["onClose"]
       78 CALL                             R0 0 0
       79 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+33]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["MATERIAL_MANAGER_ENABLED"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 1
       10 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 JUMPIF                           R0 ; [+12]
       15 GETUPVAL                         R0 1
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K3 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
       19 NAMECALL                         R0 R0 K4 ["Fire"]
       21 CALL                             R0 2 0
       22 GETUPVAL                         R0 3
       23 LOADK                            R2 K5 ["MaterialManagerOpened"]
       24 NAMECALL                         R0 R0 K6 ["report"]
       26 CALL                             R0 2 0
       27 GETUPVAL                         R0 4
       28 GETTABLEKS                       R0 R0 K7 ["onClose"]
       30 JUMPIFNOT                        R0 ; [+30]
       31 GETUPVAL                         R0 4
       32 GETTABLEKS                       R0 R0 K7 ["onClose"]
       34 CALL                             R0 0 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R0 5
       37 JUMPIF                           R0 ; [+15]
       38 GETUPVAL                         R0 1
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R2 R2 K3 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
       42 NAMECALL                         R0 R0 K4 ["Fire"]
       44 CALL                             R0 2 0
       45 GETUPVAL                         R0 6
       46 LOADB                            R1 1
       47 CALL                             R0 1 0
       48 GETUPVAL                         R0 3
       49 LOADK                            R2 K5 ["MaterialManagerOpened"]
       50 NAMECALL                         R0 R0 K6 ["report"]
       52 CALL                             R0 2 0
       53 GETUPVAL                         R0 4
       54 GETTABLEKS                       R0 R0 K7 ["onClose"]
       56 JUMPIFNOT                        R0 ; [+4]
       57 GETUPVAL                         R0 4
       58 GETTABLEKS                       R0 R0 K7 ["onClose"]
       60 CALL                             R0 0 0
       61 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 NAMECALL                         R4 R4 K0 ["use"]
       15 CALL                             R4 1 1
       16 LOADK                            R7 K1 ["Selection"]
       17 NAMECALL                         R5 R3 K2 ["getService"]
       19 CALL                             R5 2 1
       20 LOADK                            R8 K3 ["ChangeHistoryService"]
       21 NAMECALL                         R6 R3 K2 ["getService"]
       23 CALL                             R6 2 1
       24 GETIMPORT                        R7 K5 [game]
       26 LOADK                            R9 K6 ["MemStorageService"]
       27 NAMECALL                         R7 R7 K7 ["GetService"]
       29 CALL                             R7 2 1
       30 LOADK                            R10 K8 ["MaterialService"]
       31 NAMECALL                         R8 R3 K9 ["getServiceInstance"]
       33 CALL                             R8 2 1
       34 GETIMPORT                        R9 K5 [game]
       36 LOADK                            R11 K10 ["Workspace"]
       37 NAMECALL                         R9 R9 K7 ["GetService"]
       39 CALL                             R9 2 1
       40 GETUPVAL                         R10 4
       41 GETUPVAL                         R14 5
       42 GETTABLEKS                       R14 R14 K11 ["MATERIAL_GENERATOR_ENABLED"]
       44 NAMECALL                         R12 R7 K12 ["GetItem"]
       46 CALL                             R12 2 1
       47 JUMPIFEQKS                       R12 K13 ["true"] ; [+2]
       49 LOADB                            R11 0 +1
       50 LOADB                            R11 1
       51 CALL                             R10 1 2
       52 GETUPVAL                         R12 4
       53 GETUPVAL                         R16 5
       54 GETTABLEKS                       R16 R16 K14 ["MATERIAL_MANAGER_ENABLED"]
       56 NAMECALL                         R14 R7 K12 ["GetItem"]
       58 CALL                             R14 2 1
       59 JUMPIFEQKS                       R14 K13 ["true"] ; [+2]
       61 LOADB                            R13 0 +1
       62 LOADB                            R13 1
       63 CALL                             R12 1 2
       64 GETUPVAL                         R14 4
       65 LOADK                            R15 K15 [""]
       66 CALL                             R14 1 2
       67 GETUPVAL                         R16 4
       68 GETTABLEKS                       R17 R0 K16 ["savedFilterChips"]
       70 JUMPIF                           R17 ; [+13]
       71 DUPTABLE                         R17 K21 [{"recents", "appliedInPlace", "customMaterials", "defaultMaterials"}]
       72 LOADB                            R18 0
       73 SETTABLEKS                       R18 R17 K17 ["recents"]
       75 LOADB                            R18 0
       76 SETTABLEKS                       R18 R17 K18 ["appliedInPlace"]
       78 LOADB                            R18 0
       79 SETTABLEKS                       R18 R17 K19 ["customMaterials"]
       81 LOADB                            R18 0
       82 SETTABLEKS                       R18 R17 K20 ["defaultMaterials"]
       84 CALL                             R16 1 2
       85 NEWCLOSURE                       R18 P0
       86 CAPTURE                          VAL R7
       87 CAPTURE                          UPVAL U5
       88 NEWCLOSURE                       R19 P1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          UPVAL U5
       91 NEWCLOSURE                       R20 P2
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          VAL R8
       94 CAPTURE                          UPVAL U7
       95 NEWCLOSURE                       R21 P3
       96 CAPTURE                          VAL R9
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          UPVAL U9
       99 NEWCLOSURE                       R22 P4
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U8
      102 NEWCLOSURE                       R23 P5
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          VAL R8
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          VAL R16
      107 CAPTURE                          UPVAL U10
      108 CAPTURE                          UPVAL U11
      109 CAPTURE                          UPVAL U12
      110 CAPTURE                          VAL R22
      111 CAPTURE                          VAL R21
      112 CAPTURE                          REF R14
      113 CAPTURE                          UPVAL U13
      114 GETUPVAL                         R24 14
      115 LOADN                            R25 0
      116 CALL                             R24 1 1
      117 GETUPVAL                         R25 14
      118 LOADB                            R26 0
      119 CALL                             R25 1 1
      120 GETUPVAL                         R26 14
      121 NEWTABLE                         R27 0 0
      123 CALL                             R26 1 1
      124 NEWCLOSURE                       R27 P6
      125 CAPTURE                          VAL R26
      126 NEWCLOSURE                       R28 P7
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R26
      129 NEWCLOSURE                       R29 P8
      130 CAPTURE                          VAL R26
      131 NEWCLOSURE                       R30 P9
      132 CAPTURE                          VAL R5
      133 CAPTURE                          UPVAL U8
      134 NEWCLOSURE                       R31 P10
      135 CAPTURE                          UPVAL U15
      136 CAPTURE                          VAL R16
      137 CAPTURE                          UPVAL U11
      138 CAPTURE                          UPVAL U12
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          VAL R8
      141 CAPTURE                          UPVAL U7
      142 CAPTURE                          UPVAL U10
      143 CAPTURE                          VAL R22
      144 CAPTURE                          VAL R21
      145 CAPTURE                          REF R14
      146 CAPTURE                          UPVAL U13
      147 CAPTURE                          UPVAL U16
      148 CAPTURE                          VAL R28
      149 CAPTURE                          UPVAL U17
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R25
      152 NEWCLOSURE                       R32 P11
      153 CAPTURE                          REF R14
      154 CAPTURE                          VAL R26
      155 CAPTURE                          VAL R25
      156 CAPTURE                          VAL R24
      157 CAPTURE                          VAL R15
      158 NEWCLOSURE                       R33 P12
      159 CAPTURE                          UPVAL U8
      160 CAPTURE                          VAL R26
      161 CAPTURE                          UPVAL U17
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R6
      164 CAPTURE                          UPVAL U18
      165 CAPTURE                          VAL R0
      166 CAPTURE                          UPVAL U19
      167 CAPTURE                          VAL R8
      168 CAPTURE                          UPVAL U20
      169 CAPTURE                          VAL R16
      170 CAPTURE                          REF R14
      171 CAPTURE                          VAL R4
      172 GETUPVAL                         R34 21
      173 NEWCLOSURE                       R35 P13
      174 CAPTURE                          VAL R26
      175 NEWTABLE                         R36 0 0
      177 CALL                             R34 2 0
      178 GETTABLEKS                       R35 R0 K22 ["viewType"]
      180 GETUPVAL                         R36 22
      181 GETTABLEKS                       R36 R36 K23 ["Grid"]
      183 JUMPIFEQ                         R35 R36 ; [+2]
      185 LOADB                            R34 0 +1
      186 LOADB                            R34 1
      187 GETUPVAL                         R35 23
      188 GETUPVAL                         R36 24
      189 DUPTABLE                         R37 K26 [{"Layout", "VerticalAlignment"}]
      190 GETIMPORT                        R38 K30 [Enum.FillDirection.Vertical]
      192 SETTABLEKS                       R38 R37 K24 ["Layout"]
      194 GETIMPORT                        R38 K32 [Enum.VerticalAlignment.Top]
      196 SETTABLEKS                       R38 R37 K25 ["VerticalAlignment"]
      198 NEWTABLE                         R38 0 4
      200 GETUPVAL                         R39 23
      201 GETUPVAL                         R40 24
      202 DUPTABLE                         R41 K37 [{"key", "Size", "Spacing", "Padding", "Layout"}]
      203 LOADK                            R42 K38 ["PrimaryTools"]
      204 SETTABLEKS                       R42 R41 K33 ["key"]
      206 GETTABLEKS                       R42 R1 K38 ["PrimaryTools"]
      208 GETTABLEKS                       R42 R42 K34 ["Size"]
      210 SETTABLEKS                       R42 R41 K34 ["Size"]
      212 GETTABLEKS                       R42 R1 K38 ["PrimaryTools"]
      214 GETTABLEKS                       R42 R42 K35 ["Spacing"]
      216 SETTABLEKS                       R42 R41 K35 ["Spacing"]
      218 GETTABLEKS                       R42 R1 K38 ["PrimaryTools"]
      220 GETTABLEKS                       R42 R42 K36 ["Padding"]
      222 SETTABLEKS                       R42 R41 K36 ["Padding"]
      224 GETIMPORT                        R42 K40 [Enum.FillDirection.Horizontal]
      226 SETTABLEKS                       R42 R41 K24 ["Layout"]
      228 NEWTABLE                         R42 0 2
      230 GETUPVAL                         R43 23
      231 GETUPVAL                         R44 25
      232 DUPTABLE                         R45 K49 [{"key", "PlaceholderText", "ShowSearchIcon", "ShowSearchButton", "OnSearchRequested", "OnTextChanged", "OnTextBoxFocusLost", "Style", "Size", "ShouldFocusOnMount"}]
      233 LOADK                            R46 K50 ["SearchBar"]
      234 SETTABLEKS                       R46 R45 K33 ["key"]
      236 LOADK                            R48 K50 ["SearchBar"]
      237 LOADK                            R49 K51 ["SearchMaterials"]
      238 NAMECALL                         R46 R2 K52 ["getText"]
      240 CALL                             R46 3 1
      241 SETTABLEKS                       R46 R45 K41 ["PlaceholderText"]
      243 LOADB                            R46 1
      244 SETTABLEKS                       R46 R45 K42 ["ShowSearchIcon"]
      246 LOADB                            R46 0
      247 SETTABLEKS                       R46 R45 K43 ["ShowSearchButton"]
      249 GETUPVAL                         R47 26
      250 CALL                             R47 0 1
      251 JUMPIFNOT                        R47 ; [+2]
      252 MOVE                             R46 R32
      253 JUMP                             ; [+1]
      254 MOVE                             R46 R15
      255 SETTABLEKS                       R46 R45 K44 ["OnSearchRequested"]
      257 GETUPVAL                         R47 26
      258 CALL                             R47 0 1
      259 JUMPIFNOT                        R47 ; [+2]
      260 MOVE                             R46 R32
      261 JUMP                             ; [+1]
      262 MOVE                             R46 R15
      263 SETTABLEKS                       R46 R45 K45 ["OnTextChanged"]
      265 GETUPVAL                         R47 26
      266 CALL                             R47 0 1
      267 JUMPIFNOT                        R47 ; [+6]
      268 NEWCLOSURE                       R46 P14
      269 CAPTURE                          VAL R25
      270 CAPTURE                          VAL R31
      271 CAPTURE                          VAL R33
      272 CAPTURE                          VAL R0
      273 JUMP                             ; [+1]
      274 LOADNIL                          R46
      275 SETTABLEKS                       R46 R45 K46 ["OnTextBoxFocusLost"]
      277 LOADK                            R46 K53 ["Compact"]
      278 SETTABLEKS                       R46 R45 K47 ["Style"]
      280 GETTABLEKS                       R46 R1 K38 ["PrimaryTools"]
      282 GETTABLEKS                       R46 R46 K50 ["SearchBar"]
      284 GETTABLEKS                       R46 R46 K34 ["Size"]
      286 SETTABLEKS                       R46 R45 K34 ["Size"]
      288 LOADB                            R46 1
      289 SETTABLEKS                       R46 R45 K48 ["ShouldFocusOnMount"]
      291 NEWTABLE                         R46 0 0
      293 CALL                             R43 3 1
      294 GETUPVAL                         R44 23
      295 GETUPVAL                         R45 27
      296 DUPTABLE                         R46 K58 [{"key", "BackgroundStyle", "LeftIcon", "Size", "TooltipText", "OnClick"}]
      297 LOADK                            R47 K59 ["ViewToggle"]
      298 SETTABLEKS                       R47 R46 K33 ["key"]
      300 LOADK                            R47 K60 ["Box"]
      301 SETTABLEKS                       R47 R46 K54 ["BackgroundStyle"]
      303 JUMPIFNOT                        R34 ; [+7]
      304 GETTABLEKS                       R47 R1 K38 ["PrimaryTools"]
      306 GETTABLEKS                       R47 R47 K59 ["ViewToggle"]
      308 GETTABLEKS                       R47 R47 K61 ["LeftIconList"]
      310 JUMP                             ; [+6]
      311 GETTABLEKS                       R47 R1 K38 ["PrimaryTools"]
      313 GETTABLEKS                       R47 R47 K59 ["ViewToggle"]
      315 GETTABLEKS                       R47 R47 K62 ["LeftIconGrid"]
      317 SETTABLEKS                       R47 R46 K55 ["LeftIcon"]
      319 GETTABLEKS                       R47 R1 K38 ["PrimaryTools"]
      321 GETTABLEKS                       R47 R47 K59 ["ViewToggle"]
      323 GETTABLEKS                       R47 R47 K34 ["Size"]
      325 SETTABLEKS                       R47 R46 K34 ["Size"]
      327 JUMPIFNOT                        R34 ; [+6]
      328 LOADK                            R49 K59 ["ViewToggle"]
      329 LOADK                            R50 K63 ["ListView"]
      330 NAMECALL                         R47 R2 K52 ["getText"]
      332 CALL                             R47 3 1
      333 JUMP                             ; [+5]
      334 LOADK                            R49 K59 ["ViewToggle"]
      335 LOADK                            R50 K64 ["GridView"]
      336 NAMECALL                         R47 R2 K52 ["getText"]
      338 CALL                             R47 3 1
      339 SETTABLEKS                       R47 R46 K56 ["TooltipText"]
      341 NEWCLOSURE                       R47 P15
      342 CAPTURE                          VAL R34
      343 CAPTURE                          UPVAL U22
      344 CAPTURE                          VAL R0
      345 CAPTURE                          VAL R4
      346 SETTABLEKS                       R47 R46 K57 ["OnClick"]
      348 NEWTABLE                         R47 0 0
      350 CALL                             R44 3 -1
      351 SETLIST                          R42 R43 -1 [1]
      353 CALL                             R39 3 1
      354 GETUPVAL                         R40 23
      355 GETUPVAL                         R41 28
      356 DUPTABLE                         R42 K68 [{"Size", "ScrollingDirection", "HorizontalScrollBarInset", "ScrollBarThickness"}]
      357 GETTABLEKS                       R43 R1 K69 ["Filters"]
      359 GETTABLEKS                       R43 R43 K34 ["Size"]
      361 SETTABLEKS                       R43 R42 K34 ["Size"]
      363 GETIMPORT                        R43 K71 [Enum.ScrollingDirection.X]
      365 SETTABLEKS                       R43 R42 K65 ["ScrollingDirection"]
      367 GETIMPORT                        R43 K74 [Enum.ScrollBarInset.ScrollBar]
      369 SETTABLEKS                       R43 R42 K66 ["HorizontalScrollBarInset"]
      371 GETTABLEKS                       R43 R1 K75 ["MainView"]
      373 GETTABLEKS                       R43 R43 K67 ["ScrollBarThickness"]
      375 SETTABLEKS                       R43 R42 K67 ["ScrollBarThickness"]
      377 NEWTABLE                         R43 0 1
      379 GETUPVAL                         R44 23
      380 GETUPVAL                         R45 24
      381 DUPTABLE                         R46 K78 [{"key", "Layout", "HorizontalAlignment", "AutomaticSize", "Spacing", "Padding"}]
      382 LOADK                            R47 K69 ["Filters"]
      383 SETTABLEKS                       R47 R46 K33 ["key"]
      385 GETIMPORT                        R47 K40 [Enum.FillDirection.Horizontal]
      387 SETTABLEKS                       R47 R46 K24 ["Layout"]
      389 GETIMPORT                        R47 K80 [Enum.HorizontalAlignment.Left]
      391 SETTABLEKS                       R47 R46 K76 ["HorizontalAlignment"]
      393 GETIMPORT                        R47 K82 [Enum.AutomaticSize.XY]
      395 SETTABLEKS                       R47 R46 K77 ["AutomaticSize"]
      397 LOADN                            R47 4
      398 SETTABLEKS                       R47 R46 K35 ["Spacing"]
      400 DUPTABLE                         R47 K83 [{"Left", "Top"}]
      401 LOADN                            R48 8
      402 SETTABLEKS                       R48 R47 K79 ["Left"]
      404 LOADN                            R48 1
      405 SETTABLEKS                       R48 R47 K31 ["Top"]
      407 SETTABLEKS                       R47 R46 K36 ["Padding"]
      409 NEWTABLE                         R47 0 3
      411 GETUPVAL                         R48 23
      412 GETUPVAL                         R49 29
      413 DUPTABLE                         R50 K86 [{"Text", "OnClick", "selected"}]
      414 LOADK                            R53 K69 ["Filters"]
      415 LOADK                            R54 K87 ["Recents"]
      416 NAMECALL                         R51 R2 K52 ["getText"]
      418 CALL                             R51 3 1
      419 SETTABLEKS                       R51 R50 K84 ["Text"]
      421 NEWCLOSURE                       R51 P16
      422 CAPTURE                          UPVAL U11
      423 CAPTURE                          VAL R16
      424 CAPTURE                          VAL R17
      425 CAPTURE                          VAL R0
      426 CAPTURE                          VAL R4
      427 SETTABLEKS                       R51 R50 K57 ["OnClick"]
      429 GETTABLEKS                       R51 R16 K17 ["recents"]
      431 SETTABLEKS                       R51 R50 K85 ["selected"]
      433 CALL                             R48 2 1
      434 GETUPVAL                         R49 23
      435 GETUPVAL                         R50 29
      436 DUPTABLE                         R51 K86 [{"Text", "OnClick", "selected"}]
      437 LOADK                            R54 K69 ["Filters"]
      438 LOADK                            R55 K88 ["AppliedInPlace"]
      439 NAMECALL                         R52 R2 K52 ["getText"]
      441 CALL                             R52 3 1
      442 SETTABLEKS                       R52 R51 K84 ["Text"]
      444 NEWCLOSURE                       R52 P17
      445 CAPTURE                          UPVAL U11
      446 CAPTURE                          VAL R16
      447 CAPTURE                          VAL R17
      448 CAPTURE                          VAL R0
      449 CAPTURE                          VAL R4
      450 SETTABLEKS                       R52 R51 K57 ["OnClick"]
      452 GETTABLEKS                       R52 R16 K18 ["appliedInPlace"]
      454 SETTABLEKS                       R52 R51 K85 ["selected"]
      456 CALL                             R49 2 1
      457 GETUPVAL                         R51 15
      458 CALL                             R51 0 1
      459 JUMPIFNOT                        R51 ; [+43]
      460 GETUPVAL                         R50 23
      461 GETUPVAL                         R51 30
      462 DUPTABLE                         R52 K95 [{"LeftText", "RightText", "LeftSelected", "RightSelected", "OnClickLeft", "OnClickRight"}]
      463 LOADK                            R55 K69 ["Filters"]
      464 LOADK                            R56 K96 ["CustomMaterials"]
      465 NAMECALL                         R53 R2 K52 ["getText"]
      467 CALL                             R53 3 1
      468 SETTABLEKS                       R53 R52 K89 ["LeftText"]
      470 LOADK                            R55 K69 ["Filters"]
      471 LOADK                            R56 K97 ["DefaultMaterials"]
      472 NAMECALL                         R53 R2 K52 ["getText"]
      474 CALL                             R53 3 1
      475 SETTABLEKS                       R53 R52 K90 ["RightText"]
      477 GETTABLEKS                       R53 R16 K19 ["customMaterials"]
      479 SETTABLEKS                       R53 R52 K91 ["LeftSelected"]
      481 GETTABLEKS                       R53 R16 K20 ["defaultMaterials"]
      483 SETTABLEKS                       R53 R52 K92 ["RightSelected"]
      485 NEWCLOSURE                       R53 P18
      486 CAPTURE                          UPVAL U11
      487 CAPTURE                          VAL R16
      488 CAPTURE                          VAL R17
      489 CAPTURE                          VAL R0
      490 CAPTURE                          VAL R4
      491 SETTABLEKS                       R53 R52 K93 ["OnClickLeft"]
      493 NEWCLOSURE                       R53 P19
      494 CAPTURE                          UPVAL U11
      495 CAPTURE                          VAL R16
      496 CAPTURE                          VAL R17
      497 CAPTURE                          VAL R0
      498 CAPTURE                          VAL R4
      499 SETTABLEKS                       R53 R52 K94 ["OnClickRight"]
      501 CALL                             R50 2 1
      502 JUMP                             ; [+23]
      503 GETUPVAL                         R50 23
      504 GETUPVAL                         R51 29
      505 DUPTABLE                         R52 K86 [{"Text", "OnClick", "selected"}]
      506 LOADK                            R55 K69 ["Filters"]
      507 LOADK                            R56 K96 ["CustomMaterials"]
      508 NAMECALL                         R53 R2 K52 ["getText"]
      510 CALL                             R53 3 1
      511 SETTABLEKS                       R53 R52 K84 ["Text"]
      513 NEWCLOSURE                       R53 P20
      514 CAPTURE                          UPVAL U11
      515 CAPTURE                          VAL R16
      516 CAPTURE                          VAL R17
      517 CAPTURE                          VAL R0
      518 CAPTURE                          VAL R4
      519 SETTABLEKS                       R53 R52 K57 ["OnClick"]
      521 GETTABLEKS                       R53 R16 K19 ["customMaterials"]
      523 SETTABLEKS                       R53 R52 K85 ["selected"]
      525 CALL                             R50 2 1
      526 SETLIST                          R47 R48 3 [1]
      528 CALL                             R44 3 -1
      529 SETLIST                          R43 R44 -1 [1]
      531 CALL                             R40 3 1
      532 GETUPVAL                         R41 23
      533 GETUPVAL                         R42 31
      534 DUPTABLE                         R43 K120 [{"key", "AppliedItemId", "ShouldCenterTooltip", "ContainerXBounds", "ContainerYBounds", "Size", "GridItemsPerRow", "GridItemSize", "Items", "ShowGridLabels", "OnClick", "OnMouseEnter", "OnMouseLeave", "ListPadding", "OnScrollUpdate", "OnSnapshotTaken", "ViewType", "InitialGridCanvasPosition", "InitialListCanvasPosition", "ScrollingDirection", "SelectedItemId", "ShouldSyncScroll", "SnapshotSize", "SnapshotBorderThickness", "TooltipDelay", "UseInstantTooltip"}]
      535 LOADK                            R44 K121 ["MaterialGrid"]
      536 SETTABLEKS                       R44 R43 K33 ["key"]
      538 MOVE                             R44 R30
      539 CALL                             R44 0 1
      540 SETTABLEKS                       R44 R43 K98 ["AppliedItemId"]
      542 LOADB                            R44 1
      543 SETTABLEKS                       R44 R43 K99 ["ShouldCenterTooltip"]
      545 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      547 GETTABLEKS                       R44 R44 K100 ["ContainerXBounds"]
      549 SETTABLEKS                       R44 R43 K100 ["ContainerXBounds"]
      551 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      553 GETTABLEKS                       R44 R44 K101 ["ContainerYBounds"]
      555 SETTABLEKS                       R44 R43 K101 ["ContainerYBounds"]
      557 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      559 GETTABLEKS                       R44 R44 K34 ["Size"]
      561 SETTABLEKS                       R44 R43 K34 ["Size"]
      563 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      565 GETTABLEKS                       R44 R44 K102 ["GridItemsPerRow"]
      567 SETTABLEKS                       R44 R43 K102 ["GridItemsPerRow"]
      569 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      571 GETTABLEKS                       R44 R44 K103 ["GridItemSize"]
      573 SETTABLEKS                       R44 R43 K103 ["GridItemSize"]
      575 GETUPVAL                         R45 26
      576 CALL                             R45 0 1
      577 JUMPIFNOT                        R45 ; [+3]
      578 MOVE                             R44 R31
      579 CALL                             R44 0 1
      580 JUMP                             ; [+2]
      581 MOVE                             R44 R23
      582 CALL                             R44 0 1
      583 SETTABLEKS                       R44 R43 K104 ["Items"]
      585 LOADB                            R44 0
      586 SETTABLEKS                       R44 R43 K105 ["ShowGridLabels"]
      588 GETUPVAL                         R45 26
      589 CALL                             R45 0 1
      590 JUMPIFNOT                        R45 ; [+3]
      591 NEWCLOSURE                       R44 P21
      592 CAPTURE                          VAL R33
      593 JUMP                             ; [+14]
      594 NEWCLOSURE                       R44 P22
      595 CAPTURE                          UPVAL U8
      596 CAPTURE                          VAL R26
      597 CAPTURE                          UPVAL U17
      598 CAPTURE                          VAL R5
      599 CAPTURE                          VAL R6
      600 CAPTURE                          UPVAL U18
      601 CAPTURE                          VAL R0
      602 CAPTURE                          UPVAL U19
      603 CAPTURE                          VAL R8
      604 CAPTURE                          UPVAL U20
      605 CAPTURE                          VAL R16
      606 CAPTURE                          REF R14
      607 CAPTURE                          VAL R4
      608 SETTABLEKS                       R44 R43 K57 ["OnClick"]
      610 NEWCLOSURE                       R44 P23
      611 CAPTURE                          VAL R24
      612 CAPTURE                          UPVAL U26
      613 CAPTURE                          VAL R25
      614 CAPTURE                          VAL R28
      615 CAPTURE                          UPVAL U17
      616 CAPTURE                          VAL R5
      617 SETTABLEKS                       R44 R43 K106 ["OnMouseEnter"]
      619 NEWCLOSURE                       R44 P24
      620 CAPTURE                          VAL R24
      621 CAPTURE                          VAL R26
      622 SETTABLEKS                       R44 R43 K107 ["OnMouseLeave"]
      624 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      626 GETTABLEKS                       R44 R44 K108 ["ListPadding"]
      628 SETTABLEKS                       R44 R43 K108 ["ListPadding"]
      630 GETTABLEKS                       R44 R0 K122 ["onScrollUpdate"]
      632 SETTABLEKS                       R44 R43 K109 ["OnScrollUpdate"]
      634 GETTABLEKS                       R44 R0 K123 ["onSnapshotTaken"]
      636 SETTABLEKS                       R44 R43 K110 ["OnSnapshotTaken"]
      638 GETTABLEKS                       R44 R0 K22 ["viewType"]
      640 SETTABLEKS                       R44 R43 K111 ["ViewType"]
      642 GETTABLEKS                       R44 R0 K124 ["savedGridCanvasPosition"]
      644 SETTABLEKS                       R44 R43 K112 ["InitialGridCanvasPosition"]
      646 GETTABLEKS                       R44 R0 K125 ["savedListCanvasPosition"]
      648 SETTABLEKS                       R44 R43 K113 ["InitialListCanvasPosition"]
      650 GETIMPORT                        R44 K127 [Enum.ScrollingDirection.Y]
      652 SETTABLEKS                       R44 R43 K65 ["ScrollingDirection"]
      654 GETTABLEKS                       R44 R0 K128 ["selectedMaterialIdentifier"]
      656 SETTABLEKS                       R44 R43 K114 ["SelectedItemId"]
      658 LOADB                            R44 1
      659 SETTABLEKS                       R44 R43 K115 ["ShouldSyncScroll"]
      661 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      663 GETTABLEKS                       R44 R44 K116 ["SnapshotSize"]
      665 SETTABLEKS                       R44 R43 K116 ["SnapshotSize"]
      667 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      669 GETTABLEKS                       R44 R44 K117 ["SnapshotBorderThickness"]
      671 SETTABLEKS                       R44 R43 K117 ["SnapshotBorderThickness"]
      673 GETTABLEKS                       R44 R1 K121 ["MaterialGrid"]
      675 GETTABLEKS                       R44 R44 K118 ["TooltipDelay"]
      677 SETTABLEKS                       R44 R43 K118 ["TooltipDelay"]
      679 LOADB                            R44 1
      680 SETTABLEKS                       R44 R43 K119 ["UseInstantTooltip"]
      682 CALL                             R41 2 1
      683 GETUPVAL                         R42 23
      684 GETUPVAL                         R43 24
      685 DUPTABLE                         R44 K129 [{"key", "Size", "Layout", "Padding", "Spacing"}]
      686 LOADK                            R45 K130 ["Footer"]
      687 SETTABLEKS                       R45 R44 K33 ["key"]
      689 GETTABLEKS                       R45 R1 K130 ["Footer"]
      691 GETTABLEKS                       R45 R45 K34 ["Size"]
      693 SETTABLEKS                       R45 R44 K34 ["Size"]
      695 GETIMPORT                        R45 K40 [Enum.FillDirection.Horizontal]
      697 SETTABLEKS                       R45 R44 K24 ["Layout"]
      699 GETTABLEKS                       R45 R1 K130 ["Footer"]
      701 GETTABLEKS                       R45 R45 K36 ["Padding"]
      703 SETTABLEKS                       R45 R44 K36 ["Padding"]
      705 GETTABLEKS                       R45 R1 K130 ["Footer"]
      707 GETTABLEKS                       R45 R45 K35 ["Spacing"]
      709 SETTABLEKS                       R45 R44 K35 ["Spacing"]
      711 NEWTABLE                         R45 0 2
      713 GETUPVAL                         R46 32
      714 CALL                             R46 0 1
      715 JUMPIFNOT                        R46 ; [+77]
      716 GETUPVAL                         R46 23
      717 GETUPVAL                         R47 27
      718 DUPTABLE                         R48 K134 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      719 LOADK                            R51 K75 ["MainView"]
      720 LOADK                            R52 K135 ["MaterialGeneratorButton"]
      721 NAMECALL                         R49 R2 K52 ["getText"]
      723 CALL                             R49 3 1
      724 SETTABLEKS                       R49 R48 K84 ["Text"]
      726 GETTABLEKS                       R49 R1 K130 ["Footer"]
      728 GETTABLEKS                       R49 R49 K136 ["IconButton"]
      730 GETTABLEKS                       R49 R49 K135 ["MaterialGeneratorButton"]
      732 GETTABLEKS                       R49 R49 K34 ["Size"]
      734 SETTABLEKS                       R49 R48 K34 ["Size"]
      736 GETTABLEKS                       R49 R1 K130 ["Footer"]
      738 GETTABLEKS                       R49 R49 K136 ["IconButton"]
      740 GETTABLEKS                       R49 R49 K135 ["MaterialGeneratorButton"]
      742 GETTABLEKS                       R49 R49 K137 ["Icon"]
      744 SETTABLEKS                       R49 R48 K55 ["LeftIcon"]
      746 GETTABLEKS                       R49 R1 K130 ["Footer"]
      748 GETTABLEKS                       R49 R49 K136 ["IconButton"]
      750 GETTABLEKS                       R49 R49 K131 ["IconSize"]
      752 SETTABLEKS                       R49 R48 K131 ["IconSize"]
      754 GETIMPORT                        R49 K139 [Enum.TextXAlignment.Center]
      756 SETTABLEKS                       R49 R48 K132 ["TextXAlignment"]
      758 GETTABLEKS                       R49 R1 K130 ["Footer"]
      760 GETTABLEKS                       R49 R49 K136 ["IconButton"]
      762 GETTABLEKS                       R49 R49 K35 ["Spacing"]
      764 SETTABLEKS                       R49 R48 K35 ["Spacing"]
      766 GETTABLEKS                       R49 R1 K130 ["Footer"]
      768 GETTABLEKS                       R49 R49 K136 ["IconButton"]
      770 GETTABLEKS                       R49 R49 K36 ["Padding"]
      772 SETTABLEKS                       R49 R48 K36 ["Padding"]
      774 GETTABLEKS                       R49 R1 K130 ["Footer"]
      776 GETTABLEKS                       R49 R49 K136 ["IconButton"]
      778 GETTABLEKS                       R49 R49 K133 ["BackgroundColor"]
      780 SETTABLEKS                       R49 R48 K133 ["BackgroundColor"]
      782 NEWCLOSURE                       R49 P25
      783 CAPTURE                          UPVAL U33
      784 CAPTURE                          VAL R7
      785 CAPTURE                          UPVAL U5
      786 CAPTURE                          VAL R4
      787 CAPTURE                          VAL R0
      788 CAPTURE                          VAL R10
      789 CAPTURE                          VAL R11
      790 SETTABLEKS                       R49 R48 K57 ["OnClick"]
      792 CALL                             R46 2 1
      793 GETUPVAL                         R47 23
      794 GETUPVAL                         R48 27
      795 DUPTABLE                         R49 K134 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      796 LOADK                            R52 K75 ["MainView"]
      797 LOADK                            R53 K140 ["MaterialManagerButton"]
      798 NAMECALL                         R50 R2 K52 ["getText"]
      800 CALL                             R50 3 1
      801 SETTABLEKS                       R50 R49 K84 ["Text"]
      803 GETTABLEKS                       R50 R1 K130 ["Footer"]
      805 GETTABLEKS                       R50 R50 K136 ["IconButton"]
      807 GETTABLEKS                       R50 R50 K140 ["MaterialManagerButton"]
      809 GETTABLEKS                       R50 R50 K34 ["Size"]
      811 SETTABLEKS                       R50 R49 K34 ["Size"]
      813 GETTABLEKS                       R50 R1 K130 ["Footer"]
      815 GETTABLEKS                       R50 R50 K136 ["IconButton"]
      817 GETTABLEKS                       R50 R50 K140 ["MaterialManagerButton"]
      819 GETTABLEKS                       R50 R50 K137 ["Icon"]
      821 SETTABLEKS                       R50 R49 K55 ["LeftIcon"]
      823 GETTABLEKS                       R50 R1 K130 ["Footer"]
      825 GETTABLEKS                       R50 R50 K136 ["IconButton"]
      827 GETTABLEKS                       R50 R50 K131 ["IconSize"]
      829 SETTABLEKS                       R50 R49 K131 ["IconSize"]
      831 GETIMPORT                        R50 K139 [Enum.TextXAlignment.Center]
      833 SETTABLEKS                       R50 R49 K132 ["TextXAlignment"]
      835 GETTABLEKS                       R50 R1 K130 ["Footer"]
      837 GETTABLEKS                       R50 R50 K136 ["IconButton"]
      839 GETTABLEKS                       R50 R50 K35 ["Spacing"]
      841 SETTABLEKS                       R50 R49 K35 ["Spacing"]
      843 GETTABLEKS                       R50 R1 K130 ["Footer"]
      845 GETTABLEKS                       R50 R50 K136 ["IconButton"]
      847 GETTABLEKS                       R50 R50 K36 ["Padding"]
      849 SETTABLEKS                       R50 R49 K36 ["Padding"]
      851 GETTABLEKS                       R50 R1 K130 ["Footer"]
      853 GETTABLEKS                       R50 R50 K136 ["IconButton"]
      855 GETTABLEKS                       R50 R50 K133 ["BackgroundColor"]
      857 SETTABLEKS                       R50 R49 K133 ["BackgroundColor"]
      859 NEWCLOSURE                       R50 P26
      860 CAPTURE                          UPVAL U33
      861 CAPTURE                          VAL R7
      862 CAPTURE                          UPVAL U5
      863 CAPTURE                          VAL R4
      864 CAPTURE                          VAL R0
      865 CAPTURE                          VAL R12
      866 CAPTURE                          VAL R13
      867 SETTABLEKS                       R50 R49 K57 ["OnClick"]
      869 CALL                             R47 2 -1
      870 SETLIST                          R45 R46 -1 [1]
      872 CALL                             R42 3 -1
      873 SETLIST                          R38 R39 -1 [1]
      875 CALL                             R35 3 -1
      876 CLOSEUPVALS                      R14
      877 RETURN                           R35 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["SharedPluginConstants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Src"]
       16 GETTABLEKS                       R3 R3 K8 ["Constants"]
       18 GETTABLEKS                       R3 R3 K9 ["BASE_MATERIALS"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K7 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["applyToSelection"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["isMaterialVariantByIdentifier"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K7 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Util"]
       45 GETTABLEKS                       R6 R6 K13 ["setCurrentMaterial"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K7 ["Src"]
       52 GETTABLEKS                       R7 R7 K10 ["Util"]
       54 GETTABLEKS                       R7 R7 K14 ["updateRecentlyUsedList"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K15 ["Packages"]
       61 GETTABLEKS                       R8 R8 K16 ["Dash"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K15 ["Packages"]
       68 GETTABLEKS                       R9 R9 K17 ["Framework"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K15 ["Packages"]
       75 GETTABLEKS                       R10 R10 K18 ["MaterialFramework"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K15 ["Packages"]
       82 GETTABLEKS                       R11 R11 K19 ["React"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R7 K20 ["append"]
       87 GETTABLEKS                       R12 R7 K21 ["copy"]
       89 GETTABLEKS                       R13 R7 K22 ["filter"]
       91 GETTABLEKS                       R14 R7 K23 ["keys"]
       93 GETTABLEKS                       R15 R8 K24 ["Style"]
       95 GETTABLEKS                       R15 R15 K25 ["Stylizer"]
       97 GETTABLEKS                       R16 R8 K26 ["ContextServices"]
       99 GETTABLEKS                       R17 R16 K27 ["Analytics"]
      101 GETTABLEKS                       R18 R16 K28 ["Localization"]
      103 GETTABLEKS                       R19 R9 K29 ["Context"]
      105 GETTABLEKS                       R19 R19 K30 ["StudioServices"]
      107 GETTABLEKS                       R20 R9 K31 ["Components"]
      109 GETTABLEKS                       R20 R20 K32 ["MaterialGrid"]
      111 GETTABLEKS                       R21 R9 K10 ["Util"]
      113 GETTABLEKS                       R21 R21 K33 ["levenshteinDistance"]
      115 GETTABLEKS                       R22 R9 K10 ["Util"]
      117 GETTABLEKS                       R22 R22 K34 ["getSerializedMaterialIdentifier"]
      119 GETTABLEKS                       R23 R9 K35 ["Enums"]
      121 GETTABLEKS                       R23 R23 K36 ["ViewType"]
      123 GETTABLEKS                       R24 R10 K37 ["createElement"]
      125 GETTABLEKS                       R25 R10 K38 ["useRef"]
      127 GETTABLEKS                       R26 R10 K39 ["useEffect"]
      129 GETTABLEKS                       R27 R10 K40 ["useState"]
      131 GETTABLEKS                       R28 R8 K41 ["UI"]
      133 GETTABLEKS                       R29 R28 K42 ["IconButton"]
      135 GETTABLEKS                       R30 R28 K43 ["Pane"]
      137 GETTABLEKS                       R31 R28 K44 ["ScrollingFrame"]
      139 GETTABLEKS                       R32 R28 K45 ["SearchBar"]
      141 GETIMPORT                        R33 K5 [require]
      143 GETIMPORT                        R34 K1 [script]
      145 GETTABLEKS                       R34 R34 K46 ["Parent"]
      147 GETTABLEKS                       R34 R34 K47 ["FilterChip"]
      149 CALL                             R33 1 1
      150 GETIMPORT                        R34 K5 [require]
      152 GETIMPORT                        R35 K1 [script]
      154 GETTABLEKS                       R35 R35 K46 ["Parent"]
      156 GETTABLEKS                       R35 R35 K48 ["FilterChipGroup"]
      158 CALL                             R34 1 1
      159 GETIMPORT                        R35 K5 [require]
      161 GETTABLEKS                       R36 R0 K7 ["Src"]
      163 GETTABLEKS                       R36 R36 K49 ["Flags"]
      165 GETTABLEKS                       R36 R36 K50 ["getFFlagEnableMaterialGenerator"]
      167 CALL                             R35 1 1
      168 GETIMPORT                        R36 K5 [require]
      170 GETTABLEKS                       R37 R0 K7 ["Src"]
      172 GETTABLEKS                       R37 R37 K49 ["Flags"]
      174 GETTABLEKS                       R37 R37 K51 ["getFFlagMaterialPickerFixPluginOpen"]
      176 CALL                             R36 1 1
      177 GETIMPORT                        R37 K5 [require]
      179 GETTABLEKS                       R38 R0 K7 ["Src"]
      181 GETTABLEKS                       R38 R38 K49 ["Flags"]
      183 GETTABLEKS                       R38 R38 K52 ["getFFlagMaterialPickerSearchPreviewer"]
      185 CALL                             R37 1 1
      186 GETIMPORT                        R38 K5 [require]
      188 GETTABLEKS                       R39 R0 K7 ["Src"]
      190 GETTABLEKS                       R39 R39 K49 ["Flags"]
      192 GETTABLEKS                       R39 R39 K53 ["getFFlagMaterialPickerFilterChipGroup"]
      194 CALL                             R38 1 1
      195 GETIMPORT                        R39 K55 [game]
      197 LOADK                            R41 K56 ["MaterialGeneratorHideTempMaterialVariants"]
      198 NAMECALL                         R39 R39 K57 ["GetFastFlag"]
      200 CALL                             R39 2 1
      201 NEWTABLE                         R40 0 0
      203 MOVE                             R41 R37
      204 CALL                             R41 0 1
      205 JUMPIFNOT                        R41 ; [+13]
      206 GETIMPORT                        R41 K59 [ipairs]
      208 MOVE                             R42 R2
      209 CALL                             R41 1 3
      210 FORGPREP_INEXT                   R41
      211 GETIMPORT                        R46 K62 [string.lower]
      213 GETTABLEKS                       R47 R45 K63 ["Name"]
      215 CALL                             R46 1 1
      216 SETTABLE                         R45 R40 R46
      217 FORGLOOP                         R41 2 [inext] ; [-7]
      219 DUPCLOSURE                       R41 K64 [PROTO_40]
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R27
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R13
      227 CAPTURE                          VAL R39
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R12
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R38
      236 CAPTURE                          VAL R40
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R30
      245 CAPTURE                          VAL R32
      246 CAPTURE                          VAL R37
      247 CAPTURE                          VAL R29
      248 CAPTURE                          VAL R31
      249 CAPTURE                          VAL R33
      250 CAPTURE                          VAL R34
      251 CAPTURE                          VAL R20
      252 CAPTURE                          VAL R35
      253 CAPTURE                          VAL R36
      254 SETGLOBAL                        R41 K65 ["MainView"]
      256 GETGLOBAL                        R41 K65 ["MainView"]
      258 RETURN                           R41 1
