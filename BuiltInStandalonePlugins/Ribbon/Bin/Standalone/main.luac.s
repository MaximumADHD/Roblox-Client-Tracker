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
       70 GETUPVAL                         R5 3
       71 CALL                             R5 0 1
       72 SETTABLEKS                       R5 R4 K35 ["TabKeyboardNavigation"]
       74 LOADK                            R7 K36 ["Floating"]
       75 DUPTABLE                         R8 K40 [{["Id"] = "Floating", ["Popup"], ["Resizable"] = True, ["Title"] = "Floating", ["ZIndex"] = 50}]
       76 DUPTABLE                         R9 K42 [{["PassesThroughMouseEvents"] = True}]
       77 SETTABLEKS                       R9 R8 K37 ["Popup"]
       79 NAMECALL                         R5 R0 K25 ["CreateQWidgetPluginGui"]
       81 CALL                             R5 3 1
       82 LOADK                            R6 K43 ["FloatingRibbon"]
       83 SETTABLEKS                       R6 R5 K17 ["Title"]
       85 GETIMPORT                        R6 K34 [Enum.ZIndexBehavior.Sibling]
       87 SETTABLEKS                       R6 R5 K32 ["ZIndexBehavior"]
       89 LOADNIL                          R6
       90 GETUPVAL                         R7 4
       91 CALL                             R7 0 1
       92 JUMPIFNOT                        R7 ; [+53]
       93 LOADK                            R9 K44 ["WindowChromeController"]
       94 NAMECALL                         R7 R0 K45 ["GetPluginComponent"]
       96 CALL                             R7 2 1
       97 NAMECALL                         R8 R7 K46 ["IsSystemMenuInWindowAsync"]
       99 CALL                             R8 1 1
      100 JUMPIFNOT                        R8 ; [+45]
      101 NAMECALL                         R8 R7 K47 ["GetSystemButtonRectAsync"]
      103 CALL                             R8 1 1
      104 GETTABLEKS                       R9 R8 K48 ["Height"]
      106 LOADK                            R12 K49 ["SystemMenu"]
      107 DUPTABLE                         R13 K52 [{["Id"] = "SystemMenu", ["InitialEnabled"] = True, ["Title"] = "SystemMenu", ["Parent"] = "studioTopBar", ["AddAsMenuBar"] = True, ["Modal"] = False, ["Panel"] = True, ["Resizable"] = True, ["Transparent"] = True, ["Size"], ["MinSize"]}]
      108 GETIMPORT                        R14 K24 [Vector2.new]
      110 LOADN                            R15 640
      111 MOVE                             R16 R9
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K16 ["Size"]
      115 GETIMPORT                        R14 K24 [Vector2.new]
      117 LOADN                            R15 640
      118 MOVE                             R16 R9
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K11 ["MinSize"]
      122 NAMECALL                         R10 R0 K25 ["CreateQWidgetPluginGui"]
      124 CALL                             R10 3 1
      125 MOVE                             R6 R10
      126 JUMPIFNOTEQKNIL                  R6 ; [+2]
      128 LOADB                            R11 0 +1
      129 LOADB                            R11 1
      130 FASTCALL2K                       ASSERT R11 K53 ; [+4]
      132 LOADK                            R12 K53 ["systemMenuWidget must be non-nil"]
      133 GETIMPORT                        R10 K55 [assert]
      135 CALL                             R10 2 0
      136 LOADB                            R10 1
      137 SETTABLEKS                       R10 R6 K29 ["Enabled"]
      139 LOADK                            R10 K49 ["SystemMenu"]
      140 SETTABLEKS                       R10 R6 K30 ["Name"]
      142 GETIMPORT                        R10 K34 [Enum.ZIndexBehavior.Sibling]
      144 SETTABLEKS                       R10 R6 K32 ["ZIndexBehavior"]
      146 GETTABLEKS                       R7 R1 K56 ["createElement"]
      148 MOVE                             R8 R3
      149 DUPTABLE                         R9 K61 [{"Plugin", "Widget", "Floating", "Mdi", "SystemMenuWidget"}]
      150 SETTABLEKS                       R0 R9 K57 ["Plugin"]
      152 SETTABLEKS                       R4 R9 K58 ["Widget"]
      154 SETTABLEKS                       R5 R9 K36 ["Floating"]
      156 GETTABLEKS                       R10 R0 K62 ["MultipleDocumentInterfaceInstance"]
      158 SETTABLEKS                       R10 R9 K59 ["Mdi"]
      160 SETTABLEKS                       R6 R9 K60 ["SystemMenuWidget"]
      162 CALL                             R7 2 1
      163 GETTABLEKS                       R8 R2 K63 ["createRoot"]
      165 MOVE                             R9 R4
      166 CALL                             R8 1 1
      167 MOVE                             R11 R7
      168 NAMECALL                         R9 R8 K64 ["render"]
      170 CALL                             R9 2 0
      171 GETTABLEKS                       R9 R0 K65 ["Unloading"]
      173 NEWCLOSURE                       R11 P0
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R4
      176 CAPTURE                          REF R6
      177 NAMECALL                         R9 R9 K66 ["Once"]
      179 CALL                             R9 2 0
      180 GETUPVAL                         R9 5
      181 CALL                             R9 0 1
      182 JUMPIFNOT                        R9 ; [+23]
      183 GETIMPORT                        R9 K68 [game]
      185 LOADK                            R11 K69 ["RobloxPluginGuiService"]
      186 NAMECALL                         R9 R9 K70 ["GetService"]
      188 CALL                             R9 2 1
      189 GETIMPORT                        R10 K1 [require]
      191 GETUPVAL                         R11 0
      192 GETTABLEKS                       R11 R11 K5 ["Src"]
      194 GETTABLEKS                       R11 R11 K71 ["FoundationInspector"]
      196 CALL                             R10 1 1
      197 GETTABLEKS                       R11 R10 K72 ["open"]
      199 MOVE                             R12 R0
      200 CALL                             R11 1 0
      201 GETTABLEKS                       R11 R10 K73 ["watchDockWidgets"]
      203 MOVE                             R12 R0
      204 MOVE                             R13 R9
      205 CALL                             R11 2 0
      206 CLOSEUPVALS                      R6
      207 RETURN                           R0 0

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
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["SharedFlags"]
       49 GETTABLEKS                       R6 R6 K12 ["getFFlagRibbonEnableKeyboardNavigation"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K13 [PROTO_1]
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 RETURN                           R6 1
