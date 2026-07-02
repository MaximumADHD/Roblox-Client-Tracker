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
       39 DUPTABLE                         R3 K12 [{["tag"] = "row align-x-center align-y-center auto-x radius-circle clip"}]
       40 SETTABLEKS                       R3 R2 K7 ["chip"]
       42 DUPTABLE                         R3 K14 [{["tag"] = "shrink size-0-full auto-x text-truncate-end"}]
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
       80 NEWTABLE                         R4 2 0
       82 GETUPVAL                         R5 1
       83 GETTABLEKS                       R5 R5 K25 ["Utility"]
       85 NEWTABLE                         R6 2 0
       87 LOADB                            R7 1
       88 DUPTABLE                         R8 K9 [{"chip", "text"}]
       89 DUPTABLE                         R9 K27 [{"backgroundStyle"}]
       90 GETTABLEKS                       R10 R0 K28 ["Inverse"]
       92 GETTABLEKS                       R10 R10 K29 ["Surface"]
       94 GETTABLEKS                       R10 R10 K30 ["Surface_0"]
       96 SETTABLEKS                       R10 R9 K26 ["backgroundStyle"]
       98 SETTABLEKS                       R9 R8 K7 ["chip"]
      100 DUPTABLE                         R9 K32 [{"contentStyle"}]
      101 GETTABLEKS                       R10 R0 K28 ["Inverse"]
      103 GETTABLEKS                       R10 R10 K33 ["Content"]
      105 GETTABLEKS                       R10 R10 K34 ["Emphasis"]
      107 SETTABLEKS                       R10 R9 K31 ["contentStyle"]
      109 SETTABLEKS                       R9 R8 K8 ["text"]
      111 SETTABLE                         R8 R6 R7
      112 LOADB                            R7 0
      113 DUPTABLE                         R8 K9 [{"chip", "text"}]
      114 DUPTABLE                         R9 K27 [{"backgroundStyle"}]
      115 GETTABLEKS                       R10 R0 K35 ["Color"]
      117 GETTABLEKS                       R10 R10 K36 ["ActionUtility"]
      119 GETTABLEKS                       R10 R10 K37 ["Background"]
      121 SETTABLEKS                       R10 R9 K26 ["backgroundStyle"]
      123 SETTABLEKS                       R9 R8 K7 ["chip"]
      125 DUPTABLE                         R9 K32 [{"contentStyle"}]
      126 GETTABLEKS                       R10 R0 K35 ["Color"]
      128 GETTABLEKS                       R10 R10 K36 ["ActionUtility"]
      130 GETTABLEKS                       R10 R10 K38 ["Foreground"]
      132 SETTABLEKS                       R10 R9 K31 ["contentStyle"]
      134 SETTABLEKS                       R9 R8 K8 ["text"]
      136 SETTABLE                         R8 R6 R7
      137 SETTABLE                         R6 R4 R5
      138 GETUPVAL                         R5 1
      139 GETTABLEKS                       R5 R5 K39 ["Standard"]
      141 NEWTABLE                         R6 2 0
      143 LOADB                            R7 1
      144 DUPTABLE                         R8 K9 [{"chip", "text"}]
      145 DUPTABLE                         R9 K27 [{"backgroundStyle"}]
      146 GETTABLEKS                       R10 R0 K28 ["Inverse"]
      148 GETTABLEKS                       R10 R10 K29 ["Surface"]
      150 GETTABLEKS                       R10 R10 K30 ["Surface_0"]
      152 SETTABLEKS                       R10 R9 K26 ["backgroundStyle"]
      154 SETTABLEKS                       R9 R8 K7 ["chip"]
      156 DUPTABLE                         R9 K32 [{"contentStyle"}]
      157 GETTABLEKS                       R10 R0 K28 ["Inverse"]
      159 GETTABLEKS                       R10 R10 K33 ["Content"]
      161 GETTABLEKS                       R10 R10 K34 ["Emphasis"]
      163 SETTABLEKS                       R10 R9 K31 ["contentStyle"]
      165 SETTABLEKS                       R9 R8 K8 ["text"]
      167 SETTABLE                         R8 R6 R7
      168 LOADB                            R7 0
      169 DUPTABLE                         R8 K9 [{"chip", "text"}]
      170 DUPTABLE                         R9 K27 [{"backgroundStyle"}]
      171 GETTABLEKS                       R10 R0 K35 ["Color"]
      173 GETTABLEKS                       R10 R10 K40 ["ActionStandard"]
      175 GETTABLEKS                       R10 R10 K37 ["Background"]
      177 SETTABLEKS                       R10 R9 K26 ["backgroundStyle"]
      179 SETTABLEKS                       R9 R8 K7 ["chip"]
      181 DUPTABLE                         R9 K32 [{"contentStyle"}]
      182 GETTABLEKS                       R10 R0 K35 ["Color"]
      184 GETTABLEKS                       R10 R10 K40 ["ActionStandard"]
      186 GETTABLEKS                       R10 R10 K38 ["Foreground"]
      188 SETTABLEKS                       R10 R9 K31 ["contentStyle"]
      190 SETTABLEKS                       R9 R8 K8 ["text"]
      192 SETTABLE                         R8 R6 R7
      193 SETTABLE                         R6 R4 R5
      194 DUPTABLE                         R5 K45 [{"common", "sizes", "types", "textSpacing"}]
      195 SETTABLEKS                       R2 R5 K41 ["common"]
      197 SETTABLEKS                       R3 R5 K42 ["sizes"]
      199 SETTABLEKS                       R4 R5 K43 ["types"]
      201 SETTABLEKS                       R1 R5 K44 ["textSpacing"]
      203 RETURN                           R5 1

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
       13 GETTABLEKS                       R12 R6 K4 ["types"]
       15 GETTABLE                         R11 R12 R2
       16 GETTABLE                         R10 R11 R3
       17 DUPTABLE                         R11 K6 [{"text"}]
       18 DUPTABLE                         R12 K8 [{"padding"}]
       19 DUPTABLE                         R13 K11 [{"left", "right"}]
       20 JUMPIFNOT                        R4 ; [+2]
       21 LOADNIL                          R14
       22 JUMP                             ; [+3]
       23 GETTABLEKS                       R15 R6 K12 ["textSpacing"]
       25 GETTABLE                         R14 R15 R1
       26 SETTABLEKS                       R14 R13 K9 ["left"]
       28 JUMPIFNOT                        R5 ; [+2]
       29 LOADNIL                          R14
       30 JUMP                             ; [+3]
       31 GETTABLEKS                       R15 R6 K12 ["textSpacing"]
       33 GETTABLE                         R14 R15 R1
       34 SETTABLEKS                       R14 R13 K10 ["right"]
       36 SETTABLEKS                       R13 R12 K7 ["padding"]
       38 SETTABLEKS                       R12 R11 K5 ["text"]
       40 CALL                             R7 4 -1
       41 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["ChipSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["ChipVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R4 K10 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Providers"]
       32 GETTABLEKS                       R5 R5 K12 ["Style"]
       34 GETTABLEKS                       R5 R5 K13 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Providers"]
       41 GETTABLEKS                       R6 R6 K12 ["Style"]
       43 GETTABLEKS                       R6 R6 K14 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 DUPCLOSURE                       R7 K16 [PROTO_1]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 RETURN                           R7 1
