PROTO_0:
        0 DUPTABLE                         R1 K1 [{"theme"}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 SETTABLEKS                       R2 R1 K0 ["theme"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["theme"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K7 [{"backgrounds", "suggestions", "Size", "plugin"}]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K8 ["BACKGROUNDS"]
       12 SETTABLEKS                       R5 R4 K3 ["backgrounds"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K9 ["SUGGESTIONS"]
       17 SETTABLEKS                       R5 R4 K4 ["suggestions"]
       19 GETIMPORT                        R5 K12 [UDim2.new]
       21 LOADN                            R6 0
       22 LOADN                            R7 144
       23 LOADN                            R8 0
       24 LOADN                            R9 144
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R4 K5 ["Size"]
       28 GETTABLEKS                       R6 R0 K13 ["props"]
       30 GETTABLEKS                       R5 R6 K6 ["plugin"]
       32 SETTABLEKS                       R5 R4 K6 ["plugin"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R0 K7 ["Src"]
       18 GETTABLEKS                       R3 R4 K8 ["Util"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K9 ["makeTheme"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K7 ["Src"]
       29 GETTABLEKS                       R7 R8 K10 ["Components"]
       31 GETTABLEKS                       R6 R7 K11 ["Toolbox"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K7 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Types"]
       40 GETTABLEKS                       R7 R8 K13 ["Suggestion"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R10 R0 K7 ["Src"]
       47 GETTABLEKS                       R9 R10 K12 ["Types"]
       49 GETTABLEKS                       R8 R9 K14 ["Background"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R2 K15 ["PureComponent"]
       54 LOADK                            R10 K16 ["ToolboxTestWrapper"]
       55 NAMECALL                         R8 R8 K17 ["extend"]
       57 CALL                             R8 2 1
       58 DUPCLOSURE                       R9 K18 [PROTO_0]
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R9 R8 K19 ["init"]
       62 DUPCLOSURE                       R9 K20 [PROTO_1]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R9 R8 K21 ["render"]
       69 RETURN                           R8 1
