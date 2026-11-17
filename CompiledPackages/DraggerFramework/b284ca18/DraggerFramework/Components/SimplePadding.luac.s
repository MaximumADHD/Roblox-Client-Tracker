PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["UIPadding"]
        4 DUPTABLE                         R3 K6 [{"PaddingBottom", "PaddingRight", "PaddingLeft", "PaddingTop"}]
        5 GETIMPORT                        R4 K9 [UDim.new]
        7 LOADN                            R5 0
        8 GETTABLEKS                       R6 R0 K10 ["Padding"]
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K2 ["PaddingBottom"]
       13 GETIMPORT                        R4 K9 [UDim.new]
       15 LOADN                            R5 0
       16 GETTABLEKS                       R6 R0 K10 ["Padding"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K3 ["PaddingRight"]
       21 GETIMPORT                        R4 K9 [UDim.new]
       23 LOADN                            R5 0
       24 GETTABLEKS                       R6 R0 K10 ["Padding"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K4 ["PaddingLeft"]
       29 GETIMPORT                        R4 K9 [UDim.new]
       31 LOADN                            R5 0
       32 GETTABLEKS                       R6 R0 K10 ["Padding"]
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K5 ["PaddingTop"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
