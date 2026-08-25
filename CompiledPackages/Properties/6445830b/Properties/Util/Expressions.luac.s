PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = "expression", ["text"]}]
        1 SETTABLEKS                       R0 R1 K2 ["text"]
        3 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
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
        7 NEWTABLE                         R1 4 0
        9 LOADK                            R2 K4 ["x"]
       10 SETTABLEKS                       R2 R1 K5 ["CURRENT_VALUE_VARIABLE"]
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 SETTABLEKS                       R2 R1 K7 ["createExpressionFromText"]
       15 DUPCLOSURE                       R2 K8 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K9 ["extractExpressionText"]
       18 DUPCLOSURE                       R2 K10 [PROTO_2]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R1 K11 ["tryToCreateLuauExpression"]
       23 RETURN                           R1 1
