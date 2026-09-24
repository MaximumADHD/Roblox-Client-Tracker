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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_16:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["defaultMaterials"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 MOVE                             R0 R1
        9 JUMP                             ; [+19]
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 NAMECALL                         R2 R2 K1 ["GetDescendants"]
       14 CALL                             R2 1 1
       15 DUPCLOSURE                       R3 K2 [PROTO_2]
       16 CAPTURE                          UPVAL U5
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["customMaterials"]
       21 JUMPIF                           R2 ; [+6]
       22 GETUPVAL                         R2 6
       23 MOVE                             R3 R1
       24 GETUPVAL                         R4 1
       25 GETUPVAL                         R5 2
       26 CALL                             R4 1 -1
       27 CALL                             R2 -1 0
       28 MOVE                             R0 R1
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K4 ["recents"]
       32 JUMPIFNOT                        R1 ; [+4]
       33 GETUPVAL                         R1 7
       34 MOVE                             R2 R0
       35 CALL                             R1 1 1
       36 MOVE                             R0 R1
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K5 ["appliedInPlace"]
       40 JUMPIFNOT                        R1 ; [+4]
       41 GETUPVAL                         R1 8
       42 MOVE                             R2 R0
       43 CALL                             R1 1 1
       44 MOVE                             R0 R1
       45 GETUPVAL                         R1 9
       46 JUMPIFNOT                        R1 ; [+77]
       47 GETUPVAL                         R1 9
       48 JUMPIFEQKS                       R1 K6 [""] ; [+75]
       50 GETIMPORT                        R1 K9 [string.lower]
       52 GETUPVAL                         R2 9
       53 CALL                             R1 1 1
       54 SETUPVAL                         R1 9
       55 GETUPVAL                         R1 3
       56 MOVE                             R2 R0
       57 NEWCLOSURE                       R3 P1
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          UPVAL U10
       60 CALL                             R1 2 1
       61 MOVE                             R0 R1
       62 GETUPVAL                         R2 11
       63 GETUPVAL                         R3 9
       64 GETTABLE                         R1 R2 R3
       65 JUMPIFNOT                        R1 ; [+31]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K0 ["defaultMaterials"]
       69 JUMPIF                           R2 ; [+27]
       70 GETUPVAL                         R2 3
       71 GETUPVAL                         R3 4
       72 NAMECALL                         R3 R3 K1 ["GetDescendants"]
       74 CALL                             R3 1 1
       75 NEWCLOSURE                       R4 P2
       76 CAPTURE                          VAL R1
       77 CALL                             R2 2 1
       78 MOVE                             R3 R2
       79 LOADNIL                          R4
       80 LOADNIL                          R5
       81 FORGPREP                         R3
       82 GETIMPORT                        R8 K12 [table.find]
       84 MOVE                             R9 R0
       85 MOVE                             R10 R7
       86 CALL                             R8 2 1
       87 JUMPIF                           R8 ; [+7]
       88 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       90 MOVE                             R10 R0
       91 MOVE                             R11 R7
       92 GETIMPORT                        R9 K14 [table.insert]
       94 CALL                             R9 2 0
       95 FORGLOOP                         R3 2 ; [-14]
       97 LENGTH                           R2 R0
       98 LOADN                            R3 0
       99 JUMPIFNOTLT                      R3 R2 ; [+33]
      101 GETIMPORT                        R2 K16 [table.sort]
      103 MOVE                             R3 R0
      104 DUPCLOSURE                       R4 K17 [PROTO_13]
      105 CALL                             R2 2 0
      106 GETIMPORT                        R2 K16 [table.sort]
      108 MOVE                             R3 R0
      109 NEWCLOSURE                       R4 P4
      110 CAPTURE                          UPVAL U9
      111 CAPTURE                          UPVAL U10
      112 CALL                             R2 2 0
      113 GETUPVAL                         R2 12
      114 CALL                             R2 0 0
      115 GETUPVAL                         R2 13
      116 GETTABLEN                        R3 R0 1
      117 GETUPVAL                         R4 14
      118 CALL                             R2 2 0
      119 GETUPVAL                         R2 15
      120 LOADB                            R3 1
      121 SETTABLEKS                       R3 R2 K18 ["current"]
      123 RETURN                           R0 1
      124 GETUPVAL                         R1 0
      125 GETTABLEKS                       R1 R1 K4 ["recents"]
      127 JUMPIF                           R1 ; [+5]
      128 GETIMPORT                        R1 K16 [table.sort]
      130 MOVE                             R2 R0
      131 DUPCLOSURE                       R3 K19 [PROTO_15]
      132 CALL                             R1 2 0
      133 RETURN                           R0 1

PROTO_17:
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

PROTO_18:
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
       13 LOADK                            R4 K1 ["Applied %* Material to Selection"]
       14 MOVE                             R6 R1
       15 NAMECALL                         R4 R4 K2 ["format"]
       17 CALL                             R4 2 1
       18 NAMECALL                         R2 R2 K3 ["SetWaypoint"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 5
       22 GETUPVAL                         R3 6
       23 GETTABLEKS                       R3 R3 K4 ["plugin"]
       25 MOVE                             R4 R0
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 6
       28 GETTABLEKS                       R2 R2 K5 ["onMaterialSelected"]
       30 MOVE                             R3 R0
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 7
       33 MOVE                             R3 R0
       34 GETUPVAL                         R4 8
       35 CALL                             R2 2 0
       36 GETUPVAL                         R3 3
       37 NAMECALL                         R3 R3 K6 ["Get"]
       39 CALL                             R3 1 1
       40 LENGTH                           R2 R3
       41 LOADN                            R3 0
       42 JUMPIFNOTLT                      R3 R2 ; [+62]
       44 GETUPVAL                         R4 9
       45 MOVE                             R5 R1
       46 CALL                             R4 1 1
       47 JUMPIFNOT                        R4 ; [+2]
       48 LOADK                            R3 K7 ["MaterialVariant"]
       49 JUMP                             ; [+1]
       50 LOADK                            R3 K8 ["BaseMaterial"]
       51 NEWTABLE                         R4 0 0
       53 GETIMPORT                        R5 K10 [pairs]
       55 GETUPVAL                         R6 10
       56 CALL                             R5 1 3
       57 FORGPREP_NEXT                    R5
       58 JUMPIFNOT                        R9 ; [+7]
       59 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       61 MOVE                             R11 R4
       62 MOVE                             R12 R8
       63 GETIMPORT                        R10 K13 [table.insert]
       65 CALL                             R10 2 0
       66 FORGLOOP                         R5 2 ; [-9]
       68 GETUPVAL                         R5 6
       69 GETTABLEKS                       R5 R5 K14 ["viewType"]
       71 GETUPVAL                         R7 11
       72 JUMPIFNOTEQKS                    R7 K15 [""] ; [+2]
       74 LOADB                            R6 0 +1
       75 LOADB                            R6 1
       76 GETIMPORT                        R7 K17 [table.concat]
       78 MOVE                             R8 R4
       79 LOADK                            R9 K18 [", "]
       80 CALL                             R7 2 1
       81 LENGTH                           R8 R4
       82 GETUPVAL                         R9 12
       83 LOADK                            R11 K19 ["MaterialApplied"]
       84 LOADK                            R12 K20 ["PopupDropdown"]
       85 MOVE                             R13 R2
       86 MOVE                             R14 R1
       87 MOVE                             R15 R3
       88 DUPTABLE                         R16 K24 [{"viewType", "isSearchBarUsed", "filterChips", "filterChipsCount"}]
       89 FASTCALL1                        TOSTRING R5 ; [+3]
       90 MOVE                             R18 R5
       91 GETIMPORT                        R17 K26 [tostring]
       93 CALL                             R17 1 1
       94 SETTABLEKS                       R17 R16 K14 ["viewType"]
       96 SETTABLEKS                       R6 R16 K21 ["isSearchBarUsed"]
       98 SETTABLEKS                       R7 R16 K22 ["filterChips"]
      100 SETTABLEKS                       R8 R16 K23 ["filterChipsCount"]
      102 NAMECALL                         R9 R9 K27 ["report"]
      104 CALL                             R9 7 0
      105 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Material"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["current"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R1 1
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K0 ["current"]
       10 GETUPVAL                         R1 2
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R2 R0 K2 ["Material"]
       15 GETUPVAL                         R3 4
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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
       70 JUMPIF                           R17 ; [+1]
       71 DUPTABLE                         R17 K22 [{["recents"] = False, ["appliedInPlace"] = False, ["customMaterials"] = False, ["defaultMaterials"] = False}]
       72 CALL                             R16 1 2
       73 NEWCLOSURE                       R18 P0
       74 CAPTURE                          VAL R7
       75 CAPTURE                          UPVAL U5
       76 NEWCLOSURE                       R19 P1
       77 CAPTURE                          VAL R7
       78 CAPTURE                          UPVAL U5
       79 NEWCLOSURE                       R20 P2
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          VAL R8
       82 CAPTURE                          UPVAL U7
       83 NEWCLOSURE                       R21 P3
       84 CAPTURE                          VAL R9
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          UPVAL U9
       87 NEWCLOSURE                       R22 P4
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U8
       90 GETUPVAL                         R23 10
       91 LOADN                            R24 0
       92 CALL                             R23 1 1
       93 GETUPVAL                         R24 10
       94 LOADB                            R25 0
       95 CALL                             R24 1 1
       96 GETUPVAL                         R25 10
       97 NEWTABLE                         R26 0 0
       99 CALL                             R25 1 1
      100 NEWCLOSURE                       R26 P5
      101 CAPTURE                          VAL R25
      102 NEWCLOSURE                       R27 P6
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R25
      105 NEWCLOSURE                       R28 P7
      106 CAPTURE                          VAL R25
      107 NEWCLOSURE                       R29 P8
      108 CAPTURE                          VAL R5
      109 CAPTURE                          UPVAL U8
      110 NEWCLOSURE                       R30 P9
      111 CAPTURE                          VAL R16
      112 CAPTURE                          UPVAL U11
      113 CAPTURE                          UPVAL U12
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          VAL R8
      116 CAPTURE                          UPVAL U7
      117 CAPTURE                          UPVAL U13
      118 CAPTURE                          VAL R22
      119 CAPTURE                          VAL R21
      120 CAPTURE                          REF R14
      121 CAPTURE                          UPVAL U14
      122 CAPTURE                          UPVAL U15
      123 CAPTURE                          VAL R27
      124 CAPTURE                          UPVAL U16
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R24
      127 NEWCLOSURE                       R31 P10
      128 CAPTURE                          REF R14
      129 CAPTURE                          VAL R25
      130 CAPTURE                          VAL R24
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R15
      133 NEWCLOSURE                       R32 P11
      134 CAPTURE                          UPVAL U8
      135 CAPTURE                          VAL R25
      136 CAPTURE                          UPVAL U16
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R6
      139 CAPTURE                          UPVAL U17
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U18
      142 CAPTURE                          VAL R8
      143 CAPTURE                          UPVAL U19
      144 CAPTURE                          VAL R16
      145 CAPTURE                          REF R14
      146 CAPTURE                          VAL R4
      147 GETUPVAL                         R33 20
      148 NEWCLOSURE                       R34 P12
      149 CAPTURE                          VAL R25
      150 NEWTABLE                         R35 0 0
      152 CALL                             R33 2 0
      153 GETTABLEKS                       R34 R0 K23 ["viewType"]
      155 GETUPVAL                         R35 21
      156 GETTABLEKS                       R35 R35 K24 ["Grid"]
      158 JUMPIFEQ                         R34 R35 ; [+2]
      160 LOADB                            R33 0 +1
      161 LOADB                            R33 1
      162 GETUPVAL                         R34 22
      163 GETUPVAL                         R35 23
      164 DUPTABLE                         R36 K27 [{"Layout", "VerticalAlignment"}]
      165 GETIMPORT                        R37 K31 [Enum.FillDirection.Vertical]
      167 SETTABLEKS                       R37 R36 K25 ["Layout"]
      169 GETIMPORT                        R37 K33 [Enum.VerticalAlignment.Top]
      171 SETTABLEKS                       R37 R36 K26 ["VerticalAlignment"]
      173 NEWTABLE                         R37 0 4
      175 GETUPVAL                         R38 22
      176 GETUPVAL                         R39 23
      177 DUPTABLE                         R40 K39 [{["key"] = "PrimaryTools", ["Size"], ["Spacing"], ["Padding"], ["Layout"]}]
      178 GETTABLEKS                       R41 R1 K35 ["PrimaryTools"]
      180 GETTABLEKS                       R41 R41 K36 ["Size"]
      182 SETTABLEKS                       R41 R40 K36 ["Size"]
      184 GETTABLEKS                       R41 R1 K35 ["PrimaryTools"]
      186 GETTABLEKS                       R41 R41 K37 ["Spacing"]
      188 SETTABLEKS                       R41 R40 K37 ["Spacing"]
      190 GETTABLEKS                       R41 R1 K35 ["PrimaryTools"]
      192 GETTABLEKS                       R41 R41 K38 ["Padding"]
      194 SETTABLEKS                       R41 R40 K38 ["Padding"]
      196 GETIMPORT                        R41 K41 [Enum.FillDirection.Horizontal]
      198 SETTABLEKS                       R41 R40 K25 ["Layout"]
      200 NEWTABLE                         R41 0 2
      202 GETUPVAL                         R42 22
      203 GETUPVAL                         R43 24
      204 DUPTABLE                         R44 K53 [{["key"] = "SearchBar", ["PlaceholderText"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["OnSearchRequested"], ["OnTextChanged"], ["OnTextBoxFocusLost"], ["Style"] = "Compact", ["Size"], ["ShouldFocusOnMount"] = True}]
      205 LOADK                            R47 K42 ["SearchBar"]
      206 LOADK                            R48 K54 ["SearchMaterials"]
      207 NAMECALL                         R45 R2 K55 ["getText"]
      209 CALL                             R45 3 1
      210 SETTABLEKS                       R45 R44 K43 ["PlaceholderText"]
      212 SETTABLEKS                       R31 R44 K47 ["OnSearchRequested"]
      214 SETTABLEKS                       R31 R44 K48 ["OnTextChanged"]
      216 NEWCLOSURE                       R45 P13
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R30
      219 CAPTURE                          VAL R32
      220 CAPTURE                          VAL R0
      221 SETTABLEKS                       R45 R44 K49 ["OnTextBoxFocusLost"]
      223 GETTABLEKS                       R45 R1 K35 ["PrimaryTools"]
      225 GETTABLEKS                       R45 R45 K42 ["SearchBar"]
      227 GETTABLEKS                       R45 R45 K36 ["Size"]
      229 SETTABLEKS                       R45 R44 K36 ["Size"]
      231 NEWTABLE                         R45 0 0
      233 CALL                             R42 3 1
      234 GETUPVAL                         R43 22
      235 GETUPVAL                         R44 25
      236 DUPTABLE                         R45 K62 [{["key"] = "ViewToggle", ["BackgroundStyle"] = "Box", ["LeftIcon"], ["Size"], ["TooltipText"], ["OnClick"]}]
      237 JUMPIFNOT                        R33 ; [+7]
      238 GETTABLEKS                       R46 R1 K35 ["PrimaryTools"]
      240 GETTABLEKS                       R46 R46 K56 ["ViewToggle"]
      242 GETTABLEKS                       R46 R46 K63 ["LeftIconList"]
      244 JUMP                             ; [+6]
      245 GETTABLEKS                       R46 R1 K35 ["PrimaryTools"]
      247 GETTABLEKS                       R46 R46 K56 ["ViewToggle"]
      249 GETTABLEKS                       R46 R46 K64 ["LeftIconGrid"]
      251 SETTABLEKS                       R46 R45 K59 ["LeftIcon"]
      253 GETTABLEKS                       R46 R1 K35 ["PrimaryTools"]
      255 GETTABLEKS                       R46 R46 K56 ["ViewToggle"]
      257 GETTABLEKS                       R46 R46 K36 ["Size"]
      259 SETTABLEKS                       R46 R45 K36 ["Size"]
      261 JUMPIFNOT                        R33 ; [+6]
      262 LOADK                            R48 K56 ["ViewToggle"]
      263 LOADK                            R49 K65 ["ListView"]
      264 NAMECALL                         R46 R2 K55 ["getText"]
      266 CALL                             R46 3 1
      267 JUMP                             ; [+5]
      268 LOADK                            R48 K56 ["ViewToggle"]
      269 LOADK                            R49 K66 ["GridView"]
      270 NAMECALL                         R46 R2 K55 ["getText"]
      272 CALL                             R46 3 1
      273 SETTABLEKS                       R46 R45 K60 ["TooltipText"]
      275 NEWCLOSURE                       R46 P14
      276 CAPTURE                          VAL R33
      277 CAPTURE                          UPVAL U21
      278 CAPTURE                          VAL R0
      279 CAPTURE                          VAL R4
      280 SETTABLEKS                       R46 R45 K61 ["OnClick"]
      282 NEWTABLE                         R46 0 0
      284 CALL                             R43 3 -1
      285 SETLIST                          R41 R42 -1 [1]
      287 CALL                             R38 3 1
      288 GETUPVAL                         R39 22
      289 GETUPVAL                         R40 26
      290 DUPTABLE                         R41 K70 [{"Size", "ScrollingDirection", "HorizontalScrollBarInset", "ScrollBarThickness"}]
      291 GETTABLEKS                       R42 R1 K71 ["Filters"]
      293 GETTABLEKS                       R42 R42 K36 ["Size"]
      295 SETTABLEKS                       R42 R41 K36 ["Size"]
      297 GETIMPORT                        R42 K73 [Enum.ScrollingDirection.X]
      299 SETTABLEKS                       R42 R41 K67 ["ScrollingDirection"]
      301 GETIMPORT                        R42 K76 [Enum.ScrollBarInset.ScrollBar]
      303 SETTABLEKS                       R42 R41 K68 ["HorizontalScrollBarInset"]
      305 GETTABLEKS                       R42 R1 K77 ["MainView"]
      307 GETTABLEKS                       R42 R42 K69 ["ScrollBarThickness"]
      309 SETTABLEKS                       R42 R41 K69 ["ScrollBarThickness"]
      311 NEWTABLE                         R42 0 1
      313 GETUPVAL                         R43 22
      314 GETUPVAL                         R44 23
      315 DUPTABLE                         R45 K81 [{["key"] = "Filters", ["Layout"], ["HorizontalAlignment"], ["AutomaticSize"], ["Spacing"] = 4, ["Padding"]}]
      316 GETIMPORT                        R46 K41 [Enum.FillDirection.Horizontal]
      318 SETTABLEKS                       R46 R45 K25 ["Layout"]
      320 GETIMPORT                        R46 K83 [Enum.HorizontalAlignment.Left]
      322 SETTABLEKS                       R46 R45 K78 ["HorizontalAlignment"]
      324 GETIMPORT                        R46 K85 [Enum.AutomaticSize.XY]
      326 SETTABLEKS                       R46 R45 K79 ["AutomaticSize"]
      328 DUPTABLE                         R46 K88 [{["Left"] = 8, ["Top"] = 1}]
      329 SETTABLEKS                       R46 R45 K38 ["Padding"]
      331 NEWTABLE                         R46 0 3
      333 GETUPVAL                         R47 22
      334 GETUPVAL                         R48 27
      335 DUPTABLE                         R49 K91 [{"Text", "OnClick", "selected"}]
      336 LOADK                            R52 K71 ["Filters"]
      337 LOADK                            R53 K92 ["Recents"]
      338 NAMECALL                         R50 R2 K55 ["getText"]
      340 CALL                             R50 3 1
      341 SETTABLEKS                       R50 R49 K89 ["Text"]
      343 NEWCLOSURE                       R50 P15
      344 CAPTURE                          UPVAL U11
      345 CAPTURE                          VAL R16
      346 CAPTURE                          VAL R17
      347 CAPTURE                          VAL R0
      348 CAPTURE                          VAL R4
      349 SETTABLEKS                       R50 R49 K61 ["OnClick"]
      351 GETTABLEKS                       R50 R16 K17 ["recents"]
      353 SETTABLEKS                       R50 R49 K90 ["selected"]
      355 CALL                             R47 2 1
      356 GETUPVAL                         R48 22
      357 GETUPVAL                         R49 27
      358 DUPTABLE                         R50 K91 [{"Text", "OnClick", "selected"}]
      359 LOADK                            R53 K71 ["Filters"]
      360 LOADK                            R54 K93 ["AppliedInPlace"]
      361 NAMECALL                         R51 R2 K55 ["getText"]
      363 CALL                             R51 3 1
      364 SETTABLEKS                       R51 R50 K89 ["Text"]
      366 NEWCLOSURE                       R51 P16
      367 CAPTURE                          UPVAL U11
      368 CAPTURE                          VAL R16
      369 CAPTURE                          VAL R17
      370 CAPTURE                          VAL R0
      371 CAPTURE                          VAL R4
      372 SETTABLEKS                       R51 R50 K61 ["OnClick"]
      374 GETTABLEKS                       R51 R16 K19 ["appliedInPlace"]
      376 SETTABLEKS                       R51 R50 K90 ["selected"]
      378 CALL                             R48 2 1
      379 GETUPVAL                         R49 22
      380 GETUPVAL                         R50 28
      381 DUPTABLE                         R51 K100 [{"LeftText", "RightText", "LeftSelected", "RightSelected", "OnClickLeft", "OnClickRight"}]
      382 LOADK                            R54 K71 ["Filters"]
      383 LOADK                            R55 K101 ["CustomMaterials"]
      384 NAMECALL                         R52 R2 K55 ["getText"]
      386 CALL                             R52 3 1
      387 SETTABLEKS                       R52 R51 K94 ["LeftText"]
      389 LOADK                            R54 K71 ["Filters"]
      390 LOADK                            R55 K102 ["DefaultMaterials"]
      391 NAMECALL                         R52 R2 K55 ["getText"]
      393 CALL                             R52 3 1
      394 SETTABLEKS                       R52 R51 K95 ["RightText"]
      396 GETTABLEKS                       R52 R16 K20 ["customMaterials"]
      398 SETTABLEKS                       R52 R51 K96 ["LeftSelected"]
      400 GETTABLEKS                       R52 R16 K21 ["defaultMaterials"]
      402 SETTABLEKS                       R52 R51 K97 ["RightSelected"]
      404 NEWCLOSURE                       R52 P17
      405 CAPTURE                          UPVAL U11
      406 CAPTURE                          VAL R16
      407 CAPTURE                          VAL R17
      408 CAPTURE                          VAL R0
      409 CAPTURE                          VAL R4
      410 SETTABLEKS                       R52 R51 K98 ["OnClickLeft"]
      412 NEWCLOSURE                       R52 P18
      413 CAPTURE                          UPVAL U11
      414 CAPTURE                          VAL R16
      415 CAPTURE                          VAL R17
      416 CAPTURE                          VAL R0
      417 CAPTURE                          VAL R4
      418 SETTABLEKS                       R52 R51 K99 ["OnClickRight"]
      420 CALL                             R49 2 -1
      421 SETLIST                          R46 R47 -1 [1]
      423 CALL                             R43 3 -1
      424 SETLIST                          R42 R43 -1 [1]
      426 CALL                             R39 3 1
      427 GETUPVAL                         R40 22
      428 GETUPVAL                         R41 29
      429 DUPTABLE                         R42 K126 [{["key"] = "MaterialGrid", ["AppliedItemId"], ["ShouldCenterTooltip"] = True, ["ContainerXBounds"], ["ContainerYBounds"], ["Size"], ["GridItemsPerRow"], ["GridItemSize"], ["Items"], ["ShowGridLabels"] = False, ["OnClick"], ["OnMouseEnter"], ["OnMouseLeave"], ["ListPadding"], ["OnScrollUpdate"], ["OnSnapshotTaken"], ["ViewType"], ["InitialGridCanvasPosition"], ["InitialListCanvasPosition"], ["ScrollingDirection"], ["SelectedItemId"], ["ShouldSyncScroll"] = True, ["SnapshotSize"], ["SnapshotBorderThickness"], ["TooltipDelay"], ["UseInstantTooltip"] = True}]
      430 MOVE                             R43 R29
      431 CALL                             R43 0 1
      432 SETTABLEKS                       R43 R42 K104 ["AppliedItemId"]
      434 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      436 GETTABLEKS                       R43 R43 K106 ["ContainerXBounds"]
      438 SETTABLEKS                       R43 R42 K106 ["ContainerXBounds"]
      440 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      442 GETTABLEKS                       R43 R43 K107 ["ContainerYBounds"]
      444 SETTABLEKS                       R43 R42 K107 ["ContainerYBounds"]
      446 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      448 GETTABLEKS                       R43 R43 K36 ["Size"]
      450 SETTABLEKS                       R43 R42 K36 ["Size"]
      452 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      454 GETTABLEKS                       R43 R43 K108 ["GridItemsPerRow"]
      456 SETTABLEKS                       R43 R42 K108 ["GridItemsPerRow"]
      458 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      460 GETTABLEKS                       R43 R43 K109 ["GridItemSize"]
      462 SETTABLEKS                       R43 R42 K109 ["GridItemSize"]
      464 MOVE                             R43 R30
      465 CALL                             R43 0 1
      466 SETTABLEKS                       R43 R42 K110 ["Items"]
      468 NEWCLOSURE                       R43 P19
      469 CAPTURE                          VAL R32
      470 SETTABLEKS                       R43 R42 K61 ["OnClick"]
      472 NEWCLOSURE                       R43 P20
      473 CAPTURE                          VAL R23
      474 CAPTURE                          VAL R24
      475 CAPTURE                          VAL R27
      476 CAPTURE                          UPVAL U16
      477 CAPTURE                          VAL R5
      478 SETTABLEKS                       R43 R42 K112 ["OnMouseEnter"]
      480 NEWCLOSURE                       R43 P21
      481 CAPTURE                          VAL R23
      482 CAPTURE                          VAL R25
      483 SETTABLEKS                       R43 R42 K113 ["OnMouseLeave"]
      485 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      487 GETTABLEKS                       R43 R43 K114 ["ListPadding"]
      489 SETTABLEKS                       R43 R42 K114 ["ListPadding"]
      491 GETTABLEKS                       R43 R0 K127 ["onScrollUpdate"]
      493 SETTABLEKS                       R43 R42 K115 ["OnScrollUpdate"]
      495 GETTABLEKS                       R43 R0 K128 ["onSnapshotTaken"]
      497 SETTABLEKS                       R43 R42 K116 ["OnSnapshotTaken"]
      499 GETTABLEKS                       R43 R0 K23 ["viewType"]
      501 SETTABLEKS                       R43 R42 K117 ["ViewType"]
      503 GETTABLEKS                       R43 R0 K129 ["savedGridCanvasPosition"]
      505 SETTABLEKS                       R43 R42 K118 ["InitialGridCanvasPosition"]
      507 GETTABLEKS                       R43 R0 K130 ["savedListCanvasPosition"]
      509 SETTABLEKS                       R43 R42 K119 ["InitialListCanvasPosition"]
      511 GETIMPORT                        R43 K132 [Enum.ScrollingDirection.Y]
      513 SETTABLEKS                       R43 R42 K67 ["ScrollingDirection"]
      515 GETTABLEKS                       R43 R0 K133 ["selectedMaterialIdentifier"]
      517 SETTABLEKS                       R43 R42 K120 ["SelectedItemId"]
      519 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      521 GETTABLEKS                       R43 R43 K122 ["SnapshotSize"]
      523 SETTABLEKS                       R43 R42 K122 ["SnapshotSize"]
      525 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      527 GETTABLEKS                       R43 R43 K123 ["SnapshotBorderThickness"]
      529 SETTABLEKS                       R43 R42 K123 ["SnapshotBorderThickness"]
      531 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      533 GETTABLEKS                       R43 R43 K124 ["TooltipDelay"]
      535 SETTABLEKS                       R43 R42 K124 ["TooltipDelay"]
      537 CALL                             R40 2 1
      538 GETUPVAL                         R41 22
      539 GETUPVAL                         R42 23
      540 DUPTABLE                         R43 K135 [{["key"] = "Footer", ["Size"], ["Layout"], ["Padding"], ["Spacing"]}]
      541 GETTABLEKS                       R44 R1 K134 ["Footer"]
      543 GETTABLEKS                       R44 R44 K36 ["Size"]
      545 SETTABLEKS                       R44 R43 K36 ["Size"]
      547 GETIMPORT                        R44 K41 [Enum.FillDirection.Horizontal]
      549 SETTABLEKS                       R44 R43 K25 ["Layout"]
      551 GETTABLEKS                       R44 R1 K134 ["Footer"]
      553 GETTABLEKS                       R44 R44 K38 ["Padding"]
      555 SETTABLEKS                       R44 R43 K38 ["Padding"]
      557 GETTABLEKS                       R44 R1 K134 ["Footer"]
      559 GETTABLEKS                       R44 R44 K37 ["Spacing"]
      561 SETTABLEKS                       R44 R43 K37 ["Spacing"]
      563 NEWTABLE                         R44 0 2
      565 GETUPVAL                         R45 22
      566 GETUPVAL                         R46 25
      567 DUPTABLE                         R47 K139 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      568 LOADK                            R50 K77 ["MainView"]
      569 LOADK                            R51 K140 ["MaterialGeneratorButton"]
      570 NAMECALL                         R48 R2 K55 ["getText"]
      572 CALL                             R48 3 1
      573 SETTABLEKS                       R48 R47 K89 ["Text"]
      575 GETTABLEKS                       R48 R1 K134 ["Footer"]
      577 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      579 GETTABLEKS                       R48 R48 K140 ["MaterialGeneratorButton"]
      581 GETTABLEKS                       R48 R48 K36 ["Size"]
      583 SETTABLEKS                       R48 R47 K36 ["Size"]
      585 GETTABLEKS                       R48 R1 K134 ["Footer"]
      587 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      589 GETTABLEKS                       R48 R48 K140 ["MaterialGeneratorButton"]
      591 GETTABLEKS                       R48 R48 K142 ["Icon"]
      593 SETTABLEKS                       R48 R47 K59 ["LeftIcon"]
      595 GETTABLEKS                       R48 R1 K134 ["Footer"]
      597 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      599 GETTABLEKS                       R48 R48 K136 ["IconSize"]
      601 SETTABLEKS                       R48 R47 K136 ["IconSize"]
      603 GETIMPORT                        R48 K144 [Enum.TextXAlignment.Center]
      605 SETTABLEKS                       R48 R47 K137 ["TextXAlignment"]
      607 GETTABLEKS                       R48 R1 K134 ["Footer"]
      609 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      611 GETTABLEKS                       R48 R48 K37 ["Spacing"]
      613 SETTABLEKS                       R48 R47 K37 ["Spacing"]
      615 GETTABLEKS                       R48 R1 K134 ["Footer"]
      617 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      619 GETTABLEKS                       R48 R48 K38 ["Padding"]
      621 SETTABLEKS                       R48 R47 K38 ["Padding"]
      623 GETTABLEKS                       R48 R1 K134 ["Footer"]
      625 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      627 GETTABLEKS                       R48 R48 K138 ["BackgroundColor"]
      629 SETTABLEKS                       R48 R47 K138 ["BackgroundColor"]
      631 NEWCLOSURE                       R48 P22
      632 CAPTURE                          UPVAL U30
      633 CAPTURE                          VAL R7
      634 CAPTURE                          UPVAL U5
      635 CAPTURE                          VAL R4
      636 CAPTURE                          VAL R0
      637 CAPTURE                          VAL R10
      638 CAPTURE                          VAL R11
      639 SETTABLEKS                       R48 R47 K61 ["OnClick"]
      641 CALL                             R45 2 1
      642 GETUPVAL                         R46 22
      643 GETUPVAL                         R47 25
      644 DUPTABLE                         R48 K139 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      645 LOADK                            R51 K77 ["MainView"]
      646 LOADK                            R52 K145 ["MaterialManagerButton"]
      647 NAMECALL                         R49 R2 K55 ["getText"]
      649 CALL                             R49 3 1
      650 SETTABLEKS                       R49 R48 K89 ["Text"]
      652 GETTABLEKS                       R49 R1 K134 ["Footer"]
      654 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      656 GETTABLEKS                       R49 R49 K145 ["MaterialManagerButton"]
      658 GETTABLEKS                       R49 R49 K36 ["Size"]
      660 SETTABLEKS                       R49 R48 K36 ["Size"]
      662 GETTABLEKS                       R49 R1 K134 ["Footer"]
      664 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      666 GETTABLEKS                       R49 R49 K145 ["MaterialManagerButton"]
      668 GETTABLEKS                       R49 R49 K142 ["Icon"]
      670 SETTABLEKS                       R49 R48 K59 ["LeftIcon"]
      672 GETTABLEKS                       R49 R1 K134 ["Footer"]
      674 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      676 GETTABLEKS                       R49 R49 K136 ["IconSize"]
      678 SETTABLEKS                       R49 R48 K136 ["IconSize"]
      680 GETIMPORT                        R49 K144 [Enum.TextXAlignment.Center]
      682 SETTABLEKS                       R49 R48 K137 ["TextXAlignment"]
      684 GETTABLEKS                       R49 R1 K134 ["Footer"]
      686 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      688 GETTABLEKS                       R49 R49 K37 ["Spacing"]
      690 SETTABLEKS                       R49 R48 K37 ["Spacing"]
      692 GETTABLEKS                       R49 R1 K134 ["Footer"]
      694 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      696 GETTABLEKS                       R49 R49 K38 ["Padding"]
      698 SETTABLEKS                       R49 R48 K38 ["Padding"]
      700 GETTABLEKS                       R49 R1 K134 ["Footer"]
      702 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      704 GETTABLEKS                       R49 R49 K138 ["BackgroundColor"]
      706 SETTABLEKS                       R49 R48 K138 ["BackgroundColor"]
      708 NEWCLOSURE                       R49 P23
      709 CAPTURE                          UPVAL U30
      710 CAPTURE                          VAL R7
      711 CAPTURE                          UPVAL U5
      712 CAPTURE                          VAL R4
      713 CAPTURE                          VAL R0
      714 CAPTURE                          VAL R12
      715 CAPTURE                          VAL R13
      716 SETTABLEKS                       R49 R48 K61 ["OnClick"]
      718 CALL                             R46 2 -1
      719 SETLIST                          R44 R45 -1 [1]
      721 CALL                             R41 3 -1
      722 SETLIST                          R37 R38 -1 [1]
      724 CALL                             R34 3 -1
      725 CLOSEUPVALS                      R14
      726 RETURN                           R34 -1

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
      165 GETTABLEKS                       R36 R36 K50 ["getFFlagMaterialPickerFixPluginOpen"]
      167 CALL                             R35 1 1
      168 GETIMPORT                        R36 K52 [game]
      170 LOADK                            R38 K53 ["MaterialGeneratorHideTempMaterialVariants"]
      171 NAMECALL                         R36 R36 K54 ["GetFastFlag"]
      173 CALL                             R36 2 1
      174 NEWTABLE                         R37 0 0
      176 GETIMPORT                        R38 K56 [ipairs]
      178 MOVE                             R39 R2
      179 CALL                             R38 1 3
      180 FORGPREP_INEXT                   R38
      181 GETIMPORT                        R43 K59 [string.lower]
      183 GETTABLEKS                       R44 R42 K60 ["Name"]
      185 CALL                             R43 1 1
      186 SETTABLE                         R42 R37 R43
      187 FORGLOOP                         R38 2 [inext] ; [-7]
      189 DUPCLOSURE                       R38 K61 [PROTO_34]
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R27
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R36
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R37
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R24
      213 CAPTURE                          VAL R30
      214 CAPTURE                          VAL R32
      215 CAPTURE                          VAL R29
      216 CAPTURE                          VAL R31
      217 CAPTURE                          VAL R33
      218 CAPTURE                          VAL R34
      219 CAPTURE                          VAL R20
      220 CAPTURE                          VAL R35
      221 SETGLOBAL                        R38 K62 ["MainView"]
      223 GETGLOBAL                        R38 K62 ["MainView"]
      225 RETURN                           R38 1
