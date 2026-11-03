PROTO_0:
        0 DUPTABLE                         R1 K2 [{"_selection", "SelectionChanged"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_selection"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["new"]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R1 K1 ["SelectionChanged"]
       11 GETUPVAL                         R2 1
       12 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       14 GETIMPORT                        R0 K5 [setmetatable]
       16 CALL                             R0 2 1
       17 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["_selection"]
        2 GETTABLEKS                       R2 R0 K1 ["SelectionChanged"]
        4 NAMECALL                         R2 R2 K2 ["Fire"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Util"]
       13 GETTABLEKS                       R2 R2 K6 ["Signal"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 SETTABLEKS                       R2 R2 K7 ["__index"]
       20 DUPCLOSURE                       R3 K8 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K9 ["new"]
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 SETTABLEKS                       R3 R2 K11 ["Destroy"]
       28 DUPCLOSURE                       R3 K12 [PROTO_2]
       29 SETTABLEKS                       R3 R2 K13 ["Get"]
       31 DUPCLOSURE                       R3 K14 [PROTO_3]
       32 SETTABLEKS                       R3 R2 K15 ["Set"]
       34 RETURN                           R2 1
