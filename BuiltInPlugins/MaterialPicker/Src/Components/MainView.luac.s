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
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 LOADK                            R4 K2 ["Material Generator"]
        6 NAMECALL                         R2 R0 K3 ["FindFirstAncestor"]
        8 CALL                             R2 2 1
        9 NOT                              R1 R2
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        4 CALL                             R1 1 1
        5 DUPCLOSURE                       R2 K1 [PROTO_2]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

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
        9 JUMP                             ; [+18]
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 NAMECALL                         R2 R2 K1 ["GetDescendants"]
       14 CALL                             R2 1 1
       15 DUPCLOSURE                       R3 K2 [PROTO_2]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K3 ["customMaterials"]
       20 JUMPIF                           R2 ; [+6]
       21 GETUPVAL                         R2 5
       22 MOVE                             R3 R1
       23 GETUPVAL                         R4 1
       24 GETUPVAL                         R5 2
       25 CALL                             R4 1 -1
       26 CALL                             R2 -1 0
       27 MOVE                             R0 R1
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K4 ["recents"]
       31 JUMPIFNOT                        R1 ; [+4]
       32 GETUPVAL                         R1 6
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 MOVE                             R0 R1
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K5 ["appliedInPlace"]
       39 JUMPIFNOT                        R1 ; [+4]
       40 GETUPVAL                         R1 7
       41 MOVE                             R2 R0
       42 CALL                             R1 1 1
       43 MOVE                             R0 R1
       44 GETUPVAL                         R1 8
       45 JUMPIFNOT                        R1 ; [+77]
       46 GETUPVAL                         R1 8
       47 JUMPIFEQKS                       R1 K6 [""] ; [+75]
       49 GETIMPORT                        R1 K9 [string.lower]
       51 GETUPVAL                         R2 8
       52 CALL                             R1 1 1
       53 SETUPVAL                         R1 8
       54 GETUPVAL                         R1 3
       55 MOVE                             R2 R0
       56 NEWCLOSURE                       R3 P1
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          UPVAL U9
       59 CALL                             R1 2 1
       60 MOVE                             R0 R1
       61 GETUPVAL                         R2 10
       62 GETUPVAL                         R3 8
       63 GETTABLE                         R1 R2 R3
       64 JUMPIFNOT                        R1 ; [+31]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K0 ["defaultMaterials"]
       68 JUMPIF                           R2 ; [+27]
       69 GETUPVAL                         R2 3
       70 GETUPVAL                         R3 4
       71 NAMECALL                         R3 R3 K1 ["GetDescendants"]
       73 CALL                             R3 1 1
       74 NEWCLOSURE                       R4 P2
       75 CAPTURE                          VAL R1
       76 CALL                             R2 2 1
       77 MOVE                             R3 R2
       78 LOADNIL                          R4
       79 LOADNIL                          R5
       80 FORGPREP                         R3
       81 GETIMPORT                        R8 K12 [table.find]
       83 MOVE                             R9 R0
       84 MOVE                             R10 R7
       85 CALL                             R8 2 1
       86 JUMPIF                           R8 ; [+7]
       87 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       89 MOVE                             R10 R0
       90 MOVE                             R11 R7
       91 GETIMPORT                        R9 K14 [table.insert]
       93 CALL                             R9 2 0
       94 FORGLOOP                         R3 2 ; [-14]
       96 LENGTH                           R2 R0
       97 LOADN                            R3 0
       98 JUMPIFNOTLT                      R3 R2 ; [+33]
      100 GETIMPORT                        R2 K16 [table.sort]
      102 MOVE                             R3 R0
      103 DUPCLOSURE                       R4 K17 [PROTO_13]
      104 CALL                             R2 2 0
      105 GETIMPORT                        R2 K16 [table.sort]
      107 MOVE                             R3 R0
      108 NEWCLOSURE                       R4 P4
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          UPVAL U9
      111 CALL                             R2 2 0
      112 GETUPVAL                         R2 11
      113 CALL                             R2 0 0
      114 GETUPVAL                         R2 12
      115 GETTABLEN                        R3 R0 1
      116 GETUPVAL                         R4 13
      117 CALL                             R2 2 0
      118 GETUPVAL                         R2 14
      119 LOADB                            R3 1
      120 SETTABLEKS                       R3 R2 K18 ["current"]
      122 RETURN                           R0 1
      123 GETUPVAL                         R1 0
      124 GETTABLEKS                       R1 R1 K4 ["recents"]
      126 JUMPIF                           R1 ; [+5]
      127 GETIMPORT                        R1 K16 [table.sort]
      129 MOVE                             R2 R0
      130 DUPCLOSURE                       R3 K19 [PROTO_15]
      131 CALL                             R1 2 0
      132 RETURN                           R0 1

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
       82 NEWCLOSURE                       R21 P3
       83 CAPTURE                          VAL R9
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U8
       86 NEWCLOSURE                       R22 P4
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U7
       89 GETUPVAL                         R23 9
       90 LOADN                            R24 0
       91 CALL                             R23 1 1
       92 GETUPVAL                         R24 9
       93 LOADB                            R25 0
       94 CALL                             R24 1 1
       95 GETUPVAL                         R25 9
       96 NEWTABLE                         R26 0 0
       98 CALL                             R25 1 1
       99 NEWCLOSURE                       R26 P5
      100 CAPTURE                          VAL R25
      101 NEWCLOSURE                       R27 P6
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R25
      104 NEWCLOSURE                       R28 P7
      105 CAPTURE                          VAL R25
      106 NEWCLOSURE                       R29 P8
      107 CAPTURE                          VAL R5
      108 CAPTURE                          UPVAL U7
      109 NEWCLOSURE                       R30 P9
      110 CAPTURE                          VAL R16
      111 CAPTURE                          UPVAL U10
      112 CAPTURE                          UPVAL U11
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          VAL R8
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          VAL R22
      117 CAPTURE                          VAL R21
      118 CAPTURE                          REF R14
      119 CAPTURE                          UPVAL U13
      120 CAPTURE                          UPVAL U14
      121 CAPTURE                          VAL R27
      122 CAPTURE                          UPVAL U15
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R24
      125 NEWCLOSURE                       R31 P10
      126 CAPTURE                          REF R14
      127 CAPTURE                          VAL R25
      128 CAPTURE                          VAL R24
      129 CAPTURE                          VAL R23
      130 CAPTURE                          VAL R15
      131 NEWCLOSURE                       R32 P11
      132 CAPTURE                          UPVAL U7
      133 CAPTURE                          VAL R25
      134 CAPTURE                          UPVAL U15
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R6
      137 CAPTURE                          UPVAL U16
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U17
      140 CAPTURE                          VAL R8
      141 CAPTURE                          UPVAL U18
      142 CAPTURE                          VAL R16
      143 CAPTURE                          REF R14
      144 CAPTURE                          VAL R4
      145 GETUPVAL                         R33 19
      146 NEWCLOSURE                       R34 P12
      147 CAPTURE                          VAL R25
      148 NEWTABLE                         R35 0 0
      150 CALL                             R33 2 0
      151 GETTABLEKS                       R34 R0 K23 ["viewType"]
      153 GETUPVAL                         R35 20
      154 GETTABLEKS                       R35 R35 K24 ["Grid"]
      156 JUMPIFEQ                         R34 R35 ; [+2]
      158 LOADB                            R33 0 +1
      159 LOADB                            R33 1
      160 GETUPVAL                         R34 21
      161 GETUPVAL                         R35 22
      162 DUPTABLE                         R36 K27 [{"Layout", "VerticalAlignment"}]
      163 GETIMPORT                        R37 K31 [Enum.FillDirection.Vertical]
      165 SETTABLEKS                       R37 R36 K25 ["Layout"]
      167 GETIMPORT                        R37 K33 [Enum.VerticalAlignment.Top]
      169 SETTABLEKS                       R37 R36 K26 ["VerticalAlignment"]
      171 NEWTABLE                         R37 0 4
      173 GETUPVAL                         R38 21
      174 GETUPVAL                         R39 22
      175 DUPTABLE                         R40 K39 [{["key"] = "PrimaryTools", ["Size"], ["Spacing"], ["Padding"], ["Layout"]}]
      176 GETTABLEKS                       R41 R1 K35 ["PrimaryTools"]
      178 GETTABLEKS                       R41 R41 K36 ["Size"]
      180 SETTABLEKS                       R41 R40 K36 ["Size"]
      182 GETTABLEKS                       R41 R1 K35 ["PrimaryTools"]
      184 GETTABLEKS                       R41 R41 K37 ["Spacing"]
      186 SETTABLEKS                       R41 R40 K37 ["Spacing"]
      188 GETTABLEKS                       R41 R1 K35 ["PrimaryTools"]
      190 GETTABLEKS                       R41 R41 K38 ["Padding"]
      192 SETTABLEKS                       R41 R40 K38 ["Padding"]
      194 GETIMPORT                        R41 K41 [Enum.FillDirection.Horizontal]
      196 SETTABLEKS                       R41 R40 K25 ["Layout"]
      198 NEWTABLE                         R41 0 2
      200 GETUPVAL                         R42 21
      201 GETUPVAL                         R43 23
      202 DUPTABLE                         R44 K53 [{["key"] = "SearchBar", ["PlaceholderText"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["OnSearchRequested"], ["OnTextChanged"], ["OnTextBoxFocusLost"], ["Style"] = "Compact", ["Size"], ["ShouldFocusOnMount"] = True}]
      203 LOADK                            R47 K42 ["SearchBar"]
      204 LOADK                            R48 K54 ["SearchMaterials"]
      205 NAMECALL                         R45 R2 K55 ["getText"]
      207 CALL                             R45 3 1
      208 SETTABLEKS                       R45 R44 K43 ["PlaceholderText"]
      210 SETTABLEKS                       R31 R44 K47 ["OnSearchRequested"]
      212 SETTABLEKS                       R31 R44 K48 ["OnTextChanged"]
      214 NEWCLOSURE                       R45 P13
      215 CAPTURE                          VAL R24
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R32
      218 CAPTURE                          VAL R0
      219 SETTABLEKS                       R45 R44 K49 ["OnTextBoxFocusLost"]
      221 GETTABLEKS                       R45 R1 K35 ["PrimaryTools"]
      223 GETTABLEKS                       R45 R45 K42 ["SearchBar"]
      225 GETTABLEKS                       R45 R45 K36 ["Size"]
      227 SETTABLEKS                       R45 R44 K36 ["Size"]
      229 NEWTABLE                         R45 0 0
      231 CALL                             R42 3 1
      232 GETUPVAL                         R43 21
      233 GETUPVAL                         R44 24
      234 DUPTABLE                         R45 K62 [{["key"] = "ViewToggle", ["BackgroundStyle"] = "Box", ["LeftIcon"], ["Size"], ["TooltipText"], ["OnClick"]}]
      235 JUMPIFNOT                        R33 ; [+7]
      236 GETTABLEKS                       R46 R1 K35 ["PrimaryTools"]
      238 GETTABLEKS                       R46 R46 K56 ["ViewToggle"]
      240 GETTABLEKS                       R46 R46 K63 ["LeftIconList"]
      242 JUMP                             ; [+6]
      243 GETTABLEKS                       R46 R1 K35 ["PrimaryTools"]
      245 GETTABLEKS                       R46 R46 K56 ["ViewToggle"]
      247 GETTABLEKS                       R46 R46 K64 ["LeftIconGrid"]
      249 SETTABLEKS                       R46 R45 K59 ["LeftIcon"]
      251 GETTABLEKS                       R46 R1 K35 ["PrimaryTools"]
      253 GETTABLEKS                       R46 R46 K56 ["ViewToggle"]
      255 GETTABLEKS                       R46 R46 K36 ["Size"]
      257 SETTABLEKS                       R46 R45 K36 ["Size"]
      259 JUMPIFNOT                        R33 ; [+6]
      260 LOADK                            R48 K56 ["ViewToggle"]
      261 LOADK                            R49 K65 ["ListView"]
      262 NAMECALL                         R46 R2 K55 ["getText"]
      264 CALL                             R46 3 1
      265 JUMP                             ; [+5]
      266 LOADK                            R48 K56 ["ViewToggle"]
      267 LOADK                            R49 K66 ["GridView"]
      268 NAMECALL                         R46 R2 K55 ["getText"]
      270 CALL                             R46 3 1
      271 SETTABLEKS                       R46 R45 K60 ["TooltipText"]
      273 NEWCLOSURE                       R46 P14
      274 CAPTURE                          VAL R33
      275 CAPTURE                          UPVAL U20
      276 CAPTURE                          VAL R0
      277 CAPTURE                          VAL R4
      278 SETTABLEKS                       R46 R45 K61 ["OnClick"]
      280 NEWTABLE                         R46 0 0
      282 CALL                             R43 3 -1
      283 SETLIST                          R41 R42 -1 [1]
      285 CALL                             R38 3 1
      286 GETUPVAL                         R39 21
      287 GETUPVAL                         R40 25
      288 DUPTABLE                         R41 K70 [{"Size", "ScrollingDirection", "HorizontalScrollBarInset", "ScrollBarThickness"}]
      289 GETTABLEKS                       R42 R1 K71 ["Filters"]
      291 GETTABLEKS                       R42 R42 K36 ["Size"]
      293 SETTABLEKS                       R42 R41 K36 ["Size"]
      295 GETIMPORT                        R42 K73 [Enum.ScrollingDirection.X]
      297 SETTABLEKS                       R42 R41 K67 ["ScrollingDirection"]
      299 GETIMPORT                        R42 K76 [Enum.ScrollBarInset.ScrollBar]
      301 SETTABLEKS                       R42 R41 K68 ["HorizontalScrollBarInset"]
      303 GETTABLEKS                       R42 R1 K77 ["MainView"]
      305 GETTABLEKS                       R42 R42 K69 ["ScrollBarThickness"]
      307 SETTABLEKS                       R42 R41 K69 ["ScrollBarThickness"]
      309 NEWTABLE                         R42 0 1
      311 GETUPVAL                         R43 21
      312 GETUPVAL                         R44 22
      313 DUPTABLE                         R45 K81 [{["key"] = "Filters", ["Layout"], ["HorizontalAlignment"], ["AutomaticSize"], ["Spacing"] = 4, ["Padding"]}]
      314 GETIMPORT                        R46 K41 [Enum.FillDirection.Horizontal]
      316 SETTABLEKS                       R46 R45 K25 ["Layout"]
      318 GETIMPORT                        R46 K83 [Enum.HorizontalAlignment.Left]
      320 SETTABLEKS                       R46 R45 K78 ["HorizontalAlignment"]
      322 GETIMPORT                        R46 K85 [Enum.AutomaticSize.XY]
      324 SETTABLEKS                       R46 R45 K79 ["AutomaticSize"]
      326 DUPTABLE                         R46 K88 [{["Left"] = 8, ["Top"] = 1}]
      327 SETTABLEKS                       R46 R45 K38 ["Padding"]
      329 NEWTABLE                         R46 0 3
      331 GETUPVAL                         R47 21
      332 GETUPVAL                         R48 26
      333 DUPTABLE                         R49 K91 [{"Text", "OnClick", "selected"}]
      334 LOADK                            R52 K71 ["Filters"]
      335 LOADK                            R53 K92 ["Recents"]
      336 NAMECALL                         R50 R2 K55 ["getText"]
      338 CALL                             R50 3 1
      339 SETTABLEKS                       R50 R49 K89 ["Text"]
      341 NEWCLOSURE                       R50 P15
      342 CAPTURE                          UPVAL U10
      343 CAPTURE                          VAL R16
      344 CAPTURE                          VAL R17
      345 CAPTURE                          VAL R0
      346 CAPTURE                          VAL R4
      347 SETTABLEKS                       R50 R49 K61 ["OnClick"]
      349 GETTABLEKS                       R50 R16 K17 ["recents"]
      351 SETTABLEKS                       R50 R49 K90 ["selected"]
      353 CALL                             R47 2 1
      354 GETUPVAL                         R48 21
      355 GETUPVAL                         R49 26
      356 DUPTABLE                         R50 K91 [{"Text", "OnClick", "selected"}]
      357 LOADK                            R53 K71 ["Filters"]
      358 LOADK                            R54 K93 ["AppliedInPlace"]
      359 NAMECALL                         R51 R2 K55 ["getText"]
      361 CALL                             R51 3 1
      362 SETTABLEKS                       R51 R50 K89 ["Text"]
      364 NEWCLOSURE                       R51 P16
      365 CAPTURE                          UPVAL U10
      366 CAPTURE                          VAL R16
      367 CAPTURE                          VAL R17
      368 CAPTURE                          VAL R0
      369 CAPTURE                          VAL R4
      370 SETTABLEKS                       R51 R50 K61 ["OnClick"]
      372 GETTABLEKS                       R51 R16 K19 ["appliedInPlace"]
      374 SETTABLEKS                       R51 R50 K90 ["selected"]
      376 CALL                             R48 2 1
      377 GETUPVAL                         R49 21
      378 GETUPVAL                         R50 27
      379 DUPTABLE                         R51 K100 [{"LeftText", "RightText", "LeftSelected", "RightSelected", "OnClickLeft", "OnClickRight"}]
      380 LOADK                            R54 K71 ["Filters"]
      381 LOADK                            R55 K101 ["CustomMaterials"]
      382 NAMECALL                         R52 R2 K55 ["getText"]
      384 CALL                             R52 3 1
      385 SETTABLEKS                       R52 R51 K94 ["LeftText"]
      387 LOADK                            R54 K71 ["Filters"]
      388 LOADK                            R55 K102 ["DefaultMaterials"]
      389 NAMECALL                         R52 R2 K55 ["getText"]
      391 CALL                             R52 3 1
      392 SETTABLEKS                       R52 R51 K95 ["RightText"]
      394 GETTABLEKS                       R52 R16 K20 ["customMaterials"]
      396 SETTABLEKS                       R52 R51 K96 ["LeftSelected"]
      398 GETTABLEKS                       R52 R16 K21 ["defaultMaterials"]
      400 SETTABLEKS                       R52 R51 K97 ["RightSelected"]
      402 NEWCLOSURE                       R52 P17
      403 CAPTURE                          UPVAL U10
      404 CAPTURE                          VAL R16
      405 CAPTURE                          VAL R17
      406 CAPTURE                          VAL R0
      407 CAPTURE                          VAL R4
      408 SETTABLEKS                       R52 R51 K98 ["OnClickLeft"]
      410 NEWCLOSURE                       R52 P18
      411 CAPTURE                          UPVAL U10
      412 CAPTURE                          VAL R16
      413 CAPTURE                          VAL R17
      414 CAPTURE                          VAL R0
      415 CAPTURE                          VAL R4
      416 SETTABLEKS                       R52 R51 K99 ["OnClickRight"]
      418 CALL                             R49 2 -1
      419 SETLIST                          R46 R47 -1 [1]
      421 CALL                             R43 3 -1
      422 SETLIST                          R42 R43 -1 [1]
      424 CALL                             R39 3 1
      425 GETUPVAL                         R40 21
      426 GETUPVAL                         R41 28
      427 DUPTABLE                         R42 K126 [{["key"] = "MaterialGrid", ["AppliedItemId"], ["ShouldCenterTooltip"] = True, ["ContainerXBounds"], ["ContainerYBounds"], ["Size"], ["GridItemsPerRow"], ["GridItemSize"], ["Items"], ["ShowGridLabels"] = False, ["OnClick"], ["OnMouseEnter"], ["OnMouseLeave"], ["ListPadding"], ["OnScrollUpdate"], ["OnSnapshotTaken"], ["ViewType"], ["InitialGridCanvasPosition"], ["InitialListCanvasPosition"], ["ScrollingDirection"], ["SelectedItemId"], ["ShouldSyncScroll"] = True, ["SnapshotSize"], ["SnapshotBorderThickness"], ["TooltipDelay"], ["UseInstantTooltip"] = True}]
      428 MOVE                             R43 R29
      429 CALL                             R43 0 1
      430 SETTABLEKS                       R43 R42 K104 ["AppliedItemId"]
      432 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      434 GETTABLEKS                       R43 R43 K106 ["ContainerXBounds"]
      436 SETTABLEKS                       R43 R42 K106 ["ContainerXBounds"]
      438 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      440 GETTABLEKS                       R43 R43 K107 ["ContainerYBounds"]
      442 SETTABLEKS                       R43 R42 K107 ["ContainerYBounds"]
      444 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      446 GETTABLEKS                       R43 R43 K36 ["Size"]
      448 SETTABLEKS                       R43 R42 K36 ["Size"]
      450 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      452 GETTABLEKS                       R43 R43 K108 ["GridItemsPerRow"]
      454 SETTABLEKS                       R43 R42 K108 ["GridItemsPerRow"]
      456 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      458 GETTABLEKS                       R43 R43 K109 ["GridItemSize"]
      460 SETTABLEKS                       R43 R42 K109 ["GridItemSize"]
      462 MOVE                             R43 R30
      463 CALL                             R43 0 1
      464 SETTABLEKS                       R43 R42 K110 ["Items"]
      466 NEWCLOSURE                       R43 P19
      467 CAPTURE                          VAL R32
      468 SETTABLEKS                       R43 R42 K61 ["OnClick"]
      470 NEWCLOSURE                       R43 P20
      471 CAPTURE                          VAL R23
      472 CAPTURE                          VAL R24
      473 CAPTURE                          VAL R27
      474 CAPTURE                          UPVAL U15
      475 CAPTURE                          VAL R5
      476 SETTABLEKS                       R43 R42 K112 ["OnMouseEnter"]
      478 NEWCLOSURE                       R43 P21
      479 CAPTURE                          VAL R23
      480 CAPTURE                          VAL R25
      481 SETTABLEKS                       R43 R42 K113 ["OnMouseLeave"]
      483 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      485 GETTABLEKS                       R43 R43 K114 ["ListPadding"]
      487 SETTABLEKS                       R43 R42 K114 ["ListPadding"]
      489 GETTABLEKS                       R43 R0 K127 ["onScrollUpdate"]
      491 SETTABLEKS                       R43 R42 K115 ["OnScrollUpdate"]
      493 GETTABLEKS                       R43 R0 K128 ["onSnapshotTaken"]
      495 SETTABLEKS                       R43 R42 K116 ["OnSnapshotTaken"]
      497 GETTABLEKS                       R43 R0 K23 ["viewType"]
      499 SETTABLEKS                       R43 R42 K117 ["ViewType"]
      501 GETTABLEKS                       R43 R0 K129 ["savedGridCanvasPosition"]
      503 SETTABLEKS                       R43 R42 K118 ["InitialGridCanvasPosition"]
      505 GETTABLEKS                       R43 R0 K130 ["savedListCanvasPosition"]
      507 SETTABLEKS                       R43 R42 K119 ["InitialListCanvasPosition"]
      509 GETIMPORT                        R43 K132 [Enum.ScrollingDirection.Y]
      511 SETTABLEKS                       R43 R42 K67 ["ScrollingDirection"]
      513 GETTABLEKS                       R43 R0 K133 ["selectedMaterialIdentifier"]
      515 SETTABLEKS                       R43 R42 K120 ["SelectedItemId"]
      517 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      519 GETTABLEKS                       R43 R43 K122 ["SnapshotSize"]
      521 SETTABLEKS                       R43 R42 K122 ["SnapshotSize"]
      523 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      525 GETTABLEKS                       R43 R43 K123 ["SnapshotBorderThickness"]
      527 SETTABLEKS                       R43 R42 K123 ["SnapshotBorderThickness"]
      529 GETTABLEKS                       R43 R1 K103 ["MaterialGrid"]
      531 GETTABLEKS                       R43 R43 K124 ["TooltipDelay"]
      533 SETTABLEKS                       R43 R42 K124 ["TooltipDelay"]
      535 CALL                             R40 2 1
      536 GETUPVAL                         R41 21
      537 GETUPVAL                         R42 22
      538 DUPTABLE                         R43 K135 [{["key"] = "Footer", ["Size"], ["Layout"], ["Padding"], ["Spacing"]}]
      539 GETTABLEKS                       R44 R1 K134 ["Footer"]
      541 GETTABLEKS                       R44 R44 K36 ["Size"]
      543 SETTABLEKS                       R44 R43 K36 ["Size"]
      545 GETIMPORT                        R44 K41 [Enum.FillDirection.Horizontal]
      547 SETTABLEKS                       R44 R43 K25 ["Layout"]
      549 GETTABLEKS                       R44 R1 K134 ["Footer"]
      551 GETTABLEKS                       R44 R44 K38 ["Padding"]
      553 SETTABLEKS                       R44 R43 K38 ["Padding"]
      555 GETTABLEKS                       R44 R1 K134 ["Footer"]
      557 GETTABLEKS                       R44 R44 K37 ["Spacing"]
      559 SETTABLEKS                       R44 R43 K37 ["Spacing"]
      561 NEWTABLE                         R44 0 2
      563 GETUPVAL                         R45 29
      564 CALL                             R45 0 1
      565 JUMPIFNOT                        R45 ; [+77]
      566 GETUPVAL                         R45 21
      567 GETUPVAL                         R46 24
      568 DUPTABLE                         R47 K139 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      569 LOADK                            R50 K77 ["MainView"]
      570 LOADK                            R51 K140 ["MaterialGeneratorButton"]
      571 NAMECALL                         R48 R2 K55 ["getText"]
      573 CALL                             R48 3 1
      574 SETTABLEKS                       R48 R47 K89 ["Text"]
      576 GETTABLEKS                       R48 R1 K134 ["Footer"]
      578 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      580 GETTABLEKS                       R48 R48 K140 ["MaterialGeneratorButton"]
      582 GETTABLEKS                       R48 R48 K36 ["Size"]
      584 SETTABLEKS                       R48 R47 K36 ["Size"]
      586 GETTABLEKS                       R48 R1 K134 ["Footer"]
      588 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      590 GETTABLEKS                       R48 R48 K140 ["MaterialGeneratorButton"]
      592 GETTABLEKS                       R48 R48 K142 ["Icon"]
      594 SETTABLEKS                       R48 R47 K59 ["LeftIcon"]
      596 GETTABLEKS                       R48 R1 K134 ["Footer"]
      598 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      600 GETTABLEKS                       R48 R48 K136 ["IconSize"]
      602 SETTABLEKS                       R48 R47 K136 ["IconSize"]
      604 GETIMPORT                        R48 K144 [Enum.TextXAlignment.Center]
      606 SETTABLEKS                       R48 R47 K137 ["TextXAlignment"]
      608 GETTABLEKS                       R48 R1 K134 ["Footer"]
      610 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      612 GETTABLEKS                       R48 R48 K37 ["Spacing"]
      614 SETTABLEKS                       R48 R47 K37 ["Spacing"]
      616 GETTABLEKS                       R48 R1 K134 ["Footer"]
      618 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      620 GETTABLEKS                       R48 R48 K38 ["Padding"]
      622 SETTABLEKS                       R48 R47 K38 ["Padding"]
      624 GETTABLEKS                       R48 R1 K134 ["Footer"]
      626 GETTABLEKS                       R48 R48 K141 ["IconButton"]
      628 GETTABLEKS                       R48 R48 K138 ["BackgroundColor"]
      630 SETTABLEKS                       R48 R47 K138 ["BackgroundColor"]
      632 NEWCLOSURE                       R48 P22
      633 CAPTURE                          UPVAL U30
      634 CAPTURE                          VAL R7
      635 CAPTURE                          UPVAL U5
      636 CAPTURE                          VAL R4
      637 CAPTURE                          VAL R0
      638 CAPTURE                          VAL R10
      639 CAPTURE                          VAL R11
      640 SETTABLEKS                       R48 R47 K61 ["OnClick"]
      642 CALL                             R45 2 1
      643 GETUPVAL                         R46 21
      644 GETUPVAL                         R47 24
      645 DUPTABLE                         R48 K139 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      646 LOADK                            R51 K77 ["MainView"]
      647 LOADK                            R52 K145 ["MaterialManagerButton"]
      648 NAMECALL                         R49 R2 K55 ["getText"]
      650 CALL                             R49 3 1
      651 SETTABLEKS                       R49 R48 K89 ["Text"]
      653 GETTABLEKS                       R49 R1 K134 ["Footer"]
      655 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      657 GETTABLEKS                       R49 R49 K145 ["MaterialManagerButton"]
      659 GETTABLEKS                       R49 R49 K36 ["Size"]
      661 SETTABLEKS                       R49 R48 K36 ["Size"]
      663 GETTABLEKS                       R49 R1 K134 ["Footer"]
      665 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      667 GETTABLEKS                       R49 R49 K145 ["MaterialManagerButton"]
      669 GETTABLEKS                       R49 R49 K142 ["Icon"]
      671 SETTABLEKS                       R49 R48 K59 ["LeftIcon"]
      673 GETTABLEKS                       R49 R1 K134 ["Footer"]
      675 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      677 GETTABLEKS                       R49 R49 K136 ["IconSize"]
      679 SETTABLEKS                       R49 R48 K136 ["IconSize"]
      681 GETIMPORT                        R49 K144 [Enum.TextXAlignment.Center]
      683 SETTABLEKS                       R49 R48 K137 ["TextXAlignment"]
      685 GETTABLEKS                       R49 R1 K134 ["Footer"]
      687 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      689 GETTABLEKS                       R49 R49 K37 ["Spacing"]
      691 SETTABLEKS                       R49 R48 K37 ["Spacing"]
      693 GETTABLEKS                       R49 R1 K134 ["Footer"]
      695 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      697 GETTABLEKS                       R49 R49 K38 ["Padding"]
      699 SETTABLEKS                       R49 R48 K38 ["Padding"]
      701 GETTABLEKS                       R49 R1 K134 ["Footer"]
      703 GETTABLEKS                       R49 R49 K141 ["IconButton"]
      705 GETTABLEKS                       R49 R49 K138 ["BackgroundColor"]
      707 SETTABLEKS                       R49 R48 K138 ["BackgroundColor"]
      709 NEWCLOSURE                       R49 P23
      710 CAPTURE                          UPVAL U30
      711 CAPTURE                          VAL R7
      712 CAPTURE                          UPVAL U5
      713 CAPTURE                          VAL R4
      714 CAPTURE                          VAL R0
      715 CAPTURE                          VAL R12
      716 CAPTURE                          VAL R13
      717 SETTABLEKS                       R49 R48 K61 ["OnClick"]
      719 CALL                             R46 2 -1
      720 SETLIST                          R44 R45 -1 [1]
      722 CALL                             R41 3 -1
      723 SETLIST                          R37 R38 -1 [1]
      725 CALL                             R34 3 -1
      726 CLOSEUPVALS                      R14
      727 RETURN                           R34 -1

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
      177 NEWTABLE                         R37 0 0
      179 GETIMPORT                        R38 K53 [ipairs]
      181 MOVE                             R39 R2
      182 CALL                             R38 1 3
      183 FORGPREP_INEXT                   R38
      184 GETIMPORT                        R43 K56 [string.lower]
      186 GETTABLEKS                       R44 R42 K57 ["Name"]
      188 CALL                             R43 1 1
      189 SETTABLE                         R42 R37 R43
      190 FORGLOOP                         R38 2 [inext] ; [-7]
      192 DUPCLOSURE                       R38 K58 [PROTO_34]
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R27
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R37
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R30
      216 CAPTURE                          VAL R32
      217 CAPTURE                          VAL R29
      218 CAPTURE                          VAL R31
      219 CAPTURE                          VAL R33
      220 CAPTURE                          VAL R34
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R35
      223 CAPTURE                          VAL R36
      224 SETGLOBAL                        R38 K59 ["MainView"]
      226 GETGLOBAL                        R38 K59 ["MainView"]
      228 RETURN                           R38 1
