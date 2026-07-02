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
       72 LOADK                            R15 K33 [".Plugin-Icon-%*"]
       73 MOVE                             R17 R10
       74 NAMECALL                         R15 R15 K34 ["format"]
       76 CALL                             R15 2 1
       77 MOVE                             R14 R15
       78 DUPTABLE                         R15 K35 [{"Image"}]
       79 LOADK                            R17 K36 ["$%*Icon"]
       80 MOVE                             R19 R10
       81 NAMECALL                         R17 R17 K34 ["format"]
       83 CALL                             R17 2 1
       84 MOVE                             R16 R17
       85 SETTABLEKS                       R16 R15 K25 ["Image"]
       87 CALL                             R13 2 -1
       88 FASTCALL                         TABLE_INSERT ; [+2]
       89 GETIMPORT                        R11 K39 [table.insert]
       91 CALL                             R11 -1 0
       92 FORGLOOP                         R6 2 [inext] ; [-23]
       94 DUPTABLE                         R6 K68 [{["FontPrimary"], ["FontBold"], ["FontSemibold"], ["Margin"], ["MarginSmall"], ["HeaderSize"], ["HeaderTitleTextSize"] = 20, ["HeaderSubtitleTextSize"] = 14, ["HeaderIconSize"], ["HeaderLeftMargin"], ["ScrollBarWidth"] = 8, ["ScrollBarGutter"] = 12, ["ButtonBorderRadius"], ["CardBorderRadius"], ["CardIconSize"], ["CardIconTextMargin"], ["CardStatusIndicatorSize"], ["CardStatusMinWidth"] = 40, ["CardUnsubscribeButtonSize"], ["CardElapsedTimeTextSize"] = 16, ["CardSubjectTextSize"] = 18}]
       95 GETIMPORT                        R7 K72 [Enum.Font.SourceSans]
       97 SETTABLEKS                       R7 R6 K40 ["FontPrimary"]
       99 GETIMPORT                        R7 K74 [Enum.Font.SourceSansBold]
      101 SETTABLEKS                       R7 R6 K41 ["FontBold"]
      103 GETIMPORT                        R7 K76 [Enum.Font.SourceSansSemibold]
      105 SETTABLEKS                       R7 R6 K42 ["FontSemibold"]
      107 GETIMPORT                        R7 K79 [UDim.new]
      109 LOADN                            R8 0
      110 LOADN                            R9 8
      111 CALL                             R7 2 1
      112 SETTABLEKS                       R7 R6 K43 ["Margin"]
      114 GETIMPORT                        R7 K79 [UDim.new]
      116 LOADN                            R8 0
      117 LOADN                            R9 2
      118 CALL                             R7 2 1
      119 SETTABLEKS                       R7 R6 K44 ["MarginSmall"]
      121 GETIMPORT                        R7 K81 [UDim2.new]
      123 LOADN                            R8 1
      124 LOADN                            R9 0
      125 LOADN                            R10 0
      126 LOADN                            R11 40
      127 CALL                             R7 4 1
      128 SETTABLEKS                       R7 R6 K45 ["HeaderSize"]
      130 GETIMPORT                        R7 K81 [UDim2.new]
      132 LOADN                            R8 0
      133 LOADN                            R9 20
      134 LOADN                            R10 0
      135 LOADN                            R11 20
      136 CALL                             R7 4 1
      137 SETTABLEKS                       R7 R6 K50 ["HeaderIconSize"]
      139 GETIMPORT                        R7 K79 [UDim.new]
      141 LOADN                            R8 0
      142 LOADN                            R9 14
      143 CALL                             R7 2 1
      144 SETTABLEKS                       R7 R6 K51 ["HeaderLeftMargin"]
      146 GETIMPORT                        R7 K79 [UDim.new]
      148 LOADN                            R8 0
      149 LOADN                            R9 4
      150 CALL                             R7 2 1
      151 SETTABLEKS                       R7 R6 K56 ["ButtonBorderRadius"]
      153 GETIMPORT                        R7 K79 [UDim.new]
      155 LOADN                            R8 0
      156 LOADN                            R9 6
      157 CALL                             R7 2 1
      158 SETTABLEKS                       R7 R6 K57 ["CardBorderRadius"]
      160 GETIMPORT                        R7 K81 [UDim2.new]
      162 LOADN                            R8 0
      163 LOADN                            R9 16
      164 LOADN                            R10 0
      165 LOADN                            R11 16
      166 CALL                             R7 4 1
      167 SETTABLEKS                       R7 R6 K58 ["CardIconSize"]
      169 GETIMPORT                        R7 K79 [UDim.new]
      171 LOADN                            R8 0
      172 LOADN                            R9 4
      173 CALL                             R7 2 1
      174 SETTABLEKS                       R7 R6 K59 ["CardIconTextMargin"]
      176 GETIMPORT                        R7 K81 [UDim2.new]
      178 LOADN                            R8 0
      179 LOADN                            R9 16
      180 LOADN                            R10 0
      181 LOADN                            R11 16
      182 CALL                             R7 4 1
      183 SETTABLEKS                       R7 R6 K60 ["CardStatusIndicatorSize"]
      185 GETIMPORT                        R7 K81 [UDim2.new]
      187 LOADN                            R8 0
      188 LOADN                            R9 16
      189 LOADN                            R10 0
      190 LOADN                            R11 16
      191 CALL                             R7 4 1
      192 SETTABLEKS                       R7 R6 K63 ["CardUnsubscribeButtonSize"]
      194 MOVE                             R7 R3
      195 LOADK                            R8 K82 ["NotificationsPlugin"]
      196 MOVE                             R9 R5
      197 MOVE                             R10 R6
      198 CALL                             R7 3 -1
      199 RETURN                           R7 -1
