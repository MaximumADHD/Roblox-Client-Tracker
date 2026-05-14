PROTO_0:
        0 LOADN                            R3 10
        1 SETTABLEKS                       R3 R0 K0 ["springConstant"]
        3 LOADN                            R3 2
        4 SETTABLEKS                       R3 R0 K1 ["dampingFactor"]
        6 GETTABLEKS                       R4 R1 K2 ["position"]
        8 GETTABLEKS                       R5 R2 K2 ["position"]
       10 SUB                              R3 R4 R5
       11 GETTABLEKS                       R3 R3 K3 ["Magnitude"]
       13 SETTABLEKS                       R3 R0 K4 ["restingLength"]
       15 SETTABLEKS                       R1 R0 K5 ["p1"]
       17 SETTABLEKS                       R2 R0 K6 ["p2"]
       19 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["p2"]
        2 GETTABLEKS                       R2 R2 K1 ["position"]
        4 GETTABLEKS                       R3 R0 K2 ["p1"]
        6 GETTABLEKS                       R3 R3 K1 ["position"]
        8 SUB                              R1 R2 R3
        9 GETTABLEKS                       R2 R1 K3 ["Magnitude"]
       11 FASTCALL2K                       MATH_MAX R2 K4 ; [+5]
       13 MOVE                             R5 R2
       14 LOADK                            R6 K4 [1E-05]
       15 GETIMPORT                        R4 K7 [math.max]
       17 CALL                             R4 2 1
       18 DIV                              R3 R1 R4
       19 GETTABLEKS                       R4 R0 K2 ["p1"]
       21 GETTABLEKS                       R4 R4 K8 ["velocity"]
       23 MOVE                             R6 R3
       24 NAMECALL                         R4 R4 K9 ["Dot"]
       26 CALL                             R4 2 1
       27 GETTABLEKS                       R5 R0 K0 ["p2"]
       29 GETTABLEKS                       R5 R5 K8 ["velocity"]
       31 MOVE                             R7 R3
       32 NAMECALL                         R5 R5 K9 ["Dot"]
       34 CALL                             R5 2 1
       35 GETTABLEKS                       R8 R0 K10 ["restingLength"]
       37 SUB                              R7 R8 R2
       38 LOADN                            R8 255
       39 LOADN                            R9 1
       40 FASTCALL                         MATH_CLAMP ; [+2]
       41 GETIMPORT                        R6 K12 [math.clamp]
       43 CALL                             R6 3 1
       44 GETTABLEKS                       R10 R0 K13 ["springConstant"]
       46 MINUS                            R9 R10
       47 MUL                              R8 R9 R6
       48 GETTABLEKS                       R10 R0 K14 ["dampingFactor"]
       50 SUB                              R11 R4 R5
       51 MUL                              R9 R10 R11
       52 SUB                              R7 R8 R9
       53 MUL                              R8 R7 R3
       54 MINUS                            R9 R8
       55 GETTABLEKS                       R10 R0 K2 ["p1"]
       57 MOVE                             R12 R8
       58 NAMECALL                         R10 R10 K15 ["addForce"]
       60 CALL                             R10 2 0
       61 GETTABLEKS                       R10 R0 K0 ["p2"]
       63 MOVE                             R12 R9
       64 NAMECALL                         R10 R10 K15 ["addForce"]
       66 CALL                             R10 2 0
       67 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["class"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 DUPCLOSURE                       R2 K6 [PROTO_0]
       12 CALL                             R1 1 1
       13 SETGLOBAL                        R1 K7 ["SpringDamper"]
       15 DUPCLOSURE                       R1 K8 [PROTO_1]
       16 GETGLOBAL                        R2 K7 ["SpringDamper"]
       18 SETTABLEKS                       R1 R2 K9 ["computeForce"]
       20 GETGLOBAL                        R1 K7 ["SpringDamper"]
       22 RETURN                           R1 1
