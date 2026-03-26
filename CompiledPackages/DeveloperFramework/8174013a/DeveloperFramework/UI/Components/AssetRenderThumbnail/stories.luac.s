PROTO_0:
        0 GETIMPORT                        R0 K2 [UDim2.new]
        2 LOADN                            R1 1
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 LOADN                            R4 100
        6 CALL                             R0 4 1
        7 GETIMPORT                        R1 K4 [Instance.new]
        9 LOADK                            R2 K5 ["Model"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K6 ["My Model"]
       12 SETTABLEKS                       R2 R1 K7 ["Name"]
       14 GETIMPORT                        R2 K4 [Instance.new]
       16 LOADK                            R3 K8 ["Script"]
       17 CALL                             R2 1 1
       18 LOADK                            R3 K9 ["My script with a lovely long name to test wrapping and I'll keep going so it will be long enough."]
       19 SETTABLEKS                       R3 R2 K7 ["Name"]
       21 DUPTABLE                         R3 K10 [{"Model", "Script"}]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K11 ["createElement"]
       25 GETUPVAL                         R5 1
       26 DUPTABLE                         R6 K13 [{"Instance", "Size"}]
       27 SETTABLEKS                       R1 R6 K3 ["Instance"]
       29 SETTABLEKS                       R0 R6 K12 ["Size"]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K5 ["Model"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K11 ["createElement"]
       37 GETUPVAL                         R5 1
       38 DUPTABLE                         R6 K13 [{"Instance", "Size"}]
       39 SETTABLEKS                       R2 R6 K3 ["Instance"]
       41 SETTABLEKS                       R0 R6 K12 ["Size"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K8 ["Script"]
       46 RETURN                           R3 1

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
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
