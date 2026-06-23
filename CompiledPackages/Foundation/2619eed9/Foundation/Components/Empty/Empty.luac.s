PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 4
       10 GETUPVAL                         R6 5
       11 MOVE                             R7 R2
       12 DUPTABLE                         R8 K3 [{"tag", "ref"}]
       13 LOADK                            R9 K4 ["col align-x-center align-y-center gap-small size-full auto-xy"]
       14 SETTABLEKS                       R9 R8 K1 ["tag"]
       16 SETTABLEKS                       R1 R8 K2 ["ref"]
       18 CALL                             R6 2 1
       19 DUPTABLE                         R7 K8 [{"Icon", "Text", "Button"}]
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K0 ["createElement"]
       23 GETUPVAL                         R9 6
       24 DUPTABLE                         R10 K13 [{"name", "size", "style", "LayoutOrder"}]
       25 GETTABLEKS                       R11 R2 K14 ["icon"]
       27 GETTABLEKS                       R11 R11 K9 ["name"]
       29 SETTABLEKS                       R11 R10 K9 ["name"]
       31 GETTABLEKS                       R11 R2 K14 ["icon"]
       33 GETTABLEKS                       R11 R11 K10 ["size"]
       35 SETTABLEKS                       R11 R10 K10 ["size"]
       37 GETTABLEKS                       R11 R3 K15 ["Color"]
       39 GETTABLEKS                       R11 R11 K16 ["Content"]
       41 GETTABLEKS                       R11 R11 K17 ["Default"]
       43 SETTABLEKS                       R11 R10 K11 ["style"]
       45 LOADN                            R11 1
       46 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K5 ["Icon"]
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K0 ["createElement"]
       54 GETUPVAL                         R9 7
       55 DUPTABLE                         R10 K19 [{"Text", "LayoutOrder", "tag", "testId"}]
       56 GETTABLEKS                       R11 R2 K20 ["text"]
       58 SETTABLEKS                       R11 R10 K6 ["Text"]
       60 LOADN                            R11 2
       61 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       63 LOADK                            R11 K21 ["size-full-0 auto-y text-body-large text-wrap text-align-x-center content-default"]
       64 SETTABLEKS                       R11 R10 K1 ["tag"]
       66 LOADK                            R12 K22 ["%*--text"]
       67 GETTABLEKS                       R14 R2 K18 ["testId"]
       69 NAMECALL                         R12 R12 K23 ["format"]
       71 CALL                             R12 2 1
       72 MOVE                             R11 R12
       73 SETTABLEKS                       R11 R10 K18 ["testId"]
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K6 ["Text"]
       78 GETTABLEKS                       R9 R2 K24 ["button"]
       80 JUMPIFNOT                        R9 ; [+33]
       81 GETTABLEKS                       R9 R2 K24 ["button"]
       83 GETTABLEKS                       R9 R9 K25 ["onActivated"]
       85 JUMPIFNOT                        R9 ; [+28]
       86 GETUPVAL                         R8 3
       87 GETTABLEKS                       R8 R8 K0 ["createElement"]
       89 GETUPVAL                         R9 8
       90 DUPTABLE                         R10 K26 [{"text", "icon", "onActivated", "LayoutOrder"}]
       91 GETTABLEKS                       R11 R2 K24 ["button"]
       93 GETTABLEKS                       R11 R11 K20 ["text"]
       95 SETTABLEKS                       R11 R10 K20 ["text"]
       97 GETTABLEKS                       R11 R2 K24 ["button"]
       99 GETTABLEKS                       R11 R11 K14 ["icon"]
      101 SETTABLEKS                       R11 R10 K14 ["icon"]
      103 GETTABLEKS                       R11 R2 K24 ["button"]
      105 GETTABLEKS                       R11 R11 K25 ["onActivated"]
      107 SETTABLEKS                       R11 R10 K25 ["onActivated"]
      109 LOADN                            R11 3
      110 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
      112 CALL                             R8 2 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R8
      115 SETTABLEKS                       R8 R7 K7 ["Button"]
      117 CALL                             R4 3 -1
      118 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Button"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Icon"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["IconSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Text"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["View"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["Localization"]
       55 GETTABLEKS                       R9 R9 K17 ["Translator"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K8 ["Components"]
       62 GETTABLEKS                       R10 R10 K18 ["Types"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K19 ["Providers"]
       69 GETTABLEKS                       R11 R11 K20 ["Style"]
       71 GETTABLEKS                       R11 R11 K21 ["useTokens"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K15 ["Utility"]
       78 GETTABLEKS                       R12 R12 K22 ["withCommonProps"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K15 ["Utility"]
       85 GETTABLEKS                       R13 R13 K23 ["withDefaults"]
       87 CALL                             R12 1 1
       88 DUPTABLE                         R13 K28 [{"icon", "text", "button", "testId"}]
       89 DUPTABLE                         R14 K31 [{"name", "size"}]
       90 LOADK                            R15 K32 ["icons/status/oof_xlarge"]
       91 SETTABLEKS                       R15 R14 K29 ["name"]
       93 GETTABLEKS                       R15 R5 K33 ["Large"]
       95 SETTABLEKS                       R15 R14 K30 ["size"]
       97 SETTABLEKS                       R14 R13 K24 ["icon"]
       99 LOADK                            R16 K34 ["CommonUI.Controls.NoResultsFound"]
      100 NAMECALL                         R14 R8 K35 ["FormatByKey"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K25 ["text"]
      105 DUPTABLE                         R14 K37 [{"icon", "text", "onActivated"}]
      106 LOADK                            R15 K38 ["icons/common/refresh"]
      107 SETTABLEKS                       R15 R14 K24 ["icon"]
      109 LOADK                            R17 K39 ["CommonUI.Controls.Action.Refresh"]
      110 NAMECALL                         R15 R8 K35 ["FormatByKey"]
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K25 ["text"]
      115 LOADNIL                          R15
      116 SETTABLEKS                       R15 R14 K36 ["onActivated"]
      118 SETTABLEKS                       R14 R13 K26 ["button"]
      120 LOADK                            R14 K40 ["--foundation-empty"]
      121 SETTABLEKS                       R14 R13 K27 ["testId"]
      123 DUPCLOSURE                       R14 K41 [PROTO_0]
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R3
      133 GETTABLEKS                       R15 R2 K42 ["memo"]
      135 GETTABLEKS                       R16 R2 K43 ["forwardRef"]
      137 MOVE                             R17 R14
      138 CALL                             R16 1 -1
      139 CALL                             R15 -1 -1
      140 RETURN                           R15 -1
