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
       26 DUPTABLE                         R3 K18 [{["tag"] = "fill size-full", [2], ["padding"]}]
       27 GETTABLEKS                       R4 R0 K6 ["buttonWidth"]
       29 SETTABLEKS                       R4 R3 K0 ["width"]
       31 JUMPIFNOT                        R1 ; [+6]
       32 DUPTABLE                         R4 K21 [{"left", "right"}]
       33 SETTABLEKS                       R1 R4 K19 ["left"]
       35 SETTABLEKS                       R1 R4 K20 ["right"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 SETTABLEKS                       R4 R3 K17 ["padding"]
       41 SETTABLEKS                       R3 R2 K8 ["button"]
       43 DUPTABLE                         R3 K22 [{"tag"}]
       44 GETTABLEKS                       R4 R0 K23 ["upButtonTag"]
       46 SETTABLEKS                       R4 R3 K15 ["tag"]
       48 SETTABLEKS                       R3 R2 K9 ["upButton"]
       50 DUPTABLE                         R3 K22 [{"tag"}]
       51 GETTABLEKS                       R4 R0 K24 ["downButtonTag"]
       53 SETTABLEKS                       R4 R3 K15 ["tag"]
       55 SETTABLEKS                       R3 R2 K10 ["downButton"]
       57 DUPTABLE                         R3 K26 [{"size", "tag"}]
       58 GETTABLEKS                       R4 R0 K27 ["splitButtonSize"]
       60 SETTABLEKS                       R4 R3 K25 ["size"]
       62 GETTABLEKS                       R4 R0 K28 ["splitButtonTag"]
       64 SETTABLEKS                       R4 R3 K15 ["tag"]
       66 SETTABLEKS                       R3 R2 K11 ["splitButton"]
       68 DUPTABLE                         R3 K22 [{"tag"}]
       69 GETTABLEKS                       R4 R0 K29 ["iconTag"]
       71 SETTABLEKS                       R4 R3 K15 ["tag"]
       73 SETTABLEKS                       R3 R2 K12 ["icon"]
       75 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"upButton", "downButton", "icon"}]
        1 DUPTABLE                         R2 K6 [{["tag"] = "fill size-full padding-bottom-xsmall"}]
        2 SETTABLEKS                       R2 R1 K0 ["upButton"]
        4 DUPTABLE                         R2 K8 [{["tag"] = "fill size-full padding-top-xsmall"}]
        5 SETTABLEKS                       R2 R1 K1 ["downButton"]
        7 DUPTABLE                         R2 K10 [{["tag"] = "content-default"}]
        8 SETTABLEKS                       R2 R1 K2 ["icon"]
       10 NEWTABLE                         R2 4 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K11 ["XSmall"]
       15 GETUPVAL                         R4 1
       16 DUPTABLE                         R5 K22 [{["width"], ["buttonWidth"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-xxsmall", ["downButtonTag"] = "padding-bottom-xxsmall", ["splitButtonTag"] = "radius-small", ["splitButtonSize"]}]
       17 GETTABLEKS                       R7 R0 K24 ["Size"]
       19 GETTABLEKS                       R7 R7 K25 ["Size_3000"]
       21 MULK                             R6 R7 K23 [1.16666666666667]
       22 SETTABLEKS                       R6 R5 K12 ["width"]
       24 GETTABLEKS                       R6 R0 K24 ["Size"]
       26 GETTABLEKS                       R6 R6 K26 ["Size_400"]
       28 SETTABLEKS                       R6 R5 K13 ["buttonWidth"]
       30 GETTABLEKS                       R6 R0 K24 ["Size"]
       32 GETTABLEKS                       R6 R6 K27 ["Size_150"]
       34 SETTABLEKS                       R6 R5 K14 ["horizontalPadding"]
       36 GETTABLEKS                       R6 R0 K24 ["Size"]
       38 GETTABLEKS                       R6 R6 K28 ["Size_600"]
       40 SETTABLEKS                       R6 R5 K21 ["splitButtonSize"]
       42 CALL                             R4 1 1
       43 SETTABLE                         R4 R2 R3
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K29 ["Small"]
       47 GETUPVAL                         R4 1
       48 DUPTABLE                         R5 K33 [{["width"], ["buttonWidth"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-xsmall", ["downButtonTag"] = "padding-bottom-xsmall", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
       49 GETTABLEKS                       R7 R0 K24 ["Size"]
       51 GETTABLEKS                       R7 R7 K25 ["Size_3000"]
       53 MULK                             R6 R7 K34 [1.33333333333333]
       54 SETTABLEKS                       R6 R5 K12 ["width"]
       56 GETTABLEKS                       R6 R0 K24 ["Size"]
       58 GETTABLEKS                       R6 R6 K28 ["Size_600"]
       60 SETTABLEKS                       R6 R5 K13 ["buttonWidth"]
       62 GETTABLEKS                       R6 R0 K24 ["Size"]
       64 GETTABLEKS                       R6 R6 K27 ["Size_150"]
       66 SETTABLEKS                       R6 R5 K14 ["horizontalPadding"]
       68 GETTABLEKS                       R6 R0 K24 ["Size"]
       70 GETTABLEKS                       R6 R6 K35 ["Size_800"]
       72 SETTABLEKS                       R6 R5 K21 ["splitButtonSize"]
       74 CALL                             R4 1 1
       75 SETTABLE                         R4 R2 R3
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K36 ["Medium"]
       79 GETUPVAL                         R4 1
       80 DUPTABLE                         R5 K39 [{["width"], ["buttonWidth"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-small", ["downButtonTag"] = "padding-bottom-small", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
       81 GETTABLEKS                       R7 R0 K24 ["Size"]
       83 GETTABLEKS                       R7 R7 K25 ["Size_3000"]
       85 MULK                             R6 R7 K40 [1.5]
       86 SETTABLEKS                       R6 R5 K12 ["width"]
       88 GETTABLEKS                       R6 R0 K24 ["Size"]
       90 GETTABLEKS                       R6 R6 K28 ["Size_600"]
       92 SETTABLEKS                       R6 R5 K13 ["buttonWidth"]
       94 GETTABLEKS                       R6 R0 K24 ["Size"]
       96 GETTABLEKS                       R6 R6 K27 ["Size_150"]
       98 SETTABLEKS                       R6 R5 K14 ["horizontalPadding"]
      100 GETTABLEKS                       R6 R0 K24 ["Size"]
      102 GETTABLEKS                       R6 R6 K41 ["Size_1000"]
      104 SETTABLEKS                       R6 R5 K21 ["splitButtonSize"]
      106 CALL                             R4 1 1
      107 SETTABLE                         R4 R2 R3
      108 GETUPVAL                         R3 0
      109 GETTABLEKS                       R3 R3 K42 ["Large"]
      111 GETUPVAL                         R4 1
      112 DUPTABLE                         R5 K45 [{["width"], ["buttonWidth"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-medium", ["downButtonTag"] = "padding-bottom-medium", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
      113 GETTABLEKS                       R7 R0 K24 ["Size"]
      115 GETTABLEKS                       R7 R7 K25 ["Size_3000"]
      117 MULK                             R6 R7 K46 [1.66666666666667]
      118 SETTABLEKS                       R6 R5 K12 ["width"]
      120 GETTABLEKS                       R6 R0 K24 ["Size"]
      122 GETTABLEKS                       R6 R6 K35 ["Size_800"]
      124 SETTABLEKS                       R6 R5 K13 ["buttonWidth"]
      126 GETTABLEKS                       R6 R0 K24 ["Size"]
      128 GETTABLEKS                       R6 R6 K27 ["Size_150"]
      130 SETTABLEKS                       R6 R5 K14 ["horizontalPadding"]
      132 GETTABLEKS                       R6 R0 K24 ["Size"]
      134 GETTABLEKS                       R6 R6 K47 ["Size_1200"]
      136 SETTABLEKS                       R6 R5 K21 ["splitButtonSize"]
      138 CALL                             R4 1 1
      139 SETTABLE                         R4 R2 R3
      140 NEWTABLE                         R3 1 0
      142 GETUPVAL                         R4 2
      143 GETTABLEKS                       R4 R4 K48 ["Stacked"]
      145 GETUPVAL                         R5 1
      146 DUPTABLE                         R6 K51 [{["iconTag"] = "size-150-100"}]
      147 CALL                             R5 1 1
      148 SETTABLE                         R5 R3 R4
      149 DUPTABLE                         R4 K55 [{"common", "sizes", "controlVariants"}]
      150 SETTABLEKS                       R1 R4 K52 ["common"]
      152 SETTABLEKS                       R2 R4 K53 ["sizes"]
      154 SETTABLEKS                       R3 R4 K54 ["controlVariants"]
      156 RETURN                           R4 1

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
