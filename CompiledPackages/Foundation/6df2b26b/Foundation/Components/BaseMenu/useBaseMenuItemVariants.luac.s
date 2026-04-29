PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "icon", "text", "title", "check"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K8 ["FoundationMenuWidthGrowth"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K9 ["row align-y-center flex-x-between auto-x"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K10 ["row align-y-center flex-x-between"]
        9 SETTABLEKS                       R3 R2 K6 ["tag"]
       11 SETTABLEKS                       R2 R1 K0 ["container"]
       13 DUPTABLE                         R2 K12 [{"tag", "style"}]
       14 LOADK                            R3 K13 ["content-emphasis"]
       15 SETTABLEKS                       R3 R2 K6 ["tag"]
       17 GETTABLEKS                       R5 R0 K14 ["Color"]
       19 GETTABLEKS                       R4 R5 K15 ["Content"]
       21 GETTABLEKS                       R3 R4 K16 ["Emphasis"]
       23 SETTABLEKS                       R3 R2 K11 ["style"]
       25 SETTABLEKS                       R2 R1 K1 ["icon"]
       27 DUPTABLE                         R2 K7 [{"tag"}]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K8 ["FoundationMenuWidthGrowth"]
       31 JUMPIFNOT                        R4 ; [+2]
       32 LOADK                            R3 K17 ["content-emphasis auto-xy fill text-align-x-left text-truncate-split"]
       33 JUMP                             ; [+1]
       34 LOADK                            R3 K18 ["content-emphasis auto-y grow text-align-x-left text-truncate-end"]
       35 SETTABLEKS                       R3 R2 K6 ["tag"]
       37 SETTABLEKS                       R2 R1 K2 ["text"]
       39 DUPTABLE                         R2 K7 [{"tag"}]
       40 LOADK                            R3 K19 ["content-default auto-xy fill text-align-x-left text-truncate-split"]
       41 SETTABLEKS                       R3 R2 K6 ["tag"]
       43 SETTABLEKS                       R2 R1 K3 ["title"]
       45 DUPTABLE                         R2 K12 [{"tag", "style"}]
       46 LOADK                            R3 K13 ["content-emphasis"]
       47 SETTABLEKS                       R3 R2 K6 ["tag"]
       49 GETTABLEKS                       R5 R0 K14 ["Color"]
       51 GETTABLEKS                       R4 R5 K15 ["Content"]
       53 GETTABLEKS                       R3 R4 K16 ["Emphasis"]
       55 SETTABLEKS                       R3 R2 K11 ["style"]
       57 SETTABLEKS                       R2 R1 K4 ["check"]
       59 NEWTABLE                         R2 4 0
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R3 R4 K20 ["XSmall"]
       64 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
       65 DUPTABLE                         R5 K7 [{"tag"}]
       66 LOADK                            R7 K21 ["size-full-600 radius-small %* gap-xsmall"]
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R10 R11 K22 ["FoundationMenuItemStyles"]
       70 JUMPIFNOT                        R10 ; [+2]
       71 LOADK                            R9 K23 ["padding-x-medium"]
       72 JUMP                             ; [+1]
       73 LOADK                            R9 K24 ["padding-x-xsmall"]
       74 NAMECALL                         R7 R7 K25 ["format"]
       76 CALL                             R7 2 1
       77 MOVE                             R6 R7
       78 SETTABLEKS                       R6 R5 K6 ["tag"]
       80 SETTABLEKS                       R5 R4 K0 ["container"]
       82 DUPTABLE                         R5 K27 [{"tag", "size"}]
       83 LOADK                            R6 K28 ["size-400"]
       84 SETTABLEKS                       R6 R5 K6 ["tag"]
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R6 R7 K20 ["XSmall"]
       89 SETTABLEKS                       R6 R5 K26 ["size"]
       91 SETTABLEKS                       R5 R4 K1 ["icon"]
       93 DUPTABLE                         R5 K7 [{"tag"}]
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R7 R8 K22 ["FoundationMenuItemStyles"]
       97 JUMPIFNOT                        R7 ; [+2]
       98 LOADK                            R6 K29 ["text-body-small"]
       99 JUMP                             ; [+1]
      100 LOADK                            R6 K30 ["text-title-small"]
      101 SETTABLEKS                       R6 R5 K6 ["tag"]
      103 SETTABLEKS                       R5 R4 K2 ["text"]
      105 DUPTABLE                         R5 K7 [{"tag"}]
      106 LOADK                            R6 K31 ["text-caption-small"]
      107 SETTABLEKS                       R6 R5 K6 ["tag"]
      109 SETTABLEKS                       R5 R4 K3 ["title"]
      111 DUPTABLE                         R5 K27 [{"tag", "size"}]
      112 LOADK                            R6 K32 ["size-300"]
      113 SETTABLEKS                       R6 R5 K6 ["tag"]
      115 GETTABLEKS                       R7 R0 K33 ["Size"]
      117 GETTABLEKS                       R6 R7 K34 ["Size_600"]
      119 SETTABLEKS                       R6 R5 K26 ["size"]
      121 SETTABLEKS                       R5 R4 K4 ["check"]
      123 SETTABLE                         R4 R2 R3
      124 GETUPVAL                         R4 1
      125 GETTABLEKS                       R3 R4 K35 ["Small"]
      127 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      128 DUPTABLE                         R5 K7 [{"tag"}]
      129 LOADK                            R7 K36 ["size-full-800 radius-medium %* gap-xsmall"]
      130 GETUPVAL                         R11 0
      131 GETTABLEKS                       R10 R11 K22 ["FoundationMenuItemStyles"]
      133 JUMPIFNOT                        R10 ; [+2]
      134 LOADK                            R9 K23 ["padding-x-medium"]
      135 JUMP                             ; [+1]
      136 LOADK                            R9 K37 ["padding-x-small"]
      137 NAMECALL                         R7 R7 K25 ["format"]
      139 CALL                             R7 2 1
      140 MOVE                             R6 R7
      141 SETTABLEKS                       R6 R5 K6 ["tag"]
      143 SETTABLEKS                       R5 R4 K0 ["container"]
      145 DUPTABLE                         R5 K27 [{"tag", "size"}]
      146 LOADK                            R6 K38 ["size-500"]
      147 SETTABLEKS                       R6 R5 K6 ["tag"]
      149 GETUPVAL                         R7 2
      150 GETTABLEKS                       R6 R7 K35 ["Small"]
      152 SETTABLEKS                       R6 R5 K26 ["size"]
      154 SETTABLEKS                       R5 R4 K1 ["icon"]
      156 DUPTABLE                         R5 K7 [{"tag"}]
      157 GETUPVAL                         R8 0
      158 GETTABLEKS                       R7 R8 K22 ["FoundationMenuItemStyles"]
      160 JUMPIFNOT                        R7 ; [+2]
      161 LOADK                            R6 K29 ["text-body-small"]
      162 JUMP                             ; [+1]
      163 LOADK                            R6 K30 ["text-title-small"]
      164 SETTABLEKS                       R6 R5 K6 ["tag"]
      166 SETTABLEKS                       R5 R4 K2 ["text"]
      168 DUPTABLE                         R5 K7 [{"tag"}]
      169 LOADK                            R6 K31 ["text-caption-small"]
      170 SETTABLEKS                       R6 R5 K6 ["tag"]
      172 SETTABLEKS                       R5 R4 K3 ["title"]
      174 DUPTABLE                         R5 K27 [{"tag", "size"}]
      175 LOADK                            R6 K28 ["size-400"]
      176 SETTABLEKS                       R6 R5 K6 ["tag"]
      178 GETTABLEKS                       R7 R0 K33 ["Size"]
      180 GETTABLEKS                       R6 R7 K39 ["Size_700"]
      182 SETTABLEKS                       R6 R5 K26 ["size"]
      184 SETTABLEKS                       R5 R4 K4 ["check"]
      186 SETTABLE                         R4 R2 R3
      187 GETUPVAL                         R4 1
      188 GETTABLEKS                       R3 R4 K40 ["Medium"]
      190 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      191 DUPTABLE                         R5 K7 [{"tag"}]
      192 LOADK                            R7 K41 ["size-full-1000 radius-medium %* gap-small"]
      193 GETUPVAL                         R11 0
      194 GETTABLEKS                       R10 R11 K22 ["FoundationMenuItemStyles"]
      196 JUMPIFNOT                        R10 ; [+2]
      197 LOADK                            R9 K23 ["padding-x-medium"]
      198 JUMP                             ; [+1]
      199 LOADK                            R9 K37 ["padding-x-small"]
      200 NAMECALL                         R7 R7 K25 ["format"]
      202 CALL                             R7 2 1
      203 MOVE                             R6 R7
      204 SETTABLEKS                       R6 R5 K6 ["tag"]
      206 SETTABLEKS                       R5 R4 K0 ["container"]
      208 DUPTABLE                         R5 K27 [{"tag", "size"}]
      209 LOADK                            R6 K42 ["size-600"]
      210 SETTABLEKS                       R6 R5 K6 ["tag"]
      212 GETUPVAL                         R7 2
      213 GETTABLEKS                       R6 R7 K40 ["Medium"]
      215 SETTABLEKS                       R6 R5 K26 ["size"]
      217 SETTABLEKS                       R5 R4 K1 ["icon"]
      219 DUPTABLE                         R5 K7 [{"tag"}]
      220 GETUPVAL                         R8 0
      221 GETTABLEKS                       R7 R8 K22 ["FoundationMenuItemStyles"]
      223 JUMPIFNOT                        R7 ; [+2]
      224 LOADK                            R6 K43 ["text-body-medium"]
      225 JUMP                             ; [+1]
      226 LOADK                            R6 K44 ["text-title-medium"]
      227 SETTABLEKS                       R6 R5 K6 ["tag"]
      229 SETTABLEKS                       R5 R4 K2 ["text"]
      231 DUPTABLE                         R5 K7 [{"tag"}]
      232 GETUPVAL                         R8 0
      233 GETTABLEKS                       R7 R8 K22 ["FoundationMenuItemStyles"]
      235 JUMPIFNOT                        R7 ; [+2]
      236 LOADK                            R6 K45 ["text-caption-medium"]
      237 JUMP                             ; [+1]
      238 LOADK                            R6 K44 ["text-title-medium"]
      239 SETTABLEKS                       R6 R5 K6 ["tag"]
      241 SETTABLEKS                       R5 R4 K3 ["title"]
      243 DUPTABLE                         R5 K27 [{"tag", "size"}]
      244 LOADK                            R6 K38 ["size-500"]
      245 SETTABLEKS                       R6 R5 K6 ["tag"]
      247 GETTABLEKS                       R7 R0 K33 ["Size"]
      249 GETTABLEKS                       R6 R7 K46 ["Size_800"]
      251 SETTABLEKS                       R6 R5 K26 ["size"]
      253 SETTABLEKS                       R5 R4 K4 ["check"]
      255 SETTABLE                         R4 R2 R3
      256 GETUPVAL                         R4 1
      257 GETTABLEKS                       R3 R4 K47 ["Large"]
      259 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      260 DUPTABLE                         R5 K7 [{"tag"}]
      261 LOADK                            R7 K48 ["size-full-1200 radius-medium %* gap-small"]
      262 GETUPVAL                         R11 0
      263 GETTABLEKS                       R10 R11 K22 ["FoundationMenuItemStyles"]
      265 JUMPIFNOT                        R10 ; [+2]
      266 LOADK                            R9 K49 ["padding-x-large"]
      267 JUMP                             ; [+1]
      268 LOADK                            R9 K37 ["padding-x-small"]
      269 NAMECALL                         R7 R7 K25 ["format"]
      271 CALL                             R7 2 1
      272 MOVE                             R6 R7
      273 SETTABLEKS                       R6 R5 K6 ["tag"]
      275 SETTABLEKS                       R5 R4 K0 ["container"]
      277 DUPTABLE                         R5 K27 [{"tag", "size"}]
      278 LOADK                            R6 K50 ["size-700"]
      279 SETTABLEKS                       R6 R5 K6 ["tag"]
      281 GETUPVAL                         R7 2
      282 GETTABLEKS                       R6 R7 K47 ["Large"]
      284 SETTABLEKS                       R6 R5 K26 ["size"]
      286 SETTABLEKS                       R5 R4 K1 ["icon"]
      288 DUPTABLE                         R5 K7 [{"tag"}]
      289 GETUPVAL                         R8 0
      290 GETTABLEKS                       R7 R8 K22 ["FoundationMenuItemStyles"]
      292 JUMPIFNOT                        R7 ; [+2]
      293 LOADK                            R6 K51 ["text-body-large"]
      294 JUMP                             ; [+1]
      295 LOADK                            R6 K52 ["text-title-large"]
      296 SETTABLEKS                       R6 R5 K6 ["tag"]
      298 SETTABLEKS                       R5 R4 K2 ["text"]
      300 DUPTABLE                         R5 K7 [{"tag"}]
      301 LOADK                            R6 K53 ["text-caption-large"]
      302 SETTABLEKS                       R6 R5 K6 ["tag"]
      304 SETTABLEKS                       R5 R4 K3 ["title"]
      306 DUPTABLE                         R5 K27 [{"tag", "size"}]
      307 LOADK                            R6 K42 ["size-600"]
      308 SETTABLEKS                       R6 R5 K6 ["tag"]
      310 GETTABLEKS                       R7 R0 K33 ["Size"]
      312 GETTABLEKS                       R6 R7 K54 ["Size_900"]
      314 SETTABLEKS                       R6 R5 K26 ["size"]
      316 SETTABLEKS                       R5 R4 K4 ["check"]
      318 SETTABLE                         R4 R2 R3
      319 NEWTABLE                         R3 2 0
      321 LOADB                            R4 0
      322 DUPTABLE                         R5 K55 [{"container"}]
      323 DUPTABLE                         R6 K7 [{"tag"}]
      324 LOADK                            R7 K56 [""]
      325 SETTABLEKS                       R7 R6 K6 ["tag"]
      327 SETTABLEKS                       R6 R5 K0 ["container"]
      329 SETTABLE                         R5 R3 R4
      330 LOADB                            R4 1
      331 DUPTABLE                         R5 K55 [{"container"}]
      332 DUPTABLE                         R6 K7 [{"tag"}]
      333 LOADK                            R7 K57 ["bg-surface-200"]
      334 SETTABLEKS                       R7 R6 K6 ["tag"]
      336 SETTABLEKS                       R6 R5 K0 ["container"]
      338 SETTABLE                         R5 R3 R4
      339 DUPTABLE                         R4 K61 [{"common", "sizes", "isChecked"}]
      340 SETTABLEKS                       R1 R4 K58 ["common"]
      342 SETTABLEKS                       R2 R4 K59 ["sizes"]
      344 SETTABLEKS                       R3 R4 K60 ["isChecked"]
      346 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R5 K9 ["Style"]
       20 GETTABLEKS                       R3 R4 K10 ["VariantsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Utility"]
       27 GETTABLEKS                       R4 R5 K12 ["composeStyleVariant"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Components"]
       34 GETTABLEKS                       R5 R6 K14 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K8 ["Providers"]
       41 GETTABLEKS                       R7 R8 K9 ["Style"]
       43 GETTABLEKS                       R6 R7 K15 ["Tokens"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Enums"]
       50 GETTABLEKS                       R7 R8 K16 ["IconSize"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K11 ["Utility"]
       57 GETTABLEKS                       R8 R9 K17 ["Flags"]
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
