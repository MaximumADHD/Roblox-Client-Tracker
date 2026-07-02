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
       41 DUPTABLE                         R9 K8 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-x-medium padding-y-small stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
       42 GETTABLEKS                       R10 R0 K7 ["LayoutOrder"]
       44 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       46 DUPTABLE                         R10 K15 [{"Icon", "Text", "TextButton", "SecondaryTextButton", "Spacer", "CloseButton"}]
       47 GETUPVAL                         R12 0
       48 CALL                             R12 0 1
       49 JUMPIFNOT                        R12 ; [+35]
       50 GETUPVAL                         R11 4
       51 GETUPVAL                         R12 6
       52 DUPTABLE                         R13 K19 [{"name", "style", "size", "LayoutOrder"}]
       53 GETUPVAL                         R14 1
       54 GETTABLEKS                       R14 R14 K20 ["Enums"]
       56 GETTABLEKS                       R14 R14 K21 ["IconName"]
       58 GETTABLEKS                       R14 R14 K22 ["TriangleExclamation"]
       60 SETTABLEKS                       R14 R13 K16 ["name"]
       62 GETTABLEKS                       R14 R3 K23 ["Color"]
       64 GETTABLEKS                       R14 R14 K24 ["System"]
       66 GETTABLEKS                       R14 R14 K25 ["Warning"]
       68 SETTABLEKS                       R14 R13 K17 ["style"]
       70 GETUPVAL                         R14 1
       71 GETTABLEKS                       R14 R14 K20 ["Enums"]
       73 GETTABLEKS                       R14 R14 K26 ["IconSize"]
       75 GETTABLEKS                       R14 R14 K27 ["Medium"]
       77 SETTABLEKS                       R14 R13 K18 ["size"]
       79 MOVE                             R14 R6
       80 CALL                             R14 0 1
       81 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       83 CALL                             R11 2 1
       84 JUMP                             ; [+8]
       85 GETUPVAL                         R11 4
       86 GETUPVAL                         R12 7
       87 DUPTABLE                         R13 K31 [{["tag"] = "size-500-500 content-system-warning", ["Image"] = "icons/status/error_large", ["LayoutOrder"]}]
       88 MOVE                             R14 R6
       89 CALL                             R14 0 1
       90 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K9 ["Icon"]
       95 GETUPVAL                         R11 4
       96 GETUPVAL                         R12 8
       97 DUPTABLE                         R13 K33 [{["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
       98 GETTABLEKS                       R14 R0 K10 ["Text"]
      100 SETTABLEKS                       R14 R13 K10 ["Text"]
      102 MOVE                             R14 R6
      103 CALL                             R14 0 1
      104 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      106 CALL                             R11 2 1
      107 SETTABLEKS                       R11 R10 K10 ["Text"]
      109 MOVE                             R11 R1
      110 JUMPIFNOT                        R11 ; [+34]
      111 GETUPVAL                         R11 4
      112 GETUPVAL                         R12 8
      113 DUPTABLE                         R13 K39 [{["tag"], ["Text"], ["RichText"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      114 SETTABLEKS                       R4 R13 K5 ["tag"]
      116 LOADK                            R15 K40 ["<u>%*</u>"]
      117 GETTABLEKS                       R17 R1 K10 ["Text"]
      119 NAMECALL                         R15 R15 K41 ["format"]
      121 CALL                             R15 2 1
      122 MOVE                             R14 R15
      123 SETTABLEKS                       R14 R13 K10 ["Text"]
      125 GETTABLEKS                       R14 R1 K42 ["Disabled"]
      127 SETTABLEKS                       R14 R13 K36 ["isDisabled"]
      129 GETTABLEKS                       R14 R1 K43 ["OnClick"]
      131 SETTABLEKS                       R14 R13 K37 ["onActivated"]
      133 MOVE                             R14 R6
      134 CALL                             R14 0 1
      135 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      137 GETUPVAL                         R14 9
      138 GETTABLEKS                       R14 R14 K44 ["Alert"]
      140 GETTABLEKS                       R14 R14 K45 ["Continue"]
      142 SETTABLEKS                       R14 R13 K38 ["testId"]
      144 CALL                             R11 2 1
      145 SETTABLEKS                       R11 R10 K11 ["TextButton"]
      147 MOVE                             R11 R2
      148 JUMPIFNOT                        R11 ; [+34]
      149 GETUPVAL                         R11 4
      150 GETUPVAL                         R12 8
      151 DUPTABLE                         R13 K39 [{["tag"], ["Text"], ["RichText"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      152 SETTABLEKS                       R5 R13 K5 ["tag"]
      154 LOADK                            R15 K40 ["<u>%*</u>"]
      155 GETTABLEKS                       R17 R2 K10 ["Text"]
      157 NAMECALL                         R15 R15 K41 ["format"]
      159 CALL                             R15 2 1
      160 MOVE                             R14 R15
      161 SETTABLEKS                       R14 R13 K10 ["Text"]
      163 GETTABLEKS                       R14 R2 K42 ["Disabled"]
      165 SETTABLEKS                       R14 R13 K36 ["isDisabled"]
      167 GETTABLEKS                       R14 R2 K43 ["OnClick"]
      169 SETTABLEKS                       R14 R13 K37 ["onActivated"]
      171 MOVE                             R14 R6
      172 CALL                             R14 0 1
      173 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      175 GETUPVAL                         R14 9
      176 GETTABLEKS                       R14 R14 K44 ["Alert"]
      178 GETTABLEKS                       R14 R14 K46 ["EditApiKeys"]
      180 SETTABLEKS                       R14 R13 K38 ["testId"]
      182 CALL                             R11 2 1
      183 SETTABLEKS                       R11 R10 K12 ["SecondaryTextButton"]
      185 GETUPVAL                         R11 4
      186 GETUPVAL                         R12 5
      187 DUPTABLE                         R13 K48 [{["tag"] = "fill", ["LayoutOrder"]}]
      188 MOVE                             R14 R6
      189 CALL                             R14 0 1
      190 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      192 CALL                             R11 2 1
      193 SETTABLEKS                       R11 R10 K13 ["Spacer"]
      195 GETUPVAL                         R12 0
      196 CALL                             R12 0 1
      197 JUMPIFNOT                        R12 ; [+47]
      198 GETUPVAL                         R11 4
      199 GETUPVAL                         R12 10
      200 DUPTABLE                         R13 K51 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      201 GETUPVAL                         R14 1
      202 GETTABLEKS                       R14 R14 K20 ["Enums"]
      204 GETTABLEKS                       R14 R14 K21 ["IconName"]
      206 GETTABLEKS                       R14 R14 K52 ["X"]
      208 SETTABLEKS                       R14 R13 K49 ["icon"]
      210 GETUPVAL                         R14 1
      211 GETTABLEKS                       R14 R14 K20 ["Enums"]
      213 GETTABLEKS                       R14 R14 K53 ["InputSize"]
      215 GETTABLEKS                       R14 R14 K54 ["XSmall"]
      217 SETTABLEKS                       R14 R13 K18 ["size"]
      219 GETUPVAL                         R14 1
      220 GETTABLEKS                       R14 R14 K20 ["Enums"]
      222 GETTABLEKS                       R14 R14 K55 ["ButtonVariant"]
      224 GETTABLEKS                       R14 R14 K56 ["Utility"]
      226 SETTABLEKS                       R14 R13 K50 ["variant"]
      228 GETTABLEKS                       R14 R0 K57 ["OnClose"]
      230 SETTABLEKS                       R14 R13 K37 ["onActivated"]
      232 MOVE                             R14 R6
      233 CALL                             R14 0 1
      234 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      236 GETUPVAL                         R14 9
      237 GETTABLEKS                       R14 R14 K44 ["Alert"]
      239 GETTABLEKS                       R14 R14 K58 ["Close"]
      241 SETTABLEKS                       R14 R13 K38 ["testId"]
      243 CALL                             R11 2 1
      244 JUMP                             ; [+19]
      245 GETUPVAL                         R11 4
      246 GETUPVAL                         R12 11
      247 DUPTABLE                         R13 K63 [{["icon"] = "icons/navigation/close", ["LayoutOrder"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["testId"]}]
      248 MOVE                             R14 R6
      249 CALL                             R14 0 1
      250 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      252 GETTABLEKS                       R14 R0 K57 ["OnClose"]
      254 SETTABLEKS                       R14 R13 K37 ["onActivated"]
      256 GETUPVAL                         R14 9
      257 GETTABLEKS                       R14 R14 K44 ["Alert"]
      259 GETTABLEKS                       R14 R14 K58 ["Close"]
      261 SETTABLEKS                       R14 R13 K38 ["testId"]
      263 CALL                             R11 2 1
      264 SETTABLEKS                       R11 R10 K14 ["CloseButton"]
      266 CALL                             R7 3 -1
      267 RETURN                           R7 -1

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
