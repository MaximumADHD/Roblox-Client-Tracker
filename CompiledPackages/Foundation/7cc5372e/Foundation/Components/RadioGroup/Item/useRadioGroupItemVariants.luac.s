PROTO_0:
        0 DUPTABLE                         R1 K2 [{"input", "checkmark"}]
        1 DUPTABLE                         R2 K5 [{"tag", "cursorRadius"}]
        2 LOADK                            R3 K6 ["radius-circle"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 GETIMPORT                        R3 K9 [UDim.new]
        7 LOADN                            R4 0
        8 GETTABLEKS                       R6 R0 K10 ["Radius"]
       10 GETTABLEKS                       R5 R6 K11 ["Circle"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K4 ["cursorRadius"]
       15 SETTABLEKS                       R2 R1 K0 ["input"]
       17 DUPTABLE                         R2 K13 [{"tag", "style"}]
       18 LOADK                            R3 K14 ["position-center-center anchor-center-center radius-circle"]
       19 SETTABLEKS                       R3 R2 K3 ["tag"]
       21 GETTABLEKS                       R5 R0 K15 ["Inverse"]
       23 GETTABLEKS                       R4 R5 K16 ["Content"]
       25 GETTABLEKS                       R3 R4 K17 ["Emphasis"]
       27 SETTABLEKS                       R3 R2 K12 ["style"]
       29 SETTABLEKS                       R2 R1 K1 ["checkmark"]
       31 NEWTABLE                         R2 4 0
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K18 ["XSmall"]
       36 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
       37 DUPTABLE                         R5 K20 [{"size"}]
       38 GETIMPORT                        R6 K23 [UDim2.fromOffset]
       40 GETTABLEKS                       R8 R0 K24 ["Size"]
       42 GETTABLEKS                       R7 R8 K25 ["Size_400"]
       44 GETTABLEKS                       R9 R0 K24 ["Size"]
       46 GETTABLEKS                       R8 R9 K25 ["Size_400"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K19 ["size"]
       51 SETTABLEKS                       R5 R4 K0 ["input"]
       53 DUPTABLE                         R5 K26 [{"tag"}]
       54 LOADK                            R6 K27 ["size-150"]
       55 SETTABLEKS                       R6 R5 K3 ["tag"]
       57 SETTABLEKS                       R5 R4 K1 ["checkmark"]
       59 SETTABLE                         R4 R2 R3
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R3 R4 K28 ["Small"]
       63 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
       64 DUPTABLE                         R5 K20 [{"size"}]
       65 GETIMPORT                        R6 K23 [UDim2.fromOffset]
       67 GETTABLEKS                       R8 R0 K24 ["Size"]
       69 GETTABLEKS                       R7 R8 K29 ["Size_500"]
       71 GETTABLEKS                       R9 R0 K24 ["Size"]
       73 GETTABLEKS                       R8 R9 K29 ["Size_500"]
       75 CALL                             R6 2 1
       76 SETTABLEKS                       R6 R5 K19 ["size"]
       78 SETTABLEKS                       R5 R4 K0 ["input"]
       80 DUPTABLE                         R5 K26 [{"tag"}]
       81 LOADK                            R6 K30 ["size-200"]
       82 SETTABLEKS                       R6 R5 K3 ["tag"]
       84 SETTABLEKS                       R5 R4 K1 ["checkmark"]
       86 SETTABLE                         R4 R2 R3
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R3 R4 K31 ["Medium"]
       90 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
       91 DUPTABLE                         R5 K20 [{"size"}]
       92 GETIMPORT                        R6 K23 [UDim2.fromOffset]
       94 GETTABLEKS                       R8 R0 K24 ["Size"]
       96 GETTABLEKS                       R7 R8 K32 ["Size_600"]
       98 GETTABLEKS                       R9 R0 K24 ["Size"]
      100 GETTABLEKS                       R8 R9 K32 ["Size_600"]
      102 CALL                             R6 2 1
      103 SETTABLEKS                       R6 R5 K19 ["size"]
      105 SETTABLEKS                       R5 R4 K0 ["input"]
      107 DUPTABLE                         R5 K26 [{"tag"}]
      108 LOADK                            R6 K33 ["size-250"]
      109 SETTABLEKS                       R6 R5 K3 ["tag"]
      111 SETTABLEKS                       R5 R4 K1 ["checkmark"]
      113 SETTABLE                         R4 R2 R3
      114 GETUPVAL                         R4 0
      115 GETTABLEKS                       R3 R4 K34 ["Large"]
      117 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
      118 DUPTABLE                         R5 K20 [{"size"}]
      119 GETIMPORT                        R6 K23 [UDim2.fromOffset]
      121 GETTABLEKS                       R8 R0 K24 ["Size"]
      123 GETTABLEKS                       R7 R8 K35 ["Size_700"]
      125 GETTABLEKS                       R9 R0 K24 ["Size"]
      127 GETTABLEKS                       R8 R9 K35 ["Size_700"]
      129 CALL                             R6 2 1
      130 SETTABLEKS                       R6 R5 K19 ["size"]
      132 SETTABLEKS                       R5 R4 K0 ["input"]
      134 DUPTABLE                         R5 K26 [{"tag"}]
      135 LOADK                            R6 K36 ["size-300"]
      136 SETTABLEKS                       R6 R5 K3 ["tag"]
      138 SETTABLEKS                       R5 R4 K1 ["checkmark"]
      140 SETTABLE                         R4 R2 R3
      141 DUPTABLE                         R3 K39 [{"common", "sizes"}]
      142 SETTABLEKS                       R1 R3 K37 ["common"]
      144 SETTABLEKS                       R2 R3 K38 ["sizes"]
      146 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["InternalInput"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["ControlState"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R6 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R8 K14 ["Style"]
       41 GETTABLEKS                       R6 R7 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Components"]
       48 GETTABLEKS                       R7 R8 K16 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K13 ["Providers"]
       55 GETTABLEKS                       R9 R10 K14 ["Style"]
       57 GETTABLEKS                       R8 R9 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R2
       62 DUPCLOSURE                       R9 K19 [PROTO_1]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R4
       66 RETURN                           R9 1
