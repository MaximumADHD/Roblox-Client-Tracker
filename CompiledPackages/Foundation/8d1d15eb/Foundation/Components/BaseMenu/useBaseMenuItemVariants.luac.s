PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "icon", "text", "title", "check"}]
        1 DUPTABLE                         R2 K8 [{["tag"] = "row align-y-center flex-x-between auto-x"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K10 [{"tag", "style"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K11 ["FoundationBaseMenuItemImageRadius"]
        8 JUMPIFNOT                        R4 ; [+2]
        9 LOADK                            R3 K12 ["radius-small content-emphasis"]
       10 JUMP                             ; [+1]
       11 LOADK                            R3 K13 ["content-emphasis"]
       12 SETTABLEKS                       R3 R2 K6 ["tag"]
       14 GETTABLEKS                       R3 R0 K14 ["Color"]
       16 GETTABLEKS                       R3 R3 K15 ["Content"]
       18 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       20 SETTABLEKS                       R3 R2 K9 ["style"]
       22 SETTABLEKS                       R2 R1 K1 ["icon"]
       24 DUPTABLE                         R2 K18 [{["tag"] = "content-emphasis auto-xy fill text-align-x-left text-truncate-split"}]
       25 SETTABLEKS                       R2 R1 K2 ["text"]
       27 DUPTABLE                         R2 K20 [{["tag"] = "content-default auto-xy fill text-align-x-left text-truncate-split"}]
       28 SETTABLEKS                       R2 R1 K3 ["title"]
       30 DUPTABLE                         R2 K21 [{["tag"] = "content-emphasis", ["style"]}]
       31 GETTABLEKS                       R3 R0 K14 ["Color"]
       33 GETTABLEKS                       R3 R3 K15 ["Content"]
       35 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       37 SETTABLEKS                       R3 R2 K9 ["style"]
       39 SETTABLEKS                       R2 R1 K4 ["check"]
       41 NEWTABLE                         R2 4 0
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K22 ["XSmall"]
       46 DUPTABLE                         R4 K25 [{"container", "icon", "text", "title", "check", "chevron", "groupPadding"}]
       47 DUPTABLE                         R5 K27 [{["tag"] = "size-full-600 radius-small padding-x-medium gap-xsmall"}]
       48 SETTABLEKS                       R5 R4 K0 ["container"]
       50 DUPTABLE                         R5 K30 [{["tag"] = "size-400", ["size"]}]
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R6 R6 K22 ["XSmall"]
       54 SETTABLEKS                       R6 R5 K29 ["size"]
       56 SETTABLEKS                       R5 R4 K1 ["icon"]
       58 DUPTABLE                         R5 K32 [{["tag"] = "text-body-small"}]
       59 SETTABLEKS                       R5 R4 K2 ["text"]
       61 DUPTABLE                         R5 K34 [{["tag"] = "text-caption-small"}]
       62 SETTABLEKS                       R5 R4 K3 ["title"]
       64 DUPTABLE                         R5 K36 [{["tag"] = "size-300", ["size"]}]
       65 GETTABLEKS                       R6 R0 K37 ["Size"]
       67 GETTABLEKS                       R6 R6 K38 ["Size_600"]
       69 SETTABLEKS                       R6 R5 K29 ["size"]
       71 SETTABLEKS                       R5 R4 K4 ["check"]
       73 DUPTABLE                         R5 K39 [{"size"}]
       74 GETUPVAL                         R6 2
       75 GETTABLEKS                       R6 R6 K40 ["Small"]
       77 SETTABLEKS                       R6 R5 K29 ["size"]
       79 SETTABLEKS                       R5 R4 K23 ["chevron"]
       81 DUPTABLE                         R5 K39 [{"size"}]
       82 GETTABLEKS                       R6 R0 K41 ["Padding"]
       84 GETTABLEKS                       R6 R6 K22 ["XSmall"]
       86 SETTABLEKS                       R6 R5 K29 ["size"]
       88 SETTABLEKS                       R5 R4 K24 ["groupPadding"]
       90 SETTABLE                         R4 R2 R3
       91 GETUPVAL                         R3 1
       92 GETTABLEKS                       R3 R3 K40 ["Small"]
       94 DUPTABLE                         R4 K25 [{"container", "icon", "text", "title", "check", "chevron", "groupPadding"}]
       95 DUPTABLE                         R5 K43 [{["tag"] = "size-full-800 radius-medium padding-x-medium gap-xsmall"}]
       96 SETTABLEKS                       R5 R4 K0 ["container"]
       98 DUPTABLE                         R5 K45 [{["tag"] = "size-500", ["size"]}]
       99 GETUPVAL                         R6 2
      100 GETTABLEKS                       R6 R6 K40 ["Small"]
      102 SETTABLEKS                       R6 R5 K29 ["size"]
      104 SETTABLEKS                       R5 R4 K1 ["icon"]
      106 DUPTABLE                         R5 K32 [{["tag"] = "text-body-small"}]
      107 SETTABLEKS                       R5 R4 K2 ["text"]
      109 DUPTABLE                         R5 K34 [{["tag"] = "text-caption-small"}]
      110 SETTABLEKS                       R5 R4 K3 ["title"]
      112 DUPTABLE                         R5 K30 [{["tag"] = "size-400", ["size"]}]
      113 GETTABLEKS                       R6 R0 K37 ["Size"]
      115 GETTABLEKS                       R6 R6 K46 ["Size_700"]
      117 SETTABLEKS                       R6 R5 K29 ["size"]
      119 SETTABLEKS                       R5 R4 K4 ["check"]
      121 DUPTABLE                         R5 K39 [{"size"}]
      122 GETUPVAL                         R6 2
      123 GETTABLEKS                       R6 R6 K40 ["Small"]
      125 SETTABLEKS                       R6 R5 K29 ["size"]
      127 SETTABLEKS                       R5 R4 K23 ["chevron"]
      129 DUPTABLE                         R5 K39 [{"size"}]
      130 GETTABLEKS                       R6 R0 K41 ["Padding"]
      132 GETTABLEKS                       R6 R6 K40 ["Small"]
      134 SETTABLEKS                       R6 R5 K29 ["size"]
      136 SETTABLEKS                       R5 R4 K24 ["groupPadding"]
      138 SETTABLE                         R4 R2 R3
      139 GETUPVAL                         R3 1
      140 GETTABLEKS                       R3 R3 K47 ["Medium"]
      142 DUPTABLE                         R4 K25 [{"container", "icon", "text", "title", "check", "chevron", "groupPadding"}]
      143 DUPTABLE                         R5 K49 [{["tag"] = "size-full-1000 radius-medium padding-x-medium gap-small"}]
      144 SETTABLEKS                       R5 R4 K0 ["container"]
      146 DUPTABLE                         R5 K51 [{["tag"] = "size-600", ["size"]}]
      147 GETUPVAL                         R6 2
      148 GETTABLEKS                       R6 R6 K47 ["Medium"]
      150 SETTABLEKS                       R6 R5 K29 ["size"]
      152 SETTABLEKS                       R5 R4 K1 ["icon"]
      154 DUPTABLE                         R5 K53 [{["tag"] = "text-body-medium"}]
      155 SETTABLEKS                       R5 R4 K2 ["text"]
      157 DUPTABLE                         R5 K55 [{["tag"] = "text-caption-medium"}]
      158 SETTABLEKS                       R5 R4 K3 ["title"]
      160 DUPTABLE                         R5 K45 [{["tag"] = "size-500", ["size"]}]
      161 GETTABLEKS                       R6 R0 K37 ["Size"]
      163 GETTABLEKS                       R6 R6 K56 ["Size_800"]
      165 SETTABLEKS                       R6 R5 K29 ["size"]
      167 SETTABLEKS                       R5 R4 K4 ["check"]
      169 DUPTABLE                         R5 K39 [{"size"}]
      170 GETUPVAL                         R6 2
      171 GETTABLEKS                       R6 R6 K47 ["Medium"]
      173 SETTABLEKS                       R6 R5 K29 ["size"]
      175 SETTABLEKS                       R5 R4 K23 ["chevron"]
      177 DUPTABLE                         R5 K39 [{"size"}]
      178 GETTABLEKS                       R6 R0 K41 ["Padding"]
      180 GETTABLEKS                       R6 R6 K40 ["Small"]
      182 SETTABLEKS                       R6 R5 K29 ["size"]
      184 SETTABLEKS                       R5 R4 K24 ["groupPadding"]
      186 SETTABLE                         R4 R2 R3
      187 GETUPVAL                         R3 1
      188 GETTABLEKS                       R3 R3 K57 ["Large"]
      190 DUPTABLE                         R4 K25 [{"container", "icon", "text", "title", "check", "chevron", "groupPadding"}]
      191 DUPTABLE                         R5 K59 [{["tag"] = "size-full-1200 radius-medium padding-x-large gap-small"}]
      192 SETTABLEKS                       R5 R4 K0 ["container"]
      194 DUPTABLE                         R5 K61 [{["tag"] = "size-700", ["size"]}]
      195 GETUPVAL                         R6 2
      196 GETTABLEKS                       R6 R6 K57 ["Large"]
      198 SETTABLEKS                       R6 R5 K29 ["size"]
      200 SETTABLEKS                       R5 R4 K1 ["icon"]
      202 DUPTABLE                         R5 K63 [{["tag"] = "text-body-large"}]
      203 SETTABLEKS                       R5 R4 K2 ["text"]
      205 DUPTABLE                         R5 K65 [{["tag"] = "text-caption-large"}]
      206 SETTABLEKS                       R5 R4 K3 ["title"]
      208 DUPTABLE                         R5 K51 [{["tag"] = "size-600", ["size"]}]
      209 GETTABLEKS                       R6 R0 K37 ["Size"]
      211 GETTABLEKS                       R6 R6 K66 ["Size_900"]
      213 SETTABLEKS                       R6 R5 K29 ["size"]
      215 SETTABLEKS                       R5 R4 K4 ["check"]
      217 DUPTABLE                         R5 K39 [{"size"}]
      218 GETUPVAL                         R6 2
      219 GETTABLEKS                       R6 R6 K57 ["Large"]
      221 SETTABLEKS                       R6 R5 K29 ["size"]
      223 SETTABLEKS                       R5 R4 K23 ["chevron"]
      225 DUPTABLE                         R5 K39 [{"size"}]
      226 GETTABLEKS                       R6 R0 K41 ["Padding"]
      228 GETTABLEKS                       R6 R6 K40 ["Small"]
      230 SETTABLEKS                       R6 R5 K29 ["size"]
      232 SETTABLEKS                       R5 R4 K24 ["groupPadding"]
      234 SETTABLE                         R4 R2 R3
      235 NEWTABLE                         R3 2 0
      237 LOADB                            R4 0
      238 DUPTABLE                         R5 K67 [{"container"}]
      239 DUPTABLE                         R6 K69 [{["tag"] = ""}]
      240 SETTABLEKS                       R6 R5 K0 ["container"]
      242 SETTABLE                         R5 R3 R4
      243 LOADB                            R4 1
      244 DUPTABLE                         R5 K67 [{"container"}]
      245 DUPTABLE                         R6 K71 [{["tag"] = "bg-surface-200"}]
      246 SETTABLEKS                       R6 R5 K0 ["container"]
      248 SETTABLE                         R5 R3 R4
      249 DUPTABLE                         R4 K75 [{"common", "sizes", "isChecked"}]
      250 SETTABLEKS                       R1 R4 K72 ["common"]
      252 SETTABLEKS                       R2 R4 K73 ["sizes"]
      254 SETTABLEKS                       R3 R4 K74 ["isChecked"]
      256 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["BaseMenuItem"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETTABLEKS                       R8 R3 K4 ["isChecked"]
       15 GETTABLE                         R7 R8 R2
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Providers"]
       25 GETTABLEKS                       R4 R4 K11 ["Style"]
       27 GETTABLEKS                       R4 R4 K12 ["VariantsContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Utility"]
       34 GETTABLEKS                       R5 R5 K13 ["composeStyleVariant"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Providers"]
       41 GETTABLEKS                       R6 R6 K11 ["Style"]
       43 GETTABLEKS                       R6 R6 K14 ["Tokens"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Components"]
       50 GETTABLEKS                       R7 R7 K16 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Enums"]
       57 GETTABLEKS                       R8 R8 K17 ["IconSize"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 DUPCLOSURE                       R9 K19 [PROTO_1]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R4
       68 RETURN                           R9 1
