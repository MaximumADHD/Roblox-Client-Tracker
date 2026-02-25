PROTO_0:
        0 LOADK                            R3 K0 [{0, 0, 0}]
        1 SETTABLEKS                       R3 R0 K1 ["velocity"]
        3 SETTABLEKS                       R2 R0 K2 ["mass"]
        5 LOADK                            R3 K0 [{0, 0, 0}]
        6 SETTABLEKS                       R3 R0 K3 ["acceleration"]
        8 LOADK                            R3 K0 [{0, 0, 0}]
        9 SETTABLEKS                       R3 R0 K4 ["momentum"]
       11 LOADK                            R3 K0 [{0, 0, 0}]
       12 SETTABLEKS                       R3 R0 K5 ["force"]
       14 SETTABLEKS                       R1 R0 K6 ["position"]
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["force"]
        2 ADD                              R2 R3 R1
        3 SETTABLEKS                       R2 R0 K0 ["force"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R5 R0 K1 ["mass"]
        2 DIVRK                            R4 R0 K5 [0.00015]
        3 GETTABLEKS                       R5 R0 K2 ["force"]
        5 MUL                              R3 R4 R5
        6 SETTABLEKS                       R3 R0 K3 ["acceleration"]
        8 GETTABLEKS                       R3 R0 K4 ["velocity"]
       10 LOADK                            R6 K5 [0.00015]
       11 MUL                              R5 R6 R1
       12 SUBRK                            R4 R0 K5 [0.00015]
       13 MUL                              R3 R3 R4
       14 SETTABLEKS                       R3 R0 K4 ["velocity"]
       16 GETTABLEKS                       R4 R0 K4 ["velocity"]
       18 GETTABLEKS                       R6 R0 K3 ["acceleration"]
       20 MUL                              R5 R6 R1
       21 ADD                              R3 R4 R5
       22 SETTABLEKS                       R3 R0 K4 ["velocity"]
       24 JUMPIF                           R2 ; [+8]
       25 GETTABLEKS                       R4 R0 K6 ["position"]
       27 GETTABLEKS                       R6 R0 K4 ["velocity"]
       29 MUL                              R5 R6 R1
       30 ADD                              R3 R4 R5
       31 SETTABLEKS                       R3 R0 K6 ["position"]
       33 LOADK                            R3 K7 [{0, 0, 0}]
       34 SETTABLEKS                       R3 R0 K2 ["force"]
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["class"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 DUPCLOSURE                       R2 K6 [PROTO_0]
       12 CALL                             R1 1 1
       13 SETGLOBAL                        R1 K7 ["Particle"]
       15 DUPCLOSURE                       R1 K8 [PROTO_1]
       16 GETGLOBAL                        R2 K7 ["Particle"]
       18 SETTABLEKS                       R1 R2 K9 ["addForce"]
       20 DUPCLOSURE                       R1 K10 [PROTO_2]
       21 GETGLOBAL                        R2 K7 ["Particle"]
       23 SETTABLEKS                       R1 R2 K11 ["update"]
       25 GETGLOBAL                        R1 K7 ["Particle"]
       27 RETURN                           R1 1
