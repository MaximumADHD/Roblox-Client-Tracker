PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+9]
        4 GETIMPORT                        R3 K1 [error]
        6 LOADK                            R4 K2 ["No test plugin component %*"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 CALL                             R3 1 0
       12 RETURN                           R2 1

PROTO_1:
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
       52 GETTABLEKS                       R2 R0 K18 ["PluginComponents"]
       54 JUMPIFNOT                        R2 ; [+6]
       55 GETTABLEKS                       R3 R1 K15 ["_plugin"]
       57 NEWCLOSURE                       R4 P0
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R4 R3 K19 ["GetPluginComponent"]
       61 GETUPVAL                         R3 3
       62 GETTABLEKS                       R3 R3 K7 ["new"]
       64 CALL                             R3 0 1
       65 SETTABLEKS                       R3 R1 K20 ["_analytics"]
       67 GETUPVAL                         R3 4
       68 GETUPVAL                         R4 5
       69 GETTABLEKS                       R4 R4 K21 ["ContextServices"]
       71 GETTABLEKS                       R4 R4 K22 ["provide"]
       73 NEWTABLE                         R5 0 6
       75 GETUPVAL                         R6 3
       76 GETTABLEKS                       R6 R6 K7 ["new"]
       78 CALL                             R6 0 1
       79 GETUPVAL                         R7 5
       80 GETTABLEKS                       R7 R7 K21 ["ContextServices"]
       82 GETTABLEKS                       R7 R7 K23 ["Mouse"]
       84 GETTABLEKS                       R7 R7 K7 ["new"]
       86 NEWTABLE                         R8 0 0
       88 CALL                             R7 1 1
       89 GETUPVAL                         R8 5
       90 GETTABLEKS                       R8 R8 K24 ["Style"]
       92 GETTABLEKS                       R8 R8 K25 ["Themes"]
       94 GETTABLEKS                       R8 R8 K26 ["StudioTheme"]
       96 GETTABLEKS                       R8 R8 K27 ["mock"]
       98 CALL                             R8 0 1
       99 GETUPVAL                         R9 5
      100 GETTABLEKS                       R9 R9 K21 ["ContextServices"]
      102 GETTABLEKS                       R9 R9 K28 ["Focus"]
      104 GETTABLEKS                       R9 R9 K7 ["new"]
      106 GETTABLEKS                       R10 R1 K10 ["_layerCollector"]
      108 CALL                             R9 1 1
      109 GETUPVAL                         R10 5
      110 GETTABLEKS                       R10 R10 K21 ["ContextServices"]
      112 GETTABLEKS                       R10 R10 K29 ["Localization"]
      114 GETTABLEKS                       R10 R10 K27 ["mock"]
      116 DUPTABLE                         R11 K34 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "VisualizationModes"}]
      117 GETUPVAL                         R12 6
      118 GETTABLEKS                       R12 R12 K35 ["Src"]
      120 GETTABLEKS                       R12 R12 K36 ["Resources"]
      122 GETTABLEKS                       R12 R12 K29 ["Localization"]
      124 GETTABLEKS                       R12 R12 K37 ["SourceStrings"]
      126 SETTABLEKS                       R12 R11 K30 ["stringResourceTable"]
      128 GETUPVAL                         R12 6
      129 GETTABLEKS                       R12 R12 K35 ["Src"]
      131 GETTABLEKS                       R12 R12 K36 ["Resources"]
      133 GETTABLEKS                       R12 R12 K29 ["Localization"]
      135 GETTABLEKS                       R12 R12 K38 ["LocalizedStrings"]
      137 SETTABLEKS                       R12 R11 K31 ["translationResourceTable"]
      139 CALL                             R10 1 1
      140 GETUPVAL                         R11 5
      141 GETTABLEKS                       R11 R11 K21 ["ContextServices"]
      143 GETTABLEKS                       R11 R11 K39 ["Plugin"]
      145 GETTABLEKS                       R11 R11 K7 ["new"]
      147 GETTABLEKS                       R12 R1 K15 ["_plugin"]
      149 CALL                             R11 1 -1
      150 SETLIST                          R5 R6 -1 [1]
      152 DUPTABLE                         R6 K41 [{"ContextStack"}]
      153 GETUPVAL                         R7 7
      154 GETTABLEKS                       R7 R7 K42 ["createElement"]
      156 GETUPVAL                         R8 8
      157 GETTABLEKS                       R8 R8 K40 ["ContextStack"]
      159 DUPTABLE                         R9 K44 [{"providers"}]
      160 NEWTABLE                         R10 0 4
      162 GETUPVAL                         R11 7
      163 GETTABLEKS                       R11 R11 K42 ["createElement"]
      165 GETUPVAL                         R12 9
      166 GETTABLEKS                       R12 R12 K45 ["Provider"]
      168 DUPTABLE                         R13 K48 [{["overlayStartsOpen"] = False}]
      169 CALL                             R11 2 1
      170 GETUPVAL                         R12 7
      171 GETTABLEKS                       R12 R12 K42 ["createElement"]
      173 GETUPVAL                         R13 10
      174 GETTABLEKS                       R13 R13 K45 ["Provider"]
      176 DUPTABLE                         R14 K50 [{"actionsComponent"}]
      177 GETTABLEKS                       R16 R0 K51 ["ActionsComponent"]
      179 JUMPIFNOT                        R16 ; [+3]
      180 GETTABLEKS                       R15 R0 K51 ["ActionsComponent"]
      182 JUMP                             ; [+14]
      183 GETTABLEKS                       R16 R0 K52 ["Actions"]
      185 JUMPIFNOT                        R16 ; [+7]
      186 GETUPVAL                         R15 11
      187 GETTABLEKS                       R17 R0 K52 ["Actions"]
      189 NAMECALL                         R15 R15 K53 ["CreateStrict"]
      191 CALL                             R15 2 1
      192 JUMP                             ; [+4]
      193 GETUPVAL                         R15 11
      194 NAMECALL                         R15 R15 K54 ["CreateWeak"]
      196 CALL                             R15 1 1
      197 SETTABLEKS                       R15 R14 K49 ["actionsComponent"]
      199 CALL                             R12 2 1
      200 GETUPVAL                         R13 7
      201 GETTABLEKS                       R13 R13 K42 ["createElement"]
      203 GETUPVAL                         R14 12
      204 GETTABLEKS                       R14 R14 K45 ["Provider"]
      206 DUPTABLE                         R15 K56 [{"renderingModesBridge"}]
      207 GETUPVAL                         R16 13
      208 GETTABLEKS                       R16 R16 K7 ["new"]
      210 CALL                             R16 0 1
      211 SETTABLEKS                       R16 R15 K55 ["renderingModesBridge"]
      213 CALL                             R13 2 1
      214 GETUPVAL                         R14 7
      215 GETTABLEKS                       R14 R14 K42 ["createElement"]
      217 GETUPVAL                         R15 14
      218 GETTABLEKS                       R15 R15 K45 ["Provider"]
      220 DUPTABLE                         R16 K58 [{"collaboratorsService"}]
      221 GETUPVAL                         R17 15
      222 SETTABLEKS                       R17 R16 K57 ["collaboratorsService"]
      224 CALL                             R14 2 -1
      225 SETLIST                          R10 R11 -1 [1]
      227 SETTABLEKS                       R10 R9 K43 ["providers"]
      229 DUPTABLE                         R10 K59 [{"Component"}]
      230 GETTABLEKS                       R11 R0 K0 ["Component"]
      232 SETTABLEKS                       R11 R10 K0 ["Component"]
      234 CALL                             R7 3 1
      235 SETTABLEKS                       R7 R6 K40 ["ContextStack"]
      237 CALL                             R4 2 1
      238 DUPTABLE                         R5 K61 [{"container"}]
      239 GETTABLEKS                       R6 R1 K10 ["_layerCollector"]
      241 SETTABLEKS                       R6 R5 K60 ["container"]
      243 CALL                             R3 2 0
      244 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_layerCollector"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["triggerPluginAction"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_layerCollector"]
        3 NAMECALL                         R0 R0 K1 ["Destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
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
      154 DUPCLOSURE                       R19 K33 [PROTO_1]
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
      173 DUPCLOSURE                       R19 K35 [PROTO_2]
      174 SETTABLEKS                       R19 R9 K36 ["getLayerCollector"]
      176 DUPCLOSURE                       R19 K37 [PROTO_4]
      177 CAPTURE                          VAL R5
      178 SETTABLEKS                       R19 R9 K38 ["triggerPluginAction"]
      180 DUPCLOSURE                       R19 K39 [PROTO_6]
      181 CAPTURE                          VAL R5
      182 SETTABLEKS                       R19 R9 K40 ["destroy"]
      184 RETURN                           R9 1
