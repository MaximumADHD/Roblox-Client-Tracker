PROTO_0:
        0 DUPTABLE                         R1 K6 [{"container", "content", "itemInner", "label", "metadata", "description"}]
        1 DUPTABLE                         R2 K9 [{"tag", "radius"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K10 ["FoundationFixOptionSelectorThickness"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K11 ["col align-y-center align-x-left radius-medium gap-xsmall wrap"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K12 ["col align-y-center align-x-left radius-medium gap-xsmall wrap stroke-standard"]
        9 SETTABLEKS                       R3 R2 K7 ["tag"]
       11 GETTABLEKS                       R4 R0 K13 ["Radius"]
       13 GETTABLEKS                       R3 R4 K14 ["Medium"]
       15 SETTABLEKS                       R3 R2 K8 ["radius"]
       17 SETTABLEKS                       R2 R1 K0 ["container"]
       19 GETTABLEKS                       R4 R0 K15 ["Color"]
       21 GETTABLEKS                       R3 R4 K16 ["Content"]
       23 GETTABLEKS                       R2 R3 K17 ["Default"]
       25 SETTABLEKS                       R2 R1 K1 ["content"]
       27 DUPTABLE                         R2 K18 [{"tag"}]
       28 LOADK                            R3 K19 ["col gap-xsmall size-full-0 auto-y"]
       29 SETTABLEKS                       R3 R2 K7 ["tag"]
       31 SETTABLEKS                       R2 R1 K2 ["itemInner"]
       33 DUPTABLE                         R2 K18 [{"tag"}]
       34 LOADK                            R3 K20 ["auto-xy fill"]
       35 SETTABLEKS                       R3 R2 K7 ["tag"]
       37 SETTABLEKS                       R2 R1 K3 ["label"]
       39 DUPTABLE                         R2 K18 [{"tag"}]
       40 LOADK                            R3 K21 ["auto-xy shrink"]
       41 SETTABLEKS                       R3 R2 K7 ["tag"]
       43 SETTABLEKS                       R2 R1 K4 ["metadata"]
       45 DUPTABLE                         R2 K18 [{"tag"}]
       46 LOADK                            R3 K22 ["auto-xy grow"]
       47 SETTABLEKS                       R3 R2 K7 ["tag"]
       49 SETTABLEKS                       R2 R1 K5 ["description"]
       51 NEWTABLE                         R2 4 0
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R3 R4 K23 ["XSmall"]
       56 DUPTABLE                         R4 K25 [{"container", "icon", "label", "metadata", "description"}]
       57 DUPTABLE                         R5 K18 [{"tag"}]
       58 LOADK                            R6 K26 ["padding-medium"]
       59 SETTABLEKS                       R6 R5 K7 ["tag"]
       61 SETTABLEKS                       R5 R4 K0 ["container"]
       63 DUPTABLE                         R5 K28 [{"size"}]
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R6 R7 K23 ["XSmall"]
       67 SETTABLEKS                       R6 R5 K27 ["size"]
       69 SETTABLEKS                       R5 R4 K24 ["icon"]
       71 DUPTABLE                         R5 K18 [{"tag"}]
       72 LOADK                            R6 K29 ["text-title-small"]
       73 SETTABLEKS                       R6 R5 K7 ["tag"]
       75 SETTABLEKS                       R5 R4 K3 ["label"]
       77 DUPTABLE                         R5 K18 [{"tag"}]
       78 LOADK                            R6 K30 ["text-caption-small"]
       79 SETTABLEKS                       R6 R5 K7 ["tag"]
       81 SETTABLEKS                       R5 R4 K4 ["metadata"]
       83 DUPTABLE                         R5 K18 [{"tag"}]
       84 LOADK                            R6 K31 ["text-body-small"]
       85 SETTABLEKS                       R6 R5 K7 ["tag"]
       87 SETTABLEKS                       R5 R4 K5 ["description"]
       89 SETTABLE                         R4 R2 R3
       90 GETUPVAL                         R4 1
       91 GETTABLEKS                       R3 R4 K32 ["Small"]
       93 DUPTABLE                         R4 K25 [{"container", "icon", "label", "metadata", "description"}]
       94 DUPTABLE                         R5 K18 [{"tag"}]
       95 LOADK                            R6 K33 ["padding-large"]
       96 SETTABLEKS                       R6 R5 K7 ["tag"]
       98 SETTABLEKS                       R5 R4 K0 ["container"]
      100 DUPTABLE                         R5 K28 [{"size"}]
      101 GETUPVAL                         R7 2
      102 GETTABLEKS                       R6 R7 K32 ["Small"]
      104 SETTABLEKS                       R6 R5 K27 ["size"]
      106 SETTABLEKS                       R5 R4 K24 ["icon"]
      108 DUPTABLE                         R5 K18 [{"tag"}]
      109 LOADK                            R6 K29 ["text-title-small"]
      110 SETTABLEKS                       R6 R5 K7 ["tag"]
      112 SETTABLEKS                       R5 R4 K3 ["label"]
      114 DUPTABLE                         R5 K18 [{"tag"}]
      115 LOADK                            R6 K30 ["text-caption-small"]
      116 SETTABLEKS                       R6 R5 K7 ["tag"]
      118 SETTABLEKS                       R5 R4 K4 ["metadata"]
      120 DUPTABLE                         R5 K18 [{"tag"}]
      121 LOADK                            R6 K31 ["text-body-small"]
      122 SETTABLEKS                       R6 R5 K7 ["tag"]
      124 SETTABLEKS                       R5 R4 K5 ["description"]
      126 SETTABLE                         R4 R2 R3
      127 GETUPVAL                         R4 1
      128 GETTABLEKS                       R3 R4 K14 ["Medium"]
      130 DUPTABLE                         R4 K25 [{"container", "icon", "label", "metadata", "description"}]
      131 DUPTABLE                         R5 K18 [{"tag"}]
      132 LOADK                            R6 K34 ["padding-xlarge"]
      133 SETTABLEKS                       R6 R5 K7 ["tag"]
      135 SETTABLEKS                       R5 R4 K0 ["container"]
      137 DUPTABLE                         R5 K28 [{"size"}]
      138 GETUPVAL                         R7 2
      139 GETTABLEKS                       R6 R7 K14 ["Medium"]
      141 SETTABLEKS                       R6 R5 K27 ["size"]
      143 SETTABLEKS                       R5 R4 K24 ["icon"]
      145 DUPTABLE                         R5 K18 [{"tag"}]
      146 LOADK                            R6 K35 ["text-title-medium"]
      147 SETTABLEKS                       R6 R5 K7 ["tag"]
      149 SETTABLEKS                       R5 R4 K3 ["label"]
      151 DUPTABLE                         R5 K18 [{"tag"}]
      152 LOADK                            R6 K36 ["text-caption-medium"]
      153 SETTABLEKS                       R6 R5 K7 ["tag"]
      155 SETTABLEKS                       R5 R4 K4 ["metadata"]
      157 DUPTABLE                         R5 K18 [{"tag"}]
      158 LOADK                            R6 K37 ["text-body-medium"]
      159 SETTABLEKS                       R6 R5 K7 ["tag"]
      161 SETTABLEKS                       R5 R4 K5 ["description"]
      163 SETTABLE                         R4 R2 R3
      164 GETUPVAL                         R4 1
      165 GETTABLEKS                       R3 R4 K38 ["Large"]
      167 DUPTABLE                         R4 K25 [{"container", "icon", "label", "metadata", "description"}]
      168 DUPTABLE                         R5 K18 [{"tag"}]
      169 LOADK                            R6 K39 ["padding-xxlarge"]
      170 SETTABLEKS                       R6 R5 K7 ["tag"]
      172 SETTABLEKS                       R5 R4 K0 ["container"]
      174 DUPTABLE                         R5 K28 [{"size"}]
      175 GETUPVAL                         R7 2
      176 GETTABLEKS                       R6 R7 K38 ["Large"]
      178 SETTABLEKS                       R6 R5 K27 ["size"]
      180 SETTABLEKS                       R5 R4 K24 ["icon"]
      182 DUPTABLE                         R5 K18 [{"tag"}]
      183 LOADK                            R6 K40 ["text-title-large"]
      184 SETTABLEKS                       R6 R5 K7 ["tag"]
      186 SETTABLEKS                       R5 R4 K3 ["label"]
      188 DUPTABLE                         R5 K18 [{"tag"}]
      189 LOADK                            R6 K41 ["text-caption-large"]
      190 SETTABLEKS                       R6 R5 K7 ["tag"]
      192 SETTABLEKS                       R5 R4 K4 ["metadata"]
      194 DUPTABLE                         R5 K18 [{"tag"}]
      195 LOADK                            R6 K42 ["text-body-large"]
      196 SETTABLEKS                       R6 R5 K7 ["tag"]
      198 SETTABLEKS                       R5 R4 K5 ["description"]
      200 SETTABLE                         R4 R2 R3
      201 DUPTABLE                         R3 K45 [{"common", "sizes"}]
      202 SETTABLEKS                       R1 R3 K43 ["common"]
      204 SETTABLEKS                       R2 R3 K44 ["sizes"]
      206 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["IconSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R5 K11 ["InternalInput"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Enums"]
       32 GETTABLEKS                       R5 R6 K12 ["InputSize"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Enums"]
       39 GETTABLEKS                       R6 R7 K13 ["ControlState"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Utility"]
       46 GETTABLEKS                       R7 R8 K14 ["composeStyleVariant"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Providers"]
       53 GETTABLEKS                       R9 R10 K16 ["Style"]
       55 GETTABLEKS                       R8 R9 K17 ["Tokens"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K10 ["Components"]
       62 GETTABLEKS                       R9 R10 K18 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K15 ["Providers"]
       69 GETTABLEKS                       R11 R12 K16 ["Style"]
       71 GETTABLEKS                       R10 R11 K19 ["VariantsContext"]
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
