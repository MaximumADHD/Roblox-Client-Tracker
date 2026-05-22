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
       62 SETTABLEKS                       R12 R11 K17 ["auto-y x-default-transparency padding-y-xsmall"]
       64 LOADB                            R12 1
       65 SETTABLEKS                       R12 R11 K18 ["bg-surface-100"]
       67 SETTABLEKS                       R11 R10 K10 ["tag"]
       69 GETTABLEKS                       R11 R0 K11 ["AnchorPoint"]
       71 SETTABLEKS                       R11 R10 K11 ["AnchorPoint"]
       73 GETIMPORT                        R11 K21 [UDim2.new]
       75 LOADN                            R12 1
       76 LOADN                            R14 254
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
      103 DUPTABLE                         R14 K28 [{"tag", "LayoutOrder"}]
      104 LOADK                            R15 K29 ["row size-full-0 auto-y radius-medium padding-large gap-medium bg-shift-100 stroke-default align-y-center"]
      105 SETTABLEKS                       R15 R14 K10 ["tag"]
      107 MOVE                             R15 R7
      108 CALL                             R15 0 1
      109 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      111 DUPTABLE                         R15 K33 [{"LargeIcon", "Content", "CloseButton"}]
      112 GETUPVAL                         R16 5
      113 GETUPVAL                         R17 8
      114 DUPTABLE                         R18 K36 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      115 LOADK                            R19 K37 ["icons/status/warning"]
      116 SETTABLEKS                       R19 R18 K34 ["icon"]
      118 LOADK                            R19 K38 ["size-600-600"]
      119 SETTABLEKS                       R19 R18 K10 ["tag"]
      121 LOADK                            R19 K39 ["size-600-600 content-system-warning"]
      122 SETTABLEKS                       R19 R18 K35 ["iconTag"]
      124 MOVE                             R19 R7
      125 CALL                             R19 0 1
      126 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      128 CALL                             R16 2 1
      129 SETTABLEKS                       R16 R15 K30 ["LargeIcon"]
      131 GETUPVAL                         R16 5
      132 GETUPVAL                         R17 9
      133 DUPTABLE                         R18 K41 [{"tag", "Text", "LayoutOrder"}]
      134 LOADK                            R19 K42 ["fill auto-y text-wrap text-align-x-left text-body-medium content-emphasis text-truncate-end"]
      135 SETTABLEKS                       R19 R18 K10 ["tag"]
      137 GETTABLEKS                       R19 R4 K43 ["ModelQualityWarningLowQualityText"]
      139 SETTABLEKS                       R19 R18 K40 ["Text"]
      141 MOVE                             R19 R7
      142 CALL                             R19 0 1
      143 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      145 CALL                             R16 2 1
      146 SETTABLEKS                       R16 R15 K31 ["Content"]
      148 GETUPVAL                         R16 5
      149 GETUPVAL                         R17 8
      150 DUPTABLE                         R18 K45 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder"}]
      151 LOADK                            R19 K46 ["icons/navigation/close_small"]
      152 SETTABLEKS                       R19 R18 K34 ["icon"]
      154 LOADK                            R19 K47 ["size-600-600 radius-medium bg-action-link align-x-center align-y-center"]
      155 SETTABLEKS                       R19 R18 K10 ["tag"]
      157 LOADK                            R19 K48 ["size-400-400 content-emphasis"]
      158 SETTABLEKS                       R19 R18 K35 ["iconTag"]
      160 SETTABLEKS                       R5 R18 K44 ["onActivated"]
      162 MOVE                             R19 R7
      163 CALL                             R19 0 1
      164 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      166 CALL                             R16 2 1
      167 SETTABLEKS                       R16 R15 K32 ["CloseButton"]
      169 CALL                             R12 3 1
      170 SETTABLEKS                       R12 R11 K25 ["Banner"]
      172 CALL                             R8 3 -1
      173 RETURN                           R8 -1

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
       60 GETTABLEKS                       R8 R2 K19 ["Text"]
       62 GETTABLEKS                       R9 R2 K20 ["View"]
       64 GETTABLEKS                       R10 R4 K21 ["createElement"]
       66 GETTABLEKS                       R11 R5 K22 ["createNextOrder"]
       68 DUPCLOSURE                       R12 K23 [PROTO_3]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R8
       79 RETURN                           R12 1
