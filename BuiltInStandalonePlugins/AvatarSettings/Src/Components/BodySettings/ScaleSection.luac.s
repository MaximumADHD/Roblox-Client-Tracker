PROTO_0:
        0 GETIMPORT                        R1 K2 [NumberRange.new]
        2 GETTABLEKS                       R3 R0 K3 ["Min"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K5 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
       10 FASTCALL                         MATH_CLAMP ; [+2]
       11 GETIMPORT                        R2 K8 [math.clamp]
       13 CALL                             R2 3 1
       14 GETTABLEKS                       R4 R0 K9 ["Max"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K5 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R3 K8 [math.clamp]
       25 CALL                             R3 3 1
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["ScaleModeSelected"]
        5 DUPTABLE                         R4 K2 [{"scaleMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["scaleMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["bodyScaleSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bodyScaleCustomHeight"]
        3 GETTABLEKS                       R1 R1 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_3:
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
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsScaleMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["BodySettings"]
       35 LOADK                            R10 K14 ["ScaleSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsScaleMode.CustomScale]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["BodySettings"]
       47 LOADK                            R11 K18 ["ScaleSectionCustomScaleButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 SETLIST                          R5 R6 2 [1]
       55 GETTABLEKS                       R6 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R6 K19 ["bodySettings"]
       59 GETTABLEKS                       R7 R6 K20 ["bodyScaleSetting"]
       61 GETTABLEKS                       R7 R7 K21 ["value"]
       63 GETIMPORT                        R8 K24 [UDim.new]
       65 LOADN                            R9 0
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       69 CALL                             R8 2 1
       70 GETIMPORT                        R10 K17 [Enum.AvatarSettingsScaleMode.CustomScale]
       72 JUMPIFEQ                         R7 R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETUPVAL                         R10 6
       77 GETUPVAL                         R11 7
       78 DUPTABLE                         R12 K30 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
       79 LOADK                            R15 K13 ["BodySettings"]
       80 LOADK                            R16 K31 ["ScaleSection"]
       81 NAMECALL                         R13 R1 K15 ["getText"]
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K26 ["text"]
       86 GETTABLEKS                       R13 R0 K27 ["layoutOrder"]
       88 SETTABLEKS                       R13 R12 K27 ["layoutOrder"]
       90 DUPTABLE                         R13 K34 [{"ScaleModeSelector", "HeightSetting"}]
       91 GETUPVAL                         R14 6
       92 GETUPVAL                         R15 8
       93 DUPTABLE                         R16 K39 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
       94 MOVE                             R17 R3
       95 CALL                             R17 0 1
       96 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
       98 SETTABLEKS                       R5 R16 K35 ["items"]
      100 SETTABLEKS                       R7 R16 K36 ["selected"]
      102 NEWCLOSURE                       R17 P0
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R6
      106 SETTABLEKS                       R17 R16 K37 ["onItemActivated"]
      108 LOADK                            R19 K13 ["BodySettings"]
      109 GETIMPORT                        R21 K12 [Enum.AvatarSettingsScaleMode.PlayerChoice]
      111 JUMPIFNOTEQ                      R7 R21 ; [+3]
      113 LOADK                            R20 K40 ["ScaleSectionPlayerChoiceSubText"]
      114 JUMP                             ; [+1]
      115 LOADK                            R20 K41 ["ScaleSectionCustomScaleSubText"]
      116 NAMECALL                         R17 R1 K15 ["getText"]
      118 CALL                             R17 3 1
      119 SETTABLEKS                       R17 R16 K38 ["subText"]
      121 CALL                             R14 2 1
      122 SETTABLEKS                       R14 R13 K32 ["ScaleModeSelector"]
      124 MOVE                             R14 R9
      125 JUMPIFNOT                        R14 ; [+102]
      126 GETUPVAL                         R14 6
      127 GETUPVAL                         R15 9
      128 DUPTABLE                         R16 K45 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      129 SETTABLEKS                       R8 R16 K42 ["minTextLabelWidth"]
      131 LOADK                            R19 K13 ["BodySettings"]
      132 LOADK                            R20 K46 ["ScaleHeight"]
      133 NAMECALL                         R17 R1 K15 ["getText"]
      135 CALL                             R17 3 1
      136 SETTABLEKS                       R17 R16 K26 ["text"]
      138 MOVE                             R17 R3
      139 CALL                             R17 0 1
      140 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      142 DUPTABLE                         R17 K48 [{"Content"}]
      143 GETUPVAL                         R18 6
      144 GETUPVAL                         R19 10
      145 DUPTABLE                         R20 K58 [{["snapIncrement"] = 0.1, ["roundToTenths"] = True, ["min"], ["max"], ["inputFieldText"], ["numberRange"], ["setNumberRange"], ["toggleRangeProps"]}]
      146 GETUPVAL                         R21 5
      147 GETTABLEKS                       R21 R21 K59 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
      149 SETTABLEKS                       R21 R20 K52 ["min"]
      151 GETUPVAL                         R21 5
      152 GETTABLEKS                       R21 R21 K60 ["BODYSCALECUSTOMHEIGHT_SLIDERMAXVALUE"]
      154 SETTABLEKS                       R21 R20 K53 ["max"]
      156 LOADK                            R23 K61 ["General"]
      157 LOADK                            R24 K62 ["studs"]
      158 NAMECALL                         R21 R1 K15 ["getText"]
      160 CALL                             R21 3 1
      161 SETTABLEKS                       R21 R20 K54 ["inputFieldText"]
      163 GETTABLEKS                       R22 R6 K63 ["bodyScaleCustomHeight"]
      165 GETTABLEKS                       R22 R22 K21 ["value"]
      167 GETIMPORT                        R23 K65 [NumberRange.new]
      169 GETTABLEKS                       R25 R22 K66 ["Min"]
      171 GETUPVAL                         R26 5
      172 GETTABLEKS                       R26 R26 K59 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
      174 GETUPVAL                         R27 5
      175 GETTABLEKS                       R27 R27 K67 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
      177 FASTCALL                         MATH_CLAMP ; [+2]
      178 GETIMPORT                        R24 K70 [math.clamp]
      180 CALL                             R24 3 1
      181 GETTABLEKS                       R26 R22 K71 ["Max"]
      183 GETUPVAL                         R27 5
      184 GETTABLEKS                       R27 R27 K59 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
      186 GETUPVAL                         R28 5
      187 GETTABLEKS                       R28 R28 K67 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
      189 FASTCALL                         MATH_CLAMP ; [+2]
      190 GETIMPORT                        R25 K70 [math.clamp]
      192 CALL                             R25 3 1
      193 CALL                             R23 2 1
      194 MOVE                             R21 R23
      195 SETTABLEKS                       R21 R20 K55 ["numberRange"]
      197 NEWCLOSURE                       R21 P1
      198 CAPTURE                          VAL R6
      199 CAPTURE                          UPVAL U11
      200 SETTABLEKS                       R21 R20 K56 ["setNumberRange"]
      202 DUPTABLE                         R21 K75 [{"toggleText", "toggleValue", "setToggleValue"}]
      203 LOADK                            R24 K13 ["BodySettings"]
      204 LOADK                            R25 K76 ["ScaleSetMinAndMaxToggle"]
      205 NAMECALL                         R22 R1 K15 ["getText"]
      207 CALL                             R22 3 1
      208 SETTABLEKS                       R22 R21 K72 ["toggleText"]
      210 GETTABLEKS                       R22 R6 K77 ["bodyScaleCustomHeightSetMinMax"]
      212 GETTABLEKS                       R22 R22 K21 ["value"]
      214 SETTABLEKS                       R22 R21 K73 ["toggleValue"]
      216 GETTABLEKS                       R22 R6 K77 ["bodyScaleCustomHeightSetMinMax"]
      218 GETTABLEKS                       R22 R22 K78 ["set"]
      220 SETTABLEKS                       R22 R21 K74 ["setToggleValue"]
      222 SETTABLEKS                       R21 R20 K57 ["toggleRangeProps"]
      224 CALL                             R18 2 1
      225 SETTABLEKS                       R18 R17 K47 ["Content"]
      227 CALL                             R14 3 1
      228 SETTABLEKS                       R14 R13 K33 ["HeightSetting"]
      230 CALL                             R10 3 -1
      231 RETURN                           R10 -1

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
       72 GETTABLEKS                       R9 R9 K18 ["SliderComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K7 ["Components"]
       81 GETTABLEKS                       R10 R10 K19 ["TitledComponent"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R4 K20 ["ContextServices"]
       86 GETTABLEKS                       R11 R10 K21 ["Localization"]
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Src"]
       92 GETTABLEKS                       R13 R13 K10 ["Util"]
       94 GETTABLEKS                       R13 R13 K22 ["Telemetry"]
       96 GETTABLEKS                       R13 R13 K23 ["TelemetryContext"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R7 K24 ["createNextOrder"]
      101 GETTABLEKS                       R14 R6 K25 ["createElement"]
      103 DUPCLOSURE                       R15 K26 [PROTO_0]
      104 CAPTURE                          VAL R2
      105 DUPCLOSURE                       R16 K27 [PROTO_3]
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R15
      118 RETURN                           R16 1
