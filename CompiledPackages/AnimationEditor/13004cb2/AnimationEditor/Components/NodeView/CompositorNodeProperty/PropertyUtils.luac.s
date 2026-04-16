PROTO_0:
        0 JUMPIFNOTEQKB                    R1 FALSE ; [+7]
        2 GETIMPORT                        R2 K2 [string.format]
        4 LOADK                            R3 K3 ["%.2f"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 GETIMPORT                        R2 K2 [string.format]
       10 LOADK                            R3 K4 ["%.2f sec"]
       11 MOVE                             R4 R0
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%.2f°"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 LOADNIL                          R1
        1 LOADK                            R2 K0 [0.1]
        2 JUMPIFNOTLE                      R0 R2 ; [+18]
        4 LOADN                            R3 10
        5 FASTCALL1                        MATH_LOG10 R0 ; [+3]
        6 MOVE                             R6 R0
        7 GETIMPORT                        R5 K4 [math.log10]
        9 CALL                             R5 1 1
       10 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       11 GETIMPORT                        R4 K6 [math.floor]
       13 CALL                             R4 1 1
       14 FASTCALL2                        MATH_POW R3 R4 ; [+3]
       16 GETIMPORT                        R2 K8 [math.pow]
       18 CALL                             R2 2 1
       19 MULK                             R1 R2 K1 [2.5]
       20 RETURN                           R1 1
       21 LOADN                            R2 1
       22 JUMPIFNOTLE                      R0 R2 ; [+3]
       24 LOADK                            R1 K9 [0.25]
       25 RETURN                           R1 1
       26 LOADN                            R2 2
       27 JUMPIFNOTLE                      R0 R2 ; [+3]
       29 LOADK                            R1 K10 [0.5]
       30 RETURN                           R1 1
       31 LOADN                            R3 10
       32 FASTCALL1                        MATH_LOG10 R0 ; [+3]
       33 MOVE                             R7 R0
       34 GETIMPORT                        R6 K4 [math.log10]
       36 CALL                             R6 1 1
       37 FASTCALL1                        MATH_CEIL R6 ; [+2]
       38 GETIMPORT                        R5 K13 [math.ceil]
       40 CALL                             R5 1 1
       41 SUBK                             R4 R5 K11 [1]
       42 FASTCALL2                        MATH_POW R3 R4 ; [+3]
       44 GETIMPORT                        R2 K8 [math.pow]
       46 CALL                             R2 2 1
       47 MOVE                             R1 R2
       48 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getStepFromSpread"]
        3 SUB                              R4 R2 R1
        4 CALL                             R3 1 1
        5 DIV                              R6 R1 R3
        6 FASTCALL1                        MATH_CEIL R6 ; [+2]
        7 GETIMPORT                        R5 K3 [math.ceil]
        9 CALL                             R5 1 1
       10 MUL                              R4 R5 R3
       11 DIV                              R7 R2 R3
       12 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       13 GETIMPORT                        R6 K5 [math.floor]
       15 CALL                             R6 1 1
       16 MUL                              R5 R6 R3
       17 ADD                              R7 R1 R4
       18 DIVK                             R6 R7 K6 [2]
       19 JUMPIFNOTLT                      R0 R6 ; [+2]
       21 RETURN                           R1 1
       22 ADD                              R7 R2 R5
       23 DIVK                             R6 R7 K6 [2]
       24 JUMPIFNOTLT                      R6 R0 ; [+2]
       26 RETURN                           R2 1
       27 DIV                              R9 R0 R3
       28 FASTCALL1                        MATH_ROUND R9 ; [+2]
       29 GETIMPORT                        R8 K8 [math.round]
       31 CALL                             R8 1 1
       32 MUL                              R7 R8 R3
       33 FASTCALL3                        MATH_CLAMP R7 R1 R2
       35 MOVE                             R8 R1
       36 MOVE                             R9 R2
       37 GETIMPORT                        R6 K10 [math.clamp]
       39 CALL                             R6 3 1
       40 RETURN                           R6 1

PROTO_4:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R2 0
        2 LOADNIL                          R3
        3 RETURN                           R2 2
        4 GETTABLE                         R2 R0 R1
        5 FASTCALL1                        TYPE R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+7]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["matchParameterBinding"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 JUMPIFNOT                        R3 ; [+3]
       20 LOADB                            R4 1
       21 MOVE                             R5 R3
       22 RETURN                           R4 2
       23 LOADB                            R4 0
       24 LOADNIL                          R5
       25 RETURN                           R4 2

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 MINUS                            R1 R2
        3 GETTABLEKS                       R3 R0 K1 ["Y"]
        5 FASTCALL1                        MATH_SIN R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K4 [math.sin]
        9 CALL                             R4 1 1
       10 MUL                              R2 R3 R4
       11 GETTABLEKS                       R4 R0 K1 ["Y"]
       13 FASTCALL1                        MATH_COS R1 ; [+3]
       14 MOVE                             R6 R1
       15 GETIMPORT                        R5 K6 [math.cos]
       17 CALL                             R5 1 1
       18 MUL                              R3 R4 R5
       19 GETIMPORT                        R4 K9 [Vector2.new]
       21 MOVE                             R5 R2
       22 MOVE                             R6 R3
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R3 R4 K7 ["NativeGraphContext"]
       13 GETTABLEKS                       R2 R3 K8 ["NativeGraphUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["NodeViewTypes"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 8 0
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 SETTABLEKS                       R4 R3 K11 ["formatTimestamp"]
       26 DUPCLOSURE                       R4 K12 [PROTO_1]
       27 SETTABLEKS                       R4 R3 K13 ["formatDegrees"]
       29 DUPCLOSURE                       R4 K14 [PROTO_2]
       30 SETTABLEKS                       R4 R3 K15 ["getStepFromSpread"]
       32 DUPCLOSURE                       R4 K16 [PROTO_3]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R3 K17 ["roundStep"]
       36 DUPCLOSURE                       R4 K18 [PROTO_4]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R4 R3 K19 ["isPropertyParameterized"]
       40 DUPCLOSURE                       R4 K20 [PROTO_5]
       41 SETTABLEKS                       R4 R3 K21 ["toCartesian"]
       43 RETURN                           R3 1
