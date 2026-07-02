PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 0
        3 LOADB                            R4 0
        4 NAMECALL                         R0 R0 K0 ["openPlace"]
        6 CALL                             R0 4 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 4
       11 DUPTABLE                         R3 K7 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "new_file"}]
       12 NAMECALL                         R0 R0 K8 ["log"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

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
       24 DUPTABLE                         R9 K11 [{["LayoutOrder"], ["onActivated"], ["onStateChanged"], ["tag"] = "row align-x-left align-y-center gap-medium auto-xy padding-medium radius-medium"}]
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
       39 DUPTABLE                         R10 K14 [{"PlusIcon", "Text"}]
       40 GETUPVAL                         R11 5
       41 GETTABLEKS                       R11 R11 K5 ["createElement"]
       43 GETUPVAL                         R12 6
       44 DUPTABLE                         R13 K16 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center size-600 radius-circle bg-system-emphasis"}]
       45 MOVE                             R14 R3
       46 CALL                             R14 0 1
       47 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       49 GETUPVAL                         R15 11
       50 JUMPIFNOT                        R15 ; [+30]
       51 GETUPVAL                         R14 5
       52 GETTABLEKS                       R14 R14 K5 ["createElement"]
       54 GETUPVAL                         R15 12
       55 DUPTABLE                         R16 K21 [{"name", "size", "variant", "style"}]
       56 GETUPVAL                         R17 13
       57 GETTABLEKS                       R17 R17 K22 ["PlusSmall"]
       59 SETTABLEKS                       R17 R16 K17 ["name"]
       61 GETUPVAL                         R17 14
       62 GETTABLEKS                       R17 R17 K23 ["Small"]
       64 SETTABLEKS                       R17 R16 K18 ["size"]
       66 GETUPVAL                         R17 15
       67 GETTABLEKS                       R17 R17 K24 ["Filled"]
       69 SETTABLEKS                       R17 R16 K19 ["variant"]
       71 GETTABLEKS                       R17 R4 K25 ["Color"]
       73 GETTABLEKS                       R17 R17 K26 ["ActionEmphasis"]
       75 GETTABLEKS                       R17 R17 K27 ["Foreground"]
       77 SETTABLEKS                       R17 R16 K20 ["style"]
       79 CALL                             R14 2 1
       80 JUMP                             ; [+14]
       81 GETUPVAL                         R14 5
       82 GETTABLEKS                       R14 R14 K5 ["createElement"]
       84 GETUPVAL                         R15 16
       85 DUPTABLE                         R16 K32 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Standard/Plus.png", ["tag"] = "size-300", ["imageStyle"]}]
       86 GETTABLEKS                       R17 R4 K25 ["Color"]
       88 GETTABLEKS                       R17 R17 K26 ["ActionEmphasis"]
       90 GETTABLEKS                       R17 R17 K27 ["Foreground"]
       92 SETTABLEKS                       R17 R16 K31 ["imageStyle"]
       94 CALL                             R14 2 1
       95 CALL                             R11 3 1
       96 SETTABLEKS                       R11 R10 K12 ["PlusIcon"]
       98 GETTABLEKS                       R12 R0 K33 ["isCollapsed"]
      100 JUMPIFNOT                        R12 ; [+2]
      101 LOADNIL                          R11
      102 JUMP                             ; [+12]
      103 GETUPVAL                         R11 5
      104 GETTABLEKS                       R11 R11 K5 ["createElement"]
      106 GETUPVAL                         R12 17
      107 DUPTABLE                         R13 K35 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis"}]
      108 SETTABLEKS                       R6 R13 K13 ["Text"]
      110 MOVE                             R14 R3
      111 CALL                             R14 0 1
      112 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K13 ["Text"]
      117 CALL                             R7 3 1
      118 GETTABLEKS                       R8 R0 K33 ["isCollapsed"]
      120 JUMPIFNOT                        R8 ; [+19]
      121 GETUPVAL                         R8 5
      122 GETTABLEKS                       R8 R8 K5 ["createElement"]
      124 GETUPVAL                         R9 18
      125 DUPTABLE                         R10 K38 [{"title", "align", "LayoutOrder"}]
      126 SETTABLEKS                       R6 R10 K36 ["title"]
      128 GETUPVAL                         R11 19
      129 GETTABLEKS                       R11 R11 K39 ["Center"]
      131 SETTABLEKS                       R11 R10 K37 ["align"]
      133 GETTABLEKS                       R11 R0 K6 ["LayoutOrder"]
      135 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      137 MOVE                             R11 R7
      138 CALL                             R8 3 -1
      139 RETURN                           R8 -1
      140 RETURN                           R7 1

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
