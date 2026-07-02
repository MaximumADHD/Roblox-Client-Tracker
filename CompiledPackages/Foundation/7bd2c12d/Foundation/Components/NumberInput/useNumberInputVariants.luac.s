PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationNumberInputFixControlSizes"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R2 R0 K1 ["width"]
        6 JUMPIFNOT                        R2 ; [+21]
        7 GETTABLEKS                       R2 R0 K2 ["horizontalPadding"]
        9 JUMPIFNOT                        R2 ; [+18]
       10 GETIMPORT                        R1 K5 [UDim.new]
       12 LOADN                            R2 0
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K7 ["FoundationNumberInputTokenBasedWidth"]
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
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K7 ["FoundationNumberInputTokenBasedWidth"]
       34 JUMPIFNOT                        R5 ; [+3]
       35 GETTABLEKS                       R4 R0 K1 ["width"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 SETTABLEKS                       R4 R3 K1 ["width"]
       41 SETTABLEKS                       R3 R2 K9 ["container"]
       43 DUPTABLE                         R3 K20 [{["tag"] = "size-full fill", ["width"], ["padding"]}]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K7 ["FoundationNumberInputTokenBasedWidth"]
       47 JUMPIFNOT                        R5 ; [+3]
       48 GETTABLEKS                       R4 R0 K8 ["buttonWidth"]
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R4 R0 K1 ["width"]
       53 SETTABLEKS                       R4 R3 K1 ["width"]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K0 ["FoundationNumberInputFixControlSizes"]
       58 JUMPIFNOT                        R5 ; [+1]
       59 JUMPIFNOT                        R1 ; [+6]
       60 DUPTABLE                         R4 K23 [{"left", "right"}]
       61 SETTABLEKS                       R1 R4 K21 ["left"]
       63 SETTABLEKS                       R1 R4 K22 ["right"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R4
       67 SETTABLEKS                       R4 R3 K19 ["padding"]
       69 SETTABLEKS                       R3 R2 K10 ["button"]
       71 DUPTABLE                         R3 K24 [{"tag"}]
       72 GETTABLEKS                       R4 R0 K25 ["upButtonTag"]
       74 SETTABLEKS                       R4 R3 K17 ["tag"]
       76 SETTABLEKS                       R3 R2 K11 ["upButton"]
       78 DUPTABLE                         R3 K24 [{"tag"}]
       79 GETTABLEKS                       R4 R0 K26 ["downButtonTag"]
       81 SETTABLEKS                       R4 R3 K17 ["tag"]
       83 SETTABLEKS                       R3 R2 K12 ["downButton"]
       85 DUPTABLE                         R3 K28 [{"size", "tag"}]
       86 GETTABLEKS                       R4 R0 K29 ["splitButtonSize"]
       88 SETTABLEKS                       R4 R3 K27 ["size"]
       90 GETTABLEKS                       R4 R0 K30 ["splitButtonTag"]
       92 SETTABLEKS                       R4 R3 K17 ["tag"]
       94 SETTABLEKS                       R3 R2 K13 ["splitButton"]
       96 GETUPVAL                         R4 0
       97 GETTABLEKS                       R4 R4 K0 ["FoundationNumberInputFixControlSizes"]
       99 JUMPIFNOT                        R4 ; [+6]
      100 DUPTABLE                         R3 K24 [{"tag"}]
      101 GETTABLEKS                       R4 R0 K31 ["iconTag"]
      103 SETTABLEKS                       R4 R3 K17 ["tag"]
      105 JUMP                             ; [+2]
      106 NEWTABLE                         R3 0 0
      108 SETTABLEKS                       R3 R2 K14 ["icon"]
      110 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"upButton", "downButton", "splitButton", "icon"}]
        1 DUPTABLE                         R2 K7 [{["tag"] = "size-full fill padding-bottom-xsmall"}]
        2 SETTABLEKS                       R2 R1 K0 ["upButton"]
        4 DUPTABLE                         R2 K9 [{["tag"] = "size-full fill padding-top-xsmall"}]
        5 SETTABLEKS                       R2 R1 K1 ["downButton"]
        7 DUPTABLE                         R2 K11 [{["tag"] = "bg-shift-100"}]
        8 SETTABLEKS                       R2 R1 K2 ["splitButton"]
       10 DUPTABLE                         R2 K12 [{"tag"}]
       11 NEWTABLE                         R3 2 0
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K13 ["content-default"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K14 ["FoundationNumberInputFixControlSizes"]
       19 NOT                              R4 R5
       20 SETTABLEKS                       R4 R3 K15 ["size-150-100"]
       22 SETTABLEKS                       R3 R2 K5 ["tag"]
       24 SETTABLEKS                       R2 R1 K3 ["icon"]
       26 NEWTABLE                         R2 4 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K16 ["XSmall"]
       31 GETUPVAL                         R4 2
       32 DUPTABLE                         R5 K27 [{["width"], ["buttonWidth"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-xxsmall", ["downButtonTag"] = "padding-bottom-xxsmall", ["splitButtonTag"] = "radius-small", ["splitButtonSize"]}]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K28 ["FoundationNumberInputTokenBasedWidth"]
       36 JUMPIFNOT                        R7 ; [+6]
       37 GETTABLEKS                       R7 R0 K30 ["Size"]
       39 GETTABLEKS                       R7 R7 K31 ["Size_3000"]
       41 MULK                             R6 R7 K29 [1.16666666666667]
       42 JUMP                             ; [+4]
       43 GETTABLEKS                       R6 R0 K30 ["Size"]
       45 GETTABLEKS                       R6 R6 K32 ["Size_400"]
       47 SETTABLEKS                       R6 R5 K17 ["width"]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K28 ["FoundationNumberInputTokenBasedWidth"]
       52 JUMPIFNOT                        R7 ; [+5]
       53 GETTABLEKS                       R6 R0 K30 ["Size"]
       55 GETTABLEKS                       R6 R6 K32 ["Size_400"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K18 ["buttonWidth"]
       61 GETTABLEKS                       R6 R0 K30 ["Size"]
       63 GETTABLEKS                       R6 R6 K33 ["Size_150"]
       65 SETTABLEKS                       R6 R5 K19 ["horizontalPadding"]
       67 GETTABLEKS                       R6 R0 K30 ["Size"]
       69 GETTABLEKS                       R6 R6 K34 ["Size_600"]
       71 SETTABLEKS                       R6 R5 K26 ["splitButtonSize"]
       73 CALL                             R4 1 1
       74 SETTABLE                         R4 R2 R3
       75 GETUPVAL                         R3 1
       76 GETTABLEKS                       R3 R3 K35 ["Small"]
       78 GETUPVAL                         R4 2
       79 DUPTABLE                         R5 K39 [{["width"], ["buttonWidth"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-xsmall", ["downButtonTag"] = "padding-bottom-xsmall", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K28 ["FoundationNumberInputTokenBasedWidth"]
       83 JUMPIFNOT                        R7 ; [+6]
       84 GETTABLEKS                       R7 R0 K30 ["Size"]
       86 GETTABLEKS                       R7 R7 K31 ["Size_3000"]
       88 MULK                             R6 R7 K40 [1.33333333333333]
       89 JUMP                             ; [+4]
       90 GETTABLEKS                       R6 R0 K30 ["Size"]
       92 GETTABLEKS                       R6 R6 K34 ["Size_600"]
       94 SETTABLEKS                       R6 R5 K17 ["width"]
       96 GETUPVAL                         R7 0
       97 GETTABLEKS                       R7 R7 K28 ["FoundationNumberInputTokenBasedWidth"]
       99 JUMPIFNOT                        R7 ; [+5]
      100 GETTABLEKS                       R6 R0 K30 ["Size"]
      102 GETTABLEKS                       R6 R6 K34 ["Size_600"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R6
      106 SETTABLEKS                       R6 R5 K18 ["buttonWidth"]
      108 GETTABLEKS                       R6 R0 K30 ["Size"]
      110 GETTABLEKS                       R6 R6 K33 ["Size_150"]
      112 SETTABLEKS                       R6 R5 K19 ["horizontalPadding"]
      114 GETTABLEKS                       R6 R0 K30 ["Size"]
      116 GETTABLEKS                       R6 R6 K41 ["Size_800"]
      118 SETTABLEKS                       R6 R5 K26 ["splitButtonSize"]
      120 CALL                             R4 1 1
      121 SETTABLE                         R4 R2 R3
      122 GETUPVAL                         R3 1
      123 GETTABLEKS                       R3 R3 K42 ["Medium"]
      125 GETUPVAL                         R4 2
      126 DUPTABLE                         R5 K45 [{["width"], ["buttonWidth"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-small", ["downButtonTag"] = "padding-bottom-small", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
      127 GETUPVAL                         R7 0
      128 GETTABLEKS                       R7 R7 K28 ["FoundationNumberInputTokenBasedWidth"]
      130 JUMPIFNOT                        R7 ; [+6]
      131 GETTABLEKS                       R7 R0 K30 ["Size"]
      133 GETTABLEKS                       R7 R7 K31 ["Size_3000"]
      135 MULK                             R6 R7 K46 [1.5]
      136 JUMP                             ; [+4]
      137 GETTABLEKS                       R6 R0 K30 ["Size"]
      139 GETTABLEKS                       R6 R6 K34 ["Size_600"]
      141 SETTABLEKS                       R6 R5 K17 ["width"]
      143 GETUPVAL                         R7 0
      144 GETTABLEKS                       R7 R7 K28 ["FoundationNumberInputTokenBasedWidth"]
      146 JUMPIFNOT                        R7 ; [+5]
      147 GETTABLEKS                       R6 R0 K30 ["Size"]
      149 GETTABLEKS                       R6 R6 K34 ["Size_600"]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R6
      153 SETTABLEKS                       R6 R5 K18 ["buttonWidth"]
      155 GETTABLEKS                       R6 R0 K30 ["Size"]
      157 GETTABLEKS                       R6 R6 K33 ["Size_150"]
      159 SETTABLEKS                       R6 R5 K19 ["horizontalPadding"]
      161 GETTABLEKS                       R6 R0 K30 ["Size"]
      163 GETTABLEKS                       R6 R6 K47 ["Size_1000"]
      165 SETTABLEKS                       R6 R5 K26 ["splitButtonSize"]
      167 CALL                             R4 1 1
      168 SETTABLE                         R4 R2 R3
      169 GETUPVAL                         R3 1
      170 GETTABLEKS                       R3 R3 K48 ["Large"]
      172 GETUPVAL                         R4 2
      173 DUPTABLE                         R5 K51 [{["width"], ["buttonWidth"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-medium", ["downButtonTag"] = "padding-bottom-medium", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
      174 GETUPVAL                         R7 0
      175 GETTABLEKS                       R7 R7 K28 ["FoundationNumberInputTokenBasedWidth"]
      177 JUMPIFNOT                        R7 ; [+6]
      178 GETTABLEKS                       R7 R0 K30 ["Size"]
      180 GETTABLEKS                       R7 R7 K31 ["Size_3000"]
      182 MULK                             R6 R7 K52 [1.66666666666667]
      183 JUMP                             ; [+4]
      184 GETTABLEKS                       R6 R0 K30 ["Size"]
      186 GETTABLEKS                       R6 R6 K41 ["Size_800"]
      188 SETTABLEKS                       R6 R5 K17 ["width"]
      190 GETUPVAL                         R7 0
      191 GETTABLEKS                       R7 R7 K28 ["FoundationNumberInputTokenBasedWidth"]
      193 JUMPIFNOT                        R7 ; [+5]
      194 GETTABLEKS                       R6 R0 K30 ["Size"]
      196 GETTABLEKS                       R6 R6 K41 ["Size_800"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R6
      200 SETTABLEKS                       R6 R5 K18 ["buttonWidth"]
      202 GETTABLEKS                       R6 R0 K30 ["Size"]
      204 GETTABLEKS                       R6 R6 K33 ["Size_150"]
      206 SETTABLEKS                       R6 R5 K19 ["horizontalPadding"]
      208 GETTABLEKS                       R6 R0 K30 ["Size"]
      210 GETTABLEKS                       R6 R6 K53 ["Size_1200"]
      212 SETTABLEKS                       R6 R5 K26 ["splitButtonSize"]
      214 CALL                             R4 1 1
      215 SETTABLE                         R4 R2 R3
      216 GETUPVAL                         R4 0
      217 GETTABLEKS                       R4 R4 K14 ["FoundationNumberInputFixControlSizes"]
      219 JUMPIFNOT                        R4 ; [+10]
      220 NEWTABLE                         R3 1 0
      222 GETUPVAL                         R4 3
      223 GETTABLEKS                       R4 R4 K54 ["Stacked"]
      225 GETUPVAL                         R5 2
      226 DUPTABLE                         R6 K56 [{["iconTag"] = "size-150-100"}]
      227 CALL                             R5 1 1
      228 SETTABLE                         R5 R3 R4
      229 JUMP                             ; [+1]
      230 LOADNIL                          R3
      231 DUPTABLE                         R4 K60 [{"common", "sizes", "controlVariants"}]
      232 SETTABLEKS                       R1 R4 K57 ["common"]
      234 SETTABLEKS                       R2 R4 K58 ["sizes"]
      236 SETTABLEKS                       R3 R4 K59 ["controlVariants"]
      238 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["NumberInput"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETUPVAL                         R8 3
       14 GETTABLEKS                       R8 R8 K4 ["FoundationNumberInputFixControlSizes"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["NumberInputControlsVariant"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Utility"]
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
