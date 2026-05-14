PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationToggleVisualUpdate"]
        3 JUMPIFNOT                        R2 ; [+35]
        4 DUPTABLE                         R1 K3 [{"input", "checkmark"}]
        5 DUPTABLE                         R2 K7 [{"tag", "colors", "cursorRadius"}]
        6 LOADK                            R3 K8 ["radius-small"]
        7 SETTABLEKS                       R3 R2 K4 ["tag"]
        9 DUPTABLE                         R3 K10 [{"checkedStyle"}]
       10 GETTABLEKS                       R4 R0 K11 ["Color"]
       12 GETTABLEKS                       R4 R4 K12 ["ActionSubEmphasis"]
       14 GETTABLEKS                       R4 R4 K13 ["Background"]
       16 SETTABLEKS                       R4 R3 K9 ["checkedStyle"]
       18 SETTABLEKS                       R3 R2 K5 ["colors"]
       20 GETIMPORT                        R3 K16 [UDim.new]
       22 LOADN                            R4 0
       23 GETTABLEKS                       R5 R0 K17 ["Radius"]
       25 GETTABLEKS                       R5 R5 K18 ["Small"]
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K6 ["cursorRadius"]
       30 SETTABLEKS                       R2 R1 K1 ["input"]
       32 DUPTABLE                         R2 K19 [{"tag"}]
       33 LOADK                            R3 K20 ["position-center-center anchor-center-center content-action-sub-emphasis"]
       34 SETTABLEKS                       R3 R2 K4 ["tag"]
       36 SETTABLEKS                       R2 R1 K2 ["checkmark"]
       38 JUMP                             ; [+31]
       39 DUPTABLE                         R1 K3 [{"input", "checkmark"}]
       40 DUPTABLE                         R2 K21 [{"tag", "checkedStyle", "cursorRadius"}]
       41 LOADK                            R3 K8 ["radius-small"]
       42 SETTABLEKS                       R3 R2 K4 ["tag"]
       44 GETTABLEKS                       R3 R0 K11 ["Color"]
       46 GETTABLEKS                       R3 R3 K12 ["ActionSubEmphasis"]
       48 GETTABLEKS                       R3 R3 K13 ["Background"]
       50 SETTABLEKS                       R3 R2 K9 ["checkedStyle"]
       52 GETIMPORT                        R3 K16 [UDim.new]
       54 LOADN                            R4 0
       55 GETTABLEKS                       R5 R0 K17 ["Radius"]
       57 GETTABLEKS                       R5 R5 K18 ["Small"]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K6 ["cursorRadius"]
       62 SETTABLEKS                       R2 R1 K1 ["input"]
       64 DUPTABLE                         R2 K19 [{"tag"}]
       65 LOADK                            R3 K20 ["position-center-center anchor-center-center content-action-sub-emphasis"]
       66 SETTABLEKS                       R3 R2 K4 ["tag"]
       68 SETTABLEKS                       R2 R1 K2 ["checkmark"]
       70 NEWTABLE                         R2 4 0
       72 GETUPVAL                         R3 1
       73 GETTABLEKS                       R3 R3 K22 ["XSmall"]
       75 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
       76 DUPTABLE                         R5 K24 [{"size"}]
       77 GETIMPORT                        R6 K27 [UDim2.fromOffset]
       79 GETTABLEKS                       R7 R0 K28 ["Size"]
       81 GETTABLEKS                       R7 R7 K29 ["Size_400"]
       83 GETTABLEKS                       R8 R0 K28 ["Size"]
       85 GETTABLEKS                       R8 R8 K29 ["Size_400"]
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K23 ["size"]
       90 SETTABLEKS                       R5 R4 K1 ["input"]
       92 DUPTABLE                         R5 K19 [{"tag"}]
       93 LOADK                            R6 K30 ["size-400"]
       94 SETTABLEKS                       R6 R5 K4 ["tag"]
       96 SETTABLEKS                       R5 R4 K2 ["checkmark"]
       98 SETTABLE                         R4 R2 R3
       99 GETUPVAL                         R3 1
      100 GETTABLEKS                       R3 R3 K18 ["Small"]
      102 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      103 DUPTABLE                         R5 K24 [{"size"}]
      104 GETIMPORT                        R6 K27 [UDim2.fromOffset]
      106 GETTABLEKS                       R7 R0 K28 ["Size"]
      108 GETTABLEKS                       R7 R7 K31 ["Size_500"]
      110 GETTABLEKS                       R8 R0 K28 ["Size"]
      112 GETTABLEKS                       R8 R8 K31 ["Size_500"]
      114 CALL                             R6 2 1
      115 SETTABLEKS                       R6 R5 K23 ["size"]
      117 SETTABLEKS                       R5 R4 K1 ["input"]
      119 DUPTABLE                         R5 K19 [{"tag"}]
      120 LOADK                            R6 K32 ["size-500"]
      121 SETTABLEKS                       R6 R5 K4 ["tag"]
      123 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      125 SETTABLE                         R4 R2 R3
      126 GETUPVAL                         R3 1
      127 GETTABLEKS                       R3 R3 K33 ["Medium"]
      129 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      130 DUPTABLE                         R5 K24 [{"size"}]
      131 GETIMPORT                        R6 K27 [UDim2.fromOffset]
      133 GETTABLEKS                       R7 R0 K28 ["Size"]
      135 GETTABLEKS                       R7 R7 K34 ["Size_600"]
      137 GETTABLEKS                       R8 R0 K28 ["Size"]
      139 GETTABLEKS                       R8 R8 K34 ["Size_600"]
      141 CALL                             R6 2 1
      142 SETTABLEKS                       R6 R5 K23 ["size"]
      144 SETTABLEKS                       R5 R4 K1 ["input"]
      146 DUPTABLE                         R5 K19 [{"tag"}]
      147 LOADK                            R6 K35 ["size-600"]
      148 SETTABLEKS                       R6 R5 K4 ["tag"]
      150 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      152 SETTABLE                         R4 R2 R3
      153 GETUPVAL                         R3 1
      154 GETTABLEKS                       R3 R3 K36 ["Large"]
      156 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      157 DUPTABLE                         R5 K24 [{"size"}]
      158 GETIMPORT                        R6 K27 [UDim2.fromOffset]
      160 GETTABLEKS                       R7 R0 K28 ["Size"]
      162 GETTABLEKS                       R7 R7 K37 ["Size_700"]
      164 GETTABLEKS                       R8 R0 K28 ["Size"]
      166 GETTABLEKS                       R8 R8 K37 ["Size_700"]
      168 CALL                             R6 2 1
      169 SETTABLEKS                       R6 R5 K23 ["size"]
      171 SETTABLEKS                       R5 R4 K1 ["input"]
      173 DUPTABLE                         R5 K19 [{"tag"}]
      174 LOADK                            R6 K38 ["size-700"]
      175 SETTABLEKS                       R6 R5 K4 ["tag"]
      177 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      179 SETTABLE                         R4 R2 R3
      180 DUPTABLE                         R3 K41 [{"common", "sizes"}]
      181 SETTABLEKS                       R1 R3 K39 ["common"]
      183 SETTABLEKS                       R2 R3 K40 ["sizes"]
      185 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["Checkbox"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["InternalInput"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Enums"]
       32 GETTABLEKS                       R5 R5 K12 ["InputSize"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Enums"]
       39 GETTABLEKS                       R6 R6 K13 ["ControlState"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Utility"]
       46 GETTABLEKS                       R7 R7 K14 ["composeStyleVariant"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Providers"]
       53 GETTABLEKS                       R8 R8 K16 ["Style"]
       55 GETTABLEKS                       R8 R8 K17 ["Tokens"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K15 ["Providers"]
       62 GETTABLEKS                       R9 R9 K16 ["Style"]
       64 GETTABLEKS                       R9 R9 K18 ["VariantsContext"]
       66 CALL                             R8 1 1
       67 DUPCLOSURE                       R9 K19 [PROTO_0]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R4
       70 DUPCLOSURE                       R10 K20 [PROTO_1]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R6
       74 RETURN                           R10 1
