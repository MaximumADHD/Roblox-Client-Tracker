PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["avatarItemDialogType"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["avatarItemDialogButtonEnabled"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["instances"]
        2 GETTABLEN                        R1 R2 1
        3 RETURN                           R1 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 DUPTABLE                         R4 K3 [{"publishService", "pluginGuiService", "contentProvider"}]
        5 GETUPVAL                         R5 4
        6 SETTABLEKS                       R5 R4 K0 ["publishService"]
        8 GETUPVAL                         R5 5
        9 SETTABLEKS                       R5 R4 K1 ["pluginGuiService"]
       11 GETUPVAL                         R5 6
       12 SETTABLEKS                       R5 R4 K2 ["contentProvider"]
       14 CALL                             R1 3 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 DUPTABLE                         R4 K3 [{"publishService", "pluginGuiService", "contentProvider"}]
        5 GETUPVAL                         R5 4
        6 SETTABLEKS                       R5 R4 K0 ["publishService"]
        8 GETUPVAL                         R5 5
        9 SETTABLEKS                       R5 R4 K1 ["pluginGuiService"]
       11 GETUPVAL                         R5 6
       12 SETTABLEKS                       R5 R4 K2 ["contentProvider"]
       14 CALL                             R1 3 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["OnUploadConfirmed"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Disabled"]
        5 LOADK                            R2 K1 [""]
        6 SETTABLE                         R2 R0 R1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["AssetPrivacy"]
       10 GETUPVAL                         R2 1
       11 LOADK                            R4 K3 ["AssetConfig"]
       12 LOADK                            R5 K4 ["AvatarItemDialogAcceptPrivacy"]
       13 NAMECALL                         R2 R2 K5 ["getText"]
       15 CALL                             R2 3 1
       16 SETTABLE                         R2 R0 R1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K6 ["Error"]
       20 GETUPVAL                         R2 1
       21 LOADK                            R4 K3 ["AssetConfig"]
       22 LOADK                            R5 K7 ["AvatarItemDialogAcceptError"]
       23 NAMECALL                         R2 R2 K5 ["getText"]
       25 CALL                             R2 3 1
       26 SETTABLE                         R2 R0 R1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K8 ["RobuxSpend"]
       30 GETUPVAL                         R2 1
       31 LOADK                            R4 K9 ["General"]
       32 LOADK                            R5 K10 ["PayAndSubmit"]
       33 NAMECALL                         R2 R2 K5 ["getText"]
       35 CALL                             R2 3 1
       36 SETTABLE                         R2 R0 R1
       37 GETUPVAL                         R1 1
       38 LOADK                            R3 K9 ["General"]
       39 LOADK                            R4 K11 ["Cancel"]
       40 NAMECALL                         R1 R1 K5 ["getText"]
       42 CALL                             R1 3 1
       43 NEWTABLE                         R2 4 0
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K0 ["Disabled"]
       48 LOADK                            R4 K1 [""]
       49 SETTABLE                         R4 R2 R3
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K2 ["AssetPrivacy"]
       53 GETUPVAL                         R4 1
       54 LOADK                            R6 K3 ["AssetConfig"]
       55 LOADK                            R7 K12 ["AvatarItemDialogDescriptionPrivacy"]
       56 NAMECALL                         R4 R4 K5 ["getText"]
       58 CALL                             R4 3 1
       59 SETTABLE                         R4 R2 R3
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K6 ["Error"]
       63 GETUPVAL                         R4 1
       64 LOADK                            R6 K3 ["AssetConfig"]
       65 LOADK                            R7 K13 ["AvatarItemDialogDescriptionError"]
       66 NAMECALL                         R4 R4 K5 ["getText"]
       68 CALL                             R4 3 1
       69 SETTABLE                         R4 R2 R3
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K8 ["RobuxSpend"]
       73 GETUPVAL                         R5 2
       74 LOADN                            R6 0
       75 JUMPIFNOTLT                      R6 R5 ; [+16]
       77 GETUPVAL                         R4 3
       78 GETTABLEKS                       R4 R4 K14 ["getItemizedFeeDescription"]
       80 GETUPVAL                         R5 1
       81 GETUPVAL                         R8 4
       82 GETTABLEKS                       R8 R8 K16 ["UploadFee"]
       84 FASTCALL1                        TONUMBER R8 ; [+2]
       85 GETIMPORT                        R7 K18 [tonumber]
       87 CALL                             R7 1 1
       88 ORK                              R6 R7 K15 [0]
       89 GETUPVAL                         R7 2
       90 CALL                             R4 3 1
       91 JUMP                             ; [+14]
       92 GETUPVAL                         R4 1
       93 LOADK                            R6 K3 ["AssetConfig"]
       94 LOADK                            R7 K19 ["PayAndConfirmDescription"]
       95 DUPTABLE                         R8 K21 [{"amount"}]
       96 GETUPVAL                         R10 5
       97 GETUPVAL                         R11 4
       98 GETTABLEKS                       R11 R11 K16 ["UploadFee"]
      100 CONCAT                           R9 R10 R11
      101 SETTABLEKS                       R9 R8 K20 ["amount"]
      103 NAMECALL                         R4 R4 K5 ["getText"]
      105 CALL                             R4 4 1
      106 SETTABLE                         R4 R2 R3
      107 NEWTABLE                         R3 4 0
      109 GETUPVAL                         R4 0
      110 GETTABLEKS                       R4 R4 K0 ["Disabled"]
      112 LOADK                            R5 K1 [""]
      113 SETTABLE                         R5 R3 R4
      114 GETUPVAL                         R4 0
      115 GETTABLEKS                       R4 R4 K2 ["AssetPrivacy"]
      117 GETUPVAL                         R5 1
      118 LOADK                            R7 K3 ["AssetConfig"]
      119 LOADK                            R8 K22 ["AvatarItemDialogHeadingPrivacy"]
      120 NAMECALL                         R5 R5 K5 ["getText"]
      122 CALL                             R5 3 1
      123 SETTABLE                         R5 R3 R4
      124 GETUPVAL                         R4 0
      125 GETTABLEKS                       R4 R4 K6 ["Error"]
      127 GETUPVAL                         R5 1
      128 LOADK                            R7 K3 ["AssetConfig"]
      129 LOADK                            R8 K23 ["AvatarItemDialogHeadingError"]
      130 NAMECALL                         R5 R5 K5 ["getText"]
      132 CALL                             R5 3 1
      133 SETTABLE                         R5 R3 R4
      134 GETUPVAL                         R4 0
      135 GETTABLEKS                       R4 R4 K8 ["RobuxSpend"]
      137 GETUPVAL                         R5 1
      138 LOADK                            R7 K3 ["AssetConfig"]
      139 LOADK                            R8 K24 ["PayAndConfirmHeading"]
      140 DUPTABLE                         R9 K26 [{"name"}]
      141 GETUPVAL                         R10 4
      142 GETTABLEKS                       R10 R10 K27 ["ItemName"]
      144 SETTABLEKS                       R10 R9 K25 ["name"]
      146 NAMECALL                         R5 R5 K5 ["getText"]
      148 CALL                             R5 4 1
      149 SETTABLE                         R5 R3 R4
      150 GETUPVAL                         R4 1
      151 LOADK                            R6 K9 ["General"]
      152 LOADK                            R7 K28 ["RobloxStudio"]
      153 NAMECALL                         R4 R4 K5 ["getText"]
      155 CALL                             R4 3 1
      156 NEWTABLE                         R5 4 0
      158 GETUPVAL                         R6 0
      159 GETTABLEKS                       R6 R6 K0 ["Disabled"]
      161 DUPCLOSURE                       R7 K29 [PROTO_3]
      162 SETTABLE                         R7 R5 R6
      163 GETUPVAL                         R6 0
      164 GETTABLEKS                       R6 R6 K2 ["AssetPrivacy"]
      166 NEWCLOSURE                       R7 P1
      167 CAPTURE                          UPVAL U6
      168 CAPTURE                          UPVAL U7
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          UPVAL U9
      171 CAPTURE                          UPVAL U10
      172 CAPTURE                          UPVAL U11
      173 CAPTURE                          UPVAL U12
      174 SETTABLE                         R7 R5 R6
      175 GETUPVAL                         R6 0
      176 GETTABLEKS                       R6 R6 K6 ["Error"]
      178 NEWCLOSURE                       R7 P2
      179 CAPTURE                          UPVAL U6
      180 CAPTURE                          UPVAL U13
      181 CAPTURE                          UPVAL U8
      182 CAPTURE                          UPVAL U9
      183 CAPTURE                          UPVAL U10
      184 CAPTURE                          UPVAL U11
      185 CAPTURE                          UPVAL U12
      186 SETTABLE                         R7 R5 R6
      187 GETUPVAL                         R6 0
      188 GETTABLEKS                       R6 R6 K8 ["RobuxSpend"]
      190 NEWCLOSURE                       R7 P3
      191 CAPTURE                          UPVAL U6
      192 CAPTURE                          UPVAL U14
      193 CAPTURE                          UPVAL U4
      194 SETTABLE                         R7 R5 R6
      195 NEWCLOSURE                       R6 P4
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          UPVAL U15
      198 DUPTABLE                         R7 K39 [{"AcceptText", "CancelText", "DescriptionText", "HeadingText", "TitleText", "OnAccepted", "OnCanceled", "DialogEnabled", "AcceptButtonEnabled"}]
      199 GETUPVAL                         R9 16
      200 GETTABLE                         R8 R0 R9
      201 SETTABLEKS                       R8 R7 K30 ["AcceptText"]
      203 SETTABLEKS                       R1 R7 K31 ["CancelText"]
      205 GETUPVAL                         R9 16
      206 GETTABLE                         R8 R2 R9
      207 SETTABLEKS                       R8 R7 K32 ["DescriptionText"]
      209 GETUPVAL                         R9 16
      210 GETTABLE                         R8 R3 R9
      211 SETTABLEKS                       R8 R7 K33 ["HeadingText"]
      213 SETTABLEKS                       R4 R7 K34 ["TitleText"]
      215 GETUPVAL                         R9 16
      216 GETTABLE                         R8 R5 R9
      217 SETTABLEKS                       R8 R7 K35 ["OnAccepted"]
      219 SETTABLEKS                       R6 R7 K36 ["OnCanceled"]
      221 GETUPVAL                         R9 17
      222 CALL                             R9 0 1
      223 JUMPIFNOT                        R9 ; [+9]
      224 LOADB                            R8 0
      225 GETUPVAL                         R9 16
      226 GETUPVAL                         R10 0
      227 GETTABLEKS                       R10 R10 K0 ["Disabled"]
      229 JUMPIFEQ                         R9 R10 ; [+11]
      231 GETUPVAL                         R8 18
      232 JUMP                             ; [+8]
      233 GETUPVAL                         R9 16
      234 GETUPVAL                         R10 0
      235 GETTABLEKS                       R10 R10 K0 ["Disabled"]
      237 JUMPIFNOTEQ                      R9 R10 ; [+2]
      239 LOADB                            R8 0 +1
      240 LOADB                            R8 1
      241 SETTABLEKS                       R8 R7 K37 ["DialogEnabled"]
      243 GETUPVAL                         R8 18
      244 SETTABLEKS                       R8 R7 K38 ["AcceptButtonEnabled"]
      246 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K6 [{["PluginId"] = "Toolbox", ["ItemId"] = "AvatarItemDialog"}]
        6 DUPTABLE                         R4 K13 [{["Type"] = "Default", ["Title"], ["Description"], ["PrimaryButton"], ["SecondaryButton"]}]
        7 GETUPVAL                         R5 1
        8 LOADK                            R7 K14 ["AssetConfig"]
        9 LOADK                            R8 K15 ["PayAndConfirmHeading"]
       10 DUPTABLE                         R9 K17 [{"name"}]
       11 GETUPVAL                         R10 2
       12 GETTABLEKS                       R10 R10 K18 ["ItemName"]
       14 SETTABLEKS                       R10 R9 K16 ["name"]
       16 NAMECALL                         R5 R5 K19 ["getText"]
       18 CALL                             R5 4 1
       19 SETTABLEKS                       R5 R4 K9 ["Title"]
       21 GETUPVAL                         R6 3
       22 LOADN                            R7 0
       23 JUMPIFNOTLT                      R7 R6 ; [+16]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K20 ["getItemizedFeeDescription"]
       28 GETUPVAL                         R6 1
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K22 ["UploadFee"]
       32 FASTCALL1                        TONUMBER R9 ; [+2]
       33 GETIMPORT                        R8 K24 [tonumber]
       35 CALL                             R8 1 1
       36 ORK                              R7 R8 K21 [0]
       37 GETUPVAL                         R8 3
       38 CALL                             R5 3 1
       39 JUMP                             ; [+14]
       40 GETUPVAL                         R5 1
       41 LOADK                            R7 K14 ["AssetConfig"]
       42 LOADK                            R8 K25 ["PayAndConfirmDescription"]
       43 DUPTABLE                         R9 K27 [{"amount"}]
       44 GETUPVAL                         R11 5
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K22 ["UploadFee"]
       48 CONCAT                           R10 R11 R12
       49 SETTABLEKS                       R10 R9 K26 ["amount"]
       51 NAMECALL                         R5 R5 K19 ["getText"]
       53 CALL                             R5 4 1
       54 SETTABLEKS                       R5 R4 K10 ["Description"]
       56 DUPTABLE                         R5 K30 [{"Uri", "Text"}]
       57 DUPTABLE                         R6 K32 [{["PluginId"] = "Toolbox", ["ItemId"] = "AvatarItemDialog/Accept"}]
       58 SETTABLEKS                       R6 R5 K28 ["Uri"]
       60 GETUPVAL                         R6 1
       61 LOADK                            R8 K33 ["General"]
       62 LOADK                            R9 K34 ["PayAndSubmit"]
       63 NAMECALL                         R6 R6 K19 ["getText"]
       65 CALL                             R6 3 1
       66 SETTABLEKS                       R6 R5 K29 ["Text"]
       68 SETTABLEKS                       R5 R4 K11 ["PrimaryButton"]
       70 DUPTABLE                         R5 K30 [{"Uri", "Text"}]
       71 DUPTABLE                         R6 K36 [{["PluginId"] = "Toolbox", ["ItemId"] = "AvatarItemDialog/Cancel"}]
       72 SETTABLEKS                       R6 R5 K28 ["Uri"]
       74 GETUPVAL                         R6 1
       75 LOADK                            R8 K33 ["General"]
       76 LOADK                            R9 K37 ["Cancel"]
       77 NAMECALL                         R6 R6 K19 ["getText"]
       79 CALL                             R6 3 1
       80 SETTABLEKS                       R6 R5 K29 ["Text"]
       82 SETTABLEKS                       R5 R4 K12 ["SecondaryButton"]
       84 NAMECALL                         R1 R0 K38 ["ShowDialogAsync"]
       86 CALL                             R1 3 1
       87 GETUPVAL                         R2 6
       88 LOADB                            R3 0
       89 SETTABLEKS                       R3 R2 K39 ["current"]
       91 JUMPIFNOT                        R1 ; [+18]
       92 GETTABLEKS                       R2 R1 K40 ["SelectedButtonUri"]
       94 JUMPIFNOT                        R2 ; [+15]
       95 GETTABLEKS                       R2 R1 K40 ["SelectedButtonUri"]
       97 GETTABLEKS                       R2 R2 K4 ["ItemId"]
       99 JUMPIFNOTEQKS                    R2 K31 ["AvatarItemDialog/Accept"] ; [+10]
      101 GETUPVAL                         R2 7
      102 GETUPVAL                         R3 8
      103 CALL                             R3 0 -1
      104 CALL                             R2 -1 0
      105 GETUPVAL                         R2 2
      106 GETTABLEKS                       R2 R2 K41 ["OnUploadConfirmed"]
      108 CALL                             R2 0 0
      109 RETURN                           R0 0
      110 GETUPVAL                         R2 7
      111 GETUPVAL                         R3 9
      112 CALL                             R3 0 -1
      113 CALL                             R2 -1 0
      114 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["RobuxSpend"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 JUMPIFNOT                        R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 LOADB                            R1 1
       16 SETTABLEKS                       R1 R0 K1 ["current"]
       18 GETIMPORT                        R0 K4 [task.spawn]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          UPVAL U11
       30 CAPTURE                          UPVAL U12
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Localization"]
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["Plugin"]
       11 NAMECALL                         R3 R3 K1 ["use"]
       13 CALL                             R3 1 1
       14 NAMECALL                         R3 R3 K3 ["get"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K1 ["use"]
       20 CALL                             R4 0 1
       21 GETTABLEKS                       R4 R4 K4 ["networkInterface"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K1 ["use"]
       26 CALL                             R5 0 1
       27 GETTABLEKS                       R5 R5 K5 ["publishService"]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K1 ["use"]
       32 CALL                             R6 0 1
       33 GETTABLEKS                       R6 R6 K6 ["pluginGuiService"]
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R7 R7 K1 ["use"]
       38 CALL                             R7 0 1
       39 GETTABLEKS                       R7 R7 K7 ["contentProvider"]
       41 GETUPVAL                         R8 6
       42 GETUPVAL                         R9 7
       43 CALL                             R8 1 1
       44 GETUPVAL                         R9 6
       45 GETUPVAL                         R10 8
       46 CALL                             R9 1 1
       47 GETUPVAL                         R10 6
       48 GETUPVAL                         R11 9
       49 CALL                             R10 1 1
       50 GETUPVAL                         R12 10
       51 CALL                             R12 0 1
       52 JUMPIFNOT                        R12 ; [+4]
       53 GETTABLEKS                       R12 R0 K9 ["PublishingFee"]
       55 ORK                              R11 R12 K8 [0]
       56 JUMP                             ; [+1]
       57 LOADN                            R11 0
       58 GETUPVAL                         R12 11
       59 GETTABLEKS                       R12 R12 K10 ["useMemo"]
       61 NEWCLOSURE                       R13 P0
       62 CAPTURE                          UPVAL U12
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R11
       65 CAPTURE                          UPVAL U13
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U14
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U15
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          UPVAL U16
       76 CAPTURE                          UPVAL U17
       77 CAPTURE                          UPVAL U18
       78 CAPTURE                          VAL R8
       79 CAPTURE                          UPVAL U19
       80 CAPTURE                          VAL R9
       81 NEWTABLE                         R14 0 4
       83 MOVE                             R15 R8
       84 MOVE                             R16 R9
       85 GETTABLEKS                       R17 R0 K11 ["UploadFee"]
       87 MOVE                             R18 R11
       88 SETLIST                          R14 R15 4 [1]
       90 CALL                             R12 2 1
       91 GETUPVAL                         R13 11
       92 GETTABLEKS                       R13 R13 K12 ["useRef"]
       94 LOADB                            R14 0
       95 CALL                             R13 1 1
       96 GETUPVAL                         R14 11
       97 GETTABLEKS                       R14 R14 K13 ["useEffect"]
       99 NEWCLOSURE                       R15 P1
      100 CAPTURE                          UPVAL U19
      101 CAPTURE                          VAL R8
      102 CAPTURE                          UPVAL U12
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R11
      108 CAPTURE                          UPVAL U13
      109 CAPTURE                          UPVAL U14
      110 CAPTURE                          VAL R1
      111 CAPTURE                          UPVAL U17
      112 CAPTURE                          UPVAL U18
      113 NEWTABLE                         R16 0 1
      115 MOVE                             R17 R8
      116 SETLIST                          R16 R17 1 [1]
      118 CALL                             R14 2 0
      119 GETUPVAL                         R14 19
      120 CALL                             R14 0 1
      121 JUMPIFNOT                        R14 ; [+7]
      122 GETUPVAL                         R14 12
      123 GETTABLEKS                       R14 R14 K14 ["RobuxSpend"]
      125 JUMPIFNOTEQ                      R8 R14 ; [+3]
      127 LOADNIL                          R14
      128 RETURN                           R14 1
      129 GETUPVAL                         R14 11
      130 GETTABLEKS                       R14 R14 K15 ["createElement"]
      132 GETUPVAL                         R15 20
      133 MOVE                             R16 R12
      134 CALL                             R14 2 -1
      135 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Src"]
       25 GETTABLEKS                       R6 R6 K9 ["ContextServices"]
       27 GETTABLEKS                       R6 R6 K11 ["NetworkContext"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Src"]
       34 GETTABLEKS                       R7 R7 K9 ["ContextServices"]
       36 GETTABLEKS                       R7 R7 K12 ["PublishServiceContext"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Src"]
       43 GETTABLEKS                       R8 R8 K9 ["ContextServices"]
       45 GETTABLEKS                       R8 R8 K13 ["PluginGuiServiceContext"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R9 R0 K10 ["Src"]
       52 GETTABLEKS                       R9 R9 K9 ["ContextServices"]
       54 GETTABLEKS                       R9 R9 K14 ["ContentProviderContext"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R10 K15 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K16 ["useDispatch"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K6 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R11 R11 K15 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K17 ["useSelector"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Src"]
       79 GETTABLEKS                       R12 R12 K18 ["Components"]
       81 GETTABLEKS                       R12 R12 K19 ["AssetConfiguration"]
       83 GETTABLEKS                       R12 R12 K20 ["AvatarItemDialog"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K6 [require]
       88 GETTABLEKS                       R13 R0 K10 ["Src"]
       90 GETTABLEKS                       R13 R13 K21 ["Thunks"]
       92 GETTABLEKS                       R13 R13 K22 ["CheckAvatarAssetPrivacy"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K6 [require]
       97 GETTABLEKS                       R14 R0 K10 ["Src"]
       99 GETTABLEKS                       R14 R14 K21 ["Thunks"]
      101 GETTABLEKS                       R14 R14 K23 ["MakeAvatarAssetsOpenUse"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K6 [require]
      106 GETTABLEKS                       R15 R0 K10 ["Src"]
      108 GETTABLEKS                       R15 R15 K24 ["Actions"]
      110 GETTABLEKS                       R15 R15 K25 ["AvatarItemDialogUploadConfirmed"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K6 [require]
      115 GETTABLEKS                       R16 R0 K10 ["Src"]
      117 GETTABLEKS                       R16 R16 K24 ["Actions"]
      119 GETTABLEKS                       R16 R16 K26 ["AvatarItemDialogCancelled"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K6 [require]
      124 GETTABLEKS                       R17 R0 K10 ["Src"]
      126 GETTABLEKS                       R17 R17 K27 ["Types"]
      128 GETTABLEKS                       R17 R17 K20 ["AvatarItemDialog"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K6 [require]
      133 GETTABLEKS                       R18 R0 K10 ["Src"]
      135 GETTABLEKS                       R18 R18 K28 ["Util"]
      137 GETTABLEKS                       R18 R18 K29 ["AssetConfigUtil"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K6 [require]
      142 GETTABLEKS                       R19 R0 K10 ["Src"]
      144 GETTABLEKS                       R19 R19 K30 ["Flags"]
      146 GETTABLEKS                       R19 R19 K31 ["getFFlagConfirmUploadFoundationMigration"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K6 [require]
      151 GETTABLEKS                       R20 R0 K10 ["Src"]
      153 GETTABLEKS                       R20 R20 K30 ["Flags"]
      155 GETTABLEKS                       R20 R20 K32 ["getFFlagToolboxPublishOnApproval"]
      157 CALL                             R19 1 1
      158 GETIMPORT                        R20 K35 [utf8.char]
      160 LOADK                            R21 K36 [57346]
      161 CALL                             R20 1 1
      162 DUPCLOSURE                       R21 K37 [PROTO_0]
      163 DUPCLOSURE                       R22 K38 [PROTO_1]
      164 DUPCLOSURE                       R23 K39 [PROTO_2]
      165 DUPCLOSURE                       R24 K40 [PROTO_11]
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R11
      187 RETURN                           R24 1
