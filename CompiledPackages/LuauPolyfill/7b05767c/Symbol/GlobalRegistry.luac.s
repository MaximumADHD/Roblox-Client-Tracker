PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["new"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 SETTABLE                         R2 R1 R0
       11 GETUPVAL                         R2 0
       12 GETTABLE                         R1 R2 R0
       13 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Symbol"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 0 0
       12 DUPTABLE                         R2 K8 [{"getOrInit", "__clear"}]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          REF R1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R3 R2 K6 ["getOrInit"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          REF R1
       20 SETTABLEKS                       R3 R2 K7 ["__clear"]
       22 CLOSEUPVALS                      R1
       23 RETURN                           R2 1
