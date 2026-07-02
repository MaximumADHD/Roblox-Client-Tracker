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
       12 DUPTABLE                         R8 K4 [{["tag"] = "auto-xy size-full col align-y-center align-x-center gap-small", ["ref"]}]
       13 SETTABLEKS                       R1 R8 K3 ["ref"]
       15 CALL                             R6 2 1
       16 DUPTABLE                         R7 K8 [{"Icon", "Text", "Button"}]
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R8 R8 K0 ["createElement"]
       20 GETUPVAL                         R9 6
       21 DUPTABLE                         R10 K14 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 1}]
       22 GETTABLEKS                       R11 R2 K15 ["icon"]
       24 GETTABLEKS                       R11 R11 K9 ["name"]
       26 SETTABLEKS                       R11 R10 K9 ["name"]
       28 GETTABLEKS                       R11 R2 K15 ["icon"]
       30 GETTABLEKS                       R11 R11 K10 ["size"]
       32 SETTABLEKS                       R11 R10 K10 ["size"]
       34 GETTABLEKS                       R11 R3 K16 ["Color"]
       36 GETTABLEKS                       R11 R11 K17 ["Content"]
       38 GETTABLEKS                       R11 R11 K18 ["Default"]
       40 SETTABLEKS                       R11 R10 K11 ["style"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K5 ["Icon"]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K0 ["createElement"]
       48 GETUPVAL                         R9 7
       49 DUPTABLE                         R10 K22 [{["Text"], ["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y text-body-large content-default text-wrap text-align-x-center", ["testId"]}]
       50 GETTABLEKS                       R11 R2 K23 ["text"]
       52 SETTABLEKS                       R11 R10 K6 ["Text"]
       54 LOADK                            R12 K24 ["%*--text"]
       55 GETTABLEKS                       R14 R2 K21 ["testId"]
       57 NAMECALL                         R12 R12 K25 ["format"]
       59 CALL                             R12 2 1
       60 MOVE                             R11 R12
       61 SETTABLEKS                       R11 R10 K21 ["testId"]
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K6 ["Text"]
       66 GETTABLEKS                       R9 R2 K26 ["button"]
       68 JUMPIFNOT                        R9 ; [+30]
       69 GETTABLEKS                       R9 R2 K26 ["button"]
       71 GETTABLEKS                       R9 R9 K27 ["onActivated"]
       73 JUMPIFNOT                        R9 ; [+25]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K0 ["createElement"]
       77 GETUPVAL                         R9 8
       78 DUPTABLE                         R10 K29 [{["text"], ["icon"], ["onActivated"], ["LayoutOrder"] = 3}]
       79 GETTABLEKS                       R11 R2 K26 ["button"]
       81 GETTABLEKS                       R11 R11 K23 ["text"]
       83 SETTABLEKS                       R11 R10 K23 ["text"]
       85 GETTABLEKS                       R11 R2 K26 ["button"]
       87 GETTABLEKS                       R11 R11 K15 ["icon"]
       89 SETTABLEKS                       R11 R10 K15 ["icon"]
       91 GETTABLEKS                       R11 R2 K26 ["button"]
       93 GETTABLEKS                       R11 R11 K27 ["onActivated"]
       95 SETTABLEKS                       R11 R10 K27 ["onActivated"]
       97 CALL                             R8 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R8
      100 SETTABLEKS                       R8 R7 K7 ["Button"]
      102 CALL                             R4 3 -1
      103 RETURN                           R4 -1

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
       88 DUPTABLE                         R13 K29 [{["icon"], ["text"], ["button"], ["testId"] = "--foundation-empty"}]
       89 DUPTABLE                         R14 K33 [{["name"] = "icons/status/oof_xlarge", ["size"]}]
       90 GETTABLEKS                       R15 R5 K34 ["Large"]
       92 SETTABLEKS                       R15 R14 K32 ["size"]
       94 SETTABLEKS                       R14 R13 K24 ["icon"]
       96 LOADK                            R16 K35 ["CommonUI.Controls.NoResultsFound"]
       97 NAMECALL                         R14 R8 K36 ["FormatByKey"]
       99 CALL                             R14 2 1
      100 SETTABLEKS                       R14 R13 K25 ["text"]
      102 DUPTABLE                         R14 K40 [{["icon"] = "icons/common/refresh", ["text"], ["onActivated"] = }]
      103 LOADK                            R17 K41 ["CommonUI.Controls.Action.Refresh"]
      104 NAMECALL                         R15 R8 K36 ["FormatByKey"]
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K25 ["text"]
      109 SETTABLEKS                       R14 R13 K26 ["button"]
      111 DUPCLOSURE                       R14 K42 [PROTO_0]
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R3
      121 GETTABLEKS                       R15 R2 K43 ["memo"]
      123 GETTABLEKS                       R16 R2 K44 ["forwardRef"]
      125 MOVE                             R17 R14
      126 CALL                             R16 1 -1
      127 CALL                             R15 -1 -1
      128 RETURN                           R15 -1
