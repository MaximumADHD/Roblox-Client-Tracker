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
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["new"]
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
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+9]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R2 R1 K1 ["joint"]
       10 JUMPIF                           R2 ; [+10]
       11 GETTABLEKS                       R2 R1 K2 ["_bone"]
       13 JUMPIF                           R2 ; [+7]
       14 LOADNIL                          R2
       15 JUMP                             ; [+5]
       16 JUMPIFNOT                        R1 ; [+3]
       17 GETTABLEKS                       R2 R1 K2 ["_bone"]
       19 JUMPIF                           R2 ; [+1]
       20 LOADNIL                          R2
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K3 ["new"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R3 K9 ["Signal"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Flags"]
       24 GETTABLEKS                       R4 R4 K12 ["getFFlagAdaptiveAnimationBetaImprovements"]
       26 CALL                             R3 1 1
       27 NEWTABLE                         R4 8 0
       29 SETTABLEKS                       R4 R4 K13 ["__index"]
       31 DUPCLOSURE                       R5 K14 [PROTO_0]
       32 SETTABLEKS                       R5 R4 K15 ["__len"]
       34 DUPCLOSURE                       R5 K16 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R5 R4 K17 ["new"]
       39 DUPCLOSURE                       R5 K18 [PROTO_2]
       40 SETTABLEKS                       R5 R4 K19 ["get"]
       42 DUPCLOSURE                       R5 K20 [PROTO_3]
       43 SETTABLEKS                       R5 R4 K21 ["Get"]
       45 DUPCLOSURE                       R5 K22 [PROTO_4]
       46 SETTABLEKS                       R5 R4 K23 ["set"]
       48 DUPCLOSURE                       R5 K24 [PROTO_5]
       49 SETTABLEKS                       R5 R4 K25 ["Set"]
       51 DUPCLOSURE                       R5 K26 [PROTO_6]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 SETTABLEKS                       R5 R4 K27 ["fromSelectionInfo"]
       56 RETURN                           R4 1
