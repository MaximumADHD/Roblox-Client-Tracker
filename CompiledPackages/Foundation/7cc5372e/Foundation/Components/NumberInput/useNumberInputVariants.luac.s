PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 LOADN                            R2 0
        3 GETTABLEKS                       R5 R0 K4 ["width"]
        5 GETTABLEKS                       R6 R0 K5 ["horizontalPadding"]
        7 SUB                              R4 R5 R6
        8 DIVK                             R3 R4 K3 [2]
        9 CALL                             R1 2 1
       10 DUPTABLE                         R2 K10 [{"button", "upButton", "downButton", "splitButton"}]
       11 DUPTABLE                         R3 K13 [{"tag", "width", "padding"}]
       12 LOADK                            R4 K14 ["size-full fill"]
       13 SETTABLEKS                       R4 R3 K11 ["tag"]
       15 GETTABLEKS                       R4 R0 K4 ["width"]
       17 SETTABLEKS                       R4 R3 K4 ["width"]
       19 DUPTABLE                         R4 K17 [{"left", "right"}]
       20 SETTABLEKS                       R1 R4 K15 ["left"]
       22 SETTABLEKS                       R1 R4 K16 ["right"]
       24 SETTABLEKS                       R4 R3 K12 ["padding"]
       26 SETTABLEKS                       R3 R2 K6 ["button"]
       28 DUPTABLE                         R3 K18 [{"tag"}]
       29 GETTABLEKS                       R4 R0 K19 ["upButtonTag"]
       31 SETTABLEKS                       R4 R3 K11 ["tag"]
       33 SETTABLEKS                       R3 R2 K7 ["upButton"]
       35 DUPTABLE                         R3 K18 [{"tag"}]
       36 GETTABLEKS                       R4 R0 K20 ["downButtonTag"]
       38 SETTABLEKS                       R4 R3 K11 ["tag"]
       40 SETTABLEKS                       R3 R2 K8 ["downButton"]
       42 DUPTABLE                         R3 K22 [{"size", "tag"}]
       43 GETTABLEKS                       R4 R0 K23 ["splitButtonSize"]
       45 SETTABLEKS                       R4 R3 K21 ["size"]
       47 GETTABLEKS                       R4 R0 K24 ["splitButtonTag"]
       49 SETTABLEKS                       R4 R3 K11 ["tag"]
       51 SETTABLEKS                       R3 R2 K9 ["splitButton"]
       53 RETURN                           R2 1

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
       31 DUPTABLE                         R5 K18 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       32 GETTABLEKS                       R7 R0 K19 ["Size"]
       34 GETTABLEKS                       R6 R7 K20 ["Size_400"]
       36 SETTABLEKS                       R6 R5 K12 ["width"]
       38 GETTABLEKS                       R7 R0 K19 ["Size"]
       40 GETTABLEKS                       R6 R7 K21 ["Size_150"]
       42 SETTABLEKS                       R6 R5 K13 ["horizontalPadding"]
       44 LOADK                            R6 K22 ["padding-top-xxsmall"]
       45 SETTABLEKS                       R6 R5 K14 ["upButtonTag"]
       47 LOADK                            R6 K23 ["padding-bottom-xxsmall"]
       48 SETTABLEKS                       R6 R5 K15 ["downButtonTag"]
       50 LOADK                            R6 K24 ["radius-small"]
       51 SETTABLEKS                       R6 R5 K16 ["splitButtonTag"]
       53 GETTABLEKS                       R7 R0 K19 ["Size"]
       55 GETTABLEKS                       R6 R7 K25 ["Size_600"]
       57 SETTABLEKS                       R6 R5 K17 ["splitButtonSize"]
       59 CALL                             R4 1 1
       60 SETTABLE                         R4 R2 R3
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R3 R4 K26 ["Small"]
       64 GETUPVAL                         R4 1
       65 DUPTABLE                         R5 K18 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
       66 GETTABLEKS                       R7 R0 K19 ["Size"]
       68 GETTABLEKS                       R6 R7 K25 ["Size_600"]
       70 SETTABLEKS                       R6 R5 K12 ["width"]
       72 GETTABLEKS                       R7 R0 K19 ["Size"]
       74 GETTABLEKS                       R6 R7 K21 ["Size_150"]
       76 SETTABLEKS                       R6 R5 K13 ["horizontalPadding"]
       78 LOADK                            R6 K27 ["padding-top-xsmall"]
       79 SETTABLEKS                       R6 R5 K14 ["upButtonTag"]
       81 LOADK                            R6 K28 ["padding-bottom-xsmall"]
       82 SETTABLEKS                       R6 R5 K15 ["downButtonTag"]
       84 LOADK                            R6 K29 ["radius-medium"]
       85 SETTABLEKS                       R6 R5 K16 ["splitButtonTag"]
       87 GETTABLEKS                       R7 R0 K19 ["Size"]
       89 GETTABLEKS                       R6 R7 K30 ["Size_800"]
       91 SETTABLEKS                       R6 R5 K17 ["splitButtonSize"]
       93 CALL                             R4 1 1
       94 SETTABLE                         R4 R2 R3
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R3 R4 K31 ["Medium"]
       98 GETUPVAL                         R4 1
       99 DUPTABLE                         R5 K18 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      100 GETTABLEKS                       R7 R0 K19 ["Size"]
      102 GETTABLEKS                       R6 R7 K25 ["Size_600"]
      104 SETTABLEKS                       R6 R5 K12 ["width"]
      106 GETTABLEKS                       R7 R0 K19 ["Size"]
      108 GETTABLEKS                       R6 R7 K21 ["Size_150"]
      110 SETTABLEKS                       R6 R5 K13 ["horizontalPadding"]
      112 LOADK                            R6 K32 ["padding-top-small"]
      113 SETTABLEKS                       R6 R5 K14 ["upButtonTag"]
      115 LOADK                            R6 K33 ["padding-bottom-small"]
      116 SETTABLEKS                       R6 R5 K15 ["downButtonTag"]
      118 LOADK                            R6 K29 ["radius-medium"]
      119 SETTABLEKS                       R6 R5 K16 ["splitButtonTag"]
      121 GETTABLEKS                       R7 R0 K19 ["Size"]
      123 GETTABLEKS                       R6 R7 K34 ["Size_1000"]
      125 SETTABLEKS                       R6 R5 K17 ["splitButtonSize"]
      127 CALL                             R4 1 1
      128 SETTABLE                         R4 R2 R3
      129 GETUPVAL                         R4 0
      130 GETTABLEKS                       R3 R4 K35 ["Large"]
      132 GETUPVAL                         R4 1
      133 DUPTABLE                         R5 K18 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
      134 GETTABLEKS                       R7 R0 K19 ["Size"]
      136 GETTABLEKS                       R6 R7 K30 ["Size_800"]
      138 SETTABLEKS                       R6 R5 K12 ["width"]
      140 GETTABLEKS                       R7 R0 K19 ["Size"]
      142 GETTABLEKS                       R6 R7 K21 ["Size_150"]
      144 SETTABLEKS                       R6 R5 K13 ["horizontalPadding"]
      146 LOADK                            R6 K36 ["padding-top-medium"]
      147 SETTABLEKS                       R6 R5 K14 ["upButtonTag"]
      149 LOADK                            R6 K37 ["padding-bottom-medium"]
      150 SETTABLEKS                       R6 R5 K15 ["downButtonTag"]
      152 LOADK                            R6 K29 ["radius-medium"]
      153 SETTABLEKS                       R6 R5 K16 ["splitButtonTag"]
      155 GETTABLEKS                       R7 R0 K19 ["Size"]
      157 GETTABLEKS                       R6 R7 K38 ["Size_1200"]
      159 SETTABLEKS                       R6 R5 K17 ["splitButtonSize"]
      161 CALL                             R4 1 1
      162 SETTABLE                         R4 R2 R3
      163 DUPTABLE                         R3 K41 [{"common", "sizes"}]
      164 SETTABLEKS                       R1 R3 K39 ["common"]
      166 SETTABLEKS                       R2 R3 K40 ["sizes"]
      168 RETURN                           R3 1

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
       40 DUPCLOSURE                       R6 K15 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R7 K16 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 RETURN                           R7 1
