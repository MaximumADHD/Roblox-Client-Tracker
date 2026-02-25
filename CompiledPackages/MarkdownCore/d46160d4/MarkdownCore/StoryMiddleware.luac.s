PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["theme"]
        3 GETTABLE                         R1 R2 R3
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 LOADK                            R3 K2 ["Frame"]
        8 DUPTABLE                         R4 K6 [{"AutomaticSize", "Size", "BackgroundTransparency"}]
        9 GETIMPORT                        R5 K9 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       13 GETIMPORT                        R5 K12 [UDim2.fromScale]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K4 ["Size"]
       20 LOADN                            R5 1
       21 SETTABLEKS                       R5 R4 K5 ["BackgroundTransparency"]
       23 DUPTABLE                         R5 K15 [{"UIPadding", "FoundationContext"}]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K1 ["createElement"]
       27 LOADK                            R7 K13 ["UIPadding"]
       28 DUPTABLE                         R8 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       29 GETIMPORT                        R9 K23 [UDim.new]
       31 LOADN                            R10 0
       32 LOADN                            R11 10
       33 CALL                             R9 2 1
       34 SETTABLEKS                       R9 R8 K16 ["PaddingTop"]
       36 GETIMPORT                        R9 K23 [UDim.new]
       38 LOADN                            R10 0
       39 LOADN                            R11 10
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K17 ["PaddingBottom"]
       43 GETIMPORT                        R9 K23 [UDim.new]
       45 LOADN                            R10 0
       46 LOADN                            R11 10
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K18 ["PaddingLeft"]
       50 GETIMPORT                        R9 K23 [UDim.new]
       52 LOADN                            R10 0
       53 LOADN                            R11 10
       54 CALL                             R9 2 1
       55 SETTABLEKS                       R9 R8 K19 ["PaddingRight"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K13 ["UIPadding"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R6 R7 K1 ["createElement"]
       63 GETUPVAL                         R7 2
       64 DUPTABLE                         R8 K26 [{"theme", "device", "preferences"}]
       65 SETTABLEKS                       R1 R8 K0 ["theme"]
       67 GETUPVAL                         R10 3
       68 GETTABLEKS                       R11 R0 K27 ["platform"]
       70 GETTABLE                         R9 R10 R11
       71 SETTABLEKS                       R9 R8 K24 ["device"]
       73 GETTABLEKS                       R9 R0 K28 ["settings"]
       75 SETTABLEKS                       R9 R8 K25 ["preferences"]
       77 DUPTABLE                         R9 K30 [{"Child"}]
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R10 R11 K1 ["createElement"]
       81 GETUPVAL                         R11 4
       82 MOVE                             R12 R0
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K29 ["Child"]
       86 CALL                             R6 3 1
       87 SETTABLEKS                       R6 R5 K14 ["FoundationContext"]
       89 CALL                             R2 3 -1
       90 RETURN                           R2 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Foundation"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["React"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R1 K7 ["FoundationProvider"]
       19 GETTABLEKS                       R5 R1 K8 ["Enums"]
       21 GETTABLEKS                       R4 R5 K9 ["Theme"]
       23 GETTABLEKS                       R6 R1 K8 ["Enums"]
       25 GETTABLEKS                       R5 R6 K10 ["Device"]
       27 DUPCLOSURE                       R6 K11 [PROTO_1]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 RETURN                           R6 1
