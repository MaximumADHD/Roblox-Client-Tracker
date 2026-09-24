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
      109 GETUPVAL                         R16 5
      110 GETUPVAL                         R17 8
      111 DUPTABLE                         R18 K38 [{"name", "style", "size", "variant", "LayoutOrder"}]
      112 GETUPVAL                         R19 3
      113 GETTABLEKS                       R19 R19 K39 ["Enums"]
      115 GETTABLEKS                       R19 R19 K40 ["IconName"]
      117 GETTABLEKS                       R19 R19 K41 ["TriangleExclamation"]
      119 SETTABLEKS                       R19 R18 K34 ["name"]
      121 GETTABLEKS                       R19 R6 K42 ["Color"]
      123 GETTABLEKS                       R19 R19 K43 ["System"]
      125 GETTABLEKS                       R19 R19 K44 ["Warning"]
      127 SETTABLEKS                       R19 R18 K35 ["style"]
      129 GETUPVAL                         R19 3
      130 GETTABLEKS                       R19 R19 K39 ["Enums"]
      132 GETTABLEKS                       R19 R19 K45 ["IconSize"]
      134 GETTABLEKS                       R19 R19 K23 ["Medium"]
      136 SETTABLEKS                       R19 R18 K36 ["size"]
      138 GETUPVAL                         R19 3
      139 GETTABLEKS                       R19 R19 K39 ["Enums"]
      141 GETTABLEKS                       R19 R19 K46 ["IconVariant"]
      143 GETTABLEKS                       R19 R19 K47 ["Filled"]
      145 SETTABLEKS                       R19 R18 K37 ["variant"]
      147 MOVE                             R19 R7
      148 CALL                             R19 0 1
      149 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      151 CALL                             R16 2 1
      152 SETTABLEKS                       R16 R15 K30 ["LargeIcon"]
      154 GETUPVAL                         R16 5
      155 GETUPVAL                         R17 9
      156 DUPTABLE                         R18 K50 [{["tag"] = "fill auto-y text-body-medium text-wrap text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      157 GETTABLEKS                       R19 R4 K51 ["ModelQualityWarningLowQualityText"]
      159 SETTABLEKS                       R19 R18 K49 ["Text"]
      161 MOVE                             R19 R7
      162 CALL                             R19 0 1
      163 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K31 ["Content"]
      168 GETUPVAL                         R16 5
      169 GETUPVAL                         R17 10
      170 DUPTABLE                         R18 K54 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      171 GETUPVAL                         R19 3
      172 GETTABLEKS                       R19 R19 K39 ["Enums"]
      174 GETTABLEKS                       R19 R19 K40 ["IconName"]
      176 GETTABLEKS                       R19 R19 K55 ["XSmall"]
      178 SETTABLEKS                       R19 R18 K52 ["icon"]
      180 GETUPVAL                         R19 3
      181 GETTABLEKS                       R19 R19 K39 ["Enums"]
      183 GETTABLEKS                       R19 R19 K56 ["InputSize"]
      185 GETTABLEKS                       R19 R19 K55 ["XSmall"]
      187 SETTABLEKS                       R19 R18 K36 ["size"]
      189 GETUPVAL                         R19 3
      190 GETTABLEKS                       R19 R19 K39 ["Enums"]
      192 GETTABLEKS                       R19 R19 K57 ["ButtonVariant"]
      194 GETTABLEKS                       R19 R19 K58 ["Utility"]
      196 SETTABLEKS                       R19 R18 K37 ["variant"]
      198 SETTABLEKS                       R5 R18 K53 ["onActivated"]
      200 MOVE                             R19 R7
      201 CALL                             R19 0 1
      202 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      204 CALL                             R16 2 1
      205 SETTABLEKS                       R16 R15 K32 ["CloseButton"]
      207 CALL                             R12 3 1
      208 SETTABLEKS                       R12 R11 K25 ["Banner"]
      210 CALL                             R8 3 -1
      211 RETURN                           R8 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["ModelQualityContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Resources"]
       48 GETTABLEKS                       R7 R7 K16 ["Localization"]
       50 GETTABLEKS                       R7 R7 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K18 ["Icon"]
       55 GETTABLEKS                       R8 R1 K19 ["IconButton"]
       57 GETTABLEKS                       R9 R1 K20 ["Text"]
       59 GETTABLEKS                       R10 R1 K21 ["View"]
       61 GETTABLEKS                       R11 R3 K22 ["createElement"]
       63 GETTABLEKS                       R12 R4 K23 ["createNextOrder"]
       65 DUPCLOSURE                       R13 K24 [PROTO_3]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R8
       77 RETURN                           R13 1
