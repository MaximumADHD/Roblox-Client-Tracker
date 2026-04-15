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
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K19 ["FoundationFixOptionSelectorGroupItemSize"]
       31 JUMPIFNOT                        R4 ; [+2]
       32 LOADK                            R3 K20 ["col size-full-0 auto-y gap-xsmall"]
       33 JUMP                             ; [+1]
       34 LOADK                            R3 K21 ["col auto-xy gap-xsmall"]
       35 SETTABLEKS                       R3 R2 K7 ["tag"]
       37 SETTABLEKS                       R2 R1 K2 ["itemInner"]
       39 DUPTABLE                         R2 K18 [{"tag"}]
       40 LOADK                            R3 K22 ["auto-xy fill"]
       41 SETTABLEKS                       R3 R2 K7 ["tag"]
       43 SETTABLEKS                       R2 R1 K3 ["label"]
       45 DUPTABLE                         R2 K18 [{"tag"}]
       46 LOADK                            R3 K23 ["auto-xy shrink"]
       47 SETTABLEKS                       R3 R2 K7 ["tag"]
       49 SETTABLEKS                       R2 R1 K4 ["metadata"]
       51 DUPTABLE                         R2 K18 [{"tag"}]
       52 LOADK                            R3 K24 ["auto-xy grow"]
       53 SETTABLEKS                       R3 R2 K7 ["tag"]
       55 SETTABLEKS                       R2 R1 K5 ["description"]
       57 NEWTABLE                         R2 4 0
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R3 R4 K25 ["XSmall"]
       62 DUPTABLE                         R4 K27 [{"container", "icon", "label", "metadata", "description"}]
       63 DUPTABLE                         R5 K18 [{"tag"}]
       64 LOADK                            R6 K28 ["padding-medium"]
       65 SETTABLEKS                       R6 R5 K7 ["tag"]
       67 SETTABLEKS                       R5 R4 K0 ["container"]
       69 DUPTABLE                         R5 K30 [{"size"}]
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R6 R7 K25 ["XSmall"]
       73 SETTABLEKS                       R6 R5 K29 ["size"]
       75 SETTABLEKS                       R5 R4 K26 ["icon"]
       77 DUPTABLE                         R5 K18 [{"tag"}]
       78 LOADK                            R6 K31 ["text-title-small"]
       79 SETTABLEKS                       R6 R5 K7 ["tag"]
       81 SETTABLEKS                       R5 R4 K3 ["label"]
       83 DUPTABLE                         R5 K18 [{"tag"}]
       84 LOADK                            R6 K32 ["text-caption-small"]
       85 SETTABLEKS                       R6 R5 K7 ["tag"]
       87 SETTABLEKS                       R5 R4 K4 ["metadata"]
       89 DUPTABLE                         R5 K18 [{"tag"}]
       90 LOADK                            R6 K33 ["text-body-small"]
       91 SETTABLEKS                       R6 R5 K7 ["tag"]
       93 SETTABLEKS                       R5 R4 K5 ["description"]
       95 SETTABLE                         R4 R2 R3
       96 GETUPVAL                         R4 1
       97 GETTABLEKS                       R3 R4 K34 ["Small"]
       99 DUPTABLE                         R4 K27 [{"container", "icon", "label", "metadata", "description"}]
      100 DUPTABLE                         R5 K18 [{"tag"}]
      101 LOADK                            R6 K35 ["padding-large"]
      102 SETTABLEKS                       R6 R5 K7 ["tag"]
      104 SETTABLEKS                       R5 R4 K0 ["container"]
      106 DUPTABLE                         R5 K30 [{"size"}]
      107 GETUPVAL                         R7 2
      108 GETTABLEKS                       R6 R7 K34 ["Small"]
      110 SETTABLEKS                       R6 R5 K29 ["size"]
      112 SETTABLEKS                       R5 R4 K26 ["icon"]
      114 DUPTABLE                         R5 K18 [{"tag"}]
      115 LOADK                            R6 K31 ["text-title-small"]
      116 SETTABLEKS                       R6 R5 K7 ["tag"]
      118 SETTABLEKS                       R5 R4 K3 ["label"]
      120 DUPTABLE                         R5 K18 [{"tag"}]
      121 LOADK                            R6 K32 ["text-caption-small"]
      122 SETTABLEKS                       R6 R5 K7 ["tag"]
      124 SETTABLEKS                       R5 R4 K4 ["metadata"]
      126 DUPTABLE                         R5 K18 [{"tag"}]
      127 LOADK                            R6 K33 ["text-body-small"]
      128 SETTABLEKS                       R6 R5 K7 ["tag"]
      130 SETTABLEKS                       R5 R4 K5 ["description"]
      132 SETTABLE                         R4 R2 R3
      133 GETUPVAL                         R4 1
      134 GETTABLEKS                       R3 R4 K14 ["Medium"]
      136 DUPTABLE                         R4 K27 [{"container", "icon", "label", "metadata", "description"}]
      137 DUPTABLE                         R5 K18 [{"tag"}]
      138 LOADK                            R6 K36 ["padding-xlarge"]
      139 SETTABLEKS                       R6 R5 K7 ["tag"]
      141 SETTABLEKS                       R5 R4 K0 ["container"]
      143 DUPTABLE                         R5 K30 [{"size"}]
      144 GETUPVAL                         R7 2
      145 GETTABLEKS                       R6 R7 K14 ["Medium"]
      147 SETTABLEKS                       R6 R5 K29 ["size"]
      149 SETTABLEKS                       R5 R4 K26 ["icon"]
      151 DUPTABLE                         R5 K18 [{"tag"}]
      152 LOADK                            R6 K37 ["text-title-medium"]
      153 SETTABLEKS                       R6 R5 K7 ["tag"]
      155 SETTABLEKS                       R5 R4 K3 ["label"]
      157 DUPTABLE                         R5 K18 [{"tag"}]
      158 LOADK                            R6 K38 ["text-caption-medium"]
      159 SETTABLEKS                       R6 R5 K7 ["tag"]
      161 SETTABLEKS                       R5 R4 K4 ["metadata"]
      163 DUPTABLE                         R5 K18 [{"tag"}]
      164 LOADK                            R6 K39 ["text-body-medium"]
      165 SETTABLEKS                       R6 R5 K7 ["tag"]
      167 SETTABLEKS                       R5 R4 K5 ["description"]
      169 SETTABLE                         R4 R2 R3
      170 GETUPVAL                         R4 1
      171 GETTABLEKS                       R3 R4 K40 ["Large"]
      173 DUPTABLE                         R4 K27 [{"container", "icon", "label", "metadata", "description"}]
      174 DUPTABLE                         R5 K18 [{"tag"}]
      175 LOADK                            R6 K41 ["padding-xxlarge"]
      176 SETTABLEKS                       R6 R5 K7 ["tag"]
      178 SETTABLEKS                       R5 R4 K0 ["container"]
      180 DUPTABLE                         R5 K30 [{"size"}]
      181 GETUPVAL                         R7 2
      182 GETTABLEKS                       R6 R7 K40 ["Large"]
      184 SETTABLEKS                       R6 R5 K29 ["size"]
      186 SETTABLEKS                       R5 R4 K26 ["icon"]
      188 DUPTABLE                         R5 K18 [{"tag"}]
      189 LOADK                            R6 K42 ["text-title-large"]
      190 SETTABLEKS                       R6 R5 K7 ["tag"]
      192 SETTABLEKS                       R5 R4 K3 ["label"]
      194 DUPTABLE                         R5 K18 [{"tag"}]
      195 LOADK                            R6 K43 ["text-caption-large"]
      196 SETTABLEKS                       R6 R5 K7 ["tag"]
      198 SETTABLEKS                       R5 R4 K4 ["metadata"]
      200 DUPTABLE                         R5 K18 [{"tag"}]
      201 LOADK                            R6 K44 ["text-body-large"]
      202 SETTABLEKS                       R6 R5 K7 ["tag"]
      204 SETTABLEKS                       R5 R4 K5 ["description"]
      206 SETTABLE                         R4 R2 R3
      207 DUPTABLE                         R3 K47 [{"common", "sizes"}]
      208 SETTABLEKS                       R1 R3 K45 ["common"]
      210 SETTABLEKS                       R2 R3 K46 ["sizes"]
      212 RETURN                           R3 1

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
