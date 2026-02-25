PROTO_0:
        0 FASTCALL1                        MATH_ROUND R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K2 [math.round]
        4 CALL                             R2 1 1
        5 LOADN                            R4 10
        6 POW                              R3 R4 R2
        7 MUL                              R6 R0 R3
        8 FASTCALL1                        MATH_ROUND R6 ; [+2]
        9 GETIMPORT                        R5 K2 [math.round]
       11 CALL                             R5 1 1
       12 DIV                              R4 R5 R3
       13 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [NumberRange.new]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["toDecimal"]
        5 GETTABLEKS                       R4 R0 K4 ["Min"]
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["toDecimal"]
       12 GETTABLEKS                       R5 R0 K5 ["Max"]
       14 MOVE                             R6 R1
       15 CALL                             R4 2 -1
       16 CALL                             R2 -1 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["toDecimal"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["numberRangeToDecimal"]
       10 RETURN                           R0 1
