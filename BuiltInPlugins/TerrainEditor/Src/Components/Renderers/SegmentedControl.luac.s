PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R1 K1 ["Items"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 DUPTABLE                         R10 K4 [{"id", "text"}]
       10 GETTABLEKS                       R11 R7 K5 ["Id"]
       12 SETTABLEKS                       R11 R10 K2 ["id"]
       14 GETTABLEKS                       R11 R7 K6 ["Label"]
       16 SETTABLEKS                       R11 R10 K3 ["text"]
       18 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       20 MOVE                             R9 R2
       21 GETIMPORT                        R8 K9 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-16]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K10 ["createElement"]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R4 R5 K11 ["SegmentedControl"]
       32 DUPTABLE                         R5 K16 [{"size", "segments", "value", "onActivated"}]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K17 ["Enums"]
       36 GETTABLEKS                       R7 R8 K18 ["InputSize"]
       38 GETTABLEKS                       R6 R7 K19 ["Small"]
       40 SETTABLEKS                       R6 R5 K12 ["size"]
       42 SETTABLEKS                       R2 R5 K13 ["segments"]
       44 GETTABLEKS                       R6 R0 K20 ["Value"]
       46 SETTABLEKS                       R6 R5 K14 ["value"]
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R6 R5 K15 ["onActivated"]
       52 CALL                             R3 2 -1
       53 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
