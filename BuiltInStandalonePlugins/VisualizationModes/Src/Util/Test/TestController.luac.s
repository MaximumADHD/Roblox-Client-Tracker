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
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K7 ["new"]
       32 CALL                             R2 0 1
       33 SETTABLEKS                       R2 R1 K15 ["_plugin"]
       35 GETTABLEKS                       R2 R0 K16 ["PluginSettings"]
       37 JUMPIFNOT                        R2 ; [+14]
       38 GETTABLEKS                       R2 R0 K16 ["PluginSettings"]
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 GETTABLEKS                       R7 R1 K15 ["_plugin"]
       45 MOVE                             R9 R5
       46 MOVE                             R10 R6
       47 NAMECALL                         R7 R7 K17 ["SetSetting"]
       49 CALL                             R7 3 0
       50 FORGLOOP                         R2 2 ; [-8]
       52 GETUPVAL                         R2 3
       53 GETTABLEKS                       R2 R2 K7 ["new"]
       55 CALL                             R2 0 1
       56 SETTABLEKS                       R2 R1 K18 ["_analytics"]
       58 GETUPVAL                         R2 4
       59 GETUPVAL                         R3 5
       60 GETTABLEKS                       R3 R3 K19 ["ContextServices"]
       62 GETTABLEKS                       R3 R3 K20 ["provide"]
       64 NEWTABLE                         R4 0 6
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K7 ["new"]
       69 CALL                             R5 0 1
       70 GETUPVAL                         R6 5
       71 GETTABLEKS                       R6 R6 K19 ["ContextServices"]
       73 GETTABLEKS                       R6 R6 K21 ["Mouse"]
       75 GETTABLEKS                       R6 R6 K7 ["new"]
       77 NEWTABLE                         R7 0 0
       79 CALL                             R6 1 1
       80 GETUPVAL                         R7 5
       81 GETTABLEKS                       R7 R7 K22 ["Style"]
       83 GETTABLEKS                       R7 R7 K23 ["Themes"]
       85 GETTABLEKS                       R7 R7 K24 ["StudioTheme"]
       87 GETTABLEKS                       R7 R7 K25 ["mock"]
       89 CALL                             R7 0 1
       90 GETUPVAL                         R8 5
       91 GETTABLEKS                       R8 R8 K19 ["ContextServices"]
       93 GETTABLEKS                       R8 R8 K26 ["Focus"]
       95 GETTABLEKS                       R8 R8 K7 ["new"]
       97 GETTABLEKS                       R9 R1 K10 ["_layerCollector"]
       99 CALL                             R8 1 1
      100 GETUPVAL                         R9 5
      101 GETTABLEKS                       R9 R9 K19 ["ContextServices"]
      103 GETTABLEKS                       R9 R9 K27 ["Localization"]
      105 GETTABLEKS                       R9 R9 K25 ["mock"]
      107 DUPTABLE                         R10 K32 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "VisualizationModes"}]
      108 GETUPVAL                         R11 6
      109 GETTABLEKS                       R11 R11 K33 ["Src"]
      111 GETTABLEKS                       R11 R11 K34 ["Resources"]
      113 GETTABLEKS                       R11 R11 K27 ["Localization"]
      115 GETTABLEKS                       R11 R11 K35 ["SourceStrings"]
      117 SETTABLEKS                       R11 R10 K28 ["stringResourceTable"]
      119 GETUPVAL                         R11 6
      120 GETTABLEKS                       R11 R11 K33 ["Src"]
      122 GETTABLEKS                       R11 R11 K34 ["Resources"]
      124 GETTABLEKS                       R11 R11 K27 ["Localization"]
      126 GETTABLEKS                       R11 R11 K36 ["LocalizedStrings"]
      128 SETTABLEKS                       R11 R10 K29 ["translationResourceTable"]
      130 CALL                             R9 1 1
      131 GETUPVAL                         R10 5
      132 GETTABLEKS                       R10 R10 K19 ["ContextServices"]
      134 GETTABLEKS                       R10 R10 K37 ["Plugin"]
      136 GETTABLEKS                       R10 R10 K7 ["new"]
      138 GETTABLEKS                       R11 R1 K15 ["_plugin"]
      140 CALL                             R10 1 -1
      141 SETLIST                          R4 R5 -1 [1]
      143 DUPTABLE                         R5 K39 [{"ContextStack"}]
      144 GETUPVAL                         R6 7
      145 GETTABLEKS                       R6 R6 K40 ["createElement"]
      147 GETUPVAL                         R7 8
      148 GETTABLEKS                       R7 R7 K38 ["ContextStack"]
      150 DUPTABLE                         R8 K42 [{"providers"}]
      151 NEWTABLE                         R9 0 4
      153 GETUPVAL                         R10 7
      154 GETTABLEKS                       R10 R10 K40 ["createElement"]
      156 GETUPVAL                         R11 9
      157 GETTABLEKS                       R11 R11 K43 ["Provider"]
      159 DUPTABLE                         R12 K46 [{["overlayStartsOpen"] = False}]
      160 CALL                             R10 2 1
      161 GETUPVAL                         R11 7
      162 GETTABLEKS                       R11 R11 K40 ["createElement"]
      164 GETUPVAL                         R12 10
      165 GETTABLEKS                       R12 R12 K43 ["Provider"]
      167 DUPTABLE                         R13 K48 [{"actionsComponent"}]
      168 GETTABLEKS                       R15 R0 K49 ["Actions"]
      170 JUMPIFNOT                        R15 ; [+7]
      171 GETUPVAL                         R14 11
      172 GETTABLEKS                       R16 R0 K49 ["Actions"]
      174 NAMECALL                         R14 R14 K50 ["CreateStrict"]
      176 CALL                             R14 2 1
      177 JUMP                             ; [+4]
      178 GETUPVAL                         R14 11
      179 NAMECALL                         R14 R14 K51 ["CreateWeak"]
      181 CALL                             R14 1 1
      182 SETTABLEKS                       R14 R13 K47 ["actionsComponent"]
      184 CALL                             R11 2 1
      185 GETUPVAL                         R12 7
      186 GETTABLEKS                       R12 R12 K40 ["createElement"]
      188 GETUPVAL                         R13 12
      189 GETTABLEKS                       R13 R13 K43 ["Provider"]
      191 DUPTABLE                         R14 K53 [{"renderingModesBridge"}]
      192 GETUPVAL                         R15 13
      193 GETTABLEKS                       R15 R15 K7 ["new"]
      195 CALL                             R15 0 1
      196 SETTABLEKS                       R15 R14 K52 ["renderingModesBridge"]
      198 CALL                             R12 2 1
      199 GETUPVAL                         R13 7
      200 GETTABLEKS                       R13 R13 K40 ["createElement"]
      202 GETUPVAL                         R14 14
      203 GETTABLEKS                       R14 R14 K43 ["Provider"]
      205 DUPTABLE                         R15 K55 [{"collaboratorsService"}]
      206 GETUPVAL                         R16 15
      207 SETTABLEKS                       R16 R15 K54 ["collaboratorsService"]
      209 CALL                             R13 2 -1
      210 SETLIST                          R9 R10 -1 [1]
      212 SETTABLEKS                       R9 R8 K41 ["providers"]
      214 DUPTABLE                         R9 K56 [{"Component"}]
      215 GETTABLEKS                       R10 R0 K0 ["Component"]
      217 SETTABLEKS                       R10 R9 K0 ["Component"]
      219 CALL                             R6 3 1
      220 SETTABLEKS                       R6 R5 K38 ["ContextStack"]
      222 CALL                             R3 2 1
      223 DUPTABLE                         R4 K58 [{"container"}]
      224 GETTABLEKS                       R5 R1 K10 ["_layerCollector"]
      226 SETTABLEKS                       R5 R4 K57 ["container"]
      228 CALL                             R2 2 0
      229 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_layerCollector"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["triggerPluginAction"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_layerCollector"]
        3 NAMECALL                         R0 R0 K1 ["Destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["act"]
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
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K15 ["ReactRoblox"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K10 ["Packages"]
       45 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K13 ["Src"]
       52 GETTABLEKS                       R8 R8 K17 ["Util"]
       54 GETTABLEKS                       R8 R8 K18 ["Test"]
       56 GETTABLEKS                       R8 R8 K19 ["TestAnalytics"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K13 ["Src"]
       63 GETTABLEKS                       R9 R9 K17 ["Util"]
       65 GETTABLEKS                       R9 R9 K18 ["Test"]
       67 GETTABLEKS                       R9 R9 K20 ["TestPlugin"]
       69 CALL                             R8 1 1
       70 NEWTABLE                         R9 8 0
       72 SETTABLEKS                       R9 R9 K21 ["__index"]
       74 GETIMPORT                        R10 K9 [require]
       76 GETTABLEKS                       R11 R1 K13 ["Src"]
       78 GETTABLEKS                       R11 R11 K22 ["Contexts"]
       80 GETTABLEKS                       R11 R11 K23 ["RenderingModesBridgeContext"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K9 [require]
       85 GETTABLEKS                       R12 R1 K13 ["Src"]
       87 GETTABLEKS                       R12 R12 K22 ["Contexts"]
       89 GETTABLEKS                       R12 R12 K24 ["OverlayMenuFocusedContext"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K9 [require]
       94 GETTABLEKS                       R13 R1 K13 ["Src"]
       96 GETTABLEKS                       R13 R13 K22 ["Contexts"]
       98 GETTABLEKS                       R13 R13 K25 ["ActionsContext"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K9 [require]
      103 GETTABLEKS                       R14 R1 K13 ["Src"]
      105 GETTABLEKS                       R14 R14 K22 ["Contexts"]
      107 GETTABLEKS                       R14 R14 K26 ["CollaboratorsServiceContext"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K9 [require]
      112 GETTABLEKS                       R15 R1 K13 ["Src"]
      114 GETTABLEKS                       R15 R15 K17 ["Util"]
      116 GETTABLEKS                       R15 R15 K18 ["Test"]
      118 GETTABLEKS                       R15 R15 K27 ["TestActionsComponent"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K9 [require]
      123 GETTABLEKS                       R16 R1 K13 ["Src"]
      125 GETTABLEKS                       R16 R16 K17 ["Util"]
      127 GETTABLEKS                       R16 R16 K18 ["Test"]
      129 GETTABLEKS                       R16 R16 K28 ["TestRenderingModesBridge"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K9 [require]
      134 GETTABLEKS                       R17 R1 K13 ["Src"]
      136 GETTABLEKS                       R17 R17 K17 ["Util"]
      138 GETTABLEKS                       R17 R17 K18 ["Test"]
      140 GETTABLEKS                       R17 R17 K29 ["TestCollaboratorsService"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K9 [require]
      145 GETTABLEKS                       R18 R1 K10 ["Packages"]
      147 GETTABLEKS                       R18 R18 K30 ["Dev"]
      149 GETTABLEKS                       R18 R18 K31 ["ReactTestingLibrary"]
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
