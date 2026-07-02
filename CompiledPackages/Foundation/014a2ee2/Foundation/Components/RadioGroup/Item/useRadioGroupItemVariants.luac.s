PROTO_0:
        0 DUPTABLE                         R1 K2 [{"input", "checkmark"}]
        1 DUPTABLE                         R2 K6 [{["tag"] = "radius-circle", ["cursorRadius"]}]
        2 GETIMPORT                        R3 K9 [UDim.new]
        4 LOADN                            R4 0
        5 GETTABLEKS                       R5 R0 K10 ["Radius"]
        7 GETTABLEKS                       R5 R5 K11 ["Circle"]
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K5 ["cursorRadius"]
       12 SETTABLEKS                       R2 R1 K0 ["input"]
       14 DUPTABLE                         R2 K14 [{["tag"] = "position-center-center anchor-center-center radius-circle", ["style"]}]
       15 GETTABLEKS                       R3 R0 K15 ["Inverse"]
       17 GETTABLEKS                       R3 R3 K16 ["Content"]
       19 GETTABLEKS                       R3 R3 K17 ["Emphasis"]
       21 SETTABLEKS                       R3 R2 K13 ["style"]
       23 SETTABLEKS                       R2 R1 K1 ["checkmark"]
       25 NEWTABLE                         R2 4 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K18 ["XSmall"]
       30 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
       31 DUPTABLE                         R5 K20 [{"size"}]
       32 GETIMPORT                        R6 K23 [UDim2.fromOffset]
       34 GETTABLEKS                       R7 R0 K24 ["Size"]
       36 GETTABLEKS                       R7 R7 K25 ["Size_400"]
       38 GETTABLEKS                       R8 R0 K24 ["Size"]
       40 GETTABLEKS                       R8 R8 K25 ["Size_400"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K19 ["size"]
       45 SETTABLEKS                       R5 R4 K0 ["input"]
       47 DUPTABLE                         R5 K27 [{["tag"] = "size-150"}]
       48 SETTABLEKS                       R5 R4 K1 ["checkmark"]
       50 SETTABLE                         R4 R2 R3
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K28 ["Small"]
       54 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
       55 DUPTABLE                         R5 K20 [{"size"}]
       56 GETIMPORT                        R6 K23 [UDim2.fromOffset]
       58 GETTABLEKS                       R7 R0 K24 ["Size"]
       60 GETTABLEKS                       R7 R7 K29 ["Size_500"]
       62 GETTABLEKS                       R8 R0 K24 ["Size"]
       64 GETTABLEKS                       R8 R8 K29 ["Size_500"]
       66 CALL                             R6 2 1
       67 SETTABLEKS                       R6 R5 K19 ["size"]
       69 SETTABLEKS                       R5 R4 K0 ["input"]
       71 DUPTABLE                         R5 K31 [{["tag"] = "size-200"}]
       72 SETTABLEKS                       R5 R4 K1 ["checkmark"]
       74 SETTABLE                         R4 R2 R3
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R3 R3 K32 ["Medium"]
       78 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
       79 DUPTABLE                         R5 K20 [{"size"}]
       80 GETIMPORT                        R6 K23 [UDim2.fromOffset]
       82 GETTABLEKS                       R7 R0 K24 ["Size"]
       84 GETTABLEKS                       R7 R7 K33 ["Size_600"]
       86 GETTABLEKS                       R8 R0 K24 ["Size"]
       88 GETTABLEKS                       R8 R8 K33 ["Size_600"]
       90 CALL                             R6 2 1
       91 SETTABLEKS                       R6 R5 K19 ["size"]
       93 SETTABLEKS                       R5 R4 K0 ["input"]
       95 DUPTABLE                         R5 K35 [{["tag"] = "size-250"}]
       96 SETTABLEKS                       R5 R4 K1 ["checkmark"]
       98 SETTABLE                         R4 R2 R3
       99 GETUPVAL                         R3 0
      100 GETTABLEKS                       R3 R3 K36 ["Large"]
      102 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
      103 DUPTABLE                         R5 K20 [{"size"}]
      104 GETIMPORT                        R6 K23 [UDim2.fromOffset]
      106 GETTABLEKS                       R7 R0 K24 ["Size"]
      108 GETTABLEKS                       R7 R7 K37 ["Size_700"]
      110 GETTABLEKS                       R8 R0 K24 ["Size"]
      112 GETTABLEKS                       R8 R8 K37 ["Size_700"]
      114 CALL                             R6 2 1
      115 SETTABLEKS                       R6 R5 K19 ["size"]
      117 SETTABLEKS                       R5 R4 K0 ["input"]
      119 DUPTABLE                         R5 K39 [{["tag"] = "size-300"}]
      120 SETTABLEKS                       R5 R4 K1 ["checkmark"]
      122 SETTABLE                         R4 R2 R3
      123 DUPTABLE                         R3 K42 [{"common", "sizes"}]
      124 SETTABLEKS                       R1 R3 K40 ["common"]
      126 SETTABLEKS                       R2 R3 K41 ["sizes"]
      128 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["RadioItem"]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R2 K2 ["common"]
       10 GETTABLEKS                       R6 R2 K3 ["sizes"]
       12 GETTABLE                         R5 R6 R1
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["InternalInput"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["ControlState"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R5 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Providers"]
       39 GETTABLEKS                       R6 R6 K14 ["Style"]
       41 GETTABLEKS                       R6 R6 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Components"]
       48 GETTABLEKS                       R7 R7 K16 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Providers"]
       55 GETTABLEKS                       R8 R8 K14 ["Style"]
       57 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R2
       62 DUPCLOSURE                       R9 K19 [PROTO_1]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R4
       66 RETURN                           R9 1
