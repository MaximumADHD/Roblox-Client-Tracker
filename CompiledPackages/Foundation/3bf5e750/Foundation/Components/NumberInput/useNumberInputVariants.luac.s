PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 LOADN                            R2 0
        3 GETTABLEKS                       R5 R0 K4 ["width"]
        5 GETTABLEKS                       R6 R0 K5 ["horizontalPadding"]
        7 SUB                              R4 R5 R6
        8 DIVK                             R3 R4 K3 [2]
        9 CALL                             R1 2 1
       10 DUPTABLE                         R2 K10 [{"button", "upButton", "downButton", "splitButton"}]
       11 DUPTABLE                         R3 K14 [{["tag"] = "size-full fill", ["width"], ["padding"]}]
       12 GETTABLEKS                       R4 R0 K4 ["width"]
       14 SETTABLEKS                       R4 R3 K4 ["width"]
       16 DUPTABLE                         R4 K17 [{"left", "right"}]
       17 SETTABLEKS                       R1 R4 K15 ["left"]
       19 SETTABLEKS                       R1 R4 K16 ["right"]
       21 SETTABLEKS                       R4 R3 K13 ["padding"]
       23 SETTABLEKS                       R3 R2 K6 ["button"]
       25 DUPTABLE                         R3 K18 [{"tag"}]
       26 GETTABLEKS                       R4 R0 K19 ["upButtonTag"]
       28 SETTABLEKS                       R4 R3 K11 ["tag"]
       30 SETTABLEKS                       R3 R2 K7 ["upButton"]
       32 DUPTABLE                         R3 K18 [{"tag"}]
       33 GETTABLEKS                       R4 R0 K20 ["downButtonTag"]
       35 SETTABLEKS                       R4 R3 K11 ["tag"]
       37 SETTABLEKS                       R3 R2 K8 ["downButton"]
       39 DUPTABLE                         R3 K22 [{"size", "tag"}]
       40 GETTABLEKS                       R4 R0 K23 ["splitButtonSize"]
       42 SETTABLEKS                       R4 R3 K21 ["size"]
       44 GETTABLEKS                       R4 R0 K24 ["splitButtonTag"]
       46 SETTABLEKS                       R4 R3 K11 ["tag"]
       48 SETTABLEKS                       R3 R2 K9 ["splitButton"]
       50 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"upButton", "downButton", "splitButton", "icon"}]
        1 DUPTABLE                         R2 K7 [{["tag"] = "size-full fill padding-bottom-xsmall"}]
        2 SETTABLEKS                       R2 R1 K0 ["upButton"]
        4 DUPTABLE                         R2 K9 [{["tag"] = "size-full fill padding-top-xsmall"}]
        5 SETTABLEKS                       R2 R1 K1 ["downButton"]
        7 DUPTABLE                         R2 K11 [{["tag"] = "bg-shift-100"}]
        8 SETTABLEKS                       R2 R1 K2 ["splitButton"]
       10 DUPTABLE                         R2 K13 [{["tag"] = "content-default size-150-100"}]
       11 SETTABLEKS                       R2 R1 K3 ["icon"]
       13 NEWTABLE                         R2 4 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K14 ["XSmall"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K24 [{["width"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-xxsmall", ["downButtonTag"] = "padding-bottom-xxsmall", ["splitButtonTag"] = "radius-small", ["splitButtonSize"]}]
       20 GETTABLEKS                       R6 R0 K25 ["Size"]
       22 GETTABLEKS                       R6 R6 K26 ["Size_400"]
       24 SETTABLEKS                       R6 R5 K15 ["width"]
       26 GETTABLEKS                       R6 R0 K25 ["Size"]
       28 GETTABLEKS                       R6 R6 K27 ["Size_150"]
       30 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
       32 GETTABLEKS                       R6 R0 K25 ["Size"]
       34 GETTABLEKS                       R6 R6 K28 ["Size_600"]
       36 SETTABLEKS                       R6 R5 K23 ["splitButtonSize"]
       38 CALL                             R4 1 1
       39 SETTABLE                         R4 R2 R3
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K29 ["Small"]
       43 GETUPVAL                         R4 1
       44 DUPTABLE                         R5 K33 [{["width"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-xsmall", ["downButtonTag"] = "padding-bottom-xsmall", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
       45 GETTABLEKS                       R6 R0 K25 ["Size"]
       47 GETTABLEKS                       R6 R6 K28 ["Size_600"]
       49 SETTABLEKS                       R6 R5 K15 ["width"]
       51 GETTABLEKS                       R6 R0 K25 ["Size"]
       53 GETTABLEKS                       R6 R6 K27 ["Size_150"]
       55 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
       57 GETTABLEKS                       R6 R0 K25 ["Size"]
       59 GETTABLEKS                       R6 R6 K34 ["Size_800"]
       61 SETTABLEKS                       R6 R5 K23 ["splitButtonSize"]
       63 CALL                             R4 1 1
       64 SETTABLE                         R4 R2 R3
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R3 R3 K35 ["Medium"]
       68 GETUPVAL                         R4 1
       69 DUPTABLE                         R5 K38 [{["width"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-small", ["downButtonTag"] = "padding-bottom-small", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
       70 GETTABLEKS                       R6 R0 K25 ["Size"]
       72 GETTABLEKS                       R6 R6 K28 ["Size_600"]
       74 SETTABLEKS                       R6 R5 K15 ["width"]
       76 GETTABLEKS                       R6 R0 K25 ["Size"]
       78 GETTABLEKS                       R6 R6 K27 ["Size_150"]
       80 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
       82 GETTABLEKS                       R6 R0 K25 ["Size"]
       84 GETTABLEKS                       R6 R6 K39 ["Size_1000"]
       86 SETTABLEKS                       R6 R5 K23 ["splitButtonSize"]
       88 CALL                             R4 1 1
       89 SETTABLE                         R4 R2 R3
       90 GETUPVAL                         R3 0
       91 GETTABLEKS                       R3 R3 K40 ["Large"]
       93 GETUPVAL                         R4 1
       94 DUPTABLE                         R5 K43 [{["width"], ["horizontalPadding"], ["upButtonTag"] = "padding-top-medium", ["downButtonTag"] = "padding-bottom-medium", ["splitButtonTag"] = "radius-medium", ["splitButtonSize"]}]
       95 GETTABLEKS                       R6 R0 K25 ["Size"]
       97 GETTABLEKS                       R6 R6 K34 ["Size_800"]
       99 SETTABLEKS                       R6 R5 K15 ["width"]
      101 GETTABLEKS                       R6 R0 K25 ["Size"]
      103 GETTABLEKS                       R6 R6 K27 ["Size_150"]
      105 SETTABLEKS                       R6 R5 K16 ["horizontalPadding"]
      107 GETTABLEKS                       R6 R0 K25 ["Size"]
      109 GETTABLEKS                       R6 R6 K44 ["Size_1200"]
      111 SETTABLEKS                       R6 R5 K23 ["splitButtonSize"]
      113 CALL                             R4 1 1
      114 SETTABLE                         R4 R2 R3
      115 DUPTABLE                         R3 K47 [{"common", "sizes"}]
      116 SETTABLEKS                       R1 R3 K45 ["common"]
      118 SETTABLEKS                       R2 R3 K46 ["sizes"]
      120 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["InputSize"]
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
       40 DUPCLOSURE                       R6 K15 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R7 K16 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 RETURN                           R7 1
