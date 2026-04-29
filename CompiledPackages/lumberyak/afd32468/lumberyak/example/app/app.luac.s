PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["calling {root}"]
        2 NAMECALL                         R0 R0 K1 ["info"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K2 ["init"]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K3 ["doSomething"]
       13 CALL                             R0 0 -1
       14 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["appLogger"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R6 K3 [script]
       14 GETTABLEKS                       R5 R6 K4 ["Parent"]
       16 GETTABLEKS                       R4 R5 K4 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["page"]
       20 GETTABLEKS                       R2 R3 K6 ["page"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R5 K3 [script]
       27 GETTABLEKS                       R4 R5 K4 ["Parent"]
       29 GETTABLEKS                       R3 R4 K7 ["PrintSink"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R5 R2 K8 ["new"]
       34 GETTABLEKS                       R7 R0 K9 ["Levels"]
       36 GETTABLEKS                       R6 R7 K10 ["Error"]
       38 CALL                             R5 1 -1
       39 NAMECALL                         R3 R0 K11 ["addSink"]
       41 CALL                             R3 -1 0
       42 DUPCLOSURE                       R3 K12 [PROTO_0]
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 RETURN                           R3 1
