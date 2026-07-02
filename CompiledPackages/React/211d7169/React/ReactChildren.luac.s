PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 LOADK                            R3 K0 ["React.Children.only expected to receive a single React element child."]
        5 CALL                             R1 2 0
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K6 ["invariant"]
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K2 ["Parent"]
       20 GETTABLEKS                       R3 R3 K7 ["ReactElement"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["isValidElement"]
       25 DUPCLOSURE                       R4 K9 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 DUPTABLE                         R5 K11 [{"only"}]
       29 SETTABLEKS                       R4 R5 K10 ["only"]
       31 RETURN                           R5 1
