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
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["gameId"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["AvatarChatAudioEnabled"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["Settings"]
       10 GETTABLEKS                       R2 R3 K1 ["Changed"]
       12 GETTABLEKS                       R1 R2 K3 ["AvatarChatVideoEnabled"]
       14 GETUPVAL                         R3 1
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+8]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["Settings"]
       20 GETTABLEKS                       R3 R4 K1 ["Changed"]
       22 GETTABLEKS                       R2 R3 K4 ["ChatGroupApiEnabled"]
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
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["gameId"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AvatarChatAudioEnabledChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["AvatarChatAudioEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+9]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K2 ["AvatarChatVideoEnabled"]
       13 JUMPIFNOT                        R0 ; [+5]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K3 ["AvatarChatVideoEnabledChanged"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AvatarChatVideoEnabledChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["AvatarChatVideoEnabled"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ChatGroupApiEnabledChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["ChatGroupApiEnabled"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 DUPTABLE                         R2 K7 [{"Title", "LayoutOrder", "Disabled", "Selected", "OnClick"}]
        6 LOADK                            R5 K8 ["AvatarChat"]
        7 LOADK                            R6 K9 ["AudioTitle"]
        8 NAMECALL                         R3 R1 K10 ["getText"]
       10 CALL                             R3 3 1
       11 SETTABLEKS                       R3 R2 K2 ["Title"]
       13 GETUPVAL                         R3 1
       14 NAMECALL                         R3 R3 K11 ["getNextOrder"]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K4 ["Disabled"]
       22 GETTABLEKS                       R3 R0 K12 ["AvatarChatAudioEnabled"]
       24 SETTABLEKS                       R3 R2 K5 ["Selected"]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 SETTABLEKS                       R3 R2 K6 ["OnClick"]
       31 DUPTABLE                         R3 K16 [{"Text", "LinkText", "OnLinkClicked"}]
       32 LOADK                            R6 K8 ["AvatarChat"]
       33 LOADK                            R7 K17 ["AudioBody"]
       34 NAMECALL                         R4 R1 K10 ["getText"]
       36 CALL                             R4 3 1
       37 SETTABLEKS                       R4 R3 K13 ["Text"]
       39 LOADK                            R6 K18 ["General"]
       40 LOADK                            R7 K19 ["LearnMoreLink"]
       41 NAMECALL                         R4 R1 K10 ["getText"]
       43 CALL                             R4 3 1
       44 SETTABLEKS                       R4 R3 K14 ["LinkText"]
       46 DUPCLOSURE                       R4 K20 [PROTO_7]
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 SETTABLEKS                       R4 R3 K15 ["OnLinkClicked"]
       51 SETTABLEKS                       R3 R2 K21 ["LinkProps"]
       53 DUPTABLE                         R3 K7 [{"Title", "LayoutOrder", "Disabled", "Selected", "OnClick"}]
       54 LOADK                            R6 K8 ["AvatarChat"]
       55 LOADK                            R7 K22 ["VideoTitle"]
       56 NAMECALL                         R4 R1 K10 ["getText"]
       58 CALL                             R4 3 1
       59 SETTABLEKS                       R4 R3 K2 ["Title"]
       61 GETUPVAL                         R4 1
       62 NAMECALL                         R4 R4 K11 ["getNextOrder"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       67 GETUPVAL                         R4 5
       68 SETTABLEKS                       R4 R3 K4 ["Disabled"]
       70 GETUPVAL                         R5 2
       71 JUMPIFNOT                        R5 ; [+3]
       72 GETTABLEKS                       R4 R0 K12 ["AvatarChatAudioEnabled"]
       74 JUMPIFNOT                        R4 ; [+2]
       75 GETTABLEKS                       R4 R0 K23 ["AvatarChatVideoEnabled"]
       77 SETTABLEKS                       R4 R3 K5 ["Selected"]
       79 NEWCLOSURE                       R4 P2
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R4 R3 K6 ["OnClick"]
       83 DUPTABLE                         R4 K16 [{"Text", "LinkText", "OnLinkClicked"}]
       84 LOADK                            R7 K8 ["AvatarChat"]
       85 LOADK                            R8 K24 ["VideoBody"]
       86 NAMECALL                         R5 R1 K10 ["getText"]
       88 CALL                             R5 3 1
       89 SETTABLEKS                       R5 R4 K13 ["Text"]
       91 LOADK                            R7 K18 ["General"]
       92 LOADK                            R8 K19 ["LearnMoreLink"]
       93 NAMECALL                         R5 R1 K10 ["getText"]
       95 CALL                             R5 3 1
       96 SETTABLEKS                       R5 R4 K14 ["LinkText"]
       98 DUPCLOSURE                       R5 K25 [PROTO_9]
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          UPVAL U6
      101 SETTABLEKS                       R5 R4 K15 ["OnLinkClicked"]
      103 SETTABLEKS                       R4 R3 K21 ["LinkProps"]
      105 LOADNIL                          R4
      106 GETUPVAL                         R5 7
      107 CALL                             R5 0 1
      108 JUMPIFNOT                        R5 ; [+94]
      109 DUPTABLE                         R5 K28 [{"Title", "Description", "LayoutOrder", "Disabled", "Selected", "OnClick", "LinkText", "LinkMap"}]
      110 LOADK                            R8 K29 ["ChatGroup"]
      111 LOADK                            R9 K30 ["ApiTitle"]
      112 NAMECALL                         R6 R1 K10 ["getText"]
      114 CALL                             R6 3 1
      115 SETTABLEKS                       R6 R5 K2 ["Title"]
      117 LOADK                            R8 K29 ["ChatGroup"]
      118 LOADK                            R9 K31 ["ApiBody1"]
      119 NAMECALL                         R6 R1 K10 ["getText"]
      121 CALL                             R6 3 1
      122 SETTABLEKS                       R6 R5 K26 ["Description"]
      124 GETUPVAL                         R6 1
      125 NAMECALL                         R6 R6 K11 ["getNextOrder"]
      127 CALL                             R6 1 1
      128 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
      130 LOADB                            R6 0
      131 SETTABLEKS                       R6 R5 K4 ["Disabled"]
      133 GETTABLEKS                       R6 R0 K32 ["ChatGroupApiEnabled"]
      135 SETTABLEKS                       R6 R5 K5 ["Selected"]
      137 NEWCLOSURE                       R6 P4
      138 CAPTURE                          VAL R0
      139 SETTABLEKS                       R6 R5 K6 ["OnClick"]
      141 LOADK                            R8 K29 ["ChatGroup"]
      142 LOADK                            R9 K33 ["ApiBody2"]
      143 NAMECALL                         R6 R1 K10 ["getText"]
      145 CALL                             R6 3 1
      146 SETTABLEKS                       R6 R5 K14 ["LinkText"]
      148 NEWTABLE                         R6 4 0
      150 DUPTABLE                         R7 K35 [{"LinkText", "LinkCallback"}]
      151 LOADK                            R10 K18 ["General"]
      152 LOADK                            R11 K36 ["TermsOfUseLink"]
      153 NAMECALL                         R8 R1 K10 ["getText"]
      155 CALL                             R8 3 1
      156 SETTABLEKS                       R8 R7 K14 ["LinkText"]
      158 DUPCLOSURE                       R8 K37 [PROTO_11]
      159 CAPTURE                          UPVAL U3
      160 CAPTURE                          UPVAL U8
      161 SETTABLEKS                       R8 R7 K34 ["LinkCallback"]
      163 SETTABLEKS                       R7 R6 K38 ["[link1]"]
      165 DUPTABLE                         R7 K35 [{"LinkText", "LinkCallback"}]
      166 LOADK                            R10 K18 ["General"]
      167 LOADK                            R11 K39 ["CommunityStandardsLink"]
      168 NAMECALL                         R8 R1 K10 ["getText"]
      170 CALL                             R8 3 1
      171 SETTABLEKS                       R8 R7 K14 ["LinkText"]
      173 DUPCLOSURE                       R8 K40 [PROTO_12]
      174 CAPTURE                          UPVAL U3
      175 CAPTURE                          UPVAL U9
      176 SETTABLEKS                       R8 R7 K34 ["LinkCallback"]
      178 SETTABLEKS                       R7 R6 K41 ["[link2]"]
      180 DUPTABLE                         R7 K35 [{"LinkText", "LinkCallback"}]
      181 GETUPVAL                         R9 10
      182 JUMPIFEQKS                       R9 K42 [""] ; [+7]
      184 LOADK                            R10 K18 ["General"]
      185 LOADK                            R11 K19 ["LearnMoreLink"]
      186 NAMECALL                         R8 R1 K10 ["getText"]
      188 CALL                             R8 3 1
      189 JUMP                             ; [+1]
      190 LOADK                            R8 K42 [""]
      191 SETTABLEKS                       R8 R7 K14 ["LinkText"]
      193 DUPCLOSURE                       R8 K43 [PROTO_13]
      194 CAPTURE                          UPVAL U3
      195 CAPTURE                          UPVAL U10
      196 SETTABLEKS                       R8 R7 K34 ["LinkCallback"]
      198 SETTABLEKS                       R7 R6 K44 ["[link3]"]
      200 SETTABLEKS                       R6 R5 K27 ["LinkMap"]
      202 MOVE                             R4 R5
      203 DUPTABLE                         R5 K48 [{"EnableAvatarChatAudio", "EnableAvatarChatVideo", "EnableChatGroupApi"}]
      204 GETUPVAL                         R7 11
      205 GETTABLEKS                       R6 R7 K49 ["createElement"]
      207 GETUPVAL                         R7 12
      208 MOVE                             R8 R2
      209 CALL                             R6 2 1
      210 SETTABLEKS                       R6 R5 K45 ["EnableAvatarChatAudio"]
      212 GETUPVAL                         R7 11
      213 GETTABLEKS                       R6 R7 K49 ["createElement"]
      215 GETUPVAL                         R7 12
      216 MOVE                             R8 R3
      217 CALL                             R6 2 1
      218 SETTABLEKS                       R6 R5 K46 ["EnableAvatarChatVideo"]
      220 GETUPVAL                         R7 7
      221 CALL                             R7 0 1
      222 JUMPIFNOT                        R7 ; [+7]
      223 GETUPVAL                         R7 11
      224 GETTABLEKS                       R6 R7 K49 ["createElement"]
      226 GETUPVAL                         R7 12
      227 MOVE                             R8 R4
      228 CALL                             R6 2 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R6
      231 SETTABLEKS                       R6 R5 K47 ["EnableChatGroupApi"]
      233 RETURN                           R5 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["new"]
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
       28 CAPTURE                          UPVAL U10
       29 GETUPVAL                         R7 9
       30 GETTABLEKS                       R6 R7 K4 ["createElement"]
       32 GETUPVAL                         R7 11
       33 DUPTABLE                         R8 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       34 GETUPVAL                         R9 12
       35 SETTABLEKS                       R9 R8 K5 ["SettingsLoadJobs"]
       37 GETUPVAL                         R9 13
       38 SETTABLEKS                       R9 R8 K6 ["SettingsSaveJobs"]
       40 LOADK                            R11 K11 ["General"]
       41 LOADK                            R13 K12 ["Category"]
       42 GETUPVAL                         R14 14
       43 CONCAT                           R12 R13 R14
       44 NAMECALL                         R9 R2 K13 ["getText"]
       46 CALL                             R9 3 1
       47 SETTABLEKS                       R9 R8 K7 ["Title"]
       49 GETUPVAL                         R9 14
       50 SETTABLEKS                       R9 R8 K8 ["PageId"]
       52 SETTABLEKS                       R5 R8 K9 ["CreateChildren"]
       54 CALL                             R6 2 -1
       55 CLOSEUPVALS                      R4
       56 RETURN                           R6 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Settings"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Flags"]
       36 GETTABLEKS                       R5 R6 K11 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       38 CALL                             R4 1 1
       39 CALL                             R4 0 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Src"]
       44 GETTABLEKS                       R7 R8 K10 ["Flags"]
       46 GETTABLEKS                       R6 R7 K12 ["getFFlagGameSettingsEnableChatGroupApiSetting"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       51 GETTABLEKS                       R7 R6 K14 ["withContext"]
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R11 R0 K9 ["Src"]
       57 GETTABLEKS                       R10 R11 K15 ["Components"]
       59 GETTABLEKS                       R9 R10 K16 ["ToggleButtonWithTitle"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R12 R0 K9 ["Src"]
       66 GETTABLEKS                       R11 R12 K13 ["ContextServices"]
       68 GETTABLEKS                       R10 R11 K17 ["Dialog"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R3 K18 ["Util"]
       73 GETTABLEKS                       R11 R10 K19 ["LayoutOrderIterator"]
       75 GETIMPORT                        R12 K4 [require]
       77 GETTABLEKS                       R16 R0 K9 ["Src"]
       79 GETTABLEKS                       R15 R16 K15 ["Components"]
       81 GETTABLEKS                       R14 R15 K20 ["SettingsPages"]
       83 GETTABLEKS                       R13 R14 K21 ["SettingsPage"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K4 [require]
       88 GETTABLEKS                       R16 R0 K9 ["Src"]
       90 GETTABLEKS                       R15 R16 K22 ["Actions"]
       92 GETTABLEKS                       R14 R15 K23 ["AddChange"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R17 R0 K9 ["Src"]
       99 GETTABLEKS                       R16 R17 K18 ["Util"]
      101 GETTABLEKS                       R15 R16 K24 ["KeyProvider"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K26 [game]
      106 LOADK                            R17 K27 ["GuiService"]
      107 NAMECALL                         R15 R15 K28 ["GetService"]
      109 CALL                             R15 2 1
      110 GETIMPORT                        R16 K26 [game]
      112 LOADK                            R18 K29 ["AvatarChatMicCameraCouple"]
      113 LOADB                            R19 0
      114 NAMECALL                         R16 R16 K30 ["DefineFastFlag"]
      116 CALL                             R16 3 1
      117 GETIMPORT                        R17 K26 [game]
      119 LOADK                            R19 K31 ["AvatarChatSettingsAudioLink"]
      120 LOADK                            R20 K32 ["https://developer.roblox.com/articles/chat-with-avatars-audio"]
      121 NAMECALL                         R17 R17 K33 ["DefineFastString"]
      123 CALL                             R17 3 1
      124 GETIMPORT                        R18 K26 [game]
      126 LOADK                            R20 K34 ["AvatarChatSettingsVideoLink"]
      127 LOADK                            R21 K35 ["https://developer.roblox.com/articles/chat-with-avatars-video"]
      128 NAMECALL                         R18 R18 K33 ["DefineFastString"]
      130 CALL                             R18 3 1
      131 GETIMPORT                        R19 K26 [game]
      133 LOADK                            R21 K36 ["ChatGroupApiLink1"]
      134 LOADK                            R22 K37 ["https://help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use"]
      135 NAMECALL                         R19 R19 K33 ["DefineFastString"]
      137 CALL                             R19 3 1
      138 GETIMPORT                        R20 K26 [game]
      140 LOADK                            R22 K38 ["ChatGroupApiLink2"]
      141 LOADK                            R23 K39 ["https://help.roblox.com/hc/articles/203313410-Roblox-Community-Standards"]
      142 NAMECALL                         R20 R20 K33 ["DefineFastString"]
      144 CALL                             R20 3 1
      145 GETIMPORT                        R21 K26 [game]
      147 LOADK                            R23 K40 ["ChatGroupApiLink3"]
      148 LOADK                            R24 K41 [""]
      149 NAMECALL                         R21 R21 K33 ["DefineFastString"]
      151 CALL                             R21 3 1
      152 GETTABLEKS                       R22 R14 K42 ["getAvatarChatAudioEnabledKeyName"]
      154 MOVE                             R23 R22
      155 CALL                             R23 0 1
      156 GETTABLEKS                       R24 R14 K43 ["getAvatarChatVideoEnabledKeyName"]
      158 MOVE                             R25 R24
      159 CALL                             R25 0 1
      160 LOADNIL                          R26
      161 LOADNIL                          R27
      162 MOVE                             R28 R5
      163 CALL                             R28 0 1
      164 JUMPIFNOT                        R28 ; [+5]
      165 GETTABLEKS                       R26 R14 K44 ["getChatGroupApiEnabledKeyName"]
      167 MOVE                             R28 R26
      168 CALL                             R28 0 1
      169 MOVE                             R27 R28
      170 GETIMPORT                        R29 K1 [script]
      172 GETTABLEKS                       R28 R29 K45 ["Name"]
      174 NEWCLOSURE                       R29 P0
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R5
      178 CAPTURE                          REF R27
      179 DUPCLOSURE                       R30 K46 [PROTO_3]
      180 CAPTURE                          VAL R5
      181 NEWCLOSURE                       R31 P2
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R5
      185 CAPTURE                          REF R27
      186 NEWCLOSURE                       R32 P3
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R5
      190 CAPTURE                          REF R27
      191 GETTABLEKS                       R33 R1 K47 ["PureComponent"]
      193 GETIMPORT                        R36 K1 [script]
      195 GETTABLEKS                       R35 R36 K45 ["Name"]
      197 NAMECALL                         R33 R33 K48 ["extend"]
      199 CALL                             R33 2 1
      200 DUPCLOSURE                       R34 K49 [PROTO_15]
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R29
      214 CAPTURE                          VAL R30
      215 CAPTURE                          VAL R28
      216 SETTABLEKS                       R34 R33 K50 ["render"]
      218 MOVE                             R34 R7
      219 DUPTABLE                         R35 K53 [{"Stylizer", "Localization", "Dialog"}]
      220 JUMPIFNOT                        R4 ; [+2]
      221 LOADNIL                          R36
      222 JUMP                             ; [+2]
      223 GETTABLEKS                       R36 R6 K51 ["Stylizer"]
      225 SETTABLEKS                       R36 R35 K51 ["Stylizer"]
      227 GETTABLEKS                       R36 R6 K52 ["Localization"]
      229 SETTABLEKS                       R36 R35 K52 ["Localization"]
      231 SETTABLEKS                       R9 R35 K17 ["Dialog"]
      233 CALL                             R34 1 1
      234 MOVE                             R35 R33
      235 CALL                             R34 1 1
      236 MOVE                             R33 R34
      237 GETIMPORT                        R34 K4 [require]
      239 GETTABLEKS                       R37 R0 K9 ["Src"]
      241 GETTABLEKS                       R36 R37 K54 ["Networking"]
      243 GETTABLEKS                       R35 R36 K55 ["settingFromState"]
      245 CALL                             R34 1 1
      246 GETTABLEKS                       R35 R2 K56 ["connect"]
      248 DUPCLOSURE                       R36 K57 [PROTO_17]
      249 CAPTURE                          VAL R34
      250 CAPTURE                          VAL R31
      251 DUPCLOSURE                       R37 K58 [PROTO_20]
      252 CAPTURE                          VAL R13
      253 CAPTURE                          VAL R32
      254 CALL                             R35 2 1
      255 MOVE                             R36 R33
      256 CALL                             R35 1 1
      257 MOVE                             R33 R35
      258 SETTABLEKS                       R28 R33 K59 ["LocalizationId"]
      260 CLOSEUPVALS                      R27
      261 RETURN                           R33 1
