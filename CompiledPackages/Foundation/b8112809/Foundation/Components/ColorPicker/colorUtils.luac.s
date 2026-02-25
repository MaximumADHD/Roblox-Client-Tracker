PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationColorPickerPartialHSV"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["Color3"] ; [+2]
       11 RETURN                           R0 1
       12 GETIMPORT                        R1 K5 [Color3.fromHSV]
       14 GETTABLEKS                       R3 R0 K7 ["H"]
       16 DIVK                             R2 R3 K6 [360]
       17 GETTABLEKS                       R5 R0 K9 ["S"]
       19 ORK                              R4 R5 K8 [100]
       20 DIVK                             R3 R4 K8 [100]
       21 GETTABLEKS                       R6 R0 K10 ["V"]
       23 ORK                              R5 R6 K8 [100]
       24 DIVK                             R4 R5 K8 [100]
       25 CALL                             R1 3 -1
       26 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationColorPickerPartialHSV"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["Color3"] ; [+3]
       11 LOADB                            R1 0
       12 RETURN                           R1 1
       13 LOADB                            R1 1
       14 GETTABLEKS                       R2 R0 K4 ["S"]
       16 JUMPIFEQKNIL                     R2 ; [+7]
       18 GETTABLEKS                       R2 R0 K5 ["V"]
       20 JUMPIFEQKNIL                     R2 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 RETURN                           R1 1

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
       30 SUBRK                            R6 R5 K7 [NULL]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 DUPCLOSURE                       R4 K11 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 DUPCLOSURE                       R5 K12 [PROTO_2]
       26 DUPCLOSURE                       R6 K13 [PROTO_4]
       27 DUPCLOSURE                       R7 K14 [PROTO_6]
       28 DUPTABLE                         R8 K20 [{"calculateSVFromPosition", "createHSVUpdateHandler", "createColorInputChangeHandler", "isPartialHSV", "toColor3"}]
       29 SETTABLEKS                       R5 R8 K15 ["calculateSVFromPosition"]
       31 SETTABLEKS                       R6 R8 K16 ["createHSVUpdateHandler"]
       33 SETTABLEKS                       R7 R8 K17 ["createColorInputChangeHandler"]
       35 SETTABLEKS                       R4 R8 K18 ["isPartialHSV"]
       37 SETTABLEKS                       R3 R8 K19 ["toColor3"]
       39 RETURN                           R8 1
