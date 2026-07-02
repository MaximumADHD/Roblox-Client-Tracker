PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["RootPlaceId"]
        3 GETTABLEKS                       R4 R0 K1 ["Id"]
        5 LOADB                            R5 0
        6 NAMECALL                         R1 R1 K2 ["openPlace"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K9 [{["ImageSize"], ["IsDescriptionVisible"] = True, ["OnClick"], ["IsPrivacyVisible"] = False, ["IsDateModifiedVisible"] = False, ["IsDropdownMenuVisible"] = False}]
        7 GETIMPORT                        R6 K12 [UDim2.new]
        9 LOADN                            R7 0
       10 LOADN                            R8 125
       11 LOADN                            R9 0
       12 LOADN                            R10 125
       13 CALL                             R6 4 1
       14 SETTABLEKS                       R6 R5 K1 ["ImageSize"]
       16 DUPCLOSURE                       R6 K13 [PROTO_0]
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R6 R5 K4 ["OnClick"]
       20 CALL                             R3 2 -1
       21 CALL                             R1 -1 -1
       22 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K5 [{"Query", "CellComponent", "CellSize", "FetchItems"}]
        7 GETUPVAL                         R6 3
        8 SETTABLEKS                       R6 R5 K1 ["Query"]
       10 GETUPVAL                         R6 4
       11 SETTABLEKS                       R6 R5 K2 ["CellComponent"]
       13 GETUPVAL                         R6 5
       14 SETTABLEKS                       R6 R5 K3 ["CellSize"]
       16 GETUPVAL                         R6 6
       17 SETTABLEKS                       R6 R5 K4 ["FetchItems"]
       19 CALL                             R3 2 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["HasInternalPermission"]
        5 CALL                             R1 1 1
        6 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        8 LOADK                            R2 K1 ["Must enabled FFlagLuaStartPageStudioTestTemplates and have internal permission to view TestTemplatesPage"]
        9 GETIMPORT                        R0 K3 [assert]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 NAMECALL                         R0 R0 K4 ["use"]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K5 ["createElement"]
       19 GETUPVAL                         R2 4
       20 DUPTABLE                         R3 K15 [{["PageName"] = "TestTemplates", ["Tabs"], ["HideTabs"] = True, ["CanSwapBetweenViews"] = False, ["IsDefaultGridView"] = True, ["HasSearchBar"] = False}]
       21 NEWTABLE                         R4 0 1
       23 DUPTABLE                         R5 K20 [{["Title"], ["FailedTitle"], ["Key"] = "TestTemplates", ["PageComponent"]}]
       24 LOADK                            R8 K21 ["Plugin"]
       25 LOADK                            R9 K22 ["TestTemplatesPage.Title"]
       26 NAMECALL                         R6 R0 K23 ["getText"]
       28 CALL                             R6 3 1
       29 SETTABLEKS                       R6 R5 K16 ["Title"]
       31 LOADK                            R8 K21 ["Plugin"]
       32 LOADK                            R9 K24 ["NoTemplatesToDisplay"]
       33 NAMECALL                         R6 R0 K23 ["getText"]
       35 CALL                             R6 3 1
       36 SETTABLEKS                       R6 R5 K17 ["FailedTitle"]
       38 GETUPVAL                         R6 5
       39 SETTABLEKS                       R6 R5 K19 ["PageComponent"]
       41 SETLIST                          R4 R5 1 [1]
       43 SETTABLEKS                       R4 R3 K8 ["Tabs"]
       45 CALL                             R1 2 -1
       46 RETURN                           R1 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["TypedDash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["join"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R5 K12 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       34 GETTABLEKS                       R5 R5 K14 ["Localization"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K8 ["Src"]
       40 GETTABLEKS                       R7 R7 K15 ["Components"]
       42 GETTABLEKS                       R7 R7 K16 ["NetworkView"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R8 K15 ["Components"]
       51 GETTABLEKS                       R8 R8 K17 ["InfoTile"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Src"]
       58 GETTABLEKS                       R9 R9 K18 ["Foundation"]
       60 GETTABLEKS                       R9 R9 K15 ["Components"]
       62 GETTABLEKS                       R9 R9 K19 ["GamePage"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Src"]
       69 GETTABLEKS                       R10 R10 K20 ["Network"]
       71 GETTABLEKS                       R10 R10 K21 ["DiscoverTestTemplates"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K8 ["Src"]
       78 GETTABLEKS                       R11 R11 K9 ["Util"]
       80 GETTABLEKS                       R11 R11 K22 ["Services"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R10 K23 ["StartPageManager"]
       85 GETTABLEKS                       R12 R10 K24 ["StudioService"]
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K8 ["Src"]
       91 GETTABLEKS                       R14 R14 K25 ["SharedFlags"]
       93 GETTABLEKS                       R14 R14 K26 ["getFFlagLuaStartPageStudioTestTemplates"]
       95 CALL                             R13 1 1
       96 CALL                             R13 0 1
       97 DUPTABLE                         R14 K31 [{["searchKey"] = "TestTemplates", ["pageSize"] = 30}]
       98 GETIMPORT                        R15 K34 [UDim2.new]
      100 LOADN                            R16 0
      101 LOADN                            R17 225
      102 LOADN                            R18 0
      103 LOADN                            R19 252
      104 CALL                             R15 4 1
      105 DUPCLOSURE                       R16 K35 [PROTO_1]
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R11
      110 DUPCLOSURE                       R17 K36 [PROTO_2]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R9
      118 DUPCLOSURE                       R18 K37 [PROTO_3]
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R17
      125 RETURN                           R18 1
