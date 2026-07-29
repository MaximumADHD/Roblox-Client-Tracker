PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIFEQKNIL                     R0 ; [+5]
       11 GETUPVAL                         R0 2
       12 NAMECALL                         R0 R0 K1 ["Destroy"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

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
       85 LOADNIL                          R6
       86 GETUPVAL                         R7 3
       87 CALL                             R7 0 1
       88 JUMPIFNOT                        R7 ; [+53]
       89 LOADK                            R9 K43 ["WindowChromeController"]
       90 NAMECALL                         R7 R0 K44 ["GetPluginComponent"]
       92 CALL                             R7 2 1
       93 NAMECALL                         R8 R7 K45 ["IsSystemMenuInWindowAsync"]
       95 CALL                             R8 1 1
       96 JUMPIFNOT                        R8 ; [+45]
       97 NAMECALL                         R8 R7 K46 ["GetSystemButtonRectAsync"]
       99 CALL                             R8 1 1
      100 GETTABLEKS                       R9 R8 K47 ["Height"]
      102 LOADK                            R12 K48 ["SystemMenu"]
      103 DUPTABLE                         R13 K51 [{["Id"] = "SystemMenu", ["InitialEnabled"] = True, ["Title"] = "SystemMenu", ["Parent"] = "studioTopBar", ["AddAsMenuBar"] = True, ["Modal"] = False, ["Panel"] = True, ["Resizable"] = True, ["Transparent"] = True, ["Size"], ["MinSize"]}]
      104 GETIMPORT                        R14 K24 [Vector2.new]
      106 LOADN                            R15 640
      107 MOVE                             R16 R9
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K16 ["Size"]
      111 GETIMPORT                        R14 K24 [Vector2.new]
      113 LOADN                            R15 640
      114 MOVE                             R16 R9
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K11 ["MinSize"]
      118 NAMECALL                         R10 R0 K25 ["CreateQWidgetPluginGui"]
      120 CALL                             R10 3 1
      121 MOVE                             R6 R10
      122 JUMPIFNOTEQKNIL                  R6 ; [+2]
      124 LOADB                            R11 0 +1
      125 LOADB                            R11 1
      126 FASTCALL2K                       ASSERT R11 K52 ; [+4]
      128 LOADK                            R12 K52 ["systemMenuWidget must be non-nil"]
      129 GETIMPORT                        R10 K54 [assert]
      131 CALL                             R10 2 0
      132 LOADB                            R10 1
      133 SETTABLEKS                       R10 R6 K29 ["Enabled"]
      135 LOADK                            R10 K48 ["SystemMenu"]
      136 SETTABLEKS                       R10 R6 K30 ["Name"]
      138 GETIMPORT                        R10 K34 [Enum.ZIndexBehavior.Sibling]
      140 SETTABLEKS                       R10 R6 K32 ["ZIndexBehavior"]
      142 GETTABLEKS                       R7 R1 K55 ["createElement"]
      144 MOVE                             R8 R3
      145 DUPTABLE                         R9 K60 [{"Plugin", "Widget", "Floating", "Mdi", "SystemMenuWidget"}]
      146 SETTABLEKS                       R0 R9 K56 ["Plugin"]
      148 SETTABLEKS                       R4 R9 K57 ["Widget"]
      150 SETTABLEKS                       R5 R9 K35 ["Floating"]
      152 GETTABLEKS                       R10 R0 K61 ["MultipleDocumentInterfaceInstance"]
      154 SETTABLEKS                       R10 R9 K58 ["Mdi"]
      156 SETTABLEKS                       R6 R9 K59 ["SystemMenuWidget"]
      158 CALL                             R7 2 1
      159 GETTABLEKS                       R8 R2 K62 ["createRoot"]
      161 MOVE                             R9 R4
      162 CALL                             R8 1 1
      163 MOVE                             R11 R7
      164 NAMECALL                         R9 R8 K63 ["render"]
      166 CALL                             R9 2 0
      167 GETTABLEKS                       R9 R0 K64 ["Unloading"]
      169 NEWCLOSURE                       R11 P0
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R4
      172 CAPTURE                          REF R6
      173 NAMECALL                         R9 R9 K65 ["Once"]
      175 CALL                             R9 2 0
      176 GETUPVAL                         R9 4
      177 CALL                             R9 0 1
      178 JUMPIFNOT                        R9 ; [+23]
      179 GETIMPORT                        R9 K67 [game]
      181 LOADK                            R11 K68 ["RobloxPluginGuiService"]
      182 NAMECALL                         R9 R9 K69 ["GetService"]
      184 CALL                             R9 2 1
      185 GETIMPORT                        R10 K1 [require]
      187 GETUPVAL                         R11 0
      188 GETTABLEKS                       R11 R11 K5 ["Src"]
      190 GETTABLEKS                       R11 R11 K70 ["FoundationInspector"]
      192 CALL                             R10 1 1
      193 GETTABLEKS                       R11 R10 K71 ["open"]
      195 MOVE                             R12 R0
      196 CALL                             R11 1 0
      197 GETTABLEKS                       R11 R10 K72 ["watchDockWidgets"]
      199 MOVE                             R12 R0
      200 MOVE                             R13 R9
      201 CALL                             R11 2 0
      202 CLOSEUPVALS                      R6
      203 RETURN                           R0 0

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
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["SharedFlags"]
       40 GETTABLEKS                       R5 R5 K11 ["getFeatureStudioCustomWindowChrome"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K12 [PROTO_1]
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 RETURN                           R5 1
