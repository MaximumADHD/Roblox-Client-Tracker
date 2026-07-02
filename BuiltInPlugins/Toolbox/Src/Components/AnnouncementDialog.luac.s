PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R2 R1 K2 ["shouldIgnoreDateAndIXPChecks"]
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R1 K3 ["Settings"]
       14 LOADK                            R4 K4 ["Plugin"]
       15 NAMECALL                         R2 R2 K5 ["get"]
       17 CALL                             R2 2 1
       18 NAMECALL                         R3 R2 K6 ["getLastAnnouncementViewedKey"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["getAnnouncementConfiguration"]
       24 CALL                             R4 0 1
       25 GETTABLEKS                       R6 R4 K9 ["Date"]
       27 ORK                              R5 R6 K8 [""]
       28 LOADB                            R6 0
       29 LOADB                            R7 0
       30 LOADB                            R8 0
       31 GETTABLEKS                       R9 R4 K10 ["IXPComparisonDefinitionKey"]
       33 GETTABLEKS                       R10 R4 K11 ["IXPComparisonVariableKey"]
       35 JUMPIFEQKNIL                     R9 ; [+20]
       37 JUMPIFEQKS                       R9 K8 [""] ; [+18]
       39 JUMPIFEQKNIL                     R10 ; [+16]
       41 JUMPIFEQKS                       R10 K8 [""] ; [+14]
       43 GETTABLEKS                       R11 R1 K12 ["checkUserInIXP"]
       45 LOADB                            R12 0
       46 JUMPIFEQKNIL                     R11 ; [+7]
       48 MOVE                             R12 R11
       49 GETTABLEKS                       R13 R1 K13 ["IXP"]
       51 MOVE                             R14 R9
       52 MOVE                             R15 R10
       53 CALL                             R12 3 1
       54 MOVE                             R8 R12
       55 JUMP                             ; [+1]
       56 LOADB                            R8 1
       57 JUMPIFEQKS                       R5 K8 [""] ; [+69]
       59 LOADK                            R13 K14 ["(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)"]
       60 NAMECALL                         R11 R5 K15 ["match"]
       62 CALL                             R11 2 6
       63 DUPTABLE                         R17 K22 [{"year", "month", "day", "hour", "min", "sec"}]
       64 FASTCALL1                        TONUMBER R11 ; [+3]
       65 MOVE                             R19 R11
       66 GETIMPORT                        R18 K24 [tonumber]
       68 CALL                             R18 1 1
       69 SETTABLEKS                       R18 R17 K16 ["year"]
       71 FASTCALL1                        TONUMBER R12 ; [+3]
       72 MOVE                             R19 R12
       73 GETIMPORT                        R18 K24 [tonumber]
       75 CALL                             R18 1 1
       76 SETTABLEKS                       R18 R17 K17 ["month"]
       78 FASTCALL1                        TONUMBER R13 ; [+3]
       79 MOVE                             R19 R13
       80 GETIMPORT                        R18 K24 [tonumber]
       82 CALL                             R18 1 1
       83 SETTABLEKS                       R18 R17 K18 ["day"]
       85 FASTCALL1                        TONUMBER R14 ; [+3]
       86 MOVE                             R19 R14
       87 GETIMPORT                        R18 K24 [tonumber]
       89 CALL                             R18 1 1
       90 SETTABLEKS                       R18 R17 K19 ["hour"]
       92 FASTCALL1                        TONUMBER R15 ; [+3]
       93 MOVE                             R19 R15
       94 GETIMPORT                        R18 K24 [tonumber]
       96 CALL                             R18 1 1
       97 SETTABLEKS                       R18 R17 K20 ["min"]
       99 FASTCALL1                        TONUMBER R16 ; [+3]
      100 MOVE                             R19 R16
      101 GETIMPORT                        R18 K24 [tonumber]
      103 CALL                             R18 1 1
      104 SETTABLEKS                       R18 R17 K21 ["sec"]
      106 GETIMPORT                        R18 K27 [os.time]
      108 MOVE                             R19 R17
      109 CALL                             R18 1 1
      110 GETIMPORT                        R20 K30 [os.difftime]
      112 GETIMPORT                        R21 K27 [os.time]
      114 CALL                             R21 0 1
      115 MOVE                             R22 R18
      116 CALL                             R20 2 1
      117 DIVK                             R19 R20 K28 [86400]
      118 FASTCALL1                        MATH_FLOOR R19 ; [+3]
      119 MOVE                             R21 R19
      120 GETIMPORT                        R20 K33 [math.floor]
      122 CALL                             R20 1 1
      123 LOADN                            R21 30
      124 JUMPIFNOTLT                      R21 R20 ; [+2]
      126 LOADB                            R6 1
      127 GETTABLEKS                       R11 R4 K34 ["LatestUserId"]
      129 JUMPIFNOT                        R11 ; [+14]
      130 JUMPIFEQKS                       R11 K8 [""] ; [+13]
      132 FASTCALL1                        TONUMBER R11 ; [+3]
      133 MOVE                             R13 R11
      134 GETIMPORT                        R12 K24 [tonumber]
      136 CALL                             R12 1 1
      137 MOVE                             R11 R12
      138 GETUPVAL                         R12 3
      139 CALL                             R12 0 1
      140 JUMPIFLT                         R11 R12 ; [+2]
      142 LOADB                            R7 0 +1
      143 LOADB                            R7 1
      144 GETTABLEKS                       R12 R0 K35 ["isEnabled"]
      146 JUMPIFNOT                        R12 ; [+11]
      147 LOADB                            R12 0
      148 JUMPIFEQKS                       R5 K8 [""] ; [+9]
      150 LOADB                            R12 0
      151 JUMPIFEQ                         R3 R5 ; [+6]
      153 NOT                              R12 R6
      154 JUMPIFNOT                        R12 ; [+3]
      155 NOT                              R12 R7
      156 JUMPIFNOT                        R12 ; [+1]
      157 MOVE                             R12 R8
      158 RETURN                           R12 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isEnabled"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 DUPTABLE                         R1 K2 [{[1] = False}]
        4 RETURN                           R1 1
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getAnnouncementConfiguration"]
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R3 R1 K3 ["Date"]
        9 ORK                              R2 R3 K2 [""]
       10 GETTABLEKS                       R3 R0 K4 ["Modal"]
       12 GETTABLEKS                       R4 R3 K5 ["onAssetPreviewToggled"]
       14 LOADB                            R5 0
       15 CALL                             R4 1 0
       16 GETTABLEKS                       R4 R0 K6 ["Settings"]
       18 LOADK                            R6 K7 ["Plugin"]
       19 NAMECALL                         R4 R4 K8 ["get"]
       21 CALL                             R4 2 1
       22 MOVE                             R7 R2
       23 NAMECALL                         R5 R4 K9 ["setLastAnnouncementViewedKey"]
       25 CALL                             R5 2 0
       26 GETUPVAL                         R5 0
       27 DUPCLOSURE                       R7 K10 [PROTO_1]
       28 NAMECALL                         R5 R5 K11 ["setState"]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R5 2
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+9]
       34 GETTABLEKS                       R5 R0 K12 ["onCloseDialog"]
       36 JUMPIFNOT                        R5 ; [+6]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K0 ["props"]
       40 GETTABLEKS                       R5 R5 K12 ["onCloseDialog"]
       42 CALL                             R5 0 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAnnouncementConfiguration"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["LinkLocation"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K2 ["OpenBrowserWindow"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["getAnnouncementConfigurationOrDefault"]
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K4 ["AnnouncementLinkClicked"]
       18 GETTABLEKS                       R4 R2 K5 ["ButtonKey"]
       20 GETTABLEKS                       R5 R2 K6 ["Date"]
       22 GETTABLEKS                       R6 R2 K7 ["DescriptionKey"]
       24 GETTABLEKS                       R7 R2 K8 ["HeaderKey"]
       26 GETTABLEKS                       R8 R2 K9 ["LinkKey"]
       28 GETTABLEKS                       R9 R2 K1 ["LinkLocation"]
       30 CALL                             R3 6 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAnnouncementConfigurationOrDefault"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K2 [tick]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["state"]
       10 GETTABLEKS                       R2 R2 K4 ["openStartTime"]
       12 SUB                              R4 R1 R2
       13 MULK                             R3 R4 K5 [1000]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K6 ["AnnouncementClosed"]
       17 GETTABLEKS                       R5 R0 K7 ["ButtonKey"]
       19 GETTABLEKS                       R6 R0 K8 ["Date"]
       21 GETTABLEKS                       R7 R0 K9 ["DescriptionKey"]
       23 GETTABLEKS                       R8 R0 K10 ["HeaderKey"]
       25 GETTABLEKS                       R9 R0 K11 ["LinkKey"]
       27 GETTABLEKS                       R10 R0 K12 ["LinkLocation"]
       29 MOVE                             R11 R3
       30 CALL                             R4 7 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K13 ["onClose"]
       34 CALL                             R4 0 0
       35 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAnnouncementConfigurationOrDefault"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K2 [tick]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["state"]
       10 GETTABLEKS                       R2 R2 K4 ["openStartTime"]
       12 SUB                              R4 R1 R2
       13 MULK                             R3 R4 K5 [1000]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K6 ["AnnouncementAcknowledged"]
       17 GETTABLEKS                       R5 R0 K7 ["ButtonKey"]
       19 GETTABLEKS                       R6 R0 K8 ["Date"]
       21 GETTABLEKS                       R7 R0 K9 ["DescriptionKey"]
       23 GETTABLEKS                       R8 R0 K10 ["HeaderKey"]
       25 GETTABLEKS                       R9 R0 K11 ["LinkKey"]
       27 GETTABLEKS                       R10 R0 K12 ["LinkLocation"]
       29 MOVE                             R11 R3
       30 CALL                             R4 7 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K13 ["onClose"]
       34 CALL                             R4 0 0
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAnnouncementConfiguration"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K8 [{"ButtonKey", "Date", "DescriptionKey", "HeaderKey", "Image", "LinkKey", "LinkLocation"}]
        5 GETTABLEKS                       R4 R1 K1 ["ButtonKey"]
        7 ORK                              R3 R4 K9 ["Button_Default"]
        8 SETTABLEKS                       R3 R2 K1 ["ButtonKey"]
       10 GETTABLEKS                       R4 R1 K2 ["Date"]
       12 ORK                              R3 R4 K10 [""]
       13 SETTABLEKS                       R3 R2 K2 ["Date"]
       15 GETTABLEKS                       R4 R1 K3 ["DescriptionKey"]
       17 ORK                              R3 R4 K10 [""]
       18 SETTABLEKS                       R3 R2 K3 ["DescriptionKey"]
       20 GETTABLEKS                       R4 R1 K4 ["HeaderKey"]
       22 ORK                              R3 R4 K11 ["Header_Default"]
       23 SETTABLEKS                       R3 R2 K4 ["HeaderKey"]
       25 GETTABLEKS                       R3 R1 K5 ["Image"]
       27 SETTABLEKS                       R3 R2 K5 ["Image"]
       29 GETTABLEKS                       R4 R1 K6 ["LinkKey"]
       31 ORK                              R3 R4 K12 ["LinkText_Default"]
       32 SETTABLEKS                       R3 R2 K6 ["LinkKey"]
       34 GETTABLEKS                       R3 R1 K7 ["LinkLocation"]
       36 SETTABLEKS                       R3 R2 K7 ["LinkLocation"]
       38 RETURN                           R2 1

