PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["_context"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R1 K1 ["networkInterface"]
        5 SETTABLE                         R4 R2 R3
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["oneChild"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["Children"]
        8 GETTABLE                         R2 R3 R4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K3 ["Packages"]
       20 GETTABLEKS                       R4 R4 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R4 K9 ["ContextItem"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Util"]
       33 GETTABLEKS                       R6 R6 K12 ["Symbol"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K13 ["named"]
       38 LOADK                            R7 K14 ["NetworkInterface"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R2 K15 ["PureComponent"]
       42 LOADK                            R9 K16 ["NetworkContext"]
       43 NAMECALL                         R7 R7 K17 ["extend"]
       45 CALL                             R7 2 1
       46 DUPCLOSURE                       R8 K18 [PROTO_0]
       47 CAPTURE                          VAL R6
       48 SETTABLEKS                       R8 R7 K19 ["init"]
       50 DUPCLOSURE                       R8 K20 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R8 R7 K21 ["render"]
       54 LOADK                            R10 K22 ["Network"]
       55 NAMECALL                         R8 R4 K23 ["createSimple"]
       57 CALL                             R8 2 -1
       58 RETURN                           R8 -1
