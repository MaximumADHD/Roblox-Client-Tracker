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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["Hooks"]
        7 GETTABLEKS                       R3 R3 K3 ["useTokens"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R1
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R2
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 2
       33 CALL                             R6 0 1
       34 GETUPVAL                         R7 3
       35 GETUPVAL                         R8 4
       36 DUPTABLE                         R9 K8 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-x-medium padding-y-small stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
       37 GETTABLEKS                       R10 R0 K7 ["LayoutOrder"]
       39 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       41 DUPTABLE                         R10 K15 [{"Icon", "Text", "TextButton", "SecondaryTextButton", "Spacer", "CloseButton"}]
       42 GETUPVAL                         R11 3
       43 GETUPVAL                         R12 5
       44 DUPTABLE                         R13 K19 [{"name", "style", "size", "LayoutOrder"}]
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R14 R14 K20 ["Enums"]
       48 GETTABLEKS                       R14 R14 K21 ["IconName"]
       50 GETTABLEKS                       R14 R14 K22 ["TriangleExclamation"]
       52 SETTABLEKS                       R14 R13 K16 ["name"]
       54 GETTABLEKS                       R14 R3 K23 ["Color"]
       56 GETTABLEKS                       R14 R14 K24 ["System"]
       58 GETTABLEKS                       R14 R14 K25 ["Warning"]
       60 SETTABLEKS                       R14 R13 K17 ["style"]
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K20 ["Enums"]
       65 GETTABLEKS                       R14 R14 K26 ["IconSize"]
       67 GETTABLEKS                       R14 R14 K27 ["Medium"]
       69 SETTABLEKS                       R14 R13 K18 ["size"]
       71 MOVE                             R14 R6
       72 CALL                             R14 0 1
       73 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K9 ["Icon"]
       78 GETUPVAL                         R11 3
       79 GETUPVAL                         R12 6
       80 DUPTABLE                         R13 K29 [{["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
       81 GETTABLEKS                       R14 R0 K10 ["Text"]
       83 SETTABLEKS                       R14 R13 K10 ["Text"]
       85 MOVE                             R14 R6
       86 CALL                             R14 0 1
       87 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K10 ["Text"]
       92 MOVE                             R11 R1
       93 JUMPIFNOT                        R11 ; [+33]
       94 GETUPVAL                         R11 3
       95 GETUPVAL                         R12 6
       96 DUPTABLE                         R13 K35 [{["tag"], ["Text"], ["RichText"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
       97 SETTABLEKS                       R4 R13 K5 ["tag"]
       99 LOADK                            R14 K36 ["<u>%*</u>"]
      100 GETTABLEKS                       R16 R1 K10 ["Text"]
      102 NAMECALL                         R14 R14 K37 ["format"]
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K10 ["Text"]
      107 GETTABLEKS                       R14 R1 K38 ["Disabled"]
      109 SETTABLEKS                       R14 R13 K32 ["isDisabled"]
      111 GETTABLEKS                       R14 R1 K39 ["OnClick"]
      113 SETTABLEKS                       R14 R13 K33 ["onActivated"]
      115 MOVE                             R14 R6
      116 CALL                             R14 0 1
      117 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      119 GETUPVAL                         R14 7
      120 GETTABLEKS                       R14 R14 K40 ["Alert"]
      122 GETTABLEKS                       R14 R14 K41 ["Continue"]
      124 SETTABLEKS                       R14 R13 K34 ["testId"]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K11 ["TextButton"]
      129 MOVE                             R11 R2
      130 JUMPIFNOT                        R11 ; [+33]
      131 GETUPVAL                         R11 3
      132 GETUPVAL                         R12 6
      133 DUPTABLE                         R13 K35 [{["tag"], ["Text"], ["RichText"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      134 SETTABLEKS                       R5 R13 K5 ["tag"]
      136 LOADK                            R14 K36 ["<u>%*</u>"]
      137 GETTABLEKS                       R16 R2 K10 ["Text"]
      139 NAMECALL                         R14 R14 K37 ["format"]
      141 CALL                             R14 2 1
      142 SETTABLEKS                       R14 R13 K10 ["Text"]
      144 GETTABLEKS                       R14 R2 K38 ["Disabled"]
      146 SETTABLEKS                       R14 R13 K32 ["isDisabled"]
      148 GETTABLEKS                       R14 R2 K39 ["OnClick"]
      150 SETTABLEKS                       R14 R13 K33 ["onActivated"]
      152 MOVE                             R14 R6
      153 CALL                             R14 0 1
      154 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      156 GETUPVAL                         R14 7
      157 GETTABLEKS                       R14 R14 K40 ["Alert"]
      159 GETTABLEKS                       R14 R14 K42 ["EditApiKeys"]
      161 SETTABLEKS                       R14 R13 K34 ["testId"]
      163 CALL                             R11 2 1
      164 SETTABLEKS                       R11 R10 K12 ["SecondaryTextButton"]
      166 GETUPVAL                         R11 3
      167 GETUPVAL                         R12 4
      168 DUPTABLE                         R13 K44 [{["tag"] = "fill", ["LayoutOrder"]}]
      169 MOVE                             R14 R6
      170 CALL                             R14 0 1
      171 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      173 CALL                             R11 2 1
      174 SETTABLEKS                       R11 R10 K13 ["Spacer"]
      176 GETUPVAL                         R11 3
      177 GETUPVAL                         R12 8
      178 DUPTABLE                         R13 K47 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      179 GETUPVAL                         R14 0
      180 GETTABLEKS                       R14 R14 K20 ["Enums"]
      182 GETTABLEKS                       R14 R14 K21 ["IconName"]
      184 GETTABLEKS                       R14 R14 K48 ["X"]
      186 SETTABLEKS                       R14 R13 K45 ["icon"]
      188 GETUPVAL                         R14 0
      189 GETTABLEKS                       R14 R14 K20 ["Enums"]
      191 GETTABLEKS                       R14 R14 K49 ["InputSize"]
      193 GETTABLEKS                       R14 R14 K50 ["XSmall"]
      195 SETTABLEKS                       R14 R13 K18 ["size"]
      197 GETUPVAL                         R14 0
      198 GETTABLEKS                       R14 R14 K20 ["Enums"]
      200 GETTABLEKS                       R14 R14 K51 ["ButtonVariant"]
      202 GETTABLEKS                       R14 R14 K52 ["Utility"]
      204 SETTABLEKS                       R14 R13 K46 ["variant"]
      206 GETTABLEKS                       R14 R0 K53 ["OnClose"]
      208 SETTABLEKS                       R14 R13 K33 ["onActivated"]
      210 MOVE                             R14 R6
      211 CALL                             R14 0 1
      212 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      214 GETUPVAL                         R14 7
      215 GETTABLEKS                       R14 R14 K40 ["Alert"]
      217 GETTABLEKS                       R14 R14 K54 ["Close"]
      219 SETTABLEKS                       R14 R13 K34 ["testId"]
      221 CALL                             R11 2 1
      222 SETTABLEKS                       R11 R10 K14 ["CloseButton"]
      224 CALL                             R7 3 -1
      225 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["Icon"]
       37 GETTABLEKS                       R6 R1 K13 ["IconButton"]
       39 GETTABLEKS                       R7 R1 K14 ["Text"]
       41 GETTABLEKS                       R8 R1 K15 ["View"]
       43 GETTABLEKS                       R9 R3 K16 ["createNextOrder"]
       45 GETTABLEKS                       R10 R2 K17 ["createElement"]
       47 DUPCLOSURE                       R11 K18 [PROTO_2]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 GETTABLEKS                       R12 R2 K19 ["memo"]
       59 MOVE                             R13 R11
       60 CALL                             R12 1 -1
       61 RETURN                           R12 -1
