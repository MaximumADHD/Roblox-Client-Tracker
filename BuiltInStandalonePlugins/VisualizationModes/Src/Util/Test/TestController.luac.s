PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Component"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["No component provided, strict typing isn't enabled plugin wide :("]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R2 4 0
       10 GETUPVAL                         R3 0
       11 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       13 GETIMPORT                        R1 K5 [setmetatable]
       15 CALL                             R1 2 1
       16 GETIMPORT                        R2 K8 [Instance.new]
       18 LOADK                            R3 K9 ["ScreenGui"]
       19 GETUPVAL                         R4 1
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K10 ["_layerCollector"]
       23 GETTABLEKS                       R2 R1 K10 ["_layerCollector"]
       25 GETIMPORT                        R3 K14 [Enum.ZIndexBehavior.Sibling]
       27 SETTABLEKS                       R3 R2 K12 ["ZIndexBehavior"]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K7 ["new"]
       32 CALL                             R2 0 1
       33 SETTABLEKS                       R2 R1 K15 ["_plugin"]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R2 R3 K7 ["new"]
       38 CALL                             R2 0 1
       39 SETTABLEKS                       R2 R1 K16 ["_analytics"]
       41 GETUPVAL                         R2 4
       42 GETUPVAL                         R5 5
       43 GETTABLEKS                       R4 R5 K17 ["ContextServices"]
       45 GETTABLEKS                       R3 R4 K18 ["provide"]
       47 NEWTABLE                         R4 0 6
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K7 ["new"]
       52 CALL                             R5 0 1
       53 GETUPVAL                         R9 5
       54 GETTABLEKS                       R8 R9 K17 ["ContextServices"]
       56 GETTABLEKS                       R7 R8 K19 ["Mouse"]
       58 GETTABLEKS                       R6 R7 K7 ["new"]
       60 NEWTABLE                         R7 0 0
       62 CALL                             R6 1 1
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R10 R11 K20 ["Style"]
       66 GETTABLEKS                       R9 R10 K21 ["Themes"]
       68 GETTABLEKS                       R8 R9 K22 ["StudioTheme"]
       70 GETTABLEKS                       R7 R8 K23 ["mock"]
       72 CALL                             R7 0 1
       73 GETUPVAL                         R11 5
       74 GETTABLEKS                       R10 R11 K17 ["ContextServices"]
       76 GETTABLEKS                       R9 R10 K24 ["Focus"]
       78 GETTABLEKS                       R8 R9 K7 ["new"]
       80 GETTABLEKS                       R9 R1 K10 ["_layerCollector"]
       82 CALL                             R8 1 1
       83 GETUPVAL                         R12 5
       84 GETTABLEKS                       R11 R12 K17 ["ContextServices"]
       86 GETTABLEKS                       R10 R11 K25 ["Localization"]
       88 GETTABLEKS                       R9 R10 K23 ["mock"]
       90 DUPTABLE                         R10 K29 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       91 GETUPVAL                         R15 6
       92 GETTABLEKS                       R14 R15 K30 ["Src"]
       94 GETTABLEKS                       R13 R14 K31 ["Resources"]
       96 GETTABLEKS                       R12 R13 K25 ["Localization"]
       98 GETTABLEKS                       R11 R12 K32 ["SourceStrings"]
      100 SETTABLEKS                       R11 R10 K26 ["stringResourceTable"]
      102 GETUPVAL                         R15 6
      103 GETTABLEKS                       R14 R15 K30 ["Src"]
      105 GETTABLEKS                       R13 R14 K31 ["Resources"]
      107 GETTABLEKS                       R12 R13 K25 ["Localization"]
      109 GETTABLEKS                       R11 R12 K33 ["LocalizedStrings"]
      111 SETTABLEKS                       R11 R10 K27 ["translationResourceTable"]
      113 LOADK                            R11 K34 ["VisualizationModes"]
      114 SETTABLEKS                       R11 R10 K28 ["pluginName"]
      116 CALL                             R9 1 1
      117 GETUPVAL                         R13 5
      118 GETTABLEKS                       R12 R13 K17 ["ContextServices"]
      120 GETTABLEKS                       R11 R12 K35 ["Plugin"]
      122 GETTABLEKS                       R10 R11 K7 ["new"]
      124 GETTABLEKS                       R11 R1 K15 ["_plugin"]
      126 CALL                             R10 1 -1
      127 SETLIST                          R4 R5 -1 [1]
      129 DUPTABLE                         R5 K37 [{"ContextStack"}]
      130 GETUPVAL                         R7 7
      131 GETTABLEKS                       R6 R7 K38 ["createElement"]
      133 GETUPVAL                         R8 8
      134 GETTABLEKS                       R7 R8 K36 ["ContextStack"]
      136 DUPTABLE                         R8 K40 [{"providers"}]
      137 NEWTABLE                         R9 0 4
      139 GETUPVAL                         R11 7
      140 GETTABLEKS                       R10 R11 K38 ["createElement"]
      142 GETUPVAL                         R12 9
      143 GETTABLEKS                       R11 R12 K41 ["Provider"]
      145 DUPTABLE                         R12 K43 [{"overlayStartsOpen"}]
      146 LOADB                            R13 0
      147 SETTABLEKS                       R13 R12 K42 ["overlayStartsOpen"]
      149 CALL                             R10 2 1
      150 GETUPVAL                         R12 7
      151 GETTABLEKS                       R11 R12 K38 ["createElement"]
      153 GETUPVAL                         R13 10
      154 GETTABLEKS                       R12 R13 K41 ["Provider"]
      156 DUPTABLE                         R13 K45 [{"actionsComponent"}]
      157 GETTABLEKS                       R15 R0 K46 ["Actions"]
      159 JUMPIFNOT                        R15 ; [+7]
      160 GETUPVAL                         R14 11
      161 GETTABLEKS                       R16 R0 K46 ["Actions"]
      163 NAMECALL                         R14 R14 K47 ["CreateStrict"]
      165 CALL                             R14 2 1
      166 JUMP                             ; [+4]
      167 GETUPVAL                         R14 11
      168 NAMECALL                         R14 R14 K48 ["CreateWeak"]
      170 CALL                             R14 1 1
      171 SETTABLEKS                       R14 R13 K44 ["actionsComponent"]
      173 CALL                             R11 2 1
      174 GETUPVAL                         R13 7
      175 GETTABLEKS                       R12 R13 K38 ["createElement"]
      177 GETUPVAL                         R14 12
      178 GETTABLEKS                       R13 R14 K41 ["Provider"]
      180 DUPTABLE                         R14 K50 [{"renderingModesBridge"}]
      181 GETUPVAL                         R16 13
      182 GETTABLEKS                       R15 R16 K7 ["new"]
      184 CALL                             R15 0 1
      185 SETTABLEKS                       R15 R14 K49 ["renderingModesBridge"]
      187 CALL                             R12 2 1
      188 GETUPVAL                         R14 7
      189 GETTABLEKS                       R13 R14 K38 ["createElement"]
      191 GETUPVAL                         R15 14
      192 GETTABLEKS                       R14 R15 K41 ["Provider"]
      194 DUPTABLE                         R15 K52 [{"collaboratorsService"}]
      195 GETUPVAL                         R16 15
      196 SETTABLEKS                       R16 R15 K51 ["collaboratorsService"]
      198 CALL                             R13 2 -1
      199 SETLIST                          R9 R10 -1 [1]
      201 SETTABLEKS                       R9 R8 K39 ["providers"]
      203 DUPTABLE                         R9 K53 [{"Component"}]
      204 GETTABLEKS                       R10 R0 K0 ["Component"]
      206 SETTABLEKS                       R10 R9 K0 ["Component"]
      208 CALL                             R6 3 1
      209 SETTABLEKS                       R6 R5 K36 ["ContextStack"]
      211 CALL                             R3 2 1
      212 DUPTABLE                         R4 K55 [{"container"}]
      213 GETTABLEKS                       R5 R1 K10 ["_layerCollector"]
      215 SETTABLEKS                       R5 R4 K54 ["container"]
      217 CALL                             R2 2 0
      218 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_layerCollector"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_plugin"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["triggerPluginAction"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_layerCollector"]
        3 NAMECALL                         R0 R0 K1 ["Destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["act"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["VisualizationModes"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R6 K14 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R7 K15 ["ReactRoblox"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R1 K10 ["Packages"]
       45 GETTABLEKS                       R7 R8 K16 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R11 R1 K13 ["Src"]
       52 GETTABLEKS                       R10 R11 K17 ["Util"]
       54 GETTABLEKS                       R9 R10 K18 ["Test"]
       56 GETTABLEKS                       R8 R9 K19 ["TestAnalytics"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R12 R1 K13 ["Src"]
       63 GETTABLEKS                       R11 R12 K17 ["Util"]
       65 GETTABLEKS                       R10 R11 K18 ["Test"]
       67 GETTABLEKS                       R9 R10 K20 ["TestPlugin"]
       69 CALL                             R8 1 1
       70 NEWTABLE                         R9 8 0
       72 SETTABLEKS                       R9 R9 K21 ["__index"]
       74 GETIMPORT                        R10 K9 [require]
       76 GETTABLEKS                       R13 R1 K13 ["Src"]
       78 GETTABLEKS                       R12 R13 K22 ["Contexts"]
       80 GETTABLEKS                       R11 R12 K23 ["RenderingModesBridgeContext"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K9 [require]
       85 GETTABLEKS                       R14 R1 K13 ["Src"]
       87 GETTABLEKS                       R13 R14 K22 ["Contexts"]
       89 GETTABLEKS                       R12 R13 K24 ["OverlayMenuFocusedContext"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K9 [require]
       94 GETTABLEKS                       R15 R1 K13 ["Src"]
       96 GETTABLEKS                       R14 R15 K22 ["Contexts"]
       98 GETTABLEKS                       R13 R14 K25 ["ActionsContext"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K9 [require]
      103 GETTABLEKS                       R16 R1 K13 ["Src"]
      105 GETTABLEKS                       R15 R16 K22 ["Contexts"]
      107 GETTABLEKS                       R14 R15 K26 ["CollaboratorsServiceContext"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K9 [require]
      112 GETTABLEKS                       R18 R1 K13 ["Src"]
      114 GETTABLEKS                       R17 R18 K17 ["Util"]
      116 GETTABLEKS                       R16 R17 K18 ["Test"]
      118 GETTABLEKS                       R15 R16 K27 ["TestActionsComponent"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K9 [require]
      123 GETTABLEKS                       R19 R1 K13 ["Src"]
      125 GETTABLEKS                       R18 R19 K17 ["Util"]
      127 GETTABLEKS                       R17 R18 K18 ["Test"]
      129 GETTABLEKS                       R16 R17 K28 ["TestRenderingModesBridge"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K9 [require]
      134 GETTABLEKS                       R20 R1 K13 ["Src"]
      136 GETTABLEKS                       R19 R20 K17 ["Util"]
      138 GETTABLEKS                       R18 R19 K18 ["Test"]
      140 GETTABLEKS                       R17 R18 K29 ["TestCollaboratorsService"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K9 [require]
      145 GETTABLEKS                       R20 R1 K10 ["Packages"]
      147 GETTABLEKS                       R19 R20 K30 ["Dev"]
      149 GETTABLEKS                       R18 R19 K31 ["ReactTestingLibrary"]
      151 CALL                             R17 1 1
      152 GETTABLEKS                       R18 R17 K32 ["render"]
      154 DUPCLOSURE                       R19 K33 [PROTO_0]
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R0
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R16
      171 SETTABLEKS                       R19 R9 K34 ["new"]
      173 DUPCLOSURE                       R19 K35 [PROTO_1]
      174 SETTABLEKS                       R19 R9 K36 ["getLayerCollector"]
      176 DUPCLOSURE                       R19 K37 [PROTO_3]
      177 CAPTURE                          VAL R5
      178 SETTABLEKS                       R19 R9 K38 ["triggerPluginAction"]
      180 DUPCLOSURE                       R19 K39 [PROTO_5]
      181 CAPTURE                          VAL R5
      182 SETTABLEKS                       R19 R9 K40 ["destroy"]
      184 RETURN                           R9 1
