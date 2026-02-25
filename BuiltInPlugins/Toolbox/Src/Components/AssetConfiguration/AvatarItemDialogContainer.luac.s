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
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["OnUploadConfirmed"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["Disabled"]
        5 LOADK                            R2 K1 [""]
        6 SETTABLE                         R2 R0 R1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["AssetPrivacy"]
       10 GETUPVAL                         R2 1
       11 LOADK                            R4 K3 ["AssetConfig"]
       12 LOADK                            R5 K4 ["AvatarItemDialogAcceptPrivacy"]
       13 NAMECALL                         R2 R2 K5 ["getText"]
       15 CALL                             R2 3 1
       16 SETTABLE                         R2 R0 R1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K6 ["Error"]
       20 GETUPVAL                         R2 1
       21 LOADK                            R4 K3 ["AssetConfig"]
       22 LOADK                            R5 K7 ["AvatarItemDialogAcceptError"]
       23 NAMECALL                         R2 R2 K5 ["getText"]
       25 CALL                             R2 3 1
       26 SETTABLE                         R2 R0 R1
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K8 ["RobuxSpend"]
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
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R3 R4 K0 ["Disabled"]
       48 LOADK                            R4 K1 [""]
       49 SETTABLE                         R4 R2 R3
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R3 R4 K2 ["AssetPrivacy"]
       53 GETUPVAL                         R4 1
       54 LOADK                            R6 K3 ["AssetConfig"]
       55 LOADK                            R7 K12 ["AvatarItemDialogDescriptionPrivacy"]
       56 NAMECALL                         R4 R4 K5 ["getText"]
       58 CALL                             R4 3 1
       59 SETTABLE                         R4 R2 R3
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R3 R4 K6 ["Error"]
       63 GETUPVAL                         R4 1
       64 LOADK                            R6 K3 ["AssetConfig"]
       65 LOADK                            R7 K13 ["AvatarItemDialogDescriptionError"]
       66 NAMECALL                         R4 R4 K5 ["getText"]
       68 CALL                             R4 3 1
       69 SETTABLE                         R4 R2 R3
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R3 R4 K8 ["RobuxSpend"]
       73 GETUPVAL                         R4 1
       74 LOADK                            R6 K3 ["AssetConfig"]
       75 LOADK                            R7 K14 ["PayAndConfirmDescription"]
       76 DUPTABLE                         R8 K16 [{"amount"}]
       77 GETUPVAL                         R10 2
       78 GETUPVAL                         R12 3
       79 GETTABLEKS                       R11 R12 K17 ["UploadFee"]
       81 CONCAT                           R9 R10 R11
       82 SETTABLEKS                       R9 R8 K15 ["amount"]
       84 NAMECALL                         R4 R4 K5 ["getText"]
       86 CALL                             R4 4 1
       87 SETTABLE                         R4 R2 R3
       88 NEWTABLE                         R3 4 0
       90 GETUPVAL                         R5 0
       91 GETTABLEKS                       R4 R5 K0 ["Disabled"]
       93 LOADK                            R5 K1 [""]
       94 SETTABLE                         R5 R3 R4
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R4 R5 K2 ["AssetPrivacy"]
       98 GETUPVAL                         R5 1
       99 LOADK                            R7 K3 ["AssetConfig"]
      100 LOADK                            R8 K18 ["AvatarItemDialogHeadingPrivacy"]
      101 NAMECALL                         R5 R5 K5 ["getText"]
      103 CALL                             R5 3 1
      104 SETTABLE                         R5 R3 R4
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R4 R5 K6 ["Error"]
      108 GETUPVAL                         R5 1
      109 LOADK                            R7 K3 ["AssetConfig"]
      110 LOADK                            R8 K19 ["AvatarItemDialogHeadingError"]
      111 NAMECALL                         R5 R5 K5 ["getText"]
      113 CALL                             R5 3 1
      114 SETTABLE                         R5 R3 R4
      115 GETUPVAL                         R5 0
      116 GETTABLEKS                       R4 R5 K8 ["RobuxSpend"]
      118 GETUPVAL                         R5 1
      119 LOADK                            R7 K3 ["AssetConfig"]
      120 LOADK                            R8 K20 ["PayAndConfirmHeading"]
      121 DUPTABLE                         R9 K22 [{"name"}]
      122 GETUPVAL                         R11 3
      123 GETTABLEKS                       R10 R11 K23 ["ItemName"]
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
      139 GETUPVAL                         R7 0
      140 GETTABLEKS                       R6 R7 K0 ["Disabled"]
      142 DUPCLOSURE                       R7 K25 [PROTO_3]
      143 SETTABLE                         R7 R5 R6
      144 GETUPVAL                         R7 0
      145 GETTABLEKS                       R6 R7 K2 ["AssetPrivacy"]
      147 NEWCLOSURE                       R7 P1
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          UPVAL U5
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          UPVAL U8
      153 CAPTURE                          UPVAL U9
      154 CAPTURE                          UPVAL U10
      155 SETTABLE                         R7 R5 R6
      156 GETUPVAL                         R7 0
      157 GETTABLEKS                       R6 R7 K6 ["Error"]
      159 NEWCLOSURE                       R7 P2
      160 CAPTURE                          UPVAL U4
      161 CAPTURE                          UPVAL U11
      162 CAPTURE                          UPVAL U6
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          UPVAL U8
      165 CAPTURE                          UPVAL U9
      166 CAPTURE                          UPVAL U10
      167 SETTABLE                         R7 R5 R6
      168 GETUPVAL                         R7 0
      169 GETTABLEKS                       R6 R7 K8 ["RobuxSpend"]
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
      202 GETUPVAL                         R9 14
      203 GETUPVAL                         R11 0
      204 GETTABLEKS                       R10 R11 K0 ["Disabled"]
      206 JUMPIFNOTEQ                      R9 R10 ; [+2]
      208 LOADB                            R8 0 +1
      209 LOADB                            R8 1
      210 SETTABLEKS                       R8 R7 K33 ["DialogEnabled"]
      212 GETUPVAL                         R8 15
      213 SETTABLEKS                       R8 R7 K34 ["AcceptButtonEnabled"]
      215 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["Localization"]
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K1 ["use"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R3 R4 K2 ["networkInterface"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K1 ["use"]
       17 CALL                             R5 0 1
       18 GETTABLEKS                       R4 R5 K3 ["publishService"]
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R6 R7 K1 ["use"]
       23 CALL                             R6 0 1
       24 GETTABLEKS                       R5 R6 K4 ["pluginGuiService"]
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R7 R8 K1 ["use"]
       29 CALL                             R7 0 1
       30 GETTABLEKS                       R6 R7 K5 ["contentProvider"]
       32 GETUPVAL                         R7 6
       33 GETUPVAL                         R8 7
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 6
       36 GETUPVAL                         R9 8
       37 CALL                             R8 1 1
       38 GETUPVAL                         R9 6
       39 GETUPVAL                         R10 9
       40 CALL                             R9 1 1
       41 GETUPVAL                         R11 10
       42 GETTABLEKS                       R10 R11 K6 ["useMemo"]
       44 NEWCLOSURE                       R11 P0
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U12
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U13
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          UPVAL U14
       57 CAPTURE                          UPVAL U15
       58 CAPTURE                          UPVAL U16
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 NEWTABLE                         R12 0 2
       63 MOVE                             R13 R7
       64 MOVE                             R14 R8
       65 SETLIST                          R12 R13 2 [1]
       67 CALL                             R10 2 1
       68 GETUPVAL                         R12 10
       69 GETTABLEKS                       R11 R12 K7 ["createElement"]
       71 GETUPVAL                         R12 17
       72 MOVE                             R13 R10
       73 CALL                             R11 2 -1
       74 RETURN                           R11 -1

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
       23 GETTABLEKS                       R8 R0 K10 ["Src"]
       25 GETTABLEKS                       R7 R8 K9 ["ContextServices"]
       27 GETTABLEKS                       R6 R7 K11 ["NetworkContext"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R9 R0 K10 ["Src"]
       34 GETTABLEKS                       R8 R9 K9 ["ContextServices"]
       36 GETTABLEKS                       R7 R8 K12 ["PublishServiceContext"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R10 R0 K10 ["Src"]
       43 GETTABLEKS                       R9 R10 K9 ["ContextServices"]
       45 GETTABLEKS                       R8 R9 K13 ["PluginGuiServiceContext"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R11 R0 K10 ["Src"]
       52 GETTABLEKS                       R10 R11 K9 ["ContextServices"]
       54 GETTABLEKS                       R9 R10 K14 ["ContentProviderContext"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R12 R0 K10 ["Src"]
       61 GETTABLEKS                       R11 R12 K15 ["Hooks"]
       63 GETTABLEKS                       R10 R11 K16 ["useDispatch"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K6 [require]
       68 GETTABLEKS                       R13 R0 K10 ["Src"]
       70 GETTABLEKS                       R12 R13 K15 ["Hooks"]
       72 GETTABLEKS                       R11 R12 K17 ["useSelector"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R15 R0 K10 ["Src"]
       79 GETTABLEKS                       R14 R15 K18 ["Components"]
       81 GETTABLEKS                       R13 R14 K19 ["AssetConfiguration"]
       83 GETTABLEKS                       R12 R13 K20 ["AvatarItemDialog"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K6 [require]
       88 GETTABLEKS                       R15 R0 K10 ["Src"]
       90 GETTABLEKS                       R14 R15 K21 ["Thunks"]
       92 GETTABLEKS                       R13 R14 K22 ["CheckAvatarAssetPrivacy"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K6 [require]
       97 GETTABLEKS                       R16 R0 K10 ["Src"]
       99 GETTABLEKS                       R15 R16 K21 ["Thunks"]
      101 GETTABLEKS                       R14 R15 K23 ["MakeAvatarAssetsOpenUse"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K6 [require]
      106 GETTABLEKS                       R17 R0 K10 ["Src"]
      108 GETTABLEKS                       R16 R17 K24 ["Actions"]
      110 GETTABLEKS                       R15 R16 K25 ["AvatarItemDialogUploadConfirmed"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K6 [require]
      115 GETTABLEKS                       R18 R0 K10 ["Src"]
      117 GETTABLEKS                       R17 R18 K24 ["Actions"]
      119 GETTABLEKS                       R16 R17 K26 ["AvatarItemDialogCancelled"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K6 [require]
      124 GETTABLEKS                       R19 R0 K10 ["Src"]
      126 GETTABLEKS                       R18 R19 K27 ["Types"]
      128 GETTABLEKS                       R17 R18 K20 ["AvatarItemDialog"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K30 [utf8.char]
      133 LOADK                            R18 K31 [57346]
      134 CALL                             R17 1 1
      135 DUPCLOSURE                       R18 K32 [PROTO_0]
      136 DUPCLOSURE                       R19 K33 [PROTO_1]
      137 DUPCLOSURE                       R20 K34 [PROTO_2]
      138 DUPCLOSURE                       R21 K35 [PROTO_9]
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R11
      157 RETURN                           R21 1
