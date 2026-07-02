PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationToggleVisualUpdate"]
        3 JUMPIFNOT                        R2 ; [+39]
        4 DUPTABLE                         R1 K3 [{"input", "checkmark"}]
        5 DUPTABLE                         R2 K8 [{["tag"] = "radius-small", ["colors"], ["cursorRadius"]}]
        6 DUPTABLE                         R3 K10 [{"checkedStyle"}]
        7 GETTABLEKS                       R4 R0 K11 ["Color"]
        9 GETTABLEKS                       R4 R4 K12 ["ActionSubEmphasis"]
       11 GETTABLEKS                       R4 R4 K13 ["Background"]
       13 SETTABLEKS                       R4 R3 K9 ["checkedStyle"]
       15 SETTABLEKS                       R3 R2 K6 ["colors"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K14 ["FoundationInternalInputSelectedStylesAndSpacing"]
       20 JUMPIFNOT                        R4 ; [+9]
       21 GETIMPORT                        R3 K17 [UDim.new]
       23 LOADN                            R4 0
       24 GETTABLEKS                       R5 R0 K18 ["Radius"]
       26 GETTABLEKS                       R5 R5 K19 ["Small"]
       28 CALL                             R3 2 1
       29 JUMP                             ; [+5]
       30 GETIMPORT                        R3 K17 [UDim.new]
       32 LOADN                            R4 0
       33 LOADN                            R5 0
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K7 ["cursorRadius"]
       37 SETTABLEKS                       R2 R1 K1 ["input"]
       39 DUPTABLE                         R2 K21 [{["tag"] = "position-center-center anchor-center-center content-action-sub-emphasis"}]
       40 SETTABLEKS                       R2 R1 K2 ["checkmark"]
       42 JUMP                             ; [+35]
       43 DUPTABLE                         R1 K3 [{"input", "checkmark"}]
       44 DUPTABLE                         R2 K22 [{["tag"] = "radius-small", ["checkedStyle"], ["cursorRadius"]}]
       45 GETTABLEKS                       R3 R0 K11 ["Color"]
       47 GETTABLEKS                       R3 R3 K12 ["ActionSubEmphasis"]
       49 GETTABLEKS                       R3 R3 K13 ["Background"]
       51 SETTABLEKS                       R3 R2 K9 ["checkedStyle"]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K14 ["FoundationInternalInputSelectedStylesAndSpacing"]
       56 JUMPIFNOT                        R4 ; [+9]
       57 GETIMPORT                        R3 K17 [UDim.new]
       59 LOADN                            R4 0
       60 GETTABLEKS                       R5 R0 K18 ["Radius"]
       62 GETTABLEKS                       R5 R5 K19 ["Small"]
       64 CALL                             R3 2 1
       65 JUMP                             ; [+5]
       66 GETIMPORT                        R3 K17 [UDim.new]
       68 LOADN                            R4 0
       69 LOADN                            R5 0
       70 CALL                             R3 2 1
       71 SETTABLEKS                       R3 R2 K7 ["cursorRadius"]
       73 SETTABLEKS                       R2 R1 K1 ["input"]
       75 DUPTABLE                         R2 K21 [{["tag"] = "position-center-center anchor-center-center content-action-sub-emphasis"}]
       76 SETTABLEKS                       R2 R1 K2 ["checkmark"]
       78 NEWTABLE                         R2 4 0
       80 GETUPVAL                         R3 1
       81 GETTABLEKS                       R3 R3 K23 ["XSmall"]
       83 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
       84 DUPTABLE                         R5 K25 [{"size"}]
       85 GETIMPORT                        R6 K28 [UDim2.fromOffset]
       87 GETTABLEKS                       R7 R0 K29 ["Size"]
       89 GETTABLEKS                       R7 R7 K30 ["Size_400"]
       91 GETTABLEKS                       R8 R0 K29 ["Size"]
       93 GETTABLEKS                       R8 R8 K30 ["Size_400"]
       95 CALL                             R6 2 1
       96 SETTABLEKS                       R6 R5 K24 ["size"]
       98 SETTABLEKS                       R5 R4 K1 ["input"]
      100 DUPTABLE                         R5 K31 [{"tag"}]
      101 GETUPVAL                         R7 0
      102 GETTABLEKS                       R7 R7 K32 ["FoundationMigrateIconNames"]
      104 JUMPIFNOT                        R7 ; [+2]
      105 LOADK                            R6 K33 ["size-400"]
      106 JUMP                             ; [+1]
      107 LOADK                            R6 K34 ["size-300"]
      108 SETTABLEKS                       R6 R5 K4 ["tag"]
      110 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      112 SETTABLE                         R4 R2 R3
      113 GETUPVAL                         R3 1
      114 GETTABLEKS                       R3 R3 K19 ["Small"]
      116 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      117 DUPTABLE                         R5 K25 [{"size"}]
      118 GETIMPORT                        R6 K28 [UDim2.fromOffset]
      120 GETTABLEKS                       R7 R0 K29 ["Size"]
      122 GETTABLEKS                       R7 R7 K35 ["Size_500"]
      124 GETTABLEKS                       R8 R0 K29 ["Size"]
      126 GETTABLEKS                       R8 R8 K35 ["Size_500"]
      128 CALL                             R6 2 1
      129 SETTABLEKS                       R6 R5 K24 ["size"]
      131 SETTABLEKS                       R5 R4 K1 ["input"]
      133 DUPTABLE                         R5 K31 [{"tag"}]
      134 GETUPVAL                         R7 0
      135 GETTABLEKS                       R7 R7 K32 ["FoundationMigrateIconNames"]
      137 JUMPIFNOT                        R7 ; [+2]
      138 LOADK                            R6 K36 ["size-500"]
      139 JUMP                             ; [+1]
      140 LOADK                            R6 K37 ["size-350"]
      141 SETTABLEKS                       R6 R5 K4 ["tag"]
      143 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      145 SETTABLE                         R4 R2 R3
      146 GETUPVAL                         R3 1
      147 GETTABLEKS                       R3 R3 K38 ["Medium"]
      149 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      150 DUPTABLE                         R5 K25 [{"size"}]
      151 GETIMPORT                        R6 K28 [UDim2.fromOffset]
      153 GETTABLEKS                       R7 R0 K29 ["Size"]
      155 GETTABLEKS                       R7 R7 K39 ["Size_600"]
      157 GETTABLEKS                       R8 R0 K29 ["Size"]
      159 GETTABLEKS                       R8 R8 K39 ["Size_600"]
      161 CALL                             R6 2 1
      162 SETTABLEKS                       R6 R5 K24 ["size"]
      164 SETTABLEKS                       R5 R4 K1 ["input"]
      166 DUPTABLE                         R5 K31 [{"tag"}]
      167 GETUPVAL                         R7 0
      168 GETTABLEKS                       R7 R7 K32 ["FoundationMigrateIconNames"]
      170 JUMPIFNOT                        R7 ; [+2]
      171 LOADK                            R6 K40 ["size-600"]
      172 JUMP                             ; [+1]
      173 LOADK                            R6 K33 ["size-400"]
      174 SETTABLEKS                       R6 R5 K4 ["tag"]
      176 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      178 SETTABLE                         R4 R2 R3
      179 GETUPVAL                         R3 1
      180 GETTABLEKS                       R3 R3 K41 ["Large"]
      182 DUPTABLE                         R4 K3 [{"input", "checkmark"}]
      183 DUPTABLE                         R5 K25 [{"size"}]
      184 GETIMPORT                        R6 K28 [UDim2.fromOffset]
      186 GETTABLEKS                       R7 R0 K29 ["Size"]
      188 GETTABLEKS                       R7 R7 K42 ["Size_700"]
      190 GETTABLEKS                       R8 R0 K29 ["Size"]
      192 GETTABLEKS                       R8 R8 K42 ["Size_700"]
      194 CALL                             R6 2 1
      195 SETTABLEKS                       R6 R5 K24 ["size"]
      197 SETTABLEKS                       R5 R4 K1 ["input"]
      199 DUPTABLE                         R5 K31 [{"tag"}]
      200 GETUPVAL                         R7 0
      201 GETTABLEKS                       R7 R7 K32 ["FoundationMigrateIconNames"]
      203 JUMPIFNOT                        R7 ; [+2]
      204 LOADK                            R6 K43 ["size-700"]
      205 JUMP                             ; [+1]
      206 LOADK                            R6 K36 ["size-500"]
      207 SETTABLEKS                       R6 R5 K4 ["tag"]
      209 SETTABLEKS                       R5 R4 K2 ["checkmark"]
      211 SETTABLE                         R4 R2 R3
      212 DUPTABLE                         R3 K46 [{"common", "sizes"}]
      213 SETTABLEKS                       R1 R3 K44 ["common"]
      215 SETTABLEKS                       R2 R3 K45 ["sizes"]
      217 RETURN                           R3 1

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
