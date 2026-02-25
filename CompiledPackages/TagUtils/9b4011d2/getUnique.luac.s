PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K0 [1] ; [+3]
        7 GETTABLEN                        R2 R0 1
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKN                    R1 K1 [0] ; [+17]
       11 GETIMPORT                        R2 K3 [error]
       13 LOADK                            R3 K4 ["unable to find instance tagged with %s"]
       14 GETIMPORT                        R5 K7 [table.concat]
       16 NEWTABLE                         R6 0 0
       18 GETVARARGS                       R7 -1
       19 SETLIST                          R6 R7 -1 [1]
       21 LOADK                            R7 K8 [", "]
       22 CALL                             R5 2 -1
       23 NAMECALL                         R3 R3 K9 ["format"]
       25 CALL                             R3 -1 -1
       26 CALL                             R2 -1 0
       27 GETIMPORT                        R2 K3 [error]
       29 LOADK                            R3 K10 ["expected to find only one instance tagged with %s, but found %d"]
       30 GETIMPORT                        R5 K7 [table.concat]
       32 NEWTABLE                         R6 0 0
       34 GETVARARGS                       R7 -1
       35 SETLIST                          R6 R7 -1 [1]
       37 LOADK                            R7 K8 [", "]
       38 CALL                             R5 2 1
       39 LENGTH                           R6 R0
       40 NAMECALL                         R3 R3 K9 ["format"]
       42 CALL                             R3 3 -1
       43 CALL                             R2 -1 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["getAll"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
