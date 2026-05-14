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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["PreviewToolbar should only be used when FFlagPreviewToolbar is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 1
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 LOADB                            R3 0
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U4
       21 NEWTABLE                         R5 0 0
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K4 ["createLocalization"]
       27 GETUPVAL                         R4 6
       28 GETUPVAL                         R5 7
       29 LOADK                            R6 K5 ["AvatarSettings"]
       30 CALL                             R3 3 1
       31 GETUPVAL                         R4 8
       32 GETUPVAL                         R5 9
       33 DUPTABLE                         R6 K7 [{"HorizontalItems"}]
       34 NEWTABLE                         R7 0 3
       36 DUPTABLE                         R8 K12 [{"Type", "Tooltip", "Icon", "OnClick"}]
       37 LOADK                            R9 K13 ["Button"]
       38 SETTABLEKS                       R9 R8 K8 ["Type"]
       40 GETTABLEKS                       R9 R3 K14 ["getText"]
       42 LOADK                            R10 K15 ["PreviewToolbar"]
       43 LOADK                            R11 K16 ["ResetAvatarsToCamera"]
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K9 ["Tooltip"]
       47 GETTABLEKS                       R9 R0 K17 ["theme"]
       49 LOADK                            R11 K18 ["PreviewTooltipResetAvatarsToCameraImage"]
       50 NAMECALL                         R9 R9 K19 ["GetAttribute"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K10 ["Icon"]
       55 NEWCLOSURE                       R9 P1
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R9 R8 K11 ["OnClick"]
       60 DUPTABLE                         R9 K21 [{"Type", "Tooltip", "Selected", "Icon", "OnClick"}]
       61 LOADK                            R10 K13 ["Button"]
       62 SETTABLEKS                       R10 R9 K8 ["Type"]
       64 GETTABLEKS                       R10 R3 K14 ["getText"]
       66 LOADK                            R11 K15 ["PreviewToolbar"]
       67 LOADK                            R12 K22 ["SettingsVisibility"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K9 ["Tooltip"]
       71 GETTABLEKS                       R11 R1 K23 ["enabled"]
       73 NOT                              R10 R11
       74 SETTABLEKS                       R10 R9 K20 ["Selected"]
       76 GETTABLEKS                       R10 R0 K17 ["theme"]
       78 GETTABLEKS                       R13 R1 K23 ["enabled"]
       80 JUMPIFNOT                        R13 ; [+2]
       81 LOADK                            R12 K24 ["PreviewTooltipSettingInvisibleImage"]
       82 JUMP                             ; [+1]
       83 LOADK                            R12 K25 ["PreviewTooltipSettingVisibleImage"]
       84 NAMECALL                         R10 R10 K19 ["GetAttribute"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K10 ["Icon"]
       89 NEWCLOSURE                       R10 P2
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R10 R9 K11 ["OnClick"]
       94 DUPTABLE                         R10 K12 [{"Type", "Tooltip", "Icon", "OnClick"}]
       95 LOADK                            R11 K13 ["Button"]
       96 SETTABLEKS                       R11 R10 K8 ["Type"]
       98 GETTABLEKS                       R11 R3 K14 ["getText"]
      100 LOADK                            R12 K15 ["PreviewToolbar"]
      101 GETTABLEKS                       R14 R2 K23 ["enabled"]
      103 JUMPIFNOT                        R14 ; [+2]
      104 LOADK                            R13 K26 ["TestAsAvatar"]
      105 JUMP                             ; [+1]
      106 LOADK                            R13 K27 ["TestAsAvatarDisabled"]
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K9 ["Tooltip"]
      110 GETTABLEKS                       R11 R0 K17 ["theme"]
      112 GETTABLEKS                       R14 R2 K23 ["enabled"]
      114 JUMPIFNOT                        R14 ; [+2]
      115 LOADK                            R13 K28 ["PreviewTooltipPlayImage"]
      116 JUMP                             ; [+1]
      117 LOADK                            R13 K29 ["PreviewTooltipPlayDisabledImage"]
      118 NAMECALL                         R11 R11 K19 ["GetAttribute"]
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K10 ["Icon"]
      123 NEWCLOSURE                       R11 P3
      124 CAPTURE                          VAL R2
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R11 R10 K11 ["OnClick"]
      129 SETLIST                          R7 R8 3 [1]
      131 SETTABLEKS                       R7 R6 K6 ["HorizontalItems"]
      133 CALL                             R4 2 -1
      134 RETURN                           R4 -1

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
       71 GETIMPORT                        R8 K9 [require]
       73 GETTABLEKS                       R9 R0 K10 ["Src"]
       75 GETTABLEKS                       R9 R9 K23 ["Flags"]
       77 GETTABLEKS                       R9 R9 K24 ["getFFlagPreviewToolbar"]
       79 CALL                             R8 1 1
       80 GETTABLEKS                       R9 R0 K10 ["Src"]
       82 GETTABLEKS                       R9 R9 K25 ["Resources"]
       84 GETTABLEKS                       R9 R9 K26 ["Localization"]
       86 GETTABLEKS                       R9 R9 K27 ["SourceStrings"]
       88 GETTABLEKS                       R10 R0 K10 ["Src"]
       90 GETTABLEKS                       R10 R10 K25 ["Resources"]
       92 GETTABLEKS                       R10 R10 K26 ["Localization"]
       94 GETTABLEKS                       R10 R10 K28 ["LocalizedStrings"]
       96 GETTABLEKS                       R11 R5 K29 ["Toolbar"]
       98 GETTABLEKS                       R12 R3 K30 ["createElement"]
      100 DUPCLOSURE                       R13 K31 [PROTO_6]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R6
      112 RETURN                           R13 1
