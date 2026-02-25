PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "icon", "text", "title", "check"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 LOADK                            R3 K8 ["row align-y-center flex-x-between auto-x"]
        3 SETTABLEKS                       R3 R2 K6 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K10 [{"tag", "style"}]
        8 LOADK                            R3 K11 ["content-emphasis"]
        9 SETTABLEKS                       R3 R2 K6 ["tag"]
       11 GETTABLEKS                       R5 R0 K12 ["Color"]
       13 GETTABLEKS                       R4 R5 K13 ["Content"]
       15 GETTABLEKS                       R3 R4 K14 ["Emphasis"]
       17 SETTABLEKS                       R3 R2 K9 ["style"]
       19 SETTABLEKS                       R2 R1 K1 ["icon"]
       21 DUPTABLE                         R2 K7 [{"tag"}]
       22 LOADK                            R3 K15 ["content-emphasis auto-xy fill text-align-x-left text-truncate-split"]
       23 SETTABLEKS                       R3 R2 K6 ["tag"]
       25 SETTABLEKS                       R2 R1 K2 ["text"]
       27 DUPTABLE                         R2 K7 [{"tag"}]
       28 LOADK                            R3 K16 ["content-default auto-xy fill text-align-x-left text-truncate-split"]
       29 SETTABLEKS                       R3 R2 K6 ["tag"]
       31 SETTABLEKS                       R2 R1 K3 ["title"]
       33 DUPTABLE                         R2 K10 [{"tag", "style"}]
       34 LOADK                            R3 K11 ["content-emphasis"]
       35 SETTABLEKS                       R3 R2 K6 ["tag"]
       37 GETTABLEKS                       R5 R0 K12 ["Color"]
       39 GETTABLEKS                       R4 R5 K13 ["Content"]
       41 GETTABLEKS                       R3 R4 K14 ["Emphasis"]
       43 SETTABLEKS                       R3 R2 K9 ["style"]
       45 SETTABLEKS                       R2 R1 K4 ["check"]
       47 NEWTABLE                         R2 4 0
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R3 R4 K17 ["XSmall"]
       52 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
       53 DUPTABLE                         R5 K7 [{"tag"}]
       54 LOADK                            R6 K18 ["size-full-600 radius-small padding-x-medium gap-xsmall"]
       55 SETTABLEKS                       R6 R5 K6 ["tag"]
       57 SETTABLEKS                       R5 R4 K0 ["container"]
       59 DUPTABLE                         R5 K20 [{"tag", "size"}]
       60 LOADK                            R6 K21 ["size-400"]
       61 SETTABLEKS                       R6 R5 K6 ["tag"]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R6 R7 K17 ["XSmall"]
       66 SETTABLEKS                       R6 R5 K19 ["size"]
       68 SETTABLEKS                       R5 R4 K1 ["icon"]
       70 DUPTABLE                         R5 K7 [{"tag"}]
       71 LOADK                            R6 K22 ["text-body-small"]
       72 SETTABLEKS                       R6 R5 K6 ["tag"]
       74 SETTABLEKS                       R5 R4 K2 ["text"]
       76 DUPTABLE                         R5 K7 [{"tag"}]
       77 LOADK                            R6 K23 ["text-caption-small"]
       78 SETTABLEKS                       R6 R5 K6 ["tag"]
       80 SETTABLEKS                       R5 R4 K3 ["title"]
       82 DUPTABLE                         R5 K20 [{"tag", "size"}]
       83 LOADK                            R6 K24 ["size-300"]
       84 SETTABLEKS                       R6 R5 K6 ["tag"]
       86 GETTABLEKS                       R7 R0 K25 ["Size"]
       88 GETTABLEKS                       R6 R7 K26 ["Size_600"]
       90 SETTABLEKS                       R6 R5 K19 ["size"]
       92 SETTABLEKS                       R5 R4 K4 ["check"]
       94 SETTABLE                         R4 R2 R3
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R3 R4 K27 ["Small"]
       98 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
       99 DUPTABLE                         R5 K7 [{"tag"}]
      100 LOADK                            R6 K28 ["size-full-800 radius-medium padding-x-medium gap-xsmall"]
      101 SETTABLEKS                       R6 R5 K6 ["tag"]
      103 SETTABLEKS                       R5 R4 K0 ["container"]
      105 DUPTABLE                         R5 K20 [{"tag", "size"}]
      106 LOADK                            R6 K29 ["size-500"]
      107 SETTABLEKS                       R6 R5 K6 ["tag"]
      109 GETUPVAL                         R7 1
      110 GETTABLEKS                       R6 R7 K27 ["Small"]
      112 SETTABLEKS                       R6 R5 K19 ["size"]
      114 SETTABLEKS                       R5 R4 K1 ["icon"]
      116 DUPTABLE                         R5 K7 [{"tag"}]
      117 LOADK                            R6 K22 ["text-body-small"]
      118 SETTABLEKS                       R6 R5 K6 ["tag"]
      120 SETTABLEKS                       R5 R4 K2 ["text"]
      122 DUPTABLE                         R5 K7 [{"tag"}]
      123 LOADK                            R6 K23 ["text-caption-small"]
      124 SETTABLEKS                       R6 R5 K6 ["tag"]
      126 SETTABLEKS                       R5 R4 K3 ["title"]
      128 DUPTABLE                         R5 K20 [{"tag", "size"}]
      129 LOADK                            R6 K21 ["size-400"]
      130 SETTABLEKS                       R6 R5 K6 ["tag"]
      132 GETTABLEKS                       R7 R0 K25 ["Size"]
      134 GETTABLEKS                       R6 R7 K30 ["Size_700"]
      136 SETTABLEKS                       R6 R5 K19 ["size"]
      138 SETTABLEKS                       R5 R4 K4 ["check"]
      140 SETTABLE                         R4 R2 R3
      141 GETUPVAL                         R4 0
      142 GETTABLEKS                       R3 R4 K31 ["Medium"]
      144 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      145 DUPTABLE                         R5 K7 [{"tag"}]
      146 LOADK                            R6 K32 ["size-full-1000 radius-medium padding-x-medium gap-small"]
      147 SETTABLEKS                       R6 R5 K6 ["tag"]
      149 SETTABLEKS                       R5 R4 K0 ["container"]
      151 DUPTABLE                         R5 K20 [{"tag", "size"}]
      152 LOADK                            R6 K33 ["size-600"]
      153 SETTABLEKS                       R6 R5 K6 ["tag"]
      155 GETUPVAL                         R7 1
      156 GETTABLEKS                       R6 R7 K31 ["Medium"]
      158 SETTABLEKS                       R6 R5 K19 ["size"]
      160 SETTABLEKS                       R5 R4 K1 ["icon"]
      162 DUPTABLE                         R5 K7 [{"tag"}]
      163 LOADK                            R6 K34 ["text-body-medium"]
      164 SETTABLEKS                       R6 R5 K6 ["tag"]
      166 SETTABLEKS                       R5 R4 K2 ["text"]
      168 DUPTABLE                         R5 K7 [{"tag"}]
      169 LOADK                            R6 K35 ["text-caption-medium"]
      170 SETTABLEKS                       R6 R5 K6 ["tag"]
      172 SETTABLEKS                       R5 R4 K3 ["title"]
      174 DUPTABLE                         R5 K20 [{"tag", "size"}]
      175 LOADK                            R6 K29 ["size-500"]
      176 SETTABLEKS                       R6 R5 K6 ["tag"]
      178 GETTABLEKS                       R7 R0 K25 ["Size"]
      180 GETTABLEKS                       R6 R7 K36 ["Size_800"]
      182 SETTABLEKS                       R6 R5 K19 ["size"]
      184 SETTABLEKS                       R5 R4 K4 ["check"]
      186 SETTABLE                         R4 R2 R3
      187 GETUPVAL                         R4 0
      188 GETTABLEKS                       R3 R4 K37 ["Large"]
      190 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      191 DUPTABLE                         R5 K7 [{"tag"}]
      192 LOADK                            R6 K38 ["size-full-1200 radius-medium padding-x-large gap-small"]
      193 SETTABLEKS                       R6 R5 K6 ["tag"]
      195 SETTABLEKS                       R5 R4 K0 ["container"]
      197 DUPTABLE                         R5 K20 [{"tag", "size"}]
      198 LOADK                            R6 K39 ["size-700"]
      199 SETTABLEKS                       R6 R5 K6 ["tag"]
      201 GETUPVAL                         R7 1
      202 GETTABLEKS                       R6 R7 K37 ["Large"]
      204 SETTABLEKS                       R6 R5 K19 ["size"]
      206 SETTABLEKS                       R5 R4 K1 ["icon"]
      208 DUPTABLE                         R5 K7 [{"tag"}]
      209 LOADK                            R6 K40 ["text-body-large"]
      210 SETTABLEKS                       R6 R5 K6 ["tag"]
      212 SETTABLEKS                       R5 R4 K2 ["text"]
      214 DUPTABLE                         R5 K7 [{"tag"}]
      215 LOADK                            R6 K41 ["text-caption-large"]
      216 SETTABLEKS                       R6 R5 K6 ["tag"]
      218 SETTABLEKS                       R5 R4 K3 ["title"]
      220 DUPTABLE                         R5 K20 [{"tag", "size"}]
      221 LOADK                            R6 K33 ["size-600"]
      222 SETTABLEKS                       R6 R5 K6 ["tag"]
      224 GETTABLEKS                       R7 R0 K25 ["Size"]
      226 GETTABLEKS                       R6 R7 K42 ["Size_900"]
      228 SETTABLEKS                       R6 R5 K19 ["size"]
      230 SETTABLEKS                       R5 R4 K4 ["check"]
      232 SETTABLE                         R4 R2 R3
      233 NEWTABLE                         R3 2 0
      235 LOADB                            R4 0
      236 DUPTABLE                         R5 K43 [{"container"}]
      237 DUPTABLE                         R6 K7 [{"tag"}]
      238 LOADK                            R7 K44 [""]
      239 SETTABLEKS                       R7 R6 K6 ["tag"]
      241 SETTABLEKS                       R6 R5 K0 ["container"]
      243 SETTABLE                         R5 R3 R4
      244 LOADB                            R4 1
      245 DUPTABLE                         R5 K43 [{"container"}]
      246 DUPTABLE                         R6 K7 [{"tag"}]
      247 LOADK                            R7 K45 ["bg-surface-200"]
      248 SETTABLEKS                       R7 R6 K6 ["tag"]
      250 SETTABLEKS                       R6 R5 K0 ["container"]
      252 SETTABLE                         R5 R3 R4
      253 DUPTABLE                         R4 K49 [{"common", "sizes", "isChecked"}]
      254 SETTABLEKS                       R1 R4 K46 ["common"]
      256 SETTABLEKS                       R2 R4 K47 ["sizes"]
      258 SETTABLEKS                       R3 R4 K48 ["isChecked"]
      260 RETURN                           R4 1

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
       32 GETTABLEKS                       R7 R0 K8 ["Providers"]
       34 GETTABLEKS                       R6 R7 K9 ["Style"]
       36 GETTABLEKS                       R5 R6 K13 ["Tokens"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Components"]
       43 GETTABLEKS                       R6 R7 K15 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Enums"]
       50 GETTABLEKS                       R7 R8 K16 ["IconSize"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 DUPCLOSURE                       R8 K18 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 RETURN                           R8 1
