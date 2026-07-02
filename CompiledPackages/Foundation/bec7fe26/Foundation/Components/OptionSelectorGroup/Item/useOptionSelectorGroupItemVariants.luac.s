PROTO_0:
        0 DUPTABLE                         R1 K6 [{"container", "content", "itemInner", "label", "metadata", "description"}]
        1 DUPTABLE                         R2 K10 [{["tag"] = "col align-y-center align-x-left radius-medium gap-xsmall wrap stroke-standard", ["radius"]}]
        2 GETTABLEKS                       R3 R0 K11 ["Radius"]
        4 GETTABLEKS                       R3 R3 K12 ["Medium"]
        6 SETTABLEKS                       R3 R2 K9 ["radius"]
        8 SETTABLEKS                       R2 R1 K0 ["container"]
       10 GETTABLEKS                       R2 R0 K13 ["Color"]
       12 GETTABLEKS                       R2 R2 K14 ["Content"]
       14 GETTABLEKS                       R2 R2 K15 ["Default"]
       16 SETTABLEKS                       R2 R1 K1 ["content"]
       18 DUPTABLE                         R2 K16 [{"tag"}]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K17 ["FoundationFixOptionSelectorGroupItemSize"]
       22 JUMPIFNOT                        R4 ; [+2]
       23 LOADK                            R3 K18 ["col size-full-0 auto-y gap-xsmall"]
       24 JUMP                             ; [+1]
       25 LOADK                            R3 K19 ["col auto-xy gap-xsmall"]
       26 SETTABLEKS                       R3 R2 K7 ["tag"]
       28 SETTABLEKS                       R2 R1 K2 ["itemInner"]
       30 DUPTABLE                         R2 K21 [{["tag"] = "auto-xy fill"}]
       31 SETTABLEKS                       R2 R1 K3 ["label"]
       33 DUPTABLE                         R2 K23 [{["tag"] = "auto-xy shrink"}]
       34 SETTABLEKS                       R2 R1 K4 ["metadata"]
       36 DUPTABLE                         R2 K25 [{["tag"] = "auto-xy grow"}]
       37 SETTABLEKS                       R2 R1 K5 ["description"]
       39 NEWTABLE                         R2 4 0
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K26 ["XSmall"]
       44 DUPTABLE                         R4 K28 [{"container", "icon", "label", "metadata", "description"}]
       45 DUPTABLE                         R5 K30 [{["tag"] = "padding-medium"}]
       46 SETTABLEKS                       R5 R4 K0 ["container"]
       48 DUPTABLE                         R5 K32 [{"size"}]
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K26 ["XSmall"]
       52 SETTABLEKS                       R6 R5 K31 ["size"]
       54 SETTABLEKS                       R5 R4 K27 ["icon"]
       56 DUPTABLE                         R5 K34 [{["tag"] = "text-title-small"}]
       57 SETTABLEKS                       R5 R4 K3 ["label"]
       59 DUPTABLE                         R5 K36 [{["tag"] = "text-caption-small"}]
       60 SETTABLEKS                       R5 R4 K4 ["metadata"]
       62 DUPTABLE                         R5 K38 [{["tag"] = "text-body-small"}]
       63 SETTABLEKS                       R5 R4 K5 ["description"]
       65 SETTABLE                         R4 R2 R3
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K39 ["Small"]
       69 DUPTABLE                         R4 K28 [{"container", "icon", "label", "metadata", "description"}]
       70 DUPTABLE                         R5 K41 [{["tag"] = "padding-large"}]
       71 SETTABLEKS                       R5 R4 K0 ["container"]
       73 DUPTABLE                         R5 K32 [{"size"}]
       74 GETUPVAL                         R6 2
       75 GETTABLEKS                       R6 R6 K39 ["Small"]
       77 SETTABLEKS                       R6 R5 K31 ["size"]
       79 SETTABLEKS                       R5 R4 K27 ["icon"]
       81 DUPTABLE                         R5 K34 [{["tag"] = "text-title-small"}]
       82 SETTABLEKS                       R5 R4 K3 ["label"]
       84 DUPTABLE                         R5 K36 [{["tag"] = "text-caption-small"}]
       85 SETTABLEKS                       R5 R4 K4 ["metadata"]
       87 DUPTABLE                         R5 K38 [{["tag"] = "text-body-small"}]
       88 SETTABLEKS                       R5 R4 K5 ["description"]
       90 SETTABLE                         R4 R2 R3
       91 GETUPVAL                         R3 1
       92 GETTABLEKS                       R3 R3 K12 ["Medium"]
       94 DUPTABLE                         R4 K28 [{"container", "icon", "label", "metadata", "description"}]
       95 DUPTABLE                         R5 K43 [{["tag"] = "padding-xlarge"}]
       96 SETTABLEKS                       R5 R4 K0 ["container"]
       98 DUPTABLE                         R5 K32 [{"size"}]
       99 GETUPVAL                         R6 2
      100 GETTABLEKS                       R6 R6 K12 ["Medium"]
      102 SETTABLEKS                       R6 R5 K31 ["size"]
      104 SETTABLEKS                       R5 R4 K27 ["icon"]
      106 DUPTABLE                         R5 K45 [{["tag"] = "text-title-medium"}]
      107 SETTABLEKS                       R5 R4 K3 ["label"]
      109 DUPTABLE                         R5 K47 [{["tag"] = "text-caption-medium"}]
      110 SETTABLEKS                       R5 R4 K4 ["metadata"]
      112 DUPTABLE                         R5 K49 [{["tag"] = "text-body-medium"}]
      113 SETTABLEKS                       R5 R4 K5 ["description"]
      115 SETTABLE                         R4 R2 R3
      116 GETUPVAL                         R3 1
      117 GETTABLEKS                       R3 R3 K50 ["Large"]
      119 DUPTABLE                         R4 K28 [{"container", "icon", "label", "metadata", "description"}]
      120 DUPTABLE                         R5 K52 [{["tag"] = "padding-xxlarge"}]
      121 SETTABLEKS                       R5 R4 K0 ["container"]
      123 DUPTABLE                         R5 K32 [{"size"}]
      124 GETUPVAL                         R6 2
      125 GETTABLEKS                       R6 R6 K50 ["Large"]
      127 SETTABLEKS                       R6 R5 K31 ["size"]
      129 SETTABLEKS                       R5 R4 K27 ["icon"]
      131 DUPTABLE                         R5 K54 [{["tag"] = "text-title-large"}]
      132 SETTABLEKS                       R5 R4 K3 ["label"]
      134 DUPTABLE                         R5 K56 [{["tag"] = "text-caption-large"}]
      135 SETTABLEKS                       R5 R4 K4 ["metadata"]
      137 DUPTABLE                         R5 K58 [{["tag"] = "text-body-large"}]
      138 SETTABLEKS                       R5 R4 K5 ["description"]
      140 SETTABLE                         R4 R2 R3
      141 DUPTABLE                         R3 K61 [{"common", "sizes"}]
      142 SETTABLEKS                       R1 R3 K59 ["common"]
      144 SETTABLEKS                       R2 R3 K60 ["sizes"]
      146 RETURN                           R3 1

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
