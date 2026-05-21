PROTO_0:
        0 DUPTABLE                         R1 K6 [{"container", "content", "itemInner", "label", "metadata", "description"}]
        1 DUPTABLE                         R2 K9 [{"tag", "radius"}]
        2 LOADK                            R3 K10 ["col wrap align-x-left align-y-center gap-xsmall radius-medium"]
        3 SETTABLEKS                       R3 R2 K7 ["tag"]
        5 GETTABLEKS                       R3 R0 K11 ["Radius"]
        7 GETTABLEKS                       R3 R3 K12 ["Medium"]
        9 SETTABLEKS                       R3 R2 K8 ["radius"]
       11 SETTABLEKS                       R2 R1 K0 ["container"]
       13 GETTABLEKS                       R2 R0 K13 ["Color"]
       15 GETTABLEKS                       R2 R2 K14 ["Content"]
       17 GETTABLEKS                       R2 R2 K15 ["Default"]
       19 SETTABLEKS                       R2 R1 K1 ["content"]
       21 DUPTABLE                         R2 K16 [{"tag"}]
       22 LOADK                            R3 K17 ["col gap-xsmall size-full-0 auto-y"]
       23 SETTABLEKS                       R3 R2 K7 ["tag"]
       25 SETTABLEKS                       R2 R1 K2 ["itemInner"]
       27 DUPTABLE                         R2 K16 [{"tag"}]
       28 LOADK                            R3 K18 ["fill auto-xy"]
       29 SETTABLEKS                       R3 R2 K7 ["tag"]
       31 SETTABLEKS                       R2 R1 K3 ["label"]
       33 DUPTABLE                         R2 K16 [{"tag"}]
       34 LOADK                            R3 K19 ["shrink auto-xy"]
       35 SETTABLEKS                       R3 R2 K7 ["tag"]
       37 SETTABLEKS                       R2 R1 K4 ["metadata"]
       39 DUPTABLE                         R2 K16 [{"tag"}]
       40 LOADK                            R3 K20 ["grow auto-xy"]
       41 SETTABLEKS                       R3 R2 K7 ["tag"]
       43 SETTABLEKS                       R2 R1 K5 ["description"]
       45 NEWTABLE                         R2 4 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K21 ["XSmall"]
       50 DUPTABLE                         R4 K23 [{"container", "icon", "label", "metadata", "description"}]
       51 DUPTABLE                         R5 K16 [{"tag"}]
       52 LOADK                            R6 K24 ["padding-medium"]
       53 SETTABLEKS                       R6 R5 K7 ["tag"]
       55 SETTABLEKS                       R5 R4 K0 ["container"]
       57 DUPTABLE                         R5 K26 [{"size"}]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K21 ["XSmall"]
       61 SETTABLEKS                       R6 R5 K25 ["size"]
       63 SETTABLEKS                       R5 R4 K22 ["icon"]
       65 DUPTABLE                         R5 K16 [{"tag"}]
       66 LOADK                            R6 K27 ["text-title-small"]
       67 SETTABLEKS                       R6 R5 K7 ["tag"]
       69 SETTABLEKS                       R5 R4 K3 ["label"]
       71 DUPTABLE                         R5 K16 [{"tag"}]
       72 LOADK                            R6 K28 ["text-caption-small"]
       73 SETTABLEKS                       R6 R5 K7 ["tag"]
       75 SETTABLEKS                       R5 R4 K4 ["metadata"]
       77 DUPTABLE                         R5 K16 [{"tag"}]
       78 LOADK                            R6 K29 ["text-body-small"]
       79 SETTABLEKS                       R6 R5 K7 ["tag"]
       81 SETTABLEKS                       R5 R4 K5 ["description"]
       83 SETTABLE                         R4 R2 R3
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R3 R3 K30 ["Small"]
       87 DUPTABLE                         R4 K23 [{"container", "icon", "label", "metadata", "description"}]
       88 DUPTABLE                         R5 K16 [{"tag"}]
       89 LOADK                            R6 K31 ["padding-large"]
       90 SETTABLEKS                       R6 R5 K7 ["tag"]
       92 SETTABLEKS                       R5 R4 K0 ["container"]
       94 DUPTABLE                         R5 K26 [{"size"}]
       95 GETUPVAL                         R6 1
       96 GETTABLEKS                       R6 R6 K30 ["Small"]
       98 SETTABLEKS                       R6 R5 K25 ["size"]
      100 SETTABLEKS                       R5 R4 K22 ["icon"]
      102 DUPTABLE                         R5 K16 [{"tag"}]
      103 LOADK                            R6 K27 ["text-title-small"]
      104 SETTABLEKS                       R6 R5 K7 ["tag"]
      106 SETTABLEKS                       R5 R4 K3 ["label"]
      108 DUPTABLE                         R5 K16 [{"tag"}]
      109 LOADK                            R6 K28 ["text-caption-small"]
      110 SETTABLEKS                       R6 R5 K7 ["tag"]
      112 SETTABLEKS                       R5 R4 K4 ["metadata"]
      114 DUPTABLE                         R5 K16 [{"tag"}]
      115 LOADK                            R6 K29 ["text-body-small"]
      116 SETTABLEKS                       R6 R5 K7 ["tag"]
      118 SETTABLEKS                       R5 R4 K5 ["description"]
      120 SETTABLE                         R4 R2 R3
      121 GETUPVAL                         R3 0
      122 GETTABLEKS                       R3 R3 K12 ["Medium"]
      124 DUPTABLE                         R4 K23 [{"container", "icon", "label", "metadata", "description"}]
      125 DUPTABLE                         R5 K16 [{"tag"}]
      126 LOADK                            R6 K32 ["padding-xlarge"]
      127 SETTABLEKS                       R6 R5 K7 ["tag"]
      129 SETTABLEKS                       R5 R4 K0 ["container"]
      131 DUPTABLE                         R5 K26 [{"size"}]
      132 GETUPVAL                         R6 1
      133 GETTABLEKS                       R6 R6 K12 ["Medium"]
      135 SETTABLEKS                       R6 R5 K25 ["size"]
      137 SETTABLEKS                       R5 R4 K22 ["icon"]
      139 DUPTABLE                         R5 K16 [{"tag"}]
      140 LOADK                            R6 K33 ["text-title-medium"]
      141 SETTABLEKS                       R6 R5 K7 ["tag"]
      143 SETTABLEKS                       R5 R4 K3 ["label"]
      145 DUPTABLE                         R5 K16 [{"tag"}]
      146 LOADK                            R6 K34 ["text-caption-medium"]
      147 SETTABLEKS                       R6 R5 K7 ["tag"]
      149 SETTABLEKS                       R5 R4 K4 ["metadata"]
      151 DUPTABLE                         R5 K16 [{"tag"}]
      152 LOADK                            R6 K35 ["text-body-medium"]
      153 SETTABLEKS                       R6 R5 K7 ["tag"]
      155 SETTABLEKS                       R5 R4 K5 ["description"]
      157 SETTABLE                         R4 R2 R3
      158 GETUPVAL                         R3 0
      159 GETTABLEKS                       R3 R3 K36 ["Large"]
      161 DUPTABLE                         R4 K23 [{"container", "icon", "label", "metadata", "description"}]
      162 DUPTABLE                         R5 K16 [{"tag"}]
      163 LOADK                            R6 K37 ["padding-xxlarge"]
      164 SETTABLEKS                       R6 R5 K7 ["tag"]
      166 SETTABLEKS                       R5 R4 K0 ["container"]
      168 DUPTABLE                         R5 K26 [{"size"}]
      169 GETUPVAL                         R6 1
      170 GETTABLEKS                       R6 R6 K36 ["Large"]
      172 SETTABLEKS                       R6 R5 K25 ["size"]
      174 SETTABLEKS                       R5 R4 K22 ["icon"]
      176 DUPTABLE                         R5 K16 [{"tag"}]
      177 LOADK                            R6 K38 ["text-title-large"]
      178 SETTABLEKS                       R6 R5 K7 ["tag"]
      180 SETTABLEKS                       R5 R4 K3 ["label"]
      182 DUPTABLE                         R5 K16 [{"tag"}]
      183 LOADK                            R6 K39 ["text-caption-large"]
      184 SETTABLEKS                       R6 R5 K7 ["tag"]
      186 SETTABLEKS                       R5 R4 K4 ["metadata"]
      188 DUPTABLE                         R5 K16 [{"tag"}]
      189 LOADK                            R6 K40 ["text-body-large"]
      190 SETTABLEKS                       R6 R5 K7 ["tag"]
      192 SETTABLEKS                       R5 R4 K5 ["description"]
      194 SETTABLE                         R4 R2 R3
      195 DUPTABLE                         R3 K43 [{"common", "sizes"}]
      196 SETTABLEKS                       R1 R3 K41 ["common"]
      198 SETTABLEKS                       R2 R3 K42 ["sizes"]
      200 RETURN                           R3 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["IconSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["InternalInput"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["InputSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Enums"]
       32 GETTABLEKS                       R5 R5 K11 ["ControlState"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Utility"]
       39 GETTABLEKS                       R6 R6 K13 ["composeStyleVariant"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Providers"]
       46 GETTABLEKS                       R7 R7 K15 ["Style"]
       48 GETTABLEKS                       R7 R7 K16 ["Tokens"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Providers"]
       62 GETTABLEKS                       R9 R9 K15 ["Style"]
       64 GETTABLEKS                       R9 R9 K18 ["VariantsContext"]
       66 CALL                             R8 1 1
       67 DUPCLOSURE                       R9 K19 [PROTO_0]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 DUPCLOSURE                       R10 K20 [PROTO_1]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R5
       74 RETURN                           R10 1
