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
        2 JUMPIFNOT                        R1 ; [+5]
        3 DUPTABLE                         R1 K1 [{"isEnabled"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["isEnabled"]
        7 RETURN                           R1 1
        8 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K2 [{"isEnabled", "openStartTime"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isEnabled"]
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["openStartTime"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R0 K4 ["shouldShowAnnouncementDialog"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R2 R0 K5 ["onClose"]
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U4
       27 SETTABLEKS                       R2 R0 K6 ["onClickLink"]
       29 NEWCLOSURE                       R2 P3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 SETTABLEKS                       R2 R0 K7 ["onClickXButton"]
       34 NEWCLOSURE                       R2 P4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U4
       37 SETTABLEKS                       R2 R0 K8 ["onClickAcknowledgeButton"]
       39 DUPCLOSURE                       R2 K9 [PROTO_6]
       40 CAPTURE                          UPVAL U1
       41 SETTABLEKS                       R2 R0 K10 ["getAnnouncementConfigurationOrDefault"]
       43 RETURN                           R0 0

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
       66 LOADN                            R23 144
       67 JUMPIFLT                         R23 R22 ; [+2]
       69 LOADB                            R21 0 +1
       70 LOADB                            R21 1
       71 LOADNIL                          R22
       72 JUMPIFNOT                        R21 ; [+7]
       73 GETIMPORT                        R23 K23 [UDim.new]
       75 LOADN                            R24 0
       76 LOADN                            R25 144
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
      125 DUPTABLE                         R34 K48 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Size", "Spacing", "VerticalAlignment"}]
      126 GETIMPORT                        R35 K51 [Enum.AutomaticSize.Y]
      128 SETTABLEKS                       R35 R34 K42 ["AutomaticSize"]
      130 GETIMPORT                        R35 K53 [Enum.HorizontalAlignment.Center]
      132 SETTABLEKS                       R35 R34 K43 ["HorizontalAlignment"]
      134 GETIMPORT                        R35 K56 [Enum.FillDirection.Vertical]
      136 SETTABLEKS                       R35 R34 K44 ["Layout"]
      138 LOADN                            R35 20
      139 SETTABLEKS                       R35 R34 K45 ["Padding"]
      141 GETIMPORT                        R35 K38 [UDim2.new]
      143 LOADN                            R36 1
      144 LOADN                            R37 0
      145 LOADN                            R38 1
      146 LOADN                            R39 0
      147 CALL                             R35 4 1
      148 SETTABLEKS                       R35 R34 K33 ["Size"]
      150 LOADN                            R35 10
      151 SETTABLEKS                       R35 R34 K46 ["Spacing"]
      153 GETIMPORT                        R35 K58 [Enum.VerticalAlignment.Top]
      155 SETTABLEKS                       R35 R34 K47 ["VerticalAlignment"]
      157 MOVE                             R35 R7
      158 CALL                             R33 2 1
      159 DUPTABLE                         R34 K61 [{"CloseButtonContainer", "AnnouncementDialog"}]
      160 GETUPVAL                         R35 1
      161 GETTABLEKS                       R35 R35 K24 ["createElement"]
      163 GETUPVAL                         R36 3
      164 DUPTABLE                         R37 K63 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
      165 GETIMPORT                        R38 K65 [Enum.AutomaticSize.XY]
      167 SETTABLEKS                       R38 R37 K42 ["AutomaticSize"]
      169 GETIMPORT                        R38 K67 [Enum.HorizontalAlignment.Right]
      171 SETTABLEKS                       R38 R37 K43 ["HorizontalAlignment"]
      173 GETIMPORT                        R38 K69 [Enum.FillDirection.Horizontal]
      175 SETTABLEKS                       R38 R37 K44 ["Layout"]
      177 NAMECALL                         R38 R2 K70 ["getNextOrder"]
      179 CALL                             R38 1 1
      180 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      182 GETIMPORT                        R38 K38 [UDim2.new]
      184 MOVE                             R39 R22
      185 GETIMPORT                        R40 K23 [UDim.new]
      187 LOADN                            R41 0
      188 LOADN                            R42 0
      189 CALL                             R40 2 -1
      190 CALL                             R38 -1 1
      191 SETTABLEKS                       R38 R37 K33 ["Size"]
      193 DUPTABLE                         R38 K72 [{"CloseButton"}]
      194 GETUPVAL                         R39 1
      195 GETTABLEKS                       R39 R39 K24 ["createElement"]
      197 LOADK                            R40 K73 ["ImageButton"]
      198 NEWTABLE                         R41 8 0
      200 LOADB                            R42 0
      201 SETTABLEKS                       R42 R41 K74 ["AutoButtonColor"]
      203 LOADN                            R42 1
      204 SETTABLEKS                       R42 R41 K32 ["BackgroundTransparency"]
      206 GETUPVAL                         R42 5
      207 GETTABLEKS                       R42 R42 K75 ["CLOSE_ICON"]
      209 SETTABLEKS                       R42 R41 K15 ["Image"]
      211 GETTABLEKS                       R42 R8 K76 ["closeIconColor"]
      213 SETTABLEKS                       R42 R41 K77 ["ImageColor3"]
      215 GETIMPORT                        R42 K79 [UDim2.fromOffset]
      217 LOADN                            R43 28
      218 LOADN                            R44 28
      219 CALL                             R42 2 1
      220 SETTABLEKS                       R42 R41 K33 ["Size"]
      222 LOADN                            R42 1
      223 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      225 GETUPVAL                         R42 1
      226 GETTABLEKS                       R42 R42 K80 ["Event"]
      228 GETTABLEKS                       R42 R42 K81 ["Activated"]
      230 GETTABLEKS                       R43 R0 K82 ["onClickXButton"]
      232 SETTABLE                         R43 R41 R42
      233 DUPTABLE                         R42 K84 [{"HoverArea"}]
      234 GETUPVAL                         R43 1
      235 GETTABLEKS                       R43 R43 K24 ["createElement"]
      237 GETUPVAL                         R44 6
      238 DUPTABLE                         R45 K86 [{"Cursor"}]
      239 LOADK                            R46 K87 ["PointingHand"]
      240 SETTABLEKS                       R46 R45 K85 ["Cursor"]
      242 CALL                             R43 2 1
      243 SETTABLEKS                       R43 R42 K83 ["HoverArea"]
      245 CALL                             R39 3 1
      246 SETTABLEKS                       R39 R38 K71 ["CloseButton"]
      248 CALL                             R35 3 1
      249 SETTABLEKS                       R35 R34 K59 ["CloseButtonContainer"]
      251 GETUPVAL                         R35 1
      252 GETTABLEKS                       R35 R35 K24 ["createElement"]
      254 LOADK                            R36 K30 ["Frame"]
      255 DUPTABLE                         R37 K88 [{"AutomaticSize", "BackgroundColor3", "LayoutOrder", "Size"}]
      256 GETIMPORT                        R38 K51 [Enum.AutomaticSize.Y]
      258 SETTABLEKS                       R38 R37 K42 ["AutomaticSize"]
      260 GETTABLEKS                       R38 R8 K89 ["backgroundColor"]
      262 SETTABLEKS                       R38 R37 K31 ["BackgroundColor3"]
      264 NAMECALL                         R38 R2 K70 ["getNextOrder"]
      266 CALL                             R38 1 1
      267 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      269 GETIMPORT                        R38 K38 [UDim2.new]
      271 MOVE                             R39 R22
      272 GETIMPORT                        R40 K23 [UDim.new]
      274 LOADN                            R41 0
      275 LOADN                            R42 0
      276 CALL                             R40 2 -1
      277 CALL                             R38 -1 1
      278 SETTABLEKS                       R38 R37 K33 ["Size"]
      280 DUPTABLE                         R38 K40 [{"Contents"}]
      281 GETUPVAL                         R39 1
      282 GETTABLEKS                       R39 R39 K24 ["createElement"]
      284 GETUPVAL                         R40 3
      285 DUPTABLE                         R41 K90 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing", "Size", "VerticalAlignment"}]
      286 GETIMPORT                        R42 K51 [Enum.AutomaticSize.Y]
      288 SETTABLEKS                       R42 R41 K42 ["AutomaticSize"]
      290 GETIMPORT                        R42 K67 [Enum.HorizontalAlignment.Right]
      292 SETTABLEKS                       R42 R41 K43 ["HorizontalAlignment"]
      294 GETIMPORT                        R42 K56 [Enum.FillDirection.Vertical]
      296 SETTABLEKS                       R42 R41 K44 ["Layout"]
      298 DUPTABLE                         R42 K93 [{"Bottom", "Left", "Right", "Top"}]
      299 LOADN                            R43 20
      300 SETTABLEKS                       R43 R42 K91 ["Bottom"]
      302 LOADN                            R43 16
      303 SETTABLEKS                       R43 R42 K92 ["Left"]
      305 LOADN                            R43 16
      306 SETTABLEKS                       R43 R42 K66 ["Right"]
      308 LOADN                            R43 20
      309 SETTABLEKS                       R43 R42 K57 ["Top"]
      311 SETTABLEKS                       R42 R41 K45 ["Padding"]
      313 LOADN                            R42 10
      314 SETTABLEKS                       R42 R41 K46 ["Spacing"]
      316 GETIMPORT                        R42 K38 [UDim2.new]
      318 LOADN                            R43 1
      319 LOADN                            R44 0
      320 LOADN                            R45 0
      321 LOADN                            R46 0
      322 CALL                             R42 4 1
      323 SETTABLEKS                       R42 R41 K33 ["Size"]
      325 GETIMPORT                        R42 K58 [Enum.VerticalAlignment.Top]
      327 SETTABLEKS                       R42 R41 K47 ["VerticalAlignment"]
      329 DUPTABLE                         R42 K98 [{"Header", "Description", "ActionContainer", "ImageContainer"}]
      330 GETUPVAL                         R43 1
      331 GETTABLEKS                       R43 R43 K24 ["createElement"]
      333 GETUPVAL                         R44 7
      334 DUPTABLE                         R45 K105 [{"AutomaticSize", "Font", "LayoutOrder", "RichText", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
      335 GETIMPORT                        R46 K51 [Enum.AutomaticSize.Y]
      337 SETTABLEKS                       R46 R45 K42 ["AutomaticSize"]
      339 GETIMPORT                        R46 K107 [Enum.Font.SourceSansSemibold]
      341 SETTABLEKS                       R46 R45 K99 ["Font"]
      343 NAMECALL                         R46 R2 K70 ["getNextOrder"]
      345 CALL                             R46 1 1
      346 SETTABLEKS                       R46 R45 K62 ["LayoutOrder"]
      348 LOADB                            R46 1
      349 SETTABLEKS                       R46 R45 K100 ["RichText"]
      351 GETIMPORT                        R46 K38 [UDim2.new]
      353 LOADN                            R47 1
      354 LOADN                            R48 0
      355 LOADN                            R49 0
      356 LOADN                            R50 0
      357 CALL                             R46 4 1
      358 SETTABLEKS                       R46 R45 K33 ["Size"]
      360 ORK                              R46 R18 K108 [""]
      361 SETTABLEKS                       R46 R45 K101 ["Text"]
      363 GETTABLEKS                       R46 R8 K109 ["headerTextColor"]
      365 SETTABLEKS                       R46 R45 K102 ["TextColor"]
      367 LOADB                            R46 1
      368 SETTABLEKS                       R46 R45 K103 ["TextWrapped"]
      370 GETIMPORT                        R46 K110 [Enum.TextXAlignment.Left]
      372 SETTABLEKS                       R46 R45 K104 ["TextXAlignment"]
      374 CALL                             R43 2 1
      375 SETTABLEKS                       R43 R42 K94 ["Header"]
      377 GETUPVAL                         R43 1
      378 GETTABLEKS                       R43 R43 K24 ["createElement"]
      380 GETUPVAL                         R44 7
      381 DUPTABLE                         R45 K111 [{"AutomaticSize", "LayoutOrder", "RichText", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
      382 GETIMPORT                        R46 K51 [Enum.AutomaticSize.Y]
      384 SETTABLEKS                       R46 R45 K42 ["AutomaticSize"]
      386 NAMECALL                         R46 R2 K70 ["getNextOrder"]
      388 CALL                             R46 1 1
      389 SETTABLEKS                       R46 R45 K62 ["LayoutOrder"]
      391 LOADB                            R46 1
      392 SETTABLEKS                       R46 R45 K100 ["RichText"]
      394 GETIMPORT                        R46 K38 [UDim2.new]
      396 LOADN                            R47 1
      397 LOADN                            R48 0
      398 LOADN                            R49 0
      399 LOADN                            R50 0
      400 CALL                             R46 4 1
      401 SETTABLEKS                       R46 R45 K33 ["Size"]
      403 ORK                              R46 R17 K108 [""]
      404 SETTABLEKS                       R46 R45 K101 ["Text"]
      406 GETTABLEKS                       R46 R8 K112 ["descriptionColor"]
      408 SETTABLEKS                       R46 R45 K102 ["TextColor"]
      410 LOADB                            R46 1
      411 SETTABLEKS                       R46 R45 K103 ["TextWrapped"]
      413 GETIMPORT                        R46 K110 [Enum.TextXAlignment.Left]
      415 SETTABLEKS                       R46 R45 K104 ["TextXAlignment"]
      417 CALL                             R43 2 1
      418 SETTABLEKS                       R43 R42 K95 ["Description"]
      420 GETUPVAL                         R43 1
      421 GETTABLEKS                       R43 R43 K24 ["createElement"]
      423 GETUPVAL                         R44 3
      424 DUPTABLE                         R45 K113 [{"AutomaticSize", "LayoutOrder", "Padding", "Size"}]
      425 GETIMPORT                        R46 K65 [Enum.AutomaticSize.XY]
      427 SETTABLEKS                       R46 R45 K42 ["AutomaticSize"]
      429 NAMECALL                         R46 R2 K70 ["getNextOrder"]
      431 CALL                             R46 1 1
      432 SETTABLEKS                       R46 R45 K62 ["LayoutOrder"]
      434 DUPTABLE                         R46 K114 [{"Top"}]
      435 LOADN                            R47 10
      436 SETTABLEKS                       R47 R46 K57 ["Top"]
      438 SETTABLEKS                       R46 R45 K45 ["Padding"]
      440 GETIMPORT                        R46 K38 [UDim2.new]
      442 LOADN                            R47 1
      443 LOADN                            R48 0
      444 LOADN                            R49 0
      445 LOADN                            R50 0
      446 CALL                             R46 4 1
      447 SETTABLEKS                       R46 R45 K33 ["Size"]
      449 DUPTABLE                         R46 K117 [{"LinkContainer", "Button"}]
      450 JUMPIFNOT                        R15 ; [+62]
      451 JUMPIFEQKS                       R15 K108 [""] ; [+61]
      453 GETUPVAL                         R47 1
      454 GETTABLEKS                       R47 R47 K24 ["createElement"]
      456 GETUPVAL                         R48 3
      457 DUPTABLE                         R49 K118 [{"AutomaticSize", "LayoutOrder", "Size", "Layout", "VerticalAlignment"}]
      458 GETIMPORT                        R50 K119 [Enum.AutomaticSize.X]
      460 SETTABLEKS                       R50 R49 K42 ["AutomaticSize"]
      462 NAMECALL                         R50 R2 K70 ["getNextOrder"]
      464 CALL                             R50 1 1
      465 SETTABLEKS                       R50 R49 K62 ["LayoutOrder"]
      467 GETIMPORT                        R50 K38 [UDim2.new]
      469 LOADN                            R51 0
      470 LOADN                            R52 0
      471 LOADN                            R53 0
      472 GETUPVAL                         R54 8
      473 GETTABLEKS                       R54 R54 K50 ["Y"]
      475 GETTABLEKS                       R54 R54 K120 ["Offset"]
      477 CALL                             R50 4 1
      478 SETTABLEKS                       R50 R49 K33 ["Size"]
      480 GETIMPORT                        R50 K69 [Enum.FillDirection.Horizontal]
      482 SETTABLEKS                       R50 R49 K44 ["Layout"]
      484 GETIMPORT                        R50 K121 [Enum.VerticalAlignment.Center]
      486 SETTABLEKS                       R50 R49 K47 ["VerticalAlignment"]
      488 DUPTABLE                         R50 K123 [{"LinkText"}]
      489 GETUPVAL                         R51 1
      490 GETTABLEKS                       R51 R51 K24 ["createElement"]
      492 GETUPVAL                         R52 9
      493 DUPTABLE                         R53 K126 [{"LayoutOrder", "OnClick", "Style", "Text"}]
      494 NAMECALL                         R54 R2 K70 ["getNextOrder"]
      496 CALL                             R54 1 1
      497 SETTABLEKS                       R54 R53 K62 ["LayoutOrder"]
      499 GETTABLEKS                       R54 R0 K127 ["onClickLink"]
      501 SETTABLEKS                       R54 R53 K124 ["OnClick"]
      503 LOADK                            R54 K128 ["Underlined"]
      504 SETTABLEKS                       R54 R53 K125 ["Style"]
      506 SETTABLEKS                       R19 R53 K101 ["Text"]
      508 CALL                             R51 2 1
      509 SETTABLEKS                       R51 R50 K122 ["LinkText"]
      511 CALL                             R47 3 1
      512 JUMP                             ; [+1]
      513 LOADNIL                          R47
      514 SETTABLEKS                       R47 R46 K115 ["LinkContainer"]
      516 GETUPVAL                         R47 1
      517 GETTABLEKS                       R47 R47 K24 ["createElement"]
      519 GETUPVAL                         R48 10
      520 DUPTABLE                         R49 K131 [{"AnchorPoint", "Position", "LayoutOrder", "OnClick", "Size", "Style", "Text"}]
      521 GETIMPORT                        R50 K133 [Vector2.new]
      523 LOADN                            R51 1
      524 LOADN                            R52 0
      525 CALL                             R50 2 1
      526 SETTABLEKS                       R50 R49 K129 ["AnchorPoint"]
      528 GETIMPORT                        R50 K38 [UDim2.new]
      530 LOADN                            R51 1
      531 LOADN                            R52 0
      532 LOADN                            R53 0
      533 LOADN                            R54 0
      534 CALL                             R50 4 1
      535 SETTABLEKS                       R50 R49 K130 ["Position"]
      537 NAMECALL                         R50 R2 K70 ["getNextOrder"]
      539 CALL                             R50 1 1
      540 SETTABLEKS                       R50 R49 K62 ["LayoutOrder"]
      542 GETTABLEKS                       R50 R0 K134 ["onClickAcknowledgeButton"]
      544 SETTABLEKS                       R50 R49 K124 ["OnClick"]
      546 GETUPVAL                         R50 8
      547 SETTABLEKS                       R50 R49 K33 ["Size"]
      549 LOADK                            R50 K135 ["RoundPrimary"]
      550 SETTABLEKS                       R50 R49 K125 ["Style"]
      552 SETTABLEKS                       R16 R49 K101 ["Text"]
      554 DUPTABLE                         R50 K84 [{"HoverArea"}]
      555 GETUPVAL                         R51 1
      556 GETTABLEKS                       R51 R51 K24 ["createElement"]
      558 GETUPVAL                         R52 6
      559 DUPTABLE                         R53 K86 [{"Cursor"}]
      560 LOADK                            R54 K87 ["PointingHand"]
      561 SETTABLEKS                       R54 R53 K85 ["Cursor"]
      563 CALL                             R51 2 1
      564 SETTABLEKS                       R51 R50 K83 ["HoverArea"]
      566 CALL                             R47 3 1
      567 SETTABLEKS                       R47 R46 K116 ["Button"]
      569 CALL                             R43 3 1
      570 SETTABLEKS                       R43 R42 K96 ["ActionContainer"]
      572 JUMPIFNOT                        R13 ; [+59]
      573 JUMPIFEQKS                       R13 K108 [""] ; [+58]
      575 GETUPVAL                         R43 1
      576 GETTABLEKS                       R43 R43 K24 ["createElement"]
      578 GETUPVAL                         R44 3
      579 DUPTABLE                         R45 K137 [{"AutomaticSize", "ClipsDescendants", "HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
      580 GETIMPORT                        R46 K51 [Enum.AutomaticSize.Y]
      582 SETTABLEKS                       R46 R45 K42 ["AutomaticSize"]
      584 LOADB                            R46 1
      585 SETTABLEKS                       R46 R45 K136 ["ClipsDescendants"]
      587 GETIMPORT                        R46 K53 [Enum.HorizontalAlignment.Center]
      589 SETTABLEKS                       R46 R45 K43 ["HorizontalAlignment"]
      591 GETIMPORT                        R46 K56 [Enum.FillDirection.Vertical]
      593 SETTABLEKS                       R46 R45 K44 ["Layout"]
      595 NAMECALL                         R46 R2 K70 ["getNextOrder"]
      597 CALL                             R46 1 1
      598 SETTABLEKS                       R46 R45 K62 ["LayoutOrder"]
      600 GETIMPORT                        R46 K38 [UDim2.new]
      602 LOADN                            R47 1
      603 LOADN                            R48 0
      604 LOADN                            R49 0
      605 LOADN                            R50 0
      606 CALL                             R46 4 1
      607 SETTABLEKS                       R46 R45 K33 ["Size"]
      609 DUPTABLE                         R46 K138 [{"Image"}]
      610 GETUPVAL                         R47 1
      611 GETTABLEKS                       R47 R47 K24 ["createElement"]
      613 LOADK                            R48 K139 ["ImageLabel"]
      614 DUPTABLE                         R49 K140 [{"AutomaticSize", "BackgroundTransparency", "Image", "Size"}]
      615 GETIMPORT                        R50 K51 [Enum.AutomaticSize.Y]
      617 SETTABLEKS                       R50 R49 K42 ["AutomaticSize"]
      619 LOADN                            R50 1
      620 SETTABLEKS                       R50 R49 K32 ["BackgroundTransparency"]
      622 SETTABLEKS                       R13 R49 K15 ["Image"]
      624 GETUPVAL                         R50 11
      625 SETTABLEKS                       R50 R49 K33 ["Size"]
      627 CALL                             R47 2 1
      628 SETTABLEKS                       R47 R46 K15 ["Image"]
      630 CALL                             R43 3 1
      631 JUMP                             ; [+1]
      632 LOADNIL                          R43
      633 SETTABLEKS                       R43 R42 K97 ["ImageContainer"]
      635 CALL                             R39 3 1
      636 SETTABLEKS                       R39 R38 K39 ["Contents"]
      638 CALL                             R35 3 1
      639 SETTABLEKS                       R35 R34 K60 ["AnnouncementDialog"]
      641 CALL                             R31 3 1
      642 SETTABLEKS                       R31 R30 K39 ["Contents"]
      644 CALL                             R27 3 1
      645 SETTABLEKS                       R27 R26 K28 ["Overlay"]
      647 CALL                             R23 3 -1
      648 RETURN                           R23 -1

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
      131 LOADN                            R30 8
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
