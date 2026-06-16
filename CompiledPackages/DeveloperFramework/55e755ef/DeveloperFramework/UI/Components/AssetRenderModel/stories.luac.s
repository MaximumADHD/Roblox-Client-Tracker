PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [Instance.new]
        6 LOADK                            R2 K4 ["Part"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R0 R1 K5 ["Parent"]
       10 DUPTABLE                         R2 K7 [{"Model", "Controls"}]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K8 ["createElement"]
       14 GETUPVAL                         R4 1
       15 DUPTABLE                         R5 K10 [{"Model", "Size"}]
       16 SETTABLEKS                       R0 R5 K3 ["Model"]
       18 GETIMPORT                        R6 K12 [UDim2.new]
       20 LOADN                            R7 1
       21 LOADN                            R8 0
       22 LOADN                            R9 0
       23 LOADN                            R10 200
       24 CALL                             R6 4 1
       25 SETTABLEKS                       R6 R5 K9 ["Size"]
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K3 ["Model"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K8 ["createElement"]
       33 GETUPVAL                         R4 1
       34 DUPTABLE                         R5 K15 [{"Model", "Size", "ShowAxisIndicator", "ShowResetCamera"}]
       35 SETTABLEKS                       R0 R5 K3 ["Model"]
       37 GETIMPORT                        R6 K12 [UDim2.new]
       39 LOADN                            R7 1
       40 LOADN                            R8 0
       41 LOADN                            R9 0
       42 LOADN                            R10 200
       43 CALL                             R6 4 1
       44 SETTABLEKS                       R6 R5 K9 ["Size"]
       46 LOADB                            R6 1
       47 SETTABLEKS                       R6 R5 K13 ["ShowAxisIndicator"]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K14 ["ShowResetCamera"]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R2 K6 ["Controls"]
       55 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
