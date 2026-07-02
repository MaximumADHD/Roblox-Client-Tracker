PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetDescendants"]
        3 CALL                             R2 1 1
        4 LENGTH                           R1 R2
        5 LOADN                            R2 0
        6 JUMPIFLT                         R2 R1 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ChatVersion"]
        3 GETIMPORT                        R2 K3 [Enum.ChatVersion.TextChatService]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R3 R3 K4 ["GetDescendants"]
       12 CALL                             R3 1 1
       13 LENGTH                           R2 R3
       14 LOADN                            R3 0
       15 JUMPIFLT                         R3 R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 OR                               R2 R0 R1
       20 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K2 ["ChatVersion"]
        4 GETIMPORT                        R6 K5 [Enum.ChatVersion.TextChatService]
        6 JUMPIFNOTEQ                      R5 R6 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 GETUPVAL                         R7 1
       11 NAMECALL                         R7 R7 K6 ["GetDescendants"]
       13 CALL                             R7 1 1
       14 LENGTH                           R6 R7
       15 LOADN                            R7 0
       16 JUMPIFLT                         R7 R6 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 OR                               R3 R4 R5
       21 SETTABLEKS                       R3 R2 K0 ["enabled"]
       23 SETTABLEKS                       R2 R0 K7 ["state"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K8 ["onClose"]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K9 ["Localization"]
       32 GETTABLEKS                       R2 R2 K10 ["new"]
       34 DUPTABLE                         R3 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "LegacyChatDeprecation"}]
       35 GETUPVAL                         R4 3
       36 SETTABLEKS                       R4 R3 K11 ["stringResourceTable"]
       38 GETUPVAL                         R4 4
       39 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R0 K16 ["localization"]
       44 GETUPVAL                         R2 2
       45 GETTABLEKS                       R2 R2 K17 ["Analytics"]
       47 GETTABLEKS                       R2 R2 K10 ["new"]
       49 DUPCLOSURE                       R3 K18 [PROTO_3]
       50 NEWTABLE                         R4 0 0
       52 CALL                             R2 2 1
       53 SETTABLEKS                       R2 R0 K19 ["analytics"]
       55 GETUPVAL                         R2 5
       56 GETTABLEKS                       R2 R2 K10 ["new"]
       58 CALL                             R2 0 1
       59 SETTABLEKS                       R2 R0 K20 ["DEPRECATED_stylizer"]
       61 GETUPVAL                         R2 6
       62 GETTABLEKS                       R3 R1 K21 ["Plugin"]
       64 CALL                             R2 1 1
       65 SETTABLEKS                       R2 R0 K22 ["design"]
       67 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["provide"]
        9 NEWTABLE                         R5 0 5
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["new"]
       14 MOVE                             R7 R3
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K4 ["new"]
       19 NAMECALL                         R8 R3 K5 ["GetMouse"]
       21 CALL                             R8 1 -1
       22 CALL                             R7 -1 1
       23 GETTABLEKS                       R8 R0 K6 ["localization"]
       25 GETTABLEKS                       R9 R0 K7 ["analytics"]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K4 ["new"]
       30 GETTABLEKS                       R11 R0 K8 ["design"]
       32 CALL                             R10 1 -1
       33 SETLIST                          R5 R6 -1 [1]
       35 DUPTABLE                         R6 K11 [{"ChatDeprecationDialog", "StyleLink"}]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K12 ["createElement"]
       39 GETUPVAL                         R8 5
       40 DUPTABLE                         R9 K16 [{"Enabled", "isForkedOrCustom", "onClosed"}]
       41 GETTABLEKS                       R10 R2 K17 ["enabled"]
       43 SETTABLEKS                       R10 R9 K13 ["Enabled"]
       45 GETUPVAL                         R12 6
       46 NAMECALL                         R12 R12 K18 ["GetDescendants"]
       48 CALL                             R12 1 1
       49 LENGTH                           R11 R12
       50 LOADN                            R12 0
       51 JUMPIFLT                         R12 R11 ; [+2]
       53 LOADB                            R10 0 +1
       54 LOADB                            R10 1
       55 SETTABLEKS                       R10 R9 K14 ["isForkedOrCustom"]
       57 GETTABLEKS                       R10 R0 K19 ["onClose"]
       59 SETTABLEKS                       R10 R9 K15 ["onClosed"]
       61 CALL                             R7 2 1
       62 SETTABLEKS                       R7 R6 K9 ["ChatDeprecationDialog"]
       64 GETUPVAL                         R7 4
       65 GETTABLEKS                       R7 R7 K12 ["createElement"]
       67 LOADK                            R8 K10 ["StyleLink"]
       68 DUPTABLE                         R9 K21 [{"StyleSheet"}]
       69 GETTABLEKS                       R10 R0 K8 ["design"]
       71 SETTABLEKS                       R10 R9 K20 ["StyleSheet"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K10 ["StyleLink"]
       76 CALL                             R4 2 -1
       77 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LegacyChatDeprecation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Plugin"]
       25 GETTABLEKS                       R5 R3 K11 ["Mouse"]
       27 GETTABLEKS                       R6 R3 K12 ["Design"]
       29 GETTABLEKS                       R7 R2 K13 ["Style"]
       31 GETTABLEKS                       R7 R7 K14 ["Themes"]
       33 GETTABLEKS                       R7 R7 K15 ["StudioTheme"]
       35 GETTABLEKS                       R8 R2 K16 ["Styling"]
       37 GETTABLEKS                       R8 R8 K17 ["registerPluginStyles"]
       39 GETTABLEKS                       R9 R0 K18 ["Src"]
       41 GETTABLEKS                       R9 R9 K19 ["Resources"]
       43 GETTABLEKS                       R9 R9 K20 ["Localization"]
       45 GETTABLEKS                       R9 R9 K21 ["SourceStrings"]
       47 GETTABLEKS                       R10 R0 K18 ["Src"]
       49 GETTABLEKS                       R10 R10 K19 ["Resources"]
       51 GETTABLEKS                       R10 R10 K20 ["Localization"]
       53 GETTABLEKS                       R10 R10 K22 ["LocalizedStrings"]
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R0 K18 ["Src"]
       59 GETTABLEKS                       R12 R12 K23 ["Components"]
       61 GETTABLEKS                       R12 R12 K24 ["ChatDeprecationDialog"]
       63 CALL                             R11 1 1
       64 GETTABLEKS                       R12 R1 K25 ["PureComponent"]
       66 LOADK                            R14 K26 ["MainPlugin"]
       67 NAMECALL                         R12 R12 K27 ["extend"]
       69 CALL                             R12 2 1
       70 GETIMPORT                        R13 K29 [game]
       72 LOADK                            R15 K30 ["Chat"]
       73 NAMECALL                         R13 R13 K31 ["GetService"]
       75 CALL                             R13 2 1
       76 GETIMPORT                        R14 K29 [game]
       78 LOADK                            R16 K32 ["TextChatService"]
       79 NAMECALL                         R14 R14 K31 ["GetService"]
       81 CALL                             R14 2 1
       82 DUPCLOSURE                       R15 K33 [PROTO_0]
       83 CAPTURE                          VAL R13
       84 DUPCLOSURE                       R16 K34 [PROTO_1]
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R13
       87 DUPCLOSURE                       R17 K35 [PROTO_4]
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 SETTABLEKS                       R17 R12 K36 ["init"]
       97 DUPCLOSURE                       R17 K37 [PROTO_5]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R13
      105 SETTABLEKS                       R17 R12 K38 ["render"]
      107 RETURN                           R12 1
