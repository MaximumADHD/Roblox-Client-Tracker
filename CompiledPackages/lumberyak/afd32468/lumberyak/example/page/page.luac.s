PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setParent"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["calling {root} {foo}"]
        2 NAMECALL                         R0 R0 K1 ["info"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["pageLogger"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["component"]
       18 CALL                             R1 1 1
       19 DUPTABLE                         R2 K9 [{"init", "doSomething"}]
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R3 R2 K7 ["init"]
       24 DUPCLOSURE                       R3 K11 [PROTO_1]
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R2 K8 ["doSomething"]
       29 RETURN                           R2 1
