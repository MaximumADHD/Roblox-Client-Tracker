PROTO_0:
        0 DUPTABLE                         R1 K1 [{"expanded"}]
        1 GETTABLEKS                       R3 R0 K0 ["expanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["expanded"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"expanded"}]
        1 GETTABLEKS                       R3 R1 K2 ["Expanded"]
        3 SETTABLEKS                       R3 R2 K0 ["expanded"]
        5 SETTABLEKS                       R2 R0 K3 ["state"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K4 ["expandedChanged"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R0 K1 ["props"]
        7 DUPTABLE                         R5 K4 [{"Expanded", "OnExpandedChanged"}]
        8 GETTABLEKS                       R7 R0 K5 ["state"]
       10 GETTABLEKS                       R6 R7 K6 ["expanded"]
       12 SETTABLEKS                       R6 R5 K2 ["Expanded"]
       14 GETTABLEKS                       R6 R0 K7 ["expandedChanged"]
       16 SETTABLEKS                       R6 R5 K3 ["OnExpandedChanged"]
       18 CALL                             R3 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["ExpandablePane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["Typecheck"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R6 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R6 K12 ["Dash"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K13 ["join"]
       41 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       43 LOADK                            R8 K15 ["SimpleExpandablePane"]
       44 NAMECALL                         R6 R6 K16 ["extend"]
       46 CALL                             R6 2 1
       47 GETTABLEKS                       R7 R3 K17 ["wrap"]
       49 MOVE                             R8 R6
       50 GETIMPORT                        R9 K1 [script]
       52 CALL                             R7 2 0
       53 DUPCLOSURE                       R7 K18 [PROTO_2]
       54 SETTABLEKS                       R7 R6 K19 ["init"]
       56 DUPCLOSURE                       R7 K20 [PROTO_3]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R7 R6 K21 ["render"]
       62 RETURN                           R6 1
