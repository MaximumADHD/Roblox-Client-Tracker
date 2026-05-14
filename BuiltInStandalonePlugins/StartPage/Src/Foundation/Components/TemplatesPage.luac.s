PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIFNOT                        R1 ; [+33]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R3 R0 K1 ["RootPlaceId"]
        6 GETTABLEKS                       R4 R0 K0 ["Id"]
        8 LOADB                            R5 0
        9 NAMECALL                         R1 R1 K2 ["openPlace"]
       11 CALL                             R1 4 0
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+22]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R3 3
       16 DUPTABLE                         R4 K7 [{"telemetryType", "telemetrySubtype", "action", "name"}]
       17 LOADK                            R5 K8 ["interaction"]
       18 SETTABLEKS                       R5 R4 K3 ["telemetryType"]
       20 LOADK                            R5 K9 ["place_open"]
       21 SETTABLEKS                       R5 R4 K4 ["telemetrySubtype"]
       23 LOADK                            R5 K10 ["templates_page"]
       24 SETTABLEKS                       R5 R4 K5 ["action"]
       26 GETTABLEKS                       R5 R0 K11 ["Name"]
       28 JUMPIF                           R5 ; [+2]
       29 GETTABLEKS                       R5 R0 K0 ["Id"]
       31 SETTABLEKS                       R5 R4 K6 ["name"]
       33 NAMECALL                         R1 R1 K12 ["log"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K7 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible"}]
       11 GETIMPORT                        R7 K10 [UDim2.new]
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
       27 LOADB                            R7 0
       28 SETTABLEKS                       R7 R6 K4 ["IsPrivacyVisible"]
       30 LOADB                            R7 0
       31 SETTABLEKS                       R7 R6 K5 ["IsDateModifiedVisible"]
       33 LOADB                            R7 0
       34 SETTABLEKS                       R7 R6 K6 ["IsDropdownMenuVisible"]
       36 CALL                             R4 2 -1
       37 CALL                             R2 -1 -1
       38 RETURN                           R2 -1

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
        6 DUPTABLE                         R5 K2 [{"Search"}]
        7 LOADK                            R6 K3 ["All"]
        8 SETTABLEKS                       R6 R5 K1 ["Search"]
       10 CALL                             R3 2 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K2 [{"Search"}]
        7 LOADK                            R6 K3 ["Generic"]
        8 SETTABLEKS                       R6 R5 K1 ["Search"]
       10 CALL                             R3 2 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K2 [{"Search"}]
        7 LOADK                            R6 K3 ["Gameplay"]
        8 SETTABLEKS                       R6 R5 K1 ["Search"]
       10 CALL                             R3 2 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K2 [{"Search"}]
        7 LOADK                            R6 K3 ["Theme"]
        8 SETTABLEKS                       R6 R5 K1 ["Search"]
       10 CALL                             R3 2 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K7 [{"PageName", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
        9 LOADK                            R4 K8 ["Templates"]
       10 SETTABLEKS                       R4 R3 K2 ["PageName"]
       12 NEWTABLE                         R4 0 4
       14 DUPTABLE                         R5 K14 [{"Title", "FailedTitle", "Label", "Key", "PageComponent"}]
       15 LOADK                            R8 K15 ["Plugin"]
       16 LOADK                            R9 K16 ["TemplatesPage.All"]
       17 NAMECALL                         R6 R0 K17 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K9 ["Title"]
       22 LOADK                            R8 K15 ["Plugin"]
       23 LOADK                            R9 K18 ["NoTemplatesToDisplay"]
       24 NAMECALL                         R6 R0 K17 ["getText"]
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K10 ["FailedTitle"]
       29 LOADK                            R8 K15 ["Plugin"]
       30 LOADK                            R9 K19 ["TemplatesPage.AllLabel"]
       31 NAMECALL                         R6 R0 K17 ["getText"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R5 K11 ["Label"]
       36 LOADK                            R6 K20 ["All"]
       37 SETTABLEKS                       R6 R5 K12 ["Key"]
       39 GETUPVAL                         R6 3
       40 SETTABLEKS                       R6 R5 K13 ["PageComponent"]
       42 DUPTABLE                         R6 K21 [{"Title", "FailedTitle", "Key", "PageComponent"}]
       43 LOADK                            R9 K15 ["Plugin"]
       44 LOADK                            R10 K22 ["TemplatesPage.Generic"]
       45 NAMECALL                         R7 R0 K17 ["getText"]
       47 CALL                             R7 3 1
       48 SETTABLEKS                       R7 R6 K9 ["Title"]
       50 LOADK                            R9 K15 ["Plugin"]
       51 LOADK                            R10 K18 ["NoTemplatesToDisplay"]
       52 NAMECALL                         R7 R0 K17 ["getText"]
       54 CALL                             R7 3 1
       55 SETTABLEKS                       R7 R6 K10 ["FailedTitle"]
       57 LOADK                            R7 K23 ["Generic"]
       58 SETTABLEKS                       R7 R6 K12 ["Key"]
       60 GETUPVAL                         R7 4
       61 SETTABLEKS                       R7 R6 K13 ["PageComponent"]
       63 DUPTABLE                         R7 K21 [{"Title", "FailedTitle", "Key", "PageComponent"}]
       64 LOADK                            R10 K15 ["Plugin"]
       65 LOADK                            R11 K24 ["TemplatesPage.Gameplay"]
       66 NAMECALL                         R8 R0 K17 ["getText"]
       68 CALL                             R8 3 1
       69 SETTABLEKS                       R8 R7 K9 ["Title"]
       71 LOADK                            R10 K15 ["Plugin"]
       72 LOADK                            R11 K18 ["NoTemplatesToDisplay"]
       73 NAMECALL                         R8 R0 K17 ["getText"]
       75 CALL                             R8 3 1
       76 SETTABLEKS                       R8 R7 K10 ["FailedTitle"]
       78 LOADK                            R8 K25 ["Gameplay"]
       79 SETTABLEKS                       R8 R7 K12 ["Key"]
       81 GETUPVAL                         R8 5
       82 SETTABLEKS                       R8 R7 K13 ["PageComponent"]
       84 DUPTABLE                         R8 K21 [{"Title", "FailedTitle", "Key", "PageComponent"}]
       85 LOADK                            R11 K15 ["Plugin"]
       86 LOADK                            R12 K26 ["TemplatesPage.Theme"]
       87 NAMECALL                         R9 R0 K17 ["getText"]
       89 CALL                             R9 3 1
       90 SETTABLEKS                       R9 R8 K9 ["Title"]
       92 LOADK                            R11 K15 ["Plugin"]
       93 LOADK                            R12 K18 ["NoTemplatesToDisplay"]
       94 NAMECALL                         R9 R0 K17 ["getText"]
       96 CALL                             R9 3 1
       97 SETTABLEKS                       R9 R8 K10 ["FailedTitle"]
       99 LOADK                            R9 K27 ["Theme"]
      100 SETTABLEKS                       R9 R8 K12 ["Key"]
      102 GETUPVAL                         R9 6
      103 SETTABLEKS                       R9 R8 K13 ["PageComponent"]
      105 SETLIST                          R4 R5 4 [1]
      107 SETTABLEKS                       R4 R3 K3 ["Tabs"]
      109 LOADB                            R4 0
      110 SETTABLEKS                       R4 R3 K4 ["CanSwapBetweenViews"]
      112 LOADB                            R4 1
      113 SETTABLEKS                       R4 R3 K5 ["IsDefaultGridView"]
      115 LOADB                            R4 0
      116 SETTABLEKS                       R4 R3 K6 ["HasSearchBar"]
      118 CALL                             R1 2 -1
      119 RETURN                           R1 -1

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
      115 DUPTABLE                         R15 K33 [{"searchKey", "search", "isTemplates", "pageSize"}]
      116 LOADK                            R16 K34 ["Templates"]
      117 SETTABLEKS                       R16 R15 K29 ["searchKey"]
      119 LOADK                            R16 K35 ["All"]
      120 SETTABLEKS                       R16 R15 K30 ["search"]
      122 LOADB                            R16 1
      123 SETTABLEKS                       R16 R15 K31 ["isTemplates"]
      125 LOADN                            R16 20
      126 SETTABLEKS                       R16 R15 K32 ["pageSize"]
      128 GETIMPORT                        R16 K38 [UDim2.new]
      130 LOADN                            R17 0
      131 LOADN                            R18 225
      132 LOADN                            R19 0
      133 LOADN                            R20 252
      134 CALL                             R16 4 1
      135 DUPCLOSURE                       R17 K39 [PROTO_1]
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R14
      143 DUPCLOSURE                       R18 K40 [PROTO_2]
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R10
      151 DUPCLOSURE                       R19 K41 [PROTO_3]
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R4
      155 DUPCLOSURE                       R20 K42 [PROTO_4]
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R4
      159 DUPCLOSURE                       R21 K43 [PROTO_5]
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R4
      163 DUPCLOSURE                       R22 K44 [PROTO_6]
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R4
      167 DUPCLOSURE                       R23 K45 [PROTO_7]
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R22
      175 RETURN                           R23 1
