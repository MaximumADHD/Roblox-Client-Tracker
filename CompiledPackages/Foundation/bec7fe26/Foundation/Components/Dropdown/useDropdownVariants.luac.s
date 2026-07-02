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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 DUPTABLE                         R3 K3 [{"text"}]
        7 DUPTABLE                         R4 K6 [{["tag"] = "content-muted"}]
        8 SETTABLEKS                       R4 R3 K2 ["text"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"container", "text"}]
        1 DUPTABLE                         R2 K5 [{["tag"] = "row align-y-center flex-x-between stroke-standard"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K7 [{["tag"] = "auto-xy text-truncate-split shrink"}]
        5 SETTABLEKS                       R2 R1 K1 ["text"]
        7 NEWTABLE                         R2 4 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K8 ["XSmall"]
       12 DUPTABLE                         R4 K10 [{"container", "text", "arrow"}]
       13 DUPTABLE                         R5 K12 [{["tag"] = "radius-small padding-small gap-xxsmall size-full-600"}]
       14 SETTABLEKS                       R5 R4 K0 ["container"]
       16 DUPTABLE                         R5 K14 [{["tag"] = "text-body-small"}]
       17 SETTABLEKS                       R5 R4 K1 ["text"]
       19 DUPTABLE                         R5 K16 [{"size"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K17 ["Small"]
       23 SETTABLEKS                       R6 R5 K15 ["size"]
       25 SETTABLEKS                       R5 R4 K9 ["arrow"]
       27 SETTABLE                         R4 R2 R3
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K17 ["Small"]
       31 DUPTABLE                         R4 K10 [{"container", "text", "arrow"}]
       32 DUPTABLE                         R5 K19 [{["tag"] = "radius-medium padding-medium gap-xxsmall size-full-800"}]
       33 SETTABLEKS                       R5 R4 K0 ["container"]
       35 DUPTABLE                         R5 K14 [{["tag"] = "text-body-small"}]
       36 SETTABLEKS                       R5 R4 K1 ["text"]
       38 DUPTABLE                         R5 K16 [{"size"}]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K17 ["Small"]
       42 SETTABLEKS                       R6 R5 K15 ["size"]
       44 SETTABLEKS                       R5 R4 K9 ["arrow"]
       46 SETTABLE                         R4 R2 R3
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K20 ["Medium"]
       50 DUPTABLE                         R4 K10 [{"container", "text", "arrow"}]
       51 DUPTABLE                         R5 K22 [{["tag"] = "radius-medium padding-medium size-full-1000"}]
       52 SETTABLEKS                       R5 R4 K0 ["container"]
       54 DUPTABLE                         R5 K24 [{["tag"] = "text-body-medium"}]
       55 SETTABLEKS                       R5 R4 K1 ["text"]
       57 DUPTABLE                         R5 K16 [{"size"}]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K20 ["Medium"]
       61 SETTABLEKS                       R6 R5 K15 ["size"]
       63 SETTABLEKS                       R5 R4 K9 ["arrow"]
       65 SETTABLE                         R4 R2 R3
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K25 ["Large"]
       69 DUPTABLE                         R4 K10 [{"container", "text", "arrow"}]
       70 DUPTABLE                         R5 K27 [{["tag"] = "radius-medium padding-medium size-full-1200"}]
       71 SETTABLEKS                       R5 R4 K0 ["container"]
       73 DUPTABLE                         R5 K29 [{["tag"] = "text-body-large"}]
       74 SETTABLEKS                       R5 R4 K1 ["text"]
       76 DUPTABLE                         R5 K16 [{"size"}]
       77 GETUPVAL                         R6 0
       78 GETTABLEKS                       R6 R6 K20 ["Medium"]
       80 SETTABLEKS                       R6 R5 K15 ["size"]
       82 SETTABLEKS                       R5 R4 K9 ["arrow"]
       84 SETTABLE                         R4 R2 R3
       85 NEWTABLE                         R3 8 0
       87 GETUPVAL                         R4 1
       88 GETTABLEKS                       R4 R4 K30 ["Disabled"]
       90 DUPTABLE                         R5 K2 [{"container", "text"}]
       91 DUPTABLE                         R6 K32 [{["tag"] = "stroke-muted"}]
       92 SETTABLEKS                       R6 R5 K0 ["container"]
       94 DUPTABLE                         R6 K34 [{["tag"] = "content-muted"}]
       95 SETTABLEKS                       R6 R5 K1 ["text"]
       97 SETTABLE                         R5 R3 R4
       98 GETUPVAL                         R4 1
       99 GETTABLEKS                       R4 R4 K35 ["Initialize"]
      101 DUPTABLE                         R5 K2 [{"container", "text"}]
      102 DUPTABLE                         R6 K37 [{["tag"] = "stroke-default"}]
      103 SETTABLEKS                       R6 R5 K0 ["container"]
      105 DUPTABLE                         R6 K39 [{["tag"] = "content-default"}]
      106 SETTABLEKS                       R6 R5 K1 ["text"]
      108 SETTABLE                         R5 R3 R4
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R4 R4 K40 ["Default"]
      112 DUPTABLE                         R5 K2 [{"container", "text"}]
      113 DUPTABLE                         R6 K37 [{["tag"] = "stroke-default"}]
      114 SETTABLEKS                       R6 R5 K0 ["container"]
      116 DUPTABLE                         R6 K39 [{["tag"] = "content-default"}]
      117 SETTABLEKS                       R6 R5 K1 ["text"]
      119 SETTABLE                         R5 R3 R4
      120 GETUPVAL                         R4 1
      121 GETTABLEKS                       R4 R4 K41 ["Hover"]
      123 DUPTABLE                         R5 K2 [{"container", "text"}]
      124 DUPTABLE                         R6 K43 [{["tag"] = "stroke-emphasis"}]
      125 SETTABLEKS                       R6 R5 K0 ["container"]
      127 DUPTABLE                         R6 K45 [{["tag"] = "content-emphasis"}]
      128 SETTABLEKS                       R6 R5 K1 ["text"]
      130 SETTABLE                         R5 R3 R4
      131 GETUPVAL                         R4 1
      132 GETTABLEKS                       R4 R4 K46 ["Pressed"]
      134 DUPTABLE                         R5 K2 [{"container", "text"}]
      135 DUPTABLE                         R6 K43 [{["tag"] = "stroke-emphasis"}]
      136 SETTABLEKS                       R6 R5 K0 ["container"]
      138 DUPTABLE                         R6 K45 [{["tag"] = "content-emphasis"}]
      139 SETTABLEKS                       R6 R5 K1 ["text"]
      141 SETTABLE                         R5 R3 R4
      142 DUPTABLE                         R4 K2 [{"container", "text"}]
      143 DUPTABLE                         R5 K48 [{["tag"] = "stroke-alert"}]
      144 SETTABLEKS                       R5 R4 K0 ["container"]
      146 DUPTABLE                         R5 K39 [{["tag"] = "content-default"}]
      147 SETTABLEKS                       R5 R4 K1 ["text"]
      149 SETTABLEKS                       R4 R3 K49 ["Error"]
      151 GETUPVAL                         R5 2
      152 GETTABLEKS                       R5 R5 K50 ["FoundationMigrateCryoToDash"]
      154 JUMPIFNOT                        R5 ; [+8]
      155 GETUPVAL                         R4 3
      156 GETTABLEKS                       R4 R4 K51 ["map"]
      158 MOVE                             R5 R3
      159 DUPCLOSURE                       R6 K52 [PROTO_0]
      160 CAPTURE                          UPVAL U3
      161 CALL                             R4 2 1
      162 JUMP                             ; [+9]
      163 GETUPVAL                         R4 4
      164 GETTABLEKS                       R4 R4 K53 ["Dictionary"]
      166 GETTABLEKS                       R4 R4 K51 ["map"]
      168 MOVE                             R5 R3
      169 DUPCLOSURE                       R6 K54 [PROTO_1]
      170 CAPTURE                          UPVAL U4
      171 CALL                             R4 2 1
      172 DUPTABLE                         R5 K59 [{"common", "sizes", "states", "placeholderStates"}]
      173 SETTABLEKS                       R1 R5 K55 ["common"]
      175 SETTABLEKS                       R2 R5 K56 ["sizes"]
      177 SETTABLEKS                       R3 R5 K57 ["states"]
      179 SETTABLEKS                       R4 R5 K58 ["placeholderStates"]
      181 RETURN                           R5 1

PROTO_3:
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
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ControlState"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["IconSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["InputLabelSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Utility"]
       58 GETTABLEKS                       R10 R10 K17 ["composeStyleVariant"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K16 ["Utility"]
       65 GETTABLEKS                       R11 R11 K18 ["Flags"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K19 ["Providers"]
       72 GETTABLEKS                       R12 R12 K20 ["Style"]
       74 GETTABLEKS                       R12 R12 K21 ["Tokens"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K19 ["Providers"]
       81 GETTABLEKS                       R13 R13 K20 ["Style"]
       83 GETTABLEKS                       R13 R13 K22 ["VariantsContext"]
       85 CALL                             R12 1 1
       86 DUPCLOSURE                       R13 K23 [PROTO_2]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 DUPCLOSURE                       R14 K24 [PROTO_3]
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R9
       96 RETURN                           R14 1
