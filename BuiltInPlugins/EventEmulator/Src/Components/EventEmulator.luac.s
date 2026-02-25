PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R2 K2 ["Layout"]
        6 GETTABLEKS                       R3 R4 K3 ["Vertical"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K4 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K7 [{"Size", "Background"}]
       13 GETIMPORT                        R7 K10 [UDim2.new]
       15 LOADN                            R8 1
       16 LOADN                            R9 0
       17 LOADN                            R10 1
       18 LOADN                            R11 0
       19 CALL                             R7 4 1
       20 SETTABLEKS                       R7 R6 K5 ["Size"]
       22 GETUPVAL                         R7 2
       23 SETTABLEKS                       R7 R6 K6 ["Background"]
       25 DUPTABLE                         R7 K13 [{"Layout", "InputPane", "History"}]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K4 ["createElement"]
       29 LOADK                            R9 K14 ["UIListLayout"]
       30 MOVE                             R10 R3
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R8 R7 K2 ["Layout"]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K4 ["createElement"]
       37 GETUPVAL                         R9 3
       38 CALL                             R8 1 1
       39 SETTABLEKS                       R8 R7 K11 ["InputPane"]
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K4 ["createElement"]
       44 GETUPVAL                         R9 4
       45 CALL                             R8 1 1
       46 SETTABLEKS                       R8 R7 K12 ["History"]
       48 CALL                             R4 3 -1
       49 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"ActiveView"}]
        1 GETTABLEKS                       R4 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["ActiveView"]
        5 SETTABLEKS                       R3 R2 K0 ["ActiveView"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Container"]
       38 GETTABLEKS                       R8 R6 K13 ["Box"]
       40 GETTABLEKS                       R10 R0 K14 ["Src"]
       42 GETTABLEKS                       R9 R10 K15 ["Components"]
       44 GETIMPORT                        R10 K4 [require]
       46 GETTABLEKS                       R11 R9 K16 ["InputPane"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K4 [require]
       51 GETTABLEKS                       R12 R9 K17 ["RepopulatableHistory"]
       53 CALL                             R11 1 1
       54 GETTABLEKS                       R12 R1 K18 ["PureComponent"]
       56 LOADK                            R14 K19 ["EventEmulator"]
       57 NAMECALL                         R12 R12 K20 ["extend"]
       59 CALL                             R12 2 1
       60 DUPCLOSURE                       R13 K21 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R11
       66 SETTABLEKS                       R13 R12 K22 ["render"]
       68 MOVE                             R13 R5
       69 DUPTABLE                         R14 K24 [{"Stylizer"}]
       70 GETTABLEKS                       R15 R4 K23 ["Stylizer"]
       72 SETTABLEKS                       R15 R14 K23 ["Stylizer"]
       74 CALL                             R13 1 1
       75 MOVE                             R14 R12
       76 CALL                             R13 1 1
       77 MOVE                             R12 R13
       78 GETTABLEKS                       R13 R2 K25 ["connect"]
       80 DUPCLOSURE                       R14 K26 [PROTO_1]
       81 CALL                             R13 1 1
       82 MOVE                             R14 R12
       83 CALL                             R13 1 -1
       84 RETURN                           R13 -1
