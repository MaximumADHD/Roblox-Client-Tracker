PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 GETIMPORT                        R9 K2 [Vector2.new]
        6 LOADK                            R10 K3 [∞]
        7 LOADK                            R11 K3 [∞]
        8 CALL                             R9 2 -1
        9 NAMECALL                         R4 R4 K4 ["GetTextSize"]
       11 CALL                             R4 -1 1
       12 MOVE                             R5 R3
       13 JUMPIF                           R5 ; [+5]
       14 GETIMPORT                        R5 K2 [Vector2.new]
       16 LOADN                            R6 0
       17 LOADN                            R7 0
       18 CALL                             R5 2 1
       19 GETIMPORT                        R6 K6 [UDim2.new]
       21 LOADN                            R7 0
       22 GETTABLEKS                       R9 R4 K7 ["X"]
       24 GETTABLEKS                       R10 R5 K7 ["X"]
       26 ADD                              R8 R9 R10
       27 LOADN                            R9 0
       28 GETTABLEKS                       R11 R4 K8 ["Y"]
       30 GETTABLEKS                       R12 R5 K8 ["Y"]
       32 ADD                              R10 R11 R12
       33 CALL                             R6 4 -1
       34 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getTextSize"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 1
        8 GETTABLEKS                       R5 R4 K1 ["Y"]
       10 GETTABLEKS                       R5 R5 K2 ["Offset"]
       12 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["TextService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K5 ["getTextSize"]
       13 DUPCLOSURE                       R2 K6 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K7 ["getTextHeight"]
       17 RETURN                           R0 1
