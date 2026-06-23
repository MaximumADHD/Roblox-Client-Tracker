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
        0 DUPTABLE                         R1 K3 [{"upButton", "downButton", "icon"}]
        1 DUPTABLE                         R2 K5 [{"tag"}]
        2 LOADK                            R3 K6 ["fill size-full padding-bottom-xsmall"]
        3 SETTABLEKS                       R3 R2 K4 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["upButton"]
        7 DUPTABLE                         R2 K5 [{"tag"}]
        8 LOADK                            R3 K7 ["fill size-full padding-top-xsmall"]
        9 SETTABLEKS                       R3 R2 K4 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["downButton"]
       13 DUPTABLE                         R2 K5 [{"tag"}]
       14 LOADK                            R3 K8 ["content-default"]
       15 SETTABLEKS                       R3 R2 K4 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["icon"]
       19 NEWTABLE                         R2 4 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["XSmall"]
       24 GETUPVAL                         R4 1
       25 DUPTABLE                         R5 K17 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       26 GETTABLEKS                       R7 R0 K19 ["Size"]
       28 GETTABLEKS                       R7 R7 K20 ["Size_3000"]
       30 MULK                             R6 R7 K18 [1.16666666666667]
       31 SETTABLEKS                       R6 R5 K10 ["width"]
       33 GETTABLEKS                       R6 R0 K19 ["Size"]
       35 GETTABLEKS                       R6 R6 K21 ["Size_400"]
       37 SETTABLEKS                       R6 R5 K11 ["buttonWidth"]
       39 GETTABLEKS                       R6 R0 K19 ["Size"]
       41 GETTABLEKS                       R6 R6 K22 ["Size_150"]
       43 SETTABLEKS                       R6 R5 K12 ["horizontalPadding"]
       45 LOADK                            R6 K23 ["padding-top-xxsmall"]
       46 SETTABLEKS                       R6 R5 K13 ["upButtonTag"]
       48 LOADK                            R6 K24 ["padding-bottom-xxsmall"]
       49 SETTABLEKS                       R6 R5 K14 ["downButtonTag"]
       51 LOADK                            R6 K25 ["radius-small"]
       52 SETTABLEKS                       R6 R5 K15 ["splitButtonTag"]
       54 GETTABLEKS                       R6 R0 K19 ["Size"]
       56 GETTABLEKS                       R6 R6 K26 ["Size_600"]
       58 SETTABLEKS                       R6 R5 K16 ["splitButtonSize"]
       60 CALL                             R4 1 1
       61 SETTABLE                         R4 R2 R3
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K27 ["Small"]
       65 GETUPVAL                         R4 1
       66 DUPTABLE                         R5 K17 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       67 GETTABLEKS                       R7 R0 K19 ["Size"]
       69 GETTABLEKS                       R7 R7 K20 ["Size_3000"]
       71 MULK                             R6 R7 K28 [1.33333333333333]
       72 SETTABLEKS                       R6 R5 K10 ["width"]
       74 GETTABLEKS                       R6 R0 K19 ["Size"]
       76 GETTABLEKS                       R6 R6 K26 ["Size_600"]
       78 SETTABLEKS                       R6 R5 K11 ["buttonWidth"]
       80 GETTABLEKS                       R6 R0 K19 ["Size"]
       82 GETTABLEKS                       R6 R6 K22 ["Size_150"]
       84 SETTABLEKS                       R6 R5 K12 ["horizontalPadding"]
       86 LOADK                            R6 K29 ["padding-top-xsmall"]
       87 SETTABLEKS                       R6 R5 K13 ["upButtonTag"]
       89 LOADK                            R6 K30 ["padding-bottom-xsmall"]
       90 SETTABLEKS                       R6 R5 K14 ["downButtonTag"]
       92 LOADK                            R6 K31 ["radius-medium"]
       93 SETTABLEKS                       R6 R5 K15 ["splitButtonTag"]
       95 GETTABLEKS                       R6 R0 K19 ["Size"]
       97 GETTABLEKS                       R6 R6 K32 ["Size_800"]
       99 SETTABLEKS                       R6 R5 K16 ["splitButtonSize"]
      101 CALL                             R4 1 1
      102 SETTABLE                         R4 R2 R3
      103 GETUPVAL                         R3 0
      104 GETTABLEKS                       R3 R3 K33 ["Medium"]
      106 GETUPVAL                         R4 1
      107 DUPTABLE                         R5 K17 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      108 GETTABLEKS                       R7 R0 K19 ["Size"]
      110 GETTABLEKS                       R7 R7 K20 ["Size_3000"]
      112 MULK                             R6 R7 K34 [1.5]
      113 SETTABLEKS                       R6 R5 K10 ["width"]
      115 GETTABLEKS                       R6 R0 K19 ["Size"]
      117 GETTABLEKS                       R6 R6 K26 ["Size_600"]
      119 SETTABLEKS                       R6 R5 K11 ["buttonWidth"]
      121 GETTABLEKS                       R6 R0 K19 ["Size"]
      123 GETTABLEKS                       R6 R6 K22 ["Size_150"]
      125 SETTABLEKS                       R6 R5 K12 ["horizontalPadding"]
      127 LOADK                            R6 K35 ["padding-top-small"]
      128 SETTABLEKS                       R6 R5 K13 ["upButtonTag"]
      130 LOADK                            R6 K36 ["padding-bottom-small"]
      131 SETTABLEKS                       R6 R5 K14 ["downButtonTag"]
      133 LOADK                            R6 K31 ["radius-medium"]
      134 SETTABLEKS                       R6 R5 K15 ["splitButtonTag"]
      136 GETTABLEKS                       R6 R0 K19 ["Size"]
      138 GETTABLEKS                       R6 R6 K37 ["Size_1000"]
      140 SETTABLEKS                       R6 R5 K16 ["splitButtonSize"]
      142 CALL                             R4 1 1
      143 SETTABLE                         R4 R2 R3
      144 GETUPVAL                         R3 0
      145 GETTABLEKS                       R3 R3 K38 ["Large"]
      147 GETUPVAL                         R4 1
      148 DUPTABLE                         R5 K17 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      149 GETTABLEKS                       R7 R0 K19 ["Size"]
      151 GETTABLEKS                       R7 R7 K20 ["Size_3000"]
      153 MULK                             R6 R7 K39 [1.66666666666667]
      154 SETTABLEKS                       R6 R5 K10 ["width"]
      156 GETTABLEKS                       R6 R0 K19 ["Size"]
      158 GETTABLEKS                       R6 R6 K32 ["Size_800"]
      160 SETTABLEKS                       R6 R5 K11 ["buttonWidth"]
      162 GETTABLEKS                       R6 R0 K19 ["Size"]
      164 GETTABLEKS                       R6 R6 K22 ["Size_150"]
      166 SETTABLEKS                       R6 R5 K12 ["horizontalPadding"]
      168 LOADK                            R6 K40 ["padding-top-medium"]
      169 SETTABLEKS                       R6 R5 K13 ["upButtonTag"]
      171 LOADK                            R6 K41 ["padding-bottom-medium"]
      172 SETTABLEKS                       R6 R5 K14 ["downButtonTag"]
      174 LOADK                            R6 K31 ["radius-medium"]
      175 SETTABLEKS                       R6 R5 K15 ["splitButtonTag"]
      177 GETTABLEKS                       R6 R0 K19 ["Size"]
      179 GETTABLEKS                       R6 R6 K42 ["Size_1200"]
      181 SETTABLEKS                       R6 R5 K16 ["splitButtonSize"]
      183 CALL                             R4 1 1
      184 SETTABLE                         R4 R2 R3
      185 NEWTABLE                         R3 1 0
      187 GETUPVAL                         R4 2
      188 GETTABLEKS                       R4 R4 K43 ["Stacked"]
      190 GETUPVAL                         R5 1
      191 DUPTABLE                         R6 K45 [{"iconTag"}]
      192 LOADK                            R7 K46 ["size-150-100"]
      193 SETTABLEKS                       R7 R6 K44 ["iconTag"]
      195 CALL                             R5 1 1
      196 SETTABLE                         R5 R3 R4
      197 DUPTABLE                         R4 K50 [{"common", "sizes", "controlVariants"}]
      198 SETTABLEKS                       R1 R4 K47 ["common"]
      200 SETTABLEKS                       R2 R4 K48 ["sizes"]
      202 SETTABLEKS                       R3 R4 K49 ["controlVariants"]
      204 RETURN                           R4 1

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
       54 DUPCLOSURE                       R8 K17 [PROTO_1]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R1
       58 DUPCLOSURE                       R9 K18 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R4
       62 RETURN                           R9 1
