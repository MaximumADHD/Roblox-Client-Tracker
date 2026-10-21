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
       49 GETUPVAL                         R14 5
       50 GETTABLEKS                       R14 R14 K5 ["createElement"]
       52 GETUPVAL                         R15 11
       53 DUPTABLE                         R16 K21 [{"name", "size", "variant", "style"}]
       54 GETUPVAL                         R17 12
       55 GETTABLEKS                       R17 R17 K22 ["PlusSmall"]
       57 SETTABLEKS                       R17 R16 K17 ["name"]
       59 GETUPVAL                         R17 13
       60 GETTABLEKS                       R17 R17 K23 ["Small"]
       62 SETTABLEKS                       R17 R16 K18 ["size"]
       64 GETUPVAL                         R17 14
       65 GETTABLEKS                       R17 R17 K24 ["Filled"]
       67 SETTABLEKS                       R17 R16 K19 ["variant"]
       69 GETTABLEKS                       R17 R4 K25 ["Color"]
       71 GETTABLEKS                       R17 R17 K26 ["ActionEmphasis"]
       73 GETTABLEKS                       R17 R17 K27 ["Foreground"]
       75 SETTABLEKS                       R17 R16 K20 ["style"]
       77 CALL                             R14 2 -1
       78 CALL                             R11 -1 1
       79 SETTABLEKS                       R11 R10 K12 ["PlusIcon"]
       81 GETTABLEKS                       R12 R0 K28 ["isCollapsed"]
       83 JUMPIFNOT                        R12 ; [+2]
       84 LOADNIL                          R11
       85 JUMP                             ; [+12]
       86 GETUPVAL                         R11 5
       87 GETTABLEKS                       R11 R11 K5 ["createElement"]
       89 GETUPVAL                         R12 15
       90 DUPTABLE                         R13 K30 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis"}]
       91 SETTABLEKS                       R6 R13 K13 ["Text"]
       93 MOVE                             R14 R3
       94 CALL                             R14 0 1
       95 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K13 ["Text"]
      100 CALL                             R7 3 1
      101 GETTABLEKS                       R8 R0 K28 ["isCollapsed"]
      103 JUMPIFNOT                        R8 ; [+19]
      104 GETUPVAL                         R8 5
      105 GETTABLEKS                       R8 R8 K5 ["createElement"]
      107 GETUPVAL                         R9 16
      108 DUPTABLE                         R10 K33 [{"title", "align", "LayoutOrder"}]
      109 SETTABLEKS                       R6 R10 K31 ["title"]
      111 GETUPVAL                         R11 17
      112 GETTABLEKS                       R11 R11 K34 ["Center"]
      114 SETTABLEKS                       R11 R10 K32 ["align"]
      116 GETTABLEKS                       R11 R0 K6 ["LayoutOrder"]
      118 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      120 MOVE                             R11 R7
      121 CALL                             R8 3 -1
      122 RETURN                           R8 -1
      123 RETURN                           R7 1

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
       90 GETTABLEKS                       R19 R19 K29 ["SharedFlags"]
       92 GETTABLEKS                       R19 R19 K30 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
       94 CALL                             R18 1 1
       95 CALL                             R18 0 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R0 K13 ["Src"]
      100 GETTABLEKS                       R20 R20 K11 ["Util"]
      102 GETTABLEKS                       R20 R20 K31 ["Telemetry"]
      104 GETTABLEKS                       R20 R20 K32 ["TelemetryContext"]
      106 CALL                             R19 1 1
      107 GETIMPORT                        R20 K5 [require]
      109 GETTABLEKS                       R21 R0 K13 ["Src"]
      111 GETTABLEKS                       R21 R21 K11 ["Util"]
      113 GETTABLEKS                       R21 R21 K31 ["Telemetry"]
      115 GETTABLEKS                       R21 R21 K33 ["StartPageTelemetryEvent"]
      117 CALL                             R20 1 1
      118 GETIMPORT                        R21 K5 [require]
      120 GETTABLEKS                       R22 R0 K13 ["Src"]
      122 GETTABLEKS                       R22 R22 K29 ["SharedFlags"]
      124 GETTABLEKS                       R22 R22 K34 ["getFStringStudioDefaultNewTemplatePlaceId"]
      126 CALL                             R21 1 1
      127 CALL                             R21 0 1
      128 DUPCLOSURE                       R22 K35 [PROTO_1]
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R10
      147 RETURN                           R22 1
