PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Small"]
        5 GETIMPORT                        R3 K3 [UDim.new]
        7 LOADN                            R4 0
        8 GETTABLEKS                       R6 R0 K4 ["Padding"]
       10 GETTABLEKS                       R5 R6 K0 ["Small"]
       12 CALL                             R3 2 1
       13 SETTABLE                         R3 R1 R2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K5 ["Medium"]
       17 GETIMPORT                        R3 K3 [UDim.new]
       19 LOADN                            R4 0
       20 GETTABLEKS                       R6 R0 K4 ["Padding"]
       22 GETTABLEKS                       R5 R6 K5 ["Medium"]
       24 CALL                             R3 2 1
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K6 ["Large"]
       29 GETIMPORT                        R3 K3 [UDim.new]
       31 LOADN                            R4 0
       32 GETTABLEKS                       R6 R0 K4 ["Padding"]
       34 GETTABLEKS                       R5 R6 K6 ["Large"]
       36 CALL                             R3 2 1
       37 SETTABLE                         R3 R1 R2
       38 DUPTABLE                         R2 K9 [{"chip", "text"}]
       39 DUPTABLE                         R3 K11 [{"tag"}]
       40 LOADK                            R4 K12 ["row auto-x align-y-center align-x-center clip radius-circle"]
       41 SETTABLEKS                       R4 R3 K10 ["tag"]
       43 SETTABLEKS                       R3 R2 K7 ["chip"]
       45 DUPTABLE                         R3 K11 [{"tag"}]
       46 LOADK                            R4 K13 ["auto-x size-0-full shrink text-truncate-end"]
       47 SETTABLEKS                       R4 R3 K10 ["tag"]
       49 SETTABLEKS                       R3 R2 K8 ["text"]
       51 NEWTABLE                         R3 4 0
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R4 R5 K0 ["Small"]
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
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K5 ["Medium"]
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
       87 GETUPVAL                         R5 0
       88 GETTABLEKS                       R4 R5 K6 ["Large"]
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
      106 LOADB                            R5 1
      107 DUPTABLE                         R6 K9 [{"chip", "text"}]
      108 DUPTABLE                         R7 K20 [{"backgroundStyle"}]
      109 GETTABLEKS                       R10 R0 K21 ["Inverse"]
      111 GETTABLEKS                       R9 R10 K22 ["Surface"]
      113 GETTABLEKS                       R8 R9 K23 ["Surface_0"]
      115 SETTABLEKS                       R8 R7 K19 ["backgroundStyle"]
      117 SETTABLEKS                       R7 R6 K7 ["chip"]
      119 DUPTABLE                         R7 K25 [{"contentStyle"}]
      120 GETTABLEKS                       R10 R0 K21 ["Inverse"]
      122 GETTABLEKS                       R9 R10 K26 ["Content"]
      124 GETTABLEKS                       R8 R9 K27 ["Emphasis"]
      126 SETTABLEKS                       R8 R7 K24 ["contentStyle"]
      128 SETTABLEKS                       R7 R6 K8 ["text"]
      130 SETTABLE                         R6 R4 R5
      131 LOADB                            R5 0
      132 DUPTABLE                         R6 K9 [{"chip", "text"}]
      133 DUPTABLE                         R7 K20 [{"backgroundStyle"}]
      134 GETTABLEKS                       R10 R0 K28 ["Color"]
      136 GETTABLEKS                       R9 R10 K29 ["ActionStandard"]
      138 GETTABLEKS                       R8 R9 K30 ["Background"]
      140 SETTABLEKS                       R8 R7 K19 ["backgroundStyle"]
      142 SETTABLEKS                       R7 R6 K7 ["chip"]
      144 DUPTABLE                         R7 K25 [{"contentStyle"}]
      145 GETTABLEKS                       R10 R0 K28 ["Color"]
      147 GETTABLEKS                       R9 R10 K29 ["ActionStandard"]
      149 GETTABLEKS                       R8 R9 K31 ["Foreground"]
      151 SETTABLEKS                       R8 R7 K24 ["contentStyle"]
      153 SETTABLEKS                       R7 R6 K8 ["text"]
      155 SETTABLE                         R6 R4 R5
      156 DUPTABLE                         R5 K36 [{"common", "sizes", "isChecked", "textSpacing"}]
      157 SETTABLEKS                       R2 R5 K32 ["common"]
      159 SETTABLEKS                       R3 R5 K33 ["sizes"]
      161 SETTABLEKS                       R4 R5 K34 ["isChecked"]
      163 SETTABLEKS                       R1 R5 K35 ["textSpacing"]
      165 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["useVariants"]
        3 LOADK                            R6 K1 ["Chip"]
        4 GETUPVAL                         R7 1
        5 MOVE                             R8 R0
        6 CALL                             R5 3 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R7 R5 K2 ["common"]
       10 GETTABLEKS                       R9 R5 K3 ["sizes"]
       12 GETTABLE                         R8 R9 R1
       13 DUPTABLE                         R9 K5 [{"text"}]
       14 DUPTABLE                         R10 K7 [{"padding"}]
       15 DUPTABLE                         R11 K10 [{"left", "right"}]
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADNIL                          R12
       18 JUMP                             ; [+3]
       19 GETTABLEKS                       R13 R5 K11 ["textSpacing"]
       21 GETTABLE                         R12 R13 R1
       22 SETTABLEKS                       R12 R11 K8 ["left"]
       24 JUMPIFNOT                        R4 ; [+2]
       25 LOADNIL                          R12
       26 JUMP                             ; [+3]
       27 GETTABLEKS                       R13 R5 K11 ["textSpacing"]
       29 GETTABLE                         R12 R13 R1
       30 SETTABLEKS                       R12 R11 K9 ["right"]
       32 SETTABLEKS                       R11 R10 K6 ["padding"]
       34 SETTABLEKS                       R10 R9 K4 ["text"]
       36 GETTABLEKS                       R11 R5 K12 ["isChecked"]
       38 GETTABLE                         R10 R11 R2
       39 CALL                             R6 4 -1
       40 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["ChipSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R4 K9 ["composeStyleVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Providers"]
       25 GETTABLEKS                       R5 R6 K11 ["Style"]
       27 GETTABLEKS                       R4 R5 K12 ["Tokens"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Providers"]
       34 GETTABLEKS                       R6 R7 K11 ["Style"]
       36 GETTABLEKS                       R5 R6 K13 ["VariantsContext"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 RETURN                           R6 1
