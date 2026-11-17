PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 ORK                              R0 R0 K0 []
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETTABLEKS                       R2 R0 K1 ["TagMenu"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 GETTABLEKS                       R3 R1 K2 ["type"]
        9 JUMPIFNOTEQKS                    R3 K3 ["OpenTagMenu"] ; [+4]
       11 GETTABLEKS                       R3 R1 K4 ["tag"]
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K2 ["type"]
       16 JUMPIFNOTEQKS                    R3 K5 ["OpenGroupMenu"] ; [+3]
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETTABLEKS                       R3 R1 K2 ["type"]
       22 JUMPIFNOTEQKS                    R3 K6 ["MoveTagSelectionUpOrDown"] ; [+53]
       24 GETTABLEKS                       R4 R0 K7 ["TagData"]
       26 LENGTH                           R3 R4
       27 LOADN                            R4 0
       28 JUMPIFNOTLT                      R4 R3 ; [+47]
       30 JUMPIFEQKNIL                     R2 ; [+39]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          VAL R2
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K8 ["findIndex"]
       37 GETTABLEKS                       R5 R0 K7 ["TagData"]
       39 MOVE                             R6 R3
       40 CALL                             R4 2 1
       41 JUMPIFNOTEQKNIL                  R4 ; [+2]
       43 RETURN                           R2 1
       44 GETTABLEKS                       R5 R1 K9 ["isDown"]
       46 JUMPIFNOT                        R5 ; [+10]
       47 GETTABLEKS                       R7 R0 K7 ["TagData"]
       49 LENGTH                           R6 R7
       50 JUMPIFNOTLT                      R4 R6 ; [+3]
       52 LOADN                            R5 1
       53 JUMP                             ; [+1]
       54 LOADN                            R5 0
       55 ADD                              R4 R4 R5
       56 JUMP                             ; [+7]
       57 LOADN                            R6 1
       58 JUMPIFNOTLT                      R6 R4 ; [+3]
       60 LOADN                            R5 -1
       61 JUMP                             ; [+1]
       62 LOADN                            R5 0
       63 ADD                              R4 R4 R5
       64 GETTABLEKS                       R6 R0 K7 ["TagData"]
       66 GETTABLE                         R5 R6 R4
       67 GETTABLEKS                       R5 R5 K10 ["Name"]
       69 RETURN                           R5 1
       70 GETTABLEKS                       R4 R0 K7 ["TagData"]
       72 GETTABLEN                        R3 R4 1
       73 GETTABLEKS                       R3 R3 K10 ["Name"]
       75 RETURN                           R3 1
       76 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
