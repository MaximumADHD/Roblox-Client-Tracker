PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getMainBackgroundColor"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R5 R0 K2 ["r"]
        6 GETTABLEKS                       R6 R0 K3 ["g"]
        8 ADD                              R4 R5 R6
        9 GETTABLEKS                       R5 R0 K4 ["b"]
       11 ADD                              R3 R4 R5
       12 DIVK                             R2 R3 K1 [3]
       13 LOADK                            R3 K5 [0.5]
       14 JUMPIFLT                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.SubText]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.MainText]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.DimmedText]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.Border]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDarkerTheme"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R0 1
        6 GETIMPORT                        R1 K4 [Enum.StudioStyleGuideColor.MainButton]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+4]
       10 GETUPVAL                         R0 1
       11 GETIMPORT                        R1 K6 [Enum.StudioStyleGuideColor.CurrentMarker]
       13 CALL                             R0 1 1
       14 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.MainBackground]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.InputFieldBackground]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.BrightText]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.LinkText]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.StudioStyleGuideColor.Tab]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDarkerTheme"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R0 1
        6 GETIMPORT                        R1 K4 [Enum.StudioStyleGuideColor.ScrollBar]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+4]
       10 GETUPVAL                         R0 1
       11 GETIMPORT                        R1 K6 [Enum.StudioStyleGuideColor.Border]
       13 CALL                             R0 1 1
       14 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDarkerTheme"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R0 1
        6 GETIMPORT                        R1 K4 [Enum.StudioStyleGuideColor.ScrollBarBackground]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+6]
       10 GETIMPORT                        R0 K7 [Color3.fromRGB]
       12 LOADN                            R1 245
       13 LOADN                            R2 245
       14 LOADN                            R3 245
       15 CALL                             R0 3 1
       16 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDarkerTheme"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R0 1
        6 GETIMPORT                        R1 K4 [Enum.StudioStyleGuideColor.Border]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+4]
       10 GETUPVAL                         R0 1
       11 GETIMPORT                        R1 K6 [Enum.StudioStyleGuideColor.Titlebar]
       13 CALL                             R0 1 1
       14 RETURN                           R0 1

