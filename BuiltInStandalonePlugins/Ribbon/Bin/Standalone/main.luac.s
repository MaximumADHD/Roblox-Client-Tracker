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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Packages"]
        5 GETTABLEKS                       R2 R3 K3 ["React"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K1 [require]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Packages"]
       13 GETTABLEKS                       R3 R4 K4 ["ReactRoblox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K1 [require]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K5 ["Src"]
       21 GETTABLEKS                       R4 R5 K6 ["MainPlugin"]
       23 CALL                             R3 1 1
       24 LOADK                            R6 K7 ["Ribbon"]
       25 DUPTABLE                         R7 K18 [{"Id", "InitialEnabled", "MinSize", "Modal", "Panel", "Resizable", "Size", "Title", "Parent", "AddToParentLayout"}]
       26 LOADK                            R8 K7 ["Ribbon"]
       27 SETTABLEKS                       R8 R7 K8 ["Id"]
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K9 ["InitialEnabled"]
       32 GETIMPORT                        R8 K21 [Vector2.new]
       34 LOADN                            R9 128
       35 GETUPVAL                         R11 1
       36 CALL                             R11 0 1
       37 JUMPIFNOT                        R11 ; [+2]
       38 LOADN                            R10 29
       39 JUMP                             ; [+1]
       40 LOADN                            R10 129
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K10 ["MinSize"]
       44 LOADB                            R8 0
       45 SETTABLEKS                       R8 R7 K11 ["Modal"]
       47 LOADB                            R8 1
       48 SETTABLEKS                       R8 R7 K12 ["Panel"]
       50 LOADB                            R8 1
       51 SETTABLEKS                       R8 R7 K13 ["Resizable"]
       53 GETIMPORT                        R8 K21 [Vector2.new]
       55 LOADN                            R9 128
       56 LOADN                            R10 129
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K14 ["Size"]
       60 LOADK                            R8 K7 ["Ribbon"]
       61 SETTABLEKS                       R8 R7 K15 ["Title"]
       63 LOADK                            R8 K22 ["studioTopBar"]
       64 SETTABLEKS                       R8 R7 K16 ["Parent"]
       66 LOADB                            R8 1
       67 SETTABLEKS                       R8 R7 K17 ["AddToParentLayout"]
       69 NAMECALL                         R4 R0 K23 ["CreateQWidgetPluginGui"]
       71 CALL                             R4 3 1
       72 GETIMPORT                        R5 K25 [print]
       74 LOADK                            R6 K26 ["Loading Lua Ribbon, was enabled?"]
       75 GETTABLEKS                       R7 R4 K27 ["Enabled"]
       77 CALL                             R5 2 0
       78 LOADB                            R5 1
       79 SETTABLEKS                       R5 R4 K27 ["Enabled"]
       81 LOADK                            R5 K7 ["Ribbon"]
       82 SETTABLEKS                       R5 R4 K15 ["Title"]
       84 GETIMPORT                        R5 K31 [Enum.ZIndexBehavior.Sibling]
       86 SETTABLEKS                       R5 R4 K29 ["ZIndexBehavior"]
       88 LOADK                            R7 K32 ["Floating"]
       89 DUPTABLE                         R8 K35 [{"Id", "Popup", "Resizable", "Title", "ZIndex"}]
       90 LOADK                            R9 K32 ["Floating"]
       91 SETTABLEKS                       R9 R8 K8 ["Id"]
       93 DUPTABLE                         R9 K37 [{"PassesThroughMouseEvents"}]
       94 LOADB                            R10 1
       95 SETTABLEKS                       R10 R9 K36 ["PassesThroughMouseEvents"]
       97 SETTABLEKS                       R9 R8 K33 ["Popup"]
       99 LOADB                            R9 1
      100 SETTABLEKS                       R9 R8 K13 ["Resizable"]
      102 LOADK                            R9 K32 ["Floating"]
      103 SETTABLEKS                       R9 R8 K15 ["Title"]
      105 LOADN                            R9 50
      106 SETTABLEKS                       R9 R8 K34 ["ZIndex"]
      108 NAMECALL                         R5 R0 K23 ["CreateQWidgetPluginGui"]
      110 CALL                             R5 3 1
      111 LOADK                            R6 K38 ["FloatingRibbon"]
      112 SETTABLEKS                       R6 R5 K15 ["Title"]
      114 GETIMPORT                        R6 K31 [Enum.ZIndexBehavior.Sibling]
      116 SETTABLEKS                       R6 R5 K29 ["ZIndexBehavior"]
      118 GETTABLEKS                       R6 R1 K39 ["createElement"]
      120 MOVE                             R7 R3
      121 DUPTABLE                         R8 K43 [{"Plugin", "Widget", "Floating", "Mdi"}]
      122 SETTABLEKS                       R0 R8 K40 ["Plugin"]
      124 SETTABLEKS                       R4 R8 K41 ["Widget"]
      126 SETTABLEKS                       R5 R8 K32 ["Floating"]
      128 GETTABLEKS                       R9 R0 K44 ["MultipleDocumentInterfaceInstance"]
      130 SETTABLEKS                       R9 R8 K42 ["Mdi"]
      132 CALL                             R6 2 1
      133 GETTABLEKS                       R7 R2 K45 ["createRoot"]
      135 MOVE                             R8 R4
      136 CALL                             R7 1 1
      137 MOVE                             R10 R6
      138 NAMECALL                         R8 R7 K46 ["render"]
      140 CALL                             R8 2 0
      141 GETTABLEKS                       R8 R0 K47 ["Unloading"]
      143 NEWCLOSURE                       R10 P0
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R4
      146 NAMECALL                         R8 R8 K48 ["Once"]
      148 CALL                             R8 2 0
      149 GETUPVAL                         R8 2
      150 CALL                             R8 0 1
      151 JUMPIFNOT                        R8 ; [+23]
      152 GETIMPORT                        R8 K50 [game]
      154 LOADK                            R10 K51 ["RobloxPluginGuiService"]
      155 NAMECALL                         R8 R8 K52 ["GetService"]
      157 CALL                             R8 2 1
      158 GETIMPORT                        R9 K1 [require]
      160 GETUPVAL                         R12 0
      161 GETTABLEKS                       R11 R12 K5 ["Src"]
      163 GETTABLEKS                       R10 R11 K53 ["FoundationInspector"]
      165 CALL                             R9 1 1
      166 GETTABLEKS                       R10 R9 K54 ["open"]
      168 MOVE                             R11 R0
      169 CALL                             R10 1 0
      170 GETTABLEKS                       R10 R9 K55 ["watchDockWidgets"]
      172 MOVE                             R11 R0
      173 MOVE                             R12 R8
      174 CALL                             R10 2 0
      175 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagDebugEnableFoundationInspector"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["SharedFlags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagStudioRibbonMinSize"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R3 1
