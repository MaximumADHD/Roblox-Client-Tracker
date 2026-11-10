PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["ConnectionIndicatorOverlay"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETIMPORT                        R1 K9 [Enum.ZIndexBehavior.Sibling]
        9 SETTABLEKS                       R1 R0 K7 ["ZIndexBehavior"]
       11 GETUPVAL                         R1 0
       12 SETTABLEKS                       R1 R0 K10 ["Parent"]
       14 GETUPVAL                         R1 1
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 2
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 0
        9 CALL                             R2 2 0
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETIMPORT                        R0 K1 [game]
        4 LOADK                            R2 K2 ["BrowserService"]
        5 NAMECALL                         R0 R0 K3 ["GetService"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R3 1
        9 NAMECALL                         R1 R0 K4 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 2
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 0
       16 CALL                             R5 2 0
       17 MOVE                             R2 R3
       18 GETUPVAL                         R3 1
       19 LOADB                            R4 1
       20 CALL                             R3 1 2
       21 GETUPVAL                         R5 2
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R7 0 1
       26 GETTABLEKS                       R8 R0 K2 ["RequestId"]
       28 SETLIST                          R7 R8 1 [1]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R5 4
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          VAL R4
       34 NEWTABLE                         R7 0 0
       36 CALL                             R5 2 1
       37 GETTABLEKS                       R6 R0 K3 ["DocsLink"]
       39 GETTABLEKS                       R7 R0 K4 ["BrowserService"]
       41 GETUPVAL                         R8 4
       42 NEWCLOSURE                       R9 P3
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R6
       45 NEWTABLE                         R10 0 2
       47 MOVE                             R11 R7
       48 MOVE                             R12 R6
       49 SETLIST                          R10 R11 2 [1]
       51 CALL                             R8 2 1
       52 JUMPIFNOTEQKNIL                  R2 ; [+3]
       54 LOADNIL                          R9
       55 RETURN                           R9 1
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R9 R9 K5 ["createElement"]
       59 GETUPVAL                         R10 6
       60 DUPTABLE                         R11 K8 [{"overlayGui", "plugin"}]
       61 SETTABLEKS                       R2 R11 K6 ["overlayGui"]
       63 SETTABLEKS                       R1 R11 K7 ["plugin"]
       65 DUPTABLE                         R12 K10 [{"Popover"}]
       66 GETUPVAL                         R13 5
       67 GETTABLEKS                       R13 R13 K5 ["createElement"]
       69 GETUPVAL                         R14 7
       70 GETTABLEKS                       R14 R14 K11 ["Root"]
       72 DUPTABLE                         R15 K13 [{"isOpen"}]
       73 SETTABLEKS                       R3 R15 K12 ["isOpen"]
       75 DUPTABLE                         R16 K16 [{"Anchor", "Content"}]
       76 GETUPVAL                         R17 5
       77 GETTABLEKS                       R17 R17 K5 ["createElement"]
       79 GETUPVAL                         R18 7
       80 GETTABLEKS                       R18 R18 K14 ["Anchor"]
       82 DUPTABLE                         R19 K18 [{"anchorRef"}]
       83 GETUPVAL                         R20 8
       84 SETTABLEKS                       R20 R19 K17 ["anchorRef"]
       86 CALL                             R17 2 1
       87 SETTABLEKS                       R17 R16 K14 ["Anchor"]
       89 GETUPVAL                         R17 5
       90 GETTABLEKS                       R17 R17 K5 ["createElement"]
       92 GETUPVAL                         R18 7
       93 GETTABLEKS                       R18 R18 K15 ["Content"]
       95 DUPTABLE                         R19 K22 [{"side", "align", "onPressedOutside"}]
       96 GETUPVAL                         R20 9
       97 GETTABLEKS                       R20 R20 K23 ["Bottom"]
       99 SETTABLEKS                       R20 R19 K19 ["side"]
      101 GETUPVAL                         R20 10
      102 GETTABLEKS                       R20 R20 K24 ["Center"]
      104 SETTABLEKS                       R20 R19 K20 ["align"]
      106 SETTABLEKS                       R5 R19 K21 ["onPressedOutside"]
      108 DUPTABLE                         R20 K26 [{"Popup"}]
      109 GETUPVAL                         R21 5
      110 GETTABLEKS                       R21 R21 K5 ["createElement"]
      112 GETUPVAL                         R22 11
      113 DUPTABLE                         R23 K29 [{"Status", "DocsLink", "onLearnMoreActivated"}]
      114 GETTABLEKS                       R24 R0 K27 ["Status"]
      116 SETTABLEKS                       R24 R23 K27 ["Status"]
      118 SETTABLEKS                       R6 R23 K3 ["DocsLink"]
      120 SETTABLEKS                       R8 R23 K28 ["onLearnMoreActivated"]
      122 CALL                             R21 2 1
      123 SETTABLEKS                       R21 R20 K25 ["Popup"]
      125 CALL                             R17 3 1
      126 SETTABLEKS                       R17 R16 K15 ["Content"]
      128 CALL                             R13 3 1
      129 SETTABLEKS                       R13 R12 K9 ["Popover"]
      131 CALL                             R9 3 -1
      132 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["ConnectionIndicatorPopup"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K15 ["useCallback"]
       53 GETTABLEKS                       R8 R3 K16 ["useEffect"]
       55 GETTABLEKS                       R9 R3 K17 ["useState"]
       57 GETTABLEKS                       R10 R1 K18 ["Popover"]
       59 GETTABLEKS                       R11 R1 K19 ["Enums"]
       61 GETTABLEKS                       R11 R11 K20 ["PopoverAlign"]
       63 GETTABLEKS                       R12 R1 K19 ["Enums"]
       65 GETTABLEKS                       R12 R12 K21 ["PopoverSide"]
       67 GETTABLEKS                       R13 R4 K12 ["Components"]
       69 GETTABLEKS                       R13 R13 K22 ["FoundationProviderAdapter"]
       71 GETTABLEKS                       R14 R2 K23 ["ContextServices"]
       73 GETTABLEKS                       R15 R14 K24 ["Plugin"]
       75 GETIMPORT                        R16 K26 [game]
       77 LOADK                            R18 K27 ["CoreGui"]
       78 NAMECALL                         R16 R16 K28 ["GetService"]
       80 CALL                             R16 2 1
       81 DUPTABLE                         R17 K38 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "RightMezzanine/ConnectionIndicator"}]
       82 DUPCLOSURE                       R18 K39 [PROTO_2]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R16
       86 DUPCLOSURE                       R19 K40 [PROTO_6]
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R17
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R5
       99 RETURN                           R19 1
