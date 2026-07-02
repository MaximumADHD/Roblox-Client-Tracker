PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["theme"]
        3 GETTABLE                         R1 R2 R3
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["Frame"]
        8 DUPTABLE                         R4 K7 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1}]
        9 GETIMPORT                        R5 K10 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       13 GETIMPORT                        R5 K13 [UDim2.fromScale]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K4 ["Size"]
       20 DUPTABLE                         R5 K16 [{"UIPadding", "FoundationContext"}]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K1 ["createElement"]
       24 LOADK                            R7 K14 ["UIPadding"]
       25 DUPTABLE                         R8 K21 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       26 GETIMPORT                        R9 K24 [UDim.new]
       28 LOADN                            R10 0
       29 LOADN                            R11 10
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K17 ["PaddingTop"]
       33 GETIMPORT                        R9 K24 [UDim.new]
       35 LOADN                            R10 0
       36 LOADN                            R11 10
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K18 ["PaddingBottom"]
       40 GETIMPORT                        R9 K24 [UDim.new]
       42 LOADN                            R10 0
       43 LOADN                            R11 10
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K19 ["PaddingLeft"]
       47 GETIMPORT                        R9 K24 [UDim.new]
       49 LOADN                            R10 0
       50 LOADN                            R11 10
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K20 ["PaddingRight"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K14 ["UIPadding"]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K1 ["createElement"]
       60 GETUPVAL                         R7 2
       61 DUPTABLE                         R8 K27 [{"theme", "device", "preferences"}]
       62 SETTABLEKS                       R1 R8 K0 ["theme"]
       64 GETUPVAL                         R10 3
       65 GETTABLEKS                       R11 R0 K28 ["platform"]
       67 GETTABLE                         R9 R10 R11
       68 SETTABLEKS                       R9 R8 K25 ["device"]
       70 GETTABLEKS                       R9 R0 K29 ["settings"]
       72 SETTABLEKS                       R9 R8 K26 ["preferences"]
       74 DUPTABLE                         R9 K31 [{"Child"}]
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R10 R10 K1 ["createElement"]
       78 GETUPVAL                         R11 4
       79 MOVE                             R12 R0
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K30 ["Child"]
       83 CALL                             R6 3 1
       84 SETTABLEKS                       R6 R5 K15 ["FoundationContext"]
       86 CALL                             R2 3 -1
       87 RETURN                           R2 -1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Foundation"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["React"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R1 K7 ["FoundationProvider"]
       19 GETTABLEKS                       R4 R1 K8 ["Enums"]
       21 GETTABLEKS                       R4 R4 K9 ["Theme"]
       23 GETTABLEKS                       R5 R1 K8 ["Enums"]
       25 GETTABLEKS                       R5 R5 K10 ["Device"]
       27 DUPCLOSURE                       R6 K11 [PROTO_1]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 RETURN                           R6 1
