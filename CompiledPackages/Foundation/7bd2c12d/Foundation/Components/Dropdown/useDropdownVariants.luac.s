PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"text"}]
        5 DUPTABLE                         R4 K5 [{["tag"] = "content-muted"}]
        6 SETTABLEKS                       R4 R3 K1 ["text"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"container", "text"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K5 ["FoundationUIStrokeInner"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K6 ["row align-y-center flex-x-between stroke-standard stroke-position-inner"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K7 ["row align-y-center flex-x-between stroke-standard"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K0 ["container"]
       13 DUPTABLE                         R2 K9 [{["tag"] = "auto-xy text-truncate-split shrink"}]
       14 SETTABLEKS                       R2 R1 K1 ["text"]
       16 NEWTABLE                         R2 4 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K10 ["XSmall"]
       21 DUPTABLE                         R4 K12 [{"container", "text", "arrow"}]
       22 DUPTABLE                         R5 K14 [{["tag"] = "radius-small padding-small gap-xxsmall size-full-600"}]
       23 SETTABLEKS                       R5 R4 K0 ["container"]
       25 DUPTABLE                         R5 K16 [{["tag"] = "text-body-small"}]
       26 SETTABLEKS                       R5 R4 K1 ["text"]
       28 DUPTABLE                         R5 K18 [{"size"}]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K19 ["Small"]
       32 SETTABLEKS                       R6 R5 K17 ["size"]
       34 SETTABLEKS                       R5 R4 K11 ["arrow"]
       36 SETTABLE                         R4 R2 R3
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K19 ["Small"]
       40 DUPTABLE                         R4 K12 [{"container", "text", "arrow"}]
       41 DUPTABLE                         R5 K21 [{["tag"] = "radius-medium padding-medium gap-xxsmall size-full-800"}]
       42 SETTABLEKS                       R5 R4 K0 ["container"]
       44 DUPTABLE                         R5 K16 [{["tag"] = "text-body-small"}]
       45 SETTABLEKS                       R5 R4 K1 ["text"]
       47 DUPTABLE                         R5 K18 [{"size"}]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K19 ["Small"]
       51 SETTABLEKS                       R6 R5 K17 ["size"]
       53 SETTABLEKS                       R5 R4 K11 ["arrow"]
       55 SETTABLE                         R4 R2 R3
       56 GETUPVAL                         R3 1
       57 GETTABLEKS                       R3 R3 K22 ["Medium"]
       59 DUPTABLE                         R4 K12 [{"container", "text", "arrow"}]
       60 DUPTABLE                         R5 K24 [{["tag"] = "radius-medium padding-medium size-full-1000"}]
       61 SETTABLEKS                       R5 R4 K0 ["container"]
       63 DUPTABLE                         R5 K26 [{["tag"] = "text-body-medium"}]
       64 SETTABLEKS                       R5 R4 K1 ["text"]
       66 DUPTABLE                         R5 K18 [{"size"}]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K22 ["Medium"]
       70 SETTABLEKS                       R6 R5 K17 ["size"]
       72 SETTABLEKS                       R5 R4 K11 ["arrow"]
       74 SETTABLE                         R4 R2 R3
       75 GETUPVAL                         R3 1
       76 GETTABLEKS                       R3 R3 K27 ["Large"]
       78 DUPTABLE                         R4 K12 [{"container", "text", "arrow"}]
       79 DUPTABLE                         R5 K29 [{["tag"] = "radius-medium padding-medium size-full-1200"}]
       80 SETTABLEKS                       R5 R4 K0 ["container"]
       82 DUPTABLE                         R5 K31 [{["tag"] = "text-body-large"}]
       83 SETTABLEKS                       R5 R4 K1 ["text"]
       85 DUPTABLE                         R5 K18 [{"size"}]
       86 GETUPVAL                         R6 1
       87 GETTABLEKS                       R6 R6 K22 ["Medium"]
       89 SETTABLEKS                       R6 R5 K17 ["size"]
       91 SETTABLEKS                       R5 R4 K11 ["arrow"]
       93 SETTABLE                         R4 R2 R3
       94 NEWTABLE                         R3 8 0
       96 GETUPVAL                         R4 2
       97 GETTABLEKS                       R4 R4 K32 ["Disabled"]
       99 DUPTABLE                         R5 K2 [{"container", "text"}]
      100 DUPTABLE                         R6 K34 [{["tag"] = "stroke-muted"}]
      101 SETTABLEKS                       R6 R5 K0 ["container"]
      103 DUPTABLE                         R6 K36 [{["tag"] = "content-muted"}]
      104 SETTABLEKS                       R6 R5 K1 ["text"]
      106 SETTABLE                         R5 R3 R4
      107 GETUPVAL                         R4 2
      108 GETTABLEKS                       R4 R4 K37 ["Initialize"]
      110 DUPTABLE                         R5 K2 [{"container", "text"}]
      111 DUPTABLE                         R6 K39 [{["tag"] = "stroke-default"}]
      112 SETTABLEKS                       R6 R5 K0 ["container"]
      114 DUPTABLE                         R6 K41 [{["tag"] = "content-default"}]
      115 SETTABLEKS                       R6 R5 K1 ["text"]
      117 SETTABLE                         R5 R3 R4
      118 GETUPVAL                         R4 2
      119 GETTABLEKS                       R4 R4 K42 ["Default"]
      121 DUPTABLE                         R5 K2 [{"container", "text"}]
      122 DUPTABLE                         R6 K39 [{["tag"] = "stroke-default"}]
      123 SETTABLEKS                       R6 R5 K0 ["container"]
      125 DUPTABLE                         R6 K41 [{["tag"] = "content-default"}]
      126 SETTABLEKS                       R6 R5 K1 ["text"]
      128 SETTABLE                         R5 R3 R4
      129 GETUPVAL                         R4 2
      130 GETTABLEKS                       R4 R4 K43 ["Hover"]
      132 DUPTABLE                         R5 K2 [{"container", "text"}]
      133 DUPTABLE                         R6 K45 [{["tag"] = "stroke-emphasis"}]
      134 SETTABLEKS                       R6 R5 K0 ["container"]
      136 DUPTABLE                         R6 K47 [{["tag"] = "content-emphasis"}]
      137 SETTABLEKS                       R6 R5 K1 ["text"]
      139 SETTABLE                         R5 R3 R4
      140 GETUPVAL                         R4 2
      141 GETTABLEKS                       R4 R4 K48 ["Pressed"]
      143 DUPTABLE                         R5 K2 [{"container", "text"}]
      144 DUPTABLE                         R6 K45 [{["tag"] = "stroke-emphasis"}]
      145 SETTABLEKS                       R6 R5 K0 ["container"]
      147 DUPTABLE                         R6 K47 [{["tag"] = "content-emphasis"}]
      148 SETTABLEKS                       R6 R5 K1 ["text"]
      150 SETTABLE                         R5 R3 R4
      151 DUPTABLE                         R4 K2 [{"container", "text"}]
      152 DUPTABLE                         R5 K50 [{["tag"] = "stroke-alert"}]
      153 SETTABLEKS                       R5 R4 K0 ["container"]
      155 DUPTABLE                         R5 K41 [{["tag"] = "content-default"}]
      156 SETTABLEKS                       R5 R4 K1 ["text"]
      158 SETTABLEKS                       R4 R3 K51 ["Error"]
      160 GETUPVAL                         R4 3
      161 GETTABLEKS                       R4 R4 K52 ["map"]
      163 MOVE                             R5 R3
      164 DUPCLOSURE                       R6 K53 [PROTO_0]
      165 CAPTURE                          UPVAL U3
      166 CALL                             R4 2 1
      167 DUPTABLE                         R5 K58 [{"common", "sizes", "states", "placeholderStates"}]
      168 SETTABLEKS                       R1 R5 K54 ["common"]
      170 SETTABLEKS                       R2 R5 K55 ["sizes"]
      172 SETTABLEKS                       R3 R5 K56 ["states"]
      174 SETTABLEKS                       R4 R5 K57 ["placeholderStates"]
      176 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useVariants"]
        3 LOADK                            R6 K1 ["Dropdown"]
        4 GETUPVAL                         R7 1
        5 MOVE                             R8 R0
        6 CALL                             R5 3 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 LOADK                            R6 K2 ["Error"]
        9 JUMP                             ; [+1]
       10 MOVE                             R6 R2
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R8 R5 K3 ["common"]
       14 GETTABLEKS                       R10 R5 K4 ["sizes"]
       16 GETTABLE                         R9 R10 R1
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETTABLEKS                       R11 R5 K5 ["placeholderStates"]
       20 GETTABLE                         R10 R11 R6
       21 JUMP                             ; [+3]
       22 GETTABLEKS                       R11 R5 K6 ["states"]
       24 GETTABLE                         R10 R11 R6
       25 CALL                             R7 3 -1
       26 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["ControlState"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["InputSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["InputLabelSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["composeStyleVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Providers"]
       60 GETTABLEKS                       R10 R10 K18 ["Style"]
       62 GETTABLEKS                       R10 R10 K19 ["Tokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Providers"]
       69 GETTABLEKS                       R11 R11 K18 ["Style"]
       71 GETTABLEKS                       R11 R11 K20 ["VariantsContext"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K15 ["Utility"]
       78 GETTABLEKS                       R12 R12 K21 ["Flags"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K22 [PROTO_1]
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 DUPCLOSURE                       R13 K23 [PROTO_2]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R8
       90 RETURN                           R13 1
