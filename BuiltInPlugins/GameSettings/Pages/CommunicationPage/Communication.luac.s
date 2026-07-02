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
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+9]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["AvatarChatVideoEnabled"]
       13 JUMPIFNOT                        R0 ; [+5]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["AvatarChatVideoEnabledChanged"]
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

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
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R3 R2 K7 ["OnClick"]
       28 DUPTABLE                         R3 K17 [{"Text", "LinkText", "OnLinkClicked"}]
       29 LOADK                            R6 K9 ["AvatarChat"]
       30 LOADK                            R7 K18 ["AudioBodyV2"]
       31 NAMECALL                         R4 R1 K11 ["getText"]
       33 CALL                             R4 3 1
       34 SETTABLEKS                       R4 R3 K14 ["Text"]
       36 LOADK                            R6 K19 ["General"]
       37 LOADK                            R7 K20 ["LearnMoreLink"]
       38 NAMECALL                         R4 R1 K11 ["getText"]
       40 CALL                             R4 3 1
       41 SETTABLEKS                       R4 R3 K15 ["LinkText"]
       43 DUPCLOSURE                       R4 K21 [PROTO_7]
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 SETTABLEKS                       R4 R3 K16 ["OnLinkClicked"]
       48 SETTABLEKS                       R3 R2 K22 ["LinkProps"]
       50 DUPTABLE                         R3 K23 [{"Title", "LayoutOrder", "Disabled", "Selected", "OnClick"}]
       51 LOADK                            R6 K9 ["AvatarChat"]
       52 LOADK                            R7 K24 ["VideoTitle"]
       53 NAMECALL                         R4 R1 K11 ["getText"]
       55 CALL                             R4 3 1
       56 SETTABLEKS                       R4 R3 K2 ["Title"]
       58 GETUPVAL                         R4 1
       59 NAMECALL                         R4 R4 K12 ["getNextOrder"]
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       64 GETUPVAL                         R4 5
       65 SETTABLEKS                       R4 R3 K4 ["Disabled"]
       67 GETUPVAL                         R5 2
       68 JUMPIFNOT                        R5 ; [+3]
       69 GETTABLEKS                       R4 R0 K13 ["AvatarChatAudioEnabled"]
       71 JUMPIFNOT                        R4 ; [+2]
       72 GETTABLEKS                       R4 R0 K25 ["AvatarChatVideoEnabled"]
       74 SETTABLEKS                       R4 R3 K6 ["Selected"]
       76 NEWCLOSURE                       R4 P2
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R4 R3 K7 ["OnClick"]
       80 DUPTABLE                         R4 K17 [{"Text", "LinkText", "OnLinkClicked"}]
       81 LOADK                            R7 K9 ["AvatarChat"]
       82 LOADK                            R8 K26 ["VideoBody"]
       83 NAMECALL                         R5 R1 K11 ["getText"]
       85 CALL                             R5 3 1
       86 SETTABLEKS                       R5 R4 K14 ["Text"]
       88 LOADK                            R7 K19 ["General"]
       89 LOADK                            R8 K20 ["LearnMoreLink"]
       90 NAMECALL                         R5 R1 K11 ["getText"]
       92 CALL                             R5 3 1
       93 SETTABLEKS                       R5 R4 K15 ["LinkText"]
       95 DUPCLOSURE                       R5 K27 [PROTO_9]
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          UPVAL U6
       98 SETTABLEKS                       R5 R4 K16 ["OnLinkClicked"]
      100 SETTABLEKS                       R4 R3 K22 ["LinkProps"]
      102 DUPTABLE                         R4 K30 [{["Title"], ["Description"], ["LayoutOrder"], ["Disabled"] = False, ["Selected"], ["OnClick"], ["LinkText"], ["LinkMap"]}]
      103 LOADK                            R7 K31 ["ChatGroup"]
      104 LOADK                            R8 K32 ["ApiTitle"]
      105 NAMECALL                         R5 R1 K11 ["getText"]
      107 CALL                             R5 3 1
      108 SETTABLEKS                       R5 R4 K2 ["Title"]
      110 LOADK                            R7 K31 ["ChatGroup"]
      111 LOADK                            R8 K33 ["ApiBody1"]
      112 NAMECALL                         R5 R1 K11 ["getText"]
      114 CALL                             R5 3 1
      115 SETTABLEKS                       R5 R4 K28 ["Description"]
      117 GETUPVAL                         R5 1
      118 NAMECALL                         R5 R5 K12 ["getNextOrder"]
      120 CALL                             R5 1 1
      121 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
      123 GETTABLEKS                       R5 R0 K34 ["ChatGroupApiEnabled"]
      125 SETTABLEKS                       R5 R4 K6 ["Selected"]
      127 NEWCLOSURE                       R5 P4
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R5 R4 K7 ["OnClick"]
      131 LOADK                            R7 K31 ["ChatGroup"]
      132 LOADK                            R8 K35 ["ApiBody2"]
      133 NAMECALL                         R5 R1 K11 ["getText"]
      135 CALL                             R5 3 1
      136 SETTABLEKS                       R5 R4 K15 ["LinkText"]
      138 NEWTABLE                         R5 4 0
      140 DUPTABLE                         R6 K37 [{"LinkText", "LinkCallback"}]
      141 LOADK                            R9 K19 ["General"]
      142 LOADK                            R10 K38 ["TermsOfUseLink"]
      143 NAMECALL                         R7 R1 K11 ["getText"]
      145 CALL                             R7 3 1
      146 SETTABLEKS                       R7 R6 K15 ["LinkText"]
      148 DUPCLOSURE                       R7 K39 [PROTO_11]
      149 CAPTURE                          UPVAL U3
      150 CAPTURE                          UPVAL U7
      151 SETTABLEKS                       R7 R6 K36 ["LinkCallback"]
      153 SETTABLEKS                       R6 R5 K40 ["[link1]"]
      155 DUPTABLE                         R6 K37 [{"LinkText", "LinkCallback"}]
      156 LOADK                            R9 K19 ["General"]
      157 LOADK                            R10 K41 ["CommunityStandardsLink"]
      158 NAMECALL                         R7 R1 K11 ["getText"]
      160 CALL                             R7 3 1
      161 SETTABLEKS                       R7 R6 K15 ["LinkText"]
      163 DUPCLOSURE                       R7 K42 [PROTO_12]
      164 CAPTURE                          UPVAL U3
      165 CAPTURE                          UPVAL U8
      166 SETTABLEKS                       R7 R6 K36 ["LinkCallback"]
      168 SETTABLEKS                       R6 R5 K43 ["[link2]"]
      170 DUPTABLE                         R6 K37 [{"LinkText", "LinkCallback"}]
      171 GETUPVAL                         R8 9
      172 JUMPIFEQKS                       R8 K44 [""] ; [+7]
      174 LOADK                            R9 K19 ["General"]
      175 LOADK                            R10 K20 ["LearnMoreLink"]
      176 NAMECALL                         R7 R1 K11 ["getText"]
      178 CALL                             R7 3 1
      179 JUMP                             ; [+1]
      180 LOADK                            R7 K44 [""]
      181 SETTABLEKS                       R7 R6 K15 ["LinkText"]
      183 DUPCLOSURE                       R7 K45 [PROTO_13]
      184 CAPTURE                          UPVAL U3
      185 CAPTURE                          UPVAL U9
      186 SETTABLEKS                       R7 R6 K36 ["LinkCallback"]
      188 SETTABLEKS                       R6 R5 K46 ["[link3]"]
      190 SETTABLEKS                       R5 R4 K29 ["LinkMap"]
      192 DUPTABLE                         R5 K50 [{"EnableAvatarChatAudio", "EnableAvatarChatVideo", "EnableChatGroupApi"}]
      193 GETUPVAL                         R6 10
      194 GETTABLEKS                       R6 R6 K51 ["createElement"]
      196 GETUPVAL                         R7 11
      197 MOVE                             R8 R2
      198 CALL                             R6 2 1
      199 SETTABLEKS                       R6 R5 K47 ["EnableAvatarChatAudio"]
      201 GETUPVAL                         R6 10
      202 GETTABLEKS                       R6 R6 K51 ["createElement"]
      204 GETUPVAL                         R7 11
      205 MOVE                             R8 R3
      206 CALL                             R6 2 1
      207 SETTABLEKS                       R6 R5 K48 ["EnableAvatarChatVideo"]
      209 GETUPVAL                         R6 10
      210 GETTABLEKS                       R6 R6 K51 ["createElement"]
      212 GETUPVAL                         R7 11
      213 MOVE                             R8 R4
      214 CALL                             R6 2 1
      215 SETTABLEKS                       R6 R5 K49 ["EnableChatGroupApi"]
      217 RETURN                           R5 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 LOADB                            R4 0
        9 GETUPVAL                         R5 1
       10 JUMPIFNOT                        R5 ; [+4]
       11 GETTABLEKS                       R5 R1 K3 ["AvatarChatAudioEnabled"]
       13 JUMPIF                           R5 ; [+1]
       14 LOADB                            R4 1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          REF R4
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 GETUPVAL                         R6 8
       29 GETTABLEKS                       R6 R6 K4 ["createElement"]
       31 GETUPVAL                         R7 10
       32 DUPTABLE                         R8 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       33 GETUPVAL                         R9 11
       34 SETTABLEKS                       R9 R8 K5 ["SettingsLoadJobs"]
       36 GETUPVAL                         R9 12
       37 SETTABLEKS                       R9 R8 K6 ["SettingsSaveJobs"]
       39 LOADK                            R11 K11 ["General"]
       40 LOADK                            R13 K12 ["Category"]
       41 GETUPVAL                         R14 13
       42 CONCAT                           R12 R13 R14
       43 NAMECALL                         R9 R2 K13 ["getText"]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K7 ["Title"]
       48 GETUPVAL                         R9 13
       49 SETTABLEKS                       R9 R8 K8 ["PageId"]
       51 SETTABLEKS                       R5 R8 K9 ["CreateChildren"]
       53 CALL                             R6 2 -1
       54 CLOSEUPVALS                      R4
       55 RETURN                           R6 -1

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
      103 LOADK                            R17 K28 ["AvatarChatMicCameraCouple"]
      104 LOADB                            R18 0
      105 NAMECALL                         R15 R15 K29 ["DefineFastFlag"]
      107 CALL                             R15 3 1
      108 GETIMPORT                        R16 K25 [game]
      110 LOADK                            R18 K30 ["AvatarChatSettingsAudioLink"]
      111 LOADK                            R19 K31 ["https://developer.roblox.com/articles/chat-with-avatars-audio"]
      112 NAMECALL                         R16 R16 K32 ["DefineFastString"]
      114 CALL                             R16 3 1
      115 GETIMPORT                        R17 K25 [game]
      117 LOADK                            R19 K33 ["AvatarChatSettingsVideoLink"]
      118 LOADK                            R20 K34 ["https://developer.roblox.com/articles/chat-with-avatars-video"]
      119 NAMECALL                         R17 R17 K32 ["DefineFastString"]
      121 CALL                             R17 3 1
      122 GETIMPORT                        R18 K25 [game]
      124 LOADK                            R20 K35 ["ChatGroupApiLink1"]
      125 LOADK                            R21 K36 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use"]
      126 NAMECALL                         R18 R18 K32 ["DefineFastString"]
      128 CALL                             R18 3 1
      129 GETIMPORT                        R19 K25 [game]
      131 LOADK                            R21 K37 ["ChatGroupApiLink2"]
      132 LOADK                            R22 K38 ["https://help.roblox.com/hc/articles/203313410-Roblox-Community-Standards"]
      133 NAMECALL                         R19 R19 K32 ["DefineFastString"]
      135 CALL                             R19 3 1
      136 GETIMPORT                        R20 K25 [game]
      138 LOADK                            R22 K39 ["ChatGroupApiLink3"]
      139 LOADK                            R23 K40 [""]
      140 NAMECALL                         R20 R20 K32 ["DefineFastString"]
      142 CALL                             R20 3 1
      143 GETTABLEKS                       R21 R13 K41 ["getAvatarChatAudioEnabledKeyName"]
      145 MOVE                             R22 R21
      146 CALL                             R22 0 1
      147 GETTABLEKS                       R23 R13 K42 ["getAvatarChatVideoEnabledKeyName"]
      149 MOVE                             R24 R23
      150 CALL                             R24 0 1
      151 GETTABLEKS                       R25 R13 K43 ["getChatGroupApiEnabledKeyName"]
      153 MOVE                             R26 R25
      154 CALL                             R26 0 1
      155 GETIMPORT                        R27 K1 [script]
      157 GETTABLEKS                       R27 R27 K44 ["Name"]
      159 DUPCLOSURE                       R28 K45 [PROTO_1]
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R26
      163 DUPCLOSURE                       R29 K46 [PROTO_3]
      164 DUPCLOSURE                       R30 K47 [PROTO_4]
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R26
      168 DUPCLOSURE                       R31 K48 [PROTO_5]
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R24
      171 CAPTURE                          VAL R26
      172 GETTABLEKS                       R32 R1 K49 ["PureComponent"]
      174 GETIMPORT                        R34 K1 [script]
      176 GETTABLEKS                       R34 R34 K44 ["Name"]
      178 NAMECALL                         R32 R32 K50 ["extend"]
      180 CALL                             R32 2 1
      181 DUPCLOSURE                       R33 K51 [PROTO_15]
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R28
      194 CAPTURE                          VAL R29
      195 CAPTURE                          VAL R27
      196 SETTABLEKS                       R33 R32 K52 ["render"]
      198 MOVE                             R33 R6
      199 DUPTABLE                         R34 K55 [{"Stylizer", "Localization", "Dialog"}]
      200 JUMPIFNOT                        R4 ; [+2]
      201 LOADNIL                          R35
      202 JUMP                             ; [+2]
      203 GETTABLEKS                       R35 R5 K53 ["Stylizer"]
      205 SETTABLEKS                       R35 R34 K53 ["Stylizer"]
      207 GETTABLEKS                       R35 R5 K54 ["Localization"]
      209 SETTABLEKS                       R35 R34 K54 ["Localization"]
      211 SETTABLEKS                       R8 R34 K16 ["Dialog"]
      213 CALL                             R33 1 1
      214 MOVE                             R34 R32
      215 CALL                             R33 1 1
      216 MOVE                             R32 R33
      217 GETIMPORT                        R33 K4 [require]
      219 GETTABLEKS                       R34 R0 K9 ["Src"]
      221 GETTABLEKS                       R34 R34 K56 ["Networking"]
      223 GETTABLEKS                       R34 R34 K57 ["settingFromState"]
      225 CALL                             R33 1 1
      226 GETTABLEKS                       R34 R2 K58 ["connect"]
      228 DUPCLOSURE                       R35 K59 [PROTO_17]
      229 CAPTURE                          VAL R33
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R26
      233 DUPCLOSURE                       R36 K60 [PROTO_20]
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R22
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R26
      238 CALL                             R34 2 1
      239 MOVE                             R35 R32
      240 CALL                             R34 1 1
      241 MOVE                             R32 R34
      242 SETTABLEKS                       R27 R32 K61 ["LocalizationId"]
      244 RETURN                           R32 1
