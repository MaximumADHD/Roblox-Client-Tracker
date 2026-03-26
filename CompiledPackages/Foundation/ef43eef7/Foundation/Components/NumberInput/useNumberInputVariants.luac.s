PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationNumberInputFixControlSizes"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R2 R0 K1 ["width"]
        6 JUMPIFNOT                        R2 ; [+21]
        7 GETTABLEKS                       R2 R0 K2 ["horizontalPadding"]
        9 JUMPIFNOT                        R2 ; [+18]
       10 GETIMPORT                        R1 K5 [UDim.new]
       12 LOADN                            R2 0
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K7 ["FoundationNumberInputTokenBasedWidth"]
       16 JUMPIFNOT                        R6 ; [+3]
       17 GETTABLEKS                       R5 R0 K8 ["buttonWidth"]
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R5 R0 K1 ["width"]
       22 GETTABLEKS                       R6 R0 K2 ["horizontalPadding"]
       24 SUB                              R4 R5 R6
       25 DIVK                             R3 R4 K6 [2]
       26 CALL                             R1 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R1
       29 DUPTABLE                         R2 K15 [{"container", "button", "upButton", "downButton", "splitButton", "icon"}]
       30 DUPTABLE                         R3 K16 [{"width"}]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K7 ["FoundationNumberInputTokenBasedWidth"]
       34 JUMPIFNOT                        R5 ; [+3]
       35 GETTABLEKS                       R4 R0 K1 ["width"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 SETTABLEKS                       R4 R3 K1 ["width"]
       41 SETTABLEKS                       R3 R2 K9 ["container"]
       43 DUPTABLE                         R3 K19 [{"tag", "width", "padding"}]
       44 LOADK                            R4 K20 ["size-full fill"]
       45 SETTABLEKS                       R4 R3 K17 ["tag"]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R5 R6 K7 ["FoundationNumberInputTokenBasedWidth"]
       50 JUMPIFNOT                        R5 ; [+3]
       51 GETTABLEKS                       R4 R0 K8 ["buttonWidth"]
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R4 R0 K1 ["width"]
       56 SETTABLEKS                       R4 R3 K1 ["width"]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R5 R6 K0 ["FoundationNumberInputFixControlSizes"]
       61 JUMPIFNOT                        R5 ; [+1]
       62 JUMPIFNOT                        R1 ; [+6]
       63 DUPTABLE                         R4 K23 [{"left", "right"}]
       64 SETTABLEKS                       R1 R4 K21 ["left"]
       66 SETTABLEKS                       R1 R4 K22 ["right"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R4
       70 SETTABLEKS                       R4 R3 K18 ["padding"]
       72 SETTABLEKS                       R3 R2 K10 ["button"]
       74 DUPTABLE                         R3 K24 [{"tag"}]
       75 GETTABLEKS                       R4 R0 K25 ["upButtonTag"]
       77 SETTABLEKS                       R4 R3 K17 ["tag"]
       79 SETTABLEKS                       R3 R2 K11 ["upButton"]
       81 DUPTABLE                         R3 K24 [{"tag"}]
       82 GETTABLEKS                       R4 R0 K26 ["downButtonTag"]
       84 SETTABLEKS                       R4 R3 K17 ["tag"]
       86 SETTABLEKS                       R3 R2 K12 ["downButton"]
       88 DUPTABLE                         R3 K28 [{"size", "tag"}]
       89 GETTABLEKS                       R4 R0 K29 ["splitButtonSize"]
       91 SETTABLEKS                       R4 R3 K27 ["size"]
       93 GETTABLEKS                       R4 R0 K30 ["splitButtonTag"]
       95 SETTABLEKS                       R4 R3 K17 ["tag"]
       97 SETTABLEKS                       R3 R2 K13 ["splitButton"]
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R4 R5 K0 ["FoundationNumberInputFixControlSizes"]
      102 JUMPIFNOT                        R4 ; [+6]
      103 DUPTABLE                         R3 K24 [{"tag"}]
      104 GETTABLEKS                       R4 R0 K31 ["iconTag"]
      106 SETTABLEKS                       R4 R3 K17 ["tag"]
      108 JUMP                             ; [+2]
      109 NEWTABLE                         R3 0 0
      111 SETTABLEKS                       R3 R2 K14 ["icon"]
      113 RETURN                           R2 1

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
       20 NEWTABLE                         R3 2 0
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K10 ["content-default"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K11 ["FoundationNumberInputFixControlSizes"]
       28 NOT                              R4 R5
       29 SETTABLEKS                       R4 R3 K12 ["size-150-100"]
       31 SETTABLEKS                       R3 R2 K5 ["tag"]
       33 SETTABLEKS                       R2 R1 K3 ["icon"]
       35 NEWTABLE                         R2 4 0
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K13 ["XSmall"]
       40 GETUPVAL                         R4 2
       41 DUPTABLE                         R5 K21 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K22 ["FoundationNumberInputTokenBasedWidth"]
       45 JUMPIFNOT                        R7 ; [+6]
       46 GETTABLEKS                       R8 R0 K24 ["Size"]
       48 GETTABLEKS                       R7 R8 K25 ["Size_3000"]
       50 MULK                             R6 R7 K23 [1.16666666666667]
       51 JUMP                             ; [+4]
       52 GETTABLEKS                       R7 R0 K24 ["Size"]
       54 GETTABLEKS                       R6 R7 K26 ["Size_400"]
       56 SETTABLEKS                       R6 R5 K14 ["width"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K22 ["FoundationNumberInputTokenBasedWidth"]
       61 JUMPIFNOT                        R7 ; [+5]
       62 GETTABLEKS                       R7 R0 K24 ["Size"]
       64 GETTABLEKS                       R6 R7 K26 ["Size_400"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R6
       68 SETTABLEKS                       R6 R5 K15 ["buttonWidth"]
       70 GETTABLEKS                       R7 R0 K24 ["Size"]
       72 GETTABLEKS                       R6 R7 K27 ["Size_150"]
       74 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
       76 LOADK                            R6 K28 ["padding-top-xxsmall"]
       77 SETTABLEKS                       R6 R5 K17 ["upButtonTag"]
       79 LOADK                            R6 K29 ["padding-bottom-xxsmall"]
       80 SETTABLEKS                       R6 R5 K18 ["downButtonTag"]
       82 LOADK                            R6 K30 ["radius-small"]
       83 SETTABLEKS                       R6 R5 K19 ["splitButtonTag"]
       85 GETTABLEKS                       R7 R0 K24 ["Size"]
       87 GETTABLEKS                       R6 R7 K31 ["Size_600"]
       89 SETTABLEKS                       R6 R5 K20 ["splitButtonSize"]
       91 CALL                             R4 1 1
       92 SETTABLE                         R4 R2 R3
       93 GETUPVAL                         R4 1
       94 GETTABLEKS                       R3 R4 K32 ["Small"]
       96 GETUPVAL                         R4 2
       97 DUPTABLE                         R5 K21 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       98 GETUPVAL                         R8 0
       99 GETTABLEKS                       R7 R8 K22 ["FoundationNumberInputTokenBasedWidth"]
      101 JUMPIFNOT                        R7 ; [+6]
      102 GETTABLEKS                       R8 R0 K24 ["Size"]
      104 GETTABLEKS                       R7 R8 K25 ["Size_3000"]
      106 MULK                             R6 R7 K33 [1.33333333333333]
      107 JUMP                             ; [+4]
      108 GETTABLEKS                       R7 R0 K24 ["Size"]
      110 GETTABLEKS                       R6 R7 K31 ["Size_600"]
      112 SETTABLEKS                       R6 R5 K14 ["width"]
      114 GETUPVAL                         R8 0
      115 GETTABLEKS                       R7 R8 K22 ["FoundationNumberInputTokenBasedWidth"]
      117 JUMPIFNOT                        R7 ; [+5]
      118 GETTABLEKS                       R7 R0 K24 ["Size"]
      120 GETTABLEKS                       R6 R7 K31 ["Size_600"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R6
      124 SETTABLEKS                       R6 R5 K15 ["buttonWidth"]
      126 GETTABLEKS                       R7 R0 K24 ["Size"]
      128 GETTABLEKS                       R6 R7 K27 ["Size_150"]
      130 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
      132 LOADK                            R6 K34 ["padding-top-xsmall"]
      133 SETTABLEKS                       R6 R5 K17 ["upButtonTag"]
      135 LOADK                            R6 K35 ["padding-bottom-xsmall"]
      136 SETTABLEKS                       R6 R5 K18 ["downButtonTag"]
      138 LOADK                            R6 K36 ["radius-medium"]
      139 SETTABLEKS                       R6 R5 K19 ["splitButtonTag"]
      141 GETTABLEKS                       R7 R0 K24 ["Size"]
      143 GETTABLEKS                       R6 R7 K37 ["Size_800"]
      145 SETTABLEKS                       R6 R5 K20 ["splitButtonSize"]
      147 CALL                             R4 1 1
      148 SETTABLE                         R4 R2 R3
      149 GETUPVAL                         R4 1
      150 GETTABLEKS                       R3 R4 K38 ["Medium"]
      152 GETUPVAL                         R4 2
      153 DUPTABLE                         R5 K21 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      154 GETUPVAL                         R8 0
      155 GETTABLEKS                       R7 R8 K22 ["FoundationNumberInputTokenBasedWidth"]
      157 JUMPIFNOT                        R7 ; [+6]
      158 GETTABLEKS                       R8 R0 K24 ["Size"]
      160 GETTABLEKS                       R7 R8 K25 ["Size_3000"]
      162 MULK                             R6 R7 K39 [1.5]
      163 JUMP                             ; [+4]
      164 GETTABLEKS                       R7 R0 K24 ["Size"]
      166 GETTABLEKS                       R6 R7 K31 ["Size_600"]
      168 SETTABLEKS                       R6 R5 K14 ["width"]
      170 GETUPVAL                         R8 0
      171 GETTABLEKS                       R7 R8 K22 ["FoundationNumberInputTokenBasedWidth"]
      173 JUMPIFNOT                        R7 ; [+5]
      174 GETTABLEKS                       R7 R0 K24 ["Size"]
      176 GETTABLEKS                       R6 R7 K31 ["Size_600"]
      178 JUMP                             ; [+1]
      179 LOADNIL                          R6
      180 SETTABLEKS                       R6 R5 K15 ["buttonWidth"]
      182 GETTABLEKS                       R7 R0 K24 ["Size"]
      184 GETTABLEKS                       R6 R7 K27 ["Size_150"]
      186 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
      188 LOADK                            R6 K40 ["padding-top-small"]
      189 SETTABLEKS                       R6 R5 K17 ["upButtonTag"]
      191 LOADK                            R6 K41 ["padding-bottom-small"]
      192 SETTABLEKS                       R6 R5 K18 ["downButtonTag"]
      194 LOADK                            R6 K36 ["radius-medium"]
      195 SETTABLEKS                       R6 R5 K19 ["splitButtonTag"]
      197 GETTABLEKS                       R7 R0 K24 ["Size"]
      199 GETTABLEKS                       R6 R7 K42 ["Size_1000"]
      201 SETTABLEKS                       R6 R5 K20 ["splitButtonSize"]
      203 CALL                             R4 1 1
      204 SETTABLE                         R4 R2 R3
      205 GETUPVAL                         R4 1
      206 GETTABLEKS                       R3 R4 K43 ["Large"]
      208 GETUPVAL                         R4 2
      209 DUPTABLE                         R5 K21 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      210 GETUPVAL                         R8 0
      211 GETTABLEKS                       R7 R8 K22 ["FoundationNumberInputTokenBasedWidth"]
      213 JUMPIFNOT                        R7 ; [+6]
      214 GETTABLEKS                       R8 R0 K24 ["Size"]
      216 GETTABLEKS                       R7 R8 K25 ["Size_3000"]
      218 MULK                             R6 R7 K44 [1.66666666666667]
      219 JUMP                             ; [+4]
      220 GETTABLEKS                       R7 R0 K24 ["Size"]
      222 GETTABLEKS                       R6 R7 K37 ["Size_800"]
      224 SETTABLEKS                       R6 R5 K14 ["width"]
      226 GETUPVAL                         R8 0
      227 GETTABLEKS                       R7 R8 K22 ["FoundationNumberInputTokenBasedWidth"]
      229 JUMPIFNOT                        R7 ; [+5]
      230 GETTABLEKS                       R7 R0 K24 ["Size"]
      232 GETTABLEKS                       R6 R7 K37 ["Size_800"]
      234 JUMP                             ; [+1]
      235 LOADNIL                          R6
      236 SETTABLEKS                       R6 R5 K15 ["buttonWidth"]
      238 GETTABLEKS                       R7 R0 K24 ["Size"]
      240 GETTABLEKS                       R6 R7 K27 ["Size_150"]
      242 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
      244 LOADK                            R6 K45 ["padding-top-medium"]
      245 SETTABLEKS                       R6 R5 K17 ["upButtonTag"]
      247 LOADK                            R6 K46 ["padding-bottom-medium"]
      248 SETTABLEKS                       R6 R5 K18 ["downButtonTag"]
      250 LOADK                            R6 K36 ["radius-medium"]
      251 SETTABLEKS                       R6 R5 K19 ["splitButtonTag"]
      253 GETTABLEKS                       R7 R0 K24 ["Size"]
      255 GETTABLEKS                       R6 R7 K47 ["Size_1200"]
      257 SETTABLEKS                       R6 R5 K20 ["splitButtonSize"]
      259 CALL                             R4 1 1
      260 SETTABLE                         R4 R2 R3
      261 GETUPVAL                         R5 0
      262 GETTABLEKS                       R4 R5 K11 ["FoundationNumberInputFixControlSizes"]
      264 JUMPIFNOT                        R4 ; [+13]
      265 NEWTABLE                         R3 1 0
      267 GETUPVAL                         R5 3
      268 GETTABLEKS                       R4 R5 K48 ["Stacked"]
      270 GETUPVAL                         R5 2
      271 DUPTABLE                         R6 K50 [{"iconTag"}]
      272 LOADK                            R7 K12 ["size-150-100"]
      273 SETTABLEKS                       R7 R6 K49 ["iconTag"]
      275 CALL                             R5 1 1
      276 SETTABLE                         R5 R3 R4
      277 JUMP                             ; [+1]
      278 LOADNIL                          R3
      279 DUPTABLE                         R4 K54 [{"common", "sizes", "controlVariants"}]
      280 SETTABLEKS                       R1 R4 K51 ["common"]
      282 SETTABLEKS                       R2 R4 K52 ["sizes"]
      284 SETTABLEKS                       R3 R4 K53 ["controlVariants"]
      286 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["NumberInput"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETUPVAL                         R9 3
       14 GETTABLEKS                       R8 R9 K4 ["FoundationNumberInputFixControlSizes"]
       16 JUMPIFNOT                        R8 ; [+4]
       17 GETTABLEKS                       R8 R3 K5 ["controlVariants"]
       19 GETTABLE                         R7 R8 R2
       20 JUMP                             ; [+1]
       21 LOADNIL                          R7
       22 CALL                             R4 3 -1
       23 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["NumberInputControlsVariant"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R5 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Utility"]
       32 GETTABLEKS                       R5 R6 K11 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Providers"]
       39 GETTABLEKS                       R7 R8 K13 ["Style"]
       41 GETTABLEKS                       R6 R7 K14 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K12 ["Providers"]
       48 GETTABLEKS                       R8 R9 K13 ["Style"]
       50 GETTABLEKS                       R7 R8 K15 ["VariantsContext"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K16 [PROTO_0]
       54 CAPTURE                          VAL R3
       55 DUPCLOSURE                       R8 K17 [PROTO_1]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R1
       60 DUPCLOSURE                       R9 K18 [PROTO_2]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 RETURN                           R9 1
