PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.AvatarSettingsClothingMode.CustomLimit]
        3 JUMPIFNOTEQ                      R0 R1 ; [+11]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K4 ["showBoundingBoxes"]
        9 LOADB                            R3 1
       10 LOADK                            R4 K5 ["Clothing"]
       11 NAMECALL                         R0 R0 K6 ["Invoke"]
       13 CALL                             R0 4 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETIMPORT                        R1 K8 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       18 JUMPIFNOTEQ                      R0 R1 ; [+10]
       20 GETUPVAL                         R0 1
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K4 ["showBoundingBoxes"]
       24 LOADB                            R3 0
       25 LOADK                            R4 K5 ["Clothing"]
       26 NAMECALL                         R0 R0 K6 ["Invoke"]
       28 CALL                             R0 4 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["showBoundingBoxes"]
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
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["clothingScaleSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_4:
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
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["ClothingSettings"]
       35 LOADK                            R10 K14 ["ClothingScaleSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsClothingMode.CustomLimit]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["ClothingSettings"]
       47 LOADK                            R11 K18 ["ClothingScaleSectionCustomLimitButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 SETLIST                          R5 R6 2 [1]
       55 GETTABLEKS                       R6 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R6 K19 ["clothingSettings"]
       59 GETTABLEKS                       R7 R6 K20 ["clothingScaleSetting"]
       61 GETTABLEKS                       R7 R7 K21 ["value"]
       63 GETIMPORT                        R8 K24 [UDim.new]
       65 LOADN                            R9 0
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       69 CALL                             R8 2 1
       70 GETIMPORT                        R10 K17 [Enum.AvatarSettingsClothingMode.CustomLimit]
       72 JUMPIFEQ                         R7 R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETUPVAL                         R10 6
       77 NAMECALL                         R10 R10 K0 ["use"]
       79 CALL                             R10 1 1
       80 NAMECALL                         R10 R10 K26 ["get"]
       82 CALL                             R10 1 1
       83 GETUPVAL                         R11 3
       84 GETTABLEKS                       R11 R11 K27 ["useEffect"]
       86 NEWCLOSURE                       R12 P0
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R10
       89 CAPTURE                          UPVAL U7
       90 NEWTABLE                         R13 0 2
       92 MOVE                             R14 R7
       93 GETTABLEKS                       R15 R4 K2 ["settings"]
       95 GETTABLEKS                       R15 R15 K19 ["clothingSettings"]
       97 GETTABLEKS                       R15 R15 K28 ["clothingScaleLimitBoundsSetting"]
       99 GETTABLEKS                       R15 R15 K21 ["value"]
      101 SETLIST                          R13 R14 2 [1]
      103 CALL                             R11 2 0
      104 GETUPVAL                         R11 3
      105 GETTABLEKS                       R11 R11 K27 ["useEffect"]
      107 NEWCLOSURE                       R12 P1
      108 CAPTURE                          VAL R10
      109 CAPTURE                          UPVAL U7
      110 NEWTABLE                         R13 0 0
      112 CALL                             R11 2 0
      113 GETUPVAL                         R11 8
      114 GETUPVAL                         R12 9
      115 DUPTABLE                         R13 K33 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
      116 LOADK                            R16 K13 ["ClothingSettings"]
      117 LOADK                            R17 K34 ["ClothingScaleSection"]
      118 NAMECALL                         R14 R1 K15 ["getText"]
      120 CALL                             R14 3 1
      121 SETTABLEKS                       R14 R13 K29 ["text"]
      123 GETTABLEKS                       R14 R0 K30 ["layoutOrder"]
      125 SETTABLEKS                       R14 R13 K30 ["layoutOrder"]
      127 DUPTABLE                         R14 K38 [{"UIListLayout", "ClothingScaleModeSelector", "LimitBoundsTitleFrame"}]
      128 GETUPVAL                         R15 8
      129 LOADK                            R16 K35 ["UIListLayout"]
      130 DUPTABLE                         R17 K40 [{"Padding"}]
      131 GETIMPORT                        R18 K24 [UDim.new]
      133 LOADN                            R19 0
      134 LOADN                            R20 12
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K39 ["Padding"]
      138 CALL                             R15 2 1
      139 SETTABLEKS                       R15 R14 K35 ["UIListLayout"]
      141 GETUPVAL                         R15 8
      142 GETUPVAL                         R16 10
      143 DUPTABLE                         R17 K45 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      144 MOVE                             R18 R3
      145 CALL                             R18 0 1
      146 SETTABLEKS                       R18 R17 K30 ["layoutOrder"]
      148 SETTABLEKS                       R5 R17 K41 ["items"]
      150 SETTABLEKS                       R7 R17 K42 ["selected"]
      152 NEWCLOSURE                       R18 P2
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R6
      156 SETTABLEKS                       R18 R17 K43 ["onItemActivated"]
      158 LOADK                            R20 K13 ["ClothingSettings"]
      159 GETIMPORT                        R22 K12 [Enum.AvatarSettingsClothingMode.PlayerChoice]
      161 JUMPIFNOTEQ                      R7 R22 ; [+3]
      163 LOADK                            R21 K46 ["ClothingScaleSectionPlayerChoiceSubText"]
      164 JUMP                             ; [+1]
      165 LOADK                            R21 K47 ["ClothingScaleSectionCustomLimitSubText"]
      166 NAMECALL                         R18 R1 K15 ["getText"]
      168 CALL                             R18 3 1
      169 SETTABLEKS                       R18 R17 K44 ["subText"]
      171 CALL                             R15 2 1
      172 SETTABLEKS                       R15 R14 K36 ["ClothingScaleModeSelector"]
      174 MOVE                             R15 R9
      175 JUMPIFNOT                        R15 ; [+58]
      176 GETUPVAL                         R15 8
      177 GETUPVAL                         R16 11
      178 DUPTABLE                         R17 K52 [{["layoutOrder"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      179 MOVE                             R18 R3
      180 CALL                             R18 0 1
      181 SETTABLEKS                       R18 R17 K30 ["layoutOrder"]
      183 GETIMPORT                        R18 K24 [UDim.new]
      185 LOADN                            R19 0
      186 LOADN                            R20 4
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K48 ["separation"]
      190 SETTABLEKS                       R8 R17 K51 ["minTextLabelWidth"]
      192 LOADK                            R20 K13 ["ClothingSettings"]
      193 LOADK                            R21 K53 ["ClothingScaleSectionLimitBounds"]
      194 NAMECALL                         R18 R1 K15 ["getText"]
      196 CALL                             R18 3 1
      197 SETTABLEKS                       R18 R17 K29 ["text"]
      199 DUPTABLE                         R18 K55 [{"Input"}]
      200 GETUPVAL                         R19 8
      201 GETUPVAL                         R20 12
      202 DUPTABLE                         R21 K57 [{"layoutOrder", "value", "setValue", "text"}]
      203 MOVE                             R22 R3
      204 CALL                             R22 0 1
      205 SETTABLEKS                       R22 R21 K30 ["layoutOrder"]
      207 GETTABLEKS                       R22 R6 K28 ["clothingScaleLimitBoundsSetting"]
      209 GETTABLEKS                       R22 R22 K21 ["value"]
      211 SETTABLEKS                       R22 R21 K21 ["value"]
      213 GETTABLEKS                       R22 R4 K2 ["settings"]
      215 GETTABLEKS                       R22 R22 K19 ["clothingSettings"]
      217 GETTABLEKS                       R22 R22 K28 ["clothingScaleLimitBoundsSetting"]
      219 GETTABLEKS                       R22 R22 K58 ["set"]
      221 SETTABLEKS                       R22 R21 K56 ["setValue"]
      223 LOADK                            R24 K59 ["General"]
      224 LOADK                            R25 K60 ["PaddingAroundAvatar"]
      225 NAMECALL                         R22 R1 K15 ["getText"]
      227 CALL                             R22 3 1
      228 SETTABLEKS                       R22 R21 K29 ["text"]
      230 CALL                             R19 2 1
      231 SETTABLEKS                       R19 R18 K54 ["Input"]
      233 CALL                             R15 3 1
      234 SETTABLEKS                       R15 R14 K37 ["LimitBoundsTitleFrame"]
      236 CALL                             R11 3 -1
      237 RETURN                           R11 -1

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
       93 GETTABLEKS                       R11 R4 K21 ["ContextServices"]
       95 GETTABLEKS                       R12 R11 K22 ["Localization"]
       97 GETTABLEKS                       R13 R11 K23 ["Plugin"]
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K6 ["Src"]
      103 GETTABLEKS                       R15 R15 K10 ["Util"]
      105 GETTABLEKS                       R15 R15 K24 ["Telemetry"]
      107 GETTABLEKS                       R15 R15 K25 ["TelemetryContext"]
      109 CALL                             R14 1 1
      110 GETTABLEKS                       R15 R7 K26 ["createNextOrder"]
      112 GETTABLEKS                       R16 R6 K27 ["createElement"]
      114 DUPCLOSURE                       R17 K28 [PROTO_4]
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R9
      128 RETURN                           R17 1
