PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 GETUPVAL                         R6 1
        3 GETUPVAL                         R7 2
        4 GETIMPORT                        R8 K2 [Vector2.new]
        6 LOADK                            R9 K3 [∞]
        7 LOADK                            R10 K3 [∞]
        8 CALL                             R8 2 -1
        9 NAMECALL                         R3 R3 K4 ["GetTextSize"]
       11 CALL                             R3 -1 1
       12 GETTABLEKS                       R2 R3 K5 ["X"]
       14 FASTCALL2                        MATH_MAX R0 R2 ; [+5]
       16 MOVE                             R4 R0
       17 MOVE                             R5 R2
       18 GETIMPORT                        R3 K8 [math.max]
       20 CALL                             R3 2 1
       21 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 LOADN                            R6 0
        7 CALL                             R3 3 -1
        8 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["reduce"]
       18 GETIMPORT                        R3 K9 [game]
       20 LOADK                            R5 K10 ["TextService"]
       21 NAMECALL                         R3 R3 K11 ["GetService"]
       23 CALL                             R3 2 1
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 DUPTABLE                         R5 K14 [{"maxTextWidth"}]
       28 SETTABLEKS                       R4 R5 K13 ["maxTextWidth"]
       30 RETURN                           R5 1
