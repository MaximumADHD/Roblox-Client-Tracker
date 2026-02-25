PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["signal"]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R3 R3 K1 ["Connect"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 CLOSEUPVALS                      R2
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 1
        6 NAMECALL                         R1 R1 K1 ["await"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Network"]
       20 GETTABLEKS                       R3 R4 K10 ["NetworkCache"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R1 K11 ["Util"]
       25 GETTABLEKS                       R3 R4 K12 ["Promise"]
       27 DUPCLOSURE                       R4 K13 [PROTO_2]
       28 CAPTURE                          VAL R3
       29 RETURN                           R4 1
