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
       16 GETTABLEKS                       R2 R1 K7 ["Styling"]
       18 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       20 GETTABLEKS                       R3 R1 K7 ["Styling"]
       22 GETTABLEKS                       R3 R3 K9 ["createStyleSheet"]
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Src"]
       28 GETTABLEKS                       R5 R5 K11 ["Resources"]
       30 GETTABLEKS                       R5 R5 K12 ["NotificationLuaIcons"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 0 4
       35 MOVE                             R6 R2
       36 LOADK                            R7 K13 [".Plugin-NotificationCard-Hover"]
       37 DUPTABLE                         R8 K16 [{["BackgroundColor3"] = "$ForegroundMain"}]
       38 NEWTABLE                         R9 0 2
       40 MOVE                             R10 R2
       41 LOADK                            R11 K17 [":hover"]
       42 DUPTABLE                         R12 K19 [{["BackgroundColor3"] = "$ActionHover"}]
       43 CALL                             R10 2 1
       44 MOVE                             R11 R2
       45 LOADK                            R12 K20 [":press"]
       46 DUPTABLE                         R13 K22 [{["BackgroundColor3"] = "$ActionActivated"}]
       47 CALL                             R11 2 -1
       48 SETLIST                          R9 R10 -1 [1]
       50 CALL                             R6 3 1
       51 MOVE                             R7 R2
       52 LOADK                            R8 K23 [".Plugin-NotificationCard-HoverDisabled"]
       53 DUPTABLE                         R9 K16 [{["BackgroundColor3"] = "$ForegroundMain"}]
       54 CALL                             R7 2 1
       55 MOVE                             R8 R2
       56 LOADK                            R9 K24 [".Plugin-Icon-StatusDisabled"]
       57 DUPTABLE                         R10 K27 [{["Image"] = "$NotificationStatusDisabledIcon"}]
       58 CALL                             R8 2 1
       59 MOVE                             R9 R2
       60 LOADK                            R10 K28 [".Plugin-Icon-StatusUnread"]
       61 DUPTABLE                         R11 K30 [{["Image"] = "$NotificationStatusUnreadIcon"}]
       62 CALL                             R9 2 -1
       63 SETLIST                          R5 R6 -1 [1]
       65 GETIMPORT                        R6 K32 [ipairs]
       67 MOVE                             R7 R4
       68 CALL                             R6 1 3
       69 FORGPREP_INEXT                   R6
       70 MOVE                             R12 R5
       71 MOVE                             R13 R2
       72 LOADK                            R14 K33 [".Plugin-Icon-%*"]
       73 MOVE                             R16 R10
       74 NAMECALL                         R14 R14 K34 ["format"]
       76 CALL                             R14 2 1
       77 DUPTABLE                         R15 K35 [{"Image"}]
       78 LOADK                            R16 K36 ["$%*Icon"]
       79 MOVE                             R18 R10
       80 NAMECALL                         R16 R16 K34 ["format"]
       82 CALL                             R16 2 1
       83 SETTABLEKS                       R16 R15 K25 ["Image"]
       85 CALL                             R13 2 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R11 K39 [table.insert]
       89 CALL                             R11 -1 0
       90 FORGLOOP                         R6 2 [inext] ; [-21]
       92 DUPTABLE                         R6 K68 [{["FontPrimary"], ["FontBold"], ["FontSemibold"], ["Margin"], ["MarginSmall"], ["HeaderSize"], ["HeaderTitleTextSize"] = 20, ["HeaderSubtitleTextSize"] = 14, ["HeaderIconSize"], ["HeaderLeftMargin"], ["ScrollBarWidth"] = 8, ["ScrollBarGutter"] = 12, ["ButtonBorderRadius"], ["CardBorderRadius"], ["CardIconSize"], ["CardIconTextMargin"], ["CardStatusIndicatorSize"], ["CardStatusMinWidth"] = 40, ["CardUnsubscribeButtonSize"], ["CardElapsedTimeTextSize"] = 16, ["CardSubjectTextSize"] = 18}]
       93 GETIMPORT                        R7 K72 [Enum.Font.SourceSans]
       95 SETTABLEKS                       R7 R6 K40 ["FontPrimary"]
       97 GETIMPORT                        R7 K74 [Enum.Font.SourceSansBold]
       99 SETTABLEKS                       R7 R6 K41 ["FontBold"]
      101 GETIMPORT                        R7 K76 [Enum.Font.SourceSansSemibold]
      103 SETTABLEKS                       R7 R6 K42 ["FontSemibold"]
      105 GETIMPORT                        R7 K79 [UDim.new]
      107 LOADN                            R8 0
      108 LOADN                            R9 8
      109 CALL                             R7 2 1
      110 SETTABLEKS                       R7 R6 K43 ["Margin"]
      112 GETIMPORT                        R7 K79 [UDim.new]
      114 LOADN                            R8 0
      115 LOADN                            R9 2
      116 CALL                             R7 2 1
      117 SETTABLEKS                       R7 R6 K44 ["MarginSmall"]
      119 GETIMPORT                        R7 K81 [UDim2.new]
      121 LOADN                            R8 1
      122 LOADN                            R9 0
      123 LOADN                            R10 0
      124 LOADN                            R11 40
      125 CALL                             R7 4 1
      126 SETTABLEKS                       R7 R6 K45 ["HeaderSize"]
      128 GETIMPORT                        R7 K81 [UDim2.new]
      130 LOADN                            R8 0
      131 LOADN                            R9 20
      132 LOADN                            R10 0
      133 LOADN                            R11 20
      134 CALL                             R7 4 1
      135 SETTABLEKS                       R7 R6 K50 ["HeaderIconSize"]
      137 GETIMPORT                        R7 K79 [UDim.new]
      139 LOADN                            R8 0
      140 LOADN                            R9 14
      141 CALL                             R7 2 1
      142 SETTABLEKS                       R7 R6 K51 ["HeaderLeftMargin"]
      144 GETIMPORT                        R7 K79 [UDim.new]
      146 LOADN                            R8 0
      147 LOADN                            R9 4
      148 CALL                             R7 2 1
      149 SETTABLEKS                       R7 R6 K56 ["ButtonBorderRadius"]
      151 GETIMPORT                        R7 K79 [UDim.new]
      153 LOADN                            R8 0
      154 LOADN                            R9 6
      155 CALL                             R7 2 1
      156 SETTABLEKS                       R7 R6 K57 ["CardBorderRadius"]
      158 GETIMPORT                        R7 K81 [UDim2.new]
      160 LOADN                            R8 0
      161 LOADN                            R9 16
      162 LOADN                            R10 0
      163 LOADN                            R11 16
      164 CALL                             R7 4 1
      165 SETTABLEKS                       R7 R6 K58 ["CardIconSize"]
      167 GETIMPORT                        R7 K79 [UDim.new]
      169 LOADN                            R8 0
      170 LOADN                            R9 4
      171 CALL                             R7 2 1
      172 SETTABLEKS                       R7 R6 K59 ["CardIconTextMargin"]
      174 GETIMPORT                        R7 K81 [UDim2.new]
      176 LOADN                            R8 0
      177 LOADN                            R9 16
      178 LOADN                            R10 0
      179 LOADN                            R11 16
      180 CALL                             R7 4 1
      181 SETTABLEKS                       R7 R6 K60 ["CardStatusIndicatorSize"]
      183 GETIMPORT                        R7 K81 [UDim2.new]
      185 LOADN                            R8 0
      186 LOADN                            R9 16
      187 LOADN                            R10 0
      188 LOADN                            R11 16
      189 CALL                             R7 4 1
      190 SETTABLEKS                       R7 R6 K63 ["CardUnsubscribeButtonSize"]
      192 MOVE                             R7 R3
      193 LOADK                            R8 K82 ["NotificationsPlugin"]
      194 MOVE                             R9 R5
      195 MOVE                             R10 R6
      196 CALL                             R7 3 -1
      197 RETURN                           R7 -1
