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
        0 DUPTABLE                         R1 K2 [{"Tag", "Attribute"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Tag"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Attribute"]
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R8 R6 K3 ["id"]
       15 GETTABLEKS                       R8 R8 K4 ["metaType"]
       17 GETTABLE                         R7 R1 R8
       18 JUMPIFNOT                        R7 ; [+11]
       19 GETTABLEKS                       R10 R6 K3 ["id"]
       21 GETTABLEKS                       R10 R10 K4 ["metaType"]
       23 GETTABLE                         R9 R1 R10
       24 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
       26 MOVE                             R10 R6
       27 GETIMPORT                        R8 K7 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R2 2 ; [-18]
       32 MOVE                             R2 R1
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 GETIMPORT                        R7 K9 [table.sort]
       38 MOVE                             R8 R6
       39 DUPCLOSURE                       R9 K10 [PROTO_0]
       40 CALL                             R7 2 0
       41 FORGLOOP                         R2 2 ; [-6]
       43 NEWTABLE                         R2 0 2
       45 DUPTABLE                         R3 K15 [{["name"] = "Attributes", ["type"] = "Attributes", ["propertiesInOrder"]}]
       46 GETTABLEKS                       R4 R1 K1 ["Attribute"]
       48 SETTABLEKS                       R4 R3 K14 ["propertiesInOrder"]
       50 DUPTABLE                         R4 K17 [{["name"] = "Tags", ["type"] = "Tags", ["propertiesInOrder"]}]
       51 GETTABLEKS                       R5 R1 K0 ["Tag"]
       53 SETTABLEKS                       R5 R4 K14 ["propertiesInOrder"]
       55 SETLIST                          R2 R3 2 [1]
       57 RETURN                           R2 1

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
