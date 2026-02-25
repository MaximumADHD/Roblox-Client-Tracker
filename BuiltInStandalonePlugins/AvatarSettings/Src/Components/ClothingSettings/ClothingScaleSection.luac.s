PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.AvatarSettingsClothingMode.CustomLimit]
        3 JUMPIFNOTEQ                      R0 R1 ; [+11]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K4 ["showBoundingBoxes"]
        9 LOADB                            R3 1
       10 LOADK                            R4 K5 ["Clothing"]
       11 NAMECALL                         R0 R0 K6 ["Invoke"]
       13 CALL                             R0 4 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETIMPORT                        R1 K8 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       18 JUMPIFNOTEQ                      R0 R1 ; [+10]
       20 GETUPVAL                         R0 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R2 R3 K4 ["showBoundingBoxes"]
       24 LOADB                            R3 0
       25 LOADK                            R4 K5 ["Clothing"]
       26 NAMECALL                         R0 R0 K6 ["Invoke"]
       28 CALL                             R0 4 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["showBoundingBoxes"]
        4 LOADB                            R3 0
        5 LOADK                            R4 K1 ["Clothing"]
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
        4 LOADK                            R3 K0 ["ClothingCustomLimitModeSelected"]
        5 DUPTABLE                         R4 K2 [{"clothingCustomLimitMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["clothingCustomLimitMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["clothingScaleSetting"]
       16 GETTABLEKS                       R1 R2 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_4:
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
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["ClothingSettings"]
       40 LOADK                            R10 K14 ["ClothingScaleSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsClothingMode.CustomLimit]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["ClothingSettings"]
       52 LOADK                            R11 K18 ["ClothingScaleSectionCustomLimitButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 SETLIST                          R5 R6 2 [1]
       60 GETTABLEKS                       R7 R4 K2 ["settings"]
       62 GETTABLEKS                       R6 R7 K19 ["clothingSettings"]
       64 GETTABLEKS                       R8 R6 K20 ["clothingScaleSetting"]
       66 GETTABLEKS                       R7 R8 K21 ["value"]
       68 GETIMPORT                        R8 K24 [UDim.new]
       70 LOADN                            R9 0
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       74 CALL                             R8 2 1
       75 GETIMPORT                        R10 K17 [Enum.AvatarSettingsClothingMode.CustomLimit]
       77 JUMPIFEQ                         R7 R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 GETUPVAL                         R10 7
       82 NAMECALL                         R10 R10 K0 ["use"]
       84 CALL                             R10 1 1
       85 NAMECALL                         R10 R10 K26 ["get"]
       87 CALL                             R10 1 1
       88 GETUPVAL                         R12 4
       89 GETTABLEKS                       R11 R12 K27 ["useEffect"]
       91 NEWCLOSURE                       R12 P0
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R10
       94 CAPTURE                          UPVAL U8
       95 NEWTABLE                         R13 0 2
       97 MOVE                             R14 R7
       98 GETTABLEKS                       R18 R4 K2 ["settings"]
      100 GETTABLEKS                       R17 R18 K19 ["clothingSettings"]
      102 GETTABLEKS                       R16 R17 K28 ["clothingScaleLimitBoundsSetting"]
      104 GETTABLEKS                       R15 R16 K21 ["value"]
      106 SETLIST                          R13 R14 2 [1]
      108 CALL                             R11 2 0
      109 GETUPVAL                         R12 4
      110 GETTABLEKS                       R11 R12 K27 ["useEffect"]
      112 NEWCLOSURE                       R12 P1
      113 CAPTURE                          VAL R10
      114 CAPTURE                          UPVAL U8
      115 NEWTABLE                         R13 0 0
      117 CALL                             R11 2 0
      118 GETUPVAL                         R11 9
      119 GETUPVAL                         R12 10
      120 DUPTABLE                         R13 K32 [{"text", "layoutOrder", "showWarning"}]
      121 LOADK                            R16 K13 ["ClothingSettings"]
      122 LOADK                            R17 K33 ["ClothingScaleSection"]
      123 NAMECALL                         R14 R1 K15 ["getText"]
      125 CALL                             R14 3 1
      126 SETTABLEKS                       R14 R13 K29 ["text"]
      128 GETTABLEKS                       R14 R0 K30 ["layoutOrder"]
      130 SETTABLEKS                       R14 R13 K30 ["layoutOrder"]
      132 LOADB                            R14 1
      133 SETTABLEKS                       R14 R13 K31 ["showWarning"]
      135 DUPTABLE                         R14 K37 [{"UIListLayout", "ClothingScaleModeSelector", "LimitBoundsTitleFrame"}]
      136 GETUPVAL                         R15 9
      137 LOADK                            R16 K34 ["UIListLayout"]
      138 DUPTABLE                         R17 K39 [{"Padding"}]
      139 GETIMPORT                        R18 K24 [UDim.new]
      141 LOADN                            R19 0
      142 LOADN                            R20 12
      143 CALL                             R18 2 1
      144 SETTABLEKS                       R18 R17 K38 ["Padding"]
      146 CALL                             R15 2 1
      147 SETTABLEKS                       R15 R14 K34 ["UIListLayout"]
      149 GETUPVAL                         R15 9
      150 GETUPVAL                         R16 11
      151 DUPTABLE                         R17 K44 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      152 MOVE                             R18 R3
      153 CALL                             R18 0 1
      154 SETTABLEKS                       R18 R17 K30 ["layoutOrder"]
      156 SETTABLEKS                       R5 R17 K40 ["items"]
      158 SETTABLEKS                       R7 R17 K41 ["selected"]
      160 GETUPVAL                         R19 1
      161 CALL                             R19 0 1
      162 JUMPIFNOT                        R19 ; [+5]
      163 NEWCLOSURE                       R18 P2
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R6
      167 JUMP                             ; [+4]
      168 GETTABLEKS                       R19 R6 K20 ["clothingScaleSetting"]
      170 GETTABLEKS                       R18 R19 K45 ["set"]
      172 SETTABLEKS                       R18 R17 K42 ["onItemActivated"]
      174 LOADK                            R20 K13 ["ClothingSettings"]
      175 GETIMPORT                        R22 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
      177 JUMPIFNOTEQ                      R7 R22 ; [+3]
      179 LOADK                            R21 K46 ["ClothingScaleSectionPlayerChoiceSubText"]
      180 JUMP                             ; [+1]
      181 LOADK                            R21 K47 ["ClothingScaleSectionCustomLimitSubText"]
      182 NAMECALL                         R18 R1 K15 ["getText"]
      184 CALL                             R18 3 1
      185 SETTABLEKS                       R18 R17 K43 ["subText"]
      187 CALL                             R15 2 1
      188 SETTABLEKS                       R15 R14 K35 ["ClothingScaleModeSelector"]
      190 MOVE                             R15 R9
      191 JUMPIFNOT                        R15 ; [+61]
      192 GETUPVAL                         R15 9
      193 GETUPVAL                         R16 12
      194 DUPTABLE                         R17 K51 [{"layoutOrder", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      195 MOVE                             R18 R3
      196 CALL                             R18 0 1
      197 SETTABLEKS                       R18 R17 K30 ["layoutOrder"]
      199 GETIMPORT                        R18 K24 [UDim.new]
      201 LOADN                            R19 0
      202 LOADN                            R20 4
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K48 ["separation"]
      206 LOADK                            R18 K52 ["AvatarSettings-LeftTextPrimary"]
      207 SETTABLEKS                       R18 R17 K49 ["textLabelTags"]
      209 SETTABLEKS                       R8 R17 K50 ["minTextLabelWidth"]
      211 LOADK                            R20 K13 ["ClothingSettings"]
      212 LOADK                            R21 K53 ["ClothingScaleSectionLimitBounds"]
      213 NAMECALL                         R18 R1 K15 ["getText"]
      215 CALL                             R18 3 1
      216 SETTABLEKS                       R18 R17 K29 ["text"]
      218 DUPTABLE                         R18 K55 [{"Input"}]
      219 GETUPVAL                         R19 9
      220 GETUPVAL                         R20 13
      221 DUPTABLE                         R21 K57 [{"layoutOrder", "value", "setValue", "text"}]
      222 MOVE                             R22 R3
      223 CALL                             R22 0 1
      224 SETTABLEKS                       R22 R21 K30 ["layoutOrder"]
      226 GETTABLEKS                       R23 R6 K28 ["clothingScaleLimitBoundsSetting"]
      228 GETTABLEKS                       R22 R23 K21 ["value"]
      230 SETTABLEKS                       R22 R21 K21 ["value"]
      232 GETTABLEKS                       R25 R4 K2 ["settings"]
      234 GETTABLEKS                       R24 R25 K19 ["clothingSettings"]
      236 GETTABLEKS                       R23 R24 K28 ["clothingScaleLimitBoundsSetting"]
      238 GETTABLEKS                       R22 R23 K45 ["set"]
      240 SETTABLEKS                       R22 R21 K56 ["setValue"]
      242 LOADK                            R24 K58 ["General"]
      243 LOADK                            R25 K59 ["PaddingAroundAvatar"]
      244 NAMECALL                         R22 R1 K15 ["getText"]
      246 CALL                             R22 3 1
      247 SETTABLEKS                       R22 R21 K29 ["text"]
      249 CALL                             R19 2 1
      250 SETTABLEKS                       R19 R18 K54 ["Input"]
      252 CALL                             R15 3 1
      253 SETTABLEKS                       R15 R14 K36 ["LimitBoundsTitleFrame"]
      255 CALL                             R11 3 -1
      256 RETURN                           R11 -1

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
       93 GETTABLEKS                       R11 R4 K21 ["ContextServices"]
       95 GETTABLEKS                       R12 R11 K22 ["Localization"]
       97 GETTABLEKS                       R13 R11 K23 ["Plugin"]
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R18 R0 K6 ["Src"]
      103 GETTABLEKS                       R17 R18 K10 ["Util"]
      105 GETTABLEKS                       R16 R17 K24 ["Telemetry"]
      107 GETTABLEKS                       R15 R16 K25 ["TelemetryContext"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K5 [require]
      112 GETTABLEKS                       R18 R0 K6 ["Src"]
      114 GETTABLEKS                       R17 R18 K26 ["Flags"]
      116 GETTABLEKS                       R16 R17 K27 ["getFFlagAddTelemetry"]
      118 CALL                             R15 1 1
      119 GETTABLEKS                       R16 R7 K28 ["createNextOrder"]
      121 GETTABLEKS                       R17 R6 K29 ["createElement"]
      123 DUPCLOSURE                       R18 K30 [PROTO_4]
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R9
      138 RETURN                           R18 1
