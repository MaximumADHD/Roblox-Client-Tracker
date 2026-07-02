PROTO_0:
        0 DUPTABLE                         R1 K6 [{"container", "content", "itemInner", "label", "metadata", "description"}]
        1 DUPTABLE                         R2 K9 [{"tag", "radius"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K10 ["FoundationFixOptionSelectorThickness"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K11 ["col align-y-center align-x-left radius-medium gap-xsmall wrap"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K12 ["col align-y-center align-x-left radius-medium gap-xsmall wrap stroke-standard"]
        9 SETTABLEKS                       R3 R2 K7 ["tag"]
       11 GETTABLEKS                       R3 R0 K13 ["Radius"]
       13 GETTABLEKS                       R3 R3 K14 ["Medium"]
       15 SETTABLEKS                       R3 R2 K8 ["radius"]
       17 SETTABLEKS                       R2 R1 K0 ["container"]
       19 GETTABLEKS                       R2 R0 K15 ["Color"]
       21 GETTABLEKS                       R2 R2 K16 ["Content"]
       23 GETTABLEKS                       R2 R2 K17 ["Default"]
       25 SETTABLEKS                       R2 R1 K1 ["content"]
       27 DUPTABLE                         R2 K18 [{"tag"}]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K19 ["FoundationFixOptionSelectorGroupItemSize"]
       31 JUMPIFNOT                        R4 ; [+2]
       32 LOADK                            R3 K20 ["col size-full-0 auto-y gap-xsmall"]
       33 JUMP                             ; [+1]
       34 LOADK                            R3 K21 ["col auto-xy gap-xsmall"]
       35 SETTABLEKS                       R3 R2 K7 ["tag"]
       37 SETTABLEKS                       R2 R1 K2 ["itemInner"]
       39 DUPTABLE                         R2 K23 [{["tag"] = "auto-xy fill"}]
       40 SETTABLEKS                       R2 R1 K3 ["label"]
       42 DUPTABLE                         R2 K25 [{["tag"] = "auto-xy shrink"}]
       43 SETTABLEKS                       R2 R1 K4 ["metadata"]
       45 DUPTABLE                         R2 K27 [{["tag"] = "auto-xy grow"}]
       46 SETTABLEKS                       R2 R1 K5 ["description"]
       48 NEWTABLE                         R2 4 0
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K28 ["XSmall"]
       53 DUPTABLE                         R4 K30 [{"container", "icon", "label", "metadata", "description"}]
       54 DUPTABLE                         R5 K32 [{["tag"] = "padding-medium"}]
       55 SETTABLEKS                       R5 R4 K0 ["container"]
       57 DUPTABLE                         R5 K34 [{"size"}]
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K28 ["XSmall"]
       61 SETTABLEKS                       R6 R5 K33 ["size"]
       63 SETTABLEKS                       R5 R4 K29 ["icon"]
       65 DUPTABLE                         R5 K36 [{["tag"] = "text-title-small"}]
       66 SETTABLEKS                       R5 R4 K3 ["label"]
       68 DUPTABLE                         R5 K38 [{["tag"] = "text-caption-small"}]
       69 SETTABLEKS                       R5 R4 K4 ["metadata"]
       71 DUPTABLE                         R5 K40 [{["tag"] = "text-body-small"}]
       72 SETTABLEKS                       R5 R4 K5 ["description"]
       74 SETTABLE                         R4 R2 R3
       75 GETUPVAL                         R3 1
       76 GETTABLEKS                       R3 R3 K41 ["Small"]
       78 DUPTABLE                         R4 K30 [{"container", "icon", "label", "metadata", "description"}]
       79 DUPTABLE                         R5 K43 [{["tag"] = "padding-large"}]
       80 SETTABLEKS                       R5 R4 K0 ["container"]
       82 DUPTABLE                         R5 K34 [{"size"}]
       83 GETUPVAL                         R6 2
       84 GETTABLEKS                       R6 R6 K41 ["Small"]
       86 SETTABLEKS                       R6 R5 K33 ["size"]
       88 SETTABLEKS                       R5 R4 K29 ["icon"]
       90 DUPTABLE                         R5 K36 [{["tag"] = "text-title-small"}]
       91 SETTABLEKS                       R5 R4 K3 ["label"]
       93 DUPTABLE                         R5 K38 [{["tag"] = "text-caption-small"}]
       94 SETTABLEKS                       R5 R4 K4 ["metadata"]
       96 DUPTABLE                         R5 K40 [{["tag"] = "text-body-small"}]
       97 SETTABLEKS                       R5 R4 K5 ["description"]
       99 SETTABLE                         R4 R2 R3
      100 GETUPVAL                         R3 1
      101 GETTABLEKS                       R3 R3 K14 ["Medium"]
      103 DUPTABLE                         R4 K30 [{"container", "icon", "label", "metadata", "description"}]
      104 DUPTABLE                         R5 K45 [{["tag"] = "padding-xlarge"}]
      105 SETTABLEKS                       R5 R4 K0 ["container"]
      107 DUPTABLE                         R5 K34 [{"size"}]
      108 GETUPVAL                         R6 2
      109 GETTABLEKS                       R6 R6 K14 ["Medium"]
      111 SETTABLEKS                       R6 R5 K33 ["size"]
      113 SETTABLEKS                       R5 R4 K29 ["icon"]
      115 DUPTABLE                         R5 K47 [{["tag"] = "text-title-medium"}]
      116 SETTABLEKS                       R5 R4 K3 ["label"]
      118 DUPTABLE                         R5 K49 [{["tag"] = "text-caption-medium"}]
      119 SETTABLEKS                       R5 R4 K4 ["metadata"]
      121 DUPTABLE                         R5 K51 [{["tag"] = "text-body-medium"}]
      122 SETTABLEKS                       R5 R4 K5 ["description"]
      124 SETTABLE                         R4 R2 R3
      125 GETUPVAL                         R3 1
      126 GETTABLEKS                       R3 R3 K52 ["Large"]
      128 DUPTABLE                         R4 K30 [{"container", "icon", "label", "metadata", "description"}]
      129 DUPTABLE                         R5 K54 [{["tag"] = "padding-xxlarge"}]
      130 SETTABLEKS                       R5 R4 K0 ["container"]
      132 DUPTABLE                         R5 K34 [{"size"}]
      133 GETUPVAL                         R6 2
      134 GETTABLEKS                       R6 R6 K52 ["Large"]
      136 SETTABLEKS                       R6 R5 K33 ["size"]
      138 SETTABLEKS                       R5 R4 K29 ["icon"]
      140 DUPTABLE                         R5 K56 [{["tag"] = "text-title-large"}]
      141 SETTABLEKS                       R5 R4 K3 ["label"]
      143 DUPTABLE                         R5 K58 [{["tag"] = "text-caption-large"}]
      144 SETTABLEKS                       R5 R4 K4 ["metadata"]
      146 DUPTABLE                         R5 K60 [{["tag"] = "text-body-large"}]
      147 SETTABLEKS                       R5 R4 K5 ["description"]
      149 SETTABLE                         R4 R2 R3
      150 DUPTABLE                         R3 K63 [{"common", "sizes"}]
      151 SETTABLEKS                       R1 R3 K61 ["common"]
      153 SETTABLEKS                       R2 R3 K62 ["sizes"]
      155 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["OptionSelectorGroupItem"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["IconSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["InternalInput"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Enums"]
       32 GETTABLEKS                       R5 R5 K12 ["InputSize"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Enums"]
       39 GETTABLEKS                       R6 R6 K13 ["ControlState"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Utility"]
       46 GETTABLEKS                       R7 R7 K14 ["composeStyleVariant"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Providers"]
       53 GETTABLEKS                       R8 R8 K16 ["Style"]
       55 GETTABLEKS                       R8 R8 K17 ["Tokens"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K10 ["Components"]
       62 GETTABLEKS                       R9 R9 K18 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K15 ["Providers"]
       69 GETTABLEKS                       R10 R10 K16 ["Style"]
       71 GETTABLEKS                       R10 R10 K19 ["VariantsContext"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K20 [PROTO_0]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 DUPCLOSURE                       R11 K21 [PROTO_1]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R6
       82 RETURN                           R11 1
