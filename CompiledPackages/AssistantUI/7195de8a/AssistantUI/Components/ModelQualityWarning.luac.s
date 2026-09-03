PROTO_0:
        0 DUPTABLE                         R0 K1 [{"ModelQualityWarningLowQualityText"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ModelQualityWarning"]
        3 LOADK                            R4 K3 ["Text"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ModelQualityWarningLowQualityText"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["modelQuality"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ModelQuality"]
        6 GETTABLEKS                       R2 R2 K2 ["Low"]
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 GETUPVAL                         R1 2
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       15 DUPCLOSURE                       R5 K4 [PROTO_0]
       16 CAPTURE                          UPVAL U2
       17 NEWTABLE                         R6 0 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K5 ["locale"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R7 0 1
       34 MOVE                             R8 R1
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       41 NEWCLOSURE                       R6 P2
       42 CAPTURE                          VAL R3
       43 NEWTABLE                         R7 0 0
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K8 ["Hooks"]
       49 GETTABLEKS                       R6 R6 K9 ["useTokens"]
       51 CALL                             R6 0 1
       52 JUMPIF                           R2 ; [+1]
       53 RETURN                           R0 0
       54 GETUPVAL                         R7 4
       55 CALL                             R7 0 1
       56 GETUPVAL                         R8 5
       57 GETUPVAL                         R9 6
       58 DUPTABLE                         R10 K16 [{"tag", "AnchorPoint", "Size", "Position", "ZIndex", "testId"}]
       59 NEWTABLE                         R11 2 0
       61 LOADB                            R12 1
       62 SETTABLEKS                       R12 R11 K17 ["auto-y padding-y-xsmall x-default-transparency"]
       64 LOADB                            R12 1
       65 SETTABLEKS                       R12 R11 K18 ["bg-surface-100"]
       67 SETTABLEKS                       R11 R10 K10 ["tag"]
       69 GETTABLEKS                       R11 R0 K11 ["AnchorPoint"]
       71 SETTABLEKS                       R11 R10 K11 ["AnchorPoint"]
       73 GETIMPORT                        R11 K21 [UDim2.new]
       75 LOADN                            R12 1
       76 LOADN                            R14 -2
       77 GETTABLEKS                       R15 R6 K22 ["Padding"]
       79 GETTABLEKS                       R15 R15 K23 ["Medium"]
       81 MUL                              R13 R14 R15
       82 LOADN                            R14 0
       83 LOADN                            R15 0
       84 CALL                             R11 4 1
       85 SETTABLEKS                       R11 R10 K12 ["Size"]
       87 GETTABLEKS                       R11 R0 K13 ["Position"]
       89 SETTABLEKS                       R11 R10 K13 ["Position"]
       91 GETTABLEKS                       R11 R0 K14 ["ZIndex"]
       93 SETTABLEKS                       R11 R10 K14 ["ZIndex"]
       95 GETUPVAL                         R11 7
       96 GETTABLEKS                       R11 R11 K24 ["ModelQualityWarning"]
       98 SETTABLEKS                       R11 R10 K15 ["testId"]
      100 DUPTABLE                         R11 K26 [{"Banner"}]
      101 GETUPVAL                         R12 5
      102 GETUPVAL                         R13 6
      103 DUPTABLE                         R14 K29 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-large stroke-default radius-medium bg-shift-100", ["LayoutOrder"]}]
      104 MOVE                             R15 R7
      105 CALL                             R15 0 1
      106 SETTABLEKS                       R15 R14 K28 ["LayoutOrder"]
      108 DUPTABLE                         R15 K33 [{"LargeIcon", "Content", "CloseButton"}]
      109 GETUPVAL                         R17 8
      110 GETTABLEKS                       R17 R17 K34 ["FFlagAssistantUseBuilderIcons"]
      112 JUMPIFNOT                        R17 ; [+44]
      113 GETUPVAL                         R16 5
      114 GETUPVAL                         R17 9
      115 DUPTABLE                         R18 K39 [{"name", "style", "size", "variant", "LayoutOrder"}]
      116 GETUPVAL                         R19 3
      117 GETTABLEKS                       R19 R19 K40 ["Enums"]
      119 GETTABLEKS                       R19 R19 K41 ["IconName"]
      121 GETTABLEKS                       R19 R19 K42 ["TriangleExclamation"]
      123 SETTABLEKS                       R19 R18 K35 ["name"]
      125 GETTABLEKS                       R19 R6 K43 ["Color"]
      127 GETTABLEKS                       R19 R19 K44 ["System"]
      129 GETTABLEKS                       R19 R19 K45 ["Warning"]
      131 SETTABLEKS                       R19 R18 K36 ["style"]
      133 GETUPVAL                         R19 3
      134 GETTABLEKS                       R19 R19 K40 ["Enums"]
      136 GETTABLEKS                       R19 R19 K46 ["IconSize"]
      138 GETTABLEKS                       R19 R19 K23 ["Medium"]
      140 SETTABLEKS                       R19 R18 K37 ["size"]
      142 GETUPVAL                         R19 3
      143 GETTABLEKS                       R19 R19 K40 ["Enums"]
      145 GETTABLEKS                       R19 R19 K47 ["IconVariant"]
      147 GETTABLEKS                       R19 R19 K48 ["Filled"]
      149 SETTABLEKS                       R19 R18 K38 ["variant"]
      151 MOVE                             R19 R7
      152 CALL                             R19 0 1
      153 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      155 CALL                             R16 2 1
      156 JUMP                             ; [+8]
      157 GETUPVAL                         R16 5
      158 GETUPVAL                         R17 10
      159 DUPTABLE                         R18 K54 [{["icon"] = "icons/status/warning", ["tag"] = "size-600-600", ["iconTag"] = "size-600-600 content-system-warning", ["LayoutOrder"]}]
      160 MOVE                             R19 R7
      161 CALL                             R19 0 1
      162 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      164 CALL                             R16 2 1
      165 SETTABLEKS                       R16 R15 K30 ["LargeIcon"]
      167 GETUPVAL                         R16 5
      168 GETUPVAL                         R17 11
      169 DUPTABLE                         R18 K57 [{["tag"] = "fill auto-y text-body-medium text-wrap text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      170 GETTABLEKS                       R19 R4 K58 ["ModelQualityWarningLowQualityText"]
      172 SETTABLEKS                       R19 R18 K56 ["Text"]
      174 MOVE                             R19 R7
      175 CALL                             R19 0 1
      176 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      178 CALL                             R16 2 1
      179 SETTABLEKS                       R16 R15 K31 ["Content"]
      181 GETUPVAL                         R17 8
      182 GETTABLEKS                       R17 R17 K34 ["FFlagAssistantUseBuilderIcons"]
      184 JUMPIFNOT                        R17 ; [+38]
      185 GETUPVAL                         R16 5
      186 GETUPVAL                         R17 12
      187 DUPTABLE                         R18 K60 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      188 GETUPVAL                         R19 3
      189 GETTABLEKS                       R19 R19 K40 ["Enums"]
      191 GETTABLEKS                       R19 R19 K41 ["IconName"]
      193 GETTABLEKS                       R19 R19 K61 ["XSmall"]
      195 SETTABLEKS                       R19 R18 K49 ["icon"]
      197 GETUPVAL                         R19 3
      198 GETTABLEKS                       R19 R19 K40 ["Enums"]
      200 GETTABLEKS                       R19 R19 K62 ["InputSize"]
      202 GETTABLEKS                       R19 R19 K61 ["XSmall"]
      204 SETTABLEKS                       R19 R18 K37 ["size"]
      206 GETUPVAL                         R19 3
      207 GETTABLEKS                       R19 R19 K40 ["Enums"]
      209 GETTABLEKS                       R19 R19 K63 ["ButtonVariant"]
      211 GETTABLEKS                       R19 R19 K64 ["Utility"]
      213 SETTABLEKS                       R19 R18 K38 ["variant"]
      215 SETTABLEKS                       R5 R18 K59 ["onActivated"]
      217 MOVE                             R19 R7
      218 CALL                             R19 0 1
      219 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      221 CALL                             R16 2 1
      222 JUMP                             ; [+10]
      223 GETUPVAL                         R16 5
      224 GETUPVAL                         R17 10
      225 DUPTABLE                         R18 K68 [{["icon"] = "icons/navigation/close_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["onActivated"], ["LayoutOrder"]}]
      226 SETTABLEKS                       R5 R18 K59 ["onActivated"]
      228 MOVE                             R19 R7
      229 CALL                             R19 0 1
      230 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      232 CALL                             R16 2 1
      233 SETTABLEKS                       R16 R15 K32 ["CloseButton"]
      235 CALL                             R12 3 1
      236 SETTABLEKS                       R12 R11 K25 ["Banner"]
      238 CALL                             R8 3 -1
      239 RETURN                           R8 -1

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
       28 GETTABLEKS                       R5 R0 K6 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["ModelQualityContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["TestIds"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K17 ["Resources"]
       60 GETTABLEKS                       R9 R9 K18 ["Localization"]
       62 GETTABLEKS                       R9 R9 K19 ["Translator"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R3 K20 ["Icon"]
       67 GETTABLEKS                       R10 R3 K21 ["IconButton"]
       69 GETTABLEKS                       R11 R3 K22 ["Text"]
       71 GETTABLEKS                       R12 R3 K23 ["View"]
       73 GETTABLEKS                       R13 R5 K24 ["createElement"]
       75 GETTABLEKS                       R14 R6 K25 ["createNextOrder"]
       77 DUPCLOSURE                       R15 K26 [PROTO_3]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R10
       91 RETURN                           R15 1
