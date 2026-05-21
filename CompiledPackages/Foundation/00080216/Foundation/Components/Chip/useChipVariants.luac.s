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
       39 DUPTABLE                         R3 K11 [{"tag"}]
       40 LOADK                            R4 K12 ["row align-x-center align-y-center auto-x radius-circle clip"]
       41 SETTABLEKS                       R4 R3 K10 ["tag"]
       43 SETTABLEKS                       R3 R2 K7 ["chip"]
       45 DUPTABLE                         R3 K11 [{"tag"}]
       46 LOADK                            R4 K13 ["shrink size-0-full auto-x text-truncate-end"]
       47 SETTABLEKS                       R4 R3 K10 ["tag"]
       49 SETTABLEKS                       R3 R2 K8 ["text"]
       51 NEWTABLE                         R3 4 0
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K0 ["Small"]
       56 DUPTABLE                         R5 K9 [{"chip", "text"}]
       57 DUPTABLE                         R6 K11 [{"tag"}]
       58 LOADK                            R7 K14 ["size-0-600"]
       59 SETTABLEKS                       R7 R6 K10 ["tag"]
       61 SETTABLEKS                       R6 R5 K7 ["chip"]
       63 DUPTABLE                         R6 K11 [{"tag"}]
       64 LOADK                            R7 K15 ["text-label-small"]
       65 SETTABLEKS                       R7 R6 K10 ["tag"]
       67 SETTABLEKS                       R6 R5 K8 ["text"]
       69 SETTABLE                         R5 R3 R4
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K5 ["Medium"]
       73 DUPTABLE                         R5 K9 [{"chip", "text"}]
       74 DUPTABLE                         R6 K11 [{"tag"}]
       75 LOADK                            R7 K16 ["size-0-800"]
       76 SETTABLEKS                       R7 R6 K10 ["tag"]
       78 SETTABLEKS                       R6 R5 K7 ["chip"]
       80 DUPTABLE                         R6 K11 [{"tag"}]
       81 LOADK                            R7 K17 ["text-label-medium"]
       82 SETTABLEKS                       R7 R6 K10 ["tag"]
       84 SETTABLEKS                       R6 R5 K8 ["text"]
       86 SETTABLE                         R5 R3 R4
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K6 ["Large"]
       90 DUPTABLE                         R5 K9 [{"chip", "text"}]
       91 DUPTABLE                         R6 K11 [{"tag"}]
       92 LOADK                            R7 K18 ["size-0-1000"]
       93 SETTABLEKS                       R7 R6 K10 ["tag"]
       95 SETTABLEKS                       R6 R5 K7 ["chip"]
       97 DUPTABLE                         R6 K11 [{"tag"}]
       98 LOADK                            R7 K17 ["text-label-medium"]
       99 SETTABLEKS                       R7 R6 K10 ["tag"]
      101 SETTABLEKS                       R6 R5 K8 ["text"]
      103 SETTABLE                         R5 R3 R4
      104 GETUPVAL                         R5 1
      105 GETTABLEKS                       R5 R5 K19 ["FoundationAddUtilityVariantToChip"]
      107 JUMPIFNOT                        R5 ; [+115]
      108 NEWTABLE                         R4 2 0
      110 GETUPVAL                         R5 2
      111 GETTABLEKS                       R5 R5 K20 ["Utility"]
      113 NEWTABLE                         R6 2 0
      115 LOADB                            R7 1
      116 DUPTABLE                         R8 K9 [{"chip", "text"}]
      117 DUPTABLE                         R9 K22 [{"backgroundStyle"}]
      118 GETTABLEKS                       R10 R0 K23 ["Inverse"]
      120 GETTABLEKS                       R10 R10 K24 ["Surface"]
      122 GETTABLEKS                       R10 R10 K25 ["Surface_0"]
      124 SETTABLEKS                       R10 R9 K21 ["backgroundStyle"]
      126 SETTABLEKS                       R9 R8 K7 ["chip"]
      128 DUPTABLE                         R9 K27 [{"contentStyle"}]
      129 GETTABLEKS                       R10 R0 K23 ["Inverse"]
      131 GETTABLEKS                       R10 R10 K28 ["Content"]
      133 GETTABLEKS                       R10 R10 K29 ["Emphasis"]
      135 SETTABLEKS                       R10 R9 K26 ["contentStyle"]
      137 SETTABLEKS                       R9 R8 K8 ["text"]
      139 SETTABLE                         R8 R6 R7
      140 LOADB                            R7 0
      141 DUPTABLE                         R8 K9 [{"chip", "text"}]
      142 DUPTABLE                         R9 K22 [{"backgroundStyle"}]
      143 GETTABLEKS                       R10 R0 K30 ["Color"]
      145 GETTABLEKS                       R10 R10 K31 ["ActionUtility"]
      147 GETTABLEKS                       R10 R10 K32 ["Background"]
      149 SETTABLEKS                       R10 R9 K21 ["backgroundStyle"]
      151 SETTABLEKS                       R9 R8 K7 ["chip"]
      153 DUPTABLE                         R9 K27 [{"contentStyle"}]
      154 GETTABLEKS                       R10 R0 K30 ["Color"]
      156 GETTABLEKS                       R10 R10 K31 ["ActionUtility"]
      158 GETTABLEKS                       R10 R10 K33 ["Foreground"]
      160 SETTABLEKS                       R10 R9 K26 ["contentStyle"]
      162 SETTABLEKS                       R9 R8 K8 ["text"]
      164 SETTABLE                         R8 R6 R7
      165 SETTABLE                         R6 R4 R5
      166 GETUPVAL                         R5 2
      167 GETTABLEKS                       R5 R5 K34 ["Standard"]
      169 NEWTABLE                         R6 2 0
      171 LOADB                            R7 1
      172 DUPTABLE                         R8 K9 [{"chip", "text"}]
      173 DUPTABLE                         R9 K22 [{"backgroundStyle"}]
      174 GETTABLEKS                       R10 R0 K23 ["Inverse"]
      176 GETTABLEKS                       R10 R10 K24 ["Surface"]
      178 GETTABLEKS                       R10 R10 K25 ["Surface_0"]
      180 SETTABLEKS                       R10 R9 K21 ["backgroundStyle"]
      182 SETTABLEKS                       R9 R8 K7 ["chip"]
      184 DUPTABLE                         R9 K27 [{"contentStyle"}]
      185 GETTABLEKS                       R10 R0 K23 ["Inverse"]
      187 GETTABLEKS                       R10 R10 K28 ["Content"]
      189 GETTABLEKS                       R10 R10 K29 ["Emphasis"]
      191 SETTABLEKS                       R10 R9 K26 ["contentStyle"]
      193 SETTABLEKS                       R9 R8 K8 ["text"]
      195 SETTABLE                         R8 R6 R7
      196 LOADB                            R7 0
      197 DUPTABLE                         R8 K9 [{"chip", "text"}]
      198 DUPTABLE                         R9 K22 [{"backgroundStyle"}]
      199 GETTABLEKS                       R10 R0 K30 ["Color"]
      201 GETTABLEKS                       R10 R10 K35 ["ActionStandard"]
      203 GETTABLEKS                       R10 R10 K32 ["Background"]
      205 SETTABLEKS                       R10 R9 K21 ["backgroundStyle"]
      207 SETTABLEKS                       R9 R8 K7 ["chip"]
      209 DUPTABLE                         R9 K27 [{"contentStyle"}]
      210 GETTABLEKS                       R10 R0 K30 ["Color"]
      212 GETTABLEKS                       R10 R10 K35 ["ActionStandard"]
      214 GETTABLEKS                       R10 R10 K33 ["Foreground"]
      216 SETTABLEKS                       R10 R9 K26 ["contentStyle"]
      218 SETTABLEKS                       R9 R8 K8 ["text"]
      220 SETTABLE                         R8 R6 R7
      221 SETTABLE                         R6 R4 R5
      222 JUMP                             ; [+1]
      223 LOADNIL                          R4
      224 GETUPVAL                         R6 1
      225 GETTABLEKS                       R6 R6 K19 ["FoundationAddUtilityVariantToChip"]
      227 JUMPIFNOT                        R6 ; [+2]
      228 LOADNIL                          R5
      229 JUMP                             ; [+52]
      230 NEWTABLE                         R5 2 0
      232 LOADB                            R6 1
      233 DUPTABLE                         R7 K9 [{"chip", "text"}]
      234 DUPTABLE                         R8 K22 [{"backgroundStyle"}]
      235 GETTABLEKS                       R9 R0 K23 ["Inverse"]
      237 GETTABLEKS                       R9 R9 K24 ["Surface"]
      239 GETTABLEKS                       R9 R9 K25 ["Surface_0"]
      241 SETTABLEKS                       R9 R8 K21 ["backgroundStyle"]
      243 SETTABLEKS                       R8 R7 K7 ["chip"]
      245 DUPTABLE                         R8 K27 [{"contentStyle"}]
      246 GETTABLEKS                       R9 R0 K23 ["Inverse"]
      248 GETTABLEKS                       R9 R9 K28 ["Content"]
      250 GETTABLEKS                       R9 R9 K29 ["Emphasis"]
      252 SETTABLEKS                       R9 R8 K26 ["contentStyle"]
      254 SETTABLEKS                       R8 R7 K8 ["text"]
      256 SETTABLE                         R7 R5 R6
      257 LOADB                            R6 0
      258 DUPTABLE                         R7 K9 [{"chip", "text"}]
      259 DUPTABLE                         R8 K22 [{"backgroundStyle"}]
      260 GETTABLEKS                       R9 R0 K30 ["Color"]
      262 GETTABLEKS                       R9 R9 K35 ["ActionStandard"]
      264 GETTABLEKS                       R9 R9 K32 ["Background"]
      266 SETTABLEKS                       R9 R8 K21 ["backgroundStyle"]
      268 SETTABLEKS                       R8 R7 K7 ["chip"]
      270 DUPTABLE                         R8 K27 [{"contentStyle"}]
      271 GETTABLEKS                       R9 R0 K30 ["Color"]
      273 GETTABLEKS                       R9 R9 K35 ["ActionStandard"]
      275 GETTABLEKS                       R9 R9 K33 ["Foreground"]
      277 SETTABLEKS                       R9 R8 K26 ["contentStyle"]
      279 SETTABLEKS                       R8 R7 K8 ["text"]
      281 SETTABLE                         R7 R5 R6
      282 DUPTABLE                         R6 K41 [{"common", "sizes", "types", "isChecked", "textSpacing"}]
      283 SETTABLEKS                       R2 R6 K36 ["common"]
      285 SETTABLEKS                       R3 R6 K37 ["sizes"]
      287 SETTABLEKS                       R4 R6 K38 ["types"]
      289 SETTABLEKS                       R5 R6 K39 ["isChecked"]
      291 SETTABLEKS                       R1 R6 K40 ["textSpacing"]
      293 RETURN                           R6 1

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
