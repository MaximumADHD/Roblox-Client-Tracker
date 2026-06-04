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
      104 NEWTABLE                         R4 2 0
      106 GETUPVAL                         R5 1
      107 GETTABLEKS                       R5 R5 K19 ["Utility"]
      109 NEWTABLE                         R6 2 0
      111 LOADB                            R7 1
      112 DUPTABLE                         R8 K9 [{"chip", "text"}]
      113 DUPTABLE                         R9 K21 [{"backgroundStyle"}]
      114 GETTABLEKS                       R10 R0 K22 ["Inverse"]
      116 GETTABLEKS                       R10 R10 K23 ["Surface"]
      118 GETTABLEKS                       R10 R10 K24 ["Surface_0"]
      120 SETTABLEKS                       R10 R9 K20 ["backgroundStyle"]
      122 SETTABLEKS                       R9 R8 K7 ["chip"]
      124 DUPTABLE                         R9 K26 [{"contentStyle"}]
      125 GETTABLEKS                       R10 R0 K22 ["Inverse"]
      127 GETTABLEKS                       R10 R10 K27 ["Content"]
      129 GETTABLEKS                       R10 R10 K28 ["Emphasis"]
      131 SETTABLEKS                       R10 R9 K25 ["contentStyle"]
      133 SETTABLEKS                       R9 R8 K8 ["text"]
      135 SETTABLE                         R8 R6 R7
      136 LOADB                            R7 0
      137 DUPTABLE                         R8 K9 [{"chip", "text"}]
      138 DUPTABLE                         R9 K21 [{"backgroundStyle"}]
      139 GETTABLEKS                       R10 R0 K29 ["Color"]
      141 GETTABLEKS                       R10 R10 K30 ["ActionUtility"]
      143 GETTABLEKS                       R10 R10 K31 ["Background"]
      145 SETTABLEKS                       R10 R9 K20 ["backgroundStyle"]
      147 SETTABLEKS                       R9 R8 K7 ["chip"]
      149 DUPTABLE                         R9 K26 [{"contentStyle"}]
      150 GETTABLEKS                       R10 R0 K29 ["Color"]
      152 GETTABLEKS                       R10 R10 K30 ["ActionUtility"]
      154 GETTABLEKS                       R10 R10 K32 ["Foreground"]
      156 SETTABLEKS                       R10 R9 K25 ["contentStyle"]
      158 SETTABLEKS                       R9 R8 K8 ["text"]
      160 SETTABLE                         R8 R6 R7
      161 SETTABLE                         R6 R4 R5
      162 GETUPVAL                         R5 1
      163 GETTABLEKS                       R5 R5 K33 ["Standard"]
      165 NEWTABLE                         R6 2 0
      167 LOADB                            R7 1
      168 DUPTABLE                         R8 K9 [{"chip", "text"}]
      169 DUPTABLE                         R9 K21 [{"backgroundStyle"}]
      170 GETTABLEKS                       R10 R0 K22 ["Inverse"]
      172 GETTABLEKS                       R10 R10 K23 ["Surface"]
      174 GETTABLEKS                       R10 R10 K24 ["Surface_0"]
      176 SETTABLEKS                       R10 R9 K20 ["backgroundStyle"]
      178 SETTABLEKS                       R9 R8 K7 ["chip"]
      180 DUPTABLE                         R9 K26 [{"contentStyle"}]
      181 GETTABLEKS                       R10 R0 K22 ["Inverse"]
      183 GETTABLEKS                       R10 R10 K27 ["Content"]
      185 GETTABLEKS                       R10 R10 K28 ["Emphasis"]
      187 SETTABLEKS                       R10 R9 K25 ["contentStyle"]
      189 SETTABLEKS                       R9 R8 K8 ["text"]
      191 SETTABLE                         R8 R6 R7
      192 LOADB                            R7 0
      193 DUPTABLE                         R8 K9 [{"chip", "text"}]
      194 DUPTABLE                         R9 K21 [{"backgroundStyle"}]
      195 GETTABLEKS                       R10 R0 K29 ["Color"]
      197 GETTABLEKS                       R10 R10 K34 ["ActionStandard"]
      199 GETTABLEKS                       R10 R10 K31 ["Background"]
      201 SETTABLEKS                       R10 R9 K20 ["backgroundStyle"]
      203 SETTABLEKS                       R9 R8 K7 ["chip"]
      205 DUPTABLE                         R9 K26 [{"contentStyle"}]
      206 GETTABLEKS                       R10 R0 K29 ["Color"]
      208 GETTABLEKS                       R10 R10 K34 ["ActionStandard"]
      210 GETTABLEKS                       R10 R10 K32 ["Foreground"]
      212 SETTABLEKS                       R10 R9 K25 ["contentStyle"]
      214 SETTABLEKS                       R9 R8 K8 ["text"]
      216 SETTABLE                         R8 R6 R7
      217 SETTABLE                         R6 R4 R5
      218 DUPTABLE                         R5 K39 [{"common", "sizes", "types", "textSpacing"}]
      219 SETTABLEKS                       R2 R5 K35 ["common"]
      221 SETTABLEKS                       R3 R5 K36 ["sizes"]
      223 SETTABLEKS                       R4 R5 K37 ["types"]
      225 SETTABLEKS                       R1 R5 K38 ["textSpacing"]
      227 RETURN                           R5 1

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