PROTO_14:
        0 GETIMPORT                        R0 K2 [Color3.fromRGB]
        2 LOADN                            R1 153
        3 LOADN                            R2 218
        4 LOADN                            R3 255
        5 CALL                             R0 3 1
        6 DUPTABLE                         R1 K10 [{"ButtonColor", "ButtonHoverColor", "ButtonPressedColor", "ButtonDisabledColor", "TextColor", "TextDisabledColor", "BorderColor"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K11 ["isDarkerTheme"]
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETUPVAL                         R2 1
       13 GETIMPORT                        R3 K15 [Enum.StudioStyleGuideColor.MainButton]
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+4]
       17 GETUPVAL                         R2 1
       18 GETIMPORT                        R3 K17 [Enum.StudioStyleGuideColor.CurrentMarker]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K3 ["ButtonColor"]
       23 GETUPVAL                         R2 1
       24 GETIMPORT                        R3 K19 [Enum.StudioStyleGuideColor.LinkText]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K4 ["ButtonHoverColor"]
       29 GETUPVAL                         R2 1
       30 GETIMPORT                        R3 K21 [Enum.StudioStyleGuideColor.Button]
       32 GETIMPORT                        R4 K24 [Enum.StudioStyleGuideModifier.Pressed]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R1 K5 ["ButtonPressedColor"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K11 ["isDarkerTheme"]
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+7]
       42 GETUPVAL                         R2 1
       43 GETIMPORT                        R3 K21 [Enum.StudioStyleGuideColor.Button]
       45 GETIMPORT                        R4 K26 [Enum.StudioStyleGuideModifier.Disabled]
       47 CALL                             R2 2 1
       48 JUMPIF                           R2 ; [+1]
       49 MOVE                             R2 R0
       50 SETTABLEKS                       R2 R1 K6 ["ButtonDisabledColor"]
       52 GETIMPORT                        R2 K28 [Color3.new]
       54 LOADN                            R3 1
       55 LOADN                            R4 1
       56 LOADN                            R5 1
       57 CALL                             R2 3 1
       58 SETTABLEKS                       R2 R1 K7 ["TextColor"]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R3 R4 K11 ["isDarkerTheme"]
       63 CALL                             R3 0 1
       64 JUMPIFNOT                        R3 ; [+5]
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R2 R3 K29 ["getTextDescriptionColor"]
       68 CALL                             R2 0 1
       69 JUMPIF                           R2 ; [+6]
       70 GETIMPORT                        R2 K28 [Color3.new]
       72 LOADN                            R3 1
       73 LOADN                            R4 1
       74 LOADN                            R5 1
       75 CALL                             R2 3 1
       76 SETTABLEKS                       R2 R1 K8 ["TextDisabledColor"]
       78 GETUPVAL                         R2 1
       79 GETIMPORT                        R3 K31 [Enum.StudioStyleGuideColor.Light]
       81 CALL                             R2 1 1
       82 SETTABLEKS                       R2 R1 K9 ["BorderColor"]
       84 RETURN                           R1 1

PROTO_15:
        0 DUPTABLE                         R0 K7 [{"ButtonColor", "ButtonHoverColor", "ButtonPressedColor", "ButtonDisabledColor", "TextColor", "TextDisabledColor", "BorderColor"}]
        1 GETUPVAL                         R1 0
        2 GETIMPORT                        R2 K11 [Enum.StudioStyleGuideColor.Button]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K0 ["ButtonColor"]
        7 GETUPVAL                         R1 0
        8 GETIMPORT                        R2 K11 [Enum.StudioStyleGuideColor.Button]
       10 GETIMPORT                        R3 K14 [Enum.StudioStyleGuideModifier.Hover]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["ButtonHoverColor"]
       15 GETUPVAL                         R1 0
       16 GETIMPORT                        R2 K11 [Enum.StudioStyleGuideColor.Button]
       18 GETIMPORT                        R3 K16 [Enum.StudioStyleGuideModifier.Pressed]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K2 ["ButtonPressedColor"]
       23 GETUPVAL                         R1 0
       24 GETIMPORT                        R2 K11 [Enum.StudioStyleGuideColor.Button]
       26 GETIMPORT                        R3 K18 [Enum.StudioStyleGuideModifier.Disabled]
       28 CALL                             R1 2 1
       29 SETTABLEKS                       R1 R0 K3 ["ButtonDisabledColor"]
       31 GETUPVAL                         R1 0
       32 GETIMPORT                        R2 K20 [Enum.StudioStyleGuideColor.MainText]
       34 CALL                             R1 1 1
       35 SETTABLEKS                       R1 R0 K4 ["TextColor"]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R1 R2 K21 ["getTextDescriptionColor"]
       40 CALL                             R1 0 1
       41 SETTABLEKS                       R1 R0 K5 ["TextDisabledColor"]
       43 GETUPVAL                         R1 0
       44 GETIMPORT                        R2 K23 [Enum.StudioStyleGuideColor.Border]
       46 CALL                             R1 1 1
       47 SETTABLEKS                       R1 R0 K6 ["BorderColor"]
       49 RETURN                           R0 1

PROTO_16:
        0 GETIMPORT                        R4 K1 [settings]
        2 CALL                             R4 0 1
        3 GETTABLEKS                       R3 R4 K2 ["Studio"]
        5 GETTABLEKS                       R2 R3 K3 ["Theme"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 NAMECALL                         R2 R2 K4 ["GetColor"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 NEWTABLE                         R1 16 0
        4 DUPCLOSURE                       R2 K0 [PROTO_0]
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R2 R1 K1 ["isDarkerTheme"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          REF R0
       10 SETTABLEKS                       R2 R1 K2 ["getTitleTextColor"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          REF R0
       14 SETTABLEKS                       R2 R1 K3 ["getMainTextColor"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          REF R0
       18 SETTABLEKS                       R2 R1 K4 ["getTextDescriptionColor"]
       20 NEWCLOSURE                       R2 P4
       21 CAPTURE                          REF R0
       22 SETTABLEKS                       R2 R1 K5 ["getBorderDefaultColor"]
       24 NEWCLOSURE                       R2 P5
       25 CAPTURE                          VAL R1
       26 CAPTURE                          REF R0
       27 SETTABLEKS                       R2 R1 K6 ["getBorderHoverColor"]
       29 NEWCLOSURE                       R2 P6
       30 CAPTURE                          REF R0
       31 SETTABLEKS                       R2 R1 K7 ["getMainBackgroundColor"]
       33 NEWCLOSURE                       R2 P7
       34 CAPTURE                          REF R0
       35 SETTABLEKS                       R2 R1 K8 ["getBackgroundColor"]
       37 NEWCLOSURE                       R2 P8
       38 CAPTURE                          REF R0
       39 SETTABLEKS                       R2 R1 K9 ["getRadioButtonTextColor"]
       41 NEWCLOSURE                       R2 P9
       42 CAPTURE                          REF R0
       43 SETTABLEKS                       R2 R1 K10 ["getHyperlinkTextTextColor"]
       45 NEWCLOSURE                       R2 P10
       46 CAPTURE                          REF R0
       47 SETTABLEKS                       R2 R1 K11 ["getDisabledColor"]
       49 NEWCLOSURE                       R2 P11
       50 CAPTURE                          VAL R1
       51 CAPTURE                          REF R0
       52 SETTABLEKS                       R2 R1 K12 ["getScrollBarColor"]
       54 NEWCLOSURE                       R2 P12
       55 CAPTURE                          VAL R1
       56 CAPTURE                          REF R0
       57 SETTABLEKS                       R2 R1 K13 ["getScrollBarBackgroundColor"]
       59 NEWCLOSURE                       R2 P13
       60 CAPTURE                          VAL R1
       61 CAPTURE                          REF R0
       62 SETTABLEKS                       R2 R1 K14 ["getSeparatorColor"]
       64 NEWCLOSURE                       R2 P14
       65 CAPTURE                          VAL R1
       66 CAPTURE                          REF R0
       67 SETTABLEKS                       R2 R1 K15 ["getDefaultButtonProps"]
       69 NEWCLOSURE                       R2 P15
       70 CAPTURE                          REF R0
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R2 R1 K16 ["getCancelButtonProps"]
       74 DUPCLOSURE                       R0 K17 [PROTO_16]
       75 CLOSEUPVALS                      R0
       76 RETURN                           R1 1
