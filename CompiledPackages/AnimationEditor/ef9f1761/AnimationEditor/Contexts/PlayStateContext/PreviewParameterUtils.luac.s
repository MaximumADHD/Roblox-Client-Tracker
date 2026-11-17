PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETIMPORT                        R9 K2 [string.find]
        8 MOVE                             R10 R7
        9 LOADK                            R11 K3 ["^RBX_"]
       10 CALL                             R9 2 1
       11 JUMPIF                           R9 ; [+11]
       12 JUMPIFEQKNIL                     R2 ; [+4]
       14 GETTABLE                         R9 R2 R7
       15 JUMPIFEQKNIL                     R9 ; [+7]
       17 JUMPIFEQKNIL                     R1 ; [+4]
       19 GETTABLE                         R9 R1 R7
       20 JUMPIFEQ                         R9 R8 ; [+2]
       22 SETTABLE                         R8 R3 R7
       23 FORGLOOP                         R4 2 ; [-18]
       25 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getParametersToApply"]
        6 RETURN                           R0 1
