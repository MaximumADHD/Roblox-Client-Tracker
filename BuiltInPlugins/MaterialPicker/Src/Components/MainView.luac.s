PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["MATERIAL_GENERATOR_ENABLED"]
        4 NAMECALL                         R1 R1 K1 ["GetItem"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["MATERIAL_MANAGER_ENABLED"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["plugin"]
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
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R1 R2 K2 ["customMaterials"]
       11 JUMPIF                           R1 ; [+6]
       12 GETUPVAL                         R1 4
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 5
       15 GETUPVAL                         R4 6
       16 CALL                             R3 1 -1
       17 CALL                             R1 -1 0
       18 MOVE                             R1 R0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K3 ["recents"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R2 7
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 MOVE                             R1 R2
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R2 R3 K4 ["appliedInPlace"]
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
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R2 R3 K3 ["recents"]
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
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["current"]
        9 GETTABLE                         R1 R2 R0
       10 JUMPIF                           R1 ; [+13]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["current"]
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
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K3 ["current"]
       14 GETTABLE                         R5 R6 R4
       15 JUMPIF                           R5 ; [+13]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K3 ["current"]
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
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R11 R12 K3 ["current"]
       47 GETTABLE                         R10 R11 R9
       48 JUMPIF                           R10 ; [+13]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R10 R11 K3 ["current"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R1 R3 K2 ["current"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["defaultMaterials"]
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
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K3 ["customMaterials"]
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
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R2 R3 K3 ["customMaterials"]
       44 JUMPIF                           R2 ; [+6]
       45 GETUPVAL                         R2 7
       46 MOVE                             R3 R1
       47 GETUPVAL                         R4 2
       48 GETUPVAL                         R5 3
       49 CALL                             R4 1 -1
       50 CALL                             R2 -1 0
       51 MOVE                             R0 R1
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R1 R2 K4 ["recents"]
       55 JUMPIFNOT                        R1 ; [+4]
       56 GETUPVAL                         R1 8
       57 MOVE                             R2 R0
       58 CALL                             R1 1 1
       59 MOVE                             R0 R1
       60 GETUPVAL                         R2 1
       61 GETTABLEKS                       R1 R2 K5 ["appliedInPlace"]
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
       92 GETUPVAL                         R3 1
       93 GETTABLEKS                       R2 R3 K0 ["defaultMaterials"]
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
      179 GETUPVAL                         R2 1
      180 GETTABLEKS                       R1 R2 K4 ["recents"]
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
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R2 R4 K2 ["current"]
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
       23 GETUPVAL                         R4 6
       24 GETTABLEKS                       R3 R4 K4 ["plugin"]
       26 MOVE                             R4 R0
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 7
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+6]
       31 GETUPVAL                         R3 6
       32 GETTABLEKS                       R2 R3 K5 ["onMaterialSelected"]
       34 MOVE                             R3 R0
       35 CALL                             R2 1 0
       36 JUMP                             ; [+5]
       37 GETUPVAL                         R3 6
       38 GETTABLEKS                       R2 R3 K5 ["onMaterialSelected"]
       40 MOVE                             R3 R1
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 8
       43 MOVE                             R3 R0
       44 GETUPVAL                         R4 9
       45 CALL                             R2 2 0
       46 GETUPVAL                         R3 3
       47 NAMECALL                         R3 R3 K6 ["Get"]
       49 CALL                             R3 1 1
       50 LENGTH                           R2 R3
       51 LOADN                            R3 0
       52 JUMPIFNOTLT                      R3 R2 ; [+62]
       54 GETUPVAL                         R4 10
       55 MOVE                             R5 R1
       56 CALL                             R4 1 1
       57 JUMPIFNOT                        R4 ; [+2]
       58 LOADK                            R3 K7 ["MaterialVariant"]
       59 JUMP                             ; [+1]
       60 LOADK                            R3 K8 ["BaseMaterial"]
       61 NEWTABLE                         R4 0 0
       63 GETIMPORT                        R5 K10 [pairs]
       65 GETUPVAL                         R6 11
       66 CALL                             R5 1 3
       67 FORGPREP_NEXT                    R5
       68 JUMPIFNOT                        R9 ; [+7]
       69 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       71 MOVE                             R11 R4
       72 MOVE                             R12 R8
       73 GETIMPORT                        R10 K13 [table.insert]
       75 CALL                             R10 2 0
       76 FORGLOOP                         R5 2 ; [-9]
       78 GETUPVAL                         R6 6
       79 GETTABLEKS                       R5 R6 K14 ["viewType"]
       81 GETUPVAL                         R7 12
       82 JUMPIFNOTEQKS                    R7 K15 [""] ; [+2]
       84 LOADB                            R6 0 +1
       85 LOADB                            R6 1
       86 GETIMPORT                        R7 K17 [table.concat]
       88 MOVE                             R8 R4
       89 LOADK                            R9 K18 [", "]
       90 CALL                             R7 2 1
       91 LENGTH                           R8 R4
       92 GETUPVAL                         R9 13
       93 LOADK                            R11 K19 ["MaterialApplied"]
       94 LOADK                            R12 K20 ["PopupDropdown"]
       95 MOVE                             R13 R2
       96 MOVE                             R14 R1
       97 MOVE                             R15 R3
       98 DUPTABLE                         R16 K24 [{"viewType", "isSearchBarUsed", "filterChips", "filterChipsCount"}]
       99 FASTCALL1                        TOSTRING R5 ; [+3]
      100 MOVE                             R18 R5
      101 GETIMPORT                        R17 K26 [tostring]
      103 CALL                             R17 1 1
      104 SETTABLEKS                       R17 R16 K14 ["viewType"]
      106 SETTABLEKS                       R6 R16 K21 ["isSearchBarUsed"]
      108 SETTABLEKS                       R7 R16 K22 ["filterChips"]
      110 SETTABLEKS                       R8 R16 K23 ["filterChipsCount"]
      112 NAMECALL                         R9 R9 K27 ["report"]
      114 CALL                             R9 7 0
      115 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R1 R3 K2 ["current"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETTABLEN                        R1 R2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K1 ["onClose"]
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R2 R3 K1 ["onClose"]
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["List"]
        5 JUMP                             ; [+3]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["Grid"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["setViewType"]
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
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["recents"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["recents"]
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R1 R2 K1 ["onFilterChipsUpdate"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R1 R2 K1 ["onFilterChipsUpdate"]
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
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["appliedInPlace"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["appliedInPlace"]
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R1 R2 K1 ["onFilterChipsUpdate"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R1 R2 K1 ["onFilterChipsUpdate"]
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
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K1 ["customMaterials"]
       12 NOT                              R1 R2
       13 SETTABLEKS                       R1 R0 K1 ["customMaterials"]
       15 GETUPVAL                         R1 2
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K2 ["onFilterChipsUpdate"]
       21 JUMPIFNOT                        R1 ; [+5]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K2 ["onFilterChipsUpdate"]
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
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["defaultMaterials"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["defaultMaterials"]
        9 GETTABLEKS                       R1 R0 K1 ["customMaterials"]
       11 JUMPIFNOT                        R1 ; [+3]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K1 ["customMaterials"]
       15 GETUPVAL                         R1 2
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K2 ["onFilterChipsUpdate"]
       21 JUMPIFNOT                        R1 ; [+5]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K2 ["onFilterChipsUpdate"]
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
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["customMaterials"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["customMaterials"]
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R1 R2 K1 ["onFilterChipsUpdate"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R1 R2 K1 ["onFilterChipsUpdate"]
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
       25 GETUPVAL                         R4 6
       26 GETTABLEKS                       R3 R4 K5 ["plugin"]
       28 GETTABLEKS                       R4 R0 K0 ["Material"]
       30 CALL                             R2 2 0
       31 GETUPVAL                         R2 7
       32 CALL                             R2 0 1
       33 JUMPIFNOT                        R2 ; [+7]
       34 GETUPVAL                         R3 6
       35 GETTABLEKS                       R2 R3 K6 ["onMaterialSelected"]
       37 GETTABLEKS                       R3 R0 K0 ["Material"]
       39 CALL                             R2 1 0
       40 JUMP                             ; [+5]
       41 GETUPVAL                         R3 6
       42 GETTABLEKS                       R2 R3 K6 ["onMaterialSelected"]
       44 MOVE                             R3 R1
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 8
       47 GETTABLEKS                       R3 R0 K0 ["Material"]
       49 GETUPVAL                         R4 9
       50 CALL                             R2 2 0
       51 GETUPVAL                         R3 3
       52 NAMECALL                         R3 R3 K7 ["Get"]
       54 CALL                             R3 1 1
       55 LENGTH                           R2 R3
       56 LOADN                            R3 0
       57 JUMPIFNOTLT                      R3 R2 ; [+62]
       59 GETUPVAL                         R4 10
       60 MOVE                             R5 R1
       61 CALL                             R4 1 1
       62 JUMPIFNOT                        R4 ; [+2]
       63 LOADK                            R3 K8 ["MaterialVariant"]
       64 JUMP                             ; [+1]
       65 LOADK                            R3 K9 ["BaseMaterial"]
       66 NEWTABLE                         R4 0 0
       68 GETIMPORT                        R5 K11 [pairs]
       70 GETUPVAL                         R6 11
       71 CALL                             R5 1 3
       72 FORGPREP_NEXT                    R5
       73 JUMPIFNOT                        R9 ; [+7]
       74 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       76 MOVE                             R11 R4
       77 MOVE                             R12 R8
       78 GETIMPORT                        R10 K14 [table.insert]
       80 CALL                             R10 2 0
       81 FORGLOOP                         R5 2 ; [-9]
       83 GETUPVAL                         R6 6
       84 GETTABLEKS                       R5 R6 K15 ["viewType"]
       86 GETUPVAL                         R7 12
       87 JUMPIFNOTEQKS                    R7 K16 [""] ; [+2]
       89 LOADB                            R6 0 +1
       90 LOADB                            R6 1
       91 GETIMPORT                        R7 K18 [table.concat]
       93 MOVE                             R8 R4
       94 LOADK                            R9 K19 [", "]
       95 CALL                             R7 2 1
       96 LENGTH                           R8 R4
       97 GETUPVAL                         R9 13
       98 LOADK                            R11 K20 ["MaterialApplied"]
       99 LOADK                            R12 K21 ["PopupDropdown"]
      100 MOVE                             R13 R2
      101 MOVE                             R14 R1
      102 MOVE                             R15 R3
      103 DUPTABLE                         R16 K25 [{"viewType", "isSearchBarUsed", "filterChips", "filterChipsCount"}]
      104 FASTCALL1                        TOSTRING R5 ; [+3]
      105 MOVE                             R18 R5
      106 GETIMPORT                        R17 K27 [tostring]
      108 CALL                             R17 1 1
      109 SETTABLEKS                       R17 R16 K15 ["viewType"]
      111 SETTABLEKS                       R6 R16 K22 ["isSearchBarUsed"]
      113 SETTABLEKS                       R7 R16 K23 ["filterChips"]
      115 SETTABLEKS                       R8 R16 K24 ["filterChipsCount"]
      117 NAMECALL                         R9 R9 K28 ["report"]
      119 CALL                             R9 7 0
      120 RETURN                           R0 0

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
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["current"]
        9 JUMPIFNOTEQKN                    R0 K2 [0] ; [+18]
       11 GETIMPORT                        R0 K4 [pairs]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R1 R3 K0 ["current"]
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
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
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
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
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
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+43]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["MATERIAL_GENERATOR_ENABLED"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 1
       10 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 JUMPIF                           R0 ; [+22]
       15 LOADNIL                          R0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K3 ["MATERIAL_GENERATOR_READY"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          REF R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 NAMECALL                         R1 R1 K4 ["Bind"]
       27 CALL                             R1 3 1
       28 MOVE                             R0 R1
       29 GETUPVAL                         R1 1
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K5 ["LOAD_MATERIAL_GENERATOR"]
       33 NAMECALL                         R1 R1 K6 ["Fire"]
       35 CALL                             R1 2 0
       36 CLOSEUPVALS                      R0
       37 GETUPVAL                         R1 4
       38 GETTABLEKS                       R0 R1 K7 ["onClose"]
       40 JUMPIFNOT                        R0 ; [+78]
       41 GETUPVAL                         R1 4
       42 GETTABLEKS                       R0 R1 K7 ["onClose"]
       44 CALL                             R0 0 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R0 5
       47 CALL                             R0 0 1
       48 JUMPIFNOT                        R0 ; [+34]
       49 GETUPVAL                         R0 6
       50 JUMPIF                           R0 ; [+23]
       51 LOADNIL                          R0
       52 GETUPVAL                         R1 1
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R3 R4 K3 ["MATERIAL_GENERATOR_READY"]
       56 NEWCLOSURE                       R4 P1
       57 CAPTURE                          REF R0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U3
       62 NAMECALL                         R1 R1 K4 ["Bind"]
       64 CALL                             R1 3 1
       65 MOVE                             R0 R1
       66 GETUPVAL                         R1 1
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R3 R4 K5 ["LOAD_MATERIAL_GENERATOR"]
       70 NAMECALL                         R1 R1 K6 ["Fire"]
       72 CALL                             R1 2 0
       73 CLOSEUPVALS                      R0
       74 GETUPVAL                         R1 4
       75 GETTABLEKS                       R0 R1 K7 ["onClose"]
       77 JUMPIFNOT                        R0 ; [+41]
       78 GETUPVAL                         R1 4
       79 GETTABLEKS                       R0 R1 K7 ["onClose"]
       81 CALL                             R0 0 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R0 6
       84 JUMPIFNOT                        R0 ; [+11]
       85 GETUPVAL                         R0 1
       86 GETUPVAL                         R3 2
       87 GETTABLEKS                       R2 R3 K8 ["DEPRECATED_HIDE_MATERIAL_GENERATOR_PLUGIN_EVENT"]
       89 NAMECALL                         R0 R0 K6 ["Fire"]
       91 CALL                             R0 2 0
       92 GETUPVAL                         R0 7
       93 LOADB                            R1 0
       94 CALL                             R0 1 0
       95 RETURN                           R0 0
       96 LOADNIL                          R0
       97 GETUPVAL                         R1 1
       98 GETUPVAL                         R4 2
       99 GETTABLEKS                       R3 R4 K3 ["MATERIAL_GENERATOR_READY"]
      101 NEWCLOSURE                       R4 P2
      102 CAPTURE                          REF R0
      103 CAPTURE                          UPVAL U1
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          UPVAL U3
      107 NAMECALL                         R1 R1 K4 ["Bind"]
      109 CALL                             R1 3 1
      110 MOVE                             R0 R1
      111 GETUPVAL                         R1 1
      112 GETUPVAL                         R4 2
      113 GETTABLEKS                       R3 R4 K5 ["LOAD_MATERIAL_GENERATOR"]
      115 NAMECALL                         R1 R1 K6 ["Fire"]
      117 CALL                             R1 2 0
      118 CLOSEUPVALS                      R0
      119 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+33]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["MATERIAL_MANAGER_ENABLED"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 1
       10 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 JUMPIF                           R0 ; [+12]
       15 GETUPVAL                         R0 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K3 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
       19 NAMECALL                         R0 R0 K4 ["Fire"]
       21 CALL                             R0 2 0
       22 GETUPVAL                         R0 3
       23 LOADK                            R2 K5 ["MaterialManagerOpened"]
       24 NAMECALL                         R0 R0 K6 ["report"]
       26 CALL                             R0 2 0
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R0 R1 K7 ["onClose"]
       30 JUMPIFNOT                        R0 ; [+62]
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R0 R1 K7 ["onClose"]
       34 CALL                             R0 0 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R0 5
       37 CALL                             R0 0 1
       38 JUMPIFNOT                        R0 ; [+26]
       39 GETUPVAL                         R0 6
       40 JUMPIF                           R0 ; [+15]
       41 GETUPVAL                         R0 1
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R2 R3 K3 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
       45 NAMECALL                         R0 R0 K4 ["Fire"]
       47 CALL                             R0 2 0
       48 GETUPVAL                         R0 7
       49 LOADB                            R1 1
       50 CALL                             R0 1 0
       51 GETUPVAL                         R0 3
       52 LOADK                            R2 K5 ["MaterialManagerOpened"]
       53 NAMECALL                         R0 R0 K6 ["report"]
       55 CALL                             R0 2 0
       56 GETUPVAL                         R1 4
       57 GETTABLEKS                       R0 R1 K7 ["onClose"]
       59 JUMPIFNOT                        R0 ; [+33]
       60 GETUPVAL                         R1 4
       61 GETTABLEKS                       R0 R1 K7 ["onClose"]
       63 CALL                             R0 0 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R0 6
       66 JUMPIFNOT                        R0 ; [+11]
       67 GETUPVAL                         R0 1
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R2 R3 K8 ["DEPRECATED_HIDE_MATERIAL_MANAGER_PLUGIN_EVENT"]
       71 NAMECALL                         R0 R0 K4 ["Fire"]
       73 CALL                             R0 2 0
       74 GETUPVAL                         R0 7
       75 LOADB                            R1 0
       76 CALL                             R0 1 0
       77 RETURN                           R0 0
       78 GETUPVAL                         R0 1
       79 GETUPVAL                         R3 2
       80 GETTABLEKS                       R2 R3 K3 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
       82 NAMECALL                         R0 R0 K4 ["Fire"]
       84 CALL                             R0 2 0
       85 GETUPVAL                         R0 7
       86 LOADB                            R1 1
       87 CALL                             R0 1 0
       88 GETUPVAL                         R0 3
       89 LOADK                            R2 K5 ["MaterialManagerOpened"]
       90 NAMECALL                         R0 R0 K6 ["report"]
       92 CALL                             R0 2 0
       93 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
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
       41 GETUPVAL                         R15 5
       42 GETTABLEKS                       R14 R15 K11 ["MATERIAL_GENERATOR_ENABLED"]
       44 NAMECALL                         R12 R7 K12 ["GetItem"]
       46 CALL                             R12 2 1
       47 JUMPIFEQKS                       R12 K13 ["true"] ; [+2]
       49 LOADB                            R11 0 +1
       50 LOADB                            R11 1
       51 CALL                             R10 1 2
       52 GETUPVAL                         R12 4
       53 GETUPVAL                         R17 5
       54 GETTABLEKS                       R16 R17 K14 ["MATERIAL_MANAGER_ENABLED"]
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
      167 CAPTURE                          UPVAL U20
      168 CAPTURE                          VAL R8
      169 CAPTURE                          UPVAL U21
      170 CAPTURE                          VAL R16
      171 CAPTURE                          REF R14
      172 CAPTURE                          VAL R4
      173 GETUPVAL                         R34 22
      174 NEWCLOSURE                       R35 P13
      175 CAPTURE                          VAL R26
      176 NEWTABLE                         R36 0 0
      178 CALL                             R34 2 0
      179 GETTABLEKS                       R35 R0 K22 ["viewType"]
      181 GETUPVAL                         R37 23
      182 GETTABLEKS                       R36 R37 K23 ["Grid"]
      184 JUMPIFEQ                         R35 R36 ; [+2]
      186 LOADB                            R34 0 +1
      187 LOADB                            R34 1
      188 GETUPVAL                         R35 24
      189 GETUPVAL                         R36 25
      190 DUPTABLE                         R37 K26 [{"Layout", "VerticalAlignment"}]
      191 GETIMPORT                        R38 K30 [Enum.FillDirection.Vertical]
      193 SETTABLEKS                       R38 R37 K24 ["Layout"]
      195 GETIMPORT                        R38 K32 [Enum.VerticalAlignment.Top]
      197 SETTABLEKS                       R38 R37 K25 ["VerticalAlignment"]
      199 NEWTABLE                         R38 0 4
      201 GETUPVAL                         R39 24
      202 GETUPVAL                         R40 25
      203 DUPTABLE                         R41 K37 [{"key", "Size", "Spacing", "Padding", "Layout"}]
      204 LOADK                            R42 K38 ["PrimaryTools"]
      205 SETTABLEKS                       R42 R41 K33 ["key"]
      207 GETTABLEKS                       R43 R1 K38 ["PrimaryTools"]
      209 GETTABLEKS                       R42 R43 K34 ["Size"]
      211 SETTABLEKS                       R42 R41 K34 ["Size"]
      213 GETTABLEKS                       R43 R1 K38 ["PrimaryTools"]
      215 GETTABLEKS                       R42 R43 K35 ["Spacing"]
      217 SETTABLEKS                       R42 R41 K35 ["Spacing"]
      219 GETTABLEKS                       R43 R1 K38 ["PrimaryTools"]
      221 GETTABLEKS                       R42 R43 K36 ["Padding"]
      223 SETTABLEKS                       R42 R41 K36 ["Padding"]
      225 GETIMPORT                        R42 K40 [Enum.FillDirection.Horizontal]
      227 SETTABLEKS                       R42 R41 K24 ["Layout"]
      229 NEWTABLE                         R42 0 2
      231 GETUPVAL                         R43 24
      232 GETUPVAL                         R44 26
      233 DUPTABLE                         R45 K49 [{"key", "PlaceholderText", "ShowSearchIcon", "ShowSearchButton", "OnSearchRequested", "OnTextChanged", "OnTextBoxFocusLost", "Style", "Size", "ShouldFocusOnMount"}]
      234 LOADK                            R46 K50 ["SearchBar"]
      235 SETTABLEKS                       R46 R45 K33 ["key"]
      237 LOADK                            R48 K50 ["SearchBar"]
      238 LOADK                            R49 K51 ["SearchMaterials"]
      239 NAMECALL                         R46 R2 K52 ["getText"]
      241 CALL                             R46 3 1
      242 SETTABLEKS                       R46 R45 K41 ["PlaceholderText"]
      244 LOADB                            R46 1
      245 SETTABLEKS                       R46 R45 K42 ["ShowSearchIcon"]
      247 LOADB                            R46 0
      248 SETTABLEKS                       R46 R45 K43 ["ShowSearchButton"]
      250 GETUPVAL                         R47 27
      251 CALL                             R47 0 1
      252 JUMPIFNOT                        R47 ; [+2]
      253 MOVE                             R46 R32
      254 JUMP                             ; [+1]
      255 MOVE                             R46 R15
      256 SETTABLEKS                       R46 R45 K44 ["OnSearchRequested"]
      258 GETUPVAL                         R47 27
      259 CALL                             R47 0 1
      260 JUMPIFNOT                        R47 ; [+2]
      261 MOVE                             R46 R32
      262 JUMP                             ; [+1]
      263 MOVE                             R46 R15
      264 SETTABLEKS                       R46 R45 K45 ["OnTextChanged"]
      266 GETUPVAL                         R47 27
      267 CALL                             R47 0 1
      268 JUMPIFNOT                        R47 ; [+6]
      269 NEWCLOSURE                       R46 P14
      270 CAPTURE                          VAL R25
      271 CAPTURE                          VAL R31
      272 CAPTURE                          VAL R33
      273 CAPTURE                          VAL R0
      274 JUMP                             ; [+1]
      275 LOADNIL                          R46
      276 SETTABLEKS                       R46 R45 K46 ["OnTextBoxFocusLost"]
      278 LOADK                            R46 K53 ["Compact"]
      279 SETTABLEKS                       R46 R45 K47 ["Style"]
      281 GETTABLEKS                       R48 R1 K38 ["PrimaryTools"]
      283 GETTABLEKS                       R47 R48 K50 ["SearchBar"]
      285 GETTABLEKS                       R46 R47 K34 ["Size"]
      287 SETTABLEKS                       R46 R45 K34 ["Size"]
      289 LOADB                            R46 1
      290 SETTABLEKS                       R46 R45 K48 ["ShouldFocusOnMount"]
      292 NEWTABLE                         R46 0 0
      294 CALL                             R43 3 1
      295 GETUPVAL                         R44 24
      296 GETUPVAL                         R45 28
      297 DUPTABLE                         R46 K58 [{"key", "BackgroundStyle", "LeftIcon", "Size", "TooltipText", "OnClick"}]
      298 LOADK                            R47 K59 ["ViewToggle"]
      299 SETTABLEKS                       R47 R46 K33 ["key"]
      301 LOADK                            R47 K60 ["Box"]
      302 SETTABLEKS                       R47 R46 K54 ["BackgroundStyle"]
      304 JUMPIFNOT                        R34 ; [+7]
      305 GETTABLEKS                       R49 R1 K38 ["PrimaryTools"]
      307 GETTABLEKS                       R48 R49 K59 ["ViewToggle"]
      309 GETTABLEKS                       R47 R48 K61 ["LeftIconList"]
      311 JUMP                             ; [+6]
      312 GETTABLEKS                       R49 R1 K38 ["PrimaryTools"]
      314 GETTABLEKS                       R48 R49 K59 ["ViewToggle"]
      316 GETTABLEKS                       R47 R48 K62 ["LeftIconGrid"]
      318 SETTABLEKS                       R47 R46 K55 ["LeftIcon"]
      320 GETTABLEKS                       R49 R1 K38 ["PrimaryTools"]
      322 GETTABLEKS                       R48 R49 K59 ["ViewToggle"]
      324 GETTABLEKS                       R47 R48 K34 ["Size"]
      326 SETTABLEKS                       R47 R46 K34 ["Size"]
      328 JUMPIFNOT                        R34 ; [+6]
      329 LOADK                            R49 K59 ["ViewToggle"]
      330 LOADK                            R50 K63 ["ListView"]
      331 NAMECALL                         R47 R2 K52 ["getText"]
      333 CALL                             R47 3 1
      334 JUMP                             ; [+5]
      335 LOADK                            R49 K59 ["ViewToggle"]
      336 LOADK                            R50 K64 ["GridView"]
      337 NAMECALL                         R47 R2 K52 ["getText"]
      339 CALL                             R47 3 1
      340 SETTABLEKS                       R47 R46 K56 ["TooltipText"]
      342 NEWCLOSURE                       R47 P15
      343 CAPTURE                          VAL R34
      344 CAPTURE                          UPVAL U23
      345 CAPTURE                          VAL R0
      346 CAPTURE                          VAL R4
      347 SETTABLEKS                       R47 R46 K57 ["OnClick"]
      349 NEWTABLE                         R47 0 0
      351 CALL                             R44 3 -1
      352 SETLIST                          R42 R43 -1 [1]
      354 CALL                             R39 3 1
      355 GETUPVAL                         R40 24
      356 GETUPVAL                         R41 29
      357 DUPTABLE                         R42 K68 [{"Size", "ScrollingDirection", "HorizontalScrollBarInset", "ScrollBarThickness"}]
      358 GETTABLEKS                       R44 R1 K69 ["Filters"]
      360 GETTABLEKS                       R43 R44 K34 ["Size"]
      362 SETTABLEKS                       R43 R42 K34 ["Size"]
      364 GETIMPORT                        R43 K71 [Enum.ScrollingDirection.X]
      366 SETTABLEKS                       R43 R42 K65 ["ScrollingDirection"]
      368 GETIMPORT                        R43 K74 [Enum.ScrollBarInset.ScrollBar]
      370 SETTABLEKS                       R43 R42 K66 ["HorizontalScrollBarInset"]
      372 GETTABLEKS                       R44 R1 K75 ["MainView"]
      374 GETTABLEKS                       R43 R44 K67 ["ScrollBarThickness"]
      376 SETTABLEKS                       R43 R42 K67 ["ScrollBarThickness"]
      378 NEWTABLE                         R43 0 1
      380 GETUPVAL                         R44 24
      381 GETUPVAL                         R45 25
      382 DUPTABLE                         R46 K78 [{"key", "Layout", "HorizontalAlignment", "AutomaticSize", "Spacing", "Padding"}]
      383 LOADK                            R47 K69 ["Filters"]
      384 SETTABLEKS                       R47 R46 K33 ["key"]
      386 GETIMPORT                        R47 K40 [Enum.FillDirection.Horizontal]
      388 SETTABLEKS                       R47 R46 K24 ["Layout"]
      390 GETIMPORT                        R47 K80 [Enum.HorizontalAlignment.Left]
      392 SETTABLEKS                       R47 R46 K76 ["HorizontalAlignment"]
      394 GETIMPORT                        R47 K82 [Enum.AutomaticSize.XY]
      396 SETTABLEKS                       R47 R46 K77 ["AutomaticSize"]
      398 LOADN                            R47 4
      399 SETTABLEKS                       R47 R46 K35 ["Spacing"]
      401 DUPTABLE                         R47 K83 [{"Left", "Top"}]
      402 LOADN                            R48 8
      403 SETTABLEKS                       R48 R47 K79 ["Left"]
      405 LOADN                            R48 1
      406 SETTABLEKS                       R48 R47 K31 ["Top"]
      408 SETTABLEKS                       R47 R46 K36 ["Padding"]
      410 NEWTABLE                         R47 0 3
      412 GETUPVAL                         R48 24
      413 GETUPVAL                         R49 30
      414 DUPTABLE                         R50 K86 [{"Text", "OnClick", "selected"}]
      415 LOADK                            R53 K69 ["Filters"]
      416 LOADK                            R54 K87 ["Recents"]
      417 NAMECALL                         R51 R2 K52 ["getText"]
      419 CALL                             R51 3 1
      420 SETTABLEKS                       R51 R50 K84 ["Text"]
      422 NEWCLOSURE                       R51 P16
      423 CAPTURE                          UPVAL U11
      424 CAPTURE                          VAL R16
      425 CAPTURE                          VAL R17
      426 CAPTURE                          VAL R0
      427 CAPTURE                          VAL R4
      428 SETTABLEKS                       R51 R50 K57 ["OnClick"]
      430 GETTABLEKS                       R51 R16 K17 ["recents"]
      432 SETTABLEKS                       R51 R50 K85 ["selected"]
      434 CALL                             R48 2 1
      435 GETUPVAL                         R49 24
      436 GETUPVAL                         R50 30
      437 DUPTABLE                         R51 K86 [{"Text", "OnClick", "selected"}]
      438 LOADK                            R54 K69 ["Filters"]
      439 LOADK                            R55 K88 ["AppliedInPlace"]
      440 NAMECALL                         R52 R2 K52 ["getText"]
      442 CALL                             R52 3 1
      443 SETTABLEKS                       R52 R51 K84 ["Text"]
      445 NEWCLOSURE                       R52 P17
      446 CAPTURE                          UPVAL U11
      447 CAPTURE                          VAL R16
      448 CAPTURE                          VAL R17
      449 CAPTURE                          VAL R0
      450 CAPTURE                          VAL R4
      451 SETTABLEKS                       R52 R51 K57 ["OnClick"]
      453 GETTABLEKS                       R52 R16 K18 ["appliedInPlace"]
      455 SETTABLEKS                       R52 R51 K85 ["selected"]
      457 CALL                             R49 2 1
      458 GETUPVAL                         R51 15
      459 CALL                             R51 0 1
      460 JUMPIFNOT                        R51 ; [+43]
      461 GETUPVAL                         R50 24
      462 GETUPVAL                         R51 31
      463 DUPTABLE                         R52 K95 [{"LeftText", "RightText", "LeftSelected", "RightSelected", "OnClickLeft", "OnClickRight"}]
      464 LOADK                            R55 K69 ["Filters"]
      465 LOADK                            R56 K96 ["CustomMaterials"]
      466 NAMECALL                         R53 R2 K52 ["getText"]
      468 CALL                             R53 3 1
      469 SETTABLEKS                       R53 R52 K89 ["LeftText"]
      471 LOADK                            R55 K69 ["Filters"]
      472 LOADK                            R56 K97 ["DefaultMaterials"]
      473 NAMECALL                         R53 R2 K52 ["getText"]
      475 CALL                             R53 3 1
      476 SETTABLEKS                       R53 R52 K90 ["RightText"]
      478 GETTABLEKS                       R53 R16 K19 ["customMaterials"]
      480 SETTABLEKS                       R53 R52 K91 ["LeftSelected"]
      482 GETTABLEKS                       R53 R16 K20 ["defaultMaterials"]
      484 SETTABLEKS                       R53 R52 K92 ["RightSelected"]
      486 NEWCLOSURE                       R53 P18
      487 CAPTURE                          UPVAL U11
      488 CAPTURE                          VAL R16
      489 CAPTURE                          VAL R17
      490 CAPTURE                          VAL R0
      491 CAPTURE                          VAL R4
      492 SETTABLEKS                       R53 R52 K93 ["OnClickLeft"]
      494 NEWCLOSURE                       R53 P19
      495 CAPTURE                          UPVAL U11
      496 CAPTURE                          VAL R16
      497 CAPTURE                          VAL R17
      498 CAPTURE                          VAL R0
      499 CAPTURE                          VAL R4
      500 SETTABLEKS                       R53 R52 K94 ["OnClickRight"]
      502 CALL                             R50 2 1
      503 JUMP                             ; [+23]
      504 GETUPVAL                         R50 24
      505 GETUPVAL                         R51 30
      506 DUPTABLE                         R52 K86 [{"Text", "OnClick", "selected"}]
      507 LOADK                            R55 K69 ["Filters"]
      508 LOADK                            R56 K96 ["CustomMaterials"]
      509 NAMECALL                         R53 R2 K52 ["getText"]
      511 CALL                             R53 3 1
      512 SETTABLEKS                       R53 R52 K84 ["Text"]
      514 NEWCLOSURE                       R53 P20
      515 CAPTURE                          UPVAL U11
      516 CAPTURE                          VAL R16
      517 CAPTURE                          VAL R17
      518 CAPTURE                          VAL R0
      519 CAPTURE                          VAL R4
      520 SETTABLEKS                       R53 R52 K57 ["OnClick"]
      522 GETTABLEKS                       R53 R16 K19 ["customMaterials"]
      524 SETTABLEKS                       R53 R52 K85 ["selected"]
      526 CALL                             R50 2 1
      527 SETLIST                          R47 R48 3 [1]
      529 CALL                             R44 3 -1
      530 SETLIST                          R43 R44 -1 [1]
      532 CALL                             R40 3 1
      533 GETUPVAL                         R41 24
      534 GETUPVAL                         R42 32
      535 DUPTABLE                         R43 K120 [{"key", "AppliedItemId", "ShouldCenterTooltip", "ContainerXBounds", "ContainerYBounds", "Size", "GridItemsPerRow", "GridItemSize", "Items", "ShowGridLabels", "OnClick", "OnMouseEnter", "OnMouseLeave", "ListPadding", "OnScrollUpdate", "OnSnapshotTaken", "ViewType", "InitialGridCanvasPosition", "InitialListCanvasPosition", "ScrollingDirection", "SelectedItemId", "ShouldSyncScroll", "SnapshotSize", "SnapshotBorderThickness", "TooltipDelay", "UseInstantTooltip"}]
      536 LOADK                            R44 K121 ["MaterialGrid"]
      537 SETTABLEKS                       R44 R43 K33 ["key"]
      539 MOVE                             R44 R30
      540 CALL                             R44 0 1
      541 SETTABLEKS                       R44 R43 K98 ["AppliedItemId"]
      543 LOADB                            R44 1
      544 SETTABLEKS                       R44 R43 K99 ["ShouldCenterTooltip"]
      546 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      548 GETTABLEKS                       R44 R45 K100 ["ContainerXBounds"]
      550 SETTABLEKS                       R44 R43 K100 ["ContainerXBounds"]
      552 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      554 GETTABLEKS                       R44 R45 K101 ["ContainerYBounds"]
      556 SETTABLEKS                       R44 R43 K101 ["ContainerYBounds"]
      558 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      560 GETTABLEKS                       R44 R45 K34 ["Size"]
      562 SETTABLEKS                       R44 R43 K34 ["Size"]
      564 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      566 GETTABLEKS                       R44 R45 K102 ["GridItemsPerRow"]
      568 SETTABLEKS                       R44 R43 K102 ["GridItemsPerRow"]
      570 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      572 GETTABLEKS                       R44 R45 K103 ["GridItemSize"]
      574 SETTABLEKS                       R44 R43 K103 ["GridItemSize"]
      576 GETUPVAL                         R45 27
      577 CALL                             R45 0 1
      578 JUMPIFNOT                        R45 ; [+3]
      579 MOVE                             R44 R31
      580 CALL                             R44 0 1
      581 JUMP                             ; [+2]
      582 MOVE                             R44 R23
      583 CALL                             R44 0 1
      584 SETTABLEKS                       R44 R43 K104 ["Items"]
      586 LOADB                            R44 0
      587 SETTABLEKS                       R44 R43 K105 ["ShowGridLabels"]
      589 GETUPVAL                         R45 27
      590 CALL                             R45 0 1
      591 JUMPIFNOT                        R45 ; [+3]
      592 NEWCLOSURE                       R44 P21
      593 CAPTURE                          VAL R33
      594 JUMP                             ; [+15]
      595 NEWCLOSURE                       R44 P22
      596 CAPTURE                          UPVAL U8
      597 CAPTURE                          VAL R26
      598 CAPTURE                          UPVAL U17
      599 CAPTURE                          VAL R5
      600 CAPTURE                          VAL R6
      601 CAPTURE                          UPVAL U18
      602 CAPTURE                          VAL R0
      603 CAPTURE                          UPVAL U19
      604 CAPTURE                          UPVAL U20
      605 CAPTURE                          VAL R8
      606 CAPTURE                          UPVAL U21
      607 CAPTURE                          VAL R16
      608 CAPTURE                          REF R14
      609 CAPTURE                          VAL R4
      610 SETTABLEKS                       R44 R43 K57 ["OnClick"]
      612 NEWCLOSURE                       R44 P23
      613 CAPTURE                          VAL R24
      614 CAPTURE                          UPVAL U27
      615 CAPTURE                          VAL R25
      616 CAPTURE                          VAL R28
      617 CAPTURE                          UPVAL U17
      618 CAPTURE                          VAL R5
      619 SETTABLEKS                       R44 R43 K106 ["OnMouseEnter"]
      621 NEWCLOSURE                       R44 P24
      622 CAPTURE                          VAL R24
      623 CAPTURE                          VAL R26
      624 SETTABLEKS                       R44 R43 K107 ["OnMouseLeave"]
      626 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      628 GETTABLEKS                       R44 R45 K108 ["ListPadding"]
      630 SETTABLEKS                       R44 R43 K108 ["ListPadding"]
      632 GETTABLEKS                       R44 R0 K122 ["onScrollUpdate"]
      634 SETTABLEKS                       R44 R43 K109 ["OnScrollUpdate"]
      636 GETTABLEKS                       R44 R0 K123 ["onSnapshotTaken"]
      638 SETTABLEKS                       R44 R43 K110 ["OnSnapshotTaken"]
      640 GETTABLEKS                       R44 R0 K22 ["viewType"]
      642 SETTABLEKS                       R44 R43 K111 ["ViewType"]
      644 GETTABLEKS                       R44 R0 K124 ["savedGridCanvasPosition"]
      646 SETTABLEKS                       R44 R43 K112 ["InitialGridCanvasPosition"]
      648 GETTABLEKS                       R44 R0 K125 ["savedListCanvasPosition"]
      650 SETTABLEKS                       R44 R43 K113 ["InitialListCanvasPosition"]
      652 GETIMPORT                        R44 K127 [Enum.ScrollingDirection.Y]
      654 SETTABLEKS                       R44 R43 K65 ["ScrollingDirection"]
      656 GETTABLEKS                       R44 R0 K128 ["selectedMaterialIdentifier"]
      658 SETTABLEKS                       R44 R43 K114 ["SelectedItemId"]
      660 LOADB                            R44 1
      661 SETTABLEKS                       R44 R43 K115 ["ShouldSyncScroll"]
      663 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      665 GETTABLEKS                       R44 R45 K116 ["SnapshotSize"]
      667 SETTABLEKS                       R44 R43 K116 ["SnapshotSize"]
      669 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      671 GETTABLEKS                       R44 R45 K117 ["SnapshotBorderThickness"]
      673 SETTABLEKS                       R44 R43 K117 ["SnapshotBorderThickness"]
      675 GETTABLEKS                       R45 R1 K121 ["MaterialGrid"]
      677 GETTABLEKS                       R44 R45 K118 ["TooltipDelay"]
      679 SETTABLEKS                       R44 R43 K118 ["TooltipDelay"]
      681 LOADB                            R44 1
      682 SETTABLEKS                       R44 R43 K119 ["UseInstantTooltip"]
      684 CALL                             R41 2 1
      685 GETUPVAL                         R42 24
      686 GETUPVAL                         R43 25
      687 DUPTABLE                         R44 K129 [{"key", "Size", "Layout", "Padding", "Spacing"}]
      688 LOADK                            R45 K130 ["Footer"]
      689 SETTABLEKS                       R45 R44 K33 ["key"]
      691 GETTABLEKS                       R46 R1 K130 ["Footer"]
      693 GETTABLEKS                       R45 R46 K34 ["Size"]
      695 SETTABLEKS                       R45 R44 K34 ["Size"]
      697 GETIMPORT                        R45 K40 [Enum.FillDirection.Horizontal]
      699 SETTABLEKS                       R45 R44 K24 ["Layout"]
      701 GETTABLEKS                       R46 R1 K130 ["Footer"]
      703 GETTABLEKS                       R45 R46 K36 ["Padding"]
      705 SETTABLEKS                       R45 R44 K36 ["Padding"]
      707 GETTABLEKS                       R46 R1 K130 ["Footer"]
      709 GETTABLEKS                       R45 R46 K35 ["Spacing"]
      711 SETTABLEKS                       R45 R44 K35 ["Spacing"]
      713 NEWTABLE                         R45 0 2
      715 GETUPVAL                         R46 33
      716 CALL                             R46 0 1
      717 JUMPIFNOT                        R46 ; [+99]
      718 GETUPVAL                         R46 24
      719 GETUPVAL                         R47 28
      720 DUPTABLE                         R48 K134 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      721 LOADK                            R51 K75 ["MainView"]
      722 LOADK                            R52 K135 ["MaterialGeneratorButton"]
      723 NAMECALL                         R49 R2 K52 ["getText"]
      725 CALL                             R49 3 1
      726 SETTABLEKS                       R49 R48 K84 ["Text"]
      728 GETTABLEKS                       R52 R1 K130 ["Footer"]
      730 GETTABLEKS                       R51 R52 K136 ["IconButton"]
      732 GETTABLEKS                       R50 R51 K135 ["MaterialGeneratorButton"]
      734 GETTABLEKS                       R49 R50 K34 ["Size"]
      736 SETTABLEKS                       R49 R48 K34 ["Size"]
      738 GETTABLEKS                       R52 R1 K130 ["Footer"]
      740 GETTABLEKS                       R51 R52 K136 ["IconButton"]
      742 GETTABLEKS                       R50 R51 K135 ["MaterialGeneratorButton"]
      744 GETTABLEKS                       R49 R50 K137 ["Icon"]
      746 SETTABLEKS                       R49 R48 K55 ["LeftIcon"]
      748 GETTABLEKS                       R51 R1 K130 ["Footer"]
      750 GETTABLEKS                       R50 R51 K136 ["IconButton"]
      752 GETTABLEKS                       R49 R50 K131 ["IconSize"]
      754 SETTABLEKS                       R49 R48 K131 ["IconSize"]
      756 GETIMPORT                        R49 K139 [Enum.TextXAlignment.Center]
      758 SETTABLEKS                       R49 R48 K132 ["TextXAlignment"]
      760 GETTABLEKS                       R51 R1 K130 ["Footer"]
      762 GETTABLEKS                       R50 R51 K136 ["IconButton"]
      764 GETTABLEKS                       R49 R50 K35 ["Spacing"]
      766 SETTABLEKS                       R49 R48 K35 ["Spacing"]
      768 GETTABLEKS                       R51 R1 K130 ["Footer"]
      770 GETTABLEKS                       R50 R51 K136 ["IconButton"]
      772 GETTABLEKS                       R49 R50 K36 ["Padding"]
      774 SETTABLEKS                       R49 R48 K36 ["Padding"]
      776 GETUPVAL                         R50 34
      777 CALL                             R50 0 1
      778 JUMPIF                           R50 ; [+3]
      779 GETUPVAL                         R50 35
      780 CALL                             R50 0 1
      781 JUMPIFNOT                        R50 ; [+7]
      782 GETTABLEKS                       R51 R1 K130 ["Footer"]
      784 GETTABLEKS                       R50 R51 K136 ["IconButton"]
      786 GETTABLEKS                       R49 R50 K133 ["BackgroundColor"]
      788 JUMP                             ; [+14]
      789 JUMPIFNOT                        R10 ; [+7]
      790 GETTABLEKS                       R51 R1 K130 ["Footer"]
      792 GETTABLEKS                       R50 R51 K136 ["IconButton"]
      794 GETTABLEKS                       R49 R50 K140 ["ActiveBackgroundColor"]
      796 JUMP                             ; [+6]
      797 GETTABLEKS                       R51 R1 K130 ["Footer"]
      799 GETTABLEKS                       R50 R51 K136 ["IconButton"]
      801 GETTABLEKS                       R49 R50 K133 ["BackgroundColor"]
      803 SETTABLEKS                       R49 R48 K133 ["BackgroundColor"]
      805 NEWCLOSURE                       R49 P25
      806 CAPTURE                          UPVAL U34
      807 CAPTURE                          VAL R7
      808 CAPTURE                          UPVAL U5
      809 CAPTURE                          VAL R4
      810 CAPTURE                          VAL R0
      811 CAPTURE                          UPVAL U35
      812 CAPTURE                          VAL R10
      813 CAPTURE                          VAL R11
      814 SETTABLEKS                       R49 R48 K57 ["OnClick"]
      816 CALL                             R46 2 1
      817 GETUPVAL                         R47 24
      818 GETUPVAL                         R48 28
      819 DUPTABLE                         R49 K134 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      820 LOADK                            R52 K75 ["MainView"]
      821 LOADK                            R53 K141 ["MaterialManagerButton"]
      822 NAMECALL                         R50 R2 K52 ["getText"]
      824 CALL                             R50 3 1
      825 SETTABLEKS                       R50 R49 K84 ["Text"]
      827 GETTABLEKS                       R53 R1 K130 ["Footer"]
      829 GETTABLEKS                       R52 R53 K136 ["IconButton"]
      831 GETTABLEKS                       R51 R52 K141 ["MaterialManagerButton"]
      833 GETTABLEKS                       R50 R51 K34 ["Size"]
      835 SETTABLEKS                       R50 R49 K34 ["Size"]
      837 GETTABLEKS                       R53 R1 K130 ["Footer"]
      839 GETTABLEKS                       R52 R53 K136 ["IconButton"]
      841 GETTABLEKS                       R51 R52 K141 ["MaterialManagerButton"]
      843 GETTABLEKS                       R50 R51 K137 ["Icon"]
      845 SETTABLEKS                       R50 R49 K55 ["LeftIcon"]
      847 GETTABLEKS                       R52 R1 K130 ["Footer"]
      849 GETTABLEKS                       R51 R52 K136 ["IconButton"]
      851 GETTABLEKS                       R50 R51 K131 ["IconSize"]
      853 SETTABLEKS                       R50 R49 K131 ["IconSize"]
      855 GETIMPORT                        R50 K139 [Enum.TextXAlignment.Center]
      857 SETTABLEKS                       R50 R49 K132 ["TextXAlignment"]
      859 GETTABLEKS                       R52 R1 K130 ["Footer"]
      861 GETTABLEKS                       R51 R52 K136 ["IconButton"]
      863 GETTABLEKS                       R50 R51 K35 ["Spacing"]
      865 SETTABLEKS                       R50 R49 K35 ["Spacing"]
      867 GETTABLEKS                       R52 R1 K130 ["Footer"]
      869 GETTABLEKS                       R51 R52 K136 ["IconButton"]
      871 GETTABLEKS                       R50 R51 K36 ["Padding"]
      873 SETTABLEKS                       R50 R49 K36 ["Padding"]
      875 GETUPVAL                         R51 34
      876 CALL                             R51 0 1
      877 JUMPIF                           R51 ; [+3]
      878 GETUPVAL                         R51 35
      879 CALL                             R51 0 1
      880 JUMPIFNOT                        R51 ; [+7]
      881 GETTABLEKS                       R52 R1 K130 ["Footer"]
      883 GETTABLEKS                       R51 R52 K136 ["IconButton"]
      885 GETTABLEKS                       R50 R51 K133 ["BackgroundColor"]
      887 JUMP                             ; [+14]
      888 JUMPIFNOT                        R12 ; [+7]
      889 GETTABLEKS                       R52 R1 K130 ["Footer"]
      891 GETTABLEKS                       R51 R52 K136 ["IconButton"]
      893 GETTABLEKS                       R50 R51 K140 ["ActiveBackgroundColor"]
      895 JUMP                             ; [+6]
      896 GETTABLEKS                       R52 R1 K130 ["Footer"]
      898 GETTABLEKS                       R51 R52 K136 ["IconButton"]
      900 GETTABLEKS                       R50 R51 K133 ["BackgroundColor"]
      902 SETTABLEKS                       R50 R49 K133 ["BackgroundColor"]
      904 NEWCLOSURE                       R50 P26
      905 CAPTURE                          UPVAL U34
      906 CAPTURE                          VAL R7
      907 CAPTURE                          UPVAL U5
      908 CAPTURE                          VAL R4
      909 CAPTURE                          VAL R0
      910 CAPTURE                          UPVAL U35
      911 CAPTURE                          VAL R12
      912 CAPTURE                          VAL R13
      913 SETTABLEKS                       R50 R49 K57 ["OnClick"]
      915 CALL                             R47 2 -1
      916 SETLIST                          R45 R46 -1 [1]
      918 CALL                             R42 3 -1
      919 SETLIST                          R38 R39 -1 [1]
      921 CALL                             R35 3 -1
      922 CLOSEUPVALS                      R14
      923 RETURN                           R35 -1

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
       14 GETTABLEKS                       R5 R0 K7 ["Src"]
       16 GETTABLEKS                       R4 R5 K8 ["Constants"]
       18 GETTABLEKS                       R3 R4 K9 ["BASE_MATERIALS"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K7 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["applyToSelection"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K7 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["isMaterialVariantByIdentifier"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K7 ["Src"]
       43 GETTABLEKS                       R7 R8 K10 ["Util"]
       45 GETTABLEKS                       R6 R7 K13 ["setCurrentMaterial"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K7 ["Src"]
       52 GETTABLEKS                       R8 R9 K10 ["Util"]
       54 GETTABLEKS                       R7 R8 K14 ["updateRecentlyUsedList"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R9 R0 K15 ["Packages"]
       61 GETTABLEKS                       R8 R9 K16 ["Dash"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K15 ["Packages"]
       68 GETTABLEKS                       R9 R10 K17 ["Framework"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R11 R0 K15 ["Packages"]
       75 GETTABLEKS                       R10 R11 K18 ["MaterialFramework"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R12 R0 K15 ["Packages"]
       82 GETTABLEKS                       R11 R12 K19 ["React"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R7 K20 ["append"]
       87 GETTABLEKS                       R12 R7 K21 ["copy"]
       89 GETTABLEKS                       R13 R7 K22 ["filter"]
       91 GETTABLEKS                       R14 R7 K23 ["keys"]
       93 GETTABLEKS                       R16 R8 K24 ["Style"]
       95 GETTABLEKS                       R15 R16 K25 ["Stylizer"]
       97 GETTABLEKS                       R16 R8 K26 ["ContextServices"]
       99 GETTABLEKS                       R17 R16 K27 ["Analytics"]
      101 GETTABLEKS                       R18 R16 K28 ["Localization"]
      103 GETTABLEKS                       R20 R9 K29 ["Context"]
      105 GETTABLEKS                       R19 R20 K30 ["StudioServices"]
      107 GETTABLEKS                       R21 R9 K31 ["Components"]
      109 GETTABLEKS                       R20 R21 K32 ["MaterialGrid"]
      111 GETTABLEKS                       R22 R9 K10 ["Util"]
      113 GETTABLEKS                       R21 R22 K33 ["levenshteinDistance"]
      115 GETTABLEKS                       R23 R9 K10 ["Util"]
      117 GETTABLEKS                       R22 R23 K34 ["getSerializedMaterialIdentifier"]
      119 GETTABLEKS                       R24 R9 K35 ["Enums"]
      121 GETTABLEKS                       R23 R24 K36 ["ViewType"]
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
      143 GETIMPORT                        R36 K1 [script]
      145 GETTABLEKS                       R35 R36 K46 ["Parent"]
      147 GETTABLEKS                       R34 R35 K47 ["FilterChip"]
      149 CALL                             R33 1 1
      150 GETIMPORT                        R34 K5 [require]
      152 GETIMPORT                        R37 K1 [script]
      154 GETTABLEKS                       R36 R37 K46 ["Parent"]
      156 GETTABLEKS                       R35 R36 K48 ["FilterChipGroup"]
      158 CALL                             R34 1 1
      159 GETIMPORT                        R35 K5 [require]
      161 GETTABLEKS                       R38 R0 K7 ["Src"]
      163 GETTABLEKS                       R37 R38 K49 ["Flags"]
      165 GETTABLEKS                       R36 R37 K50 ["getFFlagEnableMaterialGenerator"]
      167 CALL                             R35 1 1
      168 GETIMPORT                        R36 K5 [require]
      170 GETTABLEKS                       R39 R0 K7 ["Src"]
      172 GETTABLEKS                       R38 R39 K49 ["Flags"]
      174 GETTABLEKS                       R37 R38 K51 ["getFFlagDropdownIconCanOpenPlugin"]
      176 CALL                             R36 1 1
      177 GETIMPORT                        R37 K5 [require]
      179 GETTABLEKS                       R40 R0 K7 ["Src"]
      181 GETTABLEKS                       R39 R40 K49 ["Flags"]
      183 GETTABLEKS                       R38 R39 K52 ["getFFlagMaterialPickerFixPluginOpen"]
      185 CALL                             R37 1 1
      186 GETIMPORT                        R38 K5 [require]
      188 GETTABLEKS                       R41 R0 K7 ["Src"]
      190 GETTABLEKS                       R40 R41 K49 ["Flags"]
      192 GETTABLEKS                       R39 R40 K53 ["getFFlagMaterialPickerRemoveToggles"]
      194 CALL                             R38 1 1
      195 GETIMPORT                        R39 K5 [require]
      197 GETTABLEKS                       R42 R0 K7 ["Src"]
      199 GETTABLEKS                       R41 R42 K49 ["Flags"]
      201 GETTABLEKS                       R40 R41 K54 ["getFFlagMaterialPickerSearchPreviewer"]
      203 CALL                             R39 1 1
      204 GETIMPORT                        R40 K5 [require]
      206 GETTABLEKS                       R43 R0 K7 ["Src"]
      208 GETTABLEKS                       R42 R43 K49 ["Flags"]
      210 GETTABLEKS                       R41 R42 K55 ["getFFlagMaterialPickerFilterChipGroup"]
      212 CALL                             R40 1 1
      213 GETIMPORT                        R41 K57 [game]
      215 LOADK                            R43 K58 ["MaterialGeneratorHideTempMaterialVariants"]
      216 NAMECALL                         R41 R41 K59 ["GetFastFlag"]
      218 CALL                             R41 2 1
      219 NEWTABLE                         R42 0 0
      221 MOVE                             R43 R39
      222 CALL                             R43 0 1
      223 JUMPIFNOT                        R43 ; [+13]
      224 GETIMPORT                        R43 K61 [ipairs]
      226 MOVE                             R44 R2
      227 CALL                             R43 1 3
      228 FORGPREP_INEXT                   R43
      229 GETIMPORT                        R48 K64 [string.lower]
      231 GETTABLEKS                       R49 R47 K65 ["Name"]
      233 CALL                             R48 1 1
      234 SETTABLE                         R47 R42 R48
      235 FORGLOOP                         R43 2 [inext] ; [-7]
      237 DUPCLOSURE                       R43 K66 [PROTO_41]
      238 CAPTURE                          VAL R15
      239 CAPTURE                          VAL R18
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R17
      242 CAPTURE                          VAL R27
      243 CAPTURE                          VAL R1
      244 CAPTURE                          VAL R13
      245 CAPTURE                          VAL R41
      246 CAPTURE                          VAL R22
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R2
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R25
      253 CAPTURE                          VAL R40
      254 CAPTURE                          VAL R42
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R6
      257 CAPTURE                          VAL R36
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R26
      261 CAPTURE                          VAL R23
      262 CAPTURE                          VAL R24
      263 CAPTURE                          VAL R30
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R39
      266 CAPTURE                          VAL R29
      267 CAPTURE                          VAL R31
      268 CAPTURE                          VAL R33
      269 CAPTURE                          VAL R34
      270 CAPTURE                          VAL R20
      271 CAPTURE                          VAL R35
      272 CAPTURE                          VAL R37
      273 CAPTURE                          VAL R38
      274 SETGLOBAL                        R43 K67 ["MainView"]
      276 GETGLOBAL                        R43 K67 ["MainView"]
      278 RETURN                           R43 1