PROTO_7:
        0 DUPTABLE                         R2 K4 [{[1] = True, ["openStartTime"] = 0}]
        1 SETTABLEKS                       R2 R0 K5 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R2 R0 K6 ["shouldShowAnnouncementDialog"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R2 R0 K7 ["onClose"]
       16 NEWCLOSURE                       R2 P2
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 SETTABLEKS                       R2 R0 K8 ["onClickLink"]
       23 NEWCLOSURE                       R2 P3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R2 R0 K9 ["onClickXButton"]
       28 NEWCLOSURE                       R2 P4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U4
       31 SETTABLEKS                       R2 R0 K10 ["onClickAcknowledgeButton"]
       33 DUPCLOSURE                       R2 K11 [PROTO_6]
       34 CAPTURE                          UPVAL U1
       35 SETTABLEKS                       R2 R0 K12 ["getAnnouncementConfigurationOrDefault"]
       37 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["shouldShowAnnouncementDialog"]
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+36]
        4 GETTABLEKS                       R1 R0 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["Modal"]
        8 GETTABLEKS                       R2 R1 K3 ["onAssetPreviewToggled"]
       10 LOADB                            R3 1
       11 CALL                             R2 1 0
       12 DUPTABLE                         R4 K5 [{"openStartTime"}]
       13 GETIMPORT                        R5 K7 [tick]
       15 CALL                             R5 0 1
       16 SETTABLEKS                       R5 R4 K4 ["openStartTime"]
       18 NAMECALL                         R2 R0 K8 ["setState"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K9 ["getAnnouncementConfigurationOrDefault"]
       23 CALL                             R2 0 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K10 ["AnnouncementViewed"]
       27 GETTABLEKS                       R4 R2 K11 ["ButtonKey"]
       29 GETTABLEKS                       R5 R2 K12 ["Date"]
       31 GETTABLEKS                       R6 R2 K13 ["DescriptionKey"]
       33 GETTABLEKS                       R7 R2 K14 ["HeaderKey"]
       35 GETTABLEKS                       R8 R2 K15 ["LinkKey"]
       37 GETTABLEKS                       R9 R2 K16 ["LinkLocation"]
       39 CALL                             R3 6 0
       40 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["shouldShowAnnouncementDialog"]
        2 CALL                             R1 0 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["state"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["new"]
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R3 R0 K3 ["props"]
       13 GETTABLEKS                       R4 R3 K4 ["Localization"]
       15 GETTABLEKS                       R5 R3 K5 ["Settings"]
       17 LOADK                            R7 K6 ["Plugin"]
       18 NAMECALL                         R5 R5 K7 ["get"]
       20 CALL                             R5 2 1
       21 GETTABLEKS                       R6 R3 K8 ["Stylizer"]
       23 GETTABLEKS                       R7 R3 K9 ["WrapperProps"]
       25 GETTABLEKS                       R8 R6 K10 ["announcementDialog"]
       27 GETTABLEKS                       R9 R0 K11 ["getAnnouncementConfigurationOrDefault"]
       29 CALL                             R9 0 1
       30 GETTABLEKS                       R10 R9 K12 ["ButtonKey"]
       32 GETTABLEKS                       R11 R9 K13 ["DescriptionKey"]
       34 GETTABLEKS                       R12 R9 K14 ["HeaderKey"]
       36 GETTABLEKS                       R13 R9 K15 ["Image"]
       38 GETTABLEKS                       R14 R9 K16 ["LinkKey"]
       40 GETTABLEKS                       R15 R9 K17 ["LinkLocation"]
       42 LOADK                            R18 K18 ["Announcement"]
       43 MOVE                             R19 R10
       44 NAMECALL                         R16 R4 K19 ["getText"]
       46 CALL                             R16 3 1
       47 LOADK                            R19 K18 ["Announcement"]
       48 MOVE                             R20 R11
       49 NAMECALL                         R17 R4 K19 ["getText"]
       51 CALL                             R17 3 1
       52 LOADK                            R20 K18 ["Announcement"]
       53 MOVE                             R21 R12
       54 NAMECALL                         R18 R4 K19 ["getText"]
       56 CALL                             R18 3 1
       57 LOADK                            R21 K18 ["Announcement"]
       58 MOVE                             R22 R14
       59 NAMECALL                         R19 R4 K19 ["getText"]
       61 CALL                             R19 3 1
       62 GETTABLEKS                       R20 R3 K20 ["AbsoluteSize"]
       64 GETTABLEKS                       R22 R20 K21 ["X"]
       66 LOADN                            R23 400
       67 JUMPIFLT                         R23 R22 ; [+2]
       69 LOADB                            R21 0 +1
       70 LOADB                            R21 1
       71 LOADNIL                          R22
       72 JUMPIFNOT                        R21 ; [+7]
       73 GETIMPORT                        R23 K23 [UDim.new]
       75 LOADN                            R24 0
       76 LOADN                            R25 400
       77 CALL                             R23 2 1
       78 MOVE                             R22 R23
       79 JUMP                             ; [+6]
       80 GETIMPORT                        R23 K23 [UDim.new]
       82 LOADN                            R24 1
       83 LOADN                            R25 0
       84 CALL                             R23 2 1
       85 MOVE                             R22 R23
       86 GETUPVAL                         R23 1
       87 GETTABLEKS                       R23 R23 K24 ["createElement"]
       89 GETUPVAL                         R24 2
       90 DUPTABLE                         R25 K26 [{"OnFocusLost"}]
       91 DUPCLOSURE                       R26 K27 [PROTO_9]
       92 SETTABLEKS                       R26 R25 K25 ["OnFocusLost"]
       94 DUPTABLE                         R26 K29 [{"Overlay"}]
       95 GETUPVAL                         R27 1
       96 GETTABLEKS                       R27 R27 K24 ["createElement"]
       98 LOADK                            R28 K30 ["Frame"]
       99 DUPTABLE                         R29 K34 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
      100 GETTABLEKS                       R30 R8 K35 ["overlayColor"]
      102 SETTABLEKS                       R30 R29 K31 ["BackgroundColor3"]
      104 GETTABLEKS                       R30 R8 K36 ["overlayTransparency"]
      106 SETTABLEKS                       R30 R29 K32 ["BackgroundTransparency"]
      108 GETIMPORT                        R30 K38 [UDim2.new]
      110 LOADN                            R31 1
      111 LOADN                            R32 0
      112 LOADN                            R33 1
      113 LOADN                            R34 0
      114 CALL                             R30 4 1
      115 SETTABLEKS                       R30 R29 K33 ["Size"]
      117 DUPTABLE                         R30 K40 [{"Contents"}]
      118 GETUPVAL                         R31 1
      119 GETTABLEKS                       R31 R31 K24 ["createElement"]
      121 GETUPVAL                         R32 3
      122 GETUPVAL                         R33 4
      123 GETTABLEKS                       R33 R33 K41 ["join"]
      125 DUPTABLE                         R34 K50 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Padding"] = 20, ["Size"], ["Spacing"] = 10, ["VerticalAlignment"]}]
      126 GETIMPORT                        R35 K53 [Enum.AutomaticSize.Y]
      128 SETTABLEKS                       R35 R34 K42 ["AutomaticSize"]
      130 GETIMPORT                        R35 K55 [Enum.HorizontalAlignment.Center]
      132 SETTABLEKS                       R35 R34 K43 ["HorizontalAlignment"]
      134 GETIMPORT                        R35 K58 [Enum.FillDirection.Vertical]
      136 SETTABLEKS                       R35 R34 K44 ["Layout"]
      138 GETIMPORT                        R35 K38 [UDim2.new]
      140 LOADN                            R36 1
      141 LOADN                            R37 0
      142 LOADN                            R38 1
      143 LOADN                            R39 0
      144 CALL                             R35 4 1
      145 SETTABLEKS                       R35 R34 K33 ["Size"]
      147 GETIMPORT                        R35 K60 [Enum.VerticalAlignment.Top]
      149 SETTABLEKS                       R35 R34 K49 ["VerticalAlignment"]
      151 MOVE                             R35 R7
      152 CALL                             R33 2 1
      153 DUPTABLE                         R34 K63 [{"CloseButtonContainer", "AnnouncementDialog"}]
      154 GETUPVAL                         R35 1
      155 GETTABLEKS                       R35 R35 K24 ["createElement"]
      157 GETUPVAL                         R36 3
      158 DUPTABLE                         R37 K65 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
      159 GETIMPORT                        R38 K67 [Enum.AutomaticSize.XY]
      161 SETTABLEKS                       R38 R37 K42 ["AutomaticSize"]
      163 GETIMPORT                        R38 K69 [Enum.HorizontalAlignment.Right]
      165 SETTABLEKS                       R38 R37 K43 ["HorizontalAlignment"]
      167 GETIMPORT                        R38 K71 [Enum.FillDirection.Horizontal]
      169 SETTABLEKS                       R38 R37 K44 ["Layout"]
      171 NAMECALL                         R38 R2 K72 ["getNextOrder"]
      173 CALL                             R38 1 1
      174 SETTABLEKS                       R38 R37 K64 ["LayoutOrder"]
      176 GETIMPORT                        R38 K38 [UDim2.new]
      178 MOVE                             R39 R22
      179 GETIMPORT                        R40 K23 [UDim.new]
      181 LOADN                            R41 0
      182 LOADN                            R42 0
      183 CALL                             R40 2 -1
      184 CALL                             R38 -1 1
      185 SETTABLEKS                       R38 R37 K33 ["Size"]
      187 DUPTABLE                         R38 K74 [{"CloseButton"}]
      188 GETUPVAL                         R39 1
      189 GETTABLEKS                       R39 R39 K24 ["createElement"]
      191 LOADK                            R40 K75 ["ImageButton"]
      192 NEWTABLE                         R41 8 0
      194 LOADB                            R42 0
      195 SETTABLEKS                       R42 R41 K76 ["AutoButtonColor"]
      197 LOADN                            R42 1
      198 SETTABLEKS                       R42 R41 K32 ["BackgroundTransparency"]
      200 GETUPVAL                         R42 5
      201 GETTABLEKS                       R42 R42 K77 ["CLOSE_ICON"]
      203 SETTABLEKS                       R42 R41 K15 ["Image"]
      205 GETTABLEKS                       R42 R8 K78 ["closeIconColor"]
      207 SETTABLEKS                       R42 R41 K79 ["ImageColor3"]
      209 GETIMPORT                        R42 K81 [UDim2.fromOffset]
      211 LOADN                            R43 28
      212 LOADN                            R44 28
      213 CALL                             R42 2 1
      214 SETTABLEKS                       R42 R41 K33 ["Size"]
      216 LOADN                            R42 1
      217 SETTABLEKS                       R42 R41 K64 ["LayoutOrder"]
      219 GETUPVAL                         R42 1
      220 GETTABLEKS                       R42 R42 K82 ["Event"]
      222 GETTABLEKS                       R42 R42 K83 ["Activated"]
      224 GETTABLEKS                       R43 R0 K84 ["onClickXButton"]
      226 SETTABLE                         R43 R41 R42
      227 DUPTABLE                         R42 K86 [{"HoverArea"}]
      228 GETUPVAL                         R43 1
      229 GETTABLEKS                       R43 R43 K24 ["createElement"]
      231 GETUPVAL                         R44 6
      232 DUPTABLE                         R45 K89 [{["Cursor"] = "PointingHand"}]
      233 CALL                             R43 2 1
      234 SETTABLEKS                       R43 R42 K85 ["HoverArea"]
      236 CALL                             R39 3 1
      237 SETTABLEKS                       R39 R38 K73 ["CloseButton"]
      239 CALL                             R35 3 1
      240 SETTABLEKS                       R35 R34 K61 ["CloseButtonContainer"]
      242 GETUPVAL                         R35 1
      243 GETTABLEKS                       R35 R35 K24 ["createElement"]
      245 LOADK                            R36 K30 ["Frame"]
      246 DUPTABLE                         R37 K90 [{"AutomaticSize", "BackgroundColor3", "LayoutOrder", "Size"}]
      247 GETIMPORT                        R38 K53 [Enum.AutomaticSize.Y]
      249 SETTABLEKS                       R38 R37 K42 ["AutomaticSize"]
      251 GETTABLEKS                       R38 R8 K91 ["backgroundColor"]
      253 SETTABLEKS                       R38 R37 K31 ["BackgroundColor3"]
      255 NAMECALL                         R38 R2 K72 ["getNextOrder"]
      257 CALL                             R38 1 1
      258 SETTABLEKS                       R38 R37 K64 ["LayoutOrder"]
      260 GETIMPORT                        R38 K38 [UDim2.new]
      262 MOVE                             R39 R22
      263 GETIMPORT                        R40 K23 [UDim.new]
      265 LOADN                            R41 0
      266 LOADN                            R42 0
      267 CALL                             R40 2 -1
      268 CALL                             R38 -1 1
      269 SETTABLEKS                       R38 R37 K33 ["Size"]
      271 DUPTABLE                         R38 K40 [{"Contents"}]
      272 GETUPVAL                         R39 1
      273 GETTABLEKS                       R39 R39 K24 ["createElement"]
      275 GETUPVAL                         R40 3
      276 DUPTABLE                         R41 K92 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Padding"], ["Spacing"] = 10, ["Size"], ["VerticalAlignment"]}]
      277 GETIMPORT                        R42 K53 [Enum.AutomaticSize.Y]
      279 SETTABLEKS                       R42 R41 K42 ["AutomaticSize"]
      281 GETIMPORT                        R42 K69 [Enum.HorizontalAlignment.Right]
      283 SETTABLEKS                       R42 R41 K43 ["HorizontalAlignment"]
      285 GETIMPORT                        R42 K58 [Enum.FillDirection.Vertical]
      287 SETTABLEKS                       R42 R41 K44 ["Layout"]
      289 DUPTABLE                         R42 K96 [{["Bottom"] = 20, ["Left"] = 16, ["Right"] = 16, ["Top"] = 20}]
      290 SETTABLEKS                       R42 R41 K45 ["Padding"]
      292 GETIMPORT                        R42 K38 [UDim2.new]
      294 LOADN                            R43 1
      295 LOADN                            R44 0
      296 LOADN                            R45 0
      297 LOADN                            R46 0
      298 CALL                             R42 4 1
      299 SETTABLEKS                       R42 R41 K33 ["Size"]
      301 GETIMPORT                        R42 K60 [Enum.VerticalAlignment.Top]
      303 SETTABLEKS                       R42 R41 K49 ["VerticalAlignment"]
      305 DUPTABLE                         R42 K101 [{"Header", "Description", "ActionContainer", "ImageContainer"}]
      306 GETUPVAL                         R43 1
      307 GETTABLEKS                       R43 R43 K24 ["createElement"]
      309 GETUPVAL                         R44 7
      310 DUPTABLE                         R45 K109 [{["AutomaticSize"], ["Font"], ["LayoutOrder"], ["RichText"] = True, ["Size"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      311 GETIMPORT                        R46 K53 [Enum.AutomaticSize.Y]
      313 SETTABLEKS                       R46 R45 K42 ["AutomaticSize"]
      315 GETIMPORT                        R46 K111 [Enum.Font.SourceSansSemibold]
      317 SETTABLEKS                       R46 R45 K102 ["Font"]
      319 NAMECALL                         R46 R2 K72 ["getNextOrder"]
      321 CALL                             R46 1 1
      322 SETTABLEKS                       R46 R45 K64 ["LayoutOrder"]
      324 GETIMPORT                        R46 K38 [UDim2.new]
      326 LOADN                            R47 1
      327 LOADN                            R48 0
      328 LOADN                            R49 0
      329 LOADN                            R50 0
      330 CALL                             R46 4 1
      331 SETTABLEKS                       R46 R45 K33 ["Size"]
      333 ORK                              R46 R18 K112 [""]
      334 SETTABLEKS                       R46 R45 K105 ["Text"]
      336 GETTABLEKS                       R46 R8 K113 ["headerTextColor"]
      338 SETTABLEKS                       R46 R45 K106 ["TextColor"]
      340 GETIMPORT                        R46 K114 [Enum.TextXAlignment.Left]
      342 SETTABLEKS                       R46 R45 K108 ["TextXAlignment"]
      344 CALL                             R43 2 1
      345 SETTABLEKS                       R43 R42 K97 ["Header"]
      347 GETUPVAL                         R43 1
      348 GETTABLEKS                       R43 R43 K24 ["createElement"]
      350 GETUPVAL                         R44 7
      351 DUPTABLE                         R45 K115 [{["AutomaticSize"], ["LayoutOrder"], ["RichText"] = True, ["Size"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      352 GETIMPORT                        R46 K53 [Enum.AutomaticSize.Y]
      354 SETTABLEKS                       R46 R45 K42 ["AutomaticSize"]
      356 NAMECALL                         R46 R2 K72 ["getNextOrder"]
      358 CALL                             R46 1 1
      359 SETTABLEKS                       R46 R45 K64 ["LayoutOrder"]
      361 GETIMPORT                        R46 K38 [UDim2.new]
      363 LOADN                            R47 1
      364 LOADN                            R48 0
      365 LOADN                            R49 0
      366 LOADN                            R50 0
      367 CALL                             R46 4 1
      368 SETTABLEKS                       R46 R45 K33 ["Size"]
      370 ORK                              R46 R17 K112 [""]
      371 SETTABLEKS                       R46 R45 K105 ["Text"]
      373 GETTABLEKS                       R46 R8 K116 ["descriptionColor"]
      375 SETTABLEKS                       R46 R45 K106 ["TextColor"]
      377 GETIMPORT                        R46 K114 [Enum.TextXAlignment.Left]
      379 SETTABLEKS                       R46 R45 K108 ["TextXAlignment"]
      381 CALL                             R43 2 1
      382 SETTABLEKS                       R43 R42 K98 ["Description"]
      384 GETUPVAL                         R43 1
      385 GETTABLEKS                       R43 R43 K24 ["createElement"]
      387 GETUPVAL                         R44 3
      388 DUPTABLE                         R45 K117 [{"AutomaticSize", "LayoutOrder", "Padding", "Size"}]
      389 GETIMPORT                        R46 K67 [Enum.AutomaticSize.XY]
      391 SETTABLEKS                       R46 R45 K42 ["AutomaticSize"]
      393 NAMECALL                         R46 R2 K72 ["getNextOrder"]
      395 CALL                             R46 1 1
      396 SETTABLEKS                       R46 R45 K64 ["LayoutOrder"]
      398 DUPTABLE                         R46 K118 [{["Top"] = 10}]
      399 SETTABLEKS                       R46 R45 K45 ["Padding"]
      401 GETIMPORT                        R46 K38 [UDim2.new]
      403 LOADN                            R47 1
      404 LOADN                            R48 0
      405 LOADN                            R49 0
      406 LOADN                            R50 0
      407 CALL                             R46 4 1
      408 SETTABLEKS                       R46 R45 K33 ["Size"]
      410 DUPTABLE                         R46 K121 [{"LinkContainer", "Button"}]
      411 JUMPIFNOT                        R15 ; [+59]
      412 JUMPIFEQKS                       R15 K112 [""] ; [+58]
      414 GETUPVAL                         R47 1
      415 GETTABLEKS                       R47 R47 K24 ["createElement"]
      417 GETUPVAL                         R48 3
      418 DUPTABLE                         R49 K122 [{"AutomaticSize", "LayoutOrder", "Size", "Layout", "VerticalAlignment"}]
      419 GETIMPORT                        R50 K123 [Enum.AutomaticSize.X]
      421 SETTABLEKS                       R50 R49 K42 ["AutomaticSize"]
      423 NAMECALL                         R50 R2 K72 ["getNextOrder"]
      425 CALL                             R50 1 1
      426 SETTABLEKS                       R50 R49 K64 ["LayoutOrder"]
      428 GETIMPORT                        R50 K38 [UDim2.new]
      430 LOADN                            R51 0
      431 LOADN                            R52 0
      432 LOADN                            R53 0
      433 GETUPVAL                         R54 8
      434 GETTABLEKS                       R54 R54 K52 ["Y"]
      436 GETTABLEKS                       R54 R54 K124 ["Offset"]
      438 CALL                             R50 4 1
      439 SETTABLEKS                       R50 R49 K33 ["Size"]
      441 GETIMPORT                        R50 K71 [Enum.FillDirection.Horizontal]
      443 SETTABLEKS                       R50 R49 K44 ["Layout"]
      445 GETIMPORT                        R50 K125 [Enum.VerticalAlignment.Center]
      447 SETTABLEKS                       R50 R49 K49 ["VerticalAlignment"]
      449 DUPTABLE                         R50 K127 [{"LinkText"}]
      450 GETUPVAL                         R51 1
      451 GETTABLEKS                       R51 R51 K24 ["createElement"]
      453 GETUPVAL                         R52 9
      454 DUPTABLE                         R53 K131 [{["LayoutOrder"], ["OnClick"], ["Style"] = "Underlined", ["Text"]}]
      455 NAMECALL                         R54 R2 K72 ["getNextOrder"]
      457 CALL                             R54 1 1
      458 SETTABLEKS                       R54 R53 K64 ["LayoutOrder"]
      460 GETTABLEKS                       R54 R0 K132 ["onClickLink"]
      462 SETTABLEKS                       R54 R53 K128 ["OnClick"]
      464 SETTABLEKS                       R19 R53 K105 ["Text"]
      466 CALL                             R51 2 1
      467 SETTABLEKS                       R51 R50 K126 ["LinkText"]
      469 CALL                             R47 3 1
      470 JUMP                             ; [+1]
      471 LOADNIL                          R47
      472 SETTABLEKS                       R47 R46 K119 ["LinkContainer"]
      474 GETUPVAL                         R47 1
      475 GETTABLEKS                       R47 R47 K24 ["createElement"]
      477 GETUPVAL                         R48 10
      478 DUPTABLE                         R49 K136 [{["AnchorPoint"], ["Position"], ["LayoutOrder"], ["OnClick"], ["Size"], ["Style"] = "RoundPrimary", ["Text"]}]
      479 GETIMPORT                        R50 K138 [Vector2.new]
      481 LOADN                            R51 1
      482 LOADN                            R52 0
      483 CALL                             R50 2 1
      484 SETTABLEKS                       R50 R49 K133 ["AnchorPoint"]
      486 GETIMPORT                        R50 K38 [UDim2.new]
      488 LOADN                            R51 1
      489 LOADN                            R52 0
      490 LOADN                            R53 0
      491 LOADN                            R54 0
      492 CALL                             R50 4 1
      493 SETTABLEKS                       R50 R49 K134 ["Position"]
      495 NAMECALL                         R50 R2 K72 ["getNextOrder"]
      497 CALL                             R50 1 1
      498 SETTABLEKS                       R50 R49 K64 ["LayoutOrder"]
      500 GETTABLEKS                       R50 R0 K139 ["onClickAcknowledgeButton"]
      502 SETTABLEKS                       R50 R49 K128 ["OnClick"]
      504 GETUPVAL                         R50 8
      505 SETTABLEKS                       R50 R49 K33 ["Size"]
      507 SETTABLEKS                       R16 R49 K105 ["Text"]
      509 DUPTABLE                         R50 K86 [{"HoverArea"}]
      510 GETUPVAL                         R51 1
      511 GETTABLEKS                       R51 R51 K24 ["createElement"]
      513 GETUPVAL                         R52 6
      514 DUPTABLE                         R53 K89 [{["Cursor"] = "PointingHand"}]
      515 CALL                             R51 2 1
      516 SETTABLEKS                       R51 R50 K85 ["HoverArea"]
      518 CALL                             R47 3 1
      519 SETTABLEKS                       R47 R46 K120 ["Button"]
      521 CALL                             R43 3 1
      522 SETTABLEKS                       R43 R42 K99 ["ActionContainer"]
      524 JUMPIFNOT                        R13 ; [+53]
      525 JUMPIFEQKS                       R13 K112 [""] ; [+52]
      527 GETUPVAL                         R43 1
      528 GETTABLEKS                       R43 R43 K24 ["createElement"]
      530 GETUPVAL                         R44 3
      531 DUPTABLE                         R45 K141 [{["AutomaticSize"], ["ClipsDescendants"] = True, ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"]}]
      532 GETIMPORT                        R46 K53 [Enum.AutomaticSize.Y]
      534 SETTABLEKS                       R46 R45 K42 ["AutomaticSize"]
      536 GETIMPORT                        R46 K55 [Enum.HorizontalAlignment.Center]
      538 SETTABLEKS                       R46 R45 K43 ["HorizontalAlignment"]
      540 GETIMPORT                        R46 K58 [Enum.FillDirection.Vertical]
      542 SETTABLEKS                       R46 R45 K44 ["Layout"]
      544 NAMECALL                         R46 R2 K72 ["getNextOrder"]
      546 CALL                             R46 1 1
      547 SETTABLEKS                       R46 R45 K64 ["LayoutOrder"]
      549 GETIMPORT                        R46 K38 [UDim2.new]
      551 LOADN                            R47 1
      552 LOADN                            R48 0
      553 LOADN                            R49 0
      554 LOADN                            R50 0
      555 CALL                             R46 4 1
      556 SETTABLEKS                       R46 R45 K33 ["Size"]
      558 DUPTABLE                         R46 K142 [{"Image"}]
      559 GETUPVAL                         R47 1
      560 GETTABLEKS                       R47 R47 K24 ["createElement"]
      562 LOADK                            R48 K143 ["ImageLabel"]
      563 DUPTABLE                         R49 K145 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Image"], ["Size"]}]
      564 GETIMPORT                        R50 K53 [Enum.AutomaticSize.Y]
      566 SETTABLEKS                       R50 R49 K42 ["AutomaticSize"]
      568 SETTABLEKS                       R13 R49 K15 ["Image"]
      570 GETUPVAL                         R50 11
      571 SETTABLEKS                       R50 R49 K33 ["Size"]
      573 CALL                             R47 2 1
      574 SETTABLEKS                       R47 R46 K15 ["Image"]
      576 CALL                             R43 3 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R43
      579 SETTABLEKS                       R43 R42 K100 ["ImageContainer"]
      581 CALL                             R39 3 1
      582 SETTABLEKS                       R39 R38 K39 ["Contents"]
      584 CALL                             R35 3 1
      585 SETTABLEKS                       R35 R34 K62 ["AnnouncementDialog"]
      587 CALL                             R31 3 1
      588 SETTABLEKS                       R31 R30 K39 ["Contents"]
      590 CALL                             R27 3 1
      591 SETTABLEKS                       R27 R26 K28 ["Overlay"]
      593 CALL                             R23 3 -1
      594 RETURN                           R23 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["Framework"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R2 K11 ["Roact"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R3 K12 ["UI"]
       29 GETTABLEKS                       R6 R5 K13 ["CaptureFocus"]
       31 GETTABLEKS                       R7 R5 K14 ["Button"]
       33 GETIMPORT                        R8 K9 [require]
       35 GETTABLEKS                       R9 R2 K15 ["Dash"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R5 K16 ["HoverArea"]
       40 GETTABLEKS                       R10 R3 K17 ["Util"]
       42 GETTABLEKS                       R10 R10 K18 ["LayoutOrderIterator"]
       44 GETTABLEKS                       R11 R5 K19 ["LinkText"]
       46 GETTABLEKS                       R12 R5 K20 ["Pane"]
       48 GETTABLEKS                       R13 R5 K21 ["Image"]
       50 GETTABLEKS                       R14 R5 K22 ["TextLabel"]
       52 GETIMPORT                        R15 K9 [require]
       54 GETTABLEKS                       R16 R1 K23 ["Src"]
       56 GETTABLEKS                       R16 R16 K24 ["ContextServices"]
       58 GETTABLEKS                       R16 R16 K25 ["IXPContext"]
       60 CALL                             R15 1 1
       61 GETTABLEKS                       R16 R3 K24 ["ContextServices"]
       63 GETTABLEKS                       R17 R16 K26 ["withContext"]
       65 GETTABLEKS                       R18 R3 K17 ["Util"]
       67 GETTABLEKS                       R18 R18 K27 ["formatLocalDateTime"]
       69 GETTABLEKS                       R19 R1 K23 ["Src"]
       71 GETTABLEKS                       R19 R19 K17 ["Util"]
       73 GETIMPORT                        R20 K9 [require]
       75 GETTABLEKS                       R21 R19 K28 ["Analytics"]
       77 GETTABLEKS                       R21 R21 K28 ["Analytics"]
       79 CALL                             R20 1 1
       80 GETIMPORT                        R21 K9 [require]
       82 GETTABLEKS                       R22 R19 K29 ["Images"]
       84 CALL                             R21 1 1
       85 GETIMPORT                        R22 K9 [require]
       87 GETTABLEKS                       R23 R19 K30 ["ToolboxUtilities"]
       89 CALL                             R22 1 1
       90 GETIMPORT                        R23 K9 [require]
       92 GETTABLEKS                       R24 R19 K31 ["getUserId"]
       94 CALL                             R23 1 1
       95 GETTABLEKS                       R24 R3 K32 ["Wrappers"]
       97 GETTABLEKS                       R24 R24 K33 ["withAbsoluteSize"]
       99 GETIMPORT                        R25 K9 [require]
      101 GETTABLEKS                       R26 R1 K23 ["Src"]
      103 GETTABLEKS                       R26 R26 K24 ["ContextServices"]
      105 GETTABLEKS                       R26 R26 K34 ["Settings"]
      107 CALL                             R25 1 1
      108 GETIMPORT                        R26 K9 [require]
      110 GETTABLEKS                       R27 R1 K23 ["Src"]
      112 GETTABLEKS                       R27 R27 K24 ["ContextServices"]
      114 GETTABLEKS                       R27 R27 K35 ["ModalContext"]
      116 CALL                             R26 1 1
      117 GETIMPORT                        R27 K9 [require]
      119 GETTABLEKS                       R28 R19 K36 ["SharedFlags"]
      121 GETTABLEKS                       R28 R28 K37 ["getFFlagToolboxFallbackAnnouncement"]
      123 CALL                             R27 1 1
      124 GETIMPORT                        R28 K40 [UDim2.fromOffset]
      126 LOADN                            R29 110
      127 LOADN                            R30 30
      128 CALL                             R28 2 1
      129 GETIMPORT                        R29 K40 [UDim2.fromOffset]
      131 LOADN                            R30 264
      132 LOADN                            R31 110
      133 CALL                             R29 2 1
      134 GETTABLEKS                       R30 R4 K41 ["PureComponent"]
      136 LOADK                            R32 K42 ["AnnouncementDialog"]
      137 NAMECALL                         R30 R30 K43 ["extend"]
      139 CALL                             R30 2 1
      140 DUPCLOSURE                       R31 K44 [PROTO_7]
      141 CAPTURE                          VAL R27
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R23
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R20
      146 SETTABLEKS                       R31 R30 K45 ["init"]
      148 DUPCLOSURE                       R31 K46 [PROTO_8]
      149 CAPTURE                          VAL R20
      150 SETTABLEKS                       R31 R30 K47 ["didMount"]
      152 DUPCLOSURE                       R31 K48 [PROTO_10]
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R28
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R29
      165 SETTABLEKS                       R31 R30 K49 ["render"]
      167 MOVE                             R31 R17
      168 DUPTABLE                         R32 K54 [{"IXP", "Localization", "Settings", "Stylizer", "Modal"}]
      169 SETTABLEKS                       R15 R32 K50 ["IXP"]
      171 GETTABLEKS                       R33 R16 K51 ["Localization"]
      173 SETTABLEKS                       R33 R32 K51 ["Localization"]
      175 SETTABLEKS                       R25 R32 K34 ["Settings"]
      177 GETTABLEKS                       R33 R16 K52 ["Stylizer"]
      179 SETTABLEKS                       R33 R32 K52 ["Stylizer"]
      181 SETTABLEKS                       R26 R32 K53 ["Modal"]
      183 CALL                             R31 1 1
      184 MOVE                             R32 R30
      185 CALL                             R31 1 1
      186 MOVE                             R30 R31
      187 NEWCLOSURE                       R31 P3
      188 CAPTURE                          VAL R4
      189 CAPTURE                          REF R30
      190 SETGLOBAL                        R31 K55 ["TypedComponent"]
      192 MOVE                             R31 R24
      193 GETGLOBAL                        R32 K55 ["TypedComponent"]
      195 CALL                             R31 1 -1
      196 CLOSEUPVALS                      R30
      197 RETURN                           R31 -1
