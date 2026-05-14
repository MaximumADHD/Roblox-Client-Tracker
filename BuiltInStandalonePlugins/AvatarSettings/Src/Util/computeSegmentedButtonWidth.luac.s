PROTO_0:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R11 R6
        8 GETIMPORT                        R10 K1 [typeof]
       10 CALL                             R10 1 1
       11 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+4]
       13 GETTABLEKS                       R9 R6 K3 ["Label"]
       15 JUMP                             ; [+1]
       16 MOVE                             R9 R6
       17 LOADN                            R10 18
       18 GETIMPORT                        R11 K7 [Enum.Font.SourceSans]
       20 GETIMPORT                        R12 K10 [Vector2.new]
       22 LOADK                            R13 K11 [∞]
       23 LOADK                            R14 K11 [∞]
       24 CALL                             R12 2 -1
       25 NAMECALL                         R7 R7 K12 ["GetTextSize"]
       27 CALL                             R7 -1 1
       28 GETTABLEKS                       R7 R7 K13 ["X"]
       30 FASTCALL2                        MATH_MAX R1 R7 ; [+5]
       32 MOVE                             R9 R1
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K16 [math.max]
       36 CALL                             R8 2 1
       37 MOVE                             R1 R8
       38 FORGLOOP                         R2 2 ; [-34]
       40 LENGTH                           R3 R0
       41 ADDK                             R4 R1 K17 [16]
       42 MUL                              R2 R3 R4
       43 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
