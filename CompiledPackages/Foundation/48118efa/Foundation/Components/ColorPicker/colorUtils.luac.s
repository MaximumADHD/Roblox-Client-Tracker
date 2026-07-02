PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Color3"] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K4 [Color3.fromHSV]
       10 GETTABLEKS                       R3 R0 K6 ["H"]
       12 DIVK                             R2 R3 K5 [360]
       13 GETTABLEKS                       R5 R0 K8 ["S"]
       15 ORK                              R4 R5 K7 [100]
       16 DIVK                             R3 R4 K7 [100]
       17 GETTABLEKS                       R6 R0 K9 ["V"]
       19 ORK                              R5 R6 K7 [100]
       20 DIVK                             R4 R5 K7 [100]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Color3"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 LOADB                            R1 1
       10 GETTABLEKS                       R2 R0 K3 ["S"]
       12 JUMPIFEQKNIL                     R2 ; [+7]
       14 GETTABLEKS                       R2 R0 K4 ["V"]
       16 JUMPIFEQKNIL                     R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R5 R0 K0 ["X"]
        2 GETTABLEKS                       R6 R1 K0 ["X"]
        4 SUB                              R4 R5 R6
        5 LOADN                            R5 0
        6 GETTABLEKS                       R6 R2 K0 ["X"]
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R3 K3 [math.clamp]
       11 CALL                             R3 3 1
       12 GETTABLEKS                       R6 R0 K4 ["Y"]
       14 GETTABLEKS                       R7 R1 K4 ["Y"]
       16 SUB                              R5 R6 R7
       17 LOADN                            R6 0
       18 GETTABLEKS                       R7 R2 K4 ["Y"]
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R4 K3 [math.clamp]
       23 CALL                             R4 3 1
       24 GETTABLEKS                       R6 R2 K0 ["X"]
       26 DIV                              R5 R3 R6
       27 GETTABLEKS                       R8 R2 K4 ["Y"]
       29 DIV                              R7 R4 R8
       30 SUBRK                            R6 K5 [1] R7
       31 RETURN                           R5 2

PROTO_3:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["current"]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R1
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 3
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 GETIMPORT                        R3 K3 [Color3.fromHSV]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R3 3 1
       19 GETUPVAL                         R4 4
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 GETUPVAL                         R4 0
       23 LOADB                            R5 0
       24 SETTABLEKS                       R5 R4 K0 ["current"]
       26 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R4
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIF                           R1 ; [+12]
        7 NAMECALL                         R1 R0 K1 ["ToHSV"]
        9 CALL                             R1 1 3
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R1
       12 CALL                             R4 1 0
       13 GETUPVAL                         R4 3
       14 MOVE                             R5 R2
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 4
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R4
        6 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 DUPCLOSURE                       R4 K10 [PROTO_2]
       17 DUPCLOSURE                       R5 K11 [PROTO_4]
       18 DUPCLOSURE                       R6 K12 [PROTO_6]
       19 DUPTABLE                         R7 K18 [{"calculateSVFromPosition", "createHSVUpdateHandler", "createColorInputChangeHandler", "isPartialHSV", "toColor3"}]
       20 SETTABLEKS                       R4 R7 K13 ["calculateSVFromPosition"]
       22 SETTABLEKS                       R5 R7 K14 ["createHSVUpdateHandler"]
       24 SETTABLEKS                       R6 R7 K15 ["createColorInputChangeHandler"]
       26 SETTABLEKS                       R3 R7 K16 ["isPartialHSV"]
       28 SETTABLEKS                       R2 R7 K17 ["toColor3"]
       30 RETURN                           R7 1
