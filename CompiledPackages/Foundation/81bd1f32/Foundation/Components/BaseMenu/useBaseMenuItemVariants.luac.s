PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "icon", "text", "title", "check"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 LOADK                            R3 K8 ["row align-y-center flex-x-between auto-x"]
        3 SETTABLEKS                       R3 R2 K6 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K10 [{"tag", "style"}]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K11 ["FoundationBaseMenuItemImageRadius"]
       11 JUMPIFNOT                        R4 ; [+2]
       12 LOADK                            R3 K12 ["radius-small content-emphasis"]
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K13 ["content-emphasis"]
       15 SETTABLEKS                       R3 R2 K6 ["tag"]
       17 GETTABLEKS                       R5 R0 K14 ["Color"]
       19 GETTABLEKS                       R4 R5 K15 ["Content"]
       21 GETTABLEKS                       R3 R4 K16 ["Emphasis"]
       23 SETTABLEKS                       R3 R2 K9 ["style"]
       25 SETTABLEKS                       R2 R1 K1 ["icon"]
       27 DUPTABLE                         R2 K7 [{"tag"}]
       28 LOADK                            R3 K17 ["content-emphasis auto-xy fill text-align-x-left text-truncate-split"]
       29 SETTABLEKS                       R3 R2 K6 ["tag"]
       31 SETTABLEKS                       R2 R1 K2 ["text"]
       33 DUPTABLE                         R2 K7 [{"tag"}]
       34 LOADK                            R3 K18 ["content-default auto-xy fill text-align-x-left text-truncate-split"]
       35 SETTABLEKS                       R3 R2 K6 ["tag"]
       37 SETTABLEKS                       R2 R1 K3 ["title"]
       39 DUPTABLE                         R2 K10 [{"tag", "style"}]
       40 LOADK                            R3 K13 ["content-emphasis"]
       41 SETTABLEKS                       R3 R2 K6 ["tag"]
       43 GETTABLEKS                       R5 R0 K14 ["Color"]
       45 GETTABLEKS                       R4 R5 K15 ["Content"]
       47 GETTABLEKS                       R3 R4 K16 ["Emphasis"]
       49 SETTABLEKS                       R3 R2 K9 ["style"]
       51 SETTABLEKS                       R2 R1 K4 ["check"]
       53 NEWTABLE                         R2 4 0
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R3 R4 K19 ["XSmall"]
       58 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
       59 DUPTABLE                         R5 K7 [{"tag"}]
       60 LOADK                            R6 K20 ["size-full-600 radius-small padding-x-medium gap-xsmall"]
       61 SETTABLEKS                       R6 R5 K6 ["tag"]
       63 SETTABLEKS                       R5 R4 K0 ["container"]
       65 DUPTABLE                         R5 K22 [{"tag", "size"}]
       66 LOADK                            R6 K23 ["size-400"]
       67 SETTABLEKS                       R6 R5 K6 ["tag"]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R6 R7 K19 ["XSmall"]
       72 SETTABLEKS                       R6 R5 K21 ["size"]
       74 SETTABLEKS                       R5 R4 K1 ["icon"]
       76 DUPTABLE                         R5 K7 [{"tag"}]
       77 LOADK                            R6 K24 ["text-body-small"]
       78 SETTABLEKS                       R6 R5 K6 ["tag"]
       80 SETTABLEKS                       R5 R4 K2 ["text"]
       82 DUPTABLE                         R5 K7 [{"tag"}]
       83 LOADK                            R6 K25 ["text-caption-small"]
       84 SETTABLEKS                       R6 R5 K6 ["tag"]
       86 SETTABLEKS                       R5 R4 K3 ["title"]
       88 DUPTABLE                         R5 K22 [{"tag", "size"}]
       89 LOADK                            R6 K26 ["size-300"]
       90 SETTABLEKS                       R6 R5 K6 ["tag"]
       92 GETTABLEKS                       R7 R0 K27 ["Size"]
       94 GETTABLEKS                       R6 R7 K28 ["Size_600"]
       96 SETTABLEKS                       R6 R5 K21 ["size"]
       98 SETTABLEKS                       R5 R4 K4 ["check"]
      100 SETTABLE                         R4 R2 R3
      101 GETUPVAL                         R4 1
      102 GETTABLEKS                       R3 R4 K29 ["Small"]
      104 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      105 DUPTABLE                         R5 K7 [{"tag"}]
      106 LOADK                            R6 K30 ["size-full-800 radius-medium padding-x-medium gap-xsmall"]
      107 SETTABLEKS                       R6 R5 K6 ["tag"]
      109 SETTABLEKS                       R5 R4 K0 ["container"]
      111 DUPTABLE                         R5 K22 [{"tag", "size"}]
      112 LOADK                            R6 K31 ["size-500"]
      113 SETTABLEKS                       R6 R5 K6 ["tag"]
      115 GETUPVAL                         R7 2
      116 GETTABLEKS                       R6 R7 K29 ["Small"]
      118 SETTABLEKS                       R6 R5 K21 ["size"]
      120 SETTABLEKS                       R5 R4 K1 ["icon"]
      122 DUPTABLE                         R5 K7 [{"tag"}]
      123 LOADK                            R6 K24 ["text-body-small"]
      124 SETTABLEKS                       R6 R5 K6 ["tag"]
      126 SETTABLEKS                       R5 R4 K2 ["text"]
      128 DUPTABLE                         R5 K7 [{"tag"}]
      129 LOADK                            R6 K25 ["text-caption-small"]
      130 SETTABLEKS                       R6 R5 K6 ["tag"]
      132 SETTABLEKS                       R5 R4 K3 ["title"]
      134 DUPTABLE                         R5 K22 [{"tag", "size"}]
      135 LOADK                            R6 K23 ["size-400"]
      136 SETTABLEKS                       R6 R5 K6 ["tag"]
      138 GETTABLEKS                       R7 R0 K27 ["Size"]
      140 GETTABLEKS                       R6 R7 K32 ["Size_700"]
      142 SETTABLEKS                       R6 R5 K21 ["size"]
      144 SETTABLEKS                       R5 R4 K4 ["check"]
      146 SETTABLE                         R4 R2 R3
      147 GETUPVAL                         R4 1
      148 GETTABLEKS                       R3 R4 K33 ["Medium"]
      150 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      151 DUPTABLE                         R5 K7 [{"tag"}]
      152 LOADK                            R6 K34 ["size-full-1000 radius-medium padding-x-medium gap-small"]
      153 SETTABLEKS                       R6 R5 K6 ["tag"]
      155 SETTABLEKS                       R5 R4 K0 ["container"]
      157 DUPTABLE                         R5 K22 [{"tag", "size"}]
      158 LOADK                            R6 K35 ["size-600"]
      159 SETTABLEKS                       R6 R5 K6 ["tag"]
      161 GETUPVAL                         R7 2
      162 GETTABLEKS                       R6 R7 K33 ["Medium"]
      164 SETTABLEKS                       R6 R5 K21 ["size"]
      166 SETTABLEKS                       R5 R4 K1 ["icon"]
      168 DUPTABLE                         R5 K7 [{"tag"}]
      169 LOADK                            R6 K36 ["text-body-medium"]
      170 SETTABLEKS                       R6 R5 K6 ["tag"]
      172 SETTABLEKS                       R5 R4 K2 ["text"]
      174 DUPTABLE                         R5 K7 [{"tag"}]
      175 LOADK                            R6 K37 ["text-caption-medium"]
      176 SETTABLEKS                       R6 R5 K6 ["tag"]
      178 SETTABLEKS                       R5 R4 K3 ["title"]
      180 DUPTABLE                         R5 K22 [{"tag", "size"}]
      181 LOADK                            R6 K31 ["size-500"]
      182 SETTABLEKS                       R6 R5 K6 ["tag"]
      184 GETTABLEKS                       R7 R0 K27 ["Size"]
      186 GETTABLEKS                       R6 R7 K38 ["Size_800"]
      188 SETTABLEKS                       R6 R5 K21 ["size"]
      190 SETTABLEKS                       R5 R4 K4 ["check"]
      192 SETTABLE                         R4 R2 R3
      193 GETUPVAL                         R4 1
      194 GETTABLEKS                       R3 R4 K39 ["Large"]
      196 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      197 DUPTABLE                         R5 K7 [{"tag"}]
      198 LOADK                            R6 K40 ["size-full-1200 radius-medium padding-x-large gap-small"]
      199 SETTABLEKS                       R6 R5 K6 ["tag"]
      201 SETTABLEKS                       R5 R4 K0 ["container"]
      203 DUPTABLE                         R5 K22 [{"tag", "size"}]
      204 LOADK                            R6 K41 ["size-700"]
      205 SETTABLEKS                       R6 R5 K6 ["tag"]
      207 GETUPVAL                         R7 2
      208 GETTABLEKS                       R6 R7 K39 ["Large"]
      210 SETTABLEKS                       R6 R5 K21 ["size"]
      212 SETTABLEKS                       R5 R4 K1 ["icon"]
      214 DUPTABLE                         R5 K7 [{"tag"}]
      215 LOADK                            R6 K42 ["text-body-large"]
      216 SETTABLEKS                       R6 R5 K6 ["tag"]
      218 SETTABLEKS                       R5 R4 K2 ["text"]
      220 DUPTABLE                         R5 K7 [{"tag"}]
      221 LOADK                            R6 K43 ["text-caption-large"]
      222 SETTABLEKS                       R6 R5 K6 ["tag"]
      224 SETTABLEKS                       R5 R4 K3 ["title"]
      226 DUPTABLE                         R5 K22 [{"tag", "size"}]
      227 LOADK                            R6 K35 ["size-600"]
      228 SETTABLEKS                       R6 R5 K6 ["tag"]
      230 GETTABLEKS                       R7 R0 K27 ["Size"]
      232 GETTABLEKS                       R6 R7 K44 ["Size_900"]
      234 SETTABLEKS                       R6 R5 K21 ["size"]
      236 SETTABLEKS                       R5 R4 K4 ["check"]
      238 SETTABLE                         R4 R2 R3
      239 NEWTABLE                         R3 2 0
      241 LOADB                            R4 0
      242 DUPTABLE                         R5 K45 [{"container"}]
      243 DUPTABLE                         R6 K7 [{"tag"}]
      244 LOADK                            R7 K46 [""]
      245 SETTABLEKS                       R7 R6 K6 ["tag"]
      247 SETTABLEKS                       R6 R5 K0 ["container"]
      249 SETTABLE                         R5 R3 R4
      250 LOADB                            R4 1
      251 DUPTABLE                         R5 K45 [{"container"}]
      252 DUPTABLE                         R6 K7 [{"tag"}]
      253 LOADK                            R7 K47 ["bg-surface-200"]
      254 SETTABLEKS                       R7 R6 K6 ["tag"]
      256 SETTABLEKS                       R6 R5 K0 ["container"]
      258 SETTABLE                         R5 R3 R4
      259 DUPTABLE                         R4 K51 [{"common", "sizes", "isChecked"}]
      260 SETTABLEKS                       R1 R4 K48 ["common"]
      262 SETTABLEKS                       R2 R4 K49 ["sizes"]
      264 SETTABLEKS                       R3 R4 K50 ["isChecked"]
      266 RETURN                           R4 1

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
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Providers"]
       25 GETTABLEKS                       R5 R6 K11 ["Style"]
       27 GETTABLEKS                       R4 R5 K12 ["VariantsContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Utility"]
       34 GETTABLEKS                       R5 R6 K13 ["composeStyleVariant"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Providers"]
       41 GETTABLEKS                       R7 R8 K11 ["Style"]
       43 GETTABLEKS                       R6 R7 K14 ["Tokens"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K15 ["Components"]
       50 GETTABLEKS                       R7 R8 K16 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K8 ["Enums"]
       57 GETTABLEKS                       R8 R9 K17 ["IconSize"]
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
