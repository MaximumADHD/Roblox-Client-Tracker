PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 0
        3 LOADB                            R4 0
        4 LOADB                            R5 0
        5 LOADB                            R6 0
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R7 R7 K0 ["get"]
        9 CALL                             R7 0 -1
       10 NAMECALL                         R0 R0 K1 ["openPlace"]
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 3
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R2 5
       17 DUPTABLE                         R3 K8 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "new_file"}]
       18 NAMECALL                         R0 R0 K9 ["log"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

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
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U11
       36 SETTABLEKS                       R10 R9 K7 ["onActivated"]
       38 SETTABLEKS                       R5 R9 K8 ["onStateChanged"]
       40 DUPTABLE                         R10 K14 [{"PlusIcon", "Text"}]
       41 GETUPVAL                         R11 5
       42 GETTABLEKS                       R11 R11 K5 ["createElement"]
       44 GETUPVAL                         R12 6
       45 DUPTABLE                         R13 K16 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center size-600 radius-circle bg-system-emphasis"}]
       46 MOVE                             R14 R3
       47 CALL                             R14 0 1
       48 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       50 GETUPVAL                         R14 5
       51 GETTABLEKS                       R14 R14 K5 ["createElement"]
       53 GETUPVAL                         R15 12
       54 DUPTABLE                         R16 K21 [{"name", "size", "variant", "style"}]
       55 GETUPVAL                         R17 13
       56 GETTABLEKS                       R17 R17 K22 ["PlusSmall"]
       58 SETTABLEKS                       R17 R16 K17 ["name"]
       60 GETUPVAL                         R17 14
       61 GETTABLEKS                       R17 R17 K23 ["Small"]
       63 SETTABLEKS                       R17 R16 K18 ["size"]
       65 GETUPVAL                         R17 15
       66 GETTABLEKS                       R17 R17 K24 ["Filled"]
       68 SETTABLEKS                       R17 R16 K19 ["variant"]
       70 GETTABLEKS                       R17 R4 K25 ["Color"]
       72 GETTABLEKS                       R17 R17 K26 ["ActionEmphasis"]
       74 GETTABLEKS                       R17 R17 K27 ["Foreground"]
       76 SETTABLEKS                       R17 R16 K20 ["style"]
       78 CALL                             R14 2 -1
       79 CALL                             R11 -1 1
       80 SETTABLEKS                       R11 R10 K12 ["PlusIcon"]
       82 GETTABLEKS                       R12 R0 K28 ["isCollapsed"]
       84 JUMPIFNOT                        R12 ; [+2]
       85 LOADNIL                          R11
       86 JUMP                             ; [+12]
       87 GETUPVAL                         R11 5
       88 GETTABLEKS                       R11 R11 K5 ["createElement"]
       90 GETUPVAL                         R12 16
       91 DUPTABLE                         R13 K30 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis"}]
       92 SETTABLEKS                       R6 R13 K13 ["Text"]
       94 MOVE                             R14 R3
       95 CALL                             R14 0 1
       96 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K13 ["Text"]
      101 CALL                             R7 3 1
      102 GETTABLEKS                       R8 R0 K28 ["isCollapsed"]
      104 JUMPIFNOT                        R8 ; [+19]
      105 GETUPVAL                         R8 5
      106 GETTABLEKS                       R8 R8 K5 ["createElement"]
      108 GETUPVAL                         R9 17
      109 DUPTABLE                         R10 K33 [{"title", "align", "LayoutOrder"}]
      110 SETTABLEKS                       R6 R10 K31 ["title"]
      112 GETUPVAL                         R11 18
      113 GETTABLEKS                       R11 R11 K34 ["Center"]
      115 SETTABLEKS                       R11 R10 K32 ["align"]
      117 GETTABLEKS                       R11 R0 K6 ["LayoutOrder"]
      119 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      121 MOVE                             R11 R7
      122 CALL                             R8 3 -1
      123 RETURN                           R8 -1
      124 RETURN                           R7 1

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
       40 GETTABLEKS                       R7 R5 K16 ["Text"]
       42 GETTABLEKS                       R8 R5 K17 ["Icon"]
       44 GETTABLEKS                       R9 R5 K18 ["Tooltip"]
       46 GETTABLEKS                       R10 R5 K19 ["Enums"]
       48 GETTABLEKS                       R10 R10 K20 ["PopoverAlign"]
       50 GETTABLEKS                       R11 R5 K19 ["Enums"]
       52 GETTABLEKS                       R11 R11 K21 ["IconName"]
       54 GETTABLEKS                       R12 R5 K19 ["Enums"]
       56 GETTABLEKS                       R12 R12 K22 ["IconVariant"]
       58 GETTABLEKS                       R13 R5 K19 ["Enums"]
       60 GETTABLEKS                       R13 R13 K23 ["IconSize"]
       62 GETTABLEKS                       R14 R5 K24 ["Hooks"]
       64 GETTABLEKS                       R14 R14 K25 ["useTokens"]
       66 GETIMPORT                        R15 K5 [require]
       68 GETTABLEKS                       R16 R0 K13 ["Src"]
       70 GETTABLEKS                       R16 R16 K24 ["Hooks"]
       72 GETTABLEKS                       R16 R16 K26 ["useOnStateChangedCursor"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K5 [require]
       77 GETTABLEKS                       R17 R0 K13 ["Src"]
       79 GETTABLEKS                       R17 R17 K11 ["Util"]
       81 GETTABLEKS                       R17 R17 K27 ["Services"]
       83 CALL                             R16 1 1
       84 GETTABLEKS                       R17 R16 K28 ["StartPageManager"]
       86 GETIMPORT                        R18 K5 [require]
       88 GETTABLEKS                       R19 R0 K13 ["Src"]
       90 GETTABLEKS                       R19 R19 K11 ["Util"]
       92 GETTABLEKS                       R19 R19 K29 ["SessionChannel"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K5 [require]
       97 GETTABLEKS                       R20 R0 K13 ["Src"]
       99 GETTABLEKS                       R20 R20 K30 ["SharedFlags"]
      101 GETTABLEKS                       R20 R20 K31 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
      103 CALL                             R19 1 1
      104 CALL                             R19 0 1
      105 GETIMPORT                        R20 K5 [require]
      107 GETTABLEKS                       R21 R0 K13 ["Src"]
      109 GETTABLEKS                       R21 R21 K11 ["Util"]
      111 GETTABLEKS                       R21 R21 K32 ["Telemetry"]
      113 GETTABLEKS                       R21 R21 K33 ["TelemetryContext"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K5 [require]
      118 GETTABLEKS                       R22 R0 K13 ["Src"]
      120 GETTABLEKS                       R22 R22 K11 ["Util"]
      122 GETTABLEKS                       R22 R22 K32 ["Telemetry"]
      124 GETTABLEKS                       R22 R22 K34 ["StartPageTelemetryEvent"]
      126 CALL                             R21 1 1
      127 GETIMPORT                        R22 K5 [require]
      129 GETTABLEKS                       R23 R0 K13 ["Src"]
      131 GETTABLEKS                       R23 R23 K30 ["SharedFlags"]
      133 GETTABLEKS                       R23 R23 K35 ["getFStringStudioDefaultNewTemplatePlaceId"]
      135 CALL                             R22 1 1
      136 CALL                             R22 0 1
      137 DUPCLOSURE                       R23 K36 [PROTO_1]
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R10
      157 RETURN                           R23 1
