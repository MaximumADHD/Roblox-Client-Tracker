PROTO_0:
        0 GETIMPORT                        R1 K2 [NumberRange.new]
        2 GETTABLEKS                       R3 R0 K3 ["Min"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K4 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K5 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
       10 FASTCALL                         MATH_CLAMP ; [+2]
       11 GETIMPORT                        R2 K8 [math.clamp]
       13 CALL                             R2 3 1
       14 GETTABLEKS                       R4 R0 K9 ["Max"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K5 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
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
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["bodyScaleSetting"]
       16 GETTABLEKS                       R1 R2 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["bodyScaleCustomHeight"]
        3 GETTABLEKS                       R1 R2 K1 ["set"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_3:
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
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsScaleMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["BodySettings"]
       40 LOADK                            R10 K14 ["ScaleSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsScaleMode.CustomScale]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["BodySettings"]
       52 LOADK                            R11 K18 ["ScaleSectionCustomScaleButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 SETLIST                          R5 R6 2 [1]
       60 GETTABLEKS                       R7 R4 K2 ["settings"]
       62 GETTABLEKS                       R6 R7 K19 ["bodySettings"]
       64 GETTABLEKS                       R8 R6 K20 ["bodyScaleSetting"]
       66 GETTABLEKS                       R7 R8 K21 ["value"]
       68 GETIMPORT                        R8 K24 [UDim.new]
       70 LOADN                            R9 0
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       74 CALL                             R8 2 1
       75 GETIMPORT                        R10 K17 [Enum.AvatarSettingsScaleMode.CustomScale]
       77 JUMPIFEQ                         R7 R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 GETUPVAL                         R10 7
       82 GETUPVAL                         R11 8
       83 DUPTABLE                         R12 K29 [{"text", "layoutOrder", "showWarning"}]
       84 LOADK                            R15 K13 ["BodySettings"]
       85 LOADK                            R16 K30 ["ScaleSection"]
       86 NAMECALL                         R13 R1 K15 ["getText"]
       88 CALL                             R13 3 1
       89 SETTABLEKS                       R13 R12 K26 ["text"]
       91 GETTABLEKS                       R13 R0 K27 ["layoutOrder"]
       93 SETTABLEKS                       R13 R12 K27 ["layoutOrder"]
       95 LOADB                            R13 1
       96 SETTABLEKS                       R13 R12 K28 ["showWarning"]
       98 DUPTABLE                         R13 K33 [{"ScaleModeSelector", "HeightSetting"}]
       99 GETUPVAL                         R14 7
      100 GETUPVAL                         R15 9
      101 DUPTABLE                         R16 K38 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      102 MOVE                             R17 R3
      103 CALL                             R17 0 1
      104 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      106 SETTABLEKS                       R5 R16 K34 ["items"]
      108 SETTABLEKS                       R7 R16 K35 ["selected"]
      110 GETUPVAL                         R18 1
      111 CALL                             R18 0 1
      112 JUMPIFNOT                        R18 ; [+5]
      113 NEWCLOSURE                       R17 P0
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R6
      117 JUMP                             ; [+4]
      118 GETTABLEKS                       R18 R6 K20 ["bodyScaleSetting"]
      120 GETTABLEKS                       R17 R18 K39 ["set"]
      122 SETTABLEKS                       R17 R16 K36 ["onItemActivated"]
      124 LOADK                            R19 K13 ["BodySettings"]
      125 GETIMPORT                        R21 K12 [Enum.AvatarSettingsScaleMode.PlayerChoice]
      127 JUMPIFNOTEQ                      R7 R21 ; [+3]
      129 LOADK                            R20 K40 ["ScaleSectionPlayerChoiceSubText"]
      130 JUMP                             ; [+1]
      131 LOADK                            R20 K41 ["ScaleSectionCustomScaleSubText"]
      132 NAMECALL                         R17 R1 K15 ["getText"]
      134 CALL                             R17 3 1
      135 SETTABLEKS                       R17 R16 K37 ["subText"]
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K31 ["ScaleModeSelector"]
      140 MOVE                             R14 R9
      141 JUMPIFNOT                        R14 ; [+111]
      142 GETUPVAL                         R14 7
      143 GETUPVAL                         R15 10
      144 DUPTABLE                         R16 K44 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      145 SETTABLEKS                       R8 R16 K42 ["minTextLabelWidth"]
      147 LOADK                            R17 K45 ["AvatarSettings-LeftTextPrimary"]
      148 SETTABLEKS                       R17 R16 K43 ["textLabelTags"]
      150 LOADK                            R19 K13 ["BodySettings"]
      151 LOADK                            R20 K46 ["ScaleHeight"]
      152 NAMECALL                         R17 R1 K15 ["getText"]
      154 CALL                             R17 3 1
      155 SETTABLEKS                       R17 R16 K26 ["text"]
      157 MOVE                             R17 R3
      158 CALL                             R17 0 1
      159 SETTABLEKS                       R17 R16 K27 ["layoutOrder"]
      161 DUPTABLE                         R17 K48 [{"Content"}]
      162 GETUPVAL                         R18 7
      163 GETUPVAL                         R19 11
      164 DUPTABLE                         R20 K57 [{"snapIncrement", "roundToTenths", "min", "max", "inputFieldText", "numberRange", "setNumberRange", "toggleRangeProps"}]
      165 LOADK                            R21 K58 [0.1]
      166 SETTABLEKS                       R21 R20 K49 ["snapIncrement"]
      168 LOADB                            R21 1
      169 SETTABLEKS                       R21 R20 K50 ["roundToTenths"]
      171 GETUPVAL                         R22 6
      172 GETTABLEKS                       R21 R22 K59 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
      174 SETTABLEKS                       R21 R20 K51 ["min"]
      176 GETUPVAL                         R22 6
      177 GETTABLEKS                       R21 R22 K60 ["BODYSCALECUSTOMHEIGHT_SLIDERMAXVALUE"]
      179 SETTABLEKS                       R21 R20 K52 ["max"]
      181 LOADK                            R23 K61 ["General"]
      182 LOADK                            R24 K62 ["studs"]
      183 NAMECALL                         R21 R1 K15 ["getText"]
      185 CALL                             R21 3 1
      186 SETTABLEKS                       R21 R20 K53 ["inputFieldText"]
      188 GETTABLEKS                       R23 R6 K63 ["bodyScaleCustomHeight"]
      190 GETTABLEKS                       R22 R23 K21 ["value"]
      192 GETIMPORT                        R23 K65 [NumberRange.new]
      194 GETTABLEKS                       R25 R22 K66 ["Min"]
      196 GETUPVAL                         R27 6
      197 GETTABLEKS                       R26 R27 K59 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
      199 GETUPVAL                         R28 6
      200 GETTABLEKS                       R27 R28 K67 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
      202 FASTCALL                         MATH_CLAMP ; [+2]
      203 GETIMPORT                        R24 K70 [math.clamp]
      205 CALL                             R24 3 1
      206 GETTABLEKS                       R26 R22 K71 ["Max"]
      208 GETUPVAL                         R28 6
      209 GETTABLEKS                       R27 R28 K59 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
      211 GETUPVAL                         R29 6
      212 GETTABLEKS                       R28 R29 K67 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
      214 FASTCALL                         MATH_CLAMP ; [+2]
      215 GETIMPORT                        R25 K70 [math.clamp]
      217 CALL                             R25 3 1
      218 CALL                             R23 2 1
      219 MOVE                             R21 R23
      220 SETTABLEKS                       R21 R20 K54 ["numberRange"]
      222 NEWCLOSURE                       R21 P1
      223 CAPTURE                          VAL R6
      224 CAPTURE                          UPVAL U12
      225 SETTABLEKS                       R21 R20 K55 ["setNumberRange"]
      227 DUPTABLE                         R21 K75 [{"toggleText", "toggleValue", "setToggleValue"}]
      228 LOADK                            R24 K13 ["BodySettings"]
      229 LOADK                            R25 K76 ["ScaleSetMinAndMaxToggle"]
      230 NAMECALL                         R22 R1 K15 ["getText"]
      232 CALL                             R22 3 1
      233 SETTABLEKS                       R22 R21 K72 ["toggleText"]
      235 GETTABLEKS                       R23 R6 K77 ["bodyScaleCustomHeightSetMinMax"]
      237 GETTABLEKS                       R22 R23 K21 ["value"]
      239 SETTABLEKS                       R22 R21 K73 ["toggleValue"]
      241 GETTABLEKS                       R23 R6 K77 ["bodyScaleCustomHeightSetMinMax"]
      243 GETTABLEKS                       R22 R23 K39 ["set"]
      245 SETTABLEKS                       R22 R21 K74 ["setToggleValue"]
      247 SETTABLEKS                       R21 R20 K56 ["toggleRangeProps"]
      249 CALL                             R18 2 1
      250 SETTABLEKS                       R18 R17 K47 ["Content"]
      252 CALL                             R14 3 1
      253 SETTABLEKS                       R14 R13 K32 ["HeightSetting"]
      255 CALL                             R10 3 -1
      256 RETURN                           R10 -1

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
       72 GETTABLEKS                       R9 R10 K18 ["SliderComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K7 ["Components"]
       81 GETTABLEKS                       R10 R11 K19 ["TitledComponent"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R4 K20 ["ContextServices"]
       86 GETTABLEKS                       R11 R10 K21 ["Localization"]
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R16 R0 K6 ["Src"]
       92 GETTABLEKS                       R15 R16 K10 ["Util"]
       94 GETTABLEKS                       R14 R15 K22 ["Telemetry"]
       96 GETTABLEKS                       R13 R14 K23 ["TelemetryContext"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R16 R0 K6 ["Src"]
      103 GETTABLEKS                       R15 R16 K24 ["Flags"]
      105 GETTABLEKS                       R14 R15 K25 ["getFFlagAddTelemetry"]
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R14 R7 K26 ["createNextOrder"]
      110 GETTABLEKS                       R15 R6 K27 ["createElement"]
      112 DUPCLOSURE                       R16 K28 [PROTO_0]
      113 CAPTURE                          VAL R2
      114 DUPCLOSURE                       R17 K29 [PROTO_3]
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R16
      128 RETURN                           R17 1
