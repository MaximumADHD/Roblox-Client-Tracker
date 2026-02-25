MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Styling"]
       18 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       20 GETTABLEKS                       R4 R1 K7 ["Styling"]
       22 GETTABLEKS                       R3 R4 K9 ["createStyleSheet"]
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R7 K11 ["Resources"]
       30 GETTABLEKS                       R5 R6 K12 ["NotificationLuaIcons"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 0 4
       35 MOVE                             R6 R2
       36 LOADK                            R7 K13 [".Plugin-NotificationCard-Hover"]
       37 DUPTABLE                         R8 K15 [{"BackgroundColor3"}]
       38 LOADK                            R9 K16 ["$ForegroundMain"]
       39 SETTABLEKS                       R9 R8 K14 ["BackgroundColor3"]
       41 NEWTABLE                         R9 0 2
       43 MOVE                             R10 R2
       44 LOADK                            R11 K17 [":hover"]
       45 DUPTABLE                         R12 K15 [{"BackgroundColor3"}]
       46 LOADK                            R13 K18 ["$ActionHover"]
       47 SETTABLEKS                       R13 R12 K14 ["BackgroundColor3"]
       49 CALL                             R10 2 1
       50 MOVE                             R11 R2
       51 LOADK                            R12 K19 [":press"]
       52 DUPTABLE                         R13 K15 [{"BackgroundColor3"}]
       53 LOADK                            R14 K20 ["$ActionActivated"]
       54 SETTABLEKS                       R14 R13 K14 ["BackgroundColor3"]
       56 CALL                             R11 2 -1
       57 SETLIST                          R9 R10 -1 [1]
       59 CALL                             R6 3 1
       60 MOVE                             R7 R2
       61 LOADK                            R8 K21 [".Plugin-NotificationCard-HoverDisabled"]
       62 DUPTABLE                         R9 K15 [{"BackgroundColor3"}]
       63 LOADK                            R10 K16 ["$ForegroundMain"]
       64 SETTABLEKS                       R10 R9 K14 ["BackgroundColor3"]
       66 CALL                             R7 2 1
       67 MOVE                             R8 R2
       68 LOADK                            R9 K22 [".Plugin-Icon-StatusDisabled"]
       69 DUPTABLE                         R10 K24 [{"Image"}]
       70 LOADK                            R11 K25 ["$NotificationStatusDisabledIcon"]
       71 SETTABLEKS                       R11 R10 K23 ["Image"]
       73 CALL                             R8 2 1
       74 MOVE                             R9 R2
       75 LOADK                            R10 K26 [".Plugin-Icon-StatusUnread"]
       76 DUPTABLE                         R11 K24 [{"Image"}]
       77 LOADK                            R12 K27 ["$NotificationStatusUnreadIcon"]
       78 SETTABLEKS                       R12 R11 K23 ["Image"]
       80 CALL                             R9 2 -1
       81 SETLIST                          R5 R6 -1 [1]
       83 GETIMPORT                        R6 K29 [ipairs]
       85 MOVE                             R7 R4
       86 CALL                             R6 1 3
       87 FORGPREP_INEXT                   R6
       88 MOVE                             R12 R5
       89 MOVE                             R13 R2
       90 LOADK                            R15 K30 [".Plugin-Icon-%*"]
       91 MOVE                             R17 R10
       92 NAMECALL                         R15 R15 K31 ["format"]
       94 CALL                             R15 2 1
       95 MOVE                             R14 R15
       96 DUPTABLE                         R15 K24 [{"Image"}]
       97 LOADK                            R17 K32 ["$%*Icon"]
       98 MOVE                             R19 R10
       99 NAMECALL                         R17 R17 K31 ["format"]
      101 CALL                             R17 2 1
      102 MOVE                             R16 R17
      103 SETTABLEKS                       R16 R15 K23 ["Image"]
      105 CALL                             R13 2 -1
      106 FASTCALL                         TABLE_INSERT ; [+2]
      107 GETIMPORT                        R11 K35 [table.insert]
      109 CALL                             R11 -1 0
      110 FORGLOOP                         R6 2 [inext] ; [-23]
      112 DUPTABLE                         R6 K57 [{"FontPrimary", "FontBold", "FontSemibold", "Margin", "MarginSmall", "HeaderSize", "HeaderTitleTextSize", "HeaderSubtitleTextSize", "HeaderIconSize", "HeaderLeftMargin", "ScrollBarWidth", "ScrollBarGutter", "ButtonBorderRadius", "CardBorderRadius", "CardIconSize", "CardIconTextMargin", "CardStatusIndicatorSize", "CardStatusMinWidth", "CardUnsubscribeButtonSize", "CardElapsedTimeTextSize", "CardSubjectTextSize"}]
      113 GETIMPORT                        R7 K61 [Enum.Font.SourceSans]
      115 SETTABLEKS                       R7 R6 K36 ["FontPrimary"]
      117 GETIMPORT                        R7 K63 [Enum.Font.SourceSansBold]
      119 SETTABLEKS                       R7 R6 K37 ["FontBold"]
      121 GETIMPORT                        R7 K65 [Enum.Font.SourceSansSemibold]
      123 SETTABLEKS                       R7 R6 K38 ["FontSemibold"]
      125 GETIMPORT                        R7 K68 [UDim.new]
      127 LOADN                            R8 0
      128 LOADN                            R9 8
      129 CALL                             R7 2 1
      130 SETTABLEKS                       R7 R6 K39 ["Margin"]
      132 GETIMPORT                        R7 K68 [UDim.new]
      134 LOADN                            R8 0
      135 LOADN                            R9 2
      136 CALL                             R7 2 1
      137 SETTABLEKS                       R7 R6 K40 ["MarginSmall"]
      139 GETIMPORT                        R7 K70 [UDim2.new]
      141 LOADN                            R8 1
      142 LOADN                            R9 0
      143 LOADN                            R10 0
      144 LOADN                            R11 40
      145 CALL                             R7 4 1
      146 SETTABLEKS                       R7 R6 K41 ["HeaderSize"]
      148 LOADN                            R7 20
      149 SETTABLEKS                       R7 R6 K42 ["HeaderTitleTextSize"]
      151 LOADN                            R7 14
      152 SETTABLEKS                       R7 R6 K43 ["HeaderSubtitleTextSize"]
      154 GETIMPORT                        R7 K70 [UDim2.new]
      156 LOADN                            R8 0
      157 LOADN                            R9 20
      158 LOADN                            R10 0
      159 LOADN                            R11 20
      160 CALL                             R7 4 1
      161 SETTABLEKS                       R7 R6 K44 ["HeaderIconSize"]
      163 GETIMPORT                        R7 K68 [UDim.new]
      165 LOADN                            R8 0
      166 LOADN                            R9 14
      167 CALL                             R7 2 1
      168 SETTABLEKS                       R7 R6 K45 ["HeaderLeftMargin"]
      170 LOADN                            R7 8
      171 SETTABLEKS                       R7 R6 K46 ["ScrollBarWidth"]
      173 LOADN                            R7 12
      174 SETTABLEKS                       R7 R6 K47 ["ScrollBarGutter"]
      176 GETIMPORT                        R7 K68 [UDim.new]
      178 LOADN                            R8 0
      179 LOADN                            R9 4
      180 CALL                             R7 2 1
      181 SETTABLEKS                       R7 R6 K48 ["ButtonBorderRadius"]
      183 GETIMPORT                        R7 K68 [UDim.new]
      185 LOADN                            R8 0
      186 LOADN                            R9 6
      187 CALL                             R7 2 1
      188 SETTABLEKS                       R7 R6 K49 ["CardBorderRadius"]
      190 GETIMPORT                        R7 K70 [UDim2.new]
      192 LOADN                            R8 0
      193 LOADN                            R9 16
      194 LOADN                            R10 0
      195 LOADN                            R11 16
      196 CALL                             R7 4 1
      197 SETTABLEKS                       R7 R6 K50 ["CardIconSize"]
      199 GETIMPORT                        R7 K68 [UDim.new]
      201 LOADN                            R8 0
      202 LOADN                            R9 4
      203 CALL                             R7 2 1
      204 SETTABLEKS                       R7 R6 K51 ["CardIconTextMargin"]
      206 GETIMPORT                        R7 K70 [UDim2.new]
      208 LOADN                            R8 0
      209 LOADN                            R9 16
      210 LOADN                            R10 0
      211 LOADN                            R11 16
      212 CALL                             R7 4 1
      213 SETTABLEKS                       R7 R6 K52 ["CardStatusIndicatorSize"]
      215 LOADN                            R7 40
      216 SETTABLEKS                       R7 R6 K53 ["CardStatusMinWidth"]
      218 GETIMPORT                        R7 K70 [UDim2.new]
      220 LOADN                            R8 0
      221 LOADN                            R9 16
      222 LOADN                            R10 0
      223 LOADN                            R11 16
      224 CALL                             R7 4 1
      225 SETTABLEKS                       R7 R6 K54 ["CardUnsubscribeButtonSize"]
      227 LOADN                            R7 16
      228 SETTABLEKS                       R7 R6 K55 ["CardElapsedTimeTextSize"]
      230 LOADN                            R7 18
      231 SETTABLEKS                       R7 R6 K56 ["CardSubjectTextSize"]
      233 MOVE                             R7 R3
      234 LOADK                            R8 K71 ["NotificationsPlugin"]
      235 MOVE                             R9 R5
      236 MOVE                             R10 R6
      237 CALL                             R7 3 -1
      238 RETURN                           R7 -1
