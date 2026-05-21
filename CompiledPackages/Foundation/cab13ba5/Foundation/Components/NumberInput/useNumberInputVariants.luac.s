PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["width"]
        2 JUMPIFNOT                        R2 ; [+14]
        3 GETTABLEKS                       R2 R0 K1 ["horizontalPadding"]
        5 JUMPIFNOT                        R2 ; [+11]
        6 GETIMPORT                        R1 K4 [UDim.new]
        8 LOADN                            R2 0
        9 GETTABLEKS                       R5 R0 K6 ["buttonWidth"]
       11 GETTABLEKS                       R6 R0 K1 ["horizontalPadding"]
       13 SUB                              R4 R5 R6
       14 DIVK                             R3 R4 K5 [2]
       15 CALL                             R1 2 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 DUPTABLE                         R2 K13 [{"container", "button", "upButton", "downButton", "splitButton", "icon"}]
       19 DUPTABLE                         R3 K14 [{"width"}]
       20 GETTABLEKS                       R4 R0 K0 ["width"]
       22 SETTABLEKS                       R4 R3 K0 ["width"]
       24 SETTABLEKS                       R3 R2 K7 ["container"]
       26 DUPTABLE                         R3 K17 [{"tag", "width", "padding"}]
       27 LOADK                            R4 K18 ["fill size-full"]
       28 SETTABLEKS                       R4 R3 K15 ["tag"]
       30 GETTABLEKS                       R4 R0 K6 ["buttonWidth"]
       32 SETTABLEKS                       R4 R3 K0 ["width"]
       34 JUMPIFNOT                        R1 ; [+6]
       35 DUPTABLE                         R4 K21 [{"left", "right"}]
       36 SETTABLEKS                       R1 R4 K19 ["left"]
       38 SETTABLEKS                       R1 R4 K20 ["right"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 SETTABLEKS                       R4 R3 K16 ["padding"]
       44 SETTABLEKS                       R3 R2 K8 ["button"]
       46 DUPTABLE                         R3 K22 [{"tag"}]
       47 GETTABLEKS                       R4 R0 K23 ["upButtonTag"]
       49 SETTABLEKS                       R4 R3 K15 ["tag"]
       51 SETTABLEKS                       R3 R2 K9 ["upButton"]
       53 DUPTABLE                         R3 K22 [{"tag"}]
       54 GETTABLEKS                       R4 R0 K24 ["downButtonTag"]
       56 SETTABLEKS                       R4 R3 K15 ["tag"]
       58 SETTABLEKS                       R3 R2 K10 ["downButton"]
       60 DUPTABLE                         R3 K26 [{"size", "tag"}]
       61 GETTABLEKS                       R4 R0 K27 ["splitButtonSize"]
       63 SETTABLEKS                       R4 R3 K25 ["size"]
       65 GETTABLEKS                       R4 R0 K28 ["splitButtonTag"]
       67 SETTABLEKS                       R4 R3 K15 ["tag"]
       69 SETTABLEKS                       R3 R2 K11 ["splitButton"]
       71 DUPTABLE                         R3 K22 [{"tag"}]
       72 GETTABLEKS                       R4 R0 K29 ["iconTag"]
       74 SETTABLEKS                       R4 R3 K15 ["tag"]
       76 SETTABLEKS                       R3 R2 K12 ["icon"]
       78 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"upButton", "downButton", "splitButton", "icon"}]
        1 DUPTABLE                         R2 K6 [{"tag"}]
        2 LOADK                            R3 K7 ["fill size-full padding-bottom-xsmall"]
        3 SETTABLEKS                       R3 R2 K5 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["upButton"]
        7 DUPTABLE                         R2 K6 [{"tag"}]
        8 LOADK                            R3 K8 ["fill size-full padding-top-xsmall"]
        9 SETTABLEKS                       R3 R2 K5 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["downButton"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K9 ["FoundationNumberInputVariant"]
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADNIL                          R2
       18 JUMP                             ; [+4]
       19 DUPTABLE                         R2 K6 [{"tag"}]
       20 LOADK                            R3 K10 ["bg-shift-100"]
       21 SETTABLEKS                       R3 R2 K5 ["tag"]
       23 SETTABLEKS                       R2 R1 K2 ["splitButton"]
       25 DUPTABLE                         R2 K6 [{"tag"}]
       26 LOADK                            R3 K11 ["content-default"]
       27 SETTABLEKS                       R3 R2 K5 ["tag"]
       29 SETTABLEKS                       R2 R1 K3 ["icon"]
       31 NEWTABLE                         R2 4 0
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K12 ["XSmall"]
       36 GETUPVAL                         R4 2
       37 DUPTABLE                         R5 K20 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       38 GETTABLEKS                       R7 R0 K22 ["Size"]
       40 GETTABLEKS                       R7 R7 K23 ["Size_3000"]
       42 MULK                             R6 R7 K21 [1.16666666666667]
       43 SETTABLEKS                       R6 R5 K13 ["width"]
       45 GETTABLEKS                       R6 R0 K22 ["Size"]
       47 GETTABLEKS                       R6 R6 K24 ["Size_400"]
       49 SETTABLEKS                       R6 R5 K14 ["buttonWidth"]
       51 GETTABLEKS                       R6 R0 K22 ["Size"]
       53 GETTABLEKS                       R6 R6 K25 ["Size_150"]
       55 SETTABLEKS                       R6 R5 K15 ["horizontalPadding"]
       57 LOADK                            R6 K26 ["padding-top-xxsmall"]
       58 SETTABLEKS                       R6 R5 K16 ["upButtonTag"]
       60 LOADK                            R6 K27 ["padding-bottom-xxsmall"]
       61 SETTABLEKS                       R6 R5 K17 ["downButtonTag"]
       63 LOADK                            R6 K28 ["radius-small"]
       64 SETTABLEKS                       R6 R5 K18 ["splitButtonTag"]
       66 GETTABLEKS                       R6 R0 K22 ["Size"]
       68 GETTABLEKS                       R6 R6 K29 ["Size_600"]
       70 SETTABLEKS                       R6 R5 K19 ["splitButtonSize"]
       72 CALL                             R4 1 1
       73 SETTABLE                         R4 R2 R3
       74 GETUPVAL                         R3 1
       75 GETTABLEKS                       R3 R3 K30 ["Small"]
       77 GETUPVAL                         R4 2
       78 DUPTABLE                         R5 K20 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       79 GETTABLEKS                       R7 R0 K22 ["Size"]
       81 GETTABLEKS                       R7 R7 K23 ["Size_3000"]
       83 MULK                             R6 R7 K31 [1.33333333333333]
       84 SETTABLEKS                       R6 R5 K13 ["width"]
       86 GETTABLEKS                       R6 R0 K22 ["Size"]
       88 GETTABLEKS                       R6 R6 K29 ["Size_600"]
       90 SETTABLEKS                       R6 R5 K14 ["buttonWidth"]
       92 GETTABLEKS                       R6 R0 K22 ["Size"]
       94 GETTABLEKS                       R6 R6 K25 ["Size_150"]
       96 SETTABLEKS                       R6 R5 K15 ["horizontalPadding"]
       98 LOADK                            R6 K32 ["padding-top-xsmall"]
       99 SETTABLEKS                       R6 R5 K16 ["upButtonTag"]
      101 LOADK                            R6 K33 ["padding-bottom-xsmall"]
      102 SETTABLEKS                       R6 R5 K17 ["downButtonTag"]
      104 LOADK                            R6 K34 ["radius-medium"]
      105 SETTABLEKS                       R6 R5 K18 ["splitButtonTag"]
      107 GETTABLEKS                       R6 R0 K22 ["Size"]
      109 GETTABLEKS                       R6 R6 K35 ["Size_800"]
      111 SETTABLEKS                       R6 R5 K19 ["splitButtonSize"]
      113 CALL                             R4 1 1
      114 SETTABLE                         R4 R2 R3
      115 GETUPVAL                         R3 1
      116 GETTABLEKS                       R3 R3 K36 ["Medium"]
      118 GETUPVAL                         R4 2
      119 DUPTABLE                         R5 K20 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      120 GETTABLEKS                       R7 R0 K22 ["Size"]
      122 GETTABLEKS                       R7 R7 K23 ["Size_3000"]
      124 MULK                             R6 R7 K37 [1.5]
      125 SETTABLEKS                       R6 R5 K13 ["width"]
      127 GETTABLEKS                       R6 R0 K22 ["Size"]
      129 GETTABLEKS                       R6 R6 K29 ["Size_600"]
      131 SETTABLEKS                       R6 R5 K14 ["buttonWidth"]
      133 GETTABLEKS                       R6 R0 K22 ["Size"]
      135 GETTABLEKS                       R6 R6 K25 ["Size_150"]
      137 SETTABLEKS                       R6 R5 K15 ["horizontalPadding"]
      139 LOADK                            R6 K38 ["padding-top-small"]
      140 SETTABLEKS                       R6 R5 K16 ["upButtonTag"]
      142 LOADK                            R6 K39 ["padding-bottom-small"]
      143 SETTABLEKS                       R6 R5 K17 ["downButtonTag"]
      145 LOADK                            R6 K34 ["radius-medium"]
      146 SETTABLEKS                       R6 R5 K18 ["splitButtonTag"]
      148 GETTABLEKS                       R6 R0 K22 ["Size"]
      150 GETTABLEKS                       R6 R6 K40 ["Size_1000"]
      152 SETTABLEKS                       R6 R5 K19 ["splitButtonSize"]
      154 CALL                             R4 1 1
      155 SETTABLE                         R4 R2 R3
      156 GETUPVAL                         R3 1
      157 GETTABLEKS                       R3 R3 K41 ["Large"]
      159 GETUPVAL                         R4 2
      160 DUPTABLE                         R5 K20 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      161 GETTABLEKS                       R7 R0 K22 ["Size"]
      163 GETTABLEKS                       R7 R7 K23 ["Size_3000"]
      165 MULK                             R6 R7 K42 [1.66666666666667]
      166 SETTABLEKS                       R6 R5 K13 ["width"]
      168 GETTABLEKS                       R6 R0 K22 ["Size"]
      170 GETTABLEKS                       R6 R6 K35 ["Size_800"]
      172 SETTABLEKS                       R6 R5 K14 ["buttonWidth"]
      174 GETTABLEKS                       R6 R0 K22 ["Size"]
      176 GETTABLEKS                       R6 R6 K25 ["Size_150"]
      178 SETTABLEKS                       R6 R5 K15 ["horizontalPadding"]
      180 LOADK                            R6 K43 ["padding-top-medium"]
      181 SETTABLEKS                       R6 R5 K16 ["upButtonTag"]
      183 LOADK                            R6 K44 ["padding-bottom-medium"]
      184 SETTABLEKS                       R6 R5 K17 ["downButtonTag"]
      186 LOADK                            R6 K34 ["radius-medium"]
      187 SETTABLEKS                       R6 R5 K18 ["splitButtonTag"]
      189 GETTABLEKS                       R6 R0 K22 ["Size"]
      191 GETTABLEKS                       R6 R6 K45 ["Size_1200"]
      193 SETTABLEKS                       R6 R5 K19 ["splitButtonSize"]
      195 CALL                             R4 1 1
      196 SETTABLE                         R4 R2 R3
      197 NEWTABLE                         R3 1 0
      199 GETUPVAL                         R4 3
      200 GETTABLEKS                       R4 R4 K46 ["Stacked"]
      202 GETUPVAL                         R5 2
      203 DUPTABLE                         R6 K48 [{"iconTag"}]
      204 LOADK                            R7 K49 ["size-150-100"]
      205 SETTABLEKS                       R7 R6 K47 ["iconTag"]
      207 CALL                             R5 1 1
      208 SETTABLE                         R5 R3 R4
      209 DUPTABLE                         R4 K53 [{"common", "sizes", "controlVariants"}]
      210 SETTABLEKS                       R1 R4 K50 ["common"]
      212 SETTABLEKS                       R2 R4 K51 ["sizes"]
      214 SETTABLEKS                       R3 R4 K52 ["controlVariants"]
      216 RETURN                           R4 1

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
       13 GETTABLEKS                       R8 R3 K4 ["controlVariants"]
       15 GETTABLE                         R7 R8 R2
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R4 K9 ["InputVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Utility"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Utility"]
       39 GETTABLEKS                       R6 R6 K12 ["composeStyleVariant"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Providers"]
       46 GETTABLEKS                       R7 R7 K14 ["Style"]
       48 GETTABLEKS                       R7 R7 K15 ["Tokens"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Providers"]
       55 GETTABLEKS                       R8 R8 K14 ["Style"]
       57 GETTABLEKS                       R8 R8 K16 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K17 [PROTO_0]
       61 DUPCLOSURE                       R9 K18 [PROTO_1]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R1
       66 DUPCLOSURE                       R10 K19 [PROTO_2]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R5
       70 RETURN                           R10 1
