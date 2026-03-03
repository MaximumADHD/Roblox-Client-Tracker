PROTO_0:
        0 JUMPIFEQ                         R1 R0 ; [+2]
        2 LOADB                            R6 0 +1
        3 LOADB                            R6 1
        4 LOADB                            R7 1
        5 GETTABLEKS                       R8 R0 K0 ["Name"]
        7 JUMPIFEQ                         R2 R8 ; [+7]
        9 GETTABLEKS                       R8 R0 K0 ["Name"]
       11 JUMPIFEQ                         R3 R8 ; [+2]
       13 LOADB                            R7 0 +1
       14 LOADB                            R7 1
       15 GETTABLE                         R9 R4 R0
       16 JUMPIFEQKB                       R9 TRUE ; [+2]
       18 LOADB                            R8 0 +1
       19 LOADB                            R8 1
       20 JUMPIFNOT                        R5 ; [+4]
       21 LOADB                            R9 1
       22 GETTABLE                         R10 R5 R0
       23 JUMPIFEQKB                       R10 TRUE ; [+2]
       25 LOADB                            R9 0
       26 JUMPIFNOT                        R6 ; [+6]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R11 R12 K1 ["Colors"]
       30 GETTABLEKS                       R10 R11 K2 ["BONE_SELECTED"]
       32 JUMP                             ; [+33]
       33 JUMPIFNOT                        R7 ; [+13]
       34 JUMPIFNOT                        R8 ; [+6]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R11 R12 K1 ["Colors"]
       38 GETTABLEKS                       R10 R11 K3 ["BONE_MAPPED_HOVER"]
       40 JUMP                             ; [+25]
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R11 R12 K1 ["Colors"]
       44 GETTABLEKS                       R10 R11 K4 ["BONE_UNMAPPED_HOVER"]
       46 JUMP                             ; [+19]
       47 JUMPIFNOT                        R8 ; [+6]
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R11 R12 K1 ["Colors"]
       51 GETTABLEKS                       R10 R11 K5 ["BONE_MAPPED"]
       53 JUMP                             ; [+12]
       54 JUMPIFNOT                        R9 ; [+6]
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R11 R12 K1 ["Colors"]
       58 GETTABLEKS                       R10 R11 K6 ["BONE_OTHER_MAPPED"]
       60 JUMP                             ; [+5]
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R11 R12 K1 ["Colors"]
       64 GETTABLEKS                       R10 R11 K7 ["BONE_UNMAPPED"]
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R12 R13 K1 ["Colors"]
       69 GETTABLEKS                       R11 R12 K8 ["BONE_EDGE"]
       71 DUPTABLE                         R12 K14 [{"color", "edgeColor", "isSelected", "isHovered", "isMapped"}]
       72 SETTABLEKS                       R10 R12 K9 ["color"]
       74 SETTABLEKS                       R11 R12 K10 ["edgeColor"]
       76 SETTABLEKS                       R6 R12 K11 ["isSelected"]
       78 SETTABLEKS                       R7 R12 K12 ["isHovered"]
       80 SETTABLEKS                       R8 R12 K13 ["isMapped"]
       82 RETURN                           R12 1

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
