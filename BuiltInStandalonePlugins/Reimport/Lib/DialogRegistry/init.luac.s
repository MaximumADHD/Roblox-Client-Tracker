PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 0
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0
        7 GETIMPORT                        R0 K1 [error]
        9 LOADK                            R1 K2 ["Dialog not registered"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 DUPTABLE                         R1 K3 [{"register", "unregister", "show"}]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          REF R0
        4 SETTABLEKS                       R2 R1 K0 ["register"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          REF R0
        8 SETTABLEKS                       R2 R1 K1 ["unregister"]
       10 NEWCLOSURE                       R2 P2
       11 CAPTURE                          REF R0
       12 SETTABLEKS                       R2 R1 K2 ["show"]
       14 CLOSEUPVALS                      R0
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Lib"]
       11 GETTABLEKS                       R3 R4 K7 ["DialogRegistry"]
       13 GETTABLEKS                       R2 R3 K8 ["Types"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_3]
       17 DUPTABLE                         R3 K12 [{"configure", "errors"}]
       18 MOVE                             R4 R2
       19 CALL                             R4 0 1
       20 SETTABLEKS                       R4 R3 K10 ["configure"]
       22 MOVE                             R4 R2
       23 CALL                             R4 0 1
       24 SETTABLEKS                       R4 R3 K11 ["errors"]
       26 RETURN                           R3 1
