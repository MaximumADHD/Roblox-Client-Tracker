PROTO_0:
        0 JUMPIFEQ                         R1 R0 ; [+2]
        2 LOADB                            R5 0 +1
        3 LOADB                            R5 1
        4 LOADB                            R6 1
        5 GETTABLEKS                       R7 R0 K0 ["Name"]
        7 JUMPIFEQ                         R2 R7 ; [+7]
        9 GETTABLEKS                       R7 R0 K0 ["Name"]
       11 JUMPIFEQ                         R3 R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 GETTABLE                         R8 R4 R0
       16 JUMPIFEQKB                       R8 TRUE ; [+2]
       18 LOADB                            R7 0 +1
       19 LOADB                            R7 1
       20 JUMPIFNOT                        R5 ; [+6]
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R9 R10 K1 ["Colors"]
       24 GETTABLEKS                       R8 R9 K2 ["BONE_SELECTED"]
       26 JUMP                             ; [+26]
       27 JUMPIFNOT                        R6 ; [+13]
       28 JUMPIFNOT                        R7 ; [+6]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R9 R10 K1 ["Colors"]
       32 GETTABLEKS                       R8 R9 K3 ["BONE_MAPPED_HOVER"]
       34 JUMP                             ; [+18]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K1 ["Colors"]
       38 GETTABLEKS                       R8 R9 K4 ["BONE_UNMAPPED_HOVER"]
       40 JUMP                             ; [+12]
       41 JUMPIFNOT                        R7 ; [+6]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K1 ["Colors"]
       45 GETTABLEKS                       R8 R9 K5 ["BONE_MAPPED"]
       47 JUMP                             ; [+5]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K1 ["Colors"]
       51 GETTABLEKS                       R8 R9 K6 ["BONE_UNMAPPED"]
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R10 R11 K1 ["Colors"]
       56 GETTABLEKS                       R9 R10 K7 ["BONE_EDGE"]
       58 DUPTABLE                         R10 K13 [{"color", "edgeColor", "isSelected", "isHovered", "isMapped"}]
       59 SETTABLEKS                       R8 R10 K8 ["color"]
       61 SETTABLEKS                       R9 R10 K9 ["edgeColor"]
       63 SETTABLEKS                       R5 R10 K10 ["isSelected"]
       65 SETTABLEKS                       R6 R10 K11 ["isHovered"]
       67 SETTABLEKS                       R7 R10 K12 ["isMapped"]
       69 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Resources"]
       20 GETTABLEKS                       R3 R4 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
