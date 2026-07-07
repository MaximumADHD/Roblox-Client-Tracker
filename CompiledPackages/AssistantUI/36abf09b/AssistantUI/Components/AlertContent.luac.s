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
        5 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantUseBuilderIcons"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Hooks"]
       11 GETTABLEKS                       R3 R3 K4 ["useTokens"]
       13 CALL                             R3 0 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R6 0 1
       23 MOVE                             R7 R1
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R7 0 1
       34 MOVE                             R8 R2
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 3
       39 CALL                             R6 0 1
       40 GETUPVAL                         R7 4
       41 GETUPVAL                         R8 5
       42 DUPTABLE                         R9 K9 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-x-medium padding-y-small stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
       43 GETTABLEKS                       R10 R0 K8 ["LayoutOrder"]
       45 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       47 DUPTABLE                         R10 K16 [{"Icon", "Text", "TextButton", "SecondaryTextButton", "Spacer", "CloseButton"}]
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R12 R12 K2 ["FFlagAssistantUseBuilderIcons"]
       51 JUMPIFNOT                        R12 ; [+35]
       52 GETUPVAL                         R11 4
       53 GETUPVAL                         R12 6
       54 DUPTABLE                         R13 K20 [{"name", "style", "size", "LayoutOrder"}]
       55 GETUPVAL                         R14 1
       56 GETTABLEKS                       R14 R14 K21 ["Enums"]
       58 GETTABLEKS                       R14 R14 K22 ["IconName"]
       60 GETTABLEKS                       R14 R14 K23 ["TriangleExclamation"]
       62 SETTABLEKS                       R14 R13 K17 ["name"]
       64 GETTABLEKS                       R14 R3 K24 ["Color"]
       66 GETTABLEKS                       R14 R14 K25 ["System"]
       68 GETTABLEKS                       R14 R14 K26 ["Warning"]
       70 SETTABLEKS                       R14 R13 K18 ["style"]
       72 GETUPVAL                         R14 1
       73 GETTABLEKS                       R14 R14 K21 ["Enums"]
       75 GETTABLEKS                       R14 R14 K27 ["IconSize"]
       77 GETTABLEKS                       R14 R14 K28 ["Medium"]
       79 SETTABLEKS                       R14 R13 K19 ["size"]
       81 MOVE                             R14 R6
       82 CALL                             R14 0 1
       83 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       85 CALL                             R11 2 1
       86 JUMP                             ; [+8]
       87 GETUPVAL                         R11 4
       88 GETUPVAL                         R12 7
       89 DUPTABLE                         R13 K32 [{["tag"] = "size-500-500 content-system-warning", ["Image"] = "icons/status/error_large", ["LayoutOrder"]}]
       90 MOVE                             R14 R6
       91 CALL                             R14 0 1
       92 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K10 ["Icon"]
       97 GETUPVAL                         R11 4
       98 GETUPVAL                         R12 8
       99 DUPTABLE                         R13 K34 [{["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      100 GETTABLEKS                       R14 R0 K11 ["Text"]
      102 SETTABLEKS                       R14 R13 K11 ["Text"]
      104 MOVE                             R14 R6
      105 CALL                             R14 0 1
      106 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K11 ["Text"]
      111 MOVE                             R11 R1
      112 JUMPIFNOT                        R11 ; [+34]
      113 GETUPVAL                         R11 4
      114 GETUPVAL                         R12 8
      115 DUPTABLE                         R13 K40 [{["tag"], ["Text"], ["RichText"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      116 SETTABLEKS                       R4 R13 K6 ["tag"]
      118 LOADK                            R15 K41 ["<u>%*</u>"]
      119 GETTABLEKS                       R17 R1 K11 ["Text"]
      121 NAMECALL                         R15 R15 K42 ["format"]
      123 CALL                             R15 2 1
      124 MOVE                             R14 R15
      125 SETTABLEKS                       R14 R13 K11 ["Text"]
      127 GETTABLEKS                       R14 R1 K43 ["Disabled"]
      129 SETTABLEKS                       R14 R13 K37 ["isDisabled"]
      131 GETTABLEKS                       R14 R1 K44 ["OnClick"]
      133 SETTABLEKS                       R14 R13 K38 ["onActivated"]
      135 MOVE                             R14 R6
      136 CALL                             R14 0 1
      137 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      139 GETUPVAL                         R14 9
      140 GETTABLEKS                       R14 R14 K45 ["Alert"]
      142 GETTABLEKS                       R14 R14 K46 ["Continue"]
      144 SETTABLEKS                       R14 R13 K39 ["testId"]
      146 CALL                             R11 2 1
      147 SETTABLEKS                       R11 R10 K12 ["TextButton"]
      149 MOVE                             R11 R2
      150 JUMPIFNOT                        R11 ; [+34]
      151 GETUPVAL                         R11 4
      152 GETUPVAL                         R12 8
      153 DUPTABLE                         R13 K40 [{["tag"], ["Text"], ["RichText"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      154 SETTABLEKS                       R5 R13 K6 ["tag"]
      156 LOADK                            R15 K41 ["<u>%*</u>"]
      157 GETTABLEKS                       R17 R2 K11 ["Text"]
      159 NAMECALL                         R15 R15 K42 ["format"]
      161 CALL                             R15 2 1
      162 MOVE                             R14 R15
      163 SETTABLEKS                       R14 R13 K11 ["Text"]
      165 GETTABLEKS                       R14 R2 K43 ["Disabled"]
      167 SETTABLEKS                       R14 R13 K37 ["isDisabled"]
      169 GETTABLEKS                       R14 R2 K44 ["OnClick"]
      171 SETTABLEKS                       R14 R13 K38 ["onActivated"]
      173 MOVE                             R14 R6
      174 CALL                             R14 0 1
      175 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      177 GETUPVAL                         R14 9
      178 GETTABLEKS                       R14 R14 K45 ["Alert"]
      180 GETTABLEKS                       R14 R14 K47 ["EditApiKeys"]
      182 SETTABLEKS                       R14 R13 K39 ["testId"]
      184 CALL                             R11 2 1
      185 SETTABLEKS                       R11 R10 K13 ["SecondaryTextButton"]
      187 GETUPVAL                         R11 4
      188 GETUPVAL                         R12 5
      189 DUPTABLE                         R13 K49 [{["tag"] = "fill", ["LayoutOrder"]}]
      190 MOVE                             R14 R6
      191 CALL                             R14 0 1
      192 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      194 CALL                             R11 2 1
      195 SETTABLEKS                       R11 R10 K14 ["Spacer"]
      197 GETUPVAL                         R12 0
      198 GETTABLEKS                       R12 R12 K2 ["FFlagAssistantUseBuilderIcons"]
      200 JUMPIFNOT                        R12 ; [+47]
      201 GETUPVAL                         R11 4
      202 GETUPVAL                         R12 10
      203 DUPTABLE                         R13 K52 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      204 GETUPVAL                         R14 1
      205 GETTABLEKS                       R14 R14 K21 ["Enums"]
      207 GETTABLEKS                       R14 R14 K22 ["IconName"]
      209 GETTABLEKS                       R14 R14 K53 ["X"]
      211 SETTABLEKS                       R14 R13 K50 ["icon"]
      213 GETUPVAL                         R14 1
      214 GETTABLEKS                       R14 R14 K21 ["Enums"]
      216 GETTABLEKS                       R14 R14 K54 ["InputSize"]
      218 GETTABLEKS                       R14 R14 K55 ["XSmall"]
      220 SETTABLEKS                       R14 R13 K19 ["size"]
      222 GETUPVAL                         R14 1
      223 GETTABLEKS                       R14 R14 K21 ["Enums"]
      225 GETTABLEKS                       R14 R14 K56 ["ButtonVariant"]
      227 GETTABLEKS                       R14 R14 K57 ["Utility"]
      229 SETTABLEKS                       R14 R13 K51 ["variant"]
      231 GETTABLEKS                       R14 R0 K58 ["OnClose"]
      233 SETTABLEKS                       R14 R13 K38 ["onActivated"]
      235 MOVE                             R14 R6
      236 CALL                             R14 0 1
      237 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      239 GETUPVAL                         R14 9
      240 GETTABLEKS                       R14 R14 K45 ["Alert"]
      242 GETTABLEKS                       R14 R14 K59 ["Close"]
      244 SETTABLEKS                       R14 R13 K39 ["testId"]
      246 CALL                             R11 2 1
      247 JUMP                             ; [+19]
      248 GETUPVAL                         R11 4
      249 GETUPVAL                         R12 11
      250 DUPTABLE                         R13 K64 [{["icon"] = "icons/navigation/close", ["LayoutOrder"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["testId"]}]
      251 MOVE                             R14 R6
      252 CALL                             R14 0 1
      253 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      255 GETTABLEKS                       R14 R0 K58 ["OnClose"]
      257 SETTABLEKS                       R14 R13 K38 ["onActivated"]
      259 GETUPVAL                         R14 9
      260 GETTABLEKS                       R14 R14 K45 ["Alert"]
      262 GETTABLEKS                       R14 R14 K59 ["Close"]
      264 SETTABLEKS                       R14 R13 K39 ["testId"]
      266 CALL                             R11 2 1
      267 SETTABLEKS                       R11 R10 K15 ["CloseButton"]
      269 CALL                             R7 3 -1
      270 RETURN                           R7 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["TestIds"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R3 K15 ["Icon"]
       49 GETTABLEKS                       R8 R3 K16 ["IconButton"]
       51 GETTABLEKS                       R9 R3 K17 ["Image"]
       53 GETTABLEKS                       R10 R3 K18 ["Text"]
       55 GETTABLEKS                       R11 R3 K19 ["View"]
       57 GETTABLEKS                       R12 R5 K20 ["createNextOrder"]
       59 GETTABLEKS                       R13 R4 K21 ["createElement"]
       61 DUPCLOSURE                       R14 K22 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 GETTABLEKS                       R15 R4 K23 ["memo"]
       76 MOVE                             R16 R14
       77 CALL                             R15 1 -1
       78 RETURN                           R15 -1
