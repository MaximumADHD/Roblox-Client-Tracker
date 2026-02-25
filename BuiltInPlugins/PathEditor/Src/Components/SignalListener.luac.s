PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K2 [{"connection"}]
        3 GETTABLEKS                       R3 R1 K3 ["signal"]
        5 GETTABLEKS                       R5 R1 K4 ["callback"]
        7 NAMECALL                         R3 R3 K5 ["Connect"]
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K1 ["connection"]
       12 SETTABLEKS                       R2 R0 K6 ["state"]
       14 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["connection"]
        4 JUMPIFEQKNIL                     R1 ; [+8]
        6 GETTABLEKS                       R2 R0 K0 ["state"]
        8 GETTABLEKS                       R1 R2 K1 ["connection"]
       10 NAMECALL                         R1 R1 K2 ["Disconnect"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R1 K10 ["PureComponent"]
       29 LOADK                            R7 K11 ["SignalListener"]
       30 NAMECALL                         R5 R5 K12 ["extend"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 SETTABLEKS                       R6 R5 K14 ["init"]
       36 DUPCLOSURE                       R6 K15 [PROTO_1]
       37 SETTABLEKS                       R6 R5 K16 ["willUnmount"]
       39 DUPCLOSURE                       R6 K17 [PROTO_2]
       40 SETTABLEKS                       R6 R5 K18 ["render"]
       42 MOVE                             R6 R4
       43 NEWTABLE                         R7 0 0
       45 CALL                             R6 1 1
       46 MOVE                             R7 R5
       47 CALL                             R6 1 1
       48 MOVE                             R5 R6
       49 RETURN                           R5 1
