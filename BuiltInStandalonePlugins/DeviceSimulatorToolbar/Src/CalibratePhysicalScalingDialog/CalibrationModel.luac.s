PROTO_0:
        0 FASTCALL1                        MATH_ROUND R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [math.round]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["MIN_DPI"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["MAX_DPI"]
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R1 K6 [math.clamp]
       14 CALL                             R1 3 1
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["normalizeDpi"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [Vector2.new]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["CARD_WIDTH_INCHES"]
       10 MUL                              R3 R4 R1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["CARD_HEIGHT_INCHES"]
       14 MUL                              R4 R5 R1
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADN                            R1 80
        4 SETTABLEKS                       R1 R0 K0 ["MIN_DPI"]
        6 LOADN                            R1 250
        7 SETTABLEKS                       R1 R0 K1 ["MAX_DPI"]
        9 LOADK                            R1 K2 [3.37]
       10 SETTABLEKS                       R1 R0 K3 ["CARD_WIDTH_INCHES"]
       12 LOADK                            R1 K4 [2.125]
       13 SETTABLEKS                       R1 R0 K5 ["CARD_HEIGHT_INCHES"]
       15 DUPCLOSURE                       R1 K6 [PROTO_0]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["normalizeDpi"]
       19 DUPCLOSURE                       R1 K8 [PROTO_1]
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K9 ["getCardSize"]
       23 GETIMPORT                        R1 K12 [table.freeze]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1
