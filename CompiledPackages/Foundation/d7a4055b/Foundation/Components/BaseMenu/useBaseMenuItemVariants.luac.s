PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "icon", "text", "title", "check"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K8 ["FoundationMenuWidthGrowth"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K9 ["row align-y-center flex-x-between auto-x"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K10 ["row align-y-center flex-x-between"]
        9 SETTABLEKS                       R3 R2 K6 ["tag"]
       11 SETTABLEKS                       R2 R1 K0 ["container"]
       13 DUPTABLE                         R2 K13 [{["tag"] = "content-emphasis", ["style"]}]
       14 GETTABLEKS                       R3 R0 K14 ["Color"]
       16 GETTABLEKS                       R3 R3 K15 ["Content"]
       18 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       20 SETTABLEKS                       R3 R2 K12 ["style"]
       22 SETTABLEKS                       R2 R1 K1 ["icon"]
       24 DUPTABLE                         R2 K7 [{"tag"}]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K8 ["FoundationMenuWidthGrowth"]
       28 JUMPIFNOT                        R4 ; [+2]
       29 LOADK                            R3 K17 ["content-emphasis auto-xy fill text-align-x-left text-truncate-split"]
       30 JUMP                             ; [+1]
       31 LOADK                            R3 K18 ["content-emphasis auto-y grow text-align-x-left text-truncate-end"]
       32 SETTABLEKS                       R3 R2 K6 ["tag"]
       34 SETTABLEKS                       R2 R1 K2 ["text"]
       36 DUPTABLE                         R2 K20 [{["tag"] = "content-default auto-xy fill text-align-x-left text-truncate-split"}]
       37 SETTABLEKS                       R2 R1 K3 ["title"]
       39 DUPTABLE                         R2 K13 [{["tag"] = "content-emphasis", ["style"]}]
       40 GETTABLEKS                       R3 R0 K14 ["Color"]
       42 GETTABLEKS                       R3 R3 K15 ["Content"]
       44 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       46 SETTABLEKS                       R3 R2 K12 ["style"]
       48 SETTABLEKS                       R2 R1 K4 ["check"]
       50 NEWTABLE                         R2 4 0
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K21 ["XSmall"]
       55 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
       56 DUPTABLE                         R5 K7 [{"tag"}]
       57 LOADK                            R7 K22 ["size-full-600 radius-small %* gap-xsmall"]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K23 ["FoundationMenuItemStyles"]
       61 JUMPIFNOT                        R10 ; [+2]
       62 LOADK                            R9 K24 ["padding-x-medium"]
       63 JUMP                             ; [+1]
       64 LOADK                            R9 K25 ["padding-x-xsmall"]
       65 NAMECALL                         R7 R7 K26 ["format"]
       67 CALL                             R7 2 1
       68 MOVE                             R6 R7
       69 SETTABLEKS                       R6 R5 K6 ["tag"]
       71 SETTABLEKS                       R5 R4 K0 ["container"]
       73 DUPTABLE                         R5 K29 [{["tag"] = "size-400", ["size"]}]
       74 GETUPVAL                         R6 2
       75 GETTABLEKS                       R6 R6 K21 ["XSmall"]
       77 SETTABLEKS                       R6 R5 K28 ["size"]
       79 SETTABLEKS                       R5 R4 K1 ["icon"]
       81 DUPTABLE                         R5 K7 [{"tag"}]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K23 ["FoundationMenuItemStyles"]
       85 JUMPIFNOT                        R7 ; [+2]
       86 LOADK                            R6 K30 ["text-body-small"]
       87 JUMP                             ; [+1]
       88 LOADK                            R6 K31 ["text-title-small"]
       89 SETTABLEKS                       R6 R5 K6 ["tag"]
       91 SETTABLEKS                       R5 R4 K2 ["text"]
       93 DUPTABLE                         R5 K33 [{["tag"] = "text-caption-small"}]
       94 SETTABLEKS                       R5 R4 K3 ["title"]
       96 DUPTABLE                         R5 K35 [{["tag"] = "size-300", ["size"]}]
       97 GETTABLEKS                       R6 R0 K36 ["Size"]
       99 GETTABLEKS                       R6 R6 K37 ["Size_600"]
      101 SETTABLEKS                       R6 R5 K28 ["size"]
      103 SETTABLEKS                       R5 R4 K4 ["check"]
      105 SETTABLE                         R4 R2 R3
      106 GETUPVAL                         R3 1
      107 GETTABLEKS                       R3 R3 K38 ["Small"]
      109 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      110 DUPTABLE                         R5 K7 [{"tag"}]
      111 LOADK                            R7 K39 ["size-full-800 radius-medium %* gap-xsmall"]
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K23 ["FoundationMenuItemStyles"]
      115 JUMPIFNOT                        R10 ; [+2]
      116 LOADK                            R9 K24 ["padding-x-medium"]
      117 JUMP                             ; [+1]
      118 LOADK                            R9 K40 ["padding-x-small"]
      119 NAMECALL                         R7 R7 K26 ["format"]
      121 CALL                             R7 2 1
      122 MOVE                             R6 R7
      123 SETTABLEKS                       R6 R5 K6 ["tag"]
      125 SETTABLEKS                       R5 R4 K0 ["container"]
      127 DUPTABLE                         R5 K42 [{["tag"] = "size-500", ["size"]}]
      128 GETUPVAL                         R6 2
      129 GETTABLEKS                       R6 R6 K38 ["Small"]
      131 SETTABLEKS                       R6 R5 K28 ["size"]
      133 SETTABLEKS                       R5 R4 K1 ["icon"]
      135 DUPTABLE                         R5 K7 [{"tag"}]
      136 GETUPVAL                         R7 0
      137 GETTABLEKS                       R7 R7 K23 ["FoundationMenuItemStyles"]
      139 JUMPIFNOT                        R7 ; [+2]
      140 LOADK                            R6 K30 ["text-body-small"]
      141 JUMP                             ; [+1]
      142 LOADK                            R6 K31 ["text-title-small"]
      143 SETTABLEKS                       R6 R5 K6 ["tag"]
      145 SETTABLEKS                       R5 R4 K2 ["text"]
      147 DUPTABLE                         R5 K33 [{["tag"] = "text-caption-small"}]
      148 SETTABLEKS                       R5 R4 K3 ["title"]
      150 DUPTABLE                         R5 K29 [{["tag"] = "size-400", ["size"]}]
      151 GETTABLEKS                       R6 R0 K36 ["Size"]
      153 GETTABLEKS                       R6 R6 K43 ["Size_700"]
      155 SETTABLEKS                       R6 R5 K28 ["size"]
      157 SETTABLEKS                       R5 R4 K4 ["check"]
      159 SETTABLE                         R4 R2 R3
      160 GETUPVAL                         R3 1
      161 GETTABLEKS                       R3 R3 K44 ["Medium"]
      163 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      164 DUPTABLE                         R5 K7 [{"tag"}]
      165 LOADK                            R7 K45 ["size-full-1000 radius-medium %* gap-small"]
      166 GETUPVAL                         R10 0
      167 GETTABLEKS                       R10 R10 K23 ["FoundationMenuItemStyles"]
      169 JUMPIFNOT                        R10 ; [+2]
      170 LOADK                            R9 K24 ["padding-x-medium"]
      171 JUMP                             ; [+1]
      172 LOADK                            R9 K40 ["padding-x-small"]
      173 NAMECALL                         R7 R7 K26 ["format"]
      175 CALL                             R7 2 1
      176 MOVE                             R6 R7
      177 SETTABLEKS                       R6 R5 K6 ["tag"]
      179 SETTABLEKS                       R5 R4 K0 ["container"]
      181 DUPTABLE                         R5 K47 [{["tag"] = "size-600", ["size"]}]
      182 GETUPVAL                         R6 2
      183 GETTABLEKS                       R6 R6 K44 ["Medium"]
      185 SETTABLEKS                       R6 R5 K28 ["size"]
      187 SETTABLEKS                       R5 R4 K1 ["icon"]
      189 DUPTABLE                         R5 K7 [{"tag"}]
      190 GETUPVAL                         R7 0
      191 GETTABLEKS                       R7 R7 K23 ["FoundationMenuItemStyles"]
      193 JUMPIFNOT                        R7 ; [+2]
      194 LOADK                            R6 K48 ["text-body-medium"]
      195 JUMP                             ; [+1]
      196 LOADK                            R6 K49 ["text-title-medium"]
      197 SETTABLEKS                       R6 R5 K6 ["tag"]
      199 SETTABLEKS                       R5 R4 K2 ["text"]
      201 DUPTABLE                         R5 K7 [{"tag"}]
      202 GETUPVAL                         R7 0
      203 GETTABLEKS                       R7 R7 K23 ["FoundationMenuItemStyles"]
      205 JUMPIFNOT                        R7 ; [+2]
      206 LOADK                            R6 K50 ["text-caption-medium"]
      207 JUMP                             ; [+1]
      208 LOADK                            R6 K49 ["text-title-medium"]
      209 SETTABLEKS                       R6 R5 K6 ["tag"]
      211 SETTABLEKS                       R5 R4 K3 ["title"]
      213 DUPTABLE                         R5 K42 [{["tag"] = "size-500", ["size"]}]
      214 GETTABLEKS                       R6 R0 K36 ["Size"]
      216 GETTABLEKS                       R6 R6 K51 ["Size_800"]
      218 SETTABLEKS                       R6 R5 K28 ["size"]
      220 SETTABLEKS                       R5 R4 K4 ["check"]
      222 SETTABLE                         R4 R2 R3
      223 GETUPVAL                         R3 1
      224 GETTABLEKS                       R3 R3 K52 ["Large"]
      226 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      227 DUPTABLE                         R5 K7 [{"tag"}]
      228 LOADK                            R7 K53 ["size-full-1200 radius-medium %* gap-small"]
      229 GETUPVAL                         R10 0
      230 GETTABLEKS                       R10 R10 K23 ["FoundationMenuItemStyles"]
      232 JUMPIFNOT                        R10 ; [+2]
      233 LOADK                            R9 K54 ["padding-x-large"]
      234 JUMP                             ; [+1]
      235 LOADK                            R9 K40 ["padding-x-small"]
      236 NAMECALL                         R7 R7 K26 ["format"]
      238 CALL                             R7 2 1
      239 MOVE                             R6 R7
      240 SETTABLEKS                       R6 R5 K6 ["tag"]
      242 SETTABLEKS                       R5 R4 K0 ["container"]
      244 DUPTABLE                         R5 K56 [{["tag"] = "size-700", ["size"]}]
      245 GETUPVAL                         R6 2
      246 GETTABLEKS                       R6 R6 K52 ["Large"]
      248 SETTABLEKS                       R6 R5 K28 ["size"]
      250 SETTABLEKS                       R5 R4 K1 ["icon"]
      252 DUPTABLE                         R5 K7 [{"tag"}]
      253 GETUPVAL                         R7 0
      254 GETTABLEKS                       R7 R7 K23 ["FoundationMenuItemStyles"]
      256 JUMPIFNOT                        R7 ; [+2]
      257 LOADK                            R6 K57 ["text-body-large"]
      258 JUMP                             ; [+1]
      259 LOADK                            R6 K58 ["text-title-large"]
      260 SETTABLEKS                       R6 R5 K6 ["tag"]
      262 SETTABLEKS                       R5 R4 K2 ["text"]
      264 DUPTABLE                         R5 K60 [{["tag"] = "text-caption-large"}]
      265 SETTABLEKS                       R5 R4 K3 ["title"]
      267 DUPTABLE                         R5 K47 [{["tag"] = "size-600", ["size"]}]
      268 GETTABLEKS                       R6 R0 K36 ["Size"]
      270 GETTABLEKS                       R6 R6 K61 ["Size_900"]
      272 SETTABLEKS                       R6 R5 K28 ["size"]
      274 SETTABLEKS                       R5 R4 K4 ["check"]
      276 SETTABLE                         R4 R2 R3
      277 NEWTABLE                         R3 2 0
      279 LOADB                            R4 0
      280 DUPTABLE                         R5 K62 [{"container"}]
      281 DUPTABLE                         R6 K64 [{["tag"] = ""}]
      282 SETTABLEKS                       R6 R5 K0 ["container"]
      284 SETTABLE                         R5 R3 R4
      285 LOADB                            R4 1
      286 DUPTABLE                         R5 K62 [{"container"}]
      287 DUPTABLE                         R6 K66 [{["tag"] = "bg-surface-200"}]
      288 SETTABLEKS                       R6 R5 K0 ["container"]
      290 SETTABLE                         R5 R3 R4
      291 DUPTABLE                         R4 K70 [{"common", "sizes", "isChecked"}]
      292 SETTABLEKS                       R1 R4 K67 ["common"]
      294 SETTABLEKS                       R2 R4 K68 ["sizes"]
      296 SETTABLEKS                       R3 R4 K69 ["isChecked"]
      298 RETURN                           R4 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 GETTABLEKS                       R3 R3 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["VariantsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Utility"]
       27 GETTABLEKS                       R4 R4 K12 ["composeStyleVariant"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Components"]
       34 GETTABLEKS                       R5 R5 K14 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Providers"]
       41 GETTABLEKS                       R6 R6 K9 ["Style"]
       43 GETTABLEKS                       R6 R6 K15 ["Tokens"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Enums"]
       50 GETTABLEKS                       R7 R7 K16 ["IconSize"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Utility"]
       57 GETTABLEKS                       R8 R8 K17 ["Flags"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R6
       64 DUPCLOSURE                       R9 K19 [PROTO_1]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R3
       68 RETURN                           R9 1
