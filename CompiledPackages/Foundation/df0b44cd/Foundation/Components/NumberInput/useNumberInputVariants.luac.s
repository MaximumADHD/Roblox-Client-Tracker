PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 LOADN                            R2 0
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K4 ["FoundationNumberInputTokenBasedWidth"]
        6 JUMPIFNOT                        R6 ; [+3]
        7 GETTABLEKS                       R5 R0 K5 ["buttonWidth"]
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R5 R0 K6 ["width"]
       12 GETTABLEKS                       R6 R0 K7 ["horizontalPadding"]
       14 SUB                              R4 R5 R6
       15 DIVK                             R3 R4 K3 [2]
       16 CALL                             R1 2 1
       17 DUPTABLE                         R2 K13 [{"container", "button", "upButton", "downButton", "splitButton"}]
       18 DUPTABLE                         R3 K14 [{"width"}]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["FoundationNumberInputTokenBasedWidth"]
       22 JUMPIFNOT                        R5 ; [+3]
       23 GETTABLEKS                       R4 R0 K6 ["width"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K6 ["width"]
       29 SETTABLEKS                       R3 R2 K8 ["container"]
       31 DUPTABLE                         R3 K17 [{"tag", "width", "padding"}]
       32 LOADK                            R4 K18 ["size-full fill"]
       33 SETTABLEKS                       R4 R3 K15 ["tag"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K4 ["FoundationNumberInputTokenBasedWidth"]
       38 JUMPIFNOT                        R5 ; [+3]
       39 GETTABLEKS                       R4 R0 K5 ["buttonWidth"]
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R4 R0 K6 ["width"]
       44 SETTABLEKS                       R4 R3 K6 ["width"]
       46 DUPTABLE                         R4 K21 [{"left", "right"}]
       47 SETTABLEKS                       R1 R4 K19 ["left"]
       49 SETTABLEKS                       R1 R4 K20 ["right"]
       51 SETTABLEKS                       R4 R3 K16 ["padding"]
       53 SETTABLEKS                       R3 R2 K9 ["button"]
       55 DUPTABLE                         R3 K22 [{"tag"}]
       56 GETTABLEKS                       R4 R0 K23 ["upButtonTag"]
       58 SETTABLEKS                       R4 R3 K15 ["tag"]
       60 SETTABLEKS                       R3 R2 K10 ["upButton"]
       62 DUPTABLE                         R3 K22 [{"tag"}]
       63 GETTABLEKS                       R4 R0 K24 ["downButtonTag"]
       65 SETTABLEKS                       R4 R3 K15 ["tag"]
       67 SETTABLEKS                       R3 R2 K11 ["downButton"]
       69 DUPTABLE                         R3 K26 [{"size", "tag"}]
       70 GETTABLEKS                       R4 R0 K27 ["splitButtonSize"]
       72 SETTABLEKS                       R4 R3 K25 ["size"]
       74 GETTABLEKS                       R4 R0 K28 ["splitButtonTag"]
       76 SETTABLEKS                       R4 R3 K15 ["tag"]
       78 SETTABLEKS                       R3 R2 K12 ["splitButton"]
       80 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"upButton", "downButton", "splitButton", "icon"}]
        1 DUPTABLE                         R2 K6 [{"tag"}]
        2 LOADK                            R3 K7 ["size-full fill padding-bottom-xsmall"]
        3 SETTABLEKS                       R3 R2 K5 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["upButton"]
        7 DUPTABLE                         R2 K6 [{"tag"}]
        8 LOADK                            R3 K8 ["size-full fill padding-top-xsmall"]
        9 SETTABLEKS                       R3 R2 K5 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["downButton"]
       13 DUPTABLE                         R2 K6 [{"tag"}]
       14 LOADK                            R3 K9 ["bg-shift-100"]
       15 SETTABLEKS                       R3 R2 K5 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["splitButton"]
       19 DUPTABLE                         R2 K6 [{"tag"}]
       20 LOADK                            R3 K10 ["content-default size-150-100"]
       21 SETTABLEKS                       R3 R2 K5 ["tag"]
       23 SETTABLEKS                       R2 R1 K3 ["icon"]
       25 NEWTABLE                         R2 4 0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K11 ["XSmall"]
       30 GETUPVAL                         R4 1
       31 DUPTABLE                         R5 K19 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K20 ["FoundationNumberInputTokenBasedWidth"]
       35 JUMPIFNOT                        R7 ; [+6]
       36 GETTABLEKS                       R8 R0 K22 ["Size"]
       38 GETTABLEKS                       R7 R8 K23 ["Size_3000"]
       40 MULK                             R6 R7 K21 [1.16666666666667]
       41 JUMP                             ; [+4]
       42 GETTABLEKS                       R7 R0 K22 ["Size"]
       44 GETTABLEKS                       R6 R7 K24 ["Size_400"]
       46 SETTABLEKS                       R6 R5 K12 ["width"]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R7 R8 K20 ["FoundationNumberInputTokenBasedWidth"]
       51 JUMPIFNOT                        R7 ; [+5]
       52 GETTABLEKS                       R7 R0 K22 ["Size"]
       54 GETTABLEKS                       R6 R7 K24 ["Size_400"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R6
       58 SETTABLEKS                       R6 R5 K13 ["buttonWidth"]
       60 GETTABLEKS                       R7 R0 K22 ["Size"]
       62 GETTABLEKS                       R6 R7 K25 ["Size_150"]
       64 SETTABLEKS                       R6 R5 K14 ["horizontalPadding"]
       66 LOADK                            R6 K26 ["padding-top-xxsmall"]
       67 SETTABLEKS                       R6 R5 K15 ["upButtonTag"]
       69 LOADK                            R6 K27 ["padding-bottom-xxsmall"]
       70 SETTABLEKS                       R6 R5 K16 ["downButtonTag"]
       72 LOADK                            R6 K28 ["radius-small"]
       73 SETTABLEKS                       R6 R5 K17 ["splitButtonTag"]
       75 GETTABLEKS                       R7 R0 K22 ["Size"]
       77 GETTABLEKS                       R6 R7 K29 ["Size_600"]
       79 SETTABLEKS                       R6 R5 K18 ["splitButtonSize"]
       81 CALL                             R4 1 1
       82 SETTABLE                         R4 R2 R3
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R3 R4 K30 ["Small"]
       86 GETUPVAL                         R4 1
       87 DUPTABLE                         R5 K19 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       88 GETUPVAL                         R8 2
       89 GETTABLEKS                       R7 R8 K20 ["FoundationNumberInputTokenBasedWidth"]
       91 JUMPIFNOT                        R7 ; [+6]
       92 GETTABLEKS                       R8 R0 K22 ["Size"]
       94 GETTABLEKS                       R7 R8 K23 ["Size_3000"]
       96 MULK                             R6 R7 K31 [1.33333333333333]
       97 JUMP                             ; [+4]
       98 GETTABLEKS                       R7 R0 K22 ["Size"]
      100 GETTABLEKS                       R6 R7 K29 ["Size_600"]
      102 SETTABLEKS                       R6 R5 K12 ["width"]
      104 GETUPVAL                         R8 2
      105 GETTABLEKS                       R7 R8 K20 ["FoundationNumberInputTokenBasedWidth"]
      107 JUMPIFNOT                        R7 ; [+5]
      108 GETTABLEKS                       R7 R0 K22 ["Size"]
      110 GETTABLEKS                       R6 R7 K29 ["Size_600"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R6
      114 SETTABLEKS                       R6 R5 K13 ["buttonWidth"]
      116 GETTABLEKS                       R7 R0 K22 ["Size"]
      118 GETTABLEKS                       R6 R7 K25 ["Size_150"]
      120 SETTABLEKS                       R6 R5 K14 ["horizontalPadding"]
      122 LOADK                            R6 K32 ["padding-top-xsmall"]
      123 SETTABLEKS                       R6 R5 K15 ["upButtonTag"]
      125 LOADK                            R6 K33 ["padding-bottom-xsmall"]
      126 SETTABLEKS                       R6 R5 K16 ["downButtonTag"]
      128 LOADK                            R6 K34 ["radius-medium"]
      129 SETTABLEKS                       R6 R5 K17 ["splitButtonTag"]
      131 GETTABLEKS                       R7 R0 K22 ["Size"]
      133 GETTABLEKS                       R6 R7 K35 ["Size_800"]
      135 SETTABLEKS                       R6 R5 K18 ["splitButtonSize"]
      137 CALL                             R4 1 1
      138 SETTABLE                         R4 R2 R3
      139 GETUPVAL                         R4 0
      140 GETTABLEKS                       R3 R4 K36 ["Medium"]
      142 GETUPVAL                         R4 1
      143 DUPTABLE                         R5 K19 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      144 GETUPVAL                         R8 2
      145 GETTABLEKS                       R7 R8 K20 ["FoundationNumberInputTokenBasedWidth"]
      147 JUMPIFNOT                        R7 ; [+6]
      148 GETTABLEKS                       R8 R0 K22 ["Size"]
      150 GETTABLEKS                       R7 R8 K23 ["Size_3000"]
      152 MULK                             R6 R7 K37 [1.5]
      153 JUMP                             ; [+4]
      154 GETTABLEKS                       R7 R0 K22 ["Size"]
      156 GETTABLEKS                       R6 R7 K29 ["Size_600"]
      158 SETTABLEKS                       R6 R5 K12 ["width"]
      160 GETUPVAL                         R8 2
      161 GETTABLEKS                       R7 R8 K20 ["FoundationNumberInputTokenBasedWidth"]
      163 JUMPIFNOT                        R7 ; [+5]
      164 GETTABLEKS                       R7 R0 K22 ["Size"]
      166 GETTABLEKS                       R6 R7 K29 ["Size_600"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R6
      170 SETTABLEKS                       R6 R5 K13 ["buttonWidth"]
      172 GETTABLEKS                       R7 R0 K22 ["Size"]
      174 GETTABLEKS                       R6 R7 K25 ["Size_150"]
      176 SETTABLEKS                       R6 R5 K14 ["horizontalPadding"]
      178 LOADK                            R6 K38 ["padding-top-small"]
      179 SETTABLEKS                       R6 R5 K15 ["upButtonTag"]
      181 LOADK                            R6 K39 ["padding-bottom-small"]
      182 SETTABLEKS                       R6 R5 K16 ["downButtonTag"]
      184 LOADK                            R6 K34 ["radius-medium"]
      185 SETTABLEKS                       R6 R5 K17 ["splitButtonTag"]
      187 GETTABLEKS                       R7 R0 K22 ["Size"]
      189 GETTABLEKS                       R6 R7 K40 ["Size_1000"]
      191 SETTABLEKS                       R6 R5 K18 ["splitButtonSize"]
      193 CALL                             R4 1 1
      194 SETTABLE                         R4 R2 R3
      195 GETUPVAL                         R4 0
      196 GETTABLEKS                       R3 R4 K41 ["Large"]
      198 GETUPVAL                         R4 1
      199 DUPTABLE                         R5 K19 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      200 GETUPVAL                         R8 2
      201 GETTABLEKS                       R7 R8 K20 ["FoundationNumberInputTokenBasedWidth"]
      203 JUMPIFNOT                        R7 ; [+6]
      204 GETTABLEKS                       R8 R0 K22 ["Size"]
      206 GETTABLEKS                       R7 R8 K23 ["Size_3000"]
      208 MULK                             R6 R7 K42 [1.66666666666667]
      209 JUMP                             ; [+4]
      210 GETTABLEKS                       R7 R0 K22 ["Size"]
      212 GETTABLEKS                       R6 R7 K35 ["Size_800"]
      214 SETTABLEKS                       R6 R5 K12 ["width"]
      216 GETUPVAL                         R8 2
      217 GETTABLEKS                       R7 R8 K20 ["FoundationNumberInputTokenBasedWidth"]
      219 JUMPIFNOT                        R7 ; [+5]
      220 GETTABLEKS                       R7 R0 K22 ["Size"]
      222 GETTABLEKS                       R6 R7 K35 ["Size_800"]
      224 JUMP                             ; [+1]
      225 LOADNIL                          R6
      226 SETTABLEKS                       R6 R5 K13 ["buttonWidth"]
      228 GETTABLEKS                       R7 R0 K22 ["Size"]
      230 GETTABLEKS                       R6 R7 K25 ["Size_150"]
      232 SETTABLEKS                       R6 R5 K14 ["horizontalPadding"]
      234 LOADK                            R6 K43 ["padding-top-medium"]
      235 SETTABLEKS                       R6 R5 K15 ["upButtonTag"]
      237 LOADK                            R6 K44 ["padding-bottom-medium"]
      238 SETTABLEKS                       R6 R5 K16 ["downButtonTag"]
      240 LOADK                            R6 K34 ["radius-medium"]
      241 SETTABLEKS                       R6 R5 K17 ["splitButtonTag"]
      243 GETTABLEKS                       R7 R0 K22 ["Size"]
      245 GETTABLEKS                       R6 R7 K45 ["Size_1200"]
      247 SETTABLEKS                       R6 R5 K18 ["splitButtonSize"]
      249 CALL                             R4 1 1
      250 SETTABLE                         R4 R2 R3
      251 DUPTABLE                         R3 K48 [{"common", "sizes"}]
      252 SETTABLEKS                       R1 R3 K46 ["common"]
      254 SETTABLEKS                       R2 R3 K47 ["sizes"]
      256 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["NumberInput"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R4 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Utility"]
       25 GETTABLEKS                       R4 R5 K10 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Providers"]
       32 GETTABLEKS                       R6 R7 K12 ["Style"]
       34 GETTABLEKS                       R5 R6 K13 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Providers"]
       41 GETTABLEKS                       R7 R8 K12 ["Style"]
       43 GETTABLEKS                       R6 R7 K14 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 DUPCLOSURE                       R7 K16 [PROTO_1]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 DUPCLOSURE                       R8 K17 [PROTO_2]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R3
       56 RETURN                           R8 1
