PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["id"]
        2 GETTABLEKS                       R3 R3 K1 ["name"]
        4 GETTABLEKS                       R4 R1 K0 ["id"]
        6 GETTABLEKS                       R4 R4 K1 ["name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 MOVE                             R2 R0
        3 DUPCLOSURE                       R3 K3 [PROTO_0]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"Property", "Tag", "Attribute"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Property"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Tag"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["Attribute"]
       13 MOVE                             R2 R0
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETTABLEKS                       R8 R6 K4 ["id"]
       19 GETTABLEKS                       R8 R8 K5 ["metaType"]
       21 GETTABLE                         R7 R1 R8
       22 JUMPIFNOT                        R7 ; [+11]
       23 GETTABLEKS                       R10 R6 K4 ["id"]
       25 GETTABLEKS                       R10 R10 K5 ["metaType"]
       27 GETTABLE                         R9 R1 R10
       28 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
       30 MOVE                             R10 R6
       31 GETIMPORT                        R8 K8 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R2 2 ; [-18]
       36 MOVE                             R2 R1
       37 LOADNIL                          R3
       38 LOADNIL                          R4
       39 FORGPREP                         R2
       40 GETIMPORT                        R7 K10 [table.sort]
       42 MOVE                             R8 R6
       43 DUPCLOSURE                       R9 K11 [PROTO_0]
       44 CALL                             R7 2 0
       45 FORGLOOP                         R2 2 ; [-6]
       47 NEWTABLE                         R2 0 0
       49 GETTABLEKS                       R4 R1 K0 ["Property"]
       51 LENGTH                           R3 R4
       52 LOADN                            R4 0
       53 JUMPIFNOTLT                      R4 R3 ; [+12]
       55 DUPTABLE                         R5 K16 [{["name"] = "Properties", ["type"] = "Properties", ["propertiesInOrder"]}]
       56 GETTABLEKS                       R6 R1 K0 ["Property"]
       58 SETTABLEKS                       R6 R5 K15 ["propertiesInOrder"]
       60 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       62 MOVE                             R4 R2
       63 GETIMPORT                        R3 K8 [table.insert]
       65 CALL                             R3 2 0
       66 DUPTABLE                         R5 K18 [{["name"] = "Attributes", ["type"] = "Attributes", ["propertiesInOrder"]}]
       67 GETTABLEKS                       R6 R1 K2 ["Attribute"]
       69 SETTABLEKS                       R6 R5 K15 ["propertiesInOrder"]
       71 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       73 MOVE                             R4 R2
       74 GETIMPORT                        R3 K8 [table.insert]
       76 CALL                             R3 2 0
       77 DUPTABLE                         R5 K20 [{["name"] = "Tags", ["type"] = "Tags", ["propertiesInOrder"]}]
       78 GETTABLEKS                       R6 R1 K1 ["Tag"]
       80 SETTABLEKS                       R6 R5 K15 ["propertiesInOrder"]
       82 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       84 MOVE                             R4 R2
       85 GETIMPORT                        R3 K8 [table.insert]
       87 CALL                             R3 2 0
       88 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"categorizeProperties"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["categorizeProperties"]
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["PropertiesTabsTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["PropertyTypes"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 DUPCLOSURE                       R4 K10 [PROTO_2]
       23 DUPCLOSURE                       R5 K11 [PROTO_3]
       24 CAPTURE                          VAL R4
       25 RETURN                           R5 1
