PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["number"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["num must be a number"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["optional"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["number"]
       17 CALL                             R3 1 1
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       22 LOADK                            R4 K5 ["numDecimalPlaces must be a number or nil"]
       23 GETIMPORT                        R2 K3 [assert]
       25 CALL                             R2 2 0
       26 LOADN                            R3 10
       27 ORK                              R4 R1 K6 [0]
       28 POW                              R2 R3 R4
       29 MUL                              R6 R0 R2
       30 ADDK                             R5 R6 K7 [0.5]
       31 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       32 GETIMPORT                        R4 K10 [math.floor]
       34 CALL                             R4 1 1
       35 DIV                              R3 R4 R2
       36 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOTEQ                      R0 R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["NEAR_ZERO"]
        5 MOVE                             R2 R3
        6 SUB                              R5 R0 R1
        7 FASTCALL1                        MATH_ABS R5 ; [+2]
        8 GETIMPORT                        R4 K3 [math.abs]
       10 CALL                             R4 1 1
       11 JUMPIFLT                         R4 R2 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["Typecheck"]
        9 GETTABLEKS                       R1 R2 K6 ["t"]
       11 CALL                             R0 1 1
       12 NEWTABLE                         R1 4 0
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R1 K8 ["round"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 SETTABLEKS                       R2 R1 K10 ["isNaN"]
       21 LOADK                            R2 K11 [0.0001]
       22 SETTABLEKS                       R2 R1 K12 ["NEAR_ZERO"]
       24 DUPCLOSURE                       R2 K13 [PROTO_2]
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R2 R1 K14 ["fuzzyEq"]
       28 RETURN                           R1 1
