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
      110 CALL                             R17 0 1
      111 JUMPIFNOT                        R17 ; [+44]
      112 GETUPVAL                         R16 5
      113 GETUPVAL                         R17 9
      114 DUPTABLE                         R18 K38 [{"name", "style", "size", "variant", "LayoutOrder"}]
      115 GETUPVAL                         R19 3
      116 GETTABLEKS                       R19 R19 K39 ["Enums"]
      118 GETTABLEKS                       R19 R19 K40 ["IconName"]
      120 GETTABLEKS                       R19 R19 K41 ["TriangleExclamation"]
      122 SETTABLEKS                       R19 R18 K34 ["name"]
      124 GETTABLEKS                       R19 R6 K42 ["Color"]
      126 GETTABLEKS                       R19 R19 K43 ["System"]
      128 GETTABLEKS                       R19 R19 K44 ["Warning"]
      130 SETTABLEKS                       R19 R18 K35 ["style"]
      132 GETUPVAL                         R19 3
      133 GETTABLEKS                       R19 R19 K39 ["Enums"]
      135 GETTABLEKS                       R19 R19 K45 ["IconSize"]
      137 GETTABLEKS                       R19 R19 K23 ["Medium"]
      139 SETTABLEKS                       R19 R18 K36 ["size"]
      141 GETUPVAL                         R19 3
      142 GETTABLEKS                       R19 R19 K39 ["Enums"]
      144 GETTABLEKS                       R19 R19 K46 ["IconVariant"]
      146 GETTABLEKS                       R19 R19 K47 ["Filled"]
      148 SETTABLEKS                       R19 R18 K37 ["variant"]
      150 MOVE                             R19 R7
      151 CALL                             R19 0 1
      152 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      154 CALL                             R16 2 1
      155 JUMP                             ; [+8]
      156 GETUPVAL                         R16 5
      157 GETUPVAL                         R17 10
      158 DUPTABLE                         R18 K53 [{["icon"] = "icons/status/warning", ["tag"] = "size-600-600", ["iconTag"] = "size-600-600 content-system-warning", ["LayoutOrder"]}]
      159 MOVE                             R19 R7
      160 CALL                             R19 0 1
      161 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      163 CALL                             R16 2 1
      164 SETTABLEKS                       R16 R15 K30 ["LargeIcon"]
      166 GETUPVAL                         R16 5
      167 GETUPVAL                         R17 11
      168 DUPTABLE                         R18 K56 [{["tag"] = "fill auto-y text-body-medium text-wrap text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      169 GETTABLEKS                       R19 R4 K57 ["ModelQualityWarningLowQualityText"]
      171 SETTABLEKS                       R19 R18 K55 ["Text"]
      173 MOVE                             R19 R7
      174 CALL                             R19 0 1
      175 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      177 CALL                             R16 2 1
      178 SETTABLEKS                       R16 R15 K31 ["Content"]
      180 GETUPVAL                         R17 8
      181 CALL                             R17 0 1
      182 JUMPIFNOT                        R17 ; [+38]
      183 GETUPVAL                         R16 5
      184 GETUPVAL                         R17 12
      185 DUPTABLE                         R18 K59 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      186 GETUPVAL                         R19 3
      187 GETTABLEKS                       R19 R19 K39 ["Enums"]
      189 GETTABLEKS                       R19 R19 K40 ["IconName"]
      191 GETTABLEKS                       R19 R19 K60 ["XSmall"]
      193 SETTABLEKS                       R19 R18 K48 ["icon"]
      195 GETUPVAL                         R19 3
      196 GETTABLEKS                       R19 R19 K39 ["Enums"]
      198 GETTABLEKS                       R19 R19 K61 ["InputSize"]
      200 GETTABLEKS                       R19 R19 K60 ["XSmall"]
      202 SETTABLEKS                       R19 R18 K36 ["size"]
      204 GETUPVAL                         R19 3
      205 GETTABLEKS                       R19 R19 K39 ["Enums"]
      207 GETTABLEKS                       R19 R19 K62 ["ButtonVariant"]
      209 GETTABLEKS                       R19 R19 K63 ["Utility"]
      211 SETTABLEKS                       R19 R18 K37 ["variant"]
      213 SETTABLEKS                       R5 R18 K58 ["onActivated"]
      215 MOVE                             R19 R7
      216 CALL                             R19 0 1
      217 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      219 CALL                             R16 2 1
      220 JUMP                             ; [+10]
      221 GETUPVAL                         R16 5
      222 GETUPVAL                         R17 10
      223 DUPTABLE                         R18 K67 [{["icon"] = "icons/navigation/close_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-medium bg-action-link", ["iconTag"] = "size-400-400 content-emphasis", ["onActivated"], ["LayoutOrder"]}]
      224 SETTABLEKS                       R5 R18 K58 ["onActivated"]
      226 MOVE                             R19 R7
      227 CALL                             R19 0 1
      228 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      230 CALL                             R16 2 1
      231 SETTABLEKS                       R16 R15 K32 ["CloseButton"]
      233 CALL                             R12 3 1
      234 SETTABLEKS                       R12 R11 K25 ["Banner"]
      236 CALL                             R8 3 -1
      237 RETURN                           R8 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["ModelQualityContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["TestIds"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Resources"]
       55 GETTABLEKS                       R8 R8 K17 ["Localization"]
       57 GETTABLEKS                       R8 R8 K18 ["Translator"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Flags"]
       64 GETTABLEKS                       R9 R9 K20 ["FFlagAssistantUseBuilderIcons"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R2 K21 ["Icon"]
       69 GETTABLEKS                       R10 R2 K22 ["IconButton"]
       71 GETTABLEKS                       R11 R2 K23 ["Text"]
       73 GETTABLEKS                       R12 R2 K24 ["View"]
       75 GETTABLEKS                       R13 R4 K25 ["createElement"]
       77 GETTABLEKS                       R14 R5 K26 ["createNextOrder"]
       79 DUPCLOSURE                       R15 K27 [PROTO_3]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R10
       93 RETURN                           R15 1
