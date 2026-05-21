PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationToggleVisualUpdate"]
        3 JUMPIFNOT                        R2 ; [+45]
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
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K14 ["FoundationInternalInputSelectedStylesAndSpacing"]
       23 JUMPIFNOT                        R4 ; [+9]
       24 GETIMPORT                        R3 K17 [UDim.new]
       26 LOADN                            R4 0
       27 GETTABLEKS                       R5 R0 K18 ["Radius"]
       29 GETTABLEKS                       R5 R5 K19 ["Small"]
       31 CALL                             R3 2 1
       32 JUMP                             ; [+5]
       33 GETIMPORT                        R3 K17 [UDim.new]
       35 LOADN                            R4 0
       36 LOADN                            R5 0
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K6 ["cursorRadius"]
       40 SETTABLEKS                       R2 R1 K1 ["input"]
       42 DUPTABLE                         R2 K20 [{"tag"}]
       43 LOADK                            R3 K21 ["position-center-center anchor-center-center content-action-sub-emphasis"]
       44 SETTABLEKS                       R3 R2 K4 ["tag"]
       46 SETTABLEKS                       R2 R1 K2 ["checkmark"]
       48 JUMP                             ; [+41]
       49 DUPTABLE                         R1 K3 [{"input", "checkmark"}]
       50 DUPTABLE                         R2 K22 [{"tag", "checkedStyle", "cursorRadius"}]
       51 LOADK                            R3 K8 ["radius-small"]
       52 SETTABLEKS                       R3 R2 K4 ["tag"]
       54 GETTABLEKS                       R3 R0 K11 ["Color"]
       56 GETTABLEKS                       R3 R3 K12 ["ActionSubEmphasis"]
       58 GETTABLEKS                       R3 R3 K13 ["Background"]
       60 SETTABLEKS                       R3 R2 K9 ["checkedStyle"]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K14 ["FoundationInternalInputSelectedStylesAndSpacing"]
       65 JUMPIFNOT                        R4 ; [+9]
       66 GETIMPORT                        R3 K17 [UDim.new]
       68 LOADN                            R4 0
       69 GETTABLEKS                       R5 R0 K18 ["Radius"]
       71 GETTABLEKS                       R5 R5 K19 ["Small"]
       73 CALL                             R3 2 1
       74 JUMP                             ; [+5]
       75 GETIMPORT                        R3 K17 [UDim.new]
       77 LOADN                            R4 0
       78 LOADN                            R5 0
       79 CALL                             R3 2 1
       80 SETTABLEKS                       R3 R2 K6 ["cursorRadius"]
       82 SETTABLEKS                       R2 R1 K1 ["input"]
       84 DUPTABLE                         R2 K20 [{"tag"}]
       85 LOADK                            R3 K21 ["position-center-center anchor-center-center content-action-sub-emphasis"]
       86 SETTABLEKS                       R3 R2 K4 ["tag"]
       88 SETTABLEKS                       R2 R1 K2 ["checkmark"]
       90 NEWTABLE                         R2 4 0
       92 GETUPVAL                         R3 1
       93 GETTABLEKS                       R3 R3 K23 ["XSmall"]
       95 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
       96 DUPTABLE                         R5 K25 [{"size"}]
       97 GETIMPORT                        R6 K28 [UDim2.fromOffset]
       99 GETTABLEKS                       R7 R0 K29 ["Size"]
      101 GETTABLEKS                       R7 R7 K30 ["Size_400"]
      103 GETTABLEKS                       R8 R0 K29 ["Size"]
      105 GETTABLEKS                       R8 R8 K30 ["Size_400"]
      107 CALL                             R6 2 1
      108 SETTABLEKS                       R6 R5 K24 ["size"]
      110 SETTABLEKS                       R5 R4 K1 ["input"]
      112 DUPTABLE                         R5 K20 [{"tag"}]
      113 GETUPVAL                         R7 0
      114 GETTABLEKS                       R7 R7 K31 ["FoundationMigrateIconNames"]
      116 JUMPIFNOT                        R7 ; [+2]
      117 LOADK                            R6 K32 ["size-400"]
      118 JUMP                             ; [+1]
      119 LOADK                            R6 K33 ["size-300"]
      120 SETTABLEKS                       R6 R5 K4 ["tag"]
      122 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      124 SETTABLE                         R4 R2 R3
      125 GETUPVAL                         R3 1
      126 GETTABLEKS                       R3 R3 K19 ["Small"]
      128 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      129 DUPTABLE                         R5 K25 [{"size"}]
      130 GETIMPORT                        R6 K28 [UDim2.fromOffset]
      132 GETTABLEKS                       R7 R0 K29 ["Size"]
      134 GETTABLEKS                       R7 R7 K34 ["Size_500"]
      136 GETTABLEKS                       R8 R0 K29 ["Size"]
      138 GETTABLEKS                       R8 R8 K34 ["Size_500"]
      140 CALL                             R6 2 1
      141 SETTABLEKS                       R6 R5 K24 ["size"]
      143 SETTABLEKS                       R5 R4 K1 ["input"]
      145 DUPTABLE                         R5 K20 [{"tag"}]
      146 GETUPVAL                         R7 0
      147 GETTABLEKS                       R7 R7 K31 ["FoundationMigrateIconNames"]
      149 JUMPIFNOT                        R7 ; [+2]
      150 LOADK                            R6 K35 ["size-500"]
      151 JUMP                             ; [+1]
      152 LOADK                            R6 K36 ["size-350"]
      153 SETTABLEKS                       R6 R5 K4 ["tag"]
      155 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      157 SETTABLE                         R4 R2 R3
      158 GETUPVAL                         R3 1
      159 GETTABLEKS                       R3 R3 K37 ["Medium"]
      161 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      162 DUPTABLE                         R5 K25 [{"size"}]
      163 GETIMPORT                        R6 K28 [UDim2.fromOffset]
      165 GETTABLEKS                       R7 R0 K29 ["Size"]
      167 GETTABLEKS                       R7 R7 K38 ["Size_600"]
      169 GETTABLEKS                       R8 R0 K29 ["Size"]
      171 GETTABLEKS                       R8 R8 K38 ["Size_600"]
      173 CALL                             R6 2 1
      174 SETTABLEKS                       R6 R5 K24 ["size"]
      176 SETTABLEKS                       R5 R4 K1 ["input"]
      178 DUPTABLE                         R5 K20 [{"tag"}]
      179 GETUPVAL                         R7 0
      180 GETTABLEKS                       R7 R7 K31 ["FoundationMigrateIconNames"]
      182 JUMPIFNOT                        R7 ; [+2]
      183 LOADK                            R6 K39 ["size-600"]
      184 JUMP                             ; [+1]
      185 LOADK                            R6 K32 ["size-400"]
      186 SETTABLEKS                       R6 R5 K4 ["tag"]
      188 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      190 SETTABLE                         R4 R2 R3
      191 GETUPVAL                         R3 1
      192 GETTABLEKS                       R3 R3 K40 ["Large"]
      194 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      195 DUPTABLE                         R5 K25 [{"size"}]
      196 GETIMPORT                        R6 K28 [UDim2.fromOffset]
      198 GETTABLEKS                       R7 R0 K29 ["Size"]
      200 GETTABLEKS                       R7 R7 K41 ["Size_700"]
      202 GETTABLEKS                       R8 R0 K29 ["Size"]
      204 GETTABLEKS                       R8 R8 K41 ["Size_700"]
      206 CALL                             R6 2 1
      207 SETTABLEKS                       R6 R5 K24 ["size"]
      209 SETTABLEKS                       R5 R4 K1 ["input"]
      211 DUPTABLE                         R5 K20 [{"tag"}]
      212 GETUPVAL                         R7 0
      213 GETTABLEKS                       R7 R7 K31 ["FoundationMigrateIconNames"]
      215 JUMPIFNOT                        R7 ; [+2]
      216 LOADK                            R6 K42 ["size-700"]
      217 JUMP                             ; [+1]
      218 LOADK                            R6 K35 ["size-500"]
      219 SETTABLEKS                       R6 R5 K4 ["tag"]
      221 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      223 SETTABLE                         R4 R2 R3
      224 DUPTABLE                         R3 K45 [{"common", "sizes"}]
      225 SETTABLEKS                       R1 R3 K43 ["common"]
      227 SETTABLEKS                       R2 R3 K44 ["sizes"]
      229 RETURN                           R3 1

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
