PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["story"]
        3 NEWTABLE                         R4 1 0
        5 SETTABLE                         R1 R4 R0
        6 NAMECALL                         R2 R2 K1 ["applyControlChanges"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setPinned"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setStoryControlsPinned"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["applyDeviceProfile"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["story"]
        8 NAMECALL                         R1 R1 K2 ["rerenderForContextChange"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["story"]
        3 NAMECALL                         R1 R1 K1 ["rerenderForContextChange"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["story"]
        3 NAMECALL                         R0 R0 K1 ["rerenderForContextChange"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selection"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["selectModuleScript"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["story"]
        3 NAMECALL                         R0 R0 K1 ["rerenderForContextChange"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selection"]
        4 NAMECALL                         R1 R1 K1 ["bindToSelectionService"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["selection"]
        4 NAMECALL                         R1 R1 K1 ["updateLiveModuleHeader"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["story"]
       11 NAMECALL                         R1 R1 K3 ["clearPreview"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selection"]
        3 NAMECALL                         R0 R0 K1 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 FORGPREP                         R0
       10 NAMECALL                         R5 R4 K2 ["Disconnect"]
       12 CALL                             R5 1 0
       13 FORGLOOP                         R0 2 ; [-4]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K3 ["story"]
       18 NAMECALL                         R0 R0 K4 ["clearPreview"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["stage"]
        2 GETTABLEKS                       R2 R0 K1 ["packages"]
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 0
        8 LOADNIL                          R5
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K2 ["new"]
       12 DUPTABLE                         R7 K17 [{"canvas", "controls", "zoomPan", "plugin", "widget", "previewMountFrame", "React", "ReactRoblox", "Foundation", "AppFrameworkPkg", "Executor", "ErrorBoundary", "getLiveModule", "now"}]
       13 GETTABLEKS                       R8 R1 K3 ["canvas"]
       15 SETTABLEKS                       R8 R7 K3 ["canvas"]
       17 GETTABLEKS                       R8 R1 K4 ["controls"]
       19 SETTABLEKS                       R8 R7 K4 ["controls"]
       21 GETTABLEKS                       R8 R1 K5 ["zoomPan"]
       23 SETTABLEKS                       R8 R7 K5 ["zoomPan"]
       25 GETTABLEKS                       R8 R0 K6 ["plugin"]
       27 SETTABLEKS                       R8 R7 K6 ["plugin"]
       29 GETTABLEKS                       R8 R0 K7 ["widget"]
       31 SETTABLEKS                       R8 R7 K7 ["widget"]
       33 GETTABLEKS                       R8 R1 K8 ["previewMountFrame"]
       35 SETTABLEKS                       R8 R7 K8 ["previewMountFrame"]
       37 GETTABLEKS                       R8 R2 K9 ["React"]
       39 SETTABLEKS                       R8 R7 K9 ["React"]
       41 GETTABLEKS                       R8 R2 K10 ["ReactRoblox"]
       43 SETTABLEKS                       R8 R7 K10 ["ReactRoblox"]
       45 GETTABLEKS                       R8 R2 K11 ["Foundation"]
       47 SETTABLEKS                       R8 R7 K11 ["Foundation"]
       49 GETTABLEKS                       R8 R2 K18 ["AppFramework"]
       51 SETTABLEKS                       R8 R7 K12 ["AppFrameworkPkg"]
       53 GETTABLEKS                       R8 R2 K13 ["Executor"]
       55 SETTABLEKS                       R8 R7 K13 ["Executor"]
       57 GETTABLEKS                       R8 R2 K14 ["ErrorBoundary"]
       59 SETTABLEKS                       R8 R7 K14 ["ErrorBoundary"]
       61 NEWCLOSURE                       R8 P0
       62 CAPTURE                          REF R5
       63 SETTABLEKS                       R8 R7 K15 ["getLiveModule"]
       65 GETIMPORT                        R8 K21 [os.clock]
       67 SETTABLEKS                       R8 R7 K16 ["now"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R3 K22 ["story"]
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K2 ["new"]
       75 DUPTABLE                         R7 K23 [{"canvas", "getLiveModule"}]
       76 GETTABLEKS                       R8 R1 K3 ["canvas"]
       78 SETTABLEKS                       R8 R7 K3 ["canvas"]
       80 NEWCLOSURE                       R8 P1
       81 CAPTURE                          REF R5
       82 SETTABLEKS                       R8 R7 K15 ["getLiveModule"]
       84 CALL                             R6 1 1
       85 SETTABLEKS                       R6 R3 K24 ["selection"]
       87 GETTABLEKS                       R6 R1 K3 ["canvas"]
       89 GETTABLEKS                       R7 R1 K4 ["controls"]
       91 NEWCLOSURE                       R10 P2
       92 CAPTURE                          VAL R3
       93 NAMECALL                         R8 R7 K25 ["onChanged"]
       95 CALL                             R8 2 0
       96 NEWCLOSURE                       R10 P3
       97 CAPTURE                          VAL R7
       98 NAMECALL                         R8 R6 K26 ["onStoryControlsPinnedChanged"]
      100 CALL                             R8 2 0
      101 NEWCLOSURE                       R10 P4
      102 CAPTURE                          VAL R6
      103 NAMECALL                         R8 R7 K27 ["onPinnedChanged"]
      105 CALL                             R8 2 0
      106 NEWCLOSURE                       R10 P5
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R3
      109 NAMECALL                         R8 R6 K28 ["onDeviceProfileChanged"]
      111 CALL                             R8 2 0
      112 NEWCLOSURE                       R10 P6
      113 CAPTURE                          VAL R3
      114 NAMECALL                         R8 R6 K29 ["onThemeOverrideChanged"]
      116 CALL                             R8 2 0
      117 NEWCLOSURE                       R10 P7
      118 CAPTURE                          VAL R3
      119 NAMECALL                         R8 R6 K30 ["onUseInsetsChanged"]
      121 CALL                             R8 2 0
      122 NEWCLOSURE                       R10 P8
      123 CAPTURE                          VAL R3
      124 NAMECALL                         R8 R6 K31 ["onStorySelectionRequested"]
      126 CALL                             R8 2 0
      127 MOVE                             R9 R4
      128 GETIMPORT                        R10 K33 [settings]
      130 CALL                             R10 0 1
      131 GETTABLEKS                       R10 R10 K34 ["Studio"]
      133 GETTABLEKS                       R10 R10 K35 ["ThemeChanged"]
      135 NEWCLOSURE                       R12 P9
      136 CAPTURE                          VAL R3
      137 NAMECALL                         R10 R10 K36 ["Connect"]
      139 CALL                             R10 2 -1
      140 FASTCALL                         TABLE_INSERT ; [+2]
      141 GETIMPORT                        R8 K39 [table.insert]
      143 CALL                             R8 -1 0
      144 NEWCLOSURE                       R8 P10
      145 CAPTURE                          REF R5
      146 CAPTURE                          VAL R3
      147 SETTABLEKS                       R8 R3 K40 ["bindLiveModule"]
      149 NEWCLOSURE                       R8 P11
      150 CAPTURE                          VAL R3
      151 SETTABLEKS                       R8 R3 K41 ["onWidgetEnabledChanged"]
      153 NEWCLOSURE                       R8 P12
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R4
      156 SETTABLEKS                       R8 R3 K42 ["destroy"]
      158 CLOSEUPVALS                      R5
      159 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Controllers"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SelectionController"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["StoryController"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_13]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 DUPTABLE                         R5 K12 [{"createControllers"}]
       25 SETTABLEKS                       R4 R5 K11 ["createControllers"]
       27 RETURN                           R5 1
