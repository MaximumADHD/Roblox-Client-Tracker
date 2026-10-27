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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["MATERIAL_GENERATOR_ENABLED"]
        4 NAMECALL                         R1 R1 K1 ["GetItem"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 JUMPIF                           R0 ; [+22]
       12 LOADNIL                          R0
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["MATERIAL_GENERATOR_READY"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          REF R0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R1 R1 K4 ["Bind"]
       24 CALL                             R1 3 1
       25 MOVE                             R0 R1
       26 GETUPVAL                         R1 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K5 ["LOAD_MATERIAL_GENERATOR"]
       30 NAMECALL                         R1 R1 K6 ["Fire"]
       32 CALL                             R1 2 0
       33 CLOSEUPVALS                      R0
       34 GETUPVAL                         R0 3
       35 GETTABLEKS                       R0 R0 K7 ["onClose"]
       37 JUMPIFNOT                        R0 ; [+4]
       38 GETUPVAL                         R0 3
       39 GETTABLEKS                       R0 R0 K7 ["onClose"]
       41 CALL                             R0 0 0
       42 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["MATERIAL_MANAGER_ENABLED"]
        4 NAMECALL                         R1 R1 K1 ["GetItem"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 JUMPIF                           R0 ; [+12]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
       16 NAMECALL                         R0 R0 K4 ["Fire"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 2
       20 LOADK                            R2 K5 ["MaterialManagerOpened"]
       21 NAMECALL                         R0 R0 K6 ["report"]
       23 CALL                             R0 2 0
       24 GETUPVAL                         R0 3
       25 GETTABLEKS                       R0 R0 K7 ["onClose"]
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R0 3
       29 GETTABLEKS                       R0 R0 K7 ["onClose"]
       31 CALL                             R0 0 0
       32 RETURN                           R0 0

PROTO_33:
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
       41 LOADK                            R11 K11 [""]
       42 CALL                             R10 1 2
       43 GETUPVAL                         R12 4
       44 GETTABLEKS                       R13 R0 K12 ["savedFilterChips"]
       46 JUMPIF                           R13 ; [+1]
       47 DUPTABLE                         R13 K18 [{["recents"] = False, ["appliedInPlace"] = False, ["customMaterials"] = False, ["defaultMaterials"] = False}]
       48 CALL                             R12 1 2
       49 NEWCLOSURE                       R14 P0
       50 CAPTURE                          VAL R7
       51 CAPTURE                          UPVAL U5
       52 NEWCLOSURE                       R15 P1
       53 CAPTURE                          VAL R7
       54 CAPTURE                          UPVAL U5
       55 NEWCLOSURE                       R16 P2
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R8
       58 NEWCLOSURE                       R17 P3
       59 CAPTURE                          VAL R9
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U8
       62 NEWCLOSURE                       R18 P4
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U7
       65 GETUPVAL                         R19 9
       66 LOADN                            R20 0
       67 CALL                             R19 1 1
       68 GETUPVAL                         R20 9
       69 LOADB                            R21 0
       70 CALL                             R20 1 1
       71 GETUPVAL                         R21 9
       72 NEWTABLE                         R22 0 0
       74 CALL                             R21 1 1
       75 NEWCLOSURE                       R22 P5
       76 CAPTURE                          VAL R21
       77 NEWCLOSURE                       R23 P6
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R21
       80 NEWCLOSURE                       R24 P7
       81 CAPTURE                          VAL R21
       82 NEWCLOSURE                       R25 P8
       83 CAPTURE                          VAL R5
       84 CAPTURE                          UPVAL U7
       85 NEWCLOSURE                       R26 P9
       86 CAPTURE                          VAL R12
       87 CAPTURE                          UPVAL U10
       88 CAPTURE                          UPVAL U11
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          VAL R8
       91 CAPTURE                          UPVAL U12
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R17
       94 CAPTURE                          REF R10
       95 CAPTURE                          UPVAL U13
       96 CAPTURE                          UPVAL U14
       97 CAPTURE                          VAL R23
       98 CAPTURE                          UPVAL U15
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R20
      101 NEWCLOSURE                       R27 P10
      102 CAPTURE                          REF R10
      103 CAPTURE                          VAL R21
      104 CAPTURE                          VAL R20
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R11
      107 NEWCLOSURE                       R28 P11
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          VAL R21
      110 CAPTURE                          UPVAL U15
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R6
      113 CAPTURE                          UPVAL U16
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U17
      116 CAPTURE                          VAL R8
      117 CAPTURE                          UPVAL U18
      118 CAPTURE                          VAL R12
      119 CAPTURE                          REF R10
      120 CAPTURE                          VAL R4
      121 GETUPVAL                         R29 19
      122 NEWCLOSURE                       R30 P12
      123 CAPTURE                          VAL R21
      124 NEWTABLE                         R31 0 0
      126 CALL                             R29 2 0
      127 GETTABLEKS                       R30 R0 K19 ["viewType"]
      129 GETUPVAL                         R31 20
      130 GETTABLEKS                       R31 R31 K20 ["Grid"]
      132 JUMPIFEQ                         R30 R31 ; [+2]
      134 LOADB                            R29 0 +1
      135 LOADB                            R29 1
      136 GETUPVAL                         R30 21
      137 GETUPVAL                         R31 22
      138 DUPTABLE                         R32 K23 [{"Layout", "VerticalAlignment"}]
      139 GETIMPORT                        R33 K27 [Enum.FillDirection.Vertical]
      141 SETTABLEKS                       R33 R32 K21 ["Layout"]
      143 GETIMPORT                        R33 K29 [Enum.VerticalAlignment.Top]
      145 SETTABLEKS                       R33 R32 K22 ["VerticalAlignment"]
      147 NEWTABLE                         R33 0 4
      149 GETUPVAL                         R34 21
      150 GETUPVAL                         R35 22
      151 DUPTABLE                         R36 K35 [{["key"] = "PrimaryTools", ["Size"], ["Spacing"], ["Padding"], ["Layout"]}]
      152 GETTABLEKS                       R37 R1 K31 ["PrimaryTools"]
      154 GETTABLEKS                       R37 R37 K32 ["Size"]
      156 SETTABLEKS                       R37 R36 K32 ["Size"]
      158 GETTABLEKS                       R37 R1 K31 ["PrimaryTools"]
      160 GETTABLEKS                       R37 R37 K33 ["Spacing"]
      162 SETTABLEKS                       R37 R36 K33 ["Spacing"]
      164 GETTABLEKS                       R37 R1 K31 ["PrimaryTools"]
      166 GETTABLEKS                       R37 R37 K34 ["Padding"]
      168 SETTABLEKS                       R37 R36 K34 ["Padding"]
      170 GETIMPORT                        R37 K37 [Enum.FillDirection.Horizontal]
      172 SETTABLEKS                       R37 R36 K21 ["Layout"]
      174 NEWTABLE                         R37 0 2
      176 GETUPVAL                         R38 21
      177 GETUPVAL                         R39 23
      178 DUPTABLE                         R40 K49 [{["key"] = "SearchBar", ["PlaceholderText"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["OnSearchRequested"], ["OnTextChanged"], ["OnTextBoxFocusLost"], ["Style"] = "Compact", ["Size"], ["ShouldFocusOnMount"] = True}]
      179 LOADK                            R43 K38 ["SearchBar"]
      180 LOADK                            R44 K50 ["SearchMaterials"]
      181 NAMECALL                         R41 R2 K51 ["getText"]
      183 CALL                             R41 3 1
      184 SETTABLEKS                       R41 R40 K39 ["PlaceholderText"]
      186 SETTABLEKS                       R27 R40 K43 ["OnSearchRequested"]
      188 SETTABLEKS                       R27 R40 K44 ["OnTextChanged"]
      190 NEWCLOSURE                       R41 P13
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R26
      193 CAPTURE                          VAL R28
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R41 R40 K45 ["OnTextBoxFocusLost"]
      197 GETTABLEKS                       R41 R1 K31 ["PrimaryTools"]
      199 GETTABLEKS                       R41 R41 K38 ["SearchBar"]
      201 GETTABLEKS                       R41 R41 K32 ["Size"]
      203 SETTABLEKS                       R41 R40 K32 ["Size"]
      205 NEWTABLE                         R41 0 0
      207 CALL                             R38 3 1
      208 GETUPVAL                         R39 21
      209 GETUPVAL                         R40 24
      210 DUPTABLE                         R41 K58 [{["key"] = "ViewToggle", ["BackgroundStyle"] = "Box", ["LeftIcon"], ["Size"], ["TooltipText"], ["OnClick"]}]
      211 JUMPIFNOT                        R29 ; [+7]
      212 GETTABLEKS                       R42 R1 K31 ["PrimaryTools"]
      214 GETTABLEKS                       R42 R42 K52 ["ViewToggle"]
      216 GETTABLEKS                       R42 R42 K59 ["LeftIconList"]
      218 JUMP                             ; [+6]
      219 GETTABLEKS                       R42 R1 K31 ["PrimaryTools"]
      221 GETTABLEKS                       R42 R42 K52 ["ViewToggle"]
      223 GETTABLEKS                       R42 R42 K60 ["LeftIconGrid"]
      225 SETTABLEKS                       R42 R41 K55 ["LeftIcon"]
      227 GETTABLEKS                       R42 R1 K31 ["PrimaryTools"]
      229 GETTABLEKS                       R42 R42 K52 ["ViewToggle"]
      231 GETTABLEKS                       R42 R42 K32 ["Size"]
      233 SETTABLEKS                       R42 R41 K32 ["Size"]
      235 JUMPIFNOT                        R29 ; [+6]
      236 LOADK                            R44 K52 ["ViewToggle"]
      237 LOADK                            R45 K61 ["ListView"]
      238 NAMECALL                         R42 R2 K51 ["getText"]
      240 CALL                             R42 3 1
      241 JUMP                             ; [+5]
      242 LOADK                            R44 K52 ["ViewToggle"]
      243 LOADK                            R45 K62 ["GridView"]
      244 NAMECALL                         R42 R2 K51 ["getText"]
      246 CALL                             R42 3 1
      247 SETTABLEKS                       R42 R41 K56 ["TooltipText"]
      249 NEWCLOSURE                       R42 P14
      250 CAPTURE                          VAL R29
      251 CAPTURE                          UPVAL U20
      252 CAPTURE                          VAL R0
      253 CAPTURE                          VAL R4
      254 SETTABLEKS                       R42 R41 K57 ["OnClick"]
      256 NEWTABLE                         R42 0 0
      258 CALL                             R39 3 -1
      259 SETLIST                          R37 R38 -1 [1]
      261 CALL                             R34 3 1
      262 GETUPVAL                         R35 21
      263 GETUPVAL                         R36 25
      264 DUPTABLE                         R37 K66 [{"Size", "ScrollingDirection", "HorizontalScrollBarInset", "ScrollBarThickness"}]
      265 GETTABLEKS                       R38 R1 K67 ["Filters"]
      267 GETTABLEKS                       R38 R38 K32 ["Size"]
      269 SETTABLEKS                       R38 R37 K32 ["Size"]
      271 GETIMPORT                        R38 K69 [Enum.ScrollingDirection.X]
      273 SETTABLEKS                       R38 R37 K63 ["ScrollingDirection"]
      275 GETIMPORT                        R38 K72 [Enum.ScrollBarInset.ScrollBar]
      277 SETTABLEKS                       R38 R37 K64 ["HorizontalScrollBarInset"]
      279 GETTABLEKS                       R38 R1 K73 ["MainView"]
      281 GETTABLEKS                       R38 R38 K65 ["ScrollBarThickness"]
      283 SETTABLEKS                       R38 R37 K65 ["ScrollBarThickness"]
      285 NEWTABLE                         R38 0 1
      287 GETUPVAL                         R39 21
      288 GETUPVAL                         R40 22
      289 DUPTABLE                         R41 K77 [{["key"] = "Filters", ["Layout"], ["HorizontalAlignment"], ["AutomaticSize"], ["Spacing"] = 4, ["Padding"]}]
      290 GETIMPORT                        R42 K37 [Enum.FillDirection.Horizontal]
      292 SETTABLEKS                       R42 R41 K21 ["Layout"]
      294 GETIMPORT                        R42 K79 [Enum.HorizontalAlignment.Left]
      296 SETTABLEKS                       R42 R41 K74 ["HorizontalAlignment"]
      298 GETIMPORT                        R42 K81 [Enum.AutomaticSize.XY]
      300 SETTABLEKS                       R42 R41 K75 ["AutomaticSize"]
      302 DUPTABLE                         R42 K84 [{["Left"] = 8, ["Top"] = 1}]
      303 SETTABLEKS                       R42 R41 K34 ["Padding"]
      305 NEWTABLE                         R42 0 3
      307 GETUPVAL                         R43 21
      308 GETUPVAL                         R44 26
      309 DUPTABLE                         R45 K87 [{"Text", "OnClick", "selected"}]
      310 LOADK                            R48 K67 ["Filters"]
      311 LOADK                            R49 K88 ["Recents"]
      312 NAMECALL                         R46 R2 K51 ["getText"]
      314 CALL                             R46 3 1
      315 SETTABLEKS                       R46 R45 K85 ["Text"]
      317 NEWCLOSURE                       R46 P15
      318 CAPTURE                          UPVAL U10
      319 CAPTURE                          VAL R12
      320 CAPTURE                          VAL R13
      321 CAPTURE                          VAL R0
      322 CAPTURE                          VAL R4
      323 SETTABLEKS                       R46 R45 K57 ["OnClick"]
      325 GETTABLEKS                       R46 R12 K13 ["recents"]
      327 SETTABLEKS                       R46 R45 K86 ["selected"]
      329 CALL                             R43 2 1
      330 GETUPVAL                         R44 21
      331 GETUPVAL                         R45 26
      332 DUPTABLE                         R46 K87 [{"Text", "OnClick", "selected"}]
      333 LOADK                            R49 K67 ["Filters"]
      334 LOADK                            R50 K89 ["AppliedInPlace"]
      335 NAMECALL                         R47 R2 K51 ["getText"]
      337 CALL                             R47 3 1
      338 SETTABLEKS                       R47 R46 K85 ["Text"]
      340 NEWCLOSURE                       R47 P16
      341 CAPTURE                          UPVAL U10
      342 CAPTURE                          VAL R12
      343 CAPTURE                          VAL R13
      344 CAPTURE                          VAL R0
      345 CAPTURE                          VAL R4
      346 SETTABLEKS                       R47 R46 K57 ["OnClick"]
      348 GETTABLEKS                       R47 R12 K15 ["appliedInPlace"]
      350 SETTABLEKS                       R47 R46 K86 ["selected"]
      352 CALL                             R44 2 1
      353 GETUPVAL                         R45 21
      354 GETUPVAL                         R46 27
      355 DUPTABLE                         R47 K96 [{"LeftText", "RightText", "LeftSelected", "RightSelected", "OnClickLeft", "OnClickRight"}]
      356 LOADK                            R50 K67 ["Filters"]
      357 LOADK                            R51 K97 ["CustomMaterials"]
      358 NAMECALL                         R48 R2 K51 ["getText"]
      360 CALL                             R48 3 1
      361 SETTABLEKS                       R48 R47 K90 ["LeftText"]
      363 LOADK                            R50 K67 ["Filters"]
      364 LOADK                            R51 K98 ["DefaultMaterials"]
      365 NAMECALL                         R48 R2 K51 ["getText"]
      367 CALL                             R48 3 1
      368 SETTABLEKS                       R48 R47 K91 ["RightText"]
      370 GETTABLEKS                       R48 R12 K16 ["customMaterials"]
      372 SETTABLEKS                       R48 R47 K92 ["LeftSelected"]
      374 GETTABLEKS                       R48 R12 K17 ["defaultMaterials"]
      376 SETTABLEKS                       R48 R47 K93 ["RightSelected"]
      378 NEWCLOSURE                       R48 P17
      379 CAPTURE                          UPVAL U10
      380 CAPTURE                          VAL R12
      381 CAPTURE                          VAL R13
      382 CAPTURE                          VAL R0
      383 CAPTURE                          VAL R4
      384 SETTABLEKS                       R48 R47 K94 ["OnClickLeft"]
      386 NEWCLOSURE                       R48 P18
      387 CAPTURE                          UPVAL U10
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R13
      390 CAPTURE                          VAL R0
      391 CAPTURE                          VAL R4
      392 SETTABLEKS                       R48 R47 K95 ["OnClickRight"]
      394 CALL                             R45 2 -1
      395 SETLIST                          R42 R43 -1 [1]
      397 CALL                             R39 3 -1
      398 SETLIST                          R38 R39 -1 [1]
      400 CALL                             R35 3 1
      401 GETUPVAL                         R36 21
      402 GETUPVAL                         R37 28
      403 DUPTABLE                         R38 K122 [{["key"] = "MaterialGrid", ["AppliedItemId"], ["ShouldCenterTooltip"] = True, ["ContainerXBounds"], ["ContainerYBounds"], ["Size"], ["GridItemsPerRow"], ["GridItemSize"], ["Items"], ["ShowGridLabels"] = False, ["OnClick"], ["OnMouseEnter"], ["OnMouseLeave"], ["ListPadding"], ["OnScrollUpdate"], ["OnSnapshotTaken"], ["ViewType"], ["InitialGridCanvasPosition"], ["InitialListCanvasPosition"], ["ScrollingDirection"], ["SelectedItemId"], ["ShouldSyncScroll"] = True, ["SnapshotSize"], ["SnapshotBorderThickness"], ["TooltipDelay"], ["UseInstantTooltip"] = True}]
      404 MOVE                             R39 R25
      405 CALL                             R39 0 1
      406 SETTABLEKS                       R39 R38 K100 ["AppliedItemId"]
      408 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      410 GETTABLEKS                       R39 R39 K102 ["ContainerXBounds"]
      412 SETTABLEKS                       R39 R38 K102 ["ContainerXBounds"]
      414 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      416 GETTABLEKS                       R39 R39 K103 ["ContainerYBounds"]
      418 SETTABLEKS                       R39 R38 K103 ["ContainerYBounds"]
      420 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      422 GETTABLEKS                       R39 R39 K32 ["Size"]
      424 SETTABLEKS                       R39 R38 K32 ["Size"]
      426 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      428 GETTABLEKS                       R39 R39 K104 ["GridItemsPerRow"]
      430 SETTABLEKS                       R39 R38 K104 ["GridItemsPerRow"]
      432 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      434 GETTABLEKS                       R39 R39 K105 ["GridItemSize"]
      436 SETTABLEKS                       R39 R38 K105 ["GridItemSize"]
      438 MOVE                             R39 R26
      439 CALL                             R39 0 1
      440 SETTABLEKS                       R39 R38 K106 ["Items"]
      442 NEWCLOSURE                       R39 P19
      443 CAPTURE                          VAL R28
      444 SETTABLEKS                       R39 R38 K57 ["OnClick"]
      446 NEWCLOSURE                       R39 P20
      447 CAPTURE                          VAL R19
      448 CAPTURE                          VAL R20
      449 CAPTURE                          VAL R23
      450 CAPTURE                          UPVAL U15
      451 CAPTURE                          VAL R5
      452 SETTABLEKS                       R39 R38 K108 ["OnMouseEnter"]
      454 NEWCLOSURE                       R39 P21
      455 CAPTURE                          VAL R19
      456 CAPTURE                          VAL R21
      457 SETTABLEKS                       R39 R38 K109 ["OnMouseLeave"]
      459 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      461 GETTABLEKS                       R39 R39 K110 ["ListPadding"]
      463 SETTABLEKS                       R39 R38 K110 ["ListPadding"]
      465 GETTABLEKS                       R39 R0 K123 ["onScrollUpdate"]
      467 SETTABLEKS                       R39 R38 K111 ["OnScrollUpdate"]
      469 GETTABLEKS                       R39 R0 K124 ["onSnapshotTaken"]
      471 SETTABLEKS                       R39 R38 K112 ["OnSnapshotTaken"]
      473 GETTABLEKS                       R39 R0 K19 ["viewType"]
      475 SETTABLEKS                       R39 R38 K113 ["ViewType"]
      477 GETTABLEKS                       R39 R0 K125 ["savedGridCanvasPosition"]
      479 SETTABLEKS                       R39 R38 K114 ["InitialGridCanvasPosition"]
      481 GETTABLEKS                       R39 R0 K126 ["savedListCanvasPosition"]
      483 SETTABLEKS                       R39 R38 K115 ["InitialListCanvasPosition"]
      485 GETIMPORT                        R39 K128 [Enum.ScrollingDirection.Y]
      487 SETTABLEKS                       R39 R38 K63 ["ScrollingDirection"]
      489 GETTABLEKS                       R39 R0 K129 ["selectedMaterialIdentifier"]
      491 SETTABLEKS                       R39 R38 K116 ["SelectedItemId"]
      493 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      495 GETTABLEKS                       R39 R39 K118 ["SnapshotSize"]
      497 SETTABLEKS                       R39 R38 K118 ["SnapshotSize"]
      499 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      501 GETTABLEKS                       R39 R39 K119 ["SnapshotBorderThickness"]
      503 SETTABLEKS                       R39 R38 K119 ["SnapshotBorderThickness"]
      505 GETTABLEKS                       R39 R1 K99 ["MaterialGrid"]
      507 GETTABLEKS                       R39 R39 K120 ["TooltipDelay"]
      509 SETTABLEKS                       R39 R38 K120 ["TooltipDelay"]
      511 CALL                             R36 2 1
      512 GETUPVAL                         R37 21
      513 GETUPVAL                         R38 22
      514 DUPTABLE                         R39 K131 [{["key"] = "Footer", ["Size"], ["Layout"], ["Padding"], ["Spacing"]}]
      515 GETTABLEKS                       R40 R1 K130 ["Footer"]
      517 GETTABLEKS                       R40 R40 K32 ["Size"]
      519 SETTABLEKS                       R40 R39 K32 ["Size"]
      521 GETIMPORT                        R40 K37 [Enum.FillDirection.Horizontal]
      523 SETTABLEKS                       R40 R39 K21 ["Layout"]
      525 GETTABLEKS                       R40 R1 K130 ["Footer"]
      527 GETTABLEKS                       R40 R40 K34 ["Padding"]
      529 SETTABLEKS                       R40 R39 K34 ["Padding"]
      531 GETTABLEKS                       R40 R1 K130 ["Footer"]
      533 GETTABLEKS                       R40 R40 K33 ["Spacing"]
      535 SETTABLEKS                       R40 R39 K33 ["Spacing"]
      537 NEWTABLE                         R40 0 2
      539 GETUPVAL                         R41 29
      540 CALL                             R41 0 1
      541 JUMPIFNOT                        R41 ; [+74]
      542 GETUPVAL                         R41 21
      543 GETUPVAL                         R42 24
      544 DUPTABLE                         R43 K135 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      545 LOADK                            R46 K73 ["MainView"]
      546 LOADK                            R47 K136 ["MaterialGeneratorButton"]
      547 NAMECALL                         R44 R2 K51 ["getText"]
      549 CALL                             R44 3 1
      550 SETTABLEKS                       R44 R43 K85 ["Text"]
      552 GETTABLEKS                       R44 R1 K130 ["Footer"]
      554 GETTABLEKS                       R44 R44 K137 ["IconButton"]
      556 GETTABLEKS                       R44 R44 K136 ["MaterialGeneratorButton"]
      558 GETTABLEKS                       R44 R44 K32 ["Size"]
      560 SETTABLEKS                       R44 R43 K32 ["Size"]
      562 GETTABLEKS                       R44 R1 K130 ["Footer"]
      564 GETTABLEKS                       R44 R44 K137 ["IconButton"]
      566 GETTABLEKS                       R44 R44 K136 ["MaterialGeneratorButton"]
      568 GETTABLEKS                       R44 R44 K138 ["Icon"]
      570 SETTABLEKS                       R44 R43 K55 ["LeftIcon"]
      572 GETTABLEKS                       R44 R1 K130 ["Footer"]
      574 GETTABLEKS                       R44 R44 K137 ["IconButton"]
      576 GETTABLEKS                       R44 R44 K132 ["IconSize"]
      578 SETTABLEKS                       R44 R43 K132 ["IconSize"]
      580 GETIMPORT                        R44 K140 [Enum.TextXAlignment.Center]
      582 SETTABLEKS                       R44 R43 K133 ["TextXAlignment"]
      584 GETTABLEKS                       R44 R1 K130 ["Footer"]
      586 GETTABLEKS                       R44 R44 K137 ["IconButton"]
      588 GETTABLEKS                       R44 R44 K33 ["Spacing"]
      590 SETTABLEKS                       R44 R43 K33 ["Spacing"]
      592 GETTABLEKS                       R44 R1 K130 ["Footer"]
      594 GETTABLEKS                       R44 R44 K137 ["IconButton"]
      596 GETTABLEKS                       R44 R44 K34 ["Padding"]
      598 SETTABLEKS                       R44 R43 K34 ["Padding"]
      600 GETTABLEKS                       R44 R1 K130 ["Footer"]
      602 GETTABLEKS                       R44 R44 K137 ["IconButton"]
      604 GETTABLEKS                       R44 R44 K134 ["BackgroundColor"]
      606 SETTABLEKS                       R44 R43 K134 ["BackgroundColor"]
      608 NEWCLOSURE                       R44 P22
      609 CAPTURE                          VAL R7
      610 CAPTURE                          UPVAL U5
      611 CAPTURE                          VAL R4
      612 CAPTURE                          VAL R0
      613 SETTABLEKS                       R44 R43 K57 ["OnClick"]
      615 CALL                             R41 2 1
      616 GETUPVAL                         R42 21
      617 GETUPVAL                         R43 24
      618 DUPTABLE                         R44 K135 [{"Text", "Size", "LeftIcon", "IconSize", "TextXAlignment", "Spacing", "Padding", "BackgroundColor", "OnClick"}]
      619 LOADK                            R47 K73 ["MainView"]
      620 LOADK                            R48 K141 ["MaterialManagerButton"]
      621 NAMECALL                         R45 R2 K51 ["getText"]
      623 CALL                             R45 3 1
      624 SETTABLEKS                       R45 R44 K85 ["Text"]
      626 GETTABLEKS                       R45 R1 K130 ["Footer"]
      628 GETTABLEKS                       R45 R45 K137 ["IconButton"]
      630 GETTABLEKS                       R45 R45 K141 ["MaterialManagerButton"]
      632 GETTABLEKS                       R45 R45 K32 ["Size"]
      634 SETTABLEKS                       R45 R44 K32 ["Size"]
      636 GETTABLEKS                       R45 R1 K130 ["Footer"]
      638 GETTABLEKS                       R45 R45 K137 ["IconButton"]
      640 GETTABLEKS                       R45 R45 K141 ["MaterialManagerButton"]
      642 GETTABLEKS                       R45 R45 K138 ["Icon"]
      644 SETTABLEKS                       R45 R44 K55 ["LeftIcon"]
      646 GETTABLEKS                       R45 R1 K130 ["Footer"]
      648 GETTABLEKS                       R45 R45 K137 ["IconButton"]
      650 GETTABLEKS                       R45 R45 K132 ["IconSize"]
      652 SETTABLEKS                       R45 R44 K132 ["IconSize"]
      654 GETIMPORT                        R45 K140 [Enum.TextXAlignment.Center]
      656 SETTABLEKS                       R45 R44 K133 ["TextXAlignment"]
      658 GETTABLEKS                       R45 R1 K130 ["Footer"]
      660 GETTABLEKS                       R45 R45 K137 ["IconButton"]
      662 GETTABLEKS                       R45 R45 K33 ["Spacing"]
      664 SETTABLEKS                       R45 R44 K33 ["Spacing"]
      666 GETTABLEKS                       R45 R1 K130 ["Footer"]
      668 GETTABLEKS                       R45 R45 K137 ["IconButton"]
      670 GETTABLEKS                       R45 R45 K34 ["Padding"]
      672 SETTABLEKS                       R45 R44 K34 ["Padding"]
      674 GETTABLEKS                       R45 R1 K130 ["Footer"]
      676 GETTABLEKS                       R45 R45 K137 ["IconButton"]
      678 GETTABLEKS                       R45 R45 K134 ["BackgroundColor"]
      680 SETTABLEKS                       R45 R44 K134 ["BackgroundColor"]
      682 NEWCLOSURE                       R45 P23
      683 CAPTURE                          VAL R7
      684 CAPTURE                          UPVAL U5
      685 CAPTURE                          VAL R4
      686 CAPTURE                          VAL R0
      687 SETTABLEKS                       R45 R44 K57 ["OnClick"]
      689 CALL                             R42 2 -1
      690 SETLIST                          R40 R41 -1 [1]
      692 CALL                             R37 3 -1
      693 SETLIST                          R33 R34 -1 [1]
      695 CALL                             R30 3 -1
      696 CLOSEUPVALS                      R10
      697 RETURN                           R30 -1

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
      168 NEWTABLE                         R36 0 0
      170 GETIMPORT                        R37 K52 [ipairs]
      172 MOVE                             R38 R2
      173 CALL                             R37 1 3
      174 FORGPREP_INEXT                   R37
      175 GETIMPORT                        R42 K55 [string.lower]
      177 GETTABLEKS                       R43 R41 K56 ["Name"]
      179 CALL                             R42 1 1
      180 SETTABLE                         R41 R36 R42
      181 FORGLOOP                         R37 2 [inext] ; [-7]
      183 DUPCLOSURE                       R37 K57 [PROTO_33]
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R27
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R25
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R36
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R26
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R30
      207 CAPTURE                          VAL R32
      208 CAPTURE                          VAL R29
      209 CAPTURE                          VAL R31
      210 CAPTURE                          VAL R33
      211 CAPTURE                          VAL R34
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R35
      214 SETGLOBAL                        R37 K58 ["MainView"]
      216 GETGLOBAL                        R37 K58 ["MainView"]
      218 RETURN                           R37 1
