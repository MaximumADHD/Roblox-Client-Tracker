PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R2 R0 K4 ["Clone"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R1 R2 K5 ["Parent"]
        9 NAMECALL                         R3 R1 K6 ["GetExtentsSize"]
       11 CALL                             R3 1 1
       12 NAMECALL                         R4 R1 K7 ["Destroy"]
       14 CALL                             R4 1 0
       15 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Model"]
        3 CALL                             R3 1 1
        4 NAMECALL                         R4 R1 K4 ["Clone"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R3 R4 K5 ["Parent"]
        9 NAMECALL                         R5 R3 K6 ["GetExtentsSize"]
       11 CALL                             R5 1 1
       12 NAMECALL                         R6 R3 K7 ["Destroy"]
       14 CALL                             R6 1 0
       15 MOVE                             R2 R5
       16 GETTABLEKS                       R4 R2 K9 ["Magnitude"]
       18 DIVK                             R3 R4 K8 [2]
       19 LOADN                            R4 0
       20 JUMPIFNOTLE                      R3 R4 ; [+6]
       22 GETTABLEKS                       R4 R0 K10 ["CFrame"]
       24 GETTABLEKS                       R4 R4 K11 ["Position"]
       26 RETURN                           R4 1
       27 GETTABLEKS                       R6 R0 K12 ["FieldOfView"]
       29 FASTCALL1                        MATH_RAD R6 ; [+2]
       30 GETIMPORT                        R5 K15 [math.rad]
       32 CALL                             R5 1 1
       33 DIVK                             R4 R5 K8 [2]
       34 GETTABLEKS                       R6 R0 K16 ["ViewportSize"]
       36 GETTABLEKS                       R6 R6 K17 ["X"]
       38 GETTABLEKS                       R7 R0 K16 ["ViewportSize"]
       40 GETTABLEKS                       R7 R7 K18 ["Y"]
       42 DIV                              R5 R6 R7
       43 FASTCALL1                        MATH_TAN R4 ; [+3]
       44 MOVE                             R9 R4
       45 GETIMPORT                        R8 K20 [math.tan]
       47 CALL                             R8 1 1
       48 MUL                              R7 R8 R5
       49 FASTCALL1                        MATH_ATAN R7 ; [+2]
       50 GETIMPORT                        R6 K22 [math.atan]
       52 CALL                             R6 1 1
       53 FASTCALL1                        MATH_SIN R4 ; [+3]
       54 MOVE                             R10 R4
       55 GETIMPORT                        R9 K24 [math.sin]
       57 CALL                             R9 1 1
       58 DIV                              R8 R3 R9
       59 FASTCALL1                        MATH_SIN R6 ; [+3]
       60 MOVE                             R11 R6
       61 GETIMPORT                        R10 K24 [math.sin]
       63 CALL                             R10 1 1
       64 DIV                              R9 R3 R10
       65 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       67 GETIMPORT                        R7 K26 [math.max]
       69 CALL                             R7 2 1
       70 GETTABLEKS                       R9 R0 K10 ["CFrame"]
       72 GETTABLEKS                       R9 R9 K11 ["Position"]
       74 GETTABLEKS                       R11 R0 K10 ["CFrame"]
       76 GETTABLEKS                       R11 R11 K27 ["LookVector"]
       78 MUL                              R10 R11 R7
       79 ADD                              R8 R9 R10
       80 RETURN                           R8 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADK                            R2 K4 [{0, 0, 0}]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R1 K6 ["ViewportSize"]
       11 DIVK                             R2 R3 K5 [2]
       12 GETTABLEKS                       R5 R2 K7 ["X"]
       14 GETTABLEKS                       R6 R2 K8 ["Y"]
       16 LOADN                            R7 0
       17 NAMECALL                         R3 R1 K9 ["ViewportPointToRay"]
       19 CALL                             R3 4 1
       20 GETIMPORT                        R4 K12 [Ray.new]
       22 GETTABLEKS                       R5 R3 K13 ["Origin"]
       24 GETTABLEKS                       R7 R3 K15 ["Direction"]
       26 MULK                             R6 R7 K14 [2048]
       27 CALL                             R4 2 1
       28 GETIMPORT                        R5 K17 [RaycastParams.new]
       30 CALL                             R5 0 1
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R5 K18 ["BruteForceAllSlow"]
       34 GETIMPORT                        R6 K1 [game]
       36 GETTABLEKS                       R6 R6 K2 ["Workspace"]
       38 GETTABLEKS                       R8 R4 K13 ["Origin"]
       40 GETTABLEKS                       R9 R4 K15 ["Direction"]
       42 MOVE                             R10 R5
       43 NAMECALL                         R6 R6 K19 ["Raycast"]
       45 CALL                             R6 4 1
       46 JUMPIFNOT                        R6 ; [+3]
       47 GETTABLEKS                       R7 R6 K20 ["Position"]
       49 RETURN                           R7 1
       50 GETUPVAL                         R7 0
       51 CALL                             R7 0 1
       52 JUMPIFNOT                        R7 ; [+7]
       53 JUMPIFEQKNIL                     R0 ; [+6]
       55 GETUPVAL                         R7 1
       56 MOVE                             R8 R1
       57 MOVE                             R9 R0
       58 CALL                             R7 2 1
       59 RETURN                           R7 1
       60 GETTABLEKS                       R7 R1 K21 ["CFrame"]
       62 GETTABLEKS                       R7 R7 K20 ["Position"]
       64 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Flags"]
        9 GETTABLEKS                       R2 R2 K6 ["getFFlagCinUseClosestInsertPosition"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPCLOSURE                       R3 K8 [PROTO_1]
       14 DUPCLOSURE                       R4 K9 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R3
       17 RETURN                           R4 1
