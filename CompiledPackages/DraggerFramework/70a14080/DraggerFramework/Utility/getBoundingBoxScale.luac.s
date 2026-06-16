PROTO_0:
        0 LOADK                            R3 K0 [∞]
        1 GETIMPORT                        R4 K2 [ipairs]
        3 GETUPVAL                         R5 0
        4 CALL                             R4 1 3
        5 FORGPREP_INEXT                   R4
        6 MUL                              R11 R2 R8
        7 NAMECALL                         R9 R1 K3 ["PointToWorldSpace"]
        9 CALL                             R9 2 1
       10 MOVE                             R11 R3
       11 MOVE                             R14 R9
       12 NAMECALL                         R12 R0 K4 ["getHandleScale"]
       14 CALL                             R12 2 -1
       15 FASTCALL                         MATH_MIN ; [+2]
       16 GETIMPORT                        R10 K7 [math.min]
       18 CALL                             R10 -1 1
       19 MOVE                             R3 R10
       20 FORGLOOP                         R4 2 [inext] ; [-15]
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 8
        3 LOADK                            R1 K0 [{0.5, 0.5, 0.5}]
        4 LOADK                            R2 K1 [{-0.5, 0.5, 0.5}]
        5 LOADK                            R3 K2 [{0.5, -0.5, 0.5}]
        6 LOADK                            R4 K3 [{-0.5, -0.5, 0.5}]
        7 LOADK                            R5 K4 [{0.5, 0.5, -0.5}]
        8 LOADK                            R6 K5 [{-0.5, 0.5, -0.5}]
        9 LOADK                            R7 K6 [{0.5, -0.5, -0.5}]
       10 LOADK                            R8 K7 [{-0.5, -0.5, -0.5}]
       11 SETLIST                          R0 R1 8 [1]
       13 DUPCLOSURE                       R1 K8 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1
