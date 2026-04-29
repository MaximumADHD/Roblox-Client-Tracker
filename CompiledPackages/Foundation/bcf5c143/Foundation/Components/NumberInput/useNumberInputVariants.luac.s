PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationNumberInputFixControlSizes"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R2 R0 K1 ["width"]
        6 JUMPIFNOT                        R2 ; [+14]
        7 GETTABLEKS                       R2 R0 K2 ["horizontalPadding"]
        9 JUMPIFNOT                        R2 ; [+11]
       10 GETIMPORT                        R1 K5 [UDim.new]
       12 LOADN                            R2 0
       13 GETTABLEKS                       R5 R0 K7 ["buttonWidth"]
       15 GETTABLEKS                       R6 R0 K2 ["horizontalPadding"]
       17 SUB                              R4 R5 R6
       18 DIVK                             R3 R4 K6 [2]
       19 CALL                             R1 2 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R1
       22 DUPTABLE                         R2 K14 [{"container", "button", "upButton", "downButton", "splitButton", "icon"}]
       23 DUPTABLE                         R3 K15 [{"width"}]
       24 GETTABLEKS                       R4 R0 K1 ["width"]
       26 SETTABLEKS                       R4 R3 K1 ["width"]
       28 SETTABLEKS                       R3 R2 K8 ["container"]
       30 DUPTABLE                         R3 K18 [{"tag", "width", "padding"}]
       31 LOADK                            R4 K19 ["fill size-full"]
       32 SETTABLEKS                       R4 R3 K16 ["tag"]
       34 GETTABLEKS                       R4 R0 K7 ["buttonWidth"]
       36 SETTABLEKS                       R4 R3 K1 ["width"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K0 ["FoundationNumberInputFixControlSizes"]
       41 JUMPIFNOT                        R5 ; [+1]
       42 JUMPIFNOT                        R1 ; [+6]
       43 DUPTABLE                         R4 K22 [{"left", "right"}]
       44 SETTABLEKS                       R1 R4 K20 ["left"]
       46 SETTABLEKS                       R1 R4 K21 ["right"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R4
       50 SETTABLEKS                       R4 R3 K17 ["padding"]
       52 SETTABLEKS                       R3 R2 K9 ["button"]
       54 DUPTABLE                         R3 K23 [{"tag"}]
       55 GETTABLEKS                       R4 R0 K24 ["upButtonTag"]
       57 SETTABLEKS                       R4 R3 K16 ["tag"]
       59 SETTABLEKS                       R3 R2 K10 ["upButton"]
       61 DUPTABLE                         R3 K23 [{"tag"}]
       62 GETTABLEKS                       R4 R0 K25 ["downButtonTag"]
       64 SETTABLEKS                       R4 R3 K16 ["tag"]
       66 SETTABLEKS                       R3 R2 K11 ["downButton"]
       68 DUPTABLE                         R3 K27 [{"size", "tag"}]
       69 GETTABLEKS                       R4 R0 K28 ["splitButtonSize"]
       71 SETTABLEKS                       R4 R3 K26 ["size"]
       73 GETTABLEKS                       R4 R0 K29 ["splitButtonTag"]
       75 SETTABLEKS                       R4 R3 K16 ["tag"]
       77 SETTABLEKS                       R3 R2 K12 ["splitButton"]
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R4 R5 K0 ["FoundationNumberInputFixControlSizes"]
       82 JUMPIFNOT                        R4 ; [+6]
       83 DUPTABLE                         R3 K23 [{"tag"}]
       84 GETTABLEKS                       R4 R0 K30 ["iconTag"]
       86 SETTABLEKS                       R4 R3 K16 ["tag"]
       88 JUMP                             ; [+2]
       89 NEWTABLE                         R3 0 0
       91 SETTABLEKS                       R3 R2 K13 ["icon"]
       93 RETURN                           R2 1

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
       42 GETTABLEKS                       R8 R0 K23 ["Size"]
       44 GETTABLEKS                       R7 R8 K24 ["Size_3000"]
       46 MULK                             R6 R7 K22 [1.16666666666667]
       47 SETTABLEKS                       R6 R5 K14 ["width"]
       49 GETTABLEKS                       R7 R0 K23 ["Size"]
       51 GETTABLEKS                       R6 R7 K25 ["Size_400"]
       53 SETTABLEKS                       R6 R5 K15 ["buttonWidth"]
       55 GETTABLEKS                       R7 R0 K23 ["Size"]
       57 GETTABLEKS                       R6 R7 K26 ["Size_150"]
       59 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
       61 LOADK                            R6 K27 ["padding-top-xxsmall"]
       62 SETTABLEKS                       R6 R5 K17 ["upButtonTag"]
       64 LOADK                            R6 K28 ["padding-bottom-xxsmall"]
       65 SETTABLEKS                       R6 R5 K18 ["downButtonTag"]
       67 LOADK                            R6 K29 ["radius-small"]
       68 SETTABLEKS                       R6 R5 K19 ["splitButtonTag"]
       70 GETTABLEKS                       R7 R0 K23 ["Size"]
       72 GETTABLEKS                       R6 R7 K30 ["Size_600"]
       74 SETTABLEKS                       R6 R5 K20 ["splitButtonSize"]
       76 CALL                             R4 1 1
       77 SETTABLE                         R4 R2 R3
       78 GETUPVAL                         R4 1
       79 GETTABLEKS                       R3 R4 K31 ["Small"]
       81 GETUPVAL                         R4 2
       82 DUPTABLE                         R5 K21 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       83 GETTABLEKS                       R8 R0 K23 ["Size"]
       85 GETTABLEKS                       R7 R8 K24 ["Size_3000"]
       87 MULK                             R6 R7 K32 [1.33333333333333]
       88 SETTABLEKS                       R6 R5 K14 ["width"]
       90 GETTABLEKS                       R7 R0 K23 ["Size"]
       92 GETTABLEKS                       R6 R7 K30 ["Size_600"]
       94 SETTABLEKS                       R6 R5 K15 ["buttonWidth"]
       96 GETTABLEKS                       R7 R0 K23 ["Size"]
       98 GETTABLEKS                       R6 R7 K26 ["Size_150"]
      100 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
      102 LOADK                            R6 K33 ["padding-top-xsmall"]
      103 SETTABLEKS                       R6 R5 K17 ["upButtonTag"]
      105 LOADK                            R6 K34 ["padding-bottom-xsmall"]
      106 SETTABLEKS                       R6 R5 K18 ["downButtonTag"]
      108 LOADK                            R6 K35 ["radius-medium"]
      109 SETTABLEKS                       R6 R5 K19 ["splitButtonTag"]
      111 GETTABLEKS                       R7 R0 K23 ["Size"]
      113 GETTABLEKS                       R6 R7 K36 ["Size_800"]
      115 SETTABLEKS                       R6 R5 K20 ["splitButtonSize"]
      117 CALL                             R4 1 1
      118 SETTABLE                         R4 R2 R3
      119 GETUPVAL                         R4 1
      120 GETTABLEKS                       R3 R4 K37 ["Medium"]
      122 GETUPVAL                         R4 2
      123 DUPTABLE                         R5 K21 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      124 GETTABLEKS                       R8 R0 K23 ["Size"]
      126 GETTABLEKS                       R7 R8 K24 ["Size_3000"]
      128 MULK                             R6 R7 K38 [1.5]
      129 SETTABLEKS                       R6 R5 K14 ["width"]
      131 GETTABLEKS                       R7 R0 K23 ["Size"]
      133 GETTABLEKS                       R6 R7 K30 ["Size_600"]
      135 SETTABLEKS                       R6 R5 K15 ["buttonWidth"]
      137 GETTABLEKS                       R7 R0 K23 ["Size"]
      139 GETTABLEKS                       R6 R7 K26 ["Size_150"]
      141 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
      143 LOADK                            R6 K39 ["padding-top-small"]
      144 SETTABLEKS                       R6 R5 K17 ["upButtonTag"]
      146 LOADK                            R6 K40 ["padding-bottom-small"]
      147 SETTABLEKS                       R6 R5 K18 ["downButtonTag"]
      149 LOADK                            R6 K35 ["radius-medium"]
      150 SETTABLEKS                       R6 R5 K19 ["splitButtonTag"]
      152 GETTABLEKS                       R7 R0 K23 ["Size"]
      154 GETTABLEKS                       R6 R7 K41 ["Size_1000"]
      156 SETTABLEKS                       R6 R5 K20 ["splitButtonSize"]
      158 CALL                             R4 1 1
      159 SETTABLE                         R4 R2 R3
      160 GETUPVAL                         R4 1
      161 GETTABLEKS                       R3 R4 K42 ["Large"]
      163 GETUPVAL                         R4 2
      164 DUPTABLE                         R5 K21 [{"width", "buttonWidth", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      165 GETTABLEKS                       R8 R0 K23 ["Size"]
      167 GETTABLEKS                       R7 R8 K24 ["Size_3000"]
      169 MULK                             R6 R7 K43 [1.66666666666667]
      170 SETTABLEKS                       R6 R5 K14 ["width"]
      172 GETTABLEKS                       R7 R0 K23 ["Size"]
      174 GETTABLEKS                       R6 R7 K36 ["Size_800"]
      176 SETTABLEKS                       R6 R5 K15 ["buttonWidth"]
      178 GETTABLEKS                       R7 R0 K23 ["Size"]
      180 GETTABLEKS                       R6 R7 K26 ["Size_150"]
      182 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
      184 LOADK                            R6 K44 ["padding-top-medium"]
      185 SETTABLEKS                       R6 R5 K17 ["upButtonTag"]
      187 LOADK                            R6 K45 ["padding-bottom-medium"]
      188 SETTABLEKS                       R6 R5 K18 ["downButtonTag"]
      190 LOADK                            R6 K35 ["radius-medium"]
      191 SETTABLEKS                       R6 R5 K19 ["splitButtonTag"]
      193 GETTABLEKS                       R7 R0 K23 ["Size"]
      195 GETTABLEKS                       R6 R7 K46 ["Size_1200"]
      197 SETTABLEKS                       R6 R5 K20 ["splitButtonSize"]
      199 CALL                             R4 1 1
      200 SETTABLE                         R4 R2 R3
      201 GETUPVAL                         R5 0
      202 GETTABLEKS                       R4 R5 K11 ["FoundationNumberInputFixControlSizes"]
      204 JUMPIFNOT                        R4 ; [+13]
      205 NEWTABLE                         R3 1 0
      207 GETUPVAL                         R5 3
      208 GETTABLEKS                       R4 R5 K47 ["Stacked"]
      210 GETUPVAL                         R5 2
      211 DUPTABLE                         R6 K49 [{"iconTag"}]
      212 LOADK                            R7 K12 ["size-150-100"]
      213 SETTABLEKS                       R7 R6 K48 ["iconTag"]
      215 CALL                             R5 1 1
      216 SETTABLE                         R5 R3 R4
      217 JUMP                             ; [+1]
      218 LOADNIL                          R3
      219 DUPTABLE                         R4 K53 [{"common", "sizes", "controlVariants"}]
      220 SETTABLEKS                       R1 R4 K50 ["common"]
      222 SETTABLEKS                       R2 R4 K51 ["sizes"]
      224 SETTABLEKS                       R3 R4 K52 ["controlVariants"]
      226 RETURN                           R4 1

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
