PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_draggerContext"}]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R2 R3 K1 ["selectedPoints"]
        4 LENGTH                           R1 R2
        5 JUMPIFNOTEQKN                    R1 K2 [0] ; [+23]
        7 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        9 GETTABLEKS                       R1 R2 K3 ["worldModel"]
       11 NAMECALL                         R1 R1 K4 ["GetPivot"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["fromObjects"]
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       22 GETTABLEKS                       R5 R6 K3 ["worldModel"]
       24 SETLIST                          R4 R5 1 [1]
       26 MOVE                             R5 R1
       27 CALL                             R3 2 -1
       28 RETURN                           R2 -1
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       32 CALL                             R1 1 -1
       33 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["getLocalBoundingBox is not supported"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K2 [table.find]
        2 GETTABLEKS                       R4 R0 K3 ["_selection"]
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_5:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["DraggerFramework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Utility"]
       16 GETTABLEKS                       R2 R3 K9 ["BoundingBox"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R8 R0 K10 ["Src"]
       22 GETTABLEKS                       R7 R8 K11 ["Components"]
       24 GETTABLEKS                       R6 R7 K12 ["EditingTools"]
       26 GETTABLEKS                       R5 R6 K13 ["BodyPointsTool"]
       28 GETTABLEKS                       R4 R5 K14 ["Types"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R9 R0 K10 ["Src"]
       35 GETTABLEKS                       R8 R9 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["EditingTools"]
       39 GETTABLEKS                       R6 R7 K13 ["BodyPointsTool"]
       41 GETTABLEKS                       R5 R6 K15 ["getBoundingBox"]
       43 CALL                             R4 1 1
       44 NEWTABLE                         R5 8 0
       46 SETTABLEKS                       R5 R5 K16 ["__index"]
       48 DUPCLOSURE                       R6 K17 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R6 R5 K18 ["new"]
       52 DUPCLOSURE                       R6 K19 [PROTO_1]
       53 SETTABLEKS                       R6 R5 K20 ["isEmpty"]
       55 DUPCLOSURE                       R6 K21 [PROTO_2]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R6 R5 K15 ["getBoundingBox"]
       60 DUPCLOSURE                       R6 K22 [PROTO_3]
       61 SETTABLEKS                       R6 R5 K23 ["getLocalBoundingBox"]
       63 DUPCLOSURE                       R6 K24 [PROTO_4]
       64 SETTABLEKS                       R6 R5 K25 ["doesContainItem"]
       66 DUPCLOSURE                       R6 K26 [PROTO_5]
       67 SETTABLEKS                       R6 R5 K27 ["isDynamic"]
       69 RETURN                           R5 1
