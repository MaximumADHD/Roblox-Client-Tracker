PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getValidTestingAvatar"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKNIL                     R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["enable"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K2 ["disable"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["getValidTestingAvatar"]
        6 CALL                             R1 0 1
        7 JUMPIFEQKNIL                     R1 ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["enable"]
       12 CALL                             R1 0 0
       13 JUMP                             ; [+4]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["disable"]
       17 CALL                             R1 0 0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K3 ["SelectionChanged"]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K4 ["Connect"]
       24 CALL                             R1 2 1
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          VAL R1
       27 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["previewFolder"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["plugin"]
        7 LOADK                            R2 K1 ["PreviewSetMainButtonEnabled"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["enabled"]
       11 NOT                              R3 R4
       12 NAMECALL                         R0 R0 K3 ["Invoke"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K4 ["toggle"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["test"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["selectTargetInstance"]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["previewFolder"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 LOADB                            R3 0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R5 0 0
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K1 ["createLocalization"]
       19 GETUPVAL                         R4 5
       20 GETUPVAL                         R5 6
       21 LOADK                            R6 K2 ["AvatarSettings"]
       22 CALL                             R3 3 1
       23 GETUPVAL                         R4 7
       24 GETUPVAL                         R5 8
       25 DUPTABLE                         R6 K4 [{"HorizontalItems"}]
       26 NEWTABLE                         R7 0 3
       28 DUPTABLE                         R8 K10 [{["Type"] = "Button", ["Tooltip"], ["Icon"], ["OnClick"]}]
       29 GETTABLEKS                       R9 R3 K11 ["getText"]
       31 LOADK                            R10 K12 ["PreviewToolbar"]
       32 LOADK                            R11 K13 ["ResetAvatarsToCamera"]
       33 CALL                             R9 2 1
       34 SETTABLEKS                       R9 R8 K7 ["Tooltip"]
       36 GETTABLEKS                       R9 R0 K14 ["theme"]
       38 LOADK                            R11 K15 ["PreviewTooltipResetAvatarsToCameraImage"]
       39 NAMECALL                         R9 R9 K16 ["GetAttribute"]
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K8 ["Icon"]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R9 R8 K9 ["OnClick"]
       49 DUPTABLE                         R9 K18 [{["Type"] = "Button", ["Tooltip"], ["Selected"], ["Icon"], ["OnClick"]}]
       50 GETTABLEKS                       R10 R3 K11 ["getText"]
       52 LOADK                            R11 K12 ["PreviewToolbar"]
       53 LOADK                            R12 K19 ["SettingsVisibility"]
       54 CALL                             R10 2 1
       55 SETTABLEKS                       R10 R9 K7 ["Tooltip"]
       57 GETTABLEKS                       R11 R1 K20 ["enabled"]
       59 NOT                              R10 R11
       60 SETTABLEKS                       R10 R9 K17 ["Selected"]
       62 GETTABLEKS                       R10 R0 K14 ["theme"]
       64 GETTABLEKS                       R13 R1 K20 ["enabled"]
       66 JUMPIFNOT                        R13 ; [+2]
       67 LOADK                            R12 K21 ["PreviewTooltipSettingInvisibleImage"]
       68 JUMP                             ; [+1]
       69 LOADK                            R12 K22 ["PreviewTooltipSettingVisibleImage"]
       70 NAMECALL                         R10 R10 K16 ["GetAttribute"]
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K8 ["Icon"]
       75 NEWCLOSURE                       R10 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R10 R9 K9 ["OnClick"]
       80 DUPTABLE                         R10 K10 [{["Type"] = "Button", ["Tooltip"], ["Icon"], ["OnClick"]}]
       81 GETTABLEKS                       R11 R3 K11 ["getText"]
       83 LOADK                            R12 K12 ["PreviewToolbar"]
       84 GETTABLEKS                       R14 R2 K20 ["enabled"]
       86 JUMPIFNOT                        R14 ; [+2]
       87 LOADK                            R13 K23 ["TestAsAvatar"]
       88 JUMP                             ; [+1]
       89 LOADK                            R13 K24 ["TestAsAvatarDisabled"]
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K7 ["Tooltip"]
       93 GETTABLEKS                       R11 R0 K14 ["theme"]
       95 GETTABLEKS                       R14 R2 K20 ["enabled"]
       97 JUMPIFNOT                        R14 ; [+2]
       98 LOADK                            R13 K25 ["PreviewTooltipPlayImage"]
       99 JUMP                             ; [+1]
      100 LOADK                            R13 K26 ["PreviewTooltipPlayDisabledImage"]
      101 NAMECALL                         R11 R11 K16 ["GetAttribute"]
      103 CALL                             R11 2 1
      104 SETTABLEKS                       R11 R10 K8 ["Icon"]
      106 NEWCLOSURE                       R11 P3
      107 CAPTURE                          VAL R2
      108 CAPTURE                          UPVAL U2
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R11 R10 K9 ["OnClick"]
      112 SETLIST                          R7 R8 3 [1]
      114 SETTABLEKS                       R7 R6 K3 ["HorizontalItems"]
      116 CALL                             R4 2 -1
      117 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Selection"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Interfaces"]
       21 GETTABLEKS                       R3 R3 K13 ["PluginLocalizationInterface"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K14 ["Packages"]
       28 GETTABLEKS                       R4 R4 K15 ["React"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K16 ["AvatarPreview"]
       39 GETTABLEKS                       R5 R5 K17 ["TestInExperienceUtil"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R6 R0 K14 ["Packages"]
       46 GETTABLEKS                       R6 R6 K18 ["ViewportToolingFramework"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R0 K10 ["Src"]
       53 GETTABLEKS                       R7 R7 K11 ["Util"]
       55 GETTABLEKS                       R7 R7 K16 ["AvatarPreview"]
       57 GETTABLEKS                       R7 R7 K19 ["PreviewDockWidget"]
       59 GETTABLEKS                       R7 R7 K20 ["onClickResetAvatarsToCamera"]
       61 CALL                             R6 1 1
       62 GETIMPORT                        R7 K9 [require]
       64 GETTABLEKS                       R8 R0 K10 ["Src"]
       66 GETTABLEKS                       R8 R8 K21 ["Hooks"]
       68 GETTABLEKS                       R8 R8 K22 ["useToggleState"]
       70 CALL                             R7 1 1
       71 GETTABLEKS                       R8 R0 K10 ["Src"]
       73 GETTABLEKS                       R8 R8 K23 ["Resources"]
       75 GETTABLEKS                       R8 R8 K24 ["Localization"]
       77 GETTABLEKS                       R8 R8 K25 ["SourceStrings"]
       79 GETTABLEKS                       R9 R0 K10 ["Src"]
       81 GETTABLEKS                       R9 R9 K23 ["Resources"]
       83 GETTABLEKS                       R9 R9 K24 ["Localization"]
       85 GETTABLEKS                       R9 R9 K26 ["LocalizedStrings"]
       87 GETTABLEKS                       R10 R5 K27 ["Toolbar"]
       89 GETTABLEKS                       R11 R3 K28 ["createElement"]
       91 DUPCLOSURE                       R12 K29 [PROTO_6]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R6
      102 RETURN                           R12 1
