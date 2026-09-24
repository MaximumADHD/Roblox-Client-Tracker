PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 1
        3 JUMPIF                           R3 ; [+5]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K0 ["getScopeAnalyticsContext"]
        7 CALL                             R2 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 NAMECALL                         R0 R0 K1 ["launchBulkImport"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["sendUploadEvent"]
       16 NEWTABLE                         R1 0 0
       18 DUPTABLE                         R2 K7 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       19 GETUPVAL                         R3 4
       20 SETTABLEKS                       R3 R2 K3 ["ExplorerController"]
       22 GETUPVAL                         R3 5
       23 SETTABLEKS                       R3 R2 K4 ["LayoutController"]
       25 GETUPVAL                         R3 2
       26 SETTABLEKS                       R3 R2 K5 ["ItemsController"]
       28 GETUPVAL                         R3 6
       29 SETTABLEKS                       R3 R2 K6 ["SearchController"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 7
       33 GETTABLEKS                       R0 R0 K8 ["notify"]
       35 GETUPVAL                         R1 8
       36 GETTABLEKS                       R1 R1 K9 ["TutorialEvent"]
       38 GETTABLEKS                       R1 R1 K10 ["ImportClicked"]
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K0 ["use"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 6
       25 CALL                             R7 0 1
       26 GETUPVAL                         R8 7
       27 GETTABLEKS                       R8 R8 K1 ["useState"]
       29 LOADNIL                          R9
       30 CALL                             R8 1 2
       31 GETUPVAL                         R10 8
       32 CALL                             R10 0 1
       33 GETUPVAL                         R11 9
       34 CALL                             R11 0 1
       35 GETUPVAL                         R12 10
       36 GETTABLEKS                       R13 R11 K2 ["Uid"]
       38 CALL                             R12 1 1
       39 GETUPVAL                         R13 7
       40 GETTABLEKS                       R13 R13 K3 ["useCallback"]
       42 NEWCLOSURE                       R14 P0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U11
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 CAPTURE                          UPVAL U13
       52 NEWTABLE                         R15 0 5
       54 MOVE                             R16 R2
       55 MOVE                             R17 R3
       56 MOVE                             R18 R4
       57 MOVE                             R19 R5
       58 MOVE                             R20 R6
       59 SETLIST                          R15 R16 5 [1]
       61 CALL                             R13 2 1
       62 GETUPVAL                         R14 7
       63 GETTABLEKS                       R14 R14 K4 ["createElement"]
       65 GETUPVAL                         R15 14
       66 GETTABLEKS                       R15 R15 K5 ["View"]
       68 DUPTABLE                         R16 K9 [{["LayoutOrder"], ["tag"] = "auto-xy"}]
       69 GETTABLEKS                       R17 R0 K6 ["LayoutOrder"]
       71 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       73 DUPTABLE                         R17 K12 [{"Button", "InsertOrImportTutorialTooltip"}]
       74 GETUPVAL                         R18 7
       75 GETTABLEKS                       R18 R18 K4 ["createElement"]
       77 GETUPVAL                         R19 14
       78 GETTABLEKS                       R19 R19 K10 ["Button"]
       80 DUPTABLE                         R20 K18 [{"text", "onActivated", "variant", "size", "ref"}]
       81 LOADK                            R23 K19 ["Tooltip"]
       82 LOADK                            R24 K20 ["BulkImport"]
       83 NAMECALL                         R21 R1 K21 ["getText"]
       85 CALL                             R21 3 1
       86 SETTABLEKS                       R21 R20 K13 ["text"]
       88 SETTABLEKS                       R13 R20 K14 ["onActivated"]
       90 GETUPVAL                         R21 14
       91 GETTABLEKS                       R21 R21 K22 ["Enums"]
       93 GETTABLEKS                       R21 R21 K23 ["ButtonVariant"]
       95 GETTABLEKS                       R21 R21 K24 ["Standard"]
       97 SETTABLEKS                       R21 R20 K15 ["variant"]
       99 GETUPVAL                         R21 14
      100 GETTABLEKS                       R21 R21 K22 ["Enums"]
      102 GETTABLEKS                       R21 R21 K25 ["InputSize"]
      104 GETTABLEKS                       R21 R21 K26 ["XSmall"]
      106 SETTABLEKS                       R21 R20 K16 ["size"]
      108 SETTABLEKS                       R9 R20 K17 ["ref"]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K10 ["Button"]
      113 LENGTH                           R19 R10
      114 JUMPIFNOTEQKN                    R19 K27 [0] ; [+45]
      116 GETTABLEKS                       R19 R12 K28 ["IsLoading"]
      118 JUMPIF                           R19 ; [+41]
      119 GETUPVAL                         R18 7
      120 GETTABLEKS                       R18 R18 K4 ["createElement"]
      122 GETUPVAL                         R19 15
      123 DUPTABLE                         R20 K38 [{["tutorialId"], ["stepId"], ["anchorInstance"], ["textKeyOverride"] = "Intro.InsertOrImportNoResultsText", ["titleKeyOverride"] = "Intro.InsertOrImportNoResultsTitle", ["side"], ["align"]}]
      124 GETUPVAL                         R21 13
      125 GETTABLEKS                       R21 R21 K39 ["TutorialId"]
      127 GETTABLEKS                       R21 R21 K40 ["Intro"]
      129 SETTABLEKS                       R21 R20 K29 ["tutorialId"]
      131 GETUPVAL                         R21 13
      132 GETTABLEKS                       R21 R21 K41 ["TutorialStepId"]
      134 GETTABLEKS                       R21 R21 K42 ["InsertOrImport"]
      136 SETTABLEKS                       R21 R20 K30 ["stepId"]
      138 SETTABLEKS                       R8 R20 K31 ["anchorInstance"]
      140 GETUPVAL                         R21 14
      141 GETTABLEKS                       R21 R21 K22 ["Enums"]
      143 GETTABLEKS                       R21 R21 K43 ["PopoverSide"]
      145 GETTABLEKS                       R21 R21 K44 ["Bottom"]
      147 SETTABLEKS                       R21 R20 K36 ["side"]
      149 GETUPVAL                         R21 14
      150 GETTABLEKS                       R21 R21 K22 ["Enums"]
      152 GETTABLEKS                       R21 R21 K45 ["PopoverAlign"]
      154 GETTABLEKS                       R21 R21 K46 ["End"]
      156 SETTABLEKS                       R21 R20 K37 ["align"]
      158 CALL                             R18 2 1
      159 JUMP                             ; [+1]
      160 LOADNIL                          R18
      161 SETTABLEKS                       R18 R17 K11 ["InsertOrImportTutorialTooltip"]
      163 CALL                             R14 3 -1
      164 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Analytics"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["ItemsController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K16 ["ExplorerController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K14 ["Controllers"]
       63 GETTABLEKS                       R10 R10 K17 ["LayoutController"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K14 ["Controllers"]
       72 GETTABLEKS                       R11 R11 K18 ["PluginController"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K14 ["Controllers"]
       81 GETTABLEKS                       R12 R12 K19 ["SearchController"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K12 ["Src"]
       95 GETTABLEKS                       R14 R14 K21 ["Components"]
       97 GETTABLEKS                       R14 R14 K22 ["Shared"]
       99 GETTABLEKS                       R14 R14 K23 ["TutorialTooltip"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K12 ["Src"]
      106 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K25 ["useCurrentScope"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K12 ["Src"]
      115 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      117 GETTABLEKS                       R16 R16 K26 ["useFetchProgressInfo"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R0 K12 ["Src"]
      124 GETTABLEKS                       R17 R17 K24 ["Hooks"]
      126 GETTABLEKS                       R17 R17 K27 ["useItems"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K12 ["Src"]
      133 GETTABLEKS                       R18 R18 K24 ["Hooks"]
      135 GETTABLEKS                       R18 R18 K28 ["useTutorial"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K12 ["Src"]
      142 GETTABLEKS                       R19 R19 K29 ["Flags"]
      144 GETTABLEKS                       R19 R19 K30 ["getFFlagAmrDisableShardedEvent"]
      146 CALL                             R18 1 1
      147 DUPCLOSURE                       R19 K31 [PROTO_1]
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R13
      164 RETURN                           R19 1
