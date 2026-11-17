PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getAvatarChatSettings"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R3 R1 K1 ["audioEnabled"]
        8 SETTABLE                         R3 R0 R2
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R3 R1 K2 ["videoEnabled"]
       12 SETTABLE                         R3 R0 R2
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R3 R1 K3 ["chatGroupApiEnabled"]
       16 SETTABLE                         R3 R0 R2
       17 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["communicationController"]
        9 NEWTABLE                         R5 0 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 SETLIST                          R5 R6 1 [1]
       19 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["AvatarChatAudioEnabled"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Settings"]
       10 GETTABLEKS                       R1 R1 K1 ["Changed"]
       12 GETTABLEKS                       R1 R1 K3 ["AvatarChatVideoEnabled"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["Settings"]
       17 GETTABLEKS                       R2 R2 K1 ["Changed"]
       19 GETTABLEKS                       R2 R2 K4 ["ChatGroupApiEnabled"]
       21 JUMPIFNOTEQKNIL                  R0 ; [+5]
       23 JUMPIFNOTEQKNIL                  R1 ; [+3]
       25 JUMPIFEQKNIL                     R2 ; [+9]
       27 GETUPVAL                         R3 1
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R0
       30 MOVE                             R7 R1
       31 MOVE                             R8 R2
       32 NAMECALL                         R3 R3 K5 ["setAvatarChatSettings"]
       34 CALL                             R3 5 0
       35 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["communicationController"]
        9 NEWTABLE                         R5 0 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R3
       15 SETLIST                          R5 R6 1 [1]
       17 RETURN                           R5 1

PROTO_4:
        0 DUPTABLE                         R2 K3 [{"AvatarChatAudioEnabled", "AvatarChatVideoEnabled", "ChatGroupApiEnabled"}]
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 0
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["AvatarChatAudioEnabled"]
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 1
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["AvatarChatVideoEnabled"]
       11 MOVE                             R3 R0
       12 GETUPVAL                         R4 2
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["ChatGroupApiEnabled"]
       16 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R2 K3 [{"AvatarChatAudioEnabledChanged", "AvatarChatVideoEnabledChanged", "ChatGroupApiEnabledChanged"}]
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 0
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["AvatarChatAudioEnabledChanged"]
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 1
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["AvatarChatVideoEnabledChanged"]
       11 MOVE                             R3 R0
       12 GETUPVAL                         R4 2
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["ChatGroupApiEnabledChanged"]
       16 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AvatarChatAudioEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["AvatarChatAudioEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AvatarChatVideoEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["AvatarChatVideoEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ChatGroupApiEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ChatGroupApiEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 DUPTABLE                         R2 K8 [{["Title"], ["LayoutOrder"], ["Disabled"] = False, ["Selected"], ["OnClick"]}]
        6 LOADK                            R5 K9 ["AvatarChat"]
        7 LOADK                            R6 K10 ["AudioTitleV2"]
        8 NAMECALL                         R3 R1 K11 ["getText"]
       10 CALL                             R3 3 1
       11 SETTABLEKS                       R3 R2 K2 ["Title"]
       13 GETUPVAL                         R3 1
       14 NAMECALL                         R3 R3 K12 ["getNextOrder"]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       19 GETTABLEKS                       R3 R0 K13 ["AvatarChatAudioEnabled"]
       21 SETTABLEKS                       R3 R2 K6 ["Selected"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R3 R2 K7 ["OnClick"]
       27 DUPTABLE                         R3 K17 [{"Text", "LinkText", "OnLinkClicked"}]
       28 LOADK                            R6 K9 ["AvatarChat"]
       29 LOADK                            R7 K18 ["AudioBodyV2"]
       30 NAMECALL                         R4 R1 K11 ["getText"]
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K14 ["Text"]
       35 LOADK                            R6 K19 ["General"]
       36 LOADK                            R7 K20 ["LearnMoreLink"]
       37 NAMECALL                         R4 R1 K11 ["getText"]
       39 CALL                             R4 3 1
       40 SETTABLEKS                       R4 R3 K15 ["LinkText"]
       42 DUPCLOSURE                       R4 K21 [PROTO_7]
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 SETTABLEKS                       R4 R3 K16 ["OnLinkClicked"]
       47 SETTABLEKS                       R3 R2 K22 ["LinkProps"]
       49 DUPTABLE                         R3 K8 [{["Title"], ["LayoutOrder"], ["Disabled"] = False, ["Selected"], ["OnClick"]}]
       50 LOADK                            R6 K9 ["AvatarChat"]
       51 LOADK                            R7 K23 ["VideoTitle"]
       52 NAMECALL                         R4 R1 K11 ["getText"]
       54 CALL                             R4 3 1
       55 SETTABLEKS                       R4 R3 K2 ["Title"]
       57 GETUPVAL                         R4 1
       58 NAMECALL                         R4 R4 K12 ["getNextOrder"]
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       63 GETTABLEKS                       R4 R0 K24 ["AvatarChatVideoEnabled"]
       65 SETTABLEKS                       R4 R3 K6 ["Selected"]
       67 NEWCLOSURE                       R4 P2
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R4 R3 K7 ["OnClick"]
       71 DUPTABLE                         R4 K17 [{"Text", "LinkText", "OnLinkClicked"}]
       72 LOADK                            R7 K9 ["AvatarChat"]
       73 LOADK                            R8 K25 ["VideoBody"]
       74 NAMECALL                         R5 R1 K11 ["getText"]
       76 CALL                             R5 3 1
       77 SETTABLEKS                       R5 R4 K14 ["Text"]
       79 LOADK                            R7 K19 ["General"]
       80 LOADK                            R8 K20 ["LearnMoreLink"]
       81 NAMECALL                         R5 R1 K11 ["getText"]
       83 CALL                             R5 3 1
       84 SETTABLEKS                       R5 R4 K15 ["LinkText"]
       86 DUPCLOSURE                       R5 K26 [PROTO_9]
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          UPVAL U4
       89 SETTABLEKS                       R5 R4 K16 ["OnLinkClicked"]
       91 SETTABLEKS                       R4 R3 K22 ["LinkProps"]
       93 DUPTABLE                         R4 K29 [{["Title"], ["Description"], ["LayoutOrder"], ["Disabled"] = False, ["Selected"], ["OnClick"], ["LinkText"], ["LinkMap"]}]
       94 LOADK                            R7 K30 ["ChatGroup"]
       95 LOADK                            R8 K31 ["ApiTitle"]
       96 NAMECALL                         R5 R1 K11 ["getText"]
       98 CALL                             R5 3 1
       99 SETTABLEKS                       R5 R4 K2 ["Title"]
      101 LOADK                            R7 K30 ["ChatGroup"]
      102 LOADK                            R8 K32 ["ApiBody1"]
      103 NAMECALL                         R5 R1 K11 ["getText"]
      105 CALL                             R5 3 1
      106 SETTABLEKS                       R5 R4 K27 ["Description"]
      108 GETUPVAL                         R5 1
      109 NAMECALL                         R5 R5 K12 ["getNextOrder"]
      111 CALL                             R5 1 1
      112 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
      114 GETTABLEKS                       R5 R0 K33 ["ChatGroupApiEnabled"]
      116 SETTABLEKS                       R5 R4 K6 ["Selected"]
      118 NEWCLOSURE                       R5 P4
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R5 R4 K7 ["OnClick"]
      122 LOADK                            R7 K30 ["ChatGroup"]
      123 LOADK                            R8 K34 ["ApiBody2"]
      124 NAMECALL                         R5 R1 K11 ["getText"]
      126 CALL                             R5 3 1
      127 SETTABLEKS                       R5 R4 K15 ["LinkText"]
      129 NEWTABLE                         R5 4 0
      131 DUPTABLE                         R6 K36 [{"LinkText", "LinkCallback"}]
      132 LOADK                            R9 K19 ["General"]
      133 LOADK                            R10 K37 ["TermsOfUseLink"]
      134 NAMECALL                         R7 R1 K11 ["getText"]
      136 CALL                             R7 3 1
      137 SETTABLEKS                       R7 R6 K15 ["LinkText"]
      139 DUPCLOSURE                       R7 K38 [PROTO_11]
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          UPVAL U5
      142 SETTABLEKS                       R7 R6 K35 ["LinkCallback"]
      144 SETTABLEKS                       R6 R5 K39 ["[link1]"]
      146 DUPTABLE                         R6 K36 [{"LinkText", "LinkCallback"}]
      147 LOADK                            R9 K19 ["General"]
      148 LOADK                            R10 K40 ["CommunityStandardsLink"]
      149 NAMECALL                         R7 R1 K11 ["getText"]
      151 CALL                             R7 3 1
      152 SETTABLEKS                       R7 R6 K15 ["LinkText"]
      154 DUPCLOSURE                       R7 K41 [PROTO_12]
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          UPVAL U6
      157 SETTABLEKS                       R7 R6 K35 ["LinkCallback"]
      159 SETTABLEKS                       R6 R5 K42 ["[link2]"]
      161 DUPTABLE                         R6 K36 [{"LinkText", "LinkCallback"}]
      162 GETUPVAL                         R8 7
      163 JUMPIFEQKS                       R8 K43 [""] ; [+7]
      165 LOADK                            R9 K19 ["General"]
      166 LOADK                            R10 K20 ["LearnMoreLink"]
      167 NAMECALL                         R7 R1 K11 ["getText"]
      169 CALL                             R7 3 1
      170 JUMP                             ; [+1]
      171 LOADK                            R7 K43 [""]
      172 SETTABLEKS                       R7 R6 K15 ["LinkText"]
      174 DUPCLOSURE                       R7 K44 [PROTO_13]
      175 CAPTURE                          UPVAL U2
      176 CAPTURE                          UPVAL U7
      177 SETTABLEKS                       R7 R6 K35 ["LinkCallback"]
      179 SETTABLEKS                       R6 R5 K45 ["[link3]"]
      181 SETTABLEKS                       R5 R4 K28 ["LinkMap"]
      183 DUPTABLE                         R5 K49 [{"EnableAvatarChatAudio", "EnableAvatarChatVideo", "EnableChatGroupApi"}]
      184 GETUPVAL                         R6 8
      185 GETTABLEKS                       R6 R6 K50 ["createElement"]
      187 GETUPVAL                         R7 9
      188 MOVE                             R8 R2
      189 CALL                             R6 2 1
      190 SETTABLEKS                       R6 R5 K46 ["EnableAvatarChatAudio"]
      192 GETUPVAL                         R6 8
      193 GETTABLEKS                       R6 R6 K50 ["createElement"]
      195 GETUPVAL                         R7 9
      196 MOVE                             R8 R3
      197 CALL                             R6 2 1
      198 SETTABLEKS                       R6 R5 K47 ["EnableAvatarChatVideo"]
      200 GETUPVAL                         R6 8
      201 GETTABLEKS                       R6 R6 K50 ["createElement"]
      203 GETUPVAL                         R7 9
      204 MOVE                             R8 R4
      205 CALL                             R6 2 1
      206 SETTABLEKS                       R6 R5 K48 ["EnableChatGroupApi"]
      208 RETURN                           R5 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 GETUPVAL                         R5 7
       20 GETTABLEKS                       R5 R5 K3 ["createElement"]
       22 GETUPVAL                         R6 9
       23 DUPTABLE                         R7 K9 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       24 GETUPVAL                         R8 10
       25 SETTABLEKS                       R8 R7 K4 ["SettingsLoadJobs"]
       27 GETUPVAL                         R8 11
       28 SETTABLEKS                       R8 R7 K5 ["SettingsSaveJobs"]
       30 LOADK                            R10 K10 ["General"]
       31 LOADK                            R12 K11 ["Category"]
       32 GETUPVAL                         R13 12
       33 CONCAT                           R11 R12 R13
       34 NAMECALL                         R8 R2 K12 ["getText"]
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R7 K6 ["Title"]
       39 GETUPVAL                         R8 12
       40 SETTABLEKS                       R8 R7 K7 ["PageId"]
       42 SETTABLEKS                       R4 R7 K8 ["CreateChildren"]
       44 CALL                             R5 2 -1
       45 RETURN                           R5 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 DUPTABLE                         R3 K3 [{"AvatarChatAudioEnabled", "AvatarChatVideoEnabled", "ChatGroupApiEnabled"}]
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R7 R0 K4 ["Settings"]
       10 MOVE                             R8 R5
       11 CALL                             R6 2 1
       12 MOVE                             R4 R6
       13 SETTABLEKS                       R4 R3 K0 ["AvatarChatAudioEnabled"]
       15 GETUPVAL                         R5 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R7 R0 K4 ["Settings"]
       19 MOVE                             R8 R5
       20 CALL                             R6 2 1
       21 MOVE                             R4 R6
       22 SETTABLEKS                       R4 R3 K1 ["AvatarChatVideoEnabled"]
       24 GETUPVAL                         R5 3
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R7 R0 K4 ["Settings"]
       28 MOVE                             R8 R5
       29 CALL                             R6 2 1
       30 MOVE                             R4 R6
       31 SETTABLEKS                       R4 R3 K2 ["ChatGroupApiEnabled"]
       33 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R2 K3 [{"AvatarChatAudioEnabledChanged", "AvatarChatVideoEnabledChanged", "ChatGroupApiEnabledChanged"}]
        4 GETUPVAL                         R4 1
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R4
        9 SETTABLEKS                       R3 R2 K0 ["AvatarChatAudioEnabledChanged"]
       11 GETUPVAL                         R4 2
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R4
       16 SETTABLEKS                       R3 R2 K1 ["AvatarChatVideoEnabledChanged"]
       18 GETUPVAL                         R4 3
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R4
       23 SETTABLEKS                       R3 R2 K2 ["ChatGroupApiEnabledChanged"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Flags"]
       36 GETTABLEKS                       R5 R5 K11 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       38 CALL                             R4 1 1
       39 CALL                             R4 0 1
       40 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       42 GETTABLEKS                       R6 R5 K13 ["withContext"]
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R0 K9 ["Src"]
       48 GETTABLEKS                       R8 R8 K14 ["Components"]
       50 GETTABLEKS                       R8 R8 K15 ["ToggleButtonWithTitle"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K9 ["Src"]
       57 GETTABLEKS                       R9 R9 K12 ["ContextServices"]
       59 GETTABLEKS                       R9 R9 K16 ["Dialog"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R3 K17 ["Util"]
       64 GETTABLEKS                       R10 R9 K18 ["LayoutOrderIterator"]
       66 GETIMPORT                        R11 K4 [require]
       68 GETTABLEKS                       R12 R0 K9 ["Src"]
       70 GETTABLEKS                       R12 R12 K14 ["Components"]
       72 GETTABLEKS                       R12 R12 K19 ["SettingsPages"]
       74 GETTABLEKS                       R12 R12 K20 ["SettingsPage"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K4 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Src"]
       81 GETTABLEKS                       R13 R13 K21 ["Actions"]
       83 GETTABLEKS                       R13 R13 K22 ["AddChange"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K4 [require]
       88 GETTABLEKS                       R14 R0 K9 ["Src"]
       90 GETTABLEKS                       R14 R14 K17 ["Util"]
       92 GETTABLEKS                       R14 R14 K23 ["KeyProvider"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K25 [game]
       97 LOADK                            R16 K26 ["GuiService"]
       98 NAMECALL                         R14 R14 K27 ["GetService"]
      100 CALL                             R14 2 1
      101 GETIMPORT                        R15 K25 [game]
      103 LOADK                            R17 K28 ["AvatarChatSettingsAudioLink"]
      104 LOADK                            R18 K29 ["https://developer.roblox.com/articles/chat-with-avatars-audio"]
      105 NAMECALL                         R15 R15 K30 ["DefineFastString"]
      107 CALL                             R15 3 1
      108 GETIMPORT                        R16 K25 [game]
      110 LOADK                            R18 K31 ["AvatarChatSettingsVideoLink"]
      111 LOADK                            R19 K32 ["https://developer.roblox.com/articles/chat-with-avatars-video"]
      112 NAMECALL                         R16 R16 K30 ["DefineFastString"]
      114 CALL                             R16 3 1
      115 GETIMPORT                        R17 K25 [game]
      117 LOADK                            R19 K33 ["ChatGroupApiLink1"]
      118 LOADK                            R20 K34 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use"]
      119 NAMECALL                         R17 R17 K30 ["DefineFastString"]
      121 CALL                             R17 3 1
      122 GETIMPORT                        R18 K25 [game]
      124 LOADK                            R20 K35 ["ChatGroupApiLink2"]
      125 LOADK                            R21 K36 ["https://help.roblox.com/hc/articles/203313410-Roblox-Community-Standards"]
      126 NAMECALL                         R18 R18 K30 ["DefineFastString"]
      128 CALL                             R18 3 1
      129 GETIMPORT                        R19 K25 [game]
      131 LOADK                            R21 K37 ["ChatGroupApiLink3"]
      132 LOADK                            R22 K38 [""]
      133 NAMECALL                         R19 R19 K30 ["DefineFastString"]
      135 CALL                             R19 3 1
      136 GETTABLEKS                       R20 R13 K39 ["getAvatarChatAudioEnabledKeyName"]
      138 MOVE                             R21 R20
      139 CALL                             R21 0 1
      140 GETTABLEKS                       R22 R13 K40 ["getAvatarChatVideoEnabledKeyName"]
      142 MOVE                             R23 R22
      143 CALL                             R23 0 1
      144 GETTABLEKS                       R24 R13 K41 ["getChatGroupApiEnabledKeyName"]
      146 MOVE                             R25 R24
      147 CALL                             R25 0 1
      148 GETIMPORT                        R26 K1 [script]
      150 GETTABLEKS                       R26 R26 K42 ["Name"]
      152 DUPCLOSURE                       R27 K43 [PROTO_1]
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R23
      155 CAPTURE                          VAL R25
      156 DUPCLOSURE                       R28 K44 [PROTO_3]
      157 DUPCLOSURE                       R29 K45 [PROTO_4]
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R25
      161 DUPCLOSURE                       R30 K46 [PROTO_5]
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R25
      165 GETTABLEKS                       R31 R1 K47 ["PureComponent"]
      167 GETIMPORT                        R33 K1 [script]
      169 GETTABLEKS                       R33 R33 K42 ["Name"]
      171 NAMECALL                         R31 R31 K48 ["extend"]
      173 CALL                             R31 2 1
      174 DUPCLOSURE                       R32 K49 [PROTO_15]
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R27
      186 CAPTURE                          VAL R28
      187 CAPTURE                          VAL R26
      188 SETTABLEKS                       R32 R31 K50 ["render"]
      190 MOVE                             R32 R6
      191 DUPTABLE                         R33 K53 [{"Stylizer", "Localization", "Dialog"}]
      192 JUMPIFNOT                        R4 ; [+2]
      193 LOADNIL                          R34
      194 JUMP                             ; [+2]
      195 GETTABLEKS                       R34 R5 K51 ["Stylizer"]
      197 SETTABLEKS                       R34 R33 K51 ["Stylizer"]
      199 GETTABLEKS                       R34 R5 K52 ["Localization"]
      201 SETTABLEKS                       R34 R33 K52 ["Localization"]
      203 SETTABLEKS                       R8 R33 K16 ["Dialog"]
      205 CALL                             R32 1 1
      206 MOVE                             R33 R31
      207 CALL                             R32 1 1
      208 MOVE                             R31 R32
      209 GETIMPORT                        R32 K4 [require]
      211 GETTABLEKS                       R33 R0 K9 ["Src"]
      213 GETTABLEKS                       R33 R33 K54 ["Networking"]
      215 GETTABLEKS                       R33 R33 K55 ["settingFromState"]
      217 CALL                             R32 1 1
      218 GETTABLEKS                       R33 R2 K56 ["connect"]
      220 DUPCLOSURE                       R34 K57 [PROTO_17]
      221 CAPTURE                          VAL R32
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R25
      225 DUPCLOSURE                       R35 K58 [PROTO_20]
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R23
      229 CAPTURE                          VAL R25
      230 CALL                             R33 2 1
      231 MOVE                             R34 R31
      232 CALL                             R33 1 1
      233 MOVE                             R31 R33
      234 SETTABLEKS                       R26 R31 K59 ["LocalizationId"]
      236 RETURN                           R31 1
