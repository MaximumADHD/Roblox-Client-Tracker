PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["plugin"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["BlockingDialog requires a Plugin."]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R0 K4 ["theme"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K5 ["new"]
       19 DUPTABLE                         R3 K9 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K10 ["PLUGIN_NAME"]
       23 SETTABLEKS                       R4 R3 K6 ["pluginName"]
       25 GETUPVAL                         R4 3
       26 SETTABLEKS                       R4 R3 K7 ["stringResourceTable"]
       28 GETUPVAL                         R4 4
       29 SETTABLEKS                       R4 R3 K8 ["translationResourceTable"]
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R0 K11 ["localization"]
       34 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["theme"]
        4 GETTABLEKS                       R3 R0 K2 ["localization"]
        6 GETTABLEKS                       R4 R1 K3 ["plugin"]
        8 GETTABLEKS                       R6 R1 K5 ["TitleKey"]
       10 ORK                              R5 R6 K4 ["Error"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K6 ["Dictionary"]
       14 GETTABLEKS                       R6 R6 K7 ["join"]
       16 MOVE                             R7 R1
       17 DUPTABLE                         R8 K17 [{"Resizable", "BorderPadding", "ButtonPadding", "ButtonHeight", "ButtonWidth", "TextSize", "Title", "OnClose", "OnButtonPressed"}]
       18 LOADB                            R9 0
       19 SETTABLEKS                       R9 R8 K8 ["Resizable"]
       21 LOADN                            R9 20
       22 SETTABLEKS                       R9 R8 K9 ["BorderPadding"]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K18 ["PROMPT_BUTTON_PADDING"]
       27 SETTABLEKS                       R9 R8 K10 ["ButtonPadding"]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K19 ["PROMPT_BUTTON_SIZE"]
       32 GETTABLEKS                       R9 R9 K20 ["Y"]
       34 SETTABLEKS                       R9 R8 K11 ["ButtonHeight"]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K19 ["PROMPT_BUTTON_SIZE"]
       39 GETTABLEKS                       R9 R9 K21 ["X"]
       41 SETTABLEKS                       R9 R8 K12 ["ButtonWidth"]
       43 GETTABLEKS                       R9 R2 K22 ["__calculatedStyle"]
       45 GETTABLEKS                       R9 R9 K23 ["dialogTheme"]
       47 GETTABLEKS                       R9 R9 K24 ["textSize"]
       49 SETTABLEKS                       R9 R8 K13 ["TextSize"]
       51 LOADK                            R11 K14 ["Title"]
       52 MOVE                             R12 R5
       53 NAMECALL                         R9 R3 K25 ["getText"]
       55 CALL                             R9 3 1
       56 SETTABLEKS                       R9 R8 K14 ["Title"]
       58 GETTABLEKS                       R9 R1 K15 ["OnClose"]
       60 SETTABLEKS                       R9 R8 K15 ["OnClose"]
       62 GETTABLEKS                       R9 R1 K26 ["OnButtonClicked"]
       64 SETTABLEKS                       R9 R8 K16 ["OnButtonPressed"]
       66 CALL                             R6 2 1
       67 GETTABLEKS                       R7 R6 K27 ["Size"]
       69 JUMPIF                           R7 ; [+1]
       70 GETUPVAL                         R7 2
       71 SETTABLEKS                       R7 R6 K28 ["MinContentSize"]
       73 GETTABLEKS                       R7 R6 K29 ["Buttons"]
       75 JUMPIF                           R7 ; [+18]
       76 NEWTABLE                         R7 0 1
       78 DUPTABLE                         R8 K33 [{"Key", "Text", "Style"}]
       79 LOADB                            R9 1
       80 SETTABLEKS                       R9 R8 K30 ["Key"]
       82 LOADK                            R11 K34 ["Dialog"]
       83 LOADK                            R12 K35 ["Ok"]
       84 NAMECALL                         R9 R3 K25 ["getText"]
       86 CALL                             R9 3 1
       87 SETTABLEKS                       R9 R8 K31 ["Text"]
       89 LOADK                            R9 K36 ["Round"]
       90 SETTABLEKS                       R9 R8 K32 ["Style"]
       92 SETLIST                          R7 R8 1 [1]
       94 SETTABLEKS                       R7 R6 K29 ["Buttons"]
       96 GETUPVAL                         R7 3
       97 GETTABLEKS                       R7 R7 K37 ["createElement"]
       99 GETUPVAL                         R8 4
      100 DUPTABLE                         R9 K38 [{"theme", "plugin", "localization"}]
      101 SETTABLEKS                       R2 R9 K1 ["theme"]
      103 SETTABLEKS                       R4 R9 K3 ["plugin"]
      105 SETTABLEKS                       R3 R9 K2 ["localization"]
      107 DUPTABLE                         R10 K39 [{"Dialog"}]
      108 GETUPVAL                         R11 3
      109 GETTABLEKS                       R11 R11 K37 ["createElement"]
      111 GETUPVAL                         R12 5
      112 MOVE                             R13 R6
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R10 K34 ["Dialog"]
      116 CALL                             R7 3 -1
      117 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Vector2.new]
        3 LOADN                            R1 144
        4 LOADN                            R2 200
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K4 [script]
        8 LOADK                            R3 K5 ["AnimationClipEditor"]
        9 NAMECALL                         R1 R1 K6 ["FindFirstAncestor"]
       11 CALL                             R1 2 1
       12 GETIMPORT                        R2 K8 [require]
       14 GETTABLEKS                       R3 R1 K9 ["Packages"]
       16 GETTABLEKS                       R3 R3 K10 ["Roact"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K8 [require]
       21 GETTABLEKS                       R4 R1 K9 ["Packages"]
       23 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K8 [require]
       28 GETTABLEKS                       R5 R1 K12 ["Src"]
       30 GETTABLEKS                       R5 R5 K13 ["Util"]
       32 GETTABLEKS                       R5 R5 K14 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K8 [require]
       37 GETTABLEKS                       R6 R1 K9 ["Packages"]
       39 GETTABLEKS                       R6 R6 K15 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K16 ["UI"]
       44 GETTABLEKS                       R7 R6 K17 ["StyledDialog"]
       46 GETIMPORT                        R8 K8 [require]
       48 GETTABLEKS                       R9 R1 K12 ["Src"]
       50 GETTABLEKS                       R9 R9 K18 ["Context"]
       52 GETTABLEKS                       R9 R9 K19 ["MainProvider"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K8 [require]
       57 GETTABLEKS                       R10 R1 K12 ["Src"]
       59 GETTABLEKS                       R10 R10 K13 ["Util"]
       61 GETTABLEKS                       R10 R10 K20 ["Theme"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R10 R5 K21 ["ContextServices"]
       66 GETTABLEKS                       R11 R10 K22 ["Localization"]
       68 GETTABLEKS                       R12 R1 K12 ["Src"]
       70 GETTABLEKS                       R12 R12 K23 ["Resources"]
       72 GETTABLEKS                       R12 R12 K24 ["SourceStrings"]
       74 GETTABLEKS                       R13 R1 K12 ["Src"]
       76 GETTABLEKS                       R13 R13 K23 ["Resources"]
       78 GETTABLEKS                       R13 R13 K25 ["LocalizedStrings"]
       80 GETTABLEKS                       R14 R2 K26 ["PureComponent"]
       82 LOADK                            R16 K27 ["BlockingDialog"]
       83 NAMECALL                         R14 R14 K28 ["extend"]
       85 CALL                             R14 2 1
       86 DUPCLOSURE                       R15 K29 [PROTO_0]
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R13
       92 SETTABLEKS                       R15 R14 K30 ["init"]
       94 DUPCLOSURE                       R15 K31 [PROTO_1]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R7
      101 SETTABLEKS                       R15 R14 K32 ["render"]
      103 RETURN                           R14 1
