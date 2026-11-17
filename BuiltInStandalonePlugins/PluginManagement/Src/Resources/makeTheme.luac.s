MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Style"]
       18 GETTABLEKS                       R2 R1 K8 ["Themes"]
       20 GETTABLEKS                       R2 R2 K9 ["StudioTheme"]
       22 GETTABLEKS                       R3 R1 K10 ["StyleKey"]
       24 NEWTABLE                         R4 8 0
       26 GETTABLEKS                       R5 R3 K11 ["HttpOverviewTextColor"]
       28 GETIMPORT                        R6 K14 [Color3.fromRGB]
       30 LOADN                            R7 136
       31 LOADN                            R8 136
       32 LOADN                            R9 136
       33 CALL                             R6 3 1
       34 SETTABLE                         R6 R4 R5
       35 GETTABLEKS                       R5 R3 K15 ["EmphasisTextColor"]
       37 GETIMPORT                        R6 K14 [Color3.fromRGB]
       39 LOADN                            R7 255
       40 LOADN                            R8 255
       41 LOADN                            R9 255
       42 CALL                             R6 3 1
       43 SETTABLE                         R6 R4 R5
       44 GETTABLEKS                       R5 R3 K16 ["ScrollbarColor"]
       46 GETIMPORT                        R6 K14 [Color3.fromRGB]
       48 LOADN                            R7 204
       49 LOADN                            R8 204
       50 LOADN                            R9 204
       51 CALL                             R6 3 1
       52 SETTABLE                         R6 R4 R5
       53 GETTABLEKS                       R5 R3 K17 ["SubTitleTextColor"]
       55 GETIMPORT                        R6 K14 [Color3.fromRGB]
       57 LOADN                            R7 170
       58 LOADN                            R8 170
       59 LOADN                            R9 170
       60 CALL                             R6 3 1
       61 SETTABLE                         R6 R4 R5
       62 NEWTABLE                         R5 4 0
       64 LOADN                            R6 1
       65 SETTABLEKS                       R6 R5 K18 ["Weight"]
       67 LOADN                            R6 7
       68 SETTABLEKS                       R6 R5 K19 ["StretchMargin"]
       70 GETIMPORT                        R6 K14 [Color3.fromRGB]
       72 LOADN                            R7 170
       73 LOADN                            R8 170
       74 LOADN                            R9 170
       75 CALL                             R6 3 1
       76 SETTABLEKS                       R6 R5 K20 ["Color"]
       78 SETTABLEKS                       R5 R4 K21 ["Separator"]
       80 NEWTABLE                         R5 8 0
       82 GETTABLEKS                       R6 R3 K11 ["HttpOverviewTextColor"]
       84 GETIMPORT                        R7 K14 [Color3.fromRGB]
       86 LOADN                            R8 46
       87 LOADN                            R9 46
       88 LOADN                            R10 46
       89 CALL                             R7 3 1
       90 SETTABLE                         R7 R5 R6
       91 GETTABLEKS                       R6 R3 K15 ["EmphasisTextColor"]
       93 GETIMPORT                        R7 K14 [Color3.fromRGB]
       95 LOADN                            R8 0
       96 LOADN                            R9 0
       97 LOADN                            R10 0
       98 CALL                             R7 3 1
       99 SETTABLE                         R7 R5 R6
      100 GETTABLEKS                       R6 R3 K16 ["ScrollbarColor"]
      102 GETIMPORT                        R7 K14 [Color3.fromRGB]
      104 LOADN                            R8 25
      105 LOADN                            R9 25
      106 LOADN                            R10 25
      107 CALL                             R7 3 1
      108 SETTABLE                         R7 R5 R6
      109 GETTABLEKS                       R6 R3 K17 ["SubTitleTextColor"]
      111 GETIMPORT                        R7 K14 [Color3.fromRGB]
      113 LOADN                            R8 0
      114 LOADN                            R9 0
      115 LOADN                            R10 0
      116 CALL                             R7 3 1
      117 SETTABLE                         R7 R5 R6
      118 NEWTABLE                         R6 4 0
      120 LOADN                            R7 1
      121 SETTABLEKS                       R7 R6 K18 ["Weight"]
      123 LOADN                            R7 7
      124 SETTABLEKS                       R7 R6 K19 ["StretchMargin"]
      126 GETIMPORT                        R7 K14 [Color3.fromRGB]
      128 LOADN                            R8 0
      129 LOADN                            R9 0
      130 LOADN                            R10 0
      131 CALL                             R7 3 1
      132 SETTABLEKS                       R7 R6 K20 ["Color"]
      134 SETTABLEKS                       R6 R5 K21 ["Separator"]
      136 GETTABLEKS                       R6 R2 K22 ["new"]
      138 MOVE                             R7 R4
      139 MOVE                             R8 R5
      140 CALL                             R6 2 1
      141 DUPTABLE                         R9 K42 [{["BackgroundColor"], ["ButtonColor"], ["HttpOverviewTextColor"], ["ProgressBarColor"], ["HoverColor"], ["BorderColor"], ["SubTextColor"], ["InfoTextColor"], ["SubTitleTextColor"], ["EmphasisTextColor"], ["TextColor"], ["ErrorColor"], ["LinkColor"], ["Green"], ["White"], ["DisabledColor"], ["ScrollbarColor"], ["ScrollbarTransparency"] = 0.7, ["ScrollbarSize"] = 8, ["Font"], ["FontBold"]}]
      142 GETTABLEKS                       R10 R3 K43 ["MainBackground"]
      144 SETTABLEKS                       R10 R9 K23 ["BackgroundColor"]
      146 GETTABLEKS                       R10 R3 K44 ["Button"]
      148 SETTABLEKS                       R10 R9 K24 ["ButtonColor"]
      150 GETTABLEKS                       R10 R3 K11 ["HttpOverviewTextColor"]
      152 SETTABLEKS                       R10 R9 K11 ["HttpOverviewTextColor"]
      154 GETTABLEKS                       R10 R3 K45 ["DialogMainButtonSelected"]
      156 SETTABLEKS                       R10 R9 K25 ["ProgressBarColor"]
      158 GETTABLEKS                       R10 R3 K46 ["ButtonHover"]
      160 SETTABLEKS                       R10 R9 K26 ["HoverColor"]
      162 GETTABLEKS                       R10 R3 K47 ["Border"]
      164 SETTABLEKS                       R10 R9 K27 ["BorderColor"]
      166 GETTABLEKS                       R10 R3 K48 ["SubText"]
      168 SETTABLEKS                       R10 R9 K28 ["SubTextColor"]
      170 GETTABLEKS                       R10 R3 K49 ["DimmedText"]
      172 SETTABLEKS                       R10 R9 K29 ["InfoTextColor"]
      174 GETTABLEKS                       R10 R3 K17 ["SubTitleTextColor"]
      176 SETTABLEKS                       R10 R9 K17 ["SubTitleTextColor"]
      178 GETTABLEKS                       R10 R3 K15 ["EmphasisTextColor"]
      180 SETTABLEKS                       R10 R9 K15 ["EmphasisTextColor"]
      182 GETTABLEKS                       R10 R3 K50 ["MainText"]
      184 SETTABLEKS                       R10 R9 K30 ["TextColor"]
      186 GETTABLEKS                       R10 R3 K51 ["ErrorText"]
      188 SETTABLEKS                       R10 R9 K31 ["ErrorColor"]
      190 GETTABLEKS                       R10 R3 K52 ["LinkText"]
      192 SETTABLEKS                       R10 R9 K32 ["LinkColor"]
      194 GETIMPORT                        R10 K14 [Color3.fromRGB]
      196 LOADN                            R11 64
      197 LOADN                            R12 166
      198 LOADN                            R13 81
      199 CALL                             R10 3 1
      200 SETTABLEKS                       R10 R9 K33 ["Green"]
      202 GETIMPORT                        R10 K14 [Color3.fromRGB]
      204 LOADN                            R11 255
      205 LOADN                            R12 255
      206 LOADN                            R13 255
      207 CALL                             R10 3 1
      208 SETTABLEKS                       R10 R9 K34 ["White"]
      210 GETTABLEKS                       R10 R3 K53 ["MainTextDisabled"]
      212 SETTABLEKS                       R10 R9 K35 ["DisabledColor"]
      214 GETTABLEKS                       R10 R3 K16 ["ScrollbarColor"]
      216 SETTABLEKS                       R10 R9 K16 ["ScrollbarColor"]
      218 GETIMPORT                        R10 K56 [Enum.Font.SourceSans]
      220 SETTABLEKS                       R10 R9 K40 ["Font"]
      222 GETIMPORT                        R10 K58 [Enum.Font.SourceSansSemibold]
      224 SETTABLEKS                       R10 R9 K41 ["FontBold"]
      226 NAMECALL                         R7 R6 K59 ["extend"]
      228 CALL                             R7 2 0
      229 RETURN                           R6 1
