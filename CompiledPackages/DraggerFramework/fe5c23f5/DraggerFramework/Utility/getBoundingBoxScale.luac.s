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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 0 8
       14 LOADK                            R3 K6 [{0.5, 0.5, 0.5}]
       15 LOADK                            R4 K7 [{-0.5, 0.5, 0.5}]
       16 LOADK                            R5 K8 [{0.5, -0.5, 0.5}]
       17 LOADK                            R6 K9 [{-0.5, -0.5, 0.5}]
       18 LOADK                            R7 K10 [{0.5, 0.5, -0.5}]
       19 LOADK                            R8 K11 [{-0.5, 0.5, -0.5}]
       20 LOADK                            R9 K12 [{0.5, -0.5, -0.5}]
       21 LOADK                            R10 K13 [{-0.5, -0.5, -0.5}]
       22 SETLIST                          R2 R3 8 [1]
       24 DUPCLOSURE                       R3 K14 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
