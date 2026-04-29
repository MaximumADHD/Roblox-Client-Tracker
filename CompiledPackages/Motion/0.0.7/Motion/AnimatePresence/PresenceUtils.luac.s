PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["isPresent"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+3]
        7 LOADB                            R1 1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K1 ["isPresent"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K2 ["Parent"]
       20 GETTABLEKS                       R4 R5 K6 ["PresenceContext"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K7 [PROTO_0]
       24 DUPCLOSURE                       R5 K8 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 DUPTABLE                         R6 K11 [{"useIsPresent", "isPresent"}]
       28 SETTABLEKS                       R5 R6 K9 ["useIsPresent"]
       30 SETTABLEKS                       R4 R6 K10 ["isPresent"]
       32 RETURN                           R6 1
