PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIFNOT                        R1 ; [+24]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R3 R0 K1 ["RootPlaceId"]
        6 GETTABLEKS                       R4 R0 K0 ["Id"]
        8 LOADB                            R5 0
        9 NAMECALL                         R1 R1 K2 ["openPlace"]
       11 CALL                             R1 4 0
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+13]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R3 3
       16 DUPTABLE                         R4 K10 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "place_open", ["action"] = "templates_page", ["name"]}]
       17 GETTABLEKS                       R5 R0 K11 ["Name"]
       19 JUMPIF                           R5 ; [+2]
       20 GETTABLEKS                       R5 R0 K0 ["Id"]
       22 SETTABLEKS                       R5 R4 K9 ["name"]
       24 NAMECALL                         R1 R1 K12 ["log"]
       26 CALL                             R1 3 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K8 [{["ImageSize"], ["OnClick"], ["IsPrivacyVisible"] = False, ["IsDateModifiedVisible"] = False, ["IsDropdownMenuVisible"] = False}]
       11 GETIMPORT                        R7 K11 [UDim2.new]
       13 LOADN                            R8 0
       14 LOADN                            R9 200
       15 LOADN                            R10 0
       16 LOADN                            R11 200
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K2 ["ImageSize"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U6
       25 SETTABLEKS                       R7 R6 K3 ["OnClick"]
       27 CALL                             R4 2 -1
       28 CALL                             R2 -1 -1
       29 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K5 [{"Query", "CellComponent", "CellSize", "FetchItems"}]
        7 GETUPVAL                         R6 2
        8 GETUPVAL                         R7 3
        9 DUPTABLE                         R8 K7 [{"search"}]
       10 GETTABLEKS                       R9 R0 K8 ["Search"]
       12 SETTABLEKS                       R9 R8 K6 ["search"]
       14 CALL                             R6 2 1
       15 SETTABLEKS                       R6 R5 K1 ["Query"]
       17 GETUPVAL                         R6 4
       18 SETTABLEKS                       R6 R5 K2 ["CellComponent"]
       20 GETUPVAL                         R6 5
       21 SETTABLEKS                       R6 R5 K3 ["CellSize"]
       23 GETUPVAL                         R6 6
       24 SETTABLEKS                       R6 R5 K4 ["FetchItems"]
       26 CALL                             R3 2 -1
       27 CALL                             R1 -1 -1
       28 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K3 [{["Search"] = "All"}]
        7 CALL                             R3 2 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K3 [{["Search"] = "Generic"}]
        7 CALL                             R3 2 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K3 [{["Search"] = "Gameplay"}]
        7 CALL                             R3 2 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K3 [{["Search"] = "Theme"}]
        7 CALL                             R3 2 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K10 [{["PageName"] = "Templates", ["Tabs"], ["CanSwapBetweenViews"] = False, ["IsDefaultGridView"] = True, ["HasSearchBar"] = False}]
        9 NEWTABLE                         R4 0 4
       11 DUPTABLE                         R5 K17 [{["Title"], ["FailedTitle"], ["Label"], ["Key"] = "All", ["PageComponent"]}]
       12 LOADK                            R8 K18 ["Plugin"]
       13 LOADK                            R9 K19 ["TemplatesPage.All"]
       14 NAMECALL                         R6 R0 K20 ["getText"]
       16 CALL                             R6 3 1
       17 SETTABLEKS                       R6 R5 K11 ["Title"]
       19 LOADK                            R8 K18 ["Plugin"]
       20 LOADK                            R9 K21 ["NoTemplatesToDisplay"]
       21 NAMECALL                         R6 R0 K20 ["getText"]
       23 CALL                             R6 3 1
       24 SETTABLEKS                       R6 R5 K12 ["FailedTitle"]
       26 LOADK                            R8 K18 ["Plugin"]
       27 LOADK                            R9 K22 ["TemplatesPage.AllLabel"]
       28 NAMECALL                         R6 R0 K20 ["getText"]
       30 CALL                             R6 3 1
       31 SETTABLEKS                       R6 R5 K13 ["Label"]
       33 GETUPVAL                         R6 3
       34 SETTABLEKS                       R6 R5 K16 ["PageComponent"]
       36 DUPTABLE                         R6 K24 [{["Title"], ["FailedTitle"], ["Key"] = "Generic", ["PageComponent"]}]
       37 LOADK                            R9 K18 ["Plugin"]
       38 LOADK                            R10 K25 ["TemplatesPage.Generic"]
       39 NAMECALL                         R7 R0 K20 ["getText"]
       41 CALL                             R7 3 1
       42 SETTABLEKS                       R7 R6 K11 ["Title"]
       44 LOADK                            R9 K18 ["Plugin"]
       45 LOADK                            R10 K21 ["NoTemplatesToDisplay"]
       46 NAMECALL                         R7 R0 K20 ["getText"]
       48 CALL                             R7 3 1
       49 SETTABLEKS                       R7 R6 K12 ["FailedTitle"]
       51 GETUPVAL                         R7 4
       52 SETTABLEKS                       R7 R6 K16 ["PageComponent"]
       54 DUPTABLE                         R7 K27 [{["Title"], ["FailedTitle"], ["Key"] = "Gameplay", ["PageComponent"]}]
       55 LOADK                            R10 K18 ["Plugin"]
       56 LOADK                            R11 K28 ["TemplatesPage.Gameplay"]
       57 NAMECALL                         R8 R0 K20 ["getText"]
       59 CALL                             R8 3 1
       60 SETTABLEKS                       R8 R7 K11 ["Title"]
       62 LOADK                            R10 K18 ["Plugin"]
       63 LOADK                            R11 K21 ["NoTemplatesToDisplay"]
       64 NAMECALL                         R8 R0 K20 ["getText"]
       66 CALL                             R8 3 1
       67 SETTABLEKS                       R8 R7 K12 ["FailedTitle"]
       69 GETUPVAL                         R8 5
       70 SETTABLEKS                       R8 R7 K16 ["PageComponent"]
       72 DUPTABLE                         R8 K30 [{["Title"], ["FailedTitle"], ["Key"] = "Theme", ["PageComponent"]}]
       73 LOADK                            R11 K18 ["Plugin"]
       74 LOADK                            R12 K31 ["TemplatesPage.Theme"]
       75 NAMECALL                         R9 R0 K20 ["getText"]
       77 CALL                             R9 3 1
       78 SETTABLEKS                       R9 R8 K11 ["Title"]
       80 LOADK                            R11 K18 ["Plugin"]
       81 LOADK                            R12 K21 ["NoTemplatesToDisplay"]
       82 NAMECALL                         R9 R0 K20 ["getText"]
       84 CALL                             R9 3 1
       85 SETTABLEKS                       R9 R8 K12 ["FailedTitle"]
       87 GETUPVAL                         R9 6
       88 SETTABLEKS                       R9 R8 K16 ["PageComponent"]
       90 SETLIST                          R4 R5 4 [1]
       92 SETTABLEKS                       R4 R3 K4 ["Tabs"]
       94 CALL                             R1 2 -1
       95 RETURN                           R1 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["SharedFlags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Dash"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["join"]
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Packages"]
       37 GETTABLEKS                       R6 R6 K13 ["Framework"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       42 GETTABLEKS                       R6 R6 K15 ["Localization"]
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R0 K8 ["Src"]
       48 GETTABLEKS                       R8 R8 K16 ["Components"]
       50 GETTABLEKS                       R8 R8 K17 ["NetworkView"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K8 ["Src"]
       57 GETTABLEKS                       R9 R9 K16 ["Components"]
       59 GETTABLEKS                       R9 R9 K18 ["InfoTile"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R10 R0 K8 ["Src"]
       66 GETTABLEKS                       R10 R10 K19 ["Foundation"]
       68 GETTABLEKS                       R10 R10 K16 ["Components"]
       70 GETTABLEKS                       R10 R10 K20 ["GamePage"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R11 R0 K8 ["Src"]
       77 GETTABLEKS                       R11 R11 K21 ["Network"]
       79 GETTABLEKS                       R11 R11 K22 ["DiscoverExperiences"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K5 [require]
       84 GETTABLEKS                       R12 R0 K8 ["Src"]
       86 GETTABLEKS                       R12 R12 K23 ["Util"]
       88 GETTABLEKS                       R12 R12 K24 ["Services"]
       90 CALL                             R11 1 1
       91 GETTABLEKS                       R12 R11 K25 ["StartPageManager"]
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K8 ["Src"]
       97 GETTABLEKS                       R14 R14 K23 ["Util"]
       99 GETTABLEKS                       R14 R14 K26 ["Telemetry"]
      101 GETTABLEKS                       R14 R14 K27 ["TelemetryContext"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K8 ["Src"]
      108 GETTABLEKS                       R15 R15 K23 ["Util"]
      110 GETTABLEKS                       R15 R15 K26 ["Telemetry"]
      112 GETTABLEKS                       R15 R15 K28 ["StartPageTelemetryEvent"]
      114 CALL                             R14 1 1
      115 DUPTABLE                         R15 K37 [{["searchKey"] = "Templates", ["search"] = "All", ["isTemplates"] = True, ["pageSize"] = 20}]
      116 GETIMPORT                        R16 K40 [UDim2.new]
      118 LOADN                            R17 0
      119 LOADN                            R18 225
      120 LOADN                            R19 0
      121 LOADN                            R20 252
      122 CALL                             R16 4 1
      123 DUPCLOSURE                       R17 K41 [PROTO_1]
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R14
      131 DUPCLOSURE                       R18 K42 [PROTO_2]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R10
      139 DUPCLOSURE                       R19 K43 [PROTO_3]
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R4
      143 DUPCLOSURE                       R20 K44 [PROTO_4]
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R4
      147 DUPCLOSURE                       R21 K45 [PROTO_5]
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R4
      151 DUPCLOSURE                       R22 K46 [PROTO_6]
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R4
      155 DUPCLOSURE                       R23 K47 [PROTO_7]
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R22
      163 RETURN                           R23 1
