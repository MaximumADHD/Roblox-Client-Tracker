PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 LOADK                            R3 K0 ["withNavigation must be passed a render prop"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["Consumer"]
       13 DUPTABLE                         R3 K4 [{"render"}]
       14 SETTABLEKS                       R0 R3 K3 ["render"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Roact"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["AppNavigationContext"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K7 ["utils"]
       33 GETTABLEKS                       R3 R3 K8 ["validate"]
       35 CALL                             R2 1 1
       36 DUPCLOSURE                       R3 K9 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 RETURN                           R3 1
