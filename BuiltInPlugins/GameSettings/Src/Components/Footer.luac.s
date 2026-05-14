PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClose"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Localization"]
        4 GETTABLEKS                       R4 R2 K2 ["Dialog"]
        6 GETTABLEKS                       R5 R0 K0 ["props"]
        8 GETTABLEKS                       R5 R5 K3 ["SaveAllSettings"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 CALL                             R5 3 1
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R5 R5 K4 ["andThen"]
       19 CALL                             R5 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CurrentOptInLocations"]
        5 GETTABLEKS                       R2 R0 K2 ["ChangedOptInLocations"]
        7 JUMPIF                           R1 ; [+7]
        8 NOT                              R4 R2
        9 FASTCALL1                        ASSERT R4 ; [+2]
       10 GETIMPORT                        R3 K4 [assert]
       12 CALL                             R3 1 0
       13 LOADB                            R3 0
       14 RETURN                           R3 1
       15 GETUPVAL                         R5 1
       16 GETTABLE                         R4 R1 R5
       17 GETUPVAL                         R5 2
       18 GETTABLE                         R3 R4 R5
       19 JUMPIF                           R3 ; [+13]
       20 JUMPIFNOT                        R2 ; [+12]
       21 GETUPVAL                         R6 1
       22 GETTABLE                         R5 R2 R6
       23 GETUPVAL                         R6 2
       24 GETTABLE                         R4 R5 R6
       25 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       27 LOADK                            R5 K5 ["China should be selected in Changed"]
       28 GETIMPORT                        R3 K4 [assert]
       30 CALL                             R3 2 0
       31 LOADB                            R3 1
       32 RETURN                           R3 1
       33 LOADB                            R3 0
       34 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["shouldShowEmailDialog"]
        6 DUPTABLE                         R1 K4 [{"showEmailDialog", "userPressedSave", "bottomText"}]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K1 ["showEmailDialog"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K2 ["userPressedSave"]
       13 LOADK                            R2 K5 [""]
       14 SETTABLEKS                       R2 R1 K3 ["bottomText"]
       16 SETTABLEKS                       R1 R0 K6 ["state"]
       18 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 136
        3 LOADN                            R5 136
        4 CALL                             R3 2 1
        5 GETIMPORT                        R4 K4 [game]
        7 LOADK                            R6 K5 ["TextService"]
        8 NAMECALL                         R4 R4 K6 ["GetService"]
       10 CALL                             R4 2 1
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 MOVE                             R9 R3
       15 NAMECALL                         R4 R4 K7 ["GetTextSize"]
       17 CALL                             R4 5 -1
       18 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["{}"]
        3 LOADK                            R6 K1 ["%*"]
        4 GETUPVAL                         R8 2
        5 NAMECALL                         R6 R6 K2 ["format"]
        7 CALL                             R6 2 1
        8 MOVE                             R5 R6
        9 NAMECALL                         R2 R2 K3 ["gsub"]
       11 CALL                             R2 3 -1
       12 NAMECALL                         R0 R0 K4 ["OpenBrowserWindow"]
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+19]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["shouldShowEmailDialog"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+11]
        9 GETUPVAL                         R1 1
       10 DUPTABLE                         R3 K3 [{"showEmailDialog", "userPressedSave"}]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K1 ["showEmailDialog"]
       14 SETTABLEKS                       R0 R3 K2 ["userPressedSave"]
       16 NAMECALL                         R1 R1 K4 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0
       20 JUMPIFNOT                        R0 ; [+57]
       21 GETUPVAL                         R1 0
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+54]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K5 ["props"]
       27 GETTABLEKS                       R1 R1 K6 ["CurrentOptInLocations"]
       29 JUMPIFNOT                        R1 ; [+48]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K5 ["props"]
       33 GETTABLEKS                       R3 R3 K6 ["CurrentOptInLocations"]
       35 GETUPVAL                         R4 2
       36 GETTABLE                         R2 R3 R4
       37 GETUPVAL                         R3 3
       38 GETTABLE                         R1 R2 R3
       39 JUMPIFNOT                        R1 ; [+38]
       40 NEWTABLE                         R1 1 0
       42 GETUPVAL                         R2 4
       43 GETUPVAL                         R3 2
       44 SETTABLE                         R3 R1 R2
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R2 R2 K5 ["props"]
       48 GETTABLEKS                       R2 R2 K7 ["ChangedOptInLocations"]
       50 JUMPIF                           R2 ; [+4]
       51 LOADB                            R2 1
       52 SETTABLEKS                       R2 R1 K8 ["selected"]
       54 JUMP                             ; [+17]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K5 ["props"]
       58 GETTABLEKS                       R6 R6 K7 ["ChangedOptInLocations"]
       60 GETUPVAL                         R7 2
       61 GETTABLE                         R5 R6 R7
       62 GETUPVAL                         R6 3
       63 GETTABLE                         R4 R5 R6
       64 NOT                              R3 R4
       65 FASTCALL1                        ASSERT R3 ; [+2]
       66 GETIMPORT                        R2 K10 [assert]
       68 CALL                             R2 1 0
       69 LOADB                            R2 0
       70 SETTABLEKS                       R2 R1 K8 ["selected"]
       72 GETUPVAL                         R2 5
       73 GETUPVAL                         R3 6
       74 GETUPVAL                         R4 7
       75 GETUPVAL                         R5 8
       76 MOVE                             R6 R1
       77 CALL                             R2 4 0
       78 GETUPVAL                         R1 1
       79 MOVE                             R3 R0
       80 NAMECALL                         R1 R1 K11 ["saveAllSettings"]
       82 CALL                             R1 2 0
       83 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{"showEmailDialog", "userPressedSave", "bottomText"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showEmailDialog"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["userPressedSave"]
        8 LOADK                            R3 K4 [""]
        9 SETTABLEKS                       R3 R2 K2 ["bottomText"]
       11 NAMECALL                         R0 R0 K5 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_8:
        0 JUMPIFEQKS                       R0 K0 ["Submit"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 JUMPIFNOT                        R3 ; [+72]
        5 JUMPIFNOTEQ                      R1 R2 ; [+57]
        7 NEWTABLE                         R4 2 0
        9 GETUPVAL                         R5 0
       10 GETUPVAL                         R6 1
       11 SETTABLE                         R6 R4 R5
       12 GETUPVAL                         R5 2
       13 LOADB                            R6 1
       14 SETTABLE                         R6 R4 R5
       15 GETUPVAL                         R5 3
       16 GETUPVAL                         R6 4
       17 GETUPVAL                         R7 5
       18 GETUPVAL                         R8 6
       19 MOVE                             R9 R4
       20 CALL                             R5 4 0
       21 GETUPVAL                         R5 7
       22 MOVE                             R6 R1
       23 CALL                             R5 1 1
       24 JUMPIF                           R5 ; [+24]
       25 GETUPVAL                         R6 8
       26 GETUPVAL                         R8 8
       27 GETTABLEKS                       R8 R8 K1 ["state"]
       29 GETTABLEKS                       R8 R8 K2 ["userPressedSave"]
       31 NAMECALL                         R6 R6 K3 ["saveAllSettings"]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 8
       35 DUPTABLE                         R8 K6 [{"showEmailDialog", "userPressedSave", "bottomText"}]
       36 LOADB                            R9 0
       37 SETTABLEKS                       R9 R8 K4 ["showEmailDialog"]
       39 LOADB                            R9 0
       40 SETTABLEKS                       R9 R8 K2 ["userPressedSave"]
       42 LOADK                            R9 K7 [""]
       43 SETTABLEKS                       R9 R8 K5 ["bottomText"]
       45 NAMECALL                         R6 R6 K8 ["setState"]
       47 CALL                             R6 2 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R9 9
       50 GETUPVAL                         R11 0
       51 LOADK                            R12 K9 ["EmailSubmitFailure"]
       52 NAMECALL                         R9 R9 K10 ["getText"]
       54 CALL                             R9 3 1
       55 MOVE                             R7 R9
       56 MOVE                             R8 R5
       57 CONCAT                           R6 R7 R8
       58 GETIMPORT                        R7 K12 [warn]
       60 MOVE                             R8 R6
       61 CALL                             R7 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 8
       64 DUPTABLE                         R6 K13 [{"bottomText"}]
       65 GETUPVAL                         R7 9
       66 GETUPVAL                         R9 0
       67 LOADK                            R10 K14 ["ErrorEmailNotEqual"]
       68 NAMECALL                         R7 R7 K10 ["getText"]
       70 CALL                             R7 3 1
       71 SETTABLEKS                       R7 R6 K5 ["bottomText"]
       73 NAMECALL                         R4 R4 K8 ["setState"]
       75 CALL                             R4 2 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R4 8
       78 DUPTABLE                         R6 K6 [{"showEmailDialog", "userPressedSave", "bottomText"}]
       79 LOADB                            R7 0
       80 SETTABLEKS                       R7 R6 K4 ["showEmailDialog"]
       82 LOADB                            R7 0
       83 SETTABLEKS                       R7 R6 K2 ["userPressedSave"]
       85 LOADK                            R7 K7 [""]
       86 SETTABLEKS                       R7 R6 K5 ["bottomText"]
       88 NAMECALL                         R4 R4 K8 ["setState"]
       90 CALL                             R4 2 0
       91 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["SaveActive"]
        8 GETTABLEKS                       R5 R1 K4 ["CancelActive"]
       10 GETTABLEKS                       R6 R1 K5 ["PostContactEmail"]
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 GETUPVAL                         R10 0
       16 JUMPIFNOT                        R10 ; [+33]
       17 DUPCLOSURE                       R10 K6 [PROTO_4]
       18 LOADK                            R13 K7 ["General"]
       19 LOADK                            R14 K8 ["CreatorHubManageLink"]
       20 NAMECALL                         R11 R3 K9 ["getText"]
       22 CALL                             R11 3 1
       23 MOVE                             R7 R11
       24 GETIMPORT                        R11 K11 [game]
       26 GETTABLEKS                       R8 R11 K12 ["GameId"]
       28 MOVE                             R11 R7
       29 GETIMPORT                        R12 K16 [Enum.Font.SourceSans]
       31 GETIMPORT                        R13 K19 [Vector2.new]
       33 LOADN                            R14 136
       34 LOADN                            R15 136
       35 CALL                             R13 2 1
       36 GETIMPORT                        R14 K11 [game]
       38 LOADK                            R16 K20 ["TextService"]
       39 NAMECALL                         R14 R14 K21 ["GetService"]
       41 CALL                             R14 2 1
       42 MOVE                             R16 R11
       43 LOADN                            R17 22
       44 MOVE                             R18 R12
       45 MOVE                             R19 R13
       46 NAMECALL                         R14 R14 K22 ["GetTextSize"]
       48 CALL                             R14 5 1
       49 MOVE                             R9 R14
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R10 R10 K23 ["createElement"]
       53 LOADK                            R11 K24 ["Frame"]
       54 DUPTABLE                         R12 K29 [{"BackgroundColor3", "BorderSizePixel", "Size", "ZIndex"}]
       55 GETTABLEKS                       R13 R2 K30 ["backgroundColor"]
       57 SETTABLEKS                       R13 R12 K25 ["BackgroundColor3"]
       59 LOADN                            R13 0
       60 SETTABLEKS                       R13 R12 K26 ["BorderSizePixel"]
       62 GETIMPORT                        R13 K33 [UDim2.fromScale]
       64 LOADN                            R14 1
       65 LOADN                            R15 1
       66 CALL                             R13 2 1
       67 SETTABLEKS                       R13 R12 K27 ["Size"]
       69 LOADN                            R13 2
       70 SETTABLEKS                       R13 R12 K28 ["ZIndex"]
       72 DUPTABLE                         R13 K37 [{"Gradient", "CreatorDocsLink", "SaveSettings"}]
       73 GETUPVAL                         R14 1
       74 GETTABLEKS                       R14 R14 K23 ["createElement"]
       76 LOADK                            R15 K38 ["ImageLabel"]
       77 DUPTABLE                         R16 K45 [{"Size", "AnchorPoint", "Image", "ImageRectSize", "BorderSizePixel", "BackgroundTransparency", "ImageColor3", "ImageTransparency", "ZIndex"}]
       78 GETIMPORT                        R17 K46 [UDim2.new]
       80 LOADN                            R18 1
       81 LOADN                            R19 0
       82 LOADN                            R20 0
       83 LOADN                            R21 3
       84 CALL                             R17 4 1
       85 SETTABLEKS                       R17 R16 K27 ["Size"]
       87 GETIMPORT                        R17 K19 [Vector2.new]
       89 LOADN                            R18 0
       90 LOADN                            R19 1
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K39 ["AnchorPoint"]
       94 GETUPVAL                         R17 2
       95 GETTABLEKS                       R17 R17 K47 ["GRADIENT_IMAGE"]
       97 SETTABLEKS                       R17 R16 K40 ["Image"]
       99 GETUPVAL                         R17 2
      100 GETTABLEKS                       R17 R17 K48 ["GRADIENT_RECT_SIZE"]
      102 SETTABLEKS                       R17 R16 K41 ["ImageRectSize"]
      104 LOADN                            R17 0
      105 SETTABLEKS                       R17 R16 K26 ["BorderSizePixel"]
      107 LOADN                            R17 1
      108 SETTABLEKS                       R17 R16 K42 ["BackgroundTransparency"]
      110 GETTABLEKS                       R17 R2 K49 ["footer"]
      112 GETTABLEKS                       R17 R17 K50 ["gradient"]
      114 SETTABLEKS                       R17 R16 K43 ["ImageColor3"]
      116 LOADK                            R17 K51 [0.9]
      117 SETTABLEKS                       R17 R16 K44 ["ImageTransparency"]
      119 LOADN                            R17 1
      120 SETTABLEKS                       R17 R16 K28 ["ZIndex"]
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K34 ["Gradient"]
      125 GETUPVAL                         R15 0
      126 JUMPIFNOT                        R15 ; [+71]
      127 GETUPVAL                         R14 1
      128 GETTABLEKS                       R14 R14 K23 ["createElement"]
      130 LOADK                            R15 K24 ["Frame"]
      131 DUPTABLE                         R16 K54 [{"AutomaticSize", "AnchorPoint", "Position", "BackgroundTransparency", "BorderSizePixel"}]
      132 GETIMPORT                        R17 K56 [Enum.AutomaticSize.XY]
      134 SETTABLEKS                       R17 R16 K52 ["AutomaticSize"]
      136 GETIMPORT                        R17 K19 [Vector2.new]
      138 LOADN                            R18 0
      139 LOADK                            R19 K57 [0.5]
      140 CALL                             R17 2 1
      141 SETTABLEKS                       R17 R16 K39 ["AnchorPoint"]
      143 GETIMPORT                        R17 K46 [UDim2.new]
      145 LOADN                            R18 0
      146 LOADN                            R19 16
      147 LOADK                            R20 K57 [0.5]
      148 LOADN                            R21 0
      149 CALL                             R17 4 1
      150 SETTABLEKS                       R17 R16 K53 ["Position"]
      152 LOADN                            R17 1
      153 SETTABLEKS                       R17 R16 K42 ["BackgroundTransparency"]
      155 LOADN                            R17 0
      156 SETTABLEKS                       R17 R16 K26 ["BorderSizePixel"]
      158 DUPTABLE                         R17 K59 [{"Hyperlink"}]
      159 GETUPVAL                         R18 1
      160 GETTABLEKS                       R18 R18 K23 ["createElement"]
      162 GETUPVAL                         R19 3
      163 DUPTABLE                         R20 K65 [{"Text", "TextSize", "Size", "Enabled", "Mouse", "OnClick"}]
      164 SETTABLEKS                       R7 R20 K60 ["Text"]
      166 LOADN                            R21 20
      167 SETTABLEKS                       R21 R20 K61 ["TextSize"]
      169 GETIMPORT                        R21 K46 [UDim2.new]
      171 LOADN                            R22 0
      172 GETTABLEKS                       R23 R9 K66 ["X"]
      174 LOADN                            R24 0
      175 GETTABLEKS                       R25 R9 K67 ["Y"]
      177 CALL                             R21 4 1
      178 SETTABLEKS                       R21 R20 K27 ["Size"]
      180 LOADB                            R21 1
      181 SETTABLEKS                       R21 R20 K62 ["Enabled"]
      183 GETTABLEKS                       R21 R1 K63 ["Mouse"]
      185 SETTABLEKS                       R21 R20 K63 ["Mouse"]
      187 NEWCLOSURE                       R21 P1
      188 CAPTURE                          UPVAL U4
      189 CAPTURE                          UPVAL U5
      190 CAPTURE                          REF R8
      191 SETTABLEKS                       R21 R20 K64 ["OnClick"]
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K58 ["Hyperlink"]
      196 CALL                             R14 3 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R14
      199 SETTABLEKS                       R14 R13 K35 ["CreatorDocsLink"]
      201 GETUPVAL                         R14 1
      202 GETTABLEKS                       R14 R14 K23 ["createElement"]
      204 GETUPVAL                         R15 6
      205 DUPTABLE                         R16 K71 [{"ZIndex", "Buttons", "HorizontalAlignment", "ButtonClicked"}]
      206 LOADN                            R17 2
      207 SETTABLEKS                       R17 R16 K28 ["ZIndex"]
      209 NEWTABLE                         R17 0 2
      211 DUPTABLE                         R18 K75 [{"Name", "Active", "Value"}]
      212 LOADK                            R21 K7 ["General"]
      213 LOADK                            R22 K76 ["ButtonCancel"]
      214 NAMECALL                         R19 R3 K9 ["getText"]
      216 CALL                             R19 3 1
      217 SETTABLEKS                       R19 R18 K72 ["Name"]
      219 SETTABLEKS                       R5 R18 K73 ["Active"]
      221 LOADB                            R19 0
      222 SETTABLEKS                       R19 R18 K74 ["Value"]
      224 DUPTABLE                         R19 K78 [{"Name", "Default", "Active", "Value"}]
      225 LOADK                            R22 K7 ["General"]
      226 LOADK                            R23 K79 ["ButtonSave"]
      227 NAMECALL                         R20 R3 K9 ["getText"]
      229 CALL                             R20 3 1
      230 SETTABLEKS                       R20 R19 K72 ["Name"]
      232 LOADB                            R20 1
      233 SETTABLEKS                       R20 R19 K77 ["Default"]
      235 SETTABLEKS                       R4 R19 K73 ["Active"]
      237 LOADB                            R20 1
      238 SETTABLEKS                       R20 R19 K74 ["Value"]
      240 SETLIST                          R17 R18 2 [1]
      242 SETTABLEKS                       R17 R16 K68 ["Buttons"]
      244 GETIMPORT                        R17 K81 [Enum.HorizontalAlignment.Right]
      246 SETTABLEKS                       R17 R16 K69 ["HorizontalAlignment"]
      248 NEWCLOSURE                       R17 P2
      249 CAPTURE                          UPVAL U7
      250 CAPTURE                          VAL R0
      251 CAPTURE                          UPVAL U8
      252 CAPTURE                          UPVAL U9
      253 CAPTURE                          UPVAL U10
      254 CAPTURE                          UPVAL U11
      255 CAPTURE                          UPVAL U12
      256 CAPTURE                          UPVAL U13
      257 CAPTURE                          UPVAL U14
      258 SETTABLEKS                       R17 R16 K70 ["ButtonClicked"]
      260 DUPTABLE                         R17 K83 [{"EmailDialog"}]
      261 GETUPVAL                         R18 1
      262 GETTABLEKS                       R18 R18 K23 ["createElement"]
      264 GETUPVAL                         R19 15
      265 DUPTABLE                         R20 K91 [{"Enabled", "Size", "Title", "Header", "Buttons", "Body", "Description", "TextInput", "OnClose", "OnButtonPressed"}]
      266 GETTABLEKS                       R21 R0 K92 ["state"]
      268 GETTABLEKS                       R21 R21 K93 ["showEmailDialog"]
      270 SETTABLEKS                       R21 R20 K62 ["Enabled"]
      272 GETIMPORT                        R21 K19 [Vector2.new]
      274 GETTABLEKS                       R22 R2 K94 ["emailDialog"]
      276 GETTABLEKS                       R22 R22 K27 ["Size"]
      278 GETTABLEKS                       R22 R22 K66 ["X"]
      280 GETTABLEKS                       R23 R2 K94 ["emailDialog"]
      282 GETTABLEKS                       R23 R23 K27 ["Size"]
      284 GETTABLEKS                       R23 R23 K67 ["Y"]
      286 CALL                             R21 2 1
      287 SETTABLEKS                       R21 R20 K27 ["Size"]
      289 GETUPVAL                         R23 10
      290 LOADK                            R24 K95 ["EmailDialogHeader"]
      291 NAMECALL                         R21 R3 K9 ["getText"]
      293 CALL                             R21 3 1
      294 SETTABLEKS                       R21 R20 K84 ["Title"]
      296 GETUPVAL                         R23 10
      297 LOADK                            R24 K95 ["EmailDialogHeader"]
      298 NAMECALL                         R21 R3 K9 ["getText"]
      300 CALL                             R21 3 1
      301 SETTABLEKS                       R21 R20 K85 ["Header"]
      303 NEWTABLE                         R21 0 2
      305 DUPTABLE                         R22 K97 [{"Key", "Text"}]
      306 LOADK                            R23 K98 ["Submit"]
      307 SETTABLEKS                       R23 R22 K96 ["Key"]
      309 LOADK                            R25 K7 ["General"]
      310 LOADK                            R26 K99 ["ButtonSubmit"]
      311 NAMECALL                         R23 R3 K9 ["getText"]
      313 CALL                             R23 3 1
      314 SETTABLEKS                       R23 R22 K60 ["Text"]
      316 DUPTABLE                         R23 K97 [{"Key", "Text"}]
      317 LOADK                            R24 K100 ["Cancel"]
      318 SETTABLEKS                       R24 R23 K96 ["Key"]
      320 LOADK                            R26 K7 ["General"]
      321 LOADK                            R27 K76 ["ButtonCancel"]
      322 NAMECALL                         R24 R3 K9 ["getText"]
      324 CALL                             R24 3 1
      325 SETTABLEKS                       R24 R23 K60 ["Text"]
      327 SETLIST                          R21 R22 2 [1]
      329 SETTABLEKS                       R21 R20 K68 ["Buttons"]
      331 GETUPVAL                         R23 10
      332 LOADK                            R24 K101 ["EmailDialogBody"]
      333 NAMECALL                         R21 R3 K9 ["getText"]
      335 CALL                             R21 3 1
      336 SETTABLEKS                       R21 R20 K86 ["Body"]
      338 GETUPVAL                         R23 10
      339 LOADK                            R24 K102 ["EmailDialogDescription"]
      340 NAMECALL                         R21 R3 K9 ["getText"]
      342 CALL                             R21 3 1
      343 SETTABLEKS                       R21 R20 K87 ["Description"]
      345 NEWTABLE                         R21 0 2
      347 DUPTABLE                         R22 K104 [{"PlaceholderText"}]
      348 GETUPVAL                         R25 10
      349 LOADK                            R26 K105 ["EmailAddress"]
      350 NAMECALL                         R23 R3 K9 ["getText"]
      352 CALL                             R23 3 1
      353 SETTABLEKS                       R23 R22 K103 ["PlaceholderText"]
      355 DUPTABLE                         R23 K107 [{"PlaceholderText", "BottomText"}]
      356 GETUPVAL                         R26 10
      357 LOADK                            R27 K108 ["ConfirmEmailAddress"]
      358 NAMECALL                         R24 R3 K9 ["getText"]
      360 CALL                             R24 3 1
      361 SETTABLEKS                       R24 R23 K103 ["PlaceholderText"]
      363 GETTABLEKS                       R24 R0 K92 ["state"]
      365 GETTABLEKS                       R24 R24 K109 ["bottomText"]
      367 SETTABLEKS                       R24 R23 K106 ["BottomText"]
      369 SETLIST                          R21 R22 2 [1]
      371 SETTABLEKS                       R21 R20 K88 ["TextInput"]
      373 NEWCLOSURE                       R21 P3
      374 CAPTURE                          VAL R0
      375 SETTABLEKS                       R21 R20 K89 ["OnClose"]
      377 NEWCLOSURE                       R21 P4
      378 CAPTURE                          UPVAL U10
      379 CAPTURE                          UPVAL U8
      380 CAPTURE                          UPVAL U9
      381 CAPTURE                          UPVAL U11
      382 CAPTURE                          UPVAL U12
      383 CAPTURE                          UPVAL U13
      384 CAPTURE                          UPVAL U14
      385 CAPTURE                          VAL R6
      386 CAPTURE                          VAL R0
      387 CAPTURE                          VAL R3
      388 SETTABLEKS                       R21 R20 K90 ["OnButtonPressed"]
      390 CALL                             R18 2 1
      391 SETTABLEKS                       R18 R17 K82 ["EmailDialog"]
      393 CALL                             R14 3 1
      394 SETTABLEKS                       R14 R13 K36 ["SaveSettings"]
      396 CALL                             R10 3 -1
      397 CLOSEUPVALS                      R8
      398 RETURN                           R10 -1

PROTO_10:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+120]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+58]
        6 DUPTABLE                         R2 K4 [{"SaveActive", "CancelActive", "CurrentOptInLocations", "ChangedOptInLocations"}]
        7 GETTABLEKS                       R4 R0 K5 ["EditAsset"]
        9 GETTABLEKS                       R4 R4 K6 ["editSecretId"]
       11 JUMPIF                           R4 ; [+8]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R0 K7 ["Settings"]
       15 GETTABLEKS                       R5 R5 K8 ["Changed"]
       17 CALL                             R4 1 1
       18 NOT                              R3 R4
       19 JUMPIFNOT                        R3 ; [+14]
       20 LOADB                            R3 0
       21 GETTABLEKS                       R4 R0 K9 ["Status"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K10 ["Open"]
       26 JUMPIFNOTEQ                      R4 R5 ; [+7]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R4 R0 K7 ["Settings"]
       31 GETTABLEKS                       R4 R4 K11 ["Errors"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K0 ["SaveActive"]
       36 GETTABLEKS                       R4 R0 K9 ["Status"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K10 ["Open"]
       41 JUMPIFEQ                         R4 R5 ; [+2]
       43 LOADB                            R3 0 +1
       44 LOADB                            R3 1
       45 SETTABLEKS                       R3 R2 K1 ["CancelActive"]
       47 GETTABLEKS                       R4 R0 K7 ["Settings"]
       49 GETTABLEKS                       R4 R4 K12 ["Current"]
       51 GETUPVAL                         R5 4
       52 GETTABLE                         R3 R4 R5
       53 SETTABLEKS                       R3 R2 K2 ["CurrentOptInLocations"]
       55 GETTABLEKS                       R4 R0 K7 ["Settings"]
       57 GETTABLEKS                       R4 R4 K8 ["Changed"]
       59 GETUPVAL                         R5 4
       60 GETTABLE                         R3 R4 R5
       61 SETTABLEKS                       R3 R2 K3 ["ChangedOptInLocations"]
       63 RETURN                           R2 1
       64 DUPTABLE                         R2 K4 [{"SaveActive", "CancelActive", "CurrentOptInLocations", "ChangedOptInLocations"}]
       65 LOADB                            R3 0
       66 GETTABLEKS                       R4 R0 K5 ["EditAsset"]
       68 GETTABLEKS                       R4 R4 K6 ["editSecretId"]
       70 JUMPIFNOTEQKNIL                  R4 ; [+23]
       72 GETUPVAL                         R4 2
       73 GETTABLEKS                       R5 R0 K7 ["Settings"]
       75 GETTABLEKS                       R5 R5 K8 ["Changed"]
       77 CALL                             R4 1 1
       78 NOT                              R3 R4
       79 JUMPIFNOT                        R3 ; [+14]
       80 LOADB                            R3 0
       81 GETTABLEKS                       R4 R0 K9 ["Status"]
       83 GETUPVAL                         R5 3
       84 GETTABLEKS                       R5 R5 K10 ["Open"]
       86 JUMPIFNOTEQ                      R4 R5 ; [+7]
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R4 R0 K7 ["Settings"]
       91 GETTABLEKS                       R4 R4 K11 ["Errors"]
       93 CALL                             R3 1 1
       94 SETTABLEKS                       R3 R2 K0 ["SaveActive"]
       96 GETTABLEKS                       R4 R0 K9 ["Status"]
       98 GETUPVAL                         R5 3
       99 GETTABLEKS                       R5 R5 K10 ["Open"]
      101 JUMPIFEQ                         R4 R5 ; [+2]
      103 LOADB                            R3 0 +1
      104 LOADB                            R3 1
      105 SETTABLEKS                       R3 R2 K1 ["CancelActive"]
      107 GETTABLEKS                       R4 R0 K7 ["Settings"]
      109 GETTABLEKS                       R4 R4 K12 ["Current"]
      111 GETUPVAL                         R5 4
      112 GETTABLE                         R3 R4 R5
      113 SETTABLEKS                       R3 R2 K2 ["CurrentOptInLocations"]
      115 GETTABLEKS                       R4 R0 K7 ["Settings"]
      117 GETTABLEKS                       R4 R4 K8 ["Changed"]
      119 GETUPVAL                         R5 4
      120 GETTABLE                         R3 R4 R5
      121 SETTABLEKS                       R3 R2 K3 ["ChangedOptInLocations"]
      123 RETURN                           R2 1
      124 DUPTABLE                         R2 K4 [{"SaveActive", "CancelActive", "CurrentOptInLocations", "ChangedOptInLocations"}]
      125 GETUPVAL                         R4 2
      126 GETTABLEKS                       R5 R0 K7 ["Settings"]
      128 GETTABLEKS                       R5 R5 K8 ["Changed"]
      130 CALL                             R4 1 1
      131 NOT                              R3 R4
      132 JUMPIFNOT                        R3 ; [+14]
      133 LOADB                            R3 0
      134 GETTABLEKS                       R4 R0 K9 ["Status"]
      136 GETUPVAL                         R5 3
      137 GETTABLEKS                       R5 R5 K10 ["Open"]
      139 JUMPIFNOTEQ                      R4 R5 ; [+7]
      141 GETUPVAL                         R3 2
      142 GETTABLEKS                       R4 R0 K7 ["Settings"]
      144 GETTABLEKS                       R4 R4 K11 ["Errors"]
      146 CALL                             R3 1 1
      147 SETTABLEKS                       R3 R2 K0 ["SaveActive"]
      149 GETTABLEKS                       R4 R0 K9 ["Status"]
      151 GETUPVAL                         R5 3
      152 GETTABLEKS                       R5 R5 K10 ["Open"]
      154 JUMPIFEQ                         R4 R5 ; [+2]
      156 LOADB                            R3 0 +1
      157 LOADB                            R3 1
      158 SETTABLEKS                       R3 R2 K1 ["CancelActive"]
      160 GETTABLEKS                       R4 R0 K7 ["Settings"]
      162 GETTABLEKS                       R4 R4 K12 ["Current"]
      164 GETUPVAL                         R5 4
      165 GETTABLE                         R3 R4 R5
      166 SETTABLEKS                       R3 R2 K2 ["CurrentOptInLocations"]
      168 GETTABLEKS                       R4 R0 K7 ["Settings"]
      170 GETTABLEKS                       R4 R4 K8 ["Changed"]
      172 GETUPVAL                         R5 4
      173 GETTABLE                         R3 R4 R5
      174 SETTABLEKS                       R3 R2 K3 ["ChangedOptInLocations"]
      176 RETURN                           R2 1

PROTO_11:
        0 PREPVARARGS                      1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETVARARGS                       R3 -1
        5 CALL                             R2 -1 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["resolve"]
       11 CALL                             R1 0 -1
       12 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"SaveAllSettings", "PostContactEmail"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["SaveAllSettings"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["PostContactEmail"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LuobuDevPublishAnalyticsHundredthsPercentage"]
        4 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GameSettingsAddCreatorHubLinkToFooter"]
       10 NAMECALL                         R1 R1 K5 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["GameSettingsCreatorHubManageExperienceLink"]
       16 NAMECALL                         R2 R2 K7 ["GetFastString"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K9 [script]
       21 GETTABLEKS                       R3 R3 K10 ["Parent"]
       23 GETTABLEKS                       R3 R3 K10 ["Parent"]
       25 GETTABLEKS                       R3 R3 K10 ["Parent"]
       27 GETIMPORT                        R4 K12 [require]
       29 GETTABLEKS                       R5 R3 K13 ["Packages"]
       31 GETTABLEKS                       R5 R5 K14 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K12 [require]
       36 GETTABLEKS                       R6 R3 K13 ["Packages"]
       38 GETTABLEKS                       R6 R6 K15 ["RoactRodux"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K12 [require]
       43 GETTABLEKS                       R7 R3 K13 ["Packages"]
       45 GETTABLEKS                       R7 R7 K16 ["Framework"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K17 ["Util"]
       50 GETTABLEKS                       R8 R7 K18 ["Promise"]
       52 GETTABLEKS                       R9 R3 K19 ["RoactStudioWidgets"]
       54 GETIMPORT                        R10 K12 [require]
       56 GETTABLEKS                       R11 R9 K20 ["Hyperlink"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R6 K21 ["ContextServices"]
       61 GETTABLEKS                       R12 R11 K22 ["withContext"]
       63 GETIMPORT                        R13 K12 [require]
       65 GETTABLEKS                       R14 R3 K23 ["Src"]
       67 GETTABLEKS                       R14 R14 K21 ["ContextServices"]
       69 GETTABLEKS                       R14 R14 K24 ["Dialog"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K12 [require]
       74 GETTABLEKS                       R15 R3 K23 ["Src"]
       76 GETTABLEKS                       R15 R15 K17 ["Util"]
       78 GETTABLEKS                       R15 R15 K25 ["DEPRECATED_Constants"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K12 [require]
       83 GETTABLEKS                       R16 R3 K23 ["Src"]
       85 GETTABLEKS                       R16 R16 K17 ["Util"]
       87 GETTABLEKS                       R16 R16 K26 ["isEmpty"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K12 [require]
       92 GETTABLEKS                       R17 R3 K23 ["Src"]
       94 GETTABLEKS                       R17 R17 K27 ["Components"]
       96 GETTABLEKS                       R17 R17 K28 ["ButtonBar"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K12 [require]
      101 GETTABLEKS                       R18 R3 K23 ["Src"]
      103 GETTABLEKS                       R18 R18 K29 ["Thunks"]
      105 GETTABLEKS                       R18 R18 K30 ["ConfirmAndSaveChanges"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K12 [require]
      110 GETTABLEKS                       R19 R3 K23 ["Src"]
      112 GETTABLEKS                       R19 R19 K29 ["Thunks"]
      114 GETTABLEKS                       R19 R19 K31 ["PostContactEmail"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K12 [require]
      119 GETTABLEKS                       R20 R3 K23 ["Src"]
      121 GETTABLEKS                       R20 R20 K17 ["Util"]
      123 GETTABLEKS                       R20 R20 K32 ["CurrentStatus"]
      125 CALL                             R19 1 1
      126 GETTABLEKS                       R20 R6 K33 ["UI"]
      128 GETTABLEKS                       R20 R20 K34 ["TextInputDialog"]
      130 GETIMPORT                        R21 K12 [require]
      132 GETTABLEKS                       R22 R3 K23 ["Src"]
      134 GETTABLEKS                       R22 R22 K17 ["Util"]
      136 GETTABLEKS                       R22 R22 K35 ["GameSettingsUtilities"]
      138 CALL                             R21 1 1
      139 GETTABLEKS                       R21 R21 K36 ["shouldShowDevPublishLocations"]
      141 GETIMPORT                        R22 K12 [require]
      143 GETTABLEKS                       R23 R3 K23 ["Src"]
      145 GETTABLEKS                       R23 R23 K17 ["Util"]
      147 GETTABLEKS                       R23 R23 K35 ["GameSettingsUtilities"]
      149 CALL                             R22 1 1
      150 GETTABLEKS                       R22 R22 K37 ["sendAnalyticsToKibana"]
      152 GETIMPORT                        R23 K12 [require]
      154 GETTABLEKS                       R24 R3 K23 ["Src"]
      156 GETTABLEKS                       R24 R24 K17 ["Util"]
      158 GETTABLEKS                       R24 R24 K38 ["KeyProvider"]
      160 CALL                             R23 1 1
      161 GETTABLEKS                       R24 R23 K39 ["getOptInLocationsKeyName"]
      163 CALL                             R24 0 1
      164 GETTABLEKS                       R25 R23 K40 ["getChinaKeyName"]
      166 CALL                             R25 0 1
      167 GETTABLEKS                       R26 R23 K41 ["getSelectedKeyName"]
      169 CALL                             R26 0 1
      170 GETTABLEKS                       R27 R23 K42 ["getFooterKeyName"]
      172 CALL                             R27 0 1
      173 GETTABLEKS                       R28 R23 K43 ["getLuobuStudioDevPublishKeyName"]
      175 CALL                             R28 0 1
      176 GETTABLEKS                       R29 R4 K44 ["PureComponent"]
      178 LOADK                            R31 K45 ["Footer"]
      179 NAMECALL                         R29 R29 K46 ["extend"]
      181 CALL                             R29 2 1
      182 GETIMPORT                        R30 K1 [game]
      184 LOADK                            R32 K47 ["GuiService"]
      185 NAMECALL                         R30 R30 K48 ["GetService"]
      187 CALL                             R30 2 1
      188 DUPCLOSURE                       R31 K49 [PROTO_1]
      189 SETTABLEKS                       R31 R29 K50 ["saveAllSettings"]
      191 GETIMPORT                        R31 K12 [require]
      193 GETTABLEKS                       R32 R3 K23 ["Src"]
      195 GETTABLEKS                       R32 R32 K51 ["Flags"]
      197 GETTABLEKS                       R32 R32 K52 ["getFFlagSecretsEditorImprovement"]
      199 CALL                             R31 1 1
      200 CALL                             R31 0 1
      201 GETIMPORT                        R32 K12 [require]
      203 GETTABLEKS                       R33 R3 K23 ["Src"]
      205 GETTABLEKS                       R33 R33 K51 ["Flags"]
      207 GETTABLEKS                       R33 R33 K53 ["getFFlagSecretsEditorNoDraft"]
      209 CALL                             R32 1 1
      210 CALL                             R32 0 1
      211 DUPCLOSURE                       R33 K54 [PROTO_3]
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R26
      214 SETTABLEKS                       R33 R29 K55 ["init"]
      216 DUPCLOSURE                       R33 K56 [PROTO_9]
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R30
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R0
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R20
      233 SETTABLEKS                       R33 R29 K57 ["render"]
      235 MOVE                             R33 R12
      236 DUPTABLE                         R34 K60 [{"Stylizer", "Localization", "Dialog"}]
      237 GETTABLEKS                       R35 R11 K58 ["Stylizer"]
      239 SETTABLEKS                       R35 R34 K58 ["Stylizer"]
      241 GETTABLEKS                       R35 R11 K59 ["Localization"]
      243 SETTABLEKS                       R35 R34 K59 ["Localization"]
      245 SETTABLEKS                       R13 R34 K24 ["Dialog"]
      247 CALL                             R33 1 1
      248 MOVE                             R34 R29
      249 CALL                             R33 1 1
      250 MOVE                             R29 R33
      251 GETTABLEKS                       R33 R5 K61 ["connect"]
      253 DUPCLOSURE                       R34 K62 [PROTO_10]
      254 CAPTURE                          VAL R31
      255 CAPTURE                          VAL R32
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R24
      259 DUPCLOSURE                       R35 K63 [PROTO_13]
      260 CAPTURE                          VAL R17
      261 CAPTURE                          VAL R8
      262 CAPTURE                          VAL R18
      263 CALL                             R33 2 1
      264 MOVE                             R34 R29
      265 CALL                             R33 1 1
      266 MOVE                             R29 R33
      267 RETURN                           R29 1
