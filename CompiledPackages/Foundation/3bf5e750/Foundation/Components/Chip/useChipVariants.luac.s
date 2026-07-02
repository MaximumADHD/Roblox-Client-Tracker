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
       80 NEWTABLE                         R4 2 0
       82 LOADB                            R5 1
       83 DUPTABLE                         R6 K9 [{"chip", "text"}]
       84 DUPTABLE                         R7 K26 [{"backgroundStyle"}]
       85 GETTABLEKS                       R8 R0 K27 ["Inverse"]
       87 GETTABLEKS                       R8 R8 K28 ["Surface"]
       89 GETTABLEKS                       R8 R8 K29 ["Surface_0"]
       91 SETTABLEKS                       R8 R7 K25 ["backgroundStyle"]
       93 SETTABLEKS                       R7 R6 K7 ["chip"]
       95 DUPTABLE                         R7 K31 [{"contentStyle"}]
       96 GETTABLEKS                       R8 R0 K27 ["Inverse"]
       98 GETTABLEKS                       R8 R8 K32 ["Content"]
      100 GETTABLEKS                       R8 R8 K33 ["Emphasis"]
      102 SETTABLEKS                       R8 R7 K30 ["contentStyle"]
      104 SETTABLEKS                       R7 R6 K8 ["text"]
      106 SETTABLE                         R6 R4 R5
      107 LOADB                            R5 0
      108 DUPTABLE                         R6 K9 [{"chip", "text"}]
      109 DUPTABLE                         R7 K26 [{"backgroundStyle"}]
      110 GETTABLEKS                       R8 R0 K34 ["Color"]
      112 GETTABLEKS                       R8 R8 K35 ["ActionStandard"]
      114 GETTABLEKS                       R8 R8 K36 ["Background"]
      116 SETTABLEKS                       R8 R7 K25 ["backgroundStyle"]
      118 SETTABLEKS                       R7 R6 K7 ["chip"]
      120 DUPTABLE                         R7 K31 [{"contentStyle"}]
      121 GETTABLEKS                       R8 R0 K34 ["Color"]
      123 GETTABLEKS                       R8 R8 K35 ["ActionStandard"]
      125 GETTABLEKS                       R8 R8 K37 ["Foreground"]
      127 SETTABLEKS                       R8 R7 K30 ["contentStyle"]
      129 SETTABLEKS                       R7 R6 K8 ["text"]
      131 SETTABLE                         R6 R4 R5
      132 DUPTABLE                         R5 K42 [{"common", "sizes", "isChecked", "textSpacing"}]
      133 SETTABLEKS                       R2 R5 K38 ["common"]
      135 SETTABLEKS                       R3 R5 K39 ["sizes"]
      137 SETTABLEKS                       R4 R5 K40 ["isChecked"]
      139 SETTABLEKS                       R1 R5 K41 ["textSpacing"]
      141 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useVariants"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["ChipSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R3 K9 ["composeStyleVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Providers"]
       25 GETTABLEKS                       R4 R4 K11 ["Style"]
       27 GETTABLEKS                       R4 R4 K12 ["Tokens"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Providers"]
       34 GETTABLEKS                       R5 R5 K11 ["Style"]
       36 GETTABLEKS                       R5 R5 K13 ["VariantsContext"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 RETURN                           R6 1
