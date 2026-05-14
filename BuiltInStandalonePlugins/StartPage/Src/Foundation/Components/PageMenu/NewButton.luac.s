PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 0
        3 LOADB                            R4 0
        4 NAMECALL                         R0 R0 K0 ["openPlace"]
        6 CALL                             R0 4 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+15]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 4
       11 DUPTABLE                         R3 K4 [{"telemetryType", "telemetrySubtype", "action"}]
       12 LOADK                            R4 K5 ["interaction"]
       13 SETTABLEKS                       R4 R3 K1 ["telemetryType"]
       15 LOADK                            R4 K6 ["place_open"]
       16 SETTABLEKS                       R4 R3 K2 ["telemetrySubtype"]
       18 LOADK                            R4 K7 ["new_file"]
       19 SETTABLEKS                       R4 R3 K3 ["action"]
       21 NAMECALL                         R0 R0 K8 ["log"]
       23 CALL                             R0 3 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 4
       13 LOADK                            R6 K1 ["PointingHand"]
       14 CALL                             R5 1 1
       15 LOADK                            R8 K2 ["Plugin"]
       16 LOADK                            R9 K3 ["NewExperience"]
       17 NAMECALL                         R6 R2 K4 ["getText"]
       19 CALL                             R6 3 1
       20 GETUPVAL                         R7 5
       21 GETTABLEKS                       R7 R7 K5 ["createElement"]
       23 GETUPVAL                         R8 6
       24 DUPTABLE                         R9 K10 [{"LayoutOrder", "onActivated", "onStateChanged", "tag"}]
       25 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
       27 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U10
       35 SETTABLEKS                       R10 R9 K7 ["onActivated"]
       37 SETTABLEKS                       R5 R9 K8 ["onStateChanged"]
       39 LOADK                            R10 K11 ["row align-x-left align-y-center radius-medium padding-medium gap-medium auto-xy"]
       40 SETTABLEKS                       R10 R9 K9 ["tag"]
       42 DUPTABLE                         R10 K14 [{"PlusIcon", "Text"}]
       43 GETUPVAL                         R11 5
       44 GETTABLEKS                       R11 R11 K5 ["createElement"]
       46 GETUPVAL                         R12 6
       47 DUPTABLE                         R13 K15 [{"LayoutOrder", "tag"}]
       48 MOVE                             R14 R3
       49 CALL                             R14 0 1
       50 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       52 LOADK                            R14 K16 ["size-600 radius-circle bg-system-emphasis row align-x-center align-y-center"]
       53 SETTABLEKS                       R14 R13 K9 ["tag"]
       55 GETUPVAL                         R15 11
       56 JUMPIFNOT                        R15 ; [+30]
       57 GETUPVAL                         R14 5
       58 GETTABLEKS                       R14 R14 K5 ["createElement"]
       60 GETUPVAL                         R15 12
       61 DUPTABLE                         R16 K21 [{"name", "size", "variant", "style"}]
       62 GETUPVAL                         R17 13
       63 GETTABLEKS                       R17 R17 K22 ["PlusSmall"]
       65 SETTABLEKS                       R17 R16 K17 ["name"]
       67 GETUPVAL                         R17 14
       68 GETTABLEKS                       R17 R17 K23 ["Small"]
       70 SETTABLEKS                       R17 R16 K18 ["size"]
       72 GETUPVAL                         R17 15
       73 GETTABLEKS                       R17 R17 K24 ["Filled"]
       75 SETTABLEKS                       R17 R16 K19 ["variant"]
       77 GETTABLEKS                       R17 R4 K25 ["Color"]
       79 GETTABLEKS                       R17 R17 K26 ["ActionEmphasis"]
       81 GETTABLEKS                       R17 R17 K27 ["Foreground"]
       83 SETTABLEKS                       R17 R16 K20 ["style"]
       85 CALL                             R14 2 1
       86 JUMP                             ; [+20]
       87 GETUPVAL                         R14 5
       88 GETTABLEKS                       R14 R14 K5 ["createElement"]
       90 GETUPVAL                         R15 16
       91 DUPTABLE                         R16 K30 [{"Image", "tag", "imageStyle"}]
       92 LOADK                            R17 K31 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/Plus.png"]
       93 SETTABLEKS                       R17 R16 K28 ["Image"]
       95 LOADK                            R17 K32 ["size-300"]
       96 SETTABLEKS                       R17 R16 K9 ["tag"]
       98 GETTABLEKS                       R17 R4 K25 ["Color"]
      100 GETTABLEKS                       R17 R17 K26 ["ActionEmphasis"]
      102 GETTABLEKS                       R17 R17 K27 ["Foreground"]
      104 SETTABLEKS                       R17 R16 K29 ["imageStyle"]
      106 CALL                             R14 2 1
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K12 ["PlusIcon"]
      110 GETTABLEKS                       R12 R0 K33 ["isCollapsed"]
      112 JUMPIFNOT                        R12 ; [+2]
      113 LOADNIL                          R11
      114 JUMP                             ; [+15]
      115 GETUPVAL                         R11 5
      116 GETTABLEKS                       R11 R11 K5 ["createElement"]
      118 GETUPVAL                         R12 17
      119 DUPTABLE                         R13 K34 [{"Text", "LayoutOrder", "tag"}]
      120 SETTABLEKS                       R6 R13 K13 ["Text"]
      122 MOVE                             R14 R3
      123 CALL                             R14 0 1
      124 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      126 LOADK                            R14 K35 ["text-align-x-left auto-xy text-title-medium content-emphasis"]
      127 SETTABLEKS                       R14 R13 K9 ["tag"]
      129 CALL                             R11 2 1
      130 SETTABLEKS                       R11 R10 K13 ["Text"]
      132 CALL                             R7 3 1
      133 GETTABLEKS                       R8 R0 K33 ["isCollapsed"]
      135 JUMPIFNOT                        R8 ; [+19]
      136 GETUPVAL                         R8 5
      137 GETTABLEKS                       R8 R8 K5 ["createElement"]
      139 GETUPVAL                         R9 18
      140 DUPTABLE                         R10 K38 [{"title", "align", "LayoutOrder"}]
      141 SETTABLEKS                       R6 R10 K36 ["title"]
      143 GETUPVAL                         R11 19
      144 GETTABLEKS                       R11 R11 K39 ["Center"]
      146 SETTABLEKS                       R11 R10 K37 ["align"]
      148 GETTABLEKS                       R11 R0 K6 ["LayoutOrder"]
      150 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      152 MOVE                             R11 R7
      153 CALL                             R8 3 -1
      154 RETURN                           R8 -1
      155 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETTABLEKS                       R4 R2 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["counter"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K13 ["Src"]
       33 GETTABLEKS                       R6 R6 K11 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K15 ["View"]
       40 GETTABLEKS                       R7 R5 K16 ["Image"]
       42 GETTABLEKS                       R8 R5 K17 ["Text"]
       44 GETTABLEKS                       R9 R5 K18 ["Icon"]
       46 GETTABLEKS                       R10 R5 K19 ["Tooltip"]
       48 GETTABLEKS                       R11 R5 K20 ["Enums"]
       50 GETTABLEKS                       R11 R11 K21 ["PopoverAlign"]
       52 GETTABLEKS                       R12 R5 K20 ["Enums"]
       54 GETTABLEKS                       R12 R12 K22 ["IconName"]
       56 GETTABLEKS                       R13 R5 K20 ["Enums"]
       58 GETTABLEKS                       R13 R13 K23 ["IconVariant"]
       60 GETTABLEKS                       R14 R5 K20 ["Enums"]
       62 GETTABLEKS                       R14 R14 K24 ["IconSize"]
       64 GETTABLEKS                       R15 R5 K25 ["Hooks"]
       66 GETTABLEKS                       R15 R15 K26 ["useTokens"]
       68 GETIMPORT                        R16 K5 [require]
       70 GETTABLEKS                       R17 R0 K13 ["Src"]
       72 GETTABLEKS                       R17 R17 K25 ["Hooks"]
       74 GETTABLEKS                       R17 R17 K27 ["useOnStateChangedCursor"]
       76 CALL                             R16 1 1
       77 GETIMPORT                        R17 K5 [require]
       79 GETTABLEKS                       R18 R0 K13 ["Src"]
       81 GETTABLEKS                       R18 R18 K11 ["Util"]
       83 GETTABLEKS                       R18 R18 K28 ["Services"]
       85 CALL                             R17 1 1
       86 GETTABLEKS                       R18 R17 K29 ["StartPageManager"]
       88 GETIMPORT                        R19 K5 [require]
       90 GETTABLEKS                       R20 R0 K13 ["Src"]
       92 GETTABLEKS                       R20 R20 K30 ["SharedFlags"]
       94 GETTABLEKS                       R20 R20 K31 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
       96 CALL                             R19 1 1
       97 CALL                             R19 0 1
       98 GETIMPORT                        R20 K5 [require]
      100 GETTABLEKS                       R21 R0 K13 ["Src"]
      102 GETTABLEKS                       R21 R21 K30 ["SharedFlags"]
      104 GETTABLEKS                       R21 R21 K32 ["getFFlagLuaStartPageBuilderIcons"]
      106 CALL                             R20 1 1
      107 CALL                             R20 0 1
      108 GETIMPORT                        R21 K5 [require]
      110 GETTABLEKS                       R22 R0 K13 ["Src"]
      112 GETTABLEKS                       R22 R22 K11 ["Util"]
      114 GETTABLEKS                       R22 R22 K33 ["Telemetry"]
      116 GETTABLEKS                       R22 R22 K34 ["TelemetryContext"]
      118 CALL                             R21 1 1
      119 GETIMPORT                        R22 K5 [require]
      121 GETTABLEKS                       R23 R0 K13 ["Src"]
      123 GETTABLEKS                       R23 R23 K11 ["Util"]
      125 GETTABLEKS                       R23 R23 K33 ["Telemetry"]
      127 GETTABLEKS                       R23 R23 K35 ["StartPageTelemetryEvent"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K5 [require]
      132 GETTABLEKS                       R24 R0 K13 ["Src"]
      134 GETTABLEKS                       R24 R24 K30 ["SharedFlags"]
      136 GETTABLEKS                       R24 R24 K36 ["getFStringStudioDefaultNewTemplatePlaceId"]
      138 CALL                             R23 1 1
      139 CALL                             R23 0 1
      140 DUPCLOSURE                       R24 K37 [PROTO_1]
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R23
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R11
      161 RETURN                           R24 1
