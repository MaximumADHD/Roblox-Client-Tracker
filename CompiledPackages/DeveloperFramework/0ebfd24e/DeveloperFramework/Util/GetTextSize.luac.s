PROTO_0:
        0 ORK                              R1 R1 K0 [16]
        1 MOVE                             R4 R2
        2 JUMPIF                           R4 ; [+1]
        3 GETUPVAL                         R4 0
        4 MOVE                             R2 R4
        5 MOVE                             R4 R3
        6 JUMPIF                           R4 ; [+1]
        7 GETUPVAL                         R4 1
        8 MOVE                             R3 R4
        9 GETUPVAL                         R4 2
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 MOVE                             R9 R3
       14 NAMECALL                         R4 R4 K1 ["GetTextSize"]
       16 CALL                             R4 5 -1
       17 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K7 [Enum.Font.SourceSans]
        9 GETIMPORT                        R2 K10 [Vector2.new]
       11 LOADK                            R3 K11 [∞]
       12 LOADK                            R4 K11 [∞]
       13 CALL                             R2 2 1
       14 DUPCLOSURE                       R3 K12 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R0
       18 RETURN                           R3 1
