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
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R3 R1 K3 ["chatGroupApiEnabled"]
       19 SETTABLE                         R3 R0 R2
       20 RETURN                           R0 0

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
       17 CAPTURE                          UPVAL U3
       18 SETLIST                          R5 R6 1 [1]
       20 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["AvatarChatAudioEnabled"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Settings"]
       10 GETTABLEKS                       R1 R1 K1 ["Changed"]
       12 GETTABLEKS                       R1 R1 K3 ["AvatarChatVideoEnabled"]
       14 GETUPVAL                         R3 1
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+8]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["Settings"]
       20 GETTABLEKS                       R2 R2 K1 ["Changed"]
       22 GETTABLEKS                       R2 R2 K4 ["ChatGroupApiEnabled"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R2
       26 GETUPVAL                         R3 1
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+15]
       29 JUMPIFNOTEQKNIL                  R0 ; [+5]
       31 JUMPIFNOTEQKNIL                  R1 ; [+3]
       33 JUMPIFEQKNIL                     R2 ; [+22]
       35 GETUPVAL                         R3 2
       36 GETUPVAL                         R5 3
       37 MOVE                             R6 R0
       38 MOVE                             R7 R1
       39 MOVE                             R8 R2
       40 NAMECALL                         R3 R3 K5 ["setAvatarChatSettings"]
       42 CALL                             R3 5 0
       43 RETURN                           R0 0
       44 JUMPIFNOTEQKNIL                  R0 ; [+3]
       46 JUMPIFEQKNIL                     R1 ; [+9]
       48 GETUPVAL                         R3 2
       49 GETUPVAL                         R5 3
       50 MOVE                             R6 R0
       51 MOVE                             R7 R1
       52 LOADNIL                          R8
       53 NAMECALL                         R3 R3 K5 ["setAvatarChatSettings"]
       55 CALL                             R3 5 0
       56 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["communicationController"]
        9 NEWTABLE                         R5 0 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R3
       16 SETLIST                          R5 R6 1 [1]
       18 RETURN                           R5 1

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
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+4]
       14 MOVE                             R3 R0
       15 GETUPVAL                         R4 3
       16 CALL                             R3 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K2 ["ChatGroupApiEnabled"]
       21 RETURN                           R2 1

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
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+4]
       14 MOVE                             R3 R0
       15 GETUPVAL                         R4 3
       16 CALL                             R3 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K2 ["ChatGroupApiEnabledChanged"]
       21 RETURN                           R2 1

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
        5 DUPTABLE                         R2 K7 [{"Title", "LayoutOrder", "Disabled", "Selected", "OnClick"}]
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+6]
        9 LOADK                            R5 K8 ["AvatarChat"]
       10 LOADK                            R6 K9 ["AudioTitleV2"]
       11 NAMECALL                         R3 R1 K10 ["getText"]
       13 CALL                             R3 3 1
       14 JUMP                             ; [+5]
       15 LOADK                            R5 K8 ["AvatarChat"]
       16 LOADK                            R6 K11 ["AudioTitle"]
       17 NAMECALL                         R3 R1 K10 ["getText"]
       19 CALL                             R3 3 1
       20 SETTABLEKS                       R3 R2 K2 ["Title"]
       22 GETUPVAL                         R3 2
       23 NAMECALL                         R3 R3 K12 ["getNextOrder"]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       28 LOADB                            R3 0
       29 SETTABLEKS                       R3 R2 K4 ["Disabled"]
       31 GETTABLEKS                       R3 R0 K13 ["AvatarChatAudioEnabled"]
       33 SETTABLEKS                       R3 R2 K5 ["Selected"]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U3
       38 SETTABLEKS                       R3 R2 K6 ["OnClick"]
       40 DUPTABLE                         R3 K17 [{"Text", "LinkText", "OnLinkClicked"}]
       41 GETUPVAL                         R5 1
       42 CALL                             R5 0 1
       43 JUMPIFNOT                        R5 ; [+6]
       44 LOADK                            R6 K8 ["AvatarChat"]
       45 LOADK                            R7 K18 ["AudioBodyV2"]
       46 NAMECALL                         R4 R1 K10 ["getText"]
       48 CALL                             R4 3 1
       49 JUMP                             ; [+5]
       50 LOADK                            R6 K8 ["AvatarChat"]
       51 LOADK                            R7 K19 ["AudioBody"]
       52 NAMECALL                         R4 R1 K10 ["getText"]
       54 CALL                             R4 3 1
       55 SETTABLEKS                       R4 R3 K14 ["Text"]
       57 LOADK                            R6 K20 ["General"]
       58 LOADK                            R7 K21 ["LearnMoreLink"]
       59 NAMECALL                         R4 R1 K10 ["getText"]
       61 CALL                             R4 3 1
       62 SETTABLEKS                       R4 R3 K15 ["LinkText"]
       64 DUPCLOSURE                       R4 K22 [PROTO_7]
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U5
       67 SETTABLEKS                       R4 R3 K16 ["OnLinkClicked"]
       69 SETTABLEKS                       R3 R2 K23 ["LinkProps"]
       71 DUPTABLE                         R3 K7 [{"Title", "LayoutOrder", "Disabled", "Selected", "OnClick"}]
       72 LOADK                            R6 K8 ["AvatarChat"]
       73 LOADK                            R7 K24 ["VideoTitle"]
       74 NAMECALL                         R4 R1 K10 ["getText"]
       76 CALL                             R4 3 1
       77 SETTABLEKS                       R4 R3 K2 ["Title"]
       79 GETUPVAL                         R4 2
       80 NAMECALL                         R4 R4 K12 ["getNextOrder"]
       82 CALL                             R4 1 1
       83 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       85 GETUPVAL                         R4 6
       86 SETTABLEKS                       R4 R3 K4 ["Disabled"]
       88 GETUPVAL                         R5 3
       89 JUMPIFNOT                        R5 ; [+3]
       90 GETTABLEKS                       R4 R0 K13 ["AvatarChatAudioEnabled"]
       92 JUMPIFNOT                        R4 ; [+2]
       93 GETTABLEKS                       R4 R0 K25 ["AvatarChatVideoEnabled"]
       95 SETTABLEKS                       R4 R3 K5 ["Selected"]
       97 NEWCLOSURE                       R4 P2
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R4 R3 K6 ["OnClick"]
      101 DUPTABLE                         R4 K17 [{"Text", "LinkText", "OnLinkClicked"}]
      102 LOADK                            R7 K8 ["AvatarChat"]
      103 LOADK                            R8 K26 ["VideoBody"]
      104 NAMECALL                         R5 R1 K10 ["getText"]
      106 CALL                             R5 3 1
      107 SETTABLEKS                       R5 R4 K14 ["Text"]
      109 LOADK                            R7 K20 ["General"]
      110 LOADK                            R8 K21 ["LearnMoreLink"]
      111 NAMECALL                         R5 R1 K10 ["getText"]
      113 CALL                             R5 3 1
      114 SETTABLEKS                       R5 R4 K15 ["LinkText"]
      116 DUPCLOSURE                       R5 K27 [PROTO_9]
      117 CAPTURE                          UPVAL U4
      118 CAPTURE                          UPVAL U7
      119 SETTABLEKS                       R5 R4 K16 ["OnLinkClicked"]
      121 SETTABLEKS                       R4 R3 K23 ["LinkProps"]
      123 LOADNIL                          R4
      124 GETUPVAL                         R5 8
      125 CALL                             R5 0 1
      126 JUMPIFNOT                        R5 ; [+94]
      127 DUPTABLE                         R5 K30 [{"Title", "Description", "LayoutOrder", "Disabled", "Selected", "OnClick", "LinkText", "LinkMap"}]
      128 LOADK                            R8 K31 ["ChatGroup"]
      129 LOADK                            R9 K32 ["ApiTitle"]
      130 NAMECALL                         R6 R1 K10 ["getText"]
      132 CALL                             R6 3 1
      133 SETTABLEKS                       R6 R5 K2 ["Title"]
      135 LOADK                            R8 K31 ["ChatGroup"]
      136 LOADK                            R9 K33 ["ApiBody1"]
      137 NAMECALL                         R6 R1 K10 ["getText"]
      139 CALL                             R6 3 1
      140 SETTABLEKS                       R6 R5 K28 ["Description"]
      142 GETUPVAL                         R6 2
      143 NAMECALL                         R6 R6 K12 ["getNextOrder"]
      145 CALL                             R6 1 1
      146 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
      148 LOADB                            R6 0
      149 SETTABLEKS                       R6 R5 K4 ["Disabled"]
      151 GETTABLEKS                       R6 R0 K34 ["ChatGroupApiEnabled"]
      153 SETTABLEKS                       R6 R5 K5 ["Selected"]
      155 NEWCLOSURE                       R6 P4
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R6 R5 K6 ["OnClick"]
      159 LOADK                            R8 K31 ["ChatGroup"]
      160 LOADK                            R9 K35 ["ApiBody2"]
      161 NAMECALL                         R6 R1 K10 ["getText"]
      163 CALL                             R6 3 1
      164 SETTABLEKS                       R6 R5 K15 ["LinkText"]
      166 NEWTABLE                         R6 4 0
      168 DUPTABLE                         R7 K37 [{"LinkText", "LinkCallback"}]
      169 LOADK                            R10 K20 ["General"]
      170 LOADK                            R11 K38 ["TermsOfUseLink"]
      171 NAMECALL                         R8 R1 K10 ["getText"]
      173 CALL                             R8 3 1
      174 SETTABLEKS                       R8 R7 K15 ["LinkText"]
      176 DUPCLOSURE                       R8 K39 [PROTO_11]
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          UPVAL U9
      179 SETTABLEKS                       R8 R7 K36 ["LinkCallback"]
      181 SETTABLEKS                       R7 R6 K40 ["[link1]"]
      183 DUPTABLE                         R7 K37 [{"LinkText", "LinkCallback"}]
      184 LOADK                            R10 K20 ["General"]
      185 LOADK                            R11 K41 ["CommunityStandardsLink"]
      186 NAMECALL                         R8 R1 K10 ["getText"]
      188 CALL                             R8 3 1
      189 SETTABLEKS                       R8 R7 K15 ["LinkText"]
      191 DUPCLOSURE                       R8 K42 [PROTO_12]
      192 CAPTURE                          UPVAL U4
      193 CAPTURE                          UPVAL U10
      194 SETTABLEKS                       R8 R7 K36 ["LinkCallback"]
      196 SETTABLEKS                       R7 R6 K43 ["[link2]"]
      198 DUPTABLE                         R7 K37 [{"LinkText", "LinkCallback"}]
      199 GETUPVAL                         R9 11
      200 JUMPIFEQKS                       R9 K44 [""] ; [+7]
      202 LOADK                            R10 K20 ["General"]
      203 LOADK                            R11 K21 ["LearnMoreLink"]
      204 NAMECALL                         R8 R1 K10 ["getText"]
      206 CALL                             R8 3 1
      207 JUMP                             ; [+1]
      208 LOADK                            R8 K44 [""]
      209 SETTABLEKS                       R8 R7 K15 ["LinkText"]
      211 DUPCLOSURE                       R8 K45 [PROTO_13]
      212 CAPTURE                          UPVAL U4
      213 CAPTURE                          UPVAL U11
      214 SETTABLEKS                       R8 R7 K36 ["LinkCallback"]
      216 SETTABLEKS                       R7 R6 K46 ["[link3]"]
      218 SETTABLEKS                       R6 R5 K29 ["LinkMap"]
      220 MOVE                             R4 R5
      221 DUPTABLE                         R5 K50 [{"EnableAvatarChatAudio", "EnableAvatarChatVideo", "EnableChatGroupApi"}]
      222 GETUPVAL                         R6 12
      223 GETTABLEKS                       R6 R6 K51 ["createElement"]
      225 GETUPVAL                         R7 13
      226 MOVE                             R8 R2
      227 CALL                             R6 2 1
      228 SETTABLEKS                       R6 R5 K47 ["EnableAvatarChatAudio"]
      230 GETUPVAL                         R6 12
      231 GETTABLEKS                       R6 R6 K51 ["createElement"]
      233 GETUPVAL                         R7 13
      234 MOVE                             R8 R3
      235 CALL                             R6 2 1
      236 SETTABLEKS                       R6 R5 K48 ["EnableAvatarChatVideo"]
      238 GETUPVAL                         R7 8
      239 CALL                             R7 0 1
      240 JUMPIFNOT                        R7 ; [+7]
      241 GETUPVAL                         R6 12
      242 GETTABLEKS                       R6 R6 K51 ["createElement"]
      244 GETUPVAL                         R7 13
      245 MOVE                             R8 R4
      246 CALL                             R6 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R6
      249 SETTABLEKS                       R6 R5 K49 ["EnableChatGroupApi"]
      251 RETURN                           R5 1

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
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          REF R4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          UPVAL U11
       30 GETUPVAL                         R6 10
       31 GETTABLEKS                       R6 R6 K4 ["createElement"]
       33 GETUPVAL                         R7 12
       34 DUPTABLE                         R8 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       35 GETUPVAL                         R9 13
       36 SETTABLEKS                       R9 R8 K5 ["SettingsLoadJobs"]
       38 GETUPVAL                         R9 14
       39 SETTABLEKS                       R9 R8 K6 ["SettingsSaveJobs"]
       41 LOADK                            R11 K11 ["General"]
       42 LOADK                            R13 K12 ["Category"]
       43 GETUPVAL                         R14 15
       44 CONCAT                           R12 R13 R14
       45 NAMECALL                         R9 R2 K13 ["getText"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K7 ["Title"]
       50 GETUPVAL                         R9 15
       51 SETTABLEKS                       R9 R8 K8 ["PageId"]
       53 SETTABLEKS                       R5 R8 K9 ["CreateChildren"]
       55 CALL                             R6 2 -1
       56 CLOSEUPVALS                      R4
       57 RETURN                           R6 -1

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
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

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
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

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
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R0 K9 ["Src"]
       44 GETTABLEKS                       R6 R6 K10 ["Flags"]
       46 GETTABLEKS                       R6 R6 K12 ["getFFlagGameSettingsEnableChatGroupApiSetting"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K9 ["Src"]
       53 GETTABLEKS                       R7 R7 K10 ["Flags"]
       55 GETTABLEKS                       R7 R7 K13 ["getFFlagGameSettingsAvatarChatAudioStringsV2"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       60 GETTABLEKS                       R8 R7 K15 ["withContext"]
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R10 R0 K9 ["Src"]
       66 GETTABLEKS                       R10 R10 K16 ["Components"]
       68 GETTABLEKS                       R10 R10 K17 ["ToggleButtonWithTitle"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K4 [require]
       73 GETTABLEKS                       R11 R0 K9 ["Src"]
       75 GETTABLEKS                       R11 R11 K14 ["ContextServices"]
       77 GETTABLEKS                       R11 R11 K18 ["Dialog"]
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R3 K19 ["Util"]
       82 GETTABLEKS                       R12 R11 K20 ["LayoutOrderIterator"]
       84 GETIMPORT                        R13 K4 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Src"]
       88 GETTABLEKS                       R14 R14 K16 ["Components"]
       90 GETTABLEKS                       R14 R14 K21 ["SettingsPages"]
       92 GETTABLEKS                       R14 R14 K22 ["SettingsPage"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R15 R0 K9 ["Src"]
       99 GETTABLEKS                       R15 R15 K23 ["Actions"]
      101 GETTABLEKS                       R15 R15 K24 ["AddChange"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K4 [require]
      106 GETTABLEKS                       R16 R0 K9 ["Src"]
      108 GETTABLEKS                       R16 R16 K19 ["Util"]
      110 GETTABLEKS                       R16 R16 K25 ["KeyProvider"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K27 [game]
      115 LOADK                            R18 K28 ["GuiService"]
      116 NAMECALL                         R16 R16 K29 ["GetService"]
      118 CALL                             R16 2 1
      119 GETIMPORT                        R17 K27 [game]
      121 LOADK                            R19 K30 ["AvatarChatMicCameraCouple"]
      122 LOADB                            R20 0
      123 NAMECALL                         R17 R17 K31 ["DefineFastFlag"]
      125 CALL                             R17 3 1
      126 GETIMPORT                        R18 K27 [game]
      128 LOADK                            R20 K32 ["AvatarChatSettingsAudioLink"]
      129 LOADK                            R21 K33 ["https://developer.roblox.com/articles/chat-with-avatars-audio"]
      130 NAMECALL                         R18 R18 K34 ["DefineFastString"]
      132 CALL                             R18 3 1
      133 GETIMPORT                        R19 K27 [game]
      135 LOADK                            R21 K35 ["AvatarChatSettingsVideoLink"]
      136 LOADK                            R22 K36 ["https://developer.roblox.com/articles/chat-with-avatars-video"]
      137 NAMECALL                         R19 R19 K34 ["DefineFastString"]
      139 CALL                             R19 3 1
      140 GETIMPORT                        R20 K27 [game]
      142 LOADK                            R22 K37 ["ChatGroupApiLink1"]
      143 LOADK                            R23 K38 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use"]
      144 NAMECALL                         R20 R20 K34 ["DefineFastString"]
      146 CALL                             R20 3 1
      147 GETIMPORT                        R21 K27 [game]
      149 LOADK                            R23 K39 ["ChatGroupApiLink2"]
      150 LOADK                            R24 K40 ["https://help.roblox.com/hc/articles/203313410-Roblox-Community-Standards"]
      151 NAMECALL                         R21 R21 K34 ["DefineFastString"]
      153 CALL                             R21 3 1
      154 GETIMPORT                        R22 K27 [game]
      156 LOADK                            R24 K41 ["ChatGroupApiLink3"]
      157 LOADK                            R25 K42 [""]
      158 NAMECALL                         R22 R22 K34 ["DefineFastString"]
      160 CALL                             R22 3 1
      161 GETTABLEKS                       R23 R15 K43 ["getAvatarChatAudioEnabledKeyName"]
      163 MOVE                             R24 R23
      164 CALL                             R24 0 1
      165 GETTABLEKS                       R25 R15 K44 ["getAvatarChatVideoEnabledKeyName"]
      167 MOVE                             R26 R25
      168 CALL                             R26 0 1
      169 LOADNIL                          R27
      170 LOADNIL                          R28
      171 MOVE                             R29 R5
      172 CALL                             R29 0 1
      173 JUMPIFNOT                        R29 ; [+5]
      174 GETTABLEKS                       R27 R15 K45 ["getChatGroupApiEnabledKeyName"]
      176 MOVE                             R29 R27
      177 CALL                             R29 0 1
      178 MOVE                             R28 R29
      179 GETIMPORT                        R29 K1 [script]
      181 GETTABLEKS                       R29 R29 K46 ["Name"]
      183 NEWCLOSURE                       R30 P0
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R26
      186 CAPTURE                          VAL R5
      187 CAPTURE                          REF R28
      188 DUPCLOSURE                       R31 K47 [PROTO_3]
      189 CAPTURE                          VAL R5
      190 NEWCLOSURE                       R32 P2
      191 CAPTURE                          VAL R24
      192 CAPTURE                          VAL R26
      193 CAPTURE                          VAL R5
      194 CAPTURE                          REF R28
      195 NEWCLOSURE                       R33 P3
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R5
      199 CAPTURE                          REF R28
      200 GETTABLEKS                       R34 R1 K48 ["PureComponent"]
      202 GETIMPORT                        R36 K1 [script]
      204 GETTABLEKS                       R36 R36 K46 ["Name"]
      206 NAMECALL                         R34 R34 K49 ["extend"]
      208 CALL                             R34 2 1
      209 DUPCLOSURE                       R35 K50 [PROTO_15]
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R6
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R22
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R30
      224 CAPTURE                          VAL R31
      225 CAPTURE                          VAL R29
      226 SETTABLEKS                       R35 R34 K51 ["render"]
      228 MOVE                             R35 R8
      229 DUPTABLE                         R36 K54 [{"Stylizer", "Localization", "Dialog"}]
      230 JUMPIFNOT                        R4 ; [+2]
      231 LOADNIL                          R37
      232 JUMP                             ; [+2]
      233 GETTABLEKS                       R37 R7 K52 ["Stylizer"]
      235 SETTABLEKS                       R37 R36 K52 ["Stylizer"]
      237 GETTABLEKS                       R37 R7 K53 ["Localization"]
      239 SETTABLEKS                       R37 R36 K53 ["Localization"]
      241 SETTABLEKS                       R10 R36 K18 ["Dialog"]
      243 CALL                             R35 1 1
      244 MOVE                             R36 R34
      245 CALL                             R35 1 1
      246 MOVE                             R34 R35
      247 GETIMPORT                        R35 K4 [require]
      249 GETTABLEKS                       R36 R0 K9 ["Src"]
      251 GETTABLEKS                       R36 R36 K55 ["Networking"]
      253 GETTABLEKS                       R36 R36 K56 ["settingFromState"]
      255 CALL                             R35 1 1
      256 GETTABLEKS                       R36 R2 K57 ["connect"]
      258 DUPCLOSURE                       R37 K58 [PROTO_17]
      259 CAPTURE                          VAL R35
      260 CAPTURE                          VAL R32
      261 DUPCLOSURE                       R38 K59 [PROTO_20]
      262 CAPTURE                          VAL R14
      263 CAPTURE                          VAL R33
      264 CALL                             R36 2 1
      265 MOVE                             R37 R34
      266 CALL                             R36 1 1
      267 MOVE                             R34 R36
      268 SETTABLEKS                       R29 R34 K60 ["LocalizationId"]
      270 CLOSEUPVALS                      R28
      271 RETURN                           R34 1
