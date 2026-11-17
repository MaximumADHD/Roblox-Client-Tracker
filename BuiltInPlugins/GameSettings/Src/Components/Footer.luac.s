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
        6 DUPTABLE                         R1 K6 [{["showEmailDialog"] = False, ["userPressedSave"] = False, ["bottomText"] = ""}]
        7 SETTABLEKS                       R1 R0 K7 ["state"]
        9 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 5000
        3 LOADN                            R5 5000
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
        3 LOADK                            R5 K1 ["%*"]
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R5 R5 K2 ["format"]
        7 CALL                             R5 2 1
        8 NAMECALL                         R2 R2 K3 ["gsub"]
       10 CALL                             R2 3 -1
       11 NAMECALL                         R0 R0 K4 ["OpenBrowserWindow"]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+16]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["shouldShowEmailDialog"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETUPVAL                         R1 1
       10 DUPTABLE                         R3 K4 [{["showEmailDialog"] = True, ["userPressedSave"]}]
       11 SETTABLEKS                       R0 R3 K3 ["userPressedSave"]
       13 NAMECALL                         R1 R1 K5 ["setState"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R0 ; [+57]
       18 GETUPVAL                         R1 0
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+54]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K6 ["props"]
       24 GETTABLEKS                       R1 R1 K7 ["CurrentOptInLocations"]
       26 JUMPIFNOT                        R1 ; [+48]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K6 ["props"]
       30 GETTABLEKS                       R3 R3 K7 ["CurrentOptInLocations"]
       32 GETUPVAL                         R4 2
       33 GETTABLE                         R2 R3 R4
       34 GETUPVAL                         R3 3
       35 GETTABLE                         R1 R2 R3
       36 JUMPIFNOT                        R1 ; [+38]
       37 NEWTABLE                         R1 1 0
       39 GETUPVAL                         R2 4
       40 GETUPVAL                         R3 2
       41 SETTABLE                         R3 R1 R2
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K6 ["props"]
       45 GETTABLEKS                       R2 R2 K8 ["ChangedOptInLocations"]
       47 JUMPIF                           R2 ; [+4]
       48 LOADB                            R2 1
       49 SETTABLEKS                       R2 R1 K9 ["selected"]
       51 JUMP                             ; [+17]
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K6 ["props"]
       55 GETTABLEKS                       R6 R6 K8 ["ChangedOptInLocations"]
       57 GETUPVAL                         R7 2
       58 GETTABLE                         R5 R6 R7
       59 GETUPVAL                         R6 3
       60 GETTABLE                         R4 R5 R6
       61 NOT                              R3 R4
       62 FASTCALL1                        ASSERT R3 ; [+2]
       63 GETIMPORT                        R2 K11 [assert]
       65 CALL                             R2 1 0
       66 LOADB                            R2 0
       67 SETTABLEKS                       R2 R1 K9 ["selected"]
       69 GETUPVAL                         R2 5
       70 GETUPVAL                         R3 6
       71 GETUPVAL                         R4 7
       72 GETUPVAL                         R5 8
       73 MOVE                             R6 R1
       74 CALL                             R2 4 0
       75 GETUPVAL                         R1 1
       76 MOVE                             R3 R0
       77 NAMECALL                         R1 R1 K12 ["saveAllSettings"]
       79 CALL                             R1 2 0
       80 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K5 [{[1] = False, ["userPressedSave"] = False, ["bottomText"] = ""}]
        2 NAMECALL                         R0 R0 K6 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 JUMPIFEQKS                       R0 K0 ["Submit"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 JUMPIFNOT                        R3 ; [+62]
        5 JUMPIFNOTEQ                      R1 R2 ; [+47]
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
       24 JUMPIF                           R5 ; [+15]
       25 GETUPVAL                         R6 8
       26 GETUPVAL                         R8 8
       27 GETTABLEKS                       R8 R8 K1 ["state"]
       29 GETTABLEKS                       R8 R8 K2 ["userPressedSave"]
       31 NAMECALL                         R6 R6 K3 ["saveAllSettings"]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 8
       35 DUPTABLE                         R8 K8 [{["showEmailDialog"] = False, ["userPressedSave"] = False, ["bottomText"] = ""}]
       36 NAMECALL                         R6 R6 K9 ["setState"]
       38 CALL                             R6 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R7 9
       41 GETUPVAL                         R9 0
       42 LOADK                            R10 K10 ["EmailSubmitFailure"]
       43 NAMECALL                         R7 R7 K11 ["getText"]
       45 CALL                             R7 3 1
       46 MOVE                             R8 R5
       47 CONCAT                           R6 R7 R8
       48 GETIMPORT                        R7 K13 [warn]
       50 MOVE                             R8 R6
       51 CALL                             R7 1 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R4 8
       54 DUPTABLE                         R6 K14 [{"bottomText"}]
       55 GETUPVAL                         R7 9
       56 GETUPVAL                         R9 0
       57 LOADK                            R10 K15 ["ErrorEmailNotEqual"]
       58 NAMECALL                         R7 R7 K11 ["getText"]
       60 CALL                             R7 3 1
       61 SETTABLEKS                       R7 R6 K6 ["bottomText"]
       63 NAMECALL                         R4 R4 K9 ["setState"]
       65 CALL                             R4 2 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 8
       68 DUPTABLE                         R6 K8 [{["showEmailDialog"] = False, ["userPressedSave"] = False, ["bottomText"] = ""}]
       69 NAMECALL                         R4 R4 K9 ["setState"]
       71 CALL                             R4 2 0
       72 RETURN                           R0 0

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
       16 JUMPIFNOT                        R10 ; [+32]
       17 DUPCLOSURE                       R10 K6 [PROTO_4]
       18 LOADK                            R13 K7 ["General"]
       19 LOADK                            R14 K8 ["CreatorHubManageLink"]
       20 NAMECALL                         R11 R3 K9 ["getText"]
       22 CALL                             R11 3 1
       23 MOVE                             R7 R11
       24 GETIMPORT                        R11 K11 [game]
       26 GETTABLEKS                       R8 R11 K12 ["GameId"]
       28 GETIMPORT                        R12 K16 [Enum.Font.SourceSans]
       30 GETIMPORT                        R13 K19 [Vector2.new]
       32 LOADN                            R14 5000
       33 LOADN                            R15 5000
       34 CALL                             R13 2 1
       35 GETIMPORT                        R14 K11 [game]
       37 LOADK                            R16 K20 ["TextService"]
       38 NAMECALL                         R14 R14 K21 ["GetService"]
       40 CALL                             R14 2 1
       41 MOVE                             R16 R7
       42 LOADN                            R17 22
       43 MOVE                             R18 R12
       44 MOVE                             R19 R13
       45 NAMECALL                         R14 R14 K22 ["GetTextSize"]
       47 CALL                             R14 5 1
       48 MOVE                             R9 R14
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K23 ["createElement"]
       52 LOADK                            R11 K24 ["Frame"]
       53 DUPTABLE                         R12 K31 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Size"], ["ZIndex"] = 2}]
       54 GETTABLEKS                       R13 R2 K32 ["backgroundColor"]
       56 SETTABLEKS                       R13 R12 K25 ["BackgroundColor3"]
       58 GETIMPORT                        R13 K35 [UDim2.fromScale]
       60 LOADN                            R14 1
       61 LOADN                            R15 1
       62 CALL                             R13 2 1
       63 SETTABLEKS                       R13 R12 K28 ["Size"]
       65 DUPTABLE                         R13 K39 [{"Gradient", "CreatorDocsLink", "SaveSettings"}]
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K23 ["createElement"]
       69 LOADK                            R15 K40 ["ImageLabel"]
       70 DUPTABLE                         R16 K49 [{["Size"], ["AnchorPoint"], ["Image"], ["ImageRectSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["ImageColor3"], ["ImageTransparency"] = 0.9, ["ZIndex"] = 1}]
       71 GETIMPORT                        R17 K50 [UDim2.new]
       73 LOADN                            R18 1
       74 LOADN                            R19 0
       75 LOADN                            R20 0
       76 LOADN                            R21 3
       77 CALL                             R17 4 1
       78 SETTABLEKS                       R17 R16 K28 ["Size"]
       80 GETIMPORT                        R17 K19 [Vector2.new]
       82 LOADN                            R18 0
       83 LOADN                            R19 1
       84 CALL                             R17 2 1
       85 SETTABLEKS                       R17 R16 K41 ["AnchorPoint"]
       87 GETUPVAL                         R17 2
       88 GETTABLEKS                       R17 R17 K51 ["GRADIENT_IMAGE"]
       90 SETTABLEKS                       R17 R16 K42 ["Image"]
       92 GETUPVAL                         R17 2
       93 GETTABLEKS                       R17 R17 K52 ["GRADIENT_RECT_SIZE"]
       95 SETTABLEKS                       R17 R16 K43 ["ImageRectSize"]
       97 GETTABLEKS                       R17 R2 K53 ["footer"]
       99 GETTABLEKS                       R17 R17 K54 ["gradient"]
      101 SETTABLEKS                       R17 R16 K46 ["ImageColor3"]
      103 CALL                             R14 2 1
      104 SETTABLEKS                       R14 R13 K36 ["Gradient"]
      106 GETUPVAL                         R15 0
      107 JUMPIFNOT                        R15 ; [+59]
      108 GETUPVAL                         R14 1
      109 GETTABLEKS                       R14 R14 K23 ["createElement"]
      111 LOADK                            R15 K24 ["Frame"]
      112 DUPTABLE                         R16 K57 [{["AutomaticSize"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      113 GETIMPORT                        R17 K59 [Enum.AutomaticSize.XY]
      115 SETTABLEKS                       R17 R16 K55 ["AutomaticSize"]
      117 GETIMPORT                        R17 K19 [Vector2.new]
      119 LOADN                            R18 0
      120 LOADK                            R19 K60 [0.5]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K41 ["AnchorPoint"]
      124 GETIMPORT                        R17 K50 [UDim2.new]
      126 LOADN                            R18 0
      127 LOADN                            R19 16
      128 LOADK                            R20 K60 [0.5]
      129 LOADN                            R21 0
      130 CALL                             R17 4 1
      131 SETTABLEKS                       R17 R16 K56 ["Position"]
      133 DUPTABLE                         R17 K62 [{"Hyperlink"}]
      134 GETUPVAL                         R18 1
      135 GETTABLEKS                       R18 R18 K23 ["createElement"]
      137 GETUPVAL                         R19 3
      138 DUPTABLE                         R20 K70 [{["Text"], ["TextSize"] = 20, ["Size"], ["Enabled"] = True, ["Mouse"], ["OnClick"]}]
      139 SETTABLEKS                       R7 R20 K63 ["Text"]
      141 GETIMPORT                        R21 K50 [UDim2.new]
      143 LOADN                            R22 0
      144 GETTABLEKS                       R23 R9 K71 ["X"]
      146 LOADN                            R24 0
      147 GETTABLEKS                       R25 R9 K72 ["Y"]
      149 CALL                             R21 4 1
      150 SETTABLEKS                       R21 R20 K28 ["Size"]
      152 GETTABLEKS                       R21 R1 K68 ["Mouse"]
      154 SETTABLEKS                       R21 R20 K68 ["Mouse"]
      156 NEWCLOSURE                       R21 P1
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          UPVAL U5
      159 CAPTURE                          REF R8
      160 SETTABLEKS                       R21 R20 K69 ["OnClick"]
      162 CALL                             R18 2 1
      163 SETTABLEKS                       R18 R17 K61 ["Hyperlink"]
      165 CALL                             R14 3 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R14
      168 SETTABLEKS                       R14 R13 K37 ["CreatorDocsLink"]
      170 GETUPVAL                         R14 1
      171 GETTABLEKS                       R14 R14 K23 ["createElement"]
      173 GETUPVAL                         R15 6
      174 DUPTABLE                         R16 K76 [{["ZIndex"] = 2, ["Buttons"], ["HorizontalAlignment"], ["ButtonClicked"]}]
      175 NEWTABLE                         R17 0 2
      177 DUPTABLE                         R18 K81 [{["Name"], ["Active"], ["Value"] = False}]
      178 LOADK                            R21 K7 ["General"]
      179 LOADK                            R22 K82 ["ButtonCancel"]
      180 NAMECALL                         R19 R3 K9 ["getText"]
      182 CALL                             R19 3 1
      183 SETTABLEKS                       R19 R18 K77 ["Name"]
      185 SETTABLEKS                       R5 R18 K78 ["Active"]
      187 DUPTABLE                         R19 K84 [{["Name"], ["Default"] = True, ["Active"], ["Value"] = True}]
      188 LOADK                            R22 K7 ["General"]
      189 LOADK                            R23 K85 ["ButtonSave"]
      190 NAMECALL                         R20 R3 K9 ["getText"]
      192 CALL                             R20 3 1
      193 SETTABLEKS                       R20 R19 K77 ["Name"]
      195 SETTABLEKS                       R4 R19 K78 ["Active"]
      197 SETLIST                          R17 R18 2 [1]
      199 SETTABLEKS                       R17 R16 K73 ["Buttons"]
      201 GETIMPORT                        R17 K87 [Enum.HorizontalAlignment.Right]
      203 SETTABLEKS                       R17 R16 K74 ["HorizontalAlignment"]
      205 NEWCLOSURE                       R17 P2
      206 CAPTURE                          UPVAL U7
      207 CAPTURE                          VAL R0
      208 CAPTURE                          UPVAL U8
      209 CAPTURE                          UPVAL U9
      210 CAPTURE                          UPVAL U10
      211 CAPTURE                          UPVAL U11
      212 CAPTURE                          UPVAL U12
      213 CAPTURE                          UPVAL U13
      214 CAPTURE                          UPVAL U14
      215 SETTABLEKS                       R17 R16 K75 ["ButtonClicked"]
      217 DUPTABLE                         R17 K89 [{"EmailDialog"}]
      218 GETUPVAL                         R18 1
      219 GETTABLEKS                       R18 R18 K23 ["createElement"]
      221 GETUPVAL                         R19 15
      222 DUPTABLE                         R20 K97 [{"Enabled", "Size", "Title", "Header", "Buttons", "Body", "Description", "TextInput", "OnClose", "OnButtonPressed"}]
      223 GETTABLEKS                       R21 R0 K98 ["state"]
      225 GETTABLEKS                       R21 R21 K99 ["showEmailDialog"]
      227 SETTABLEKS                       R21 R20 K66 ["Enabled"]
      229 GETIMPORT                        R21 K19 [Vector2.new]
      231 GETTABLEKS                       R22 R2 K100 ["emailDialog"]
      233 GETTABLEKS                       R22 R22 K28 ["Size"]
      235 GETTABLEKS                       R22 R22 K71 ["X"]
      237 GETTABLEKS                       R23 R2 K100 ["emailDialog"]
      239 GETTABLEKS                       R23 R23 K28 ["Size"]
      241 GETTABLEKS                       R23 R23 K72 ["Y"]
      243 CALL                             R21 2 1
      244 SETTABLEKS                       R21 R20 K28 ["Size"]
      246 GETUPVAL                         R23 10
      247 LOADK                            R24 K101 ["EmailDialogHeader"]
      248 NAMECALL                         R21 R3 K9 ["getText"]
      250 CALL                             R21 3 1
      251 SETTABLEKS                       R21 R20 K90 ["Title"]
      253 GETUPVAL                         R23 10
      254 LOADK                            R24 K101 ["EmailDialogHeader"]
      255 NAMECALL                         R21 R3 K9 ["getText"]
      257 CALL                             R21 3 1
      258 SETTABLEKS                       R21 R20 K91 ["Header"]
      260 NEWTABLE                         R21 0 2
      262 DUPTABLE                         R22 K104 [{["Key"] = "Submit", ["Text"]}]
      263 LOADK                            R25 K7 ["General"]
      264 LOADK                            R26 K105 ["ButtonSubmit"]
      265 NAMECALL                         R23 R3 K9 ["getText"]
      267 CALL                             R23 3 1
      268 SETTABLEKS                       R23 R22 K63 ["Text"]
      270 DUPTABLE                         R23 K107 [{["Key"] = "Cancel", ["Text"]}]
      271 LOADK                            R26 K7 ["General"]
      272 LOADK                            R27 K82 ["ButtonCancel"]
      273 NAMECALL                         R24 R3 K9 ["getText"]
      275 CALL                             R24 3 1
      276 SETTABLEKS                       R24 R23 K63 ["Text"]
      278 SETLIST                          R21 R22 2 [1]
      280 SETTABLEKS                       R21 R20 K73 ["Buttons"]
      282 GETUPVAL                         R23 10
      283 LOADK                            R24 K108 ["EmailDialogBody"]
      284 NAMECALL                         R21 R3 K9 ["getText"]
      286 CALL                             R21 3 1
      287 SETTABLEKS                       R21 R20 K92 ["Body"]
      289 GETUPVAL                         R23 10
      290 LOADK                            R24 K109 ["EmailDialogDescription"]
      291 NAMECALL                         R21 R3 K9 ["getText"]
      293 CALL                             R21 3 1
      294 SETTABLEKS                       R21 R20 K93 ["Description"]
      296 NEWTABLE                         R21 0 2
      298 DUPTABLE                         R22 K111 [{"PlaceholderText"}]
      299 GETUPVAL                         R25 10
      300 LOADK                            R26 K112 ["EmailAddress"]
      301 NAMECALL                         R23 R3 K9 ["getText"]
      303 CALL                             R23 3 1
      304 SETTABLEKS                       R23 R22 K110 ["PlaceholderText"]
      306 DUPTABLE                         R23 K114 [{"PlaceholderText", "BottomText"}]
      307 GETUPVAL                         R26 10
      308 LOADK                            R27 K115 ["ConfirmEmailAddress"]
      309 NAMECALL                         R24 R3 K9 ["getText"]
      311 CALL                             R24 3 1
      312 SETTABLEKS                       R24 R23 K110 ["PlaceholderText"]
      314 GETTABLEKS                       R24 R0 K98 ["state"]
      316 GETTABLEKS                       R24 R24 K116 ["bottomText"]
      318 SETTABLEKS                       R24 R23 K113 ["BottomText"]
      320 SETLIST                          R21 R22 2 [1]
      322 SETTABLEKS                       R21 R20 K94 ["TextInput"]
      324 NEWCLOSURE                       R21 P3
      325 CAPTURE                          VAL R0
      326 SETTABLEKS                       R21 R20 K95 ["OnClose"]
      328 NEWCLOSURE                       R21 P4
      329 CAPTURE                          UPVAL U10
      330 CAPTURE                          UPVAL U8
      331 CAPTURE                          UPVAL U9
      332 CAPTURE                          UPVAL U11
      333 CAPTURE                          UPVAL U12
      334 CAPTURE                          UPVAL U13
      335 CAPTURE                          UPVAL U14
      336 CAPTURE                          VAL R6
      337 CAPTURE                          VAL R0
      338 CAPTURE                          VAL R3
      339 SETTABLEKS                       R21 R20 K96 ["OnButtonPressed"]
      341 CALL                             R18 2 1
      342 SETTABLEKS                       R18 R17 K88 ["EmailDialog"]
      344 CALL                             R14 3 1
      345 SETTABLEKS                       R14 R13 K38 ["SaveSettings"]
      347 CALL                             R10 3 -1
      348 CLOSEUPVALS                      R8
      349 RETURN                           R10 -1

PROTO_10:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 DUPTABLE                         R2 K4 [{"SaveActive", "CancelActive", "CurrentOptInLocations", "ChangedOptInLocations"}]
        3 GETTABLEKS                       R4 R0 K5 ["EditAsset"]
        5 GETTABLEKS                       R4 R4 K6 ["editSecretId"]
        7 JUMPIF                           R4 ; [+8]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R5 R0 K7 ["Settings"]
       11 GETTABLEKS                       R5 R5 K8 ["Changed"]
       13 CALL                             R4 1 1
       14 NOT                              R3 R4
       15 JUMPIFNOT                        R3 ; [+14]
       16 LOADB                            R3 0
       17 GETTABLEKS                       R4 R0 K9 ["Status"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K10 ["Open"]
       22 JUMPIFNOTEQ                      R4 R5 ; [+7]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R4 R0 K7 ["Settings"]
       27 GETTABLEKS                       R4 R4 K11 ["Errors"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K0 ["SaveActive"]
       32 GETTABLEKS                       R4 R0 K9 ["Status"]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K10 ["Open"]
       37 JUMPIFEQ                         R4 R5 ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 SETTABLEKS                       R3 R2 K1 ["CancelActive"]
       43 GETTABLEKS                       R4 R0 K7 ["Settings"]
       45 GETTABLEKS                       R4 R4 K12 ["Current"]
       47 GETUPVAL                         R5 2
       48 GETTABLE                         R3 R4 R5
       49 SETTABLEKS                       R3 R2 K2 ["CurrentOptInLocations"]
       51 GETTABLEKS                       R4 R0 K7 ["Settings"]
       53 GETTABLEKS                       R4 R4 K8 ["Changed"]
       55 GETUPVAL                         R5 2
       56 GETTABLE                         R3 R4 R5
       57 SETTABLEKS                       R3 R2 K3 ["ChangedOptInLocations"]
       59 RETURN                           R2 1

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
      191 DUPCLOSURE                       R31 K51 [PROTO_3]
      192 CAPTURE                          VAL R25
      193 CAPTURE                          VAL R26
      194 SETTABLEKS                       R31 R29 K52 ["init"]
      196 DUPCLOSURE                       R31 K53 [PROTO_9]
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R30
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R26
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R28
      210 CAPTURE                          VAL R0
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R20
      213 SETTABLEKS                       R31 R29 K54 ["render"]
      215 MOVE                             R31 R12
      216 DUPTABLE                         R32 K57 [{"Stylizer", "Localization", "Dialog"}]
      217 GETTABLEKS                       R33 R11 K55 ["Stylizer"]
      219 SETTABLEKS                       R33 R32 K55 ["Stylizer"]
      221 GETTABLEKS                       R33 R11 K56 ["Localization"]
      223 SETTABLEKS                       R33 R32 K56 ["Localization"]
      225 SETTABLEKS                       R13 R32 K24 ["Dialog"]
      227 CALL                             R31 1 1
      228 MOVE                             R32 R29
      229 CALL                             R31 1 1
      230 MOVE                             R29 R31
      231 GETTABLEKS                       R31 R5 K58 ["connect"]
      233 DUPCLOSURE                       R32 K59 [PROTO_10]
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R24
      237 DUPCLOSURE                       R33 K60 [PROTO_13]
      238 CAPTURE                          VAL R17
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R18
      241 CALL                             R31 2 1
      242 MOVE                             R32 R29
      243 CALL                             R31 1 1
      244 MOVE                             R29 R31
      245 RETURN                           R29 1
