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
       53 JUMPIFNOTLT                      R4 R3 ; [+18]
       55 DUPTABLE                         R5 K15 [{"name", "type", "propertiesInOrder"}]
       56 LOADK                            R6 K16 ["Properties"]
       57 SETTABLEKS                       R6 R5 K12 ["name"]
       59 LOADK                            R6 K16 ["Properties"]
       60 SETTABLEKS                       R6 R5 K13 ["type"]
       62 GETTABLEKS                       R6 R1 K0 ["Property"]
       64 SETTABLEKS                       R6 R5 K14 ["propertiesInOrder"]
       66 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       68 MOVE                             R4 R2
       69 GETIMPORT                        R3 K8 [table.insert]
       71 CALL                             R3 2 0
       72 DUPTABLE                         R5 K15 [{"name", "type", "propertiesInOrder"}]
       73 LOADK                            R6 K17 ["Attributes"]
       74 SETTABLEKS                       R6 R5 K12 ["name"]
       76 LOADK                            R6 K17 ["Attributes"]
       77 SETTABLEKS                       R6 R5 K13 ["type"]
       79 GETTABLEKS                       R6 R1 K2 ["Attribute"]
       81 SETTABLEKS                       R6 R5 K14 ["propertiesInOrder"]
       83 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       85 MOVE                             R4 R2
       86 GETIMPORT                        R3 K8 [table.insert]
       88 CALL                             R3 2 0
       89 DUPTABLE                         R5 K15 [{"name", "type", "propertiesInOrder"}]
       90 LOADK                            R6 K18 ["Tags"]
       91 SETTABLEKS                       R6 R5 K12 ["name"]
       93 LOADK                            R6 K18 ["Tags"]
       94 SETTABLEKS                       R6 R5 K13 ["type"]
       96 GETTABLEKS                       R6 R1 K1 ["Tag"]
       98 SETTABLEKS                       R6 R5 K14 ["propertiesInOrder"]
      100 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      102 MOVE                             R4 R2
      103 GETIMPORT                        R3 K8 [table.insert]
      105 CALL                             R3 2 0
      106 RETURN                           R2 1

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
