PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["RootPlaceId"]
        3 GETTABLEKS                       R4 R0 K1 ["Id"]
        5 LOADB                            R5 0
        6 NAMECALL                         R1 R1 K2 ["openPlace"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K7 [{"ImageSize", "IsDescriptionVisible", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible"}]
        7 GETIMPORT                        R6 K10 [UDim2.new]
        9 LOADN                            R7 0
       10 LOADN                            R8 125
       11 LOADN                            R9 0
       12 LOADN                            R10 125
       13 CALL                             R6 4 1
       14 SETTABLEKS                       R6 R5 K1 ["ImageSize"]
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K2 ["IsDescriptionVisible"]
       19 DUPCLOSURE                       R6 K11 [PROTO_0]
       20 CAPTURE                          UPVAL U3
       21 SETTABLEKS                       R6 R5 K3 ["OnClick"]
       23 LOADB                            R6 0
       24 SETTABLEKS                       R6 R5 K4 ["IsPrivacyVisible"]
       26 LOADB                            R6 0
       27 SETTABLEKS                       R6 R5 K5 ["IsDateModifiedVisible"]
       29 LOADB                            R6 0
       30 SETTABLEKS                       R6 R5 K6 ["IsDropdownMenuVisible"]
       32 CALL                             R3 2 -1
       33 CALL                             R1 -1 -1
       34 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
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
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R1 R2 K5 ["createElement"]
       19 GETUPVAL                         R2 4
       20 DUPTABLE                         R3 K12 [{"PageName", "Tabs", "HideTabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
       21 LOADK                            R4 K13 ["TestTemplates"]
       22 SETTABLEKS                       R4 R3 K6 ["PageName"]
       24 NEWTABLE                         R4 0 1
       26 DUPTABLE                         R5 K18 [{"Title", "FailedTitle", "Key", "PageComponent"}]
       27 LOADK                            R8 K19 ["Plugin"]
       28 LOADK                            R9 K20 ["TestTemplatesPage.Title"]
       29 NAMECALL                         R6 R0 K21 ["getText"]
       31 CALL                             R6 3 1
       32 SETTABLEKS                       R6 R5 K14 ["Title"]
       34 LOADK                            R8 K19 ["Plugin"]
       35 LOADK                            R9 K22 ["NoTemplatesToDisplay"]
       36 NAMECALL                         R6 R0 K21 ["getText"]
       38 CALL                             R6 3 1
       39 SETTABLEKS                       R6 R5 K15 ["FailedTitle"]
       41 LOADK                            R6 K13 ["TestTemplates"]
       42 SETTABLEKS                       R6 R5 K16 ["Key"]
       44 GETUPVAL                         R6 5
       45 SETTABLEKS                       R6 R5 K17 ["PageComponent"]
       47 SETLIST                          R4 R5 1 [1]
       49 SETTABLEKS                       R4 R3 K7 ["Tabs"]
       51 LOADB                            R4 1
       52 SETTABLEKS                       R4 R3 K8 ["HideTabs"]
       54 LOADB                            R4 0
       55 SETTABLEKS                       R4 R3 K9 ["CanSwapBetweenViews"]
       57 LOADB                            R4 1
       58 SETTABLEKS                       R4 R3 K10 ["IsDefaultGridView"]
       60 LOADB                            R4 0
       61 SETTABLEKS                       R4 R3 K11 ["HasSearchBar"]
       63 CALL                             R1 2 -1
       64 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["TypedDash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["join"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R6 K12 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       34 GETTABLEKS                       R5 R6 K14 ["Localization"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R9 R0 K8 ["Src"]
       40 GETTABLEKS                       R8 R9 K15 ["Components"]
       42 GETTABLEKS                       R7 R8 K16 ["NetworkView"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R10 R0 K8 ["Src"]
       49 GETTABLEKS                       R9 R10 K15 ["Components"]
       51 GETTABLEKS                       R8 R9 K17 ["InfoTile"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R12 R0 K8 ["Src"]
       58 GETTABLEKS                       R11 R12 K18 ["Foundation"]
       60 GETTABLEKS                       R10 R11 K15 ["Components"]
       62 GETTABLEKS                       R9 R10 K19 ["GamePage"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K8 ["Src"]
       69 GETTABLEKS                       R11 R12 K20 ["Network"]
       71 GETTABLEKS                       R10 R11 K21 ["DiscoverTestTemplates"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R13 R0 K8 ["Src"]
       78 GETTABLEKS                       R12 R13 K9 ["Util"]
       80 GETTABLEKS                       R11 R12 K22 ["Services"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R10 K23 ["StartPageManager"]
       85 GETTABLEKS                       R12 R10 K24 ["StudioService"]
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R16 R0 K8 ["Src"]
       91 GETTABLEKS                       R15 R16 K25 ["SharedFlags"]
       93 GETTABLEKS                       R14 R15 K26 ["getFFlagLuaStartPageStudioTestTemplates"]
       95 CALL                             R13 1 1
       96 CALL                             R13 0 1
       97 DUPTABLE                         R14 K29 [{"searchKey", "pageSize"}]
       98 LOADK                            R15 K30 ["TestTemplates"]
       99 SETTABLEKS                       R15 R14 K27 ["searchKey"]
      101 LOADN                            R15 30
      102 SETTABLEKS                       R15 R14 K28 ["pageSize"]
      104 GETIMPORT                        R15 K33 [UDim2.new]
      106 LOADN                            R16 0
      107 LOADN                            R17 225
      108 LOADN                            R18 0
      109 LOADN                            R19 252
      110 CALL                             R15 4 1
      111 DUPCLOSURE                       R16 K34 [PROTO_1]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R11
      116 DUPCLOSURE                       R17 K35 [PROTO_2]
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R9
      124 DUPCLOSURE                       R18 K36 [PROTO_3]
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R17
      131 RETURN                           R18 1
