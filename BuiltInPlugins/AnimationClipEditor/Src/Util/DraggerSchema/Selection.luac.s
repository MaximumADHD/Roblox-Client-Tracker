PROTO_0:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["SelectionChanged"]
       10 SETTABLEKS                       R1 R2 K3 ["setSelectedTrackInstances"]
       12 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["setSelectedTrackInstances"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["selectedTrackInstances"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["selectedTrackInstances"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K1 ["Get"]
       11 CALL                             R1 1 1
       12 RETURN                           R1 1

PROTO_3:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Selection"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R2 K12 ["Util"]
       22 GETTABLEKS                       R3 R4 K13 ["deepCopy"]
       24 NEWTABLE                         R4 8 0
       26 SETTABLEKS                       R4 R4 K14 ["__index"]
       28 DUPCLOSURE                       R5 K15 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 SETTABLEKS                       R5 R4 K16 ["new"]
       32 DUPCLOSURE                       R5 K17 [PROTO_1]
       33 SETTABLEKS                       R5 R4 K18 ["Set"]
       35 DUPCLOSURE                       R5 K19 [PROTO_2]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R5 R4 K20 ["Get"]
       40 DUPCLOSURE                       R5 K21 [PROTO_3]
       41 SETTABLEKS                       R5 R4 K22 ["GetActiveInstance"]
       43 RETURN                           R4 1
