PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Small"]
        5 GETIMPORT                        R3 K3 [UDim.new]
        7 LOADN                            R4 0
        8 GETTABLEKS                       R5 R0 K4 ["Padding"]
       10 GETTABLEKS                       R5 R5 K0 ["Small"]
       12 CALL                             R3 2 1
       13 SETTABLE                         R3 R1 R2
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["Medium"]
       17 GETIMPORT                        R3 K3 [UDim.new]
       19 LOADN                            R4 0
       20 GETTABLEKS                       R5 R0 K4 ["Padding"]
       22 GETTABLEKS                       R5 R5 K5 ["Medium"]
       24 CALL                             R3 2 1
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K6 ["Large"]
       29 GETIMPORT                        R3 K3 [UDim.new]
       31 LOADN                            R4 0
       32 GETTABLEKS                       R5 R0 K4 ["Padding"]
       34 GETTABLEKS                       R5 R5 K6 ["Large"]
       36 CALL                             R3 2 1
       37 SETTABLE                         R3 R1 R2
       38 DUPTABLE                         R2 K9 [{"chip", "text"}]
       39 DUPTABLE                         R3 K12 [{["tag"] = "row auto-x align-y-center align-x-center clip radius-circle"}]
       40 SETTABLEKS                       R3 R2 K7 ["chip"]
       42 DUPTABLE                         R3 K14 [{["tag"] = "auto-x size-0-full shrink text-truncate-end"}]
       43 SETTABLEKS                       R3 R2 K8 ["text"]
       45 NEWTABLE                         R3 4 0
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K0 ["Small"]
       50 DUPTABLE                         R5 K9 [{"chip", "text"}]
       51 DUPTABLE                         R6 K16 [{["tag"] = "size-0-600"}]
       52 SETTABLEKS                       R6 R5 K7 ["chip"]
       54 DUPTABLE                         R6 K18 [{["tag"] = "text-label-small"}]
       55 SETTABLEKS                       R6 R5 K8 ["text"]
       57 SETTABLE                         R5 R3 R4
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K5 ["Medium"]
       61 DUPTABLE                         R5 K9 [{"chip", "text"}]
       62 DUPTABLE                         R6 K20 [{["tag"] = "size-0-800"}]
       63 SETTABLEKS                       R6 R5 K7 ["chip"]
       65 DUPTABLE                         R6 K22 [{["tag"] = "text-label-medium"}]
       66 SETTABLEKS                       R6 R5 K8 ["text"]
       68 SETTABLE                         R5 R3 R4
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K6 ["Large"]
       72 DUPTABLE                         R5 K9 [{"chip", "text"}]
       73 DUPTABLE                         R6 K24 [{["tag"] = "size-0-1000"}]
       74 SETTABLEKS                       R6 R5 K7 ["chip"]
       76 DUPTABLE                         R6 K22 [{["tag"] = "text-label-medium"}]
       77 SETTABLEKS                       R6 R5 K8 ["text"]
       79 SETTABLE                         R5 R3 R4
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R5 R5 K25 ["FoundationAddUtilityVariantToChip"]
       83 JUMPIFNOT                        R5 ; [+115]
       84 NEWTABLE                         R4 2 0
       86 GETUPVAL                         R5 2
       87 GETTABLEKS                       R5 R5 K26 ["Utility"]
       89 NEWTABLE                         R6 2 0
       91 LOADB                            R7 1
       92 DUPTABLE                         R8 K9 [{"chip", "text"}]
       93 DUPTABLE                         R9 K28 [{"backgroundStyle"}]
       94 GETTABLEKS                       R10 R0 K29 ["Inverse"]
       96 GETTABLEKS                       R10 R10 K30 ["Surface"]
       98 GETTABLEKS                       R10 R10 K31 ["Surface_0"]
      100 SETTABLEKS                       R10 R9 K27 ["backgroundStyle"]
      102 SETTABLEKS                       R9 R8 K7 ["chip"]
      104 DUPTABLE                         R9 K33 [{"contentStyle"}]
      105 GETTABLEKS                       R10 R0 K29 ["Inverse"]
      107 GETTABLEKS                       R10 R10 K34 ["Content"]
      109 GETTABLEKS                       R10 R10 K35 ["Emphasis"]
      111 SETTABLEKS                       R10 R9 K32 ["contentStyle"]
      113 SETTABLEKS                       R9 R8 K8 ["text"]
      115 SETTABLE                         R8 R6 R7
      116 LOADB                            R7 0
      117 DUPTABLE                         R8 K9 [{"chip", "text"}]
      118 DUPTABLE                         R9 K28 [{"backgroundStyle"}]
      119 GETTABLEKS                       R10 R0 K36 ["Color"]
      121 GETTABLEKS                       R10 R10 K37 ["ActionUtility"]
      123 GETTABLEKS                       R10 R10 K38 ["Background"]
      125 SETTABLEKS                       R10 R9 K27 ["backgroundStyle"]
      127 SETTABLEKS                       R9 R8 K7 ["chip"]
      129 DUPTABLE                         R9 K33 [{"contentStyle"}]
      130 GETTABLEKS                       R10 R0 K36 ["Color"]
      132 GETTABLEKS                       R10 R10 K37 ["ActionUtility"]
      134 GETTABLEKS                       R10 R10 K39 ["Foreground"]
      136 SETTABLEKS                       R10 R9 K32 ["contentStyle"]
      138 SETTABLEKS                       R9 R8 K8 ["text"]
      140 SETTABLE                         R8 R6 R7
      141 SETTABLE                         R6 R4 R5
      142 GETUPVAL                         R5 2
      143 GETTABLEKS                       R5 R5 K40 ["Standard"]
      145 NEWTABLE                         R6 2 0
      147 LOADB                            R7 1
      148 DUPTABLE                         R8 K9 [{"chip", "text"}]
      149 DUPTABLE                         R9 K28 [{"backgroundStyle"}]
      150 GETTABLEKS                       R10 R0 K29 ["Inverse"]
      152 GETTABLEKS                       R10 R10 K30 ["Surface"]
      154 GETTABLEKS                       R10 R10 K31 ["Surface_0"]
      156 SETTABLEKS                       R10 R9 K27 ["backgroundStyle"]
      158 SETTABLEKS                       R9 R8 K7 ["chip"]
      160 DUPTABLE                         R9 K33 [{"contentStyle"}]
      161 GETTABLEKS                       R10 R0 K29 ["Inverse"]
      163 GETTABLEKS                       R10 R10 K34 ["Content"]
      165 GETTABLEKS                       R10 R10 K35 ["Emphasis"]
      167 SETTABLEKS                       R10 R9 K32 ["contentStyle"]
      169 SETTABLEKS                       R9 R8 K8 ["text"]
      171 SETTABLE                         R8 R6 R7
      172 LOADB                            R7 0
      173 DUPTABLE                         R8 K9 [{"chip", "text"}]
      174 DUPTABLE                         R9 K28 [{"backgroundStyle"}]
      175 GETTABLEKS                       R10 R0 K36 ["Color"]
      177 GETTABLEKS                       R10 R10 K41 ["ActionStandard"]
      179 GETTABLEKS                       R10 R10 K38 ["Background"]
      181 SETTABLEKS                       R10 R9 K27 ["backgroundStyle"]
      183 SETTABLEKS                       R9 R8 K7 ["chip"]
      185 DUPTABLE                         R9 K33 [{"contentStyle"}]
      186 GETTABLEKS                       R10 R0 K36 ["Color"]
      188 GETTABLEKS                       R10 R10 K41 ["ActionStandard"]
      190 GETTABLEKS                       R10 R10 K39 ["Foreground"]
      192 SETTABLEKS                       R10 R9 K32 ["contentStyle"]
      194 SETTABLEKS                       R9 R8 K8 ["text"]
      196 SETTABLE                         R8 R6 R7
      197 SETTABLE                         R6 R4 R5
      198 JUMP                             ; [+1]
      199 LOADNIL                          R4
      200 GETUPVAL                         R6 1
      201 GETTABLEKS                       R6 R6 K25 ["FoundationAddUtilityVariantToChip"]
      203 JUMPIFNOT                        R6 ; [+2]
      204 LOADNIL                          R5
      205 JUMP                             ; [+52]
      206 NEWTABLE                         R5 2 0
      208 LOADB                            R6 1
      209 DUPTABLE                         R7 K9 [{"chip", "text"}]
      210 DUPTABLE                         R8 K28 [{"backgroundStyle"}]
      211 GETTABLEKS                       R9 R0 K29 ["Inverse"]
      213 GETTABLEKS                       R9 R9 K30 ["Surface"]
      215 GETTABLEKS                       R9 R9 K31 ["Surface_0"]
      217 SETTABLEKS                       R9 R8 K27 ["backgroundStyle"]
      219 SETTABLEKS                       R8 R7 K7 ["chip"]
      221 DUPTABLE                         R8 K33 [{"contentStyle"}]
      222 GETTABLEKS                       R9 R0 K29 ["Inverse"]
      224 GETTABLEKS                       R9 R9 K34 ["Content"]
      226 GETTABLEKS                       R9 R9 K35 ["Emphasis"]
      228 SETTABLEKS                       R9 R8 K32 ["contentStyle"]
      230 SETTABLEKS                       R8 R7 K8 ["text"]
      232 SETTABLE                         R7 R5 R6
      233 LOADB                            R6 0
      234 DUPTABLE                         R7 K9 [{"chip", "text"}]
      235 DUPTABLE                         R8 K28 [{"backgroundStyle"}]
      236 GETTABLEKS                       R9 R0 K36 ["Color"]
      238 GETTABLEKS                       R9 R9 K41 ["ActionStandard"]
      240 GETTABLEKS                       R9 R9 K38 ["Background"]
      242 SETTABLEKS                       R9 R8 K27 ["backgroundStyle"]
      244 SETTABLEKS                       R8 R7 K7 ["chip"]
      246 DUPTABLE                         R8 K33 [{"contentStyle"}]
      247 GETTABLEKS                       R9 R0 K36 ["Color"]
      249 GETTABLEKS                       R9 R9 K41 ["ActionStandard"]
      251 GETTABLEKS                       R9 R9 K39 ["Foreground"]
      253 SETTABLEKS                       R9 R8 K32 ["contentStyle"]
      255 SETTABLEKS                       R8 R7 K8 ["text"]
      257 SETTABLE                         R7 R5 R6
      258 DUPTABLE                         R6 K47 [{"common", "sizes", "types", "isChecked", "textSpacing"}]
      259 SETTABLEKS                       R2 R6 K42 ["common"]
      261 SETTABLEKS                       R3 R6 K43 ["sizes"]
      263 SETTABLEKS                       R4 R6 K44 ["types"]
      265 SETTABLEKS                       R5 R6 K45 ["isChecked"]
      267 SETTABLEKS                       R1 R6 K46 ["textSpacing"]
      269 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["useVariants"]
        3 LOADK                            R7 K1 ["Chip"]
        4 GETUPVAL                         R8 1
        5 MOVE                             R9 R0
        6 CALL                             R6 3 1
        7 GETUPVAL                         R7 2
        8 GETTABLEKS                       R8 R6 K2 ["common"]
       10 GETTABLEKS                       R10 R6 K3 ["sizes"]
       12 GETTABLE                         R9 R10 R1
       13 GETUPVAL                         R11 3
       14 GETTABLEKS                       R11 R11 K4 ["FoundationAddUtilityVariantToChip"]
       16 JUMPIFNOT                        R11 ; [+5]
       17 GETTABLEKS                       R12 R6 K5 ["types"]
       19 GETTABLE                         R11 R12 R2
       20 GETTABLE                         R10 R11 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R10
       23 DUPTABLE                         R11 K7 [{"text"}]
       24 DUPTABLE                         R12 K9 [{"padding"}]
       25 DUPTABLE                         R13 K12 [{"left", "right"}]
       26 JUMPIFNOT                        R4 ; [+2]
       27 LOADNIL                          R14
       28 JUMP                             ; [+3]
       29 GETTABLEKS                       R15 R6 K13 ["textSpacing"]
       31 GETTABLE                         R14 R15 R1
       32 SETTABLEKS                       R14 R13 K10 ["left"]
       34 JUMPIFNOT                        R5 ; [+2]
       35 LOADNIL                          R14
       36 JUMP                             ; [+3]
       37 GETTABLEKS                       R15 R6 K13 ["textSpacing"]
       39 GETTABLE                         R14 R15 R1
       40 SETTABLEKS                       R14 R13 K11 ["right"]
       42 SETTABLEKS                       R13 R12 K8 ["padding"]
       44 SETTABLEKS                       R12 R11 K6 ["text"]
       46 GETUPVAL                         R13 3
       47 GETTABLEKS                       R13 R13 K4 ["FoundationAddUtilityVariantToChip"]
       49 JUMPIFNOT                        R13 ; [+2]
       50 LOADNIL                          R12
       51 JUMP                             ; [+3]
       52 GETTABLEKS                       R13 R6 K14 ["isChecked"]
       54 GETTABLE                         R12 R13 R3
       55 CALL                             R7 5 -1
       56 RETURN                           R7 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["ChipSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["ChipVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Utility"]
       32 GETTABLEKS                       R5 R5 K11 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Providers"]
       39 GETTABLEKS                       R6 R6 K13 ["Style"]
       41 GETTABLEKS                       R6 R6 K14 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Providers"]
       48 GETTABLEKS                       R7 R7 K13 ["Style"]
       50 GETTABLEKS                       R7 R7 K15 ["VariantsContext"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K16 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R8 K17 [PROTO_1]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 RETURN                           R8 1
