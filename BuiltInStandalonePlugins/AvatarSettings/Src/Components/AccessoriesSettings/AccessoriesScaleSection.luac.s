PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
        3 JUMPIFNOTEQ                      R0 R1 ; [+11]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K4 ["showBoundingBoxes"]
        9 LOADB                            R3 1
       10 LOADK                            R4 K5 ["Accessories"]
       11 NAMECALL                         R0 R0 K6 ["Invoke"]
       13 CALL                             R0 4 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETIMPORT                        R1 K8 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       18 JUMPIFNOTEQ                      R0 R1 ; [+10]
       20 GETUPVAL                         R0 1
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K4 ["showBoundingBoxes"]
       24 LOADB                            R3 0
       25 LOADK                            R4 K5 ["Accessories"]
       26 NAMECALL                         R0 R0 K6 ["Invoke"]
       28 CALL                             R0 4 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["showBoundingBoxes"]
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
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["accessoryScaleSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
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
        8 GETTABLEKS                       R5 R0 K0 ["Id"]
       10 GETTABLEKS                       R5 R5 K4 ["Name"]
       12 SETTABLEKS                       R5 R4 K2 ["limitMethod"]
       14 NAMECALL                         R1 R1 K5 ["logCounter"]
       16 CALL                             R1 3 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K6 ["accessoryScaleLimitMethodSetting"]
       20 GETTABLEKS                       R1 R1 K7 ["set"]
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
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
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
       55 GETTABLEKS                       R6 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R6 K19 ["accessoriesSettings"]
       59 GETTABLEKS                       R7 R6 K20 ["accessoryScaleSetting"]
       61 GETTABLEKS                       R7 R7 K21 ["value"]
       63 GETTABLEKS                       R8 R6 K22 ["accessoryScaleLimitMethodSetting"]
       65 GETTABLEKS                       R8 R8 K21 ["value"]
       67 GETIMPORT                        R9 K25 [UDim.new]
       69 LOADN                            R10 0
       70 GETUPVAL                         R11 5
       71 GETTABLEKS                       R11 R11 K26 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R10 6
       75 NAMECALL                         R10 R10 K0 ["use"]
       77 CALL                             R10 1 1
       78 NAMECALL                         R10 R10 K27 ["get"]
       80 CALL                             R10 1 1
       81 GETUPVAL                         R11 3
       82 GETTABLEKS                       R11 R11 K28 ["useEffect"]
       84 NEWCLOSURE                       R12 P0
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R10
       87 CAPTURE                          UPVAL U7
       88 NEWTABLE                         R13 0 2
       90 MOVE                             R14 R7
       91 GETTABLEKS                       R15 R4 K2 ["settings"]
       93 GETTABLEKS                       R15 R15 K19 ["accessoriesSettings"]
       95 GETTABLEKS                       R15 R15 K29 ["accessoryScaleLimitBoundsSetting"]
       97 GETTABLEKS                       R15 R15 K21 ["value"]
       99 SETLIST                          R13 R14 2 [1]
      101 CALL                             R11 2 0
      102 GETUPVAL                         R11 3
      103 GETTABLEKS                       R11 R11 K28 ["useEffect"]
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
      119 DUPTABLE                         R14 K34 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
      120 LOADK                            R17 K13 ["AccessoriesSettings"]
      121 LOADK                            R18 K35 ["AccessoryScaleSection"]
      122 NAMECALL                         R15 R1 K15 ["getText"]
      124 CALL                             R15 3 1
      125 SETTABLEKS                       R15 R14 K30 ["text"]
      127 GETTABLEKS                       R15 R0 K31 ["layoutOrder"]
      129 SETTABLEKS                       R15 R14 K31 ["layoutOrder"]
      131 DUPTABLE                         R15 K40 [{"UIListLayout", "AccessoryScaleModeSelector", "LimitMethodTitleFrame", "LimitBoundsTitleFrame"}]
      132 GETUPVAL                         R16 8
      133 LOADK                            R17 K36 ["UIListLayout"]
      134 DUPTABLE                         R18 K42 [{"Padding"}]
      135 GETIMPORT                        R19 K25 [UDim.new]
      137 LOADN                            R20 0
      138 LOADN                            R21 12
      139 CALL                             R19 2 1
      140 SETTABLEKS                       R19 R18 K41 ["Padding"]
      142 CALL                             R16 2 1
      143 SETTABLEKS                       R16 R15 K36 ["UIListLayout"]
      145 GETUPVAL                         R16 8
      146 GETUPVAL                         R17 10
      147 DUPTABLE                         R18 K47 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      148 MOVE                             R19 R3
      149 CALL                             R19 0 1
      150 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      152 SETTABLEKS                       R5 R18 K43 ["items"]
      154 SETTABLEKS                       R7 R18 K44 ["selected"]
      156 NEWCLOSURE                       R19 P2
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R6
      160 SETTABLEKS                       R19 R18 K45 ["onItemActivated"]
      162 LOADK                            R21 K13 ["AccessoriesSettings"]
      163 GETIMPORT                        R23 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
      165 JUMPIFNOTEQ                      R7 R23 ; [+3]
      167 LOADK                            R22 K48 ["AccessoryScaleSectionPlayerChoiceSubText"]
      168 JUMP                             ; [+1]
      169 LOADK                            R22 K49 ["AccessoryScaleSectionCustomLimitSubText"]
      170 NAMECALL                         R19 R1 K15 ["getText"]
      172 CALL                             R19 3 1
      173 SETTABLEKS                       R19 R18 K46 ["subText"]
      175 CALL                             R16 2 1
      176 SETTABLEKS                       R16 R15 K37 ["AccessoryScaleModeSelector"]
      178 MOVE                             R16 R11
      179 JUMPIFNOT                        R16 ; [+81]
      180 GETUPVAL                         R16 8
      181 GETUPVAL                         R17 11
      182 DUPTABLE                         R18 K54 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      183 MOVE                             R19 R3
      184 CALL                             R19 0 1
      185 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      187 GETIMPORT                        R19 K25 [UDim.new]
      189 LOADN                            R20 0
      190 LOADN                            R21 4
      191 CALL                             R19 2 1
      192 SETTABLEKS                       R19 R18 K50 ["separation"]
      194 SETTABLEKS                       R9 R18 K53 ["minTextLabelWidth"]
      196 LOADK                            R21 K13 ["AccessoriesSettings"]
      197 LOADK                            R22 K55 ["AccessoryScaleSectionLimitMethod"]
      198 NAMECALL                         R19 R1 K15 ["getText"]
      200 CALL                             R19 3 1
      201 SETTABLEKS                       R19 R18 K30 ["text"]
      203 DUPTABLE                         R19 K57 [{"LimitMethodSelectInput"}]
      204 GETUPVAL                         R20 8
      205 GETUPVAL                         R21 12
      206 DUPTABLE                         R22 K66 [{["PlaceholderText"] = "Remove", ["Items"], ["Size"], ["OnRenderItem"], ["UseAutoWidth"] = True, ["SelectedId"], ["OnItemActivated"]}]
      207 NEWTABLE                         R23 0 2
      209 DUPTABLE                         R24 K8 [{"Id", "Label"}]
      210 GETIMPORT                        R25 K69 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
      212 SETTABLEKS                       R25 R24 K6 ["Id"]
      214 LOADK                            R27 K13 ["AccessoriesSettings"]
      215 LOADK                            R28 K70 ["AccessoryScaleSectionLimitMethodScale"]
      216 NAMECALL                         R25 R1 K15 ["getText"]
      218 CALL                             R25 3 1
      219 SETTABLEKS                       R25 R24 K7 ["Label"]
      221 DUPTABLE                         R25 K8 [{"Id", "Label"}]
      222 GETIMPORT                        R26 K71 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
      224 SETTABLEKS                       R26 R25 K6 ["Id"]
      226 LOADK                            R28 K13 ["AccessoriesSettings"]
      227 LOADK                            R29 K72 ["AccessoryScaleSectionLimitMethodRemove"]
      228 NAMECALL                         R26 R1 K15 ["getText"]
      230 CALL                             R26 3 1
      231 SETTABLEKS                       R26 R25 K7 ["Label"]
      233 SETLIST                          R23 R24 2 [1]
      235 SETTABLEKS                       R23 R22 K60 ["Items"]
      237 GETIMPORT                        R23 K75 [UDim2.fromOffset]
      239 LOADN                            R24 128
      240 GETUPVAL                         R25 5
      241 GETTABLEKS                       R25 R25 K76 ["STANDARD_HEIGHT"]
      243 CALL                             R23 2 1
      244 SETTABLEKS                       R23 R22 K61 ["Size"]
      246 GETUPVAL                         R23 13
      247 SETTABLEKS                       R23 R22 K62 ["OnRenderItem"]
      249 SETTABLEKS                       R8 R22 K64 ["SelectedId"]
      251 NEWCLOSURE                       R23 P3
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R6
      255 SETTABLEKS                       R23 R22 K65 ["OnItemActivated"]
      257 CALL                             R20 2 1
      258 SETTABLEKS                       R20 R19 K56 ["LimitMethodSelectInput"]
      260 CALL                             R16 3 1
      261 SETTABLEKS                       R16 R15 K38 ["LimitMethodTitleFrame"]
      263 MOVE                             R16 R11
      264 JUMPIFNOT                        R16 ; [+54]
      265 GETUPVAL                         R16 8
      266 GETUPVAL                         R17 11
      267 DUPTABLE                         R18 K54 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      268 MOVE                             R19 R3
      269 CALL                             R19 0 1
      270 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      272 GETIMPORT                        R19 K25 [UDim.new]
      274 LOADN                            R20 0
      275 LOADN                            R21 4
      276 CALL                             R19 2 1
      277 SETTABLEKS                       R19 R18 K50 ["separation"]
      279 SETTABLEKS                       R9 R18 K53 ["minTextLabelWidth"]
      281 LOADK                            R21 K13 ["AccessoriesSettings"]
      282 LOADK                            R22 K77 ["AccessoryScaleSectionLimitBounds"]
      283 NAMECALL                         R19 R1 K15 ["getText"]
      285 CALL                             R19 3 1
      286 SETTABLEKS                       R19 R18 K30 ["text"]
      288 DUPTABLE                         R19 K79 [{"Input"}]
      289 GETUPVAL                         R20 8
      290 GETUPVAL                         R21 14
      291 DUPTABLE                         R22 K81 [{"layoutOrder", "value", "setValue", "text"}]
      292 MOVE                             R23 R3
      293 CALL                             R23 0 1
      294 SETTABLEKS                       R23 R22 K31 ["layoutOrder"]
      296 GETTABLEKS                       R23 R6 K29 ["accessoryScaleLimitBoundsSetting"]
      298 GETTABLEKS                       R23 R23 K21 ["value"]
      300 SETTABLEKS                       R23 R22 K21 ["value"]
      302 GETTABLEKS                       R23 R6 K29 ["accessoryScaleLimitBoundsSetting"]
      304 GETTABLEKS                       R23 R23 K82 ["set"]
      306 SETTABLEKS                       R23 R22 K80 ["setValue"]
      308 LOADK                            R25 K83 ["General"]
      309 LOADK                            R26 K84 ["PaddingAroundAvatar"]
      310 NAMECALL                         R23 R1 K15 ["getText"]
      312 CALL                             R23 3 1
      313 SETTABLEKS                       R23 R22 K30 ["text"]
      315 CALL                             R20 2 1
      316 SETTABLEKS                       R20 R19 K78 ["Input"]
      318 CALL                             R16 3 1
      319 SETTABLEKS                       R16 R15 K39 ["LimitBoundsTitleFrame"]
      321 CALL                             R12 3 -1
      322 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Components"]
       33 GETTABLEKS                       R4 R4 K12 ["ExpandableSection"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R5 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Components"]
       49 GETTABLEKS                       R6 R6 K15 ["GenericModeSelector"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K13 ["Packages"]
       56 GETTABLEKS                       R7 R7 K16 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K13 ["Packages"]
       63 GETTABLEKS                       R8 R8 K17 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Src"]
       70 GETTABLEKS                       R9 R9 K7 ["Components"]
       72 GETTABLEKS                       R9 R9 K18 ["TitledComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K7 ["Components"]
       81 GETTABLEKS                       R10 R10 K19 ["Vector3Input"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K6 ["Src"]
       88 GETTABLEKS                       R11 R11 K10 ["Util"]
       90 GETTABLEKS                       R11 R11 K20 ["InvokeKeys"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Src"]
       97 GETTABLEKS                       R12 R12 K10 ["Util"]
       99 GETTABLEKS                       R12 R12 K21 ["selectInputOnRenderFunction"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R4 K22 ["ContextServices"]
      104 GETTABLEKS                       R13 R12 K23 ["Localization"]
      106 GETTABLEKS                       R14 R12 K24 ["Plugin"]
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R16 R0 K6 ["Src"]
      112 GETTABLEKS                       R16 R16 K10 ["Util"]
      114 GETTABLEKS                       R16 R16 K25 ["Telemetry"]
      116 GETTABLEKS                       R16 R16 K26 ["TelemetryContext"]
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
