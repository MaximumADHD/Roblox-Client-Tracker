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
        3 JUMPIFEQ                         R1 R2 ; [+24]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+12]
        8 GETUPVAL                         R1 2
        9 LOADK                            R3 K1 ["AccessoriesLimitMethodSelected"]
       10 DUPTABLE                         R4 K3 [{"limitMethod"}]
       11 GETTABLEKS                       R6 R0 K0 ["Id"]
       13 GETTABLEKS                       R5 R6 K4 ["Name"]
       15 SETTABLEKS                       R5 R4 K2 ["limitMethod"]
       17 NAMECALL                         R1 R1 K5 ["logCounter"]
       19 CALL                             R1 3 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K6 ["accessoryScaleLimitMethodSetting"]
       23 GETTABLEKS                       R1 R2 K7 ["set"]
       25 GETTABLEKS                       R2 R0 K0 ["Id"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["useContext"]
       18 GETUPVAL                         R5 5
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R7 R4 K2 ["settings"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       28 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       29 GETIMPORT                        R5 K5 [assert]
       31 CALL                             R5 2 0
       32 NEWTABLE                         R5 0 2
       34 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["AccessoriesSettings"]
       40 LOADK                            R10 K14 ["AccessoryScaleSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["AccessoriesSettings"]
       52 LOADK                            R11 K18 ["AccessoryScaleSectionCustomLimitButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 SETLIST                          R5 R6 2 [1]
       60 GETTABLEKS                       R7 R4 K2 ["settings"]
       62 GETTABLEKS                       R6 R7 K19 ["accessoriesSettings"]
       64 GETTABLEKS                       R8 R6 K20 ["accessoryScaleSetting"]
       66 GETTABLEKS                       R7 R8 K21 ["value"]
       68 GETTABLEKS                       R9 R6 K22 ["accessoryScaleLimitMethodSetting"]
       70 GETTABLEKS                       R8 R9 K21 ["value"]
       72 GETIMPORT                        R9 K25 [UDim.new]
       74 LOADN                            R10 0
       75 GETUPVAL                         R12 6
       76 GETTABLEKS                       R11 R12 K26 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       78 CALL                             R9 2 1
       79 GETUPVAL                         R10 7
       80 NAMECALL                         R10 R10 K0 ["use"]
       82 CALL                             R10 1 1
       83 NAMECALL                         R10 R10 K27 ["get"]
       85 CALL                             R10 1 1
       86 GETUPVAL                         R12 4
       87 GETTABLEKS                       R11 R12 K28 ["useEffect"]
       89 NEWCLOSURE                       R12 P0
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R10
       92 CAPTURE                          UPVAL U8
       93 NEWTABLE                         R13 0 2
       95 MOVE                             R14 R7
       96 GETTABLEKS                       R18 R4 K2 ["settings"]
       98 GETTABLEKS                       R17 R18 K19 ["accessoriesSettings"]
      100 GETTABLEKS                       R16 R17 K29 ["accessoryScaleLimitBoundsSetting"]
      102 GETTABLEKS                       R15 R16 K21 ["value"]
      104 SETLIST                          R13 R14 2 [1]
      106 CALL                             R11 2 0
      107 GETUPVAL                         R12 4
      108 GETTABLEKS                       R11 R12 K28 ["useEffect"]
      110 NEWCLOSURE                       R12 P1
      111 CAPTURE                          VAL R10
      112 CAPTURE                          UPVAL U8
      113 NEWTABLE                         R13 0 0
      115 CALL                             R11 2 0
      116 GETIMPORT                        R12 K17 [Enum.AvatarSettingsAccessoryMode.CustomLimit]
      118 JUMPIFEQ                         R7 R12 ; [+2]
      120 LOADB                            R11 0 +1
      121 LOADB                            R11 1
      122 GETUPVAL                         R12 9
      123 GETUPVAL                         R13 10
      124 DUPTABLE                         R14 K33 [{"text", "layoutOrder", "showWarning"}]
      125 LOADK                            R17 K13 ["AccessoriesSettings"]
      126 LOADK                            R18 K34 ["AccessoryScaleSection"]
      127 NAMECALL                         R15 R1 K15 ["getText"]
      129 CALL                             R15 3 1
      130 SETTABLEKS                       R15 R14 K30 ["text"]
      132 GETTABLEKS                       R15 R0 K31 ["layoutOrder"]
      134 SETTABLEKS                       R15 R14 K31 ["layoutOrder"]
      136 LOADB                            R15 1
      137 SETTABLEKS                       R15 R14 K32 ["showWarning"]
      139 DUPTABLE                         R15 K39 [{"UIListLayout", "AccessoryScaleModeSelector", "LimitMethodTitleFrame", "LimitBoundsTitleFrame"}]
      140 GETUPVAL                         R16 9
      141 LOADK                            R17 K35 ["UIListLayout"]
      142 DUPTABLE                         R18 K41 [{"Padding"}]
      143 GETIMPORT                        R19 K25 [UDim.new]
      145 LOADN                            R20 0
      146 LOADN                            R21 12
      147 CALL                             R19 2 1
      148 SETTABLEKS                       R19 R18 K40 ["Padding"]
      150 CALL                             R16 2 1
      151 SETTABLEKS                       R16 R15 K35 ["UIListLayout"]
      153 GETUPVAL                         R16 9
      154 GETUPVAL                         R17 11
      155 DUPTABLE                         R18 K46 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      156 MOVE                             R19 R3
      157 CALL                             R19 0 1
      158 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      160 SETTABLEKS                       R5 R18 K42 ["items"]
      162 SETTABLEKS                       R7 R18 K43 ["selected"]
      164 GETUPVAL                         R20 1
      165 CALL                             R20 0 1
      166 JUMPIFNOT                        R20 ; [+5]
      167 NEWCLOSURE                       R19 P2
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R6
      171 JUMP                             ; [+4]
      172 GETTABLEKS                       R20 R6 K20 ["accessoryScaleSetting"]
      174 GETTABLEKS                       R19 R20 K47 ["set"]
      176 SETTABLEKS                       R19 R18 K44 ["onItemActivated"]
      178 LOADK                            R21 K13 ["AccessoriesSettings"]
      179 GETIMPORT                        R23 K12 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
      181 JUMPIFNOTEQ                      R7 R23 ; [+3]
      183 LOADK                            R22 K48 ["AccessoryScaleSectionPlayerChoiceSubText"]
      184 JUMP                             ; [+1]
      185 LOADK                            R22 K49 ["AccessoryScaleSectionCustomLimitSubText"]
      186 NAMECALL                         R19 R1 K15 ["getText"]
      188 CALL                             R19 3 1
      189 SETTABLEKS                       R19 R18 K45 ["subText"]
      191 CALL                             R16 2 1
      192 SETTABLEKS                       R16 R15 K36 ["AccessoryScaleModeSelector"]
      194 MOVE                             R16 R11
      195 JUMPIFNOT                        R16 ; [+91]
      196 GETUPVAL                         R16 9
      197 GETUPVAL                         R17 12
      198 DUPTABLE                         R18 K53 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      199 MOVE                             R19 R3
      200 CALL                             R19 0 1
      201 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      203 GETIMPORT                        R19 K25 [UDim.new]
      205 LOADN                            R20 0
      206 LOADN                            R21 4
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K50 ["separation"]
      210 LOADK                            R19 K54 ["AvatarSettings-LeftTextPrimary"]
      211 SETTABLEKS                       R19 R18 K51 ["textLabelTags"]
      213 SETTABLEKS                       R9 R18 K52 ["minTextLabelWidth"]
      215 LOADK                            R21 K13 ["AccessoriesSettings"]
      216 LOADK                            R22 K55 ["AccessoryScaleSectionLimitMethod"]
      217 NAMECALL                         R19 R1 K15 ["getText"]
      219 CALL                             R19 3 1
      220 SETTABLEKS                       R19 R18 K30 ["text"]
      222 DUPTABLE                         R19 K57 [{"LimitMethodSelectInput"}]
      223 GETUPVAL                         R20 9
      224 GETUPVAL                         R21 13
      225 DUPTABLE                         R22 K65 [{"PlaceholderText", "Items", "Size", "OnRenderItem", "UseAutoWidth", "SelectedId", "OnItemActivated"}]
      226 LOADK                            R23 K66 ["Remove"]
      227 SETTABLEKS                       R23 R22 K58 ["PlaceholderText"]
      229 NEWTABLE                         R23 0 2
      231 DUPTABLE                         R24 K8 [{"Id", "Label"}]
      232 GETIMPORT                        R25 K69 [Enum.AvatarSettingsAccessoryLimitMethod.Scale]
      234 SETTABLEKS                       R25 R24 K6 ["Id"]
      236 LOADK                            R27 K13 ["AccessoriesSettings"]
      237 LOADK                            R28 K70 ["AccessoryScaleSectionLimitMethodScale"]
      238 NAMECALL                         R25 R1 K15 ["getText"]
      240 CALL                             R25 3 1
      241 SETTABLEKS                       R25 R24 K7 ["Label"]
      243 DUPTABLE                         R25 K8 [{"Id", "Label"}]
      244 GETIMPORT                        R26 K71 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
      246 SETTABLEKS                       R26 R25 K6 ["Id"]
      248 LOADK                            R28 K13 ["AccessoriesSettings"]
      249 LOADK                            R29 K72 ["AccessoryScaleSectionLimitMethodRemove"]
      250 NAMECALL                         R26 R1 K15 ["getText"]
      252 CALL                             R26 3 1
      253 SETTABLEKS                       R26 R25 K7 ["Label"]
      255 SETLIST                          R23 R24 2 [1]
      257 SETTABLEKS                       R23 R22 K59 ["Items"]
      259 GETIMPORT                        R23 K75 [UDim2.fromOffset]
      261 LOADN                            R24 128
      262 GETUPVAL                         R26 6
      263 GETTABLEKS                       R25 R26 K76 ["STANDARD_HEIGHT"]
      265 CALL                             R23 2 1
      266 SETTABLEKS                       R23 R22 K60 ["Size"]
      268 GETUPVAL                         R23 14
      269 SETTABLEKS                       R23 R22 K61 ["OnRenderItem"]
      271 LOADB                            R23 1
      272 SETTABLEKS                       R23 R22 K62 ["UseAutoWidth"]
      274 SETTABLEKS                       R8 R22 K63 ["SelectedId"]
      276 NEWCLOSURE                       R23 P3
      277 CAPTURE                          VAL R8
      278 CAPTURE                          UPVAL U1
      279 CAPTURE                          VAL R2
      280 CAPTURE                          VAL R6
      281 SETTABLEKS                       R23 R22 K64 ["OnItemActivated"]
      283 CALL                             R20 2 1
      284 SETTABLEKS                       R20 R19 K56 ["LimitMethodSelectInput"]
      286 CALL                             R16 3 1
      287 SETTABLEKS                       R16 R15 K37 ["LimitMethodTitleFrame"]
      289 MOVE                             R16 R11
      290 JUMPIFNOT                        R16 ; [+57]
      291 GETUPVAL                         R16 9
      292 GETUPVAL                         R17 12
      293 DUPTABLE                         R18 K53 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      294 MOVE                             R19 R3
      295 CALL                             R19 0 1
      296 SETTABLEKS                       R19 R18 K31 ["layoutOrder"]
      298 GETIMPORT                        R19 K25 [UDim.new]
      300 LOADN                            R20 0
      301 LOADN                            R21 4
      302 CALL                             R19 2 1
      303 SETTABLEKS                       R19 R18 K50 ["separation"]
      305 LOADK                            R19 K54 ["AvatarSettings-LeftTextPrimary"]
      306 SETTABLEKS                       R19 R18 K51 ["textLabelTags"]
      308 SETTABLEKS                       R9 R18 K52 ["minTextLabelWidth"]
      310 LOADK                            R21 K13 ["AccessoriesSettings"]
      311 LOADK                            R22 K77 ["AccessoryScaleSectionLimitBounds"]
      312 NAMECALL                         R19 R1 K15 ["getText"]
      314 CALL                             R19 3 1
      315 SETTABLEKS                       R19 R18 K30 ["text"]
      317 DUPTABLE                         R19 K79 [{"Input"}]
      318 GETUPVAL                         R20 9
      319 GETUPVAL                         R21 15
      320 DUPTABLE                         R22 K81 [{"layoutOrder", "value", "setValue", "text"}]
      321 MOVE                             R23 R3
      322 CALL                             R23 0 1
      323 SETTABLEKS                       R23 R22 K31 ["layoutOrder"]
      325 GETTABLEKS                       R24 R6 K29 ["accessoryScaleLimitBoundsSetting"]
      327 GETTABLEKS                       R23 R24 K21 ["value"]
      329 SETTABLEKS                       R23 R22 K21 ["value"]
      331 GETTABLEKS                       R24 R6 K29 ["accessoryScaleLimitBoundsSetting"]
      333 GETTABLEKS                       R23 R24 K47 ["set"]
      335 SETTABLEKS                       R23 R22 K80 ["setValue"]
      337 LOADK                            R25 K82 ["General"]
      338 LOADK                            R26 K83 ["PaddingAroundAvatar"]
      339 NAMECALL                         R23 R1 K15 ["getText"]
      341 CALL                             R23 3 1
      342 SETTABLEKS                       R23 R22 K30 ["text"]
      344 CALL                             R20 2 1
      345 SETTABLEKS                       R20 R19 K78 ["Input"]
      347 CALL                             R16 3 1
      348 SETTABLEKS                       R16 R15 K38 ["LimitBoundsTitleFrame"]
      350 CALL                             R12 3 -1
      351 RETURN                           R12 -1

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
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R19 R0 K6 ["Src"]
      123 GETTABLEKS                       R18 R19 K27 ["Flags"]
      125 GETTABLEKS                       R17 R18 K28 ["getFFlagAddTelemetry"]
      127 CALL                             R16 1 1
      128 GETTABLEKS                       R17 R4 K29 ["UI"]
      130 GETTABLEKS                       R18 R17 K30 ["SelectInput"]
      132 GETTABLEKS                       R19 R7 K31 ["createNextOrder"]
      134 GETTABLEKS                       R20 R6 K32 ["createElement"]
      136 DUPCLOSURE                       R21 K33 [PROTO_5]
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R9
      153 RETURN                           R21 1
