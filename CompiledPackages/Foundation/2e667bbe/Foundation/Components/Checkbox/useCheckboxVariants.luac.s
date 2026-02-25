PROTO_0:
        0 DUPTABLE                         R1 K2 [{"input", "checkmark"}]
        1 DUPTABLE                         R2 K6 [{"tag", "checkedStyle", "cursorRadius"}]
        2 LOADK                            R3 K7 ["radius-small"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 GETTABLEKS                       R5 R0 K8 ["Color"]
        7 GETTABLEKS                       R4 R5 K9 ["ActionSubEmphasis"]
        9 GETTABLEKS                       R3 R4 K10 ["Background"]
       11 SETTABLEKS                       R3 R2 K4 ["checkedStyle"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K11 ["FoundationInternalInputSelectedStylesAndSpacing"]
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETIMPORT                        R3 K14 [UDim.new]
       19 LOADN                            R4 0
       20 GETTABLEKS                       R6 R0 K15 ["Radius"]
       22 GETTABLEKS                       R5 R6 K16 ["Small"]
       24 CALL                             R3 2 1
       25 JUMP                             ; [+5]
       26 GETIMPORT                        R3 K14 [UDim.new]
       28 LOADN                            R4 0
       29 LOADN                            R5 0
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K5 ["cursorRadius"]
       33 SETTABLEKS                       R2 R1 K0 ["input"]
       35 DUPTABLE                         R2 K17 [{"tag"}]
       36 LOADK                            R3 K18 ["position-center-center anchor-center-center content-action-sub-emphasis"]
       37 SETTABLEKS                       R3 R2 K3 ["tag"]
       39 SETTABLEKS                       R2 R1 K1 ["checkmark"]
       41 NEWTABLE                         R2 4 0
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R3 R4 K19 ["XSmall"]
       46 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
       47 DUPTABLE                         R5 K21 [{"size"}]
       48 GETIMPORT                        R6 K24 [UDim2.fromOffset]
       50 GETTABLEKS                       R8 R0 K25 ["Size"]
       52 GETTABLEKS                       R7 R8 K26 ["Size_400"]
       54 GETTABLEKS                       R9 R0 K25 ["Size"]
       56 GETTABLEKS                       R8 R9 K26 ["Size_400"]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K20 ["size"]
       61 SETTABLEKS                       R5 R4 K0 ["input"]
       63 DUPTABLE                         R5 K17 [{"tag"}]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R7 R8 K27 ["FoundationMigrateIconNames"]
       67 JUMPIFNOT                        R7 ; [+2]
       68 LOADK                            R6 K28 ["size-400"]
       69 JUMP                             ; [+1]
       70 LOADK                            R6 K29 ["size-300"]
       71 SETTABLEKS                       R6 R5 K3 ["tag"]
       73 SETTABLEKS                       R5 R4 K1 ["checkmark"]
       75 SETTABLE                         R4 R2 R3
       76 GETUPVAL                         R4 1
       77 GETTABLEKS                       R3 R4 K16 ["Small"]
       79 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
       80 DUPTABLE                         R5 K21 [{"size"}]
       81 GETIMPORT                        R6 K24 [UDim2.fromOffset]
       83 GETTABLEKS                       R8 R0 K25 ["Size"]
       85 GETTABLEKS                       R7 R8 K30 ["Size_500"]
       87 GETTABLEKS                       R9 R0 K25 ["Size"]
       89 GETTABLEKS                       R8 R9 K30 ["Size_500"]
       91 CALL                             R6 2 1
       92 SETTABLEKS                       R6 R5 K20 ["size"]
       94 SETTABLEKS                       R5 R4 K0 ["input"]
       96 DUPTABLE                         R5 K17 [{"tag"}]
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R7 R8 K27 ["FoundationMigrateIconNames"]
      100 JUMPIFNOT                        R7 ; [+2]
      101 LOADK                            R6 K31 ["size-500"]
      102 JUMP                             ; [+1]
      103 LOADK                            R6 K32 ["size-350"]
      104 SETTABLEKS                       R6 R5 K3 ["tag"]
      106 SETTABLEKS                       R5 R4 K1 ["checkmark"]
      108 SETTABLE                         R4 R2 R3
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R3 R4 K33 ["Medium"]
      112 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
      113 DUPTABLE                         R5 K21 [{"size"}]
      114 GETIMPORT                        R6 K24 [UDim2.fromOffset]
      116 GETTABLEKS                       R8 R0 K25 ["Size"]
      118 GETTABLEKS                       R7 R8 K34 ["Size_600"]
      120 GETTABLEKS                       R9 R0 K25 ["Size"]
      122 GETTABLEKS                       R8 R9 K34 ["Size_600"]
      124 CALL                             R6 2 1
      125 SETTABLEKS                       R6 R5 K20 ["size"]
      127 SETTABLEKS                       R5 R4 K0 ["input"]
      129 DUPTABLE                         R5 K17 [{"tag"}]
      130 GETUPVAL                         R8 0
      131 GETTABLEKS                       R7 R8 K27 ["FoundationMigrateIconNames"]
      133 JUMPIFNOT                        R7 ; [+2]
      134 LOADK                            R6 K35 ["size-600"]
      135 JUMP                             ; [+1]
      136 LOADK                            R6 K28 ["size-400"]
      137 SETTABLEKS                       R6 R5 K3 ["tag"]
      139 SETTABLEKS                       R5 R4 K1 ["checkmark"]
      141 SETTABLE                         R4 R2 R3
      142 GETUPVAL                         R4 1
      143 GETTABLEKS                       R3 R4 K36 ["Large"]
      145 DUPTABLE                         R4 K2 [{"input", "checkmark"}]
      146 DUPTABLE                         R5 K21 [{"size"}]
      147 GETIMPORT                        R6 K24 [UDim2.fromOffset]
      149 GETTABLEKS                       R8 R0 K25 ["Size"]
      151 GETTABLEKS                       R7 R8 K37 ["Size_700"]
      153 GETTABLEKS                       R9 R0 K25 ["Size"]
      155 GETTABLEKS                       R8 R9 K37 ["Size_700"]
      157 CALL                             R6 2 1
      158 SETTABLEKS                       R6 R5 K20 ["size"]
      160 SETTABLEKS                       R5 R4 K0 ["input"]
      162 DUPTABLE                         R5 K17 [{"tag"}]
      163 GETUPVAL                         R8 0
      164 GETTABLEKS                       R7 R8 K27 ["FoundationMigrateIconNames"]
      166 JUMPIFNOT                        R7 ; [+2]
      167 LOADK                            R6 K38 ["size-700"]
      168 JUMP                             ; [+1]
      169 LOADK                            R6 K31 ["size-500"]
      170 SETTABLEKS                       R6 R5 K3 ["tag"]
      172 SETTABLEKS                       R5 R4 K1 ["checkmark"]
      174 SETTABLE                         R4 R2 R3
      175 DUPTABLE                         R3 K41 [{"common", "sizes"}]
      176 SETTABLEKS                       R1 R3 K39 ["common"]
      178 SETTABLEKS                       R2 R3 K40 ["sizes"]
      180 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["InternalInput"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Enums"]
       32 GETTABLEKS                       R5 R6 K12 ["InputSize"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Enums"]
       39 GETTABLEKS                       R6 R7 K13 ["ControlState"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Utility"]
       46 GETTABLEKS                       R7 R8 K14 ["composeStyleVariant"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Providers"]
       53 GETTABLEKS                       R9 R10 K16 ["Style"]
       55 GETTABLEKS                       R8 R9 K17 ["Tokens"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K15 ["Providers"]
       62 GETTABLEKS                       R10 R11 K16 ["Style"]
       64 GETTABLEKS                       R9 R10 K18 ["VariantsContext"]
       66 CALL                             R8 1 1
       67 DUPCLOSURE                       R9 K19 [PROTO_0]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R4
       70 DUPCLOSURE                       R10 K20 [PROTO_1]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R6
       74 RETURN                           R10 1
