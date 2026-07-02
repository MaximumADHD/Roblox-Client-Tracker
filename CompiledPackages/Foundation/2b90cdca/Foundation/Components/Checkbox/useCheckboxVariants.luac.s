PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationToggleVisualUpdate"]
        3 JUMPIFNOT                        R2 ; [+29]
        4 DUPTABLE                         R1 K3 [{"input", "checkmark"}]
        5 DUPTABLE                         R2 K8 [{["tag"] = "radius-small", ["colors"], ["cursorRadius"]}]
        6 DUPTABLE                         R3 K10 [{"checkedStyle"}]
        7 GETTABLEKS                       R4 R0 K11 ["Color"]
        9 GETTABLEKS                       R4 R4 K12 ["ActionSubEmphasis"]
       11 GETTABLEKS                       R4 R4 K13 ["Background"]
       13 SETTABLEKS                       R4 R3 K9 ["checkedStyle"]
       15 SETTABLEKS                       R3 R2 K6 ["colors"]
       17 GETIMPORT                        R3 K16 [UDim.new]
       19 LOADN                            R4 0
       20 GETTABLEKS                       R5 R0 K17 ["Radius"]
       22 GETTABLEKS                       R5 R5 K18 ["Small"]
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K7 ["cursorRadius"]
       27 SETTABLEKS                       R2 R1 K1 ["input"]
       29 DUPTABLE                         R2 K20 [{["tag"] = "position-center-center anchor-center-center content-action-sub-emphasis"}]
       30 SETTABLEKS                       R2 R1 K2 ["checkmark"]
       32 JUMP                             ; [+25]
       33 DUPTABLE                         R1 K3 [{"input", "checkmark"}]
       34 DUPTABLE                         R2 K21 [{["tag"] = "radius-small", ["checkedStyle"], ["cursorRadius"]}]
       35 GETTABLEKS                       R3 R0 K11 ["Color"]
       37 GETTABLEKS                       R3 R3 K12 ["ActionSubEmphasis"]
       39 GETTABLEKS                       R3 R3 K13 ["Background"]
       41 SETTABLEKS                       R3 R2 K9 ["checkedStyle"]
       43 GETIMPORT                        R3 K16 [UDim.new]
       45 LOADN                            R4 0
       46 GETTABLEKS                       R5 R0 K17 ["Radius"]
       48 GETTABLEKS                       R5 R5 K18 ["Small"]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R2 K7 ["cursorRadius"]
       53 SETTABLEKS                       R2 R1 K1 ["input"]
       55 DUPTABLE                         R2 K20 [{["tag"] = "position-center-center anchor-center-center content-action-sub-emphasis"}]
       56 SETTABLEKS                       R2 R1 K2 ["checkmark"]
       58 NEWTABLE                         R2 4 0
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K22 ["XSmall"]
       63 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
       64 DUPTABLE                         R5 K24 [{"size"}]
       65 GETIMPORT                        R6 K27 [UDim2.fromOffset]
       67 GETTABLEKS                       R7 R0 K28 ["Size"]
       69 GETTABLEKS                       R7 R7 K29 ["Size_400"]
       71 GETTABLEKS                       R8 R0 K28 ["Size"]
       73 GETTABLEKS                       R8 R8 K29 ["Size_400"]
       75 CALL                             R6 2 1
       76 SETTABLEKS                       R6 R5 K23 ["size"]
       78 SETTABLEKS                       R5 R4 K1 ["input"]
       80 DUPTABLE                         R5 K31 [{["tag"] = "size-400"}]
       81 SETTABLEKS                       R5 R4 K2 ["checkmark"]
       83 SETTABLE                         R4 R2 R3
       84 GETUPVAL                         R3 1
       85 GETTABLEKS                       R3 R3 K18 ["Small"]
       87 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
       88 DUPTABLE                         R5 K24 [{"size"}]
       89 GETIMPORT                        R6 K27 [UDim2.fromOffset]
       91 GETTABLEKS                       R7 R0 K28 ["Size"]
       93 GETTABLEKS                       R7 R7 K32 ["Size_500"]
       95 GETTABLEKS                       R8 R0 K28 ["Size"]
       97 GETTABLEKS                       R8 R8 K32 ["Size_500"]
       99 CALL                             R6 2 1
      100 SETTABLEKS                       R6 R5 K23 ["size"]
      102 SETTABLEKS                       R5 R4 K1 ["input"]
      104 DUPTABLE                         R5 K34 [{["tag"] = "size-500"}]
      105 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      107 SETTABLE                         R4 R2 R3
      108 GETUPVAL                         R3 1
      109 GETTABLEKS                       R3 R3 K35 ["Medium"]
      111 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      112 DUPTABLE                         R5 K24 [{"size"}]
      113 GETIMPORT                        R6 K27 [UDim2.fromOffset]
      115 GETTABLEKS                       R7 R0 K28 ["Size"]
      117 GETTABLEKS                       R7 R7 K36 ["Size_600"]
      119 GETTABLEKS                       R8 R0 K28 ["Size"]
      121 GETTABLEKS                       R8 R8 K36 ["Size_600"]
      123 CALL                             R6 2 1
      124 SETTABLEKS                       R6 R5 K23 ["size"]
      126 SETTABLEKS                       R5 R4 K1 ["input"]
      128 DUPTABLE                         R5 K38 [{["tag"] = "size-600"}]
      129 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      131 SETTABLE                         R4 R2 R3
      132 GETUPVAL                         R3 1
      133 GETTABLEKS                       R3 R3 K39 ["Large"]
      135 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      136 DUPTABLE                         R5 K24 [{"size"}]
      137 GETIMPORT                        R6 K27 [UDim2.fromOffset]
      139 GETTABLEKS                       R7 R0 K28 ["Size"]
      141 GETTABLEKS                       R7 R7 K40 ["Size_700"]
      143 GETTABLEKS                       R8 R0 K28 ["Size"]
      145 GETTABLEKS                       R8 R8 K40 ["Size_700"]
      147 CALL                             R6 2 1
      148 SETTABLEKS                       R6 R5 K23 ["size"]
      150 SETTABLEKS                       R5 R4 K1 ["input"]
      152 DUPTABLE                         R5 K42 [{["tag"] = "size-700"}]
      153 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      155 SETTABLE                         R4 R2 R3
      156 DUPTABLE                         R3 K45 [{"common", "sizes"}]
      157 SETTABLEKS                       R1 R3 K43 ["common"]
      159 SETTABLEKS                       R2 R3 K44 ["sizes"]
      161 RETURN                           R3 1

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
