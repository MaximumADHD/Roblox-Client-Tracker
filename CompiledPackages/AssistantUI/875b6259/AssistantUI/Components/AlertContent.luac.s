PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 4 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["auto-xy text-body-small text-wrap text-align-x-left radius-small"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["Disabled"]
       13 SETTABLEKS                       R1 R0 K2 ["content-muted"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["Disabled"]
       18 NOT                              R1 R2
       19 SETTABLEKS                       R1 R0 K3 ["content-action-link"]
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 4 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["auto-xy text-body-small text-wrap text-align-x-left radius-small"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["Disabled"]
       13 SETTABLEKS                       R1 R0 K2 ["content-muted"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["Disabled"]
       18 NOT                              R1 R2
       19 SETTABLEKS                       R1 R0 K3 ["content-action-link"]
       21 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["ButtonContent"]
        2 GETTABLEKS                       R2 R0 K1 ["SecondaryButtonContent"]
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+7]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["Hooks"]
       10 GETTABLEKS                       R3 R3 K3 ["useTokens"]
       12 CALL                             R3 0 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R1
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R7 0 1
       33 MOVE                             R8 R2
       34 SETLIST                          R7 R8 1 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 3
       38 CALL                             R6 0 1
       39 GETUPVAL                         R7 4
       40 GETUPVAL                         R8 5
       41 DUPTABLE                         R9 K7 [{"tag", "LayoutOrder"}]
       42 LOADK                            R10 K8 ["row size-full-0 auto-y padding-x-medium padding-y-small gap-small align-y-center radius-medium stroke-standard stroke-default"]
       43 SETTABLEKS                       R10 R9 K5 ["tag"]
       45 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
       47 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       49 DUPTABLE                         R10 K15 [{"Icon", "Text", "TextButton", "SecondaryTextButton", "Spacer", "CloseButton"}]
       50 GETUPVAL                         R12 0
       51 CALL                             R12 0 1
       52 JUMPIFNOT                        R12 ; [+35]
       53 GETUPVAL                         R11 4
       54 GETUPVAL                         R12 6
       55 DUPTABLE                         R13 K19 [{"name", "style", "size", "LayoutOrder"}]
       56 GETUPVAL                         R14 1
       57 GETTABLEKS                       R14 R14 K20 ["Enums"]
       59 GETTABLEKS                       R14 R14 K21 ["IconName"]
       61 GETTABLEKS                       R14 R14 K22 ["TriangleExclamation"]
       63 SETTABLEKS                       R14 R13 K16 ["name"]
       65 GETTABLEKS                       R14 R3 K23 ["Color"]
       67 GETTABLEKS                       R14 R14 K24 ["System"]
       69 GETTABLEKS                       R14 R14 K25 ["Warning"]
       71 SETTABLEKS                       R14 R13 K17 ["style"]
       73 GETUPVAL                         R14 1
       74 GETTABLEKS                       R14 R14 K20 ["Enums"]
       76 GETTABLEKS                       R14 R14 K26 ["IconSize"]
       78 GETTABLEKS                       R14 R14 K27 ["Medium"]
       80 SETTABLEKS                       R14 R13 K18 ["size"]
       82 MOVE                             R14 R6
       83 CALL                             R14 0 1
       84 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       86 CALL                             R11 2 1
       87 JUMP                             ; [+14]
       88 GETUPVAL                         R11 4
       89 GETUPVAL                         R12 7
       90 DUPTABLE                         R13 K29 [{"tag", "Image", "LayoutOrder"}]
       91 LOADK                            R14 K30 ["size-500-500 content-system-warning"]
       92 SETTABLEKS                       R14 R13 K5 ["tag"]
       94 LOADK                            R14 K31 ["icons/status/error_large"]
       95 SETTABLEKS                       R14 R13 K28 ["Image"]
       97 MOVE                             R14 R6
       98 CALL                             R14 0 1
       99 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K9 ["Icon"]
      104 GETUPVAL                         R11 4
      105 GETUPVAL                         R12 8
      106 DUPTABLE                         R13 K32 [{"tag", "Text", "LayoutOrder"}]
      107 LOADK                            R14 K33 ["auto-xy shrink text-body-small text-wrap text-align-x-left"]
      108 SETTABLEKS                       R14 R13 K5 ["tag"]
      110 GETTABLEKS                       R14 R0 K10 ["Text"]
      112 SETTABLEKS                       R14 R13 K10 ["Text"]
      114 MOVE                             R14 R6
      115 CALL                             R14 0 1
      116 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      118 CALL                             R11 2 1
      119 SETTABLEKS                       R11 R10 K10 ["Text"]
      121 MOVE                             R11 R1
      122 JUMPIFNOT                        R11 ; [+37]
      123 GETUPVAL                         R11 4
      124 GETUPVAL                         R12 8
      125 DUPTABLE                         R13 K38 [{"tag", "Text", "RichText", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      126 SETTABLEKS                       R4 R13 K5 ["tag"]
      128 LOADK                            R15 K39 ["<u>%*</u>"]
      129 GETTABLEKS                       R17 R1 K10 ["Text"]
      131 NAMECALL                         R15 R15 K40 ["format"]
      133 CALL                             R15 2 1
      134 MOVE                             R14 R15
      135 SETTABLEKS                       R14 R13 K10 ["Text"]
      137 LOADB                            R14 1
      138 SETTABLEKS                       R14 R13 K34 ["RichText"]
      140 GETTABLEKS                       R14 R1 K41 ["Disabled"]
      142 SETTABLEKS                       R14 R13 K35 ["isDisabled"]
      144 GETTABLEKS                       R14 R1 K42 ["OnClick"]
      146 SETTABLEKS                       R14 R13 K36 ["onActivated"]
      148 MOVE                             R14 R6
      149 CALL                             R14 0 1
      150 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      152 GETUPVAL                         R14 9
      153 GETTABLEKS                       R14 R14 K43 ["Alert"]
      155 GETTABLEKS                       R14 R14 K44 ["Continue"]
      157 SETTABLEKS                       R14 R13 K37 ["testId"]
      159 CALL                             R11 2 1
      160 SETTABLEKS                       R11 R10 K11 ["TextButton"]
      162 MOVE                             R11 R2
      163 JUMPIFNOT                        R11 ; [+37]
      164 GETUPVAL                         R11 4
      165 GETUPVAL                         R12 8
      166 DUPTABLE                         R13 K38 [{"tag", "Text", "RichText", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      167 SETTABLEKS                       R5 R13 K5 ["tag"]
      169 LOADK                            R15 K39 ["<u>%*</u>"]
      170 GETTABLEKS                       R17 R2 K10 ["Text"]
      172 NAMECALL                         R15 R15 K40 ["format"]
      174 CALL                             R15 2 1
      175 MOVE                             R14 R15
      176 SETTABLEKS                       R14 R13 K10 ["Text"]
      178 LOADB                            R14 1
      179 SETTABLEKS                       R14 R13 K34 ["RichText"]
      181 GETTABLEKS                       R14 R2 K41 ["Disabled"]
      183 SETTABLEKS                       R14 R13 K35 ["isDisabled"]
      185 GETTABLEKS                       R14 R2 K42 ["OnClick"]
      187 SETTABLEKS                       R14 R13 K36 ["onActivated"]
      189 MOVE                             R14 R6
      190 CALL                             R14 0 1
      191 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      193 GETUPVAL                         R14 9
      194 GETTABLEKS                       R14 R14 K43 ["Alert"]
      196 GETTABLEKS                       R14 R14 K45 ["EditApiKeys"]
      198 SETTABLEKS                       R14 R13 K37 ["testId"]
      200 CALL                             R11 2 1
      201 SETTABLEKS                       R11 R10 K12 ["SecondaryTextButton"]
      203 GETUPVAL                         R11 4
      204 GETUPVAL                         R12 5
      205 DUPTABLE                         R13 K7 [{"tag", "LayoutOrder"}]
      206 LOADK                            R14 K46 ["fill"]
      207 SETTABLEKS                       R14 R13 K5 ["tag"]
      209 MOVE                             R14 R6
      210 CALL                             R14 0 1
      211 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      213 CALL                             R11 2 1
      214 SETTABLEKS                       R11 R10 K13 ["Spacer"]
      216 GETUPVAL                         R12 0
      217 CALL                             R12 0 1
      218 JUMPIFNOT                        R12 ; [+47]
      219 GETUPVAL                         R11 4
      220 GETUPVAL                         R12 10
      221 DUPTABLE                         R13 K49 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      222 GETUPVAL                         R14 1
      223 GETTABLEKS                       R14 R14 K20 ["Enums"]
      225 GETTABLEKS                       R14 R14 K21 ["IconName"]
      227 GETTABLEKS                       R14 R14 K50 ["X"]
      229 SETTABLEKS                       R14 R13 K47 ["icon"]
      231 GETUPVAL                         R14 1
      232 GETTABLEKS                       R14 R14 K20 ["Enums"]
      234 GETTABLEKS                       R14 R14 K51 ["InputSize"]
      236 GETTABLEKS                       R14 R14 K52 ["XSmall"]
      238 SETTABLEKS                       R14 R13 K18 ["size"]
      240 GETUPVAL                         R14 1
      241 GETTABLEKS                       R14 R14 K20 ["Enums"]
      243 GETTABLEKS                       R14 R14 K53 ["ButtonVariant"]
      245 GETTABLEKS                       R14 R14 K54 ["Utility"]
      247 SETTABLEKS                       R14 R13 K48 ["variant"]
      249 GETTABLEKS                       R14 R0 K55 ["OnClose"]
      251 SETTABLEKS                       R14 R13 K36 ["onActivated"]
      253 MOVE                             R14 R6
      254 CALL                             R14 0 1
      255 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      257 GETUPVAL                         R14 9
      258 GETTABLEKS                       R14 R14 K43 ["Alert"]
      260 GETTABLEKS                       R14 R14 K56 ["Close"]
      262 SETTABLEKS                       R14 R13 K37 ["testId"]
      264 CALL                             R11 2 1
      265 JUMP                             ; [+28]
      266 GETUPVAL                         R11 4
      267 GETUPVAL                         R12 11
      268 DUPTABLE                         R13 K58 [{"icon", "LayoutOrder", "tag", "iconTag", "onActivated", "testId"}]
      269 LOADK                            R14 K59 ["icons/navigation/close"]
      270 SETTABLEKS                       R14 R13 K47 ["icon"]
      272 MOVE                             R14 R6
      273 CALL                             R14 0 1
      274 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      276 LOADK                            R14 K60 ["size-600-600 radius-small align-x-center align-y-center"]
      277 SETTABLEKS                       R14 R13 K5 ["tag"]
      279 LOADK                            R14 K61 ["size-300-300 content-emphasis"]
      280 SETTABLEKS                       R14 R13 K57 ["iconTag"]
      282 GETTABLEKS                       R14 R0 K55 ["OnClose"]
      284 SETTABLEKS                       R14 R13 K36 ["onActivated"]
      286 GETUPVAL                         R14 9
      287 GETTABLEKS                       R14 R14 K43 ["Alert"]
      289 GETTABLEKS                       R14 R14 K56 ["Close"]
      291 SETTABLEKS                       R14 R13 K37 ["testId"]
      293 CALL                             R11 2 1
      294 SETTABLEKS                       R11 R10 K14 ["CloseButton"]
      296 CALL                             R7 3 -1
      297 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Flags"]
       46 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantUseBuilderIcons"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R2 K16 ["Icon"]
       51 GETTABLEKS                       R8 R2 K17 ["IconButton"]
       53 GETTABLEKS                       R9 R2 K18 ["Image"]
       55 GETTABLEKS                       R10 R2 K19 ["Text"]
       57 GETTABLEKS                       R11 R2 K20 ["View"]
       59 GETTABLEKS                       R12 R4 K21 ["createNextOrder"]
       61 GETTABLEKS                       R13 R3 K22 ["createElement"]
       63 DUPCLOSURE                       R14 K23 [PROTO_2]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R1
       76 GETTABLEKS                       R15 R3 K24 ["memo"]
       78 MOVE                             R16 R14
       79 CALL                             R15 1 -1
       80 RETURN                           R15 -1
