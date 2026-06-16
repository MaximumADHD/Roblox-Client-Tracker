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
       73 GETUPVAL                         R4 1
       74 LOADK                            R6 K3 ["AssetConfig"]
       75 LOADK                            R7 K14 ["PayAndConfirmDescription"]
       76 DUPTABLE                         R8 K16 [{"amount"}]
       77 GETUPVAL                         R10 2
       78 GETUPVAL                         R11 3
       79 GETTABLEKS                       R11 R11 K17 ["UploadFee"]
       81 CONCAT                           R9 R10 R11
       82 SETTABLEKS                       R9 R8 K15 ["amount"]
       84 NAMECALL                         R4 R4 K5 ["getText"]
       86 CALL                             R4 4 1
       87 SETTABLE                         R4 R2 R3
       88 NEWTABLE                         R3 4 0
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R4 R4 K0 ["Disabled"]
       93 LOADK                            R5 K1 [""]
       94 SETTABLE                         R5 R3 R4
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R4 R4 K2 ["AssetPrivacy"]
       98 GETUPVAL                         R5 1
       99 LOADK                            R7 K3 ["AssetConfig"]
      100 LOADK                            R8 K18 ["AvatarItemDialogHeadingPrivacy"]
      101 NAMECALL                         R5 R5 K5 ["getText"]
      103 CALL                             R5 3 1
      104 SETTABLE                         R5 R3 R4
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K6 ["Error"]
      108 GETUPVAL                         R5 1
      109 LOADK                            R7 K3 ["AssetConfig"]
      110 LOADK                            R8 K19 ["AvatarItemDialogHeadingError"]
      111 NAMECALL                         R5 R5 K5 ["getText"]
      113 CALL                             R5 3 1
      114 SETTABLE                         R5 R3 R4
      115 GETUPVAL                         R4 0
      116 GETTABLEKS                       R4 R4 K8 ["RobuxSpend"]
      118 GETUPVAL                         R5 1
      119 LOADK                            R7 K3 ["AssetConfig"]
      120 LOADK                            R8 K20 ["PayAndConfirmHeading"]
      121 DUPTABLE                         R9 K22 [{"name"}]
      122 GETUPVAL                         R10 3
      123 GETTABLEKS                       R10 R10 K23 ["ItemName"]
      125 SETTABLEKS                       R10 R9 K21 ["name"]
      127 NAMECALL                         R5 R5 K5 ["getText"]
      129 CALL                             R5 4 1
      130 SETTABLE                         R5 R3 R4
      131 GETUPVAL                         R4 1
      132 LOADK                            R6 K9 ["General"]
      133 LOADK                            R7 K24 ["RobloxStudio"]
      134 NAMECALL                         R4 R4 K5 ["getText"]
      136 CALL                             R4 3 1
      137 NEWTABLE                         R5 4 0
      139 GETUPVAL                         R6 0
      140 GETTABLEKS                       R6 R6 K0 ["Disabled"]
      142 DUPCLOSURE                       R7 K25 [PROTO_3]
      143 SETTABLE                         R7 R5 R6
      144 GETUPVAL                         R6 0
      145 GETTABLEKS                       R6 R6 K2 ["AssetPrivacy"]
      147 NEWCLOSURE                       R7 P1
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          UPVAL U5
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          UPVAL U8
      153 CAPTURE                          UPVAL U9
      154 CAPTURE                          UPVAL U10
      155 SETTABLE                         R7 R5 R6
      156 GETUPVAL                         R6 0
      157 GETTABLEKS                       R6 R6 K6 ["Error"]
      159 NEWCLOSURE                       R7 P2
      160 CAPTURE                          UPVAL U4
      161 CAPTURE                          UPVAL U11
      162 CAPTURE                          UPVAL U6
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          UPVAL U8
      165 CAPTURE                          UPVAL U9
      166 CAPTURE                          UPVAL U10
      167 SETTABLE                         R7 R5 R6
      168 GETUPVAL                         R6 0
      169 GETTABLEKS                       R6 R6 K8 ["RobuxSpend"]
      171 NEWCLOSURE                       R7 P3
      172 CAPTURE                          UPVAL U4
      173 CAPTURE                          UPVAL U12
      174 CAPTURE                          UPVAL U3
      175 SETTABLE                         R7 R5 R6
      176 NEWCLOSURE                       R6 P4
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          UPVAL U13
      179 DUPTABLE                         R7 K35 [{"AcceptText", "CancelText", "DescriptionText", "HeadingText", "TitleText", "OnAccepted", "OnCanceled", "DialogEnabled", "AcceptButtonEnabled"}]
      180 GETUPVAL                         R9 14
      181 GETTABLE                         R8 R0 R9
      182 SETTABLEKS                       R8 R7 K26 ["AcceptText"]
      184 SETTABLEKS                       R1 R7 K27 ["CancelText"]
      186 GETUPVAL                         R9 14
      187 GETTABLE                         R8 R2 R9
      188 SETTABLEKS                       R8 R7 K28 ["DescriptionText"]
      190 GETUPVAL                         R9 14
      191 GETTABLE                         R8 R3 R9
      192 SETTABLEKS                       R8 R7 K29 ["HeadingText"]
      194 SETTABLEKS                       R4 R7 K30 ["TitleText"]
      196 GETUPVAL                         R9 14
      197 GETTABLE                         R8 R5 R9
      198 SETTABLEKS                       R8 R7 K31 ["OnAccepted"]
      200 SETTABLEKS                       R6 R7 K32 ["OnCanceled"]
      202 GETUPVAL                         R9 15
      203 CALL                             R9 0 1
      204 JUMPIFNOT                        R9 ; [+9]
      205 LOADB                            R8 0
      206 GETUPVAL                         R9 14
      207 GETUPVAL                         R10 0
      208 GETTABLEKS                       R10 R10 K0 ["Disabled"]
      210 JUMPIFEQ                         R9 R10 ; [+11]
      212 GETUPVAL                         R8 16
      213 JUMP                             ; [+8]
      214 GETUPVAL                         R9 14
      215 GETUPVAL                         R10 0
      216 GETTABLEKS                       R10 R10 K0 ["Disabled"]
      218 JUMPIFNOTEQ                      R9 R10 ; [+2]
      220 LOADB                            R8 0 +1
      221 LOADB                            R8 1
      222 SETTABLEKS                       R8 R7 K33 ["DialogEnabled"]
      224 GETUPVAL                         R8 16
      225 SETTABLEKS                       R8 R7 K34 ["AcceptButtonEnabled"]
      227 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K4 [{"PluginId", "ItemId"}]
        6 LOADK                            R4 K5 ["Toolbox"]
        7 SETTABLEKS                       R4 R3 K2 ["PluginId"]
        9 LOADK                            R4 K6 ["AvatarItemDialog"]
       10 SETTABLEKS                       R4 R3 K3 ["ItemId"]
       12 DUPTABLE                         R4 K12 [{"Type", "Title", "Description", "PrimaryButton", "SecondaryButton"}]
       13 LOADK                            R5 K13 ["Default"]
       14 SETTABLEKS                       R5 R4 K7 ["Type"]
       16 GETUPVAL                         R5 1
       17 LOADK                            R7 K14 ["AssetConfig"]
       18 LOADK                            R8 K15 ["PayAndConfirmHeading"]
       19 DUPTABLE                         R9 K17 [{"name"}]
       20 GETUPVAL                         R10 2
       21 GETTABLEKS                       R10 R10 K18 ["ItemName"]
       23 SETTABLEKS                       R10 R9 K16 ["name"]
       25 NAMECALL                         R5 R5 K19 ["getText"]
       27 CALL                             R5 4 1
       28 SETTABLEKS                       R5 R4 K8 ["Title"]
       30 GETUPVAL                         R5 1
       31 LOADK                            R7 K14 ["AssetConfig"]
       32 LOADK                            R8 K20 ["PayAndConfirmDescription"]
       33 DUPTABLE                         R9 K22 [{"amount"}]
       34 GETUPVAL                         R11 3
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K23 ["UploadFee"]
       38 CONCAT                           R10 R11 R12
       39 SETTABLEKS                       R10 R9 K21 ["amount"]
       41 NAMECALL                         R5 R5 K19 ["getText"]
       43 CALL                             R5 4 1
       44 SETTABLEKS                       R5 R4 K9 ["Description"]
       46 DUPTABLE                         R5 K26 [{"Uri", "Text"}]
       47 DUPTABLE                         R6 K4 [{"PluginId", "ItemId"}]
       48 LOADK                            R7 K5 ["Toolbox"]
       49 SETTABLEKS                       R7 R6 K2 ["PluginId"]
       51 LOADK                            R7 K27 ["AvatarItemDialog/Accept"]
       52 SETTABLEKS                       R7 R6 K3 ["ItemId"]
       54 SETTABLEKS                       R6 R5 K24 ["Uri"]
       56 GETUPVAL                         R6 1
       57 LOADK                            R8 K28 ["General"]
       58 LOADK                            R9 K29 ["PayAndSubmit"]
       59 NAMECALL                         R6 R6 K19 ["getText"]
       61 CALL                             R6 3 1
       62 SETTABLEKS                       R6 R5 K25 ["Text"]
       64 SETTABLEKS                       R5 R4 K10 ["PrimaryButton"]
       66 DUPTABLE                         R5 K26 [{"Uri", "Text"}]
       67 DUPTABLE                         R6 K4 [{"PluginId", "ItemId"}]
       68 LOADK                            R7 K5 ["Toolbox"]
       69 SETTABLEKS                       R7 R6 K2 ["PluginId"]
       71 LOADK                            R7 K30 ["AvatarItemDialog/Cancel"]
       72 SETTABLEKS                       R7 R6 K3 ["ItemId"]
       74 SETTABLEKS                       R6 R5 K24 ["Uri"]
       76 GETUPVAL                         R6 1
       77 LOADK                            R8 K28 ["General"]
       78 LOADK                            R9 K31 ["Cancel"]
       79 NAMECALL                         R6 R6 K19 ["getText"]
       81 CALL                             R6 3 1
       82 SETTABLEKS                       R6 R5 K25 ["Text"]
       84 SETTABLEKS                       R5 R4 K11 ["SecondaryButton"]
       86 NAMECALL                         R1 R0 K32 ["ShowDialogAsync"]
       88 CALL                             R1 3 1
       89 GETUPVAL                         R2 4
       90 LOADB                            R3 0
       91 SETTABLEKS                       R3 R2 K33 ["current"]
       93 JUMPIFNOT                        R1 ; [+18]
       94 GETTABLEKS                       R2 R1 K34 ["SelectedButtonUri"]
       96 JUMPIFNOT                        R2 ; [+15]
       97 GETTABLEKS                       R2 R1 K34 ["SelectedButtonUri"]
       99 GETTABLEKS                       R2 R2 K3 ["ItemId"]
      101 JUMPIFNOTEQKS                    R2 K27 ["AvatarItemDialog/Accept"] ; [+10]
      103 GETUPVAL                         R2 5
      104 GETUPVAL                         R3 6
      105 CALL                             R3 0 -1
      106 CALL                             R2 -1 0
      107 GETUPVAL                         R2 2
      108 GETTABLEKS                       R2 R2 K35 ["OnUploadConfirmed"]
      110 CALL                             R2 0 0
      111 RETURN                           R0 0
      112 GETUPVAL                         R2 5
      113 GETUPVAL                         R3 7
      114 CALL                             R3 0 -1
      115 CALL                             R2 -1 0
      116 RETURN                           R0 0

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
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

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
       50 GETUPVAL                         R11 10
       51 GETTABLEKS                       R11 R11 K8 ["useMemo"]
       53 NEWCLOSURE                       R12 P0
       54 CAPTURE                          UPVAL U11
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U12
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U13
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          UPVAL U14
       66 CAPTURE                          UPVAL U15
       67 CAPTURE                          UPVAL U16
       68 CAPTURE                          VAL R8
       69 CAPTURE                          UPVAL U17
       70 CAPTURE                          VAL R9
       71 NEWTABLE                         R13 0 2
       73 MOVE                             R14 R8
       74 MOVE                             R15 R9
       75 SETLIST                          R13 R14 2 [1]
       77 CALL                             R11 2 1
       78 GETUPVAL                         R12 10
       79 GETTABLEKS                       R12 R12 K9 ["useRef"]
       81 LOADB                            R13 0
       82 CALL                             R12 1 1
       83 GETUPVAL                         R13 10
       84 GETTABLEKS                       R13 R13 K10 ["useEffect"]
       86 NEWCLOSURE                       R14 P1
       87 CAPTURE                          UPVAL U17
       88 CAPTURE                          VAL R8
       89 CAPTURE                          UPVAL U11
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U12
       95 CAPTURE                          VAL R1
       96 CAPTURE                          UPVAL U15
       97 CAPTURE                          UPVAL U16
       98 NEWTABLE                         R15 0 1
      100 MOVE                             R16 R8
      101 SETLIST                          R15 R16 1 [1]
      103 CALL                             R13 2 0
      104 GETUPVAL                         R13 17
      105 CALL                             R13 0 1
      106 JUMPIFNOT                        R13 ; [+7]
      107 GETUPVAL                         R13 11
      108 GETTABLEKS                       R13 R13 K11 ["RobuxSpend"]
      110 JUMPIFNOTEQ                      R8 R13 ; [+3]
      112 LOADNIL                          R13
      113 RETURN                           R13 1
      114 GETUPVAL                         R13 10
      115 GETTABLEKS                       R13 R13 K12 ["createElement"]
      117 GETUPVAL                         R14 18
      118 MOVE                             R15 R11
      119 CALL                             R13 2 -1
      120 RETURN                           R13 -1

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
      135 GETTABLEKS                       R18 R18 K28 ["Flags"]
      137 GETTABLEKS                       R18 R18 K29 ["getFFlagConfirmUploadFoundationMigration"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K32 [utf8.char]
      142 LOADK                            R19 K33 [57346]
      143 CALL                             R18 1 1
      144 DUPCLOSURE                       R19 K34 [PROTO_0]
      145 DUPCLOSURE                       R20 K35 [PROTO_1]
      146 DUPCLOSURE                       R21 K36 [PROTO_2]
      147 DUPCLOSURE                       R22 K37 [PROTO_11]
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R17
      166 CAPTURE                          VAL R11
      167 RETURN                           R22 1
