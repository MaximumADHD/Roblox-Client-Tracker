PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
        3 JUMPIFNOTEQ                      R0 R1 ; [+11]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K4 ["showBoundingBoxes"]
        9 LOADB                            R3 1
       10 LOADK                            R4 K5 ["Accessories"]
       11 NAMECALL                         R0 R0 K6 ["Invoke"]
       13 CALL                             R0 4 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETIMPORT                        R1 K8 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       18 JUMPIFNOTEQ                      R0 R1 ; [+10]
       20 GETUPVAL                         R0 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R2 R3 K4 ["showBoundingBoxes"]
       24 LOADB                            R3 0
       25 LOADK                            R4 K5 ["Accessories"]
       26 NAMECALL                         R0 R0 K6 ["Invoke"]
       28 CALL                             R0 4 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["showBoundingBoxes"]
        4 LOADB                            R3 0
        5 LOADK                            R4 K1 ["Accessories"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["AccessoryCustomLimitModeSelected"]
        5 DUPTABLE                         R4 K2 [{"accessoryCustomLimitMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["accessoryCustomLimitMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["accessoryScaleSetting"]
       16 GETTABLEKS                       R1 R2 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+21]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K1 ["AccessoriesLimitMethodSelected"]
        7 DUPTABLE                         R4 K3 [{"limitMethod"}]
        8 GETTABLEKS                       R6 R0 K0 ["Id"]
       10 GETTABLEKS                       R5 R6 K4 ["Name"]
       12 SETTABLEKS                       R5 R4 K2 ["limitMethod"]
       14 NAMECALL                         R1 R1 K5 ["logCounter"]
       16 CALL                             R1 3 0
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K6 ["accessoryScaleLimitMethodSetting"]
       20 GETTABLEKS                       R1 R2 K7 ["set"]
       22 GETTABLEKS                       R2 R0 K0 ["Id"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["settings"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 NEWTABLE                         R5 0 2
       29 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["AccessoriesSettings"]
       35 LOADK                            R10 K14 ["AccessoryScaleSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["AccessoriesSettings"]
       47 LOADK                            R11 K18 ["AccessoryScaleSectionCustomLimitButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 SETLIST                          R5 R6 2 [1]
       55 GETTABLEKS                       R7 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R7 K19 ["accessoriesSettings"]
       59 GETTABLEKS                       R8 R6 K20 ["accessoryScaleSetting"]
       61 GETTABLEKS                       R7 R8 K21 ["value"]
       63 GETTABLEKS                       R9 R6 K22 ["accessoryScaleLimitMethodSetting"]
       65 GETTABLEKS                       R8 R9 K21 ["value"]
       67 GETIMPORT                        R9 K25 [UDim.new]
       69 LOADN                            R10 0
       70 GETUPVAL                         R12 5
       71 GETTABLEKS                       R11 R12 K26 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R10 6
       75 NAMECALL                         R10 R10 K0 ["use"]
       77 CALL                             R10 1 1
       78 NAMECALL                         R10 R10 K27 ["get"]
       80 CALL                             R10 1 1
       81 GETUPVAL                         R12 3
       82 GETTABLEKS                       R11 R12 K28 ["useEffect"]
       84 NEWCLOSURE                       R12 P0
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R10
       87 CAPTURE                          UPVAL U7
       88 NEWTABLE                         R13 0 2
       90 MOVE                             R14 R7
       91 GETTABLEKS                       R18 R4 K2 ["settings"]
       93 GETTABLEKS                       R17 R18 K19 ["accessoriesSettings"]
       95 GETTABLEKS                       R16 R17 K29 ["accessoryScaleLimitBoundsSetting"]
       97 GETTABLEKS                       R15 R16 K21 ["value"]
       99 SETLIST                          R13 R14 2 [1]
      101 CALL                             R11 2 0
      102 GETUPVAL                         R12 3
      103 GETTABLEKS                       R11 R12 K28 ["useEffect"]
      105 NEWCLOSURE                       R12 P1
      106 CAPTURE                          VAL R10
      107 CAPTURE                          UPVAL U7
      108 NEWTABLE                         R13 0 0
      110 CALL                             R11 2 0
      111 GETIMPORT                        R12 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
      113 JUMPIFEQ                         R7 R12 ; [+2]
      115 LOADB                            R11 0 +1
      116 LOADB                            R11 1
      117 GETUPVAL                         R12 8
      118 GETUPVAL                         R13 9
      119 DUPTABLE                         R14 K33 [{"text", "layoutOrder", "showWarning"}]
      120 LOADK                            R17 K13 ["AccessoriesSettings"]
      121 LOADK                            R18 K34 ["AccessoryScaleSection"]
      122 NAMECALL                         R15 R1 K15 ["getText"]
      124 CALL                             R15 3 1
      125 SETTABLEKS                       R15 R14 K30 ["text"]
      127 GETTABLEKS                       R15 R0 K31 ["layoutOrder"]
      129 SETTABLEKS                       R15 R14 K31 ["layoutOrder"]
      131 LOADB                            R15 1
      132 SETTABLEKS                       R15 R14 K32 ["showWarning"]
      134 DUPTABLE                         R15 K39 [{"UIListLayout", "AccessoryScaleModeSelector", "LimitMethodTitleFrame", "LimitBoundsTitleFrame"}]
      135 GETUPVAL                         R16 8
      136 LOADK                            R17 K35 ["UIListLayout"]
      137 DUPTABLE                         R18 K41 [{"Padding"}]
      138 GETIMPORT                        R19 K25 [UDim.new]
      140 LOADN                            R20 0
      141 LOADN                            R21 12
      142 CALL                             R19 2 1
      143 SETTABLEKS                       R19 R18 K40 ["Padding"]
      145 CALL                             R16 2 1
      146 SETTABLEKS                       R16 R15 K35 ["UIListLayout"]
      148 GETUPVAL                         R16 8
      149 GETUPVAL                         R17 10
      150 DUPTABLE                         R18 K46 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      151 MOVE                             R19 R3
      152 CALL                             R19 0 1
      153 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      155 SETTABLEKS                       R5 R18 K42 ["items"]
      157 SETTABLEKS                       R7 R18 K43 ["selected"]
      159 NEWCLOSURE                       R19 P2
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R6
      163 SETTABLEKS                       R19 R18 K44 ["onItemActivated"]
      165 LOADK                            R21 K13 ["AccessoriesSettings"]
      166 GETIMPORT                        R23 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
      168 JUMPIFNOTEQ                      R7 R23 ; [+3]
      170 LOADK                            R22 K47 ["AccessoryScaleSectionPlayerChoiceSubText"]
      171 JUMP                             ; [+1]
      172 LOADK                            R22 K48 ["AccessoryScaleSectionCustomLimitSubText"]
      173 NAMECALL                         R19 R1 K15 ["getText"]
      175 CALL                             R19 3 1
      176 SETTABLEKS                       R19 R18 K45 ["subText"]
      178 CALL                             R16 2 1
      179 SETTABLEKS                       R16 R15 K36 ["AccessoryScaleModeSelector"]
      181 MOVE                             R16 R11
      182 JUMPIFNOT                        R16 ; [+90]
      183 GETUPVAL                         R16 8
      184 GETUPVAL                         R17 11
      185 DUPTABLE                         R18 K52 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      186 MOVE                             R19 R3
      187 CALL                             R19 0 1
      188 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      190 GETIMPORT                        R19 K25 [UDim.new]
      192 LOADN                            R20 0
      193 LOADN                            R21 4
      194 CALL                             R19 2 1
      195 SETTABLEKS                       R19 R18 K49 ["separation"]
      197 LOADK                            R19 K53 ["AvatarSettings-LeftTextPrimary"]
      198 SETTABLEKS                       R19 R18 K50 ["textLabelTags"]
      200 SETTABLEKS                       R9 R18 K51 ["minTextLabelWidth"]
      202 LOADK                            R21 K13 ["AccessoriesSettings"]
      203 LOADK                            R22 K54 ["AccessoryScaleSectionLimitMethod"]
      204 NAMECALL                         R19 R1 K15 ["getText"]
      206 CALL                             R19 3 1
      207 SETTABLEKS                       R19 R18 K30 ["text"]
      209 DUPTABLE                         R19 K56 [{"LimitMethodSelectInput"}]
      210 GETUPVAL                         R20 8
      211 GETUPVAL                         R21 12
      212 DUPTABLE                         R22 K64 [{"PlaceholderText", "Items", "Size", "OnRenderItem", "UseAutoWidth", "SelectedId", "OnItemActivated"}]
      213 LOADK                            R23 K65 ["Remove"]
      214 SETTABLEKS                       R23 R22 K57 ["PlaceholderText"]
      216 NEWTABLE                         R23 0 2
      218 DUPTABLE                         R24 K8 [{"Id", "Label"}]
      219 GETIMPORT                        R25 K68 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
      221 SETTABLEKS                       R25 R24 K6 ["Id"]
      223 LOADK                            R27 K13 ["AccessoriesSettings"]
      224 LOADK                            R28 K69 ["AccessoryScaleSectionLimitMethodScale"]
      225 NAMECALL                         R25 R1 K15 ["getText"]
      227 CALL                             R25 3 1
      228 SETTABLEKS                       R25 R24 K7 ["Label"]
      230 DUPTABLE                         R25 K8 [{"Id", "Label"}]
      231 GETIMPORT                        R26 K70 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
      233 SETTABLEKS                       R26 R25 K6 ["Id"]
      235 LOADK                            R28 K13 ["AccessoriesSettings"]
      236 LOADK                            R29 K71 ["AccessoryScaleSectionLimitMethodRemove"]
      237 NAMECALL                         R26 R1 K15 ["getText"]
      239 CALL                             R26 3 1
      240 SETTABLEKS                       R26 R25 K7 ["Label"]
      242 SETLIST                          R23 R24 2 [1]
      244 SETTABLEKS                       R23 R22 K58 ["Items"]
      246 GETIMPORT                        R23 K74 [UDim2.fromOffset]
      248 LOADN                            R24 128
      249 GETUPVAL                         R26 5
      250 GETTABLEKS                       R25 R26 K75 ["STANDARD_HEIGHT"]
      252 CALL                             R23 2 1
      253 SETTABLEKS                       R23 R22 K59 ["Size"]
      255 GETUPVAL                         R23 13
      256 SETTABLEKS                       R23 R22 K60 ["OnRenderItem"]
      258 LOADB                            R23 1
      259 SETTABLEKS                       R23 R22 K61 ["UseAutoWidth"]
      261 SETTABLEKS                       R8 R22 K62 ["SelectedId"]
      263 NEWCLOSURE                       R23 P3
      264 CAPTURE                          VAL R8
      265 CAPTURE                          VAL R2
      266 CAPTURE                          VAL R6
      267 SETTABLEKS                       R23 R22 K63 ["OnItemActivated"]
      269 CALL                             R20 2 1
      270 SETTABLEKS                       R20 R19 K55 ["LimitMethodSelectInput"]
      272 CALL                             R16 3 1
      273 SETTABLEKS                       R16 R15 K37 ["LimitMethodTitleFrame"]
      275 MOVE                             R16 R11
      276 JUMPIFNOT                        R16 ; [+57]
      277 GETUPVAL                         R16 8
      278 GETUPVAL                         R17 11
      279 DUPTABLE                         R18 K52 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      280 MOVE                             R19 R3
      281 CALL                             R19 0 1
      282 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      284 GETIMPORT                        R19 K25 [UDim.new]
      286 LOADN                            R20 0
      287 LOADN                            R21 4
      288 CALL                             R19 2 1
      289 SETTABLEKS                       R19 R18 K49 ["separation"]
      291 LOADK                            R19 K53 ["AvatarSettings-LeftTextPrimary"]
      292 SETTABLEKS                       R19 R18 K50 ["textLabelTags"]
      294 SETTABLEKS                       R9 R18 K51 ["minTextLabelWidth"]
      296 LOADK                            R21 K13 ["AccessoriesSettings"]
      297 LOADK                            R22 K76 ["AccessoryScaleSectionLimitBounds"]
      298 NAMECALL                         R19 R1 K15 ["getText"]
      300 CALL                             R19 3 1
      301 SETTABLEKS                       R19 R18 K30 ["text"]
      303 DUPTABLE                         R19 K78 [{"Input"}]
      304 GETUPVAL                         R20 8
      305 GETUPVAL                         R21 14
      306 DUPTABLE                         R22 K80 [{"layoutOrder", "value", "setValue", "text"}]
      307 MOVE                             R23 R3
      308 CALL                             R23 0 1
      309 SETTABLEKS                       R23 R22 K31 ["layoutOrder"]
      311 GETTABLEKS                       R24 R6 K29 ["accessoryScaleLimitBoundsSetting"]
      313 GETTABLEKS                       R23 R24 K21 ["value"]
      315 SETTABLEKS                       R23 R22 K21 ["value"]
      317 GETTABLEKS                       R24 R6 K29 ["accessoryScaleLimitBoundsSetting"]
      319 GETTABLEKS                       R23 R24 K81 ["set"]
      321 SETTABLEKS                       R23 R22 K79 ["setValue"]
      323 LOADK                            R25 K82 ["General"]
      324 LOADK                            R26 K83 ["PaddingAroundAvatar"]
      325 NAMECALL                         R23 R1 K15 ["getText"]
      327 CALL                             R23 3 1
      328 SETTABLEKS                       R23 R22 K30 ["text"]
      330 CALL                             R20 2 1
      331 SETTABLEKS                       R20 R19 K77 ["Input"]
      333 CALL                             R16 3 1
      334 SETTABLEKS                       R16 R15 K38 ["LimitBoundsTitleFrame"]
      336 CALL                             R12 3 -1
      337 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Util"]
       24 GETTABLEKS                       R3 R4 K11 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Components"]
       33 GETTABLEKS                       R4 R5 K12 ["ExpandableSection"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R6 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K7 ["Components"]
       49 GETTABLEKS                       R6 R7 K15 ["GenericModeSelector"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K13 ["Packages"]
       56 GETTABLEKS                       R7 R8 K16 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K13 ["Packages"]
       63 GETTABLEKS                       R8 R9 K17 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R10 R11 K7 ["Components"]
       72 GETTABLEKS                       R9 R10 K18 ["TitledComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K7 ["Components"]
       81 GETTABLEKS                       R10 R11 K19 ["Vector3Input"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R12 R13 K10 ["Util"]
       90 GETTABLEKS                       R11 R12 K20 ["InvokeKeys"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Src"]
       97 GETTABLEKS                       R13 R14 K10 ["Util"]
       99 GETTABLEKS                       R12 R13 K21 ["selectInputOnRenderFunction"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R4 K22 ["ContextServices"]
      104 GETTABLEKS                       R13 R12 K23 ["Localization"]
      106 GETTABLEKS                       R14 R12 K24 ["Plugin"]
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R19 R0 K6 ["Src"]
      112 GETTABLEKS                       R18 R19 K10 ["Util"]
      114 GETTABLEKS                       R17 R18 K25 ["Telemetry"]
      116 GETTABLEKS                       R16 R17 K26 ["TelemetryContext"]
      118 CALL                             R15 1 1
      119 GETTABLEKS                       R16 R4 K27 ["UI"]
      121 GETTABLEKS                       R17 R16 K28 ["SelectInput"]
      123 GETTABLEKS                       R18 R7 K29 ["createNextOrder"]
      125 GETTABLEKS                       R19 R6 K30 ["createElement"]
      127 DUPCLOSURE                       R20 K31 [PROTO_5]
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R9
      143 RETURN                           R20 1
