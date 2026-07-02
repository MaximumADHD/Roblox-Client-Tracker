PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["React"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K1 [require]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["Packages"]
       13 GETTABLEKS                       R3 R3 K4 ["ReactRoblox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K1 [require]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["Src"]
       21 GETTABLEKS                       R4 R4 K6 ["MainPlugin"]
       23 CALL                             R3 1 1
       24 LOADK                            R6 K7 ["Ribbon"]
       25 DUPTABLE                         R7 K21 [{["Id"] = "Ribbon", ["InitialEnabled"] = True, ["MinSize"], ["Modal"] = False, ["Panel"] = True, ["Resizable"] = True, ["Size"], ["Title"] = "Ribbon", ["Parent"] = "studioTopBar", ["AddToParentLayout"] = True}]
       26 GETIMPORT                        R8 K24 [Vector2.new]
       28 LOADN                            R9 640
       29 GETUPVAL                         R11 1
       30 CALL                             R11 0 1
       31 JUMPIFNOT                        R11 ; [+2]
       32 LOADN                            R10 29
       33 JUMP                             ; [+1]
       34 LOADN                            R10 129
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K11 ["MinSize"]
       38 GETIMPORT                        R8 K24 [Vector2.new]
       40 LOADN                            R9 640
       41 LOADN                            R10 129
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K16 ["Size"]
       45 NAMECALL                         R4 R0 K25 ["CreateQWidgetPluginGui"]
       47 CALL                             R4 3 1
       48 GETIMPORT                        R5 K27 [print]
       50 LOADK                            R6 K28 ["Loading Lua Ribbon, was enabled?"]
       51 GETTABLEKS                       R7 R4 K29 ["Enabled"]
       53 CALL                             R5 2 0
       54 LOADB                            R5 1
       55 SETTABLEKS                       R5 R4 K29 ["Enabled"]
       57 LOADK                            R5 K7 ["Ribbon"]
       58 SETTABLEKS                       R5 R4 K17 ["Title"]
       60 GETUPVAL                         R5 2
       61 CALL                             R5 0 1
       62 JUMPIFNOT                        R5 ; [+3]
       63 LOADK                            R5 K7 ["Ribbon"]
       64 SETTABLEKS                       R5 R4 K30 ["Name"]
       66 GETIMPORT                        R5 K34 [Enum.ZIndexBehavior.Sibling]
       68 SETTABLEKS                       R5 R4 K32 ["ZIndexBehavior"]
       70 LOADK                            R7 K35 ["Floating"]
       71 DUPTABLE                         R8 K39 [{["Id"] = "Floating", ["Popup"], ["Resizable"] = True, ["Title"] = "Floating", ["ZIndex"] = 50}]
       72 DUPTABLE                         R9 K41 [{["PassesThroughMouseEvents"] = True}]
       73 SETTABLEKS                       R9 R8 K36 ["Popup"]
       75 NAMECALL                         R5 R0 K25 ["CreateQWidgetPluginGui"]
       77 CALL                             R5 3 1
       78 LOADK                            R6 K42 ["FloatingRibbon"]
       79 SETTABLEKS                       R6 R5 K17 ["Title"]
       81 GETIMPORT                        R6 K34 [Enum.ZIndexBehavior.Sibling]
       83 SETTABLEKS                       R6 R5 K32 ["ZIndexBehavior"]
       85 GETTABLEKS                       R6 R1 K43 ["createElement"]
       87 MOVE                             R7 R3
       88 DUPTABLE                         R8 K47 [{"Plugin", "Widget", "Floating", "Mdi"}]
       89 SETTABLEKS                       R0 R8 K44 ["Plugin"]
       91 SETTABLEKS                       R4 R8 K45 ["Widget"]
       93 SETTABLEKS                       R5 R8 K35 ["Floating"]
       95 GETTABLEKS                       R9 R0 K48 ["MultipleDocumentInterfaceInstance"]
       97 SETTABLEKS                       R9 R8 K46 ["Mdi"]
       99 CALL                             R6 2 1
      100 GETTABLEKS                       R7 R2 K49 ["createRoot"]
      102 MOVE                             R8 R4
      103 CALL                             R7 1 1
      104 MOVE                             R10 R6
      105 NAMECALL                         R8 R7 K50 ["render"]
      107 CALL                             R8 2 0
      108 GETTABLEKS                       R8 R0 K51 ["Unloading"]
      110 NEWCLOSURE                       R10 P0
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R4
      113 NAMECALL                         R8 R8 K52 ["Once"]
      115 CALL                             R8 2 0
      116 GETUPVAL                         R8 3
      117 CALL                             R8 0 1
      118 JUMPIFNOT                        R8 ; [+23]
      119 GETIMPORT                        R8 K54 [game]
      121 LOADK                            R10 K55 ["RobloxPluginGuiService"]
      122 NAMECALL                         R8 R8 K56 ["GetService"]
      124 CALL                             R8 2 1
      125 GETIMPORT                        R9 K1 [require]
      127 GETUPVAL                         R10 0
      128 GETTABLEKS                       R10 R10 K5 ["Src"]
      130 GETTABLEKS                       R10 R10 K57 ["FoundationInspector"]
      132 CALL                             R9 1 1
      133 GETTABLEKS                       R10 R9 K58 ["open"]
      135 MOVE                             R11 R0
      136 CALL                             R10 1 0
      137 GETTABLEKS                       R10 R9 K59 ["watchDockWidgets"]
      139 MOVE                             R11 R0
      140 MOVE                             R12 R8
      141 CALL                             R10 2 0
      142 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDebugEnableFoundationInspector"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagStudioRibbonMinSize"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["SharedFlags"]
       31 GETTABLEKS                       R4 R4 K10 ["getFFlagRibbonTextLengthImprovements"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_1]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 RETURN                           R4 1
