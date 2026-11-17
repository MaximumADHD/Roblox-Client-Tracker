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
       90 LOADB                            R7 0
       91 GETUPVAL                         R8 4
       92 CALL                             R8 0 1
       93 JUMPIFNOT                        R8 ; [+53]
       94 LOADK                            R10 K44 ["WindowChromeController"]
       95 NAMECALL                         R8 R0 K45 ["GetPluginComponent"]
       97 CALL                             R8 2 1
       98 NAMECALL                         R9 R8 K46 ["IsSystemMenuInWindowAsync"]
      100 CALL                             R9 1 1
      101 MOVE                             R7 R9
      102 NAMECALL                         R9 R8 K47 ["GetSystemButtonRectAsync"]
      104 CALL                             R9 1 1
      105 GETTABLEKS                       R10 R9 K48 ["Height"]
      107 LOADK                            R13 K49 ["SystemMenu"]
      108 DUPTABLE                         R14 K52 [{["Id"] = "SystemMenu", ["InitialEnabled"] = True, ["Title"] = "SystemMenu", ["Parent"] = "studioTopBar", ["AddAsMenuBar"] = True, ["Modal"] = False, ["Panel"] = True, ["Resizable"] = True, ["Transparent"] = True, ["Size"], ["MinSize"]}]
      109 GETIMPORT                        R15 K24 [Vector2.new]
      111 LOADN                            R16 640
      112 MOVE                             R17 R10
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K16 ["Size"]
      116 GETIMPORT                        R15 K24 [Vector2.new]
      118 LOADN                            R16 640
      119 MOVE                             R17 R10
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K11 ["MinSize"]
      123 NAMECALL                         R11 R0 K25 ["CreateQWidgetPluginGui"]
      125 CALL                             R11 3 1
      126 MOVE                             R6 R11
      127 JUMPIFNOTEQKNIL                  R6 ; [+2]
      129 LOADB                            R12 0 +1
      130 LOADB                            R12 1
      131 FASTCALL2K                       ASSERT R12 K53 ; [+4]
      133 LOADK                            R13 K53 ["systemMenuWidget must be non-nil"]
      134 GETIMPORT                        R11 K55 [assert]
      136 CALL                             R11 2 0
      137 LOADB                            R11 1
      138 SETTABLEKS                       R11 R6 K29 ["Enabled"]
      140 LOADK                            R11 K49 ["SystemMenu"]
      141 SETTABLEKS                       R11 R6 K30 ["Name"]
      143 GETIMPORT                        R11 K34 [Enum.ZIndexBehavior.Sibling]
      145 SETTABLEKS                       R11 R6 K32 ["ZIndexBehavior"]
      147 GETTABLEKS                       R8 R1 K56 ["createElement"]
      149 MOVE                             R9 R3
      150 DUPTABLE                         R10 K62 [{"Plugin", "Widget", "Floating", "Mdi", "SystemMenuWidget", "IsSystemMenuVisible"}]
      151 SETTABLEKS                       R0 R10 K57 ["Plugin"]
      153 SETTABLEKS                       R4 R10 K58 ["Widget"]
      155 SETTABLEKS                       R5 R10 K36 ["Floating"]
      157 GETTABLEKS                       R11 R0 K63 ["MultipleDocumentInterfaceInstance"]
      159 SETTABLEKS                       R11 R10 K59 ["Mdi"]
      161 SETTABLEKS                       R6 R10 K60 ["SystemMenuWidget"]
      163 SETTABLEKS                       R7 R10 K61 ["IsSystemMenuVisible"]
      165 CALL                             R8 2 1
      166 GETTABLEKS                       R9 R2 K64 ["createRoot"]
      168 MOVE                             R10 R4
      169 CALL                             R9 1 1
      170 MOVE                             R12 R8
      171 NAMECALL                         R10 R9 K65 ["render"]
      173 CALL                             R10 2 0
      174 GETTABLEKS                       R10 R0 K66 ["Unloading"]
      176 NEWCLOSURE                       R12 P0
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R4
      179 CAPTURE                          REF R6
      180 NAMECALL                         R10 R10 K67 ["Once"]
      182 CALL                             R10 2 0
      183 GETUPVAL                         R10 5
      184 CALL                             R10 0 1
      185 JUMPIFNOT                        R10 ; [+23]
      186 GETIMPORT                        R10 K69 [game]
      188 LOADK                            R12 K70 ["RobloxPluginGuiService"]
      189 NAMECALL                         R10 R10 K71 ["GetService"]
      191 CALL                             R10 2 1
      192 GETIMPORT                        R11 K1 [require]
      194 GETUPVAL                         R12 0
      195 GETTABLEKS                       R12 R12 K5 ["Src"]
      197 GETTABLEKS                       R12 R12 K72 ["FoundationInspector"]
      199 CALL                             R11 1 1
      200 GETTABLEKS                       R12 R11 K73 ["open"]
      202 MOVE                             R13 R0
      203 CALL                             R12 1 0
      204 GETTABLEKS                       R12 R11 K74 ["watchDockWidgets"]
      206 MOVE                             R13 R0
      207 MOVE                             R14 R10
      208 CALL                             R12 2 0
      209 CLOSEUPVALS                      R6
      210 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAddPublishToRightMezzanine"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K5 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       22 GETTABLEKS                       R2 R2 K9 ["getFFlagDebugEnableFoundationInspector"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R3 R0 K6 ["Src"]
       29 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       31 GETTABLEKS                       R3 R3 K10 ["getFFlagStudioRibbonMinSize"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K5 [require]
       36 GETTABLEKS                       R4 R0 K6 ["Src"]
       38 GETTABLEKS                       R4 R4 K7 ["SharedFlags"]
       40 GETTABLEKS                       R4 R4 K11 ["getFFlagRibbonTextLengthImprovements"]
       42 CALL                             R3 1 1
       43 GETIMPORT                        R4 K5 [require]
       45 GETTABLEKS                       R5 R0 K6 ["Src"]
       47 GETTABLEKS                       R5 R5 K7 ["SharedFlags"]
       49 GETTABLEKS                       R5 R5 K12 ["getFeatureStudioCustomWindowChrome"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K5 [require]
       54 GETTABLEKS                       R6 R0 K6 ["Src"]
       56 GETTABLEKS                       R6 R6 K7 ["SharedFlags"]
       58 GETTABLEKS                       R6 R6 K13 ["getFFlagRibbonEnableKeyboardNavigation"]
       60 CALL                             R5 1 1
       61 DUPCLOSURE                       R6 K14 [PROTO_1]
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 RETURN                           R6 1
