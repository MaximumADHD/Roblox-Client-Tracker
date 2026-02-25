PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R7
        8 MOVE                             R10 R6
        9 CALL                             R8 2 1
       10 GETUPVAL                         R9 0
       11 JUMPIFEQKNIL                     R8 ; [+2]
       13 LOADB                            R10 0 +1
       14 LOADB                            R10 1
       15 LOADB                            R11 0
       16 LOADK                            R12 K0 ["Returned nil from a Dash.map handler"]
       17 CALL                             R9 3 0
       18 SETTABLE                         R8 R2 R6
       19 FORGLOOP                         R3 2 ; [-14]
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["assertEqual"]
       14 CALL                             R2 1 1
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1
