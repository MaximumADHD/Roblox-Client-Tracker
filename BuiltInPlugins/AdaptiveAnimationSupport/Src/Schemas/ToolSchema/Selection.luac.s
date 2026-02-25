PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["_instance"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADN                            R1 1
        4 RETURN                           R1 1
        5 LOADN                            R1 0
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"_instance", "SelectionChanged"}]
        1 SETTABLEKS                       R0 R2 K0 ["_instance"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["new"]
        6 CALL                             R3 0 1
        7 SETTABLEKS                       R3 R2 K1 ["SelectionChanged"]
        9 GETUPVAL                         R3 1
       10 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [setmetatable]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R0 ; [+1]
       16 SETTABLEN                        R0 R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_instance"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 NEWTABLE                         R1 0 1
        5 GETTABLEKS                       R2 R0 K0 ["_instance"]
        7 SETLIST                          R1 R2 1 [1]
        9 RETURN                           R1 1
       10 NEWTABLE                         R1 0 0
       12 RETURN                           R1 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["get"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["_instance"]
        2 SETTABLEN                        R1 R0 1
        3 GETTABLEKS                       R2 R0 K1 ["SelectionChanged"]
        5 NAMECALL                         R3 R2 K2 ["Fire"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["set"]
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["_selectionItem"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R1 K1 ["_bone"]
        7 JUMPIF                           R2 ; [+1]
        8 LOADNIL                          R2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["new"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R2 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R4 K9 ["Signal"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 8 0
       20 SETTABLEKS                       R3 R3 K10 ["__index"]
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 SETTABLEKS                       R4 R3 K12 ["__len"]
       25 DUPCLOSURE                       R4 K13 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R4 R3 K14 ["new"]
       30 DUPCLOSURE                       R4 K15 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K16 ["get"]
       33 DUPCLOSURE                       R4 K17 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K18 ["Get"]
       36 DUPCLOSURE                       R4 K19 [PROTO_4]
       37 SETTABLEKS                       R4 R3 K20 ["set"]
       39 DUPCLOSURE                       R4 K21 [PROTO_5]
       40 SETTABLEKS                       R4 R3 K22 ["Set"]
       42 DUPCLOSURE                       R4 K23 [PROTO_6]
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R4 R3 K24 ["fromSelectionInfo"]
       46 RETURN                           R3 1
