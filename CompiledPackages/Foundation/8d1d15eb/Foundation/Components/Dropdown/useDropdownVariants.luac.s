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
        1 DUPTABLE                         R2 K5 [{["tag"] = "row flex-x-between align-y-center stroke-standard stroke-position-inner"}]
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
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K17 ["FoundationDropdownControlIconFix"]
       23 JUMPIFNOT                        R7 ; [+4]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K8 ["XSmall"]
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K18 ["Small"]
       31 SETTABLEKS                       R6 R5 K15 ["size"]
       33 SETTABLEKS                       R5 R4 K9 ["arrow"]
       35 SETTABLE                         R4 R2 R3
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K18 ["Small"]
       39 DUPTABLE                         R4 K10 [{"container", "text", "arrow"}]
       40 DUPTABLE                         R5 K20 [{["tag"] = "radius-medium padding-medium gap-xxsmall size-full-800"}]
       41 SETTABLEKS                       R5 R4 K0 ["container"]
       43 DUPTABLE                         R5 K14 [{["tag"] = "text-body-small"}]
       44 SETTABLEKS                       R5 R4 K1 ["text"]
       46 DUPTABLE                         R5 K16 [{"size"}]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K17 ["FoundationDropdownControlIconFix"]
       50 JUMPIFNOT                        R7 ; [+4]
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R6 R6 K18 ["Small"]
       54 JUMP                             ; [+3]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K18 ["Small"]
       58 SETTABLEKS                       R6 R5 K15 ["size"]
       60 SETTABLEKS                       R5 R4 K9 ["arrow"]
       62 SETTABLE                         R4 R2 R3
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K21 ["Medium"]
       66 DUPTABLE                         R4 K10 [{"container", "text", "arrow"}]
       67 DUPTABLE                         R5 K23 [{["tag"] = "radius-medium padding-medium size-full-1000"}]
       68 SETTABLEKS                       R5 R4 K0 ["container"]
       70 DUPTABLE                         R5 K25 [{["tag"] = "text-body-medium"}]
       71 SETTABLEKS                       R5 R4 K1 ["text"]
       73 DUPTABLE                         R5 K16 [{"size"}]
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K17 ["FoundationDropdownControlIconFix"]
       77 JUMPIFNOT                        R7 ; [+4]
       78 GETUPVAL                         R6 2
       79 GETTABLEKS                       R6 R6 K21 ["Medium"]
       81 JUMP                             ; [+3]
       82 GETUPVAL                         R6 0
       83 GETTABLEKS                       R6 R6 K21 ["Medium"]
       85 SETTABLEKS                       R6 R5 K15 ["size"]
       87 SETTABLEKS                       R5 R4 K9 ["arrow"]
       89 SETTABLE                         R4 R2 R3
       90 GETUPVAL                         R3 0
       91 GETTABLEKS                       R3 R3 K26 ["Large"]
       93 DUPTABLE                         R4 K10 [{"container", "text", "arrow"}]
       94 DUPTABLE                         R5 K28 [{["tag"] = "radius-medium padding-medium size-full-1200"}]
       95 SETTABLEKS                       R5 R4 K0 ["container"]
       97 DUPTABLE                         R5 K30 [{["tag"] = "text-body-large"}]
       98 SETTABLEKS                       R5 R4 K1 ["text"]
      100 DUPTABLE                         R5 K16 [{"size"}]
      101 GETUPVAL                         R7 1
      102 GETTABLEKS                       R7 R7 K17 ["FoundationDropdownControlIconFix"]
      104 JUMPIFNOT                        R7 ; [+4]
      105 GETUPVAL                         R6 2
      106 GETTABLEKS                       R6 R6 K26 ["Large"]
      108 JUMP                             ; [+3]
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R6 R6 K26 ["Large"]
      112 SETTABLEKS                       R6 R5 K15 ["size"]
      114 SETTABLEKS                       R5 R4 K9 ["arrow"]
      116 SETTABLE                         R4 R2 R3
      117 NEWTABLE                         R3 8 0
      119 GETUPVAL                         R4 3
      120 GETTABLEKS                       R4 R4 K31 ["Disabled"]
      122 DUPTABLE                         R5 K2 [{"container", "text"}]
      123 DUPTABLE                         R6 K33 [{["tag"] = "stroke-muted"}]
      124 SETTABLEKS                       R6 R5 K0 ["container"]
      126 DUPTABLE                         R6 K35 [{["tag"] = "content-muted"}]
      127 SETTABLEKS                       R6 R5 K1 ["text"]
      129 SETTABLE                         R5 R3 R4
      130 GETUPVAL                         R4 3
      131 GETTABLEKS                       R4 R4 K36 ["Initialize"]
      133 DUPTABLE                         R5 K2 [{"container", "text"}]
      134 DUPTABLE                         R6 K38 [{["tag"] = "stroke-default"}]
      135 SETTABLEKS                       R6 R5 K0 ["container"]
      137 DUPTABLE                         R6 K40 [{["tag"] = "content-default"}]
      138 SETTABLEKS                       R6 R5 K1 ["text"]
      140 SETTABLE                         R5 R3 R4
      141 GETUPVAL                         R4 3
      142 GETTABLEKS                       R4 R4 K41 ["Default"]
      144 DUPTABLE                         R5 K2 [{"container", "text"}]
      145 DUPTABLE                         R6 K38 [{["tag"] = "stroke-default"}]
      146 SETTABLEKS                       R6 R5 K0 ["container"]
      148 DUPTABLE                         R6 K40 [{["tag"] = "content-default"}]
      149 SETTABLEKS                       R6 R5 K1 ["text"]
      151 SETTABLE                         R5 R3 R4
      152 GETUPVAL                         R4 3
      153 GETTABLEKS                       R4 R4 K42 ["Hover"]
      155 DUPTABLE                         R5 K2 [{"container", "text"}]
      156 DUPTABLE                         R6 K44 [{["tag"] = "stroke-emphasis"}]
      157 SETTABLEKS                       R6 R5 K0 ["container"]
      159 DUPTABLE                         R6 K46 [{["tag"] = "content-emphasis"}]
      160 SETTABLEKS                       R6 R5 K1 ["text"]
      162 SETTABLE                         R5 R3 R4
      163 GETUPVAL                         R4 3
      164 GETTABLEKS                       R4 R4 K47 ["Pressed"]
      166 DUPTABLE                         R5 K2 [{"container", "text"}]
      167 DUPTABLE                         R6 K44 [{["tag"] = "stroke-emphasis"}]
      168 SETTABLEKS                       R6 R5 K0 ["container"]
      170 DUPTABLE                         R6 K46 [{["tag"] = "content-emphasis"}]
      171 SETTABLEKS                       R6 R5 K1 ["text"]
      173 SETTABLE                         R5 R3 R4
      174 DUPTABLE                         R4 K2 [{"container", "text"}]
      175 DUPTABLE                         R5 K49 [{["tag"] = "stroke-alert"}]
      176 SETTABLEKS                       R5 R4 K0 ["container"]
      178 DUPTABLE                         R5 K40 [{["tag"] = "content-default"}]
      179 SETTABLEKS                       R5 R4 K1 ["text"]
      181 SETTABLEKS                       R4 R3 K50 ["Error"]
      183 GETUPVAL                         R4 4
      184 GETTABLEKS                       R4 R4 K51 ["map"]
      186 MOVE                             R5 R3
      187 DUPCLOSURE                       R6 K52 [PROTO_0]
      188 CAPTURE                          UPVAL U4
      189 CALL                             R4 2 1
      190 DUPTABLE                         R5 K57 [{"common", "sizes", "states", "placeholderStates"}]
      191 SETTABLEKS                       R1 R5 K53 ["common"]
      193 SETTABLEKS                       R2 R5 K54 ["sizes"]
      195 SETTABLEKS                       R3 R5 K55 ["states"]
      197 SETTABLEKS                       R4 R5 K56 ["placeholderStates"]
      199 RETURN                           R5 1

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
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R2
       87 DUPCLOSURE                       R13 K23 [PROTO_2]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R8
       91 RETURN                           R13 1
