PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = "expression", ["text"]}]
        1 SETTABLEKS                       R0 R1 K2 ["text"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["CreateExpression"]
        4 CALL                             R2 2 2
        5 JUMPIFNOTEQKNIL                  R2 ; [+9]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["error"]
       10 DUPTABLE                         R5 K5 [{["type"] = "expressionParseError", ["problem"]}]
       11 SETTABLEKS                       R3 R5 K4 ["problem"]
       13 CALL                             R4 1 -1
       14 RETURN                           R4 -1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K6 ["CURRENT_VALUE_VARIABLE"]
       18 NAMECALL                         R4 R2 K7 ["References"]
       20 CALL                             R4 2 1
       21 JUMPIFNOT                        R4 ; [+10]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K8 ["ok"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K9 ["createExpressionFromText"]
       28 MOVE                             R6 R0
       29 CALL                             R5 1 -1
       30 CALL                             R4 -1 -1
       31 RETURN                           R4 -1
       32 NEWTABLE                         R6 0 0
       34 NAMECALL                         R4 R2 K10 ["Evaluate"]
       36 CALL                             R4 2 1
       37 GETTABLEKS                       R5 R4 K11 ["Error"]
       39 JUMPIFEQKNIL                     R5 ; [+11]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K1 ["error"]
       44 DUPTABLE                         R6 K13 [{["type"] = "expressionEvaluateError", ["problem"]}]
       45 GETTABLEKS                       R7 R4 K11 ["Error"]
       47 SETTABLEKS                       R7 R6 K4 ["problem"]
       49 CALL                             R5 1 -1
       50 RETURN                           R5 -1
       51 GETTABLEKS                       R6 R4 K14 ["Results"]
       53 LENGTH                           R5 R6
       54 JUMPIFNOTEQKN                    R5 K15 [0] ; [+7]
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K8 ["ok"]
       59 LOADNIL                          R6
       60 CALL                             R5 1 -1
       61 RETURN                           R5 -1
       62 MOVE                             R5 R1
       63 GETTABLEKS                       R6 R4 K14 ["Results"]
       65 CALL                             R5 1 -1
       66 RETURN                           R5 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K3 ["tag"]
       11 JUMPIFNOTEQKS                    R1 K4 ["expression"] ; [+20]
       13 GETTABLEKS                       R4 R0 K5 ["text"]
       15 FASTCALL1                        TYPEOF R4 ; [+2]
       16 GETIMPORT                        R3 K1 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFEQKS                       R3 K6 ["string"] ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 FASTCALL2K                       ASSERT R2 K7 ; [+4]
       25 LOADK                            R3 K7 ["tag = expression, text ~= string"]
       26 GETIMPORT                        R1 K9 [assert]
       28 CALL                             R1 2 0
       29 GETTABLEKS                       R1 R0 K5 ["text"]
       31 RETURN                           R1 1
       32 LOADNIL                          R1
       33 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["extractExpressionText"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+4]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 RETURN                           R2 2
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K1 ["CreateExpression"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LuauExpressionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["CapturableWarnings"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 8 0
       22 LOADK                            R4 K12 ["x"]
       23 SETTABLEKS                       R4 R3 K13 ["CURRENT_VALUE_VARIABLE"]
       25 DUPCLOSURE                       R4 K14 [PROTO_0]
       26 SETTABLEKS                       R4 R3 K15 ["createExpressionFromText"]
       28 DUPCLOSURE                       R4 K16 [PROTO_1]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R4 R3 K17 ["predictOrCreateExpression"]
       34 DUPCLOSURE                       R4 K18 [PROTO_2]
       35 SETTABLEKS                       R4 R3 K19 ["extractExpressionText"]
       37 DUPCLOSURE                       R4 K20 [PROTO_3]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R4 R3 K21 ["tryToCreateLuauExpression"]
       42 RETURN                           R3 1
