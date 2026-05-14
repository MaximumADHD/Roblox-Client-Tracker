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
       84 GETUPVAL                         R5 2
       85 CALL                             R5 0 1
       86 JUMPIFNOT                        R5 ; [+3]
       87 LOADK                            R5 K7 ["Ribbon"]
       88 SETTABLEKS                       R5 R4 K28 ["Name"]
       90 GETIMPORT                        R5 K32 [Enum.ZIndexBehavior.Sibling]
       92 SETTABLEKS                       R5 R4 K30 ["ZIndexBehavior"]
       94 LOADK                            R7 K33 ["Floating"]
       95 DUPTABLE                         R8 K36 [{"Id", "Popup", "Resizable", "Title", "ZIndex"}]
       96 LOADK                            R9 K33 ["Floating"]
       97 SETTABLEKS                       R9 R8 K8 ["Id"]
       99 DUPTABLE                         R9 K38 [{"PassesThroughMouseEvents"}]
      100 LOADB                            R10 1
      101 SETTABLEKS                       R10 R9 K37 ["PassesThroughMouseEvents"]
      103 SETTABLEKS                       R9 R8 K34 ["Popup"]
      105 LOADB                            R9 1
      106 SETTABLEKS                       R9 R8 K13 ["Resizable"]
      108 LOADK                            R9 K33 ["Floating"]
      109 SETTABLEKS                       R9 R8 K15 ["Title"]
      111 LOADN                            R9 50
      112 SETTABLEKS                       R9 R8 K35 ["ZIndex"]
      114 NAMECALL                         R5 R0 K23 ["CreateQWidgetPluginGui"]
      116 CALL                             R5 3 1
      117 LOADK                            R6 K39 ["FloatingRibbon"]
      118 SETTABLEKS                       R6 R5 K15 ["Title"]
      120 GETIMPORT                        R6 K32 [Enum.ZIndexBehavior.Sibling]
      122 SETTABLEKS                       R6 R5 K30 ["ZIndexBehavior"]
      124 GETTABLEKS                       R6 R1 K40 ["createElement"]
      126 MOVE                             R7 R3
      127 DUPTABLE                         R8 K44 [{"Plugin", "Widget", "Floating", "Mdi"}]
      128 SETTABLEKS                       R0 R8 K41 ["Plugin"]
      130 SETTABLEKS                       R4 R8 K42 ["Widget"]
      132 SETTABLEKS                       R5 R8 K33 ["Floating"]
      134 GETTABLEKS                       R9 R0 K45 ["MultipleDocumentInterfaceInstance"]
      136 SETTABLEKS                       R9 R8 K43 ["Mdi"]
      138 CALL                             R6 2 1
      139 GETTABLEKS                       R7 R2 K46 ["createRoot"]
      141 MOVE                             R8 R4
      142 CALL                             R7 1 1
      143 MOVE                             R10 R6
      144 NAMECALL                         R8 R7 K47 ["render"]
      146 CALL                             R8 2 0
      147 GETTABLEKS                       R8 R0 K48 ["Unloading"]
      149 NEWCLOSURE                       R10 P0
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R4
      152 NAMECALL                         R8 R8 K49 ["Once"]
      154 CALL                             R8 2 0
      155 GETUPVAL                         R8 3
      156 CALL                             R8 0 1
      157 JUMPIFNOT                        R8 ; [+23]
      158 GETIMPORT                        R8 K51 [game]
      160 LOADK                            R10 K52 ["RobloxPluginGuiService"]
      161 NAMECALL                         R8 R8 K53 ["GetService"]
      163 CALL                             R8 2 1
      164 GETIMPORT                        R9 K1 [require]
      166 GETUPVAL                         R10 0
      167 GETTABLEKS                       R10 R10 K5 ["Src"]
      169 GETTABLEKS                       R10 R10 K54 ["FoundationInspector"]
      171 CALL                             R9 1 1
      172 GETTABLEKS                       R10 R9 K55 ["open"]
      174 MOVE                             R11 R0
      175 CALL                             R10 1 0
      176 GETTABLEKS                       R10 R9 K56 ["watchDockWidgets"]
      178 MOVE                             R11 R0
      179 MOVE                             R12 R8
      180 CALL                             R10 2 0
      181 RETURN                           R0 0

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
