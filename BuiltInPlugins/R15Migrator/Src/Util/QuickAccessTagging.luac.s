PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["_tag"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 GETTABLEKS                       R5 R0 K0 ["_tag"]
        4 NAMECALL                         R2 R2 K1 ["AddTag"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 GETTABLEKS                       R5 R0 K0 ["_tag"]
        4 NAMECALL                         R2 R2 K1 ["RemoveTag"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["_tag"]
        3 NAMECALL                         R1 R1 K1 ["GetTagged"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["CharactersConvertedToR15Tagging"]
        5 SETLIST                          R1 R4 1 [1]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 MOVE                             R8 R0
       11 NAMECALL                         R6 R5 K1 ["removeTag"]
       13 CALL                             R6 2 0
       14 NAMECALL                         R6 R0 K2 ["GetDescendants"]
       16 CALL                             R6 1 3
       17 FORGPREP                         R6
       18 MOVE                             R13 R10
       19 NAMECALL                         R11 R5 K1 ["removeTag"]
       21 CALL                             R11 2 0
       22 FORGLOOP                         R6 2 ; [-5]
       24 FORGLOOP                         R1 2 ; [-15]
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Resources"]
       19 GETTABLEKS                       R3 R4 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K13 ["NonePublishTags"]
       24 DUPTABLE                         R4 K15 [{"_tag"}]
       25 LOADNIL                          R5
       26 SETTABLEKS                       R5 R4 K14 ["_tag"]
       28 SETTABLEKS                       R4 R4 K16 ["__index"]
       30 DUPCLOSURE                       R5 K17 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R5 R4 K18 ["new"]
       34 DUPCLOSURE                       R5 K19 [PROTO_1]
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R5 R4 K20 ["addTag"]
       38 DUPCLOSURE                       R5 K21 [PROTO_2]
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R5 R4 K22 ["removeTag"]
       42 DUPCLOSURE                       R5 K23 [PROTO_3]
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R5 R4 K24 ["getTagged"]
       46 NEWTABLE                         R5 2 0
       48 DUPCLOSURE                       R6 K25 [PROTO_4]
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R6 R5 K26 ["clearTags"]
       52 GETTABLEKS                       R6 R4 K18 ["new"]
       54 GETTABLEKS                       R7 R3 K27 ["CharactersConvertedToR15Tag"]
       56 CALL                             R6 1 1
       57 SETTABLEKS                       R6 R5 K28 ["CharactersConvertedToR15Tagging"]
       59 RETURN                           R5 1
