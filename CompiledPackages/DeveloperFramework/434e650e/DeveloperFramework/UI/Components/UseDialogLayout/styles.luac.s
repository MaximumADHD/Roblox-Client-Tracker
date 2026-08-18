MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-UseDialogLayout"]
       18 DUPTABLE                         R4 K14 [{["BackgroundColor3"] = "$ForegroundMain", ["BorderSizePixel"] = 0}]
       19 NEWTABLE                         R5 0 10
       21 MOVE                             R6 R1
       22 LOADK                            R7 K15 ["> UIListLayout"]
       23 DUPTABLE                         R8 K18 [{["Padding"] = "$IconToContentPadding"}]
       24 CALL                             R6 2 1
       25 MOVE                             R7 R1
       26 LOADK                            R8 K19 ["::UIPadding"]
       27 DUPTABLE                         R9 K25 [{["PaddingBottom"] = "$DialogPadding", ["PaddingLeft"] = "$DialogPadding", ["PaddingRight"] = "$DialogPadding", ["PaddingTop"] = "$DialogPadding"}]
       28 CALL                             R7 2 1
       29 MOVE                             R8 R1
       30 LOADK                            R9 K26 ["> #Icon"]
       31 DUPTABLE                         R10 K31 [{["BackgroundTransparency"] = 1, ["Size"] = "$IconSize"}]
       32 CALL                             R8 2 1
       33 MOVE                             R9 R1
       34 LOADK                            R10 K32 [".Confirmation > #Icon"]
       35 DUPTABLE                         R11 K35 [{["Image"] = "$SuccessLargeImage"}]
       36 CALL                             R9 2 1
       37 MOVE                             R10 R1
       38 LOADK                            R11 K36 [".Destructive > #Icon, .Warning > #Icon"]
       39 DUPTABLE                         R12 K38 [{["Image"] = "$WarningLargeImage"}]
       40 CALL                             R10 2 1
       41 MOVE                             R11 R1
       42 LOADK                            R12 K39 [".Error > #Icon"]
       43 DUPTABLE                         R13 K41 [{["Image"] = "$ErrorLargeImage"}]
       44 CALL                             R11 2 1
       45 MOVE                             R12 R1
       46 LOADK                            R13 K42 [".Information > #Icon"]
       47 DUPTABLE                         R14 K44 [{["Image"] = "$InformationLargeImage"}]
       48 CALL                             R12 2 1
       49 MOVE                             R13 R1
       50 LOADK                            R14 K45 [".Question > #Icon"]
       51 DUPTABLE                         R15 K47 [{["Image"] = "$QuestionLargeImage"}]
       52 CALL                             R13 2 1
       53 MOVE                             R14 R1
       54 LOADK                            R15 K48 ["> #Content"]
       55 DUPTABLE                         R16 K49 [{["BackgroundTransparency"] = 1}]
       56 NEWTABLE                         R17 0 4
       58 MOVE                             R18 R1
       59 LOADK                            R19 K50 ["> UIListLayout, > #Children > UIListLayout"]
       60 DUPTABLE                         R20 K52 [{["Padding"] = "$TextToButtonsPadding"}]
       61 CALL                             R18 2 1
       62 MOVE                             R19 R1
       63 LOADK                            R20 K53 ["> #Text > UIListLayout"]
       64 DUPTABLE                         R21 K55 [{["Padding"] = "$HeadingToBodyPadding"}]
       65 CALL                             R19 2 1
       66 MOVE                             R20 R1
       67 LOADK                            R21 K56 ["> #Text, > #Children"]
       68 DUPTABLE                         R22 K49 [{["BackgroundTransparency"] = 1}]
       69 NEWTABLE                         R23 0 1
       71 MOVE                             R24 R1
       72 LOADK                            R25 K57 [">> TextLabel"]
       73 DUPTABLE                         R26 K69 [{["BackgroundTransparency"] = 1, ["Font"] = "$BodyFont", ["LineHeight"] = "$TextLineHeight", ["TextColor3"] = "$TextPrimary", ["TextSize"] = "$TextSize", ["TextWrapped"] = True, ["TextXAlignment"]}]
       74 GETIMPORT                        R27 K72 [Enum.TextXAlignment.Left]
       76 SETTABLEKS                       R27 R26 K68 ["TextXAlignment"]
       78 NEWTABLE                         R27 0 2
       80 MOVE                             R28 R1
       81 LOADK                            R29 K19 ["::UIPadding"]
       82 DUPTABLE                         R30 K74 [{["PaddingBottom"] = "$TextVerticalPadding", ["PaddingTop"] = "$TextVerticalPadding"}]
       83 CALL                             R28 2 1
       84 MOVE                             R29 R1
       85 LOADK                            R30 K75 ["#Heading"]
       86 DUPTABLE                         R31 K77 [{["Font"] = "$HeadingFont"}]
       87 CALL                             R29 2 -1
       88 SETLIST                          R27 R28 -1 [1]
       90 CALL                             R24 3 -1
       91 SETLIST                          R23 R24 -1 [1]
       93 CALL                             R20 3 1
       94 MOVE                             R21 R1
       95 LOADK                            R22 K78 ["> #Buttons"]
       96 DUPTABLE                         R23 K49 [{["BackgroundTransparency"] = 1}]
       97 NEWTABLE                         R24 0 2
       99 MOVE                             R25 R1
      100 LOADK                            R26 K79 ["> #RightAnchoredButtons"]
      101 DUPTABLE                         R27 K49 [{["BackgroundTransparency"] = 1}]
      102 NEWTABLE                         R28 0 1
      104 MOVE                             R29 R1
      105 LOADK                            R30 K15 ["> UIListLayout"]
      106 DUPTABLE                         R31 K82 [{["HorizontalAlignment"], ["Padding"] = "$ButtonSpacing"}]
      107 GETIMPORT                        R32 K84 [Enum.HorizontalAlignment.Right]
      109 SETTABLEKS                       R32 R31 K80 ["HorizontalAlignment"]
      111 CALL                             R29 2 -1
      112 SETLIST                          R28 R29 -1 [1]
      114 CALL                             R25 3 1
      115 MOVE                             R26 R1
      116 LOADK                            R27 K85 ["> TextButton, > #RightAnchoredButtons > TextButton"]
      117 DUPTABLE                         R28 K89 [{["AutoButtonColor"] = False, ["BorderSizePixel"] = 0, ["Font"] = "$ButtonFont", ["TextSize"] = "$TextSize"}]
      118 NEWTABLE                         R29 0 4
      120 MOVE                             R30 R1
      121 LOADK                            R31 K19 ["::UIPadding"]
      122 DUPTABLE                         R32 K92 [{["PaddingBottom"] = "$ButtonVerticalPadding", ["PaddingLeft"] = "$ButtonHorizontalPadding", ["PaddingRight"] = "$ButtonHorizontalPadding", ["PaddingTop"] = "$ButtonVerticalPadding"}]
      123 CALL                             R30 2 1
      124 MOVE                             R31 R1
      125 LOADK                            R32 K93 [".Primary"]
      126 DUPTABLE                         R33 K96 [{["BackgroundColor3"] = "$PrimaryMain", ["TextColor3"] = "$TextContrast"}]
      127 NEWTABLE                         R34 0 1
      129 MOVE                             R35 R1
      130 LOADK                            R36 K97 [".Enabled :hover"]
      131 DUPTABLE                         R37 K99 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
      132 CALL                             R35 2 -1
      133 SETLIST                          R34 R35 -1 [1]
      135 CALL                             R31 3 1
      136 MOVE                             R32 R1
      137 LOADK                            R33 K100 [".Secondary, .Tertiary"]
      138 DUPTABLE                         R34 K102 [{["BackgroundColor3"] = "$SecondaryMain", ["TextColor3"] = "$TextPrimary"}]
      139 NEWTABLE                         R35 0 2
      141 MOVE                             R36 R1
      142 LOADK                            R37 K103 ["::UIStroke"]
      143 DUPTABLE                         R38 K107 [{["ApplyStrokeMode"], ["Color"] = "$SecondaryRestingOutlineBorder"}]
      144 GETIMPORT                        R39 K109 [Enum.ApplyStrokeMode.Border]
      146 SETTABLEKS                       R39 R38 K104 ["ApplyStrokeMode"]
      148 CALL                             R36 2 1
      149 MOVE                             R37 R1
      150 LOADK                            R38 K97 [".Enabled :hover"]
      151 DUPTABLE                         R39 K111 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
      152 NEWTABLE                         R40 0 1
      154 MOVE                             R41 R1
      155 LOADK                            R42 K112 ["> UIStroke"]
      156 DUPTABLE                         R43 K114 [{["Color"] = "$SecondaryHoverOutlineBorder"}]
      157 CALL                             R41 2 -1
      158 SETLIST                          R40 R41 -1 [1]
      160 CALL                             R37 3 -1
      161 SETLIST                          R35 R36 -1 [1]
      163 CALL                             R32 3 1
      164 MOVE                             R33 R1
      165 LOADK                            R34 K115 [".Disabled"]
      166 DUPTABLE                         R35 K118 [{["BackgroundTransparency"] = 0.5, ["TextTransparency"] = 0.5}]
      167 CALL                             R33 2 -1
      168 SETLIST                          R29 R30 -1 [1]
      170 CALL                             R26 3 -1
      171 SETLIST                          R24 R25 -1 [1]
      173 CALL                             R21 3 -1
      174 SETLIST                          R17 R18 -1 [1]
      176 CALL                             R14 3 1
      177 MOVE                             R15 R1
      178 LOADK                            R16 K119 [".Destructive > #Content > #Buttons > #RightAnchoredButtons > .Primary"]
      179 DUPTABLE                         R17 K121 [{["BackgroundColor3"] = "$ErrorMain"}]
      180 CALL                             R15 2 -1
      181 SETLIST                          R5 R6 -1 [1]
      183 DUPTABLE                         R6 K138 [{["BodyFont"], ["ButtonFont"], ["ButtonHorizontalPadding"], ["ButtonSpacing"], ["ButtonVerticalPadding"], ["DialogPadding"], ["HeadingFont"], ["HeadingToBodyPadding"], ["IconSize"], ["IconToContentPadding"], ["MinimumDialogSize"], ["TextLineHeight"] = 1.25, ["TextSize"] = 16, ["TextToButtonsPadding"], ["TextVerticalPadding"]}]
      184 GETIMPORT                        R7 K140 [Enum.Font.SourceSans]
      186 SETTABLEKS                       R7 R6 K122 ["BodyFont"]
      188 GETIMPORT                        R7 K140 [Enum.Font.SourceSans]
      190 SETTABLEKS                       R7 R6 K123 ["ButtonFont"]
      192 GETIMPORT                        R7 K143 [UDim.new]
      194 LOADN                            R8 0
      195 LOADN                            R9 16
      196 CALL                             R7 2 1
      197 SETTABLEKS                       R7 R6 K124 ["ButtonHorizontalPadding"]
      199 GETIMPORT                        R7 K143 [UDim.new]
      201 LOADN                            R8 0
      202 LOADN                            R9 8
      203 CALL                             R7 2 1
      204 SETTABLEKS                       R7 R6 K125 ["ButtonSpacing"]
      206 GETIMPORT                        R7 K143 [UDim.new]
      208 LOADN                            R8 0
      209 LOADN                            R9 6
      210 CALL                             R7 2 1
      211 SETTABLEKS                       R7 R6 K126 ["ButtonVerticalPadding"]
      213 GETIMPORT                        R7 K143 [UDim.new]
      215 LOADN                            R8 0
      216 LOADN                            R9 16
      217 CALL                             R7 2 1
      218 SETTABLEKS                       R7 R6 K127 ["DialogPadding"]
      220 GETIMPORT                        R7 K145 [Enum.Font.SourceSansSemibold]
      222 SETTABLEKS                       R7 R6 K128 ["HeadingFont"]
      224 GETIMPORT                        R7 K143 [UDim.new]
      226 LOADN                            R8 0
      227 LOADN                            R9 8
      228 CALL                             R7 2 1
      229 SETTABLEKS                       R7 R6 K129 ["HeadingToBodyPadding"]
      231 GETIMPORT                        R7 K148 [UDim2.fromOffset]
      233 LOADN                            R8 32
      234 LOADN                            R9 32
      235 CALL                             R7 2 1
      236 SETTABLEKS                       R7 R6 K130 ["IconSize"]
      238 GETIMPORT                        R7 K143 [UDim.new]
      240 LOADN                            R8 0
      241 LOADN                            R9 16
      242 CALL                             R7 2 1
      243 SETTABLEKS                       R7 R6 K131 ["IconToContentPadding"]
      245 GETIMPORT                        R7 K150 [Vector2.new]
      247 LOADN                            R8 400
      248 LOADN                            R9 144
      249 CALL                             R7 2 1
      250 SETTABLEKS                       R7 R6 K132 ["MinimumDialogSize"]
      252 GETIMPORT                        R7 K143 [UDim.new]
      254 LOADN                            R8 0
      255 LOADN                            R9 16
      256 CALL                             R7 2 1
      257 SETTABLEKS                       R7 R6 K136 ["TextToButtonsPadding"]
      259 GETIMPORT                        R7 K143 [UDim.new]
      261 LOADN                            R8 0
      262 LOADN                            R9 2
      263 CALL                             R7 2 1
      264 SETTABLEKS                       R7 R6 K137 ["TextVerticalPadding"]
      266 CALL                             R2 4 -1
      267 RETURN                           R2 -1
