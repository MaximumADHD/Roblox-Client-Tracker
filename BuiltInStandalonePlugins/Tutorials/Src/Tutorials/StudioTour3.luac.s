PROTO_0:
        0 DUPTABLE                         R1 K8 [{[1] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"]}]
        1 SETTABLEKS                       R0 R1 K7 ["ItemId"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["rbxassetid://%*"]
        3 LOADK                            R4 K3 [17274156146]
        4 NAMECALL                         R2 R2 K4 ["format"]
        6 CALL                             R2 2 1
        7 NAMECALL                         R0 R0 K5 ["GetObjects"]
        9 CALL                             R0 2 1
       10 GETTABLEN                        R1 R0 1
       11 GETIMPORT                        R4 K8 [CFrame.new]
       13 LOADK                            R5 K9 [{-363.583, 18.009, 74.073}]
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R1 K10 ["SetPrimaryPartCFrame"]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R2 0
       19 SETTABLEKS                       R2 R1 K11 ["Parent"]
       21 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Ball"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 1
        7 GETIMPORT                        R1 K3 [pcall]
        9 DUPCLOSURE                       R2 K4 [PROTO_1]
       10 CAPTURE                          UPVAL U0
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+2]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R2 1
       15 GETIMPORT                        R3 K6 [warn]
       17 LOADK                            R4 K7 ["Could not insert ball:"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_3:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Part"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+8]
       11 GETTABLEKS                       R7 R6 K3 ["Shape"]
       13 GETIMPORT                        R8 K7 [Enum.PartType.Wedge]
       15 JUMPIFNOTEQ                      R7 R8 ; [+3]
       17 MOVE                             R1 R6
       18 JUMP                             ; [+2]
       19 FORGLOOP                         R2 2 ; [-14]
       21 JUMPIFNOT                        R1 ; [+16]
       22 LOADK                            R4 K1 ["Part"]
       23 NAMECALL                         R2 R1 K2 ["IsA"]
       25 CALL                             R2 2 1
       26 JUMPIFNOT                        R2 ; [+11]
       27 GETTABLEKS                       R2 R1 K3 ["Shape"]
       29 GETIMPORT                        R3 K7 [Enum.PartType.Wedge]
       31 JUMPIFNOTEQ                      R2 R3 ; [+6]
       33 GETTABLEKS                       R2 R0 K8 ["instances"]
       35 SETTABLEKS                       R1 R2 K9 ["wedge"]
       37 RETURN                           R1 1
       38 GETIMPORT                        R2 K12 [Instance.new]
       40 LOADK                            R3 K1 ["Part"]
       41 CALL                             R2 1 1
       42 GETIMPORT                        R3 K7 [Enum.PartType.Wedge]
       44 SETTABLEKS                       R3 R2 K3 ["Shape"]
       46 LOADK                            R3 K13 [{0, -90, 0}]
       47 SETTABLEKS                       R3 R2 K14 ["Rotation"]
       49 LOADK                            R3 K15 [{40, 15, 25}]
       50 SETTABLEKS                       R3 R2 K16 ["Size"]
       52 LOADK                            R3 K17 [{-846.491, -185.828, 67.012}]
       53 SETTABLEKS                       R3 R2 K18 ["Position"]
       55 GETUPVAL                         R3 0
       56 SETTABLEKS                       R3 R2 K19 ["Parent"]
       58 GETTABLEKS                       R3 R0 K8 ["instances"]
       60 SETTABLEKS                       R2 R3 K9 ["wedge"]
       62 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TutorialService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADB                            R3 1
        7 NAMECALL                         R1 R0 K4 ["SetTutorialCompletionStatus"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADK                            R2 K0 [{-843.991, -192.828, 68.512}]
        4 SETTABLEKS                       R2 R1 K1 ["Position"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADK                            R2 K0 [{0, -90, 0}]
        4 SETTABLEKS                       R2 R1 K1 ["Rotation"]
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADK                            R2 K0 [{-846.491, -185.828, 67.012}]
        4 SETTABLEKS                       R2 R1 K1 ["Position"]
        6 LOADK                            R2 K2 [{40, 15, 25}]
        7 SETTABLEKS                       R2 R1 K3 ["Size"]
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [Color3.fromRGB]
        5 LOADN                            R3 129
        6 LOADN                            R4 246
        7 LOADN                            R5 136
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Color"]
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K0 ["Anchored"]
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 NAMECALL                         R1 R1 K0 ["Set"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 NAMECALL                         R1 R1 K0 ["Set"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 LOADK                            R3 K0 ["Speed"]
        4 LOADN                            R4 250
        5 NAMECALL                         R1 R0 K1 ["SetAttribute"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["instances"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["CurrentCamera"]
        5 SETTABLEKS                       R2 R1 K2 ["camera"]
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K3 ["GetDescendants"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 LOADK                            R8 K4 ["BasePart"]
       13 NAMECALL                         R6 R5 K5 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+3]
       17 LOADB                            R6 1
       18 SETTABLEKS                       R6 R5 K6 ["Locked"]
       20 FORGLOOP                         R1 2 ; [-9]
       22 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDescendants"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 LOADK                            R7 K1 ["BasePart"]
        6 NAMECALL                         R5 R4 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+3]
       10 LOADB                            R5 0
       11 SETTABLEKS                       R5 R4 K3 ["Locked"]
       13 FORGLOOP                         R0 2 ; [-9]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagEnableRibbonTour"]
       17 CALL                             R1 1 1
       18 CALL                             R1 0 1
       19 GETIMPORT                        R2 K4 [require]
       21 GETTABLEKS                       R3 R0 K5 ["Src"]
       23 GETTABLEKS                       R3 R3 K6 ["Flags"]
       25 GETTABLEKS                       R3 R3 K8 ["getFFlagTutorialsFixUnsupportedRibbonHomeWidget"]
       27 CALL                             R2 1 1
       28 CALL                             R2 0 1
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADNIL                          R3
       31 JUMP                             ; [+1]
       32 LOADK                            R3 K9 ["Ribbon-Home"]
       33 JUMPIFNOT                        R2 ; [+2]
       34 LOADK                            R4 K10 ["Explorer"]
       35 JUMP                             ; [+1]
       36 LOADK                            R4 K11 ["Ribbon-Home,Explorer"]
       37 JUMPIFNOT                        R2 ; [+2]
       38 LOADK                            R5 K12 ["Explorer,Properties"]
       39 JUMP                             ; [+1]
       40 LOADK                            R5 K13 ["Ribbon-Home,Explorer,Properties"]
       41 GETIMPORT                        R6 K15 [game]
       43 LOADK                            R8 K16 ["Workspace"]
       44 NAMECALL                         R6 R6 K17 ["GetService"]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R7 K15 [game]
       49 LOADK                            R9 K18 ["Selection"]
       50 NAMECALL                         R7 R7 K17 ["GetService"]
       52 CALL                             R7 2 1
       53 DUPTABLE                         R8 K24 [{["assetIds"], ["positionOverride"] = {-363.583, 18.009, 74.073}, ["scriptWarningOverride"] = True}]
       54 NEWTABLE                         R9 0 1
       56 LOADK                            R10 K25 [17274156146]
       57 SETLIST                          R9 R10 1 [1]
       59 SETTABLEKS                       R9 R8 K19 ["assetIds"]
       61 DUPCLOSURE                       R9 K26 [PROTO_0]
       62 DUPTABLE                         R10 K35 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "ExplorerPlugin", ["Category"] = "Widgets", ["ItemId"] = "ExplorerPlugin"}]
       63 DUPTABLE                         R11 K38 [{["PluginId"] = "Properties", ["Category"] = "Widgets", ["ItemId"] = "Main"}]
       64 DUPTABLE                         R12 K42 [{["DataModel"] = "Edit", ["PluginType"] = "Asset", ["PluginId"] = "Toolbox", ["Category"] = "Widgets", ["ItemId"] = "Toolbox"}]
       65 DUPCLOSURE                       R13 K43 [PROTO_2]
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R14 K44 [PROTO_3]
       68 CAPTURE                          VAL R6
       69 NEWTABLE                         R15 0 26
       71 DUPTABLE                         R16 K55 [{["id"] = "intro1", ["topic"] = "introduction", ["showNext"] = True, ["cameraFocus"] = {-363.583, 18.009, 74.073}, ["cameraOffset"] = {80, 30, -20}, ["cameraMoveDuration"] = 0}]
       72 DUPTABLE                         R17 K57 [{["id"] = "intro2", ["topic"] = "introduction", ["showNext"] = True}]
       73 DUPTABLE                         R18 K64 [{["id"] = "rotateCamera", ["kind"] = "Rotate", ["topic"] = "navigation", ["instanceId"] = "camera"}]
       74 DUPTABLE                         R19 K68 [{["id"] = "moveCamera", ["kind"] = "Input", ["keys"], ["topic"] = "navigation"}]
       75 NEWTABLE                         R20 0 4
       77 GETIMPORT                        R21 K72 [Enum.KeyCode.W]
       79 GETIMPORT                        R22 K74 [Enum.KeyCode.A]
       81 GETIMPORT                        R23 K76 [Enum.KeyCode.S]
       83 GETIMPORT                        R24 K78 [Enum.KeyCode.D]
       85 SETLIST                          R20 R21 4 [1]
       87 SETTABLEKS                       R20 R19 K67 ["keys"]
       89 DUPTABLE                         R20 K80 [{["id"] = "panCamera", ["kind"] = "Input", ["keys"], ["topic"] = "navigation"}]
       90 NEWTABLE                         R21 0 2
       92 GETIMPORT                        R22 K82 [Enum.KeyCode.E]
       94 GETIMPORT                        R23 K84 [Enum.KeyCode.Q]
       96 SETLIST                          R21 R22 2 [1]
       98 SETTABLEKS                       R21 R20 K67 ["keys"]
      100 DUPTABLE                         R21 K87 [{["id"] = "zoomCamera", ["kind"] = "Input", ["inputs"], ["topic"] = "navigation"}]
      101 NEWTABLE                         R22 0 1
      103 GETIMPORT                        R23 K90 [Enum.UserInputType.MouseWheel]
      105 SETLIST                          R22 R23 1 [1]
      107 SETTABLEKS                       R22 R21 K86 ["inputs"]
      109 DUPTABLE                         R22 K95 [{["id"] = "marketplace", ["topic"] = "marketplace", ["widgets"] = "Toolbox", ["showNext"] = True, ["spotlight"], ["toolboxLimits"]}]
      110 DUPTABLE                         R23 K100 [{["TargetWidgetUri"], ["ShowBox"] = True, ["ShowHighlight"] = True, ["ShowShadows"] = True}]
      111 SETTABLEKS                       R12 R23 K96 ["TargetWidgetUri"]
      113 SETTABLEKS                       R23 R22 K93 ["spotlight"]
      115 SETTABLEKS                       R8 R22 K94 ["toolboxLimits"]
      117 DUPTABLE                         R23 K105 [{["id"] = "searchMarketplace", ["kind"] = "ToolboxSearch", ["search"] = "ball", ["toolboxLimits"], ["topic"] = "marketplace", ["widgets"] = "Toolbox"}]
      118 SETTABLEKS                       R8 R23 K94 ["toolboxLimits"]
      120 DUPTABLE                         R24 K109 [{["id"] = "insertMarketplace", ["kind"] = "ToolboxInsert", ["toolboxLimits"], ["topic"] = "marketplace", ["onSkip"], ["widgets"] = "Toolbox"}]
      121 SETTABLEKS                       R8 R24 K94 ["toolboxLimits"]
      123 DUPCLOSURE                       R25 K110 [PROTO_4]
      124 CAPTURE                          VAL R13
      125 SETTABLEKS                       R25 R24 K108 ["onSkip"]
      127 DUPTABLE                         R25 K114 [{["id"] = "playtest", ["topic"] = "playtest", ["kind"] = "StartPlaytest", ["widgets"], ["hideWidgets"] = "Toolbox"}]
      128 SETTABLEKS                       R3 R25 K92 ["widgets"]
      130 DUPTABLE                         R26 K118 [{["id"] = "avatar", ["topic"] = "playtest", ["kind"] = "Avatar", ["state"], ["widgets"]}]
      131 GETIMPORT                        R27 K121 [Enum.HumanoidStateType.Seated]
      133 SETTABLEKS                       R27 R26 K117 ["state"]
      135 SETTABLEKS                       R3 R26 K92 ["widgets"]
      137 DUPTABLE                         R27 K124 [{["id"] = "stopPlaytest", ["topic"] = "playtest", ["kind"] = "StopPlaytest", ["widgets"]}]
      138 SETTABLEKS                       R3 R27 K92 ["widgets"]
      140 DUPTABLE                         R28 K136 [{["id"] = "wedge", ["kind"] = "Insert", ["topic"] = "parts", ["callout"], ["spotlight"], ["cameraFocus"] = {-843.991, -192.828, 68.512}, ["cameraOffset"] = {20, 20, 5}, ["instanceId"] = "wedge", ["className"] = "Part", ["properties"], ["onBind"], ["onSkip"], ["onUnbind"], ["widgets"]}]
      141 DUPTABLE                         R29 K138 [{"TargetWidgetUri", "Offset"}]
      142 DUPTABLE                         R30 K141 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Part"}]
      143 SETTABLEKS                       R30 R29 K96 ["TargetWidgetUri"]
      145 GETIMPORT                        R30 K144 [Vector2.new]
      147 LOADN                            R31 5
      148 LOADN                            R32 20
      149 CALL                             R30 2 1
      150 SETTABLEKS                       R30 R29 K137 ["Offset"]
      152 SETTABLEKS                       R29 R28 K128 ["callout"]
      154 DUPTABLE                         R29 K145 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      155 DUPTABLE                         R30 K141 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Part"}]
      156 SETTABLEKS                       R30 R29 K96 ["TargetWidgetUri"]
      158 SETTABLEKS                       R29 R28 K93 ["spotlight"]
      160 DUPTABLE                         R29 K147 [{"Shape"}]
      161 GETIMPORT                        R30 K150 [Enum.PartType.Wedge]
      163 SETTABLEKS                       R30 R29 K146 ["Shape"]
      165 SETTABLEKS                       R29 R28 K133 ["properties"]
      167 DUPCLOSURE                       R29 K151 [PROTO_5]
      168 SETTABLEKS                       R29 R28 K134 ["onBind"]
      170 DUPCLOSURE                       R29 K152 [PROTO_6]
      171 CAPTURE                          VAL R14
      172 SETTABLEKS                       R29 R28 K108 ["onSkip"]
      174 DUPCLOSURE                       R29 K153 [PROTO_7]
      175 CAPTURE                          VAL R14
      176 SETTABLEKS                       R29 R28 K135 ["onUnbind"]
      178 SETTABLEKS                       R3 R28 K92 ["widgets"]
      180 DUPTABLE                         R29 K160 [{["id"] = "move", ["kind"] = "Move", ["topic"] = "parts", ["callout"], ["spotlight"], ["position"] = {-851.33, -193.045, 60.764}, ["distance"] = 80, ["instanceId"] = "wedge", ["onSkip"], ["widgets"]}]
      181 DUPTABLE                         R30 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      182 DUPTABLE                         R31 K165 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Move"}]
      183 SETTABLEKS                       R31 R30 K96 ["TargetWidgetUri"]
      185 GETIMPORT                        R31 K144 [Vector2.new]
      187 LOADN                            R32 0
      188 LOADN                            R33 1
      189 CALL                             R31 2 1
      190 SETTABLEKS                       R31 R30 K161 ["TargetAnchorPoint"]
      192 GETIMPORT                        R31 K144 [Vector2.new]
      194 LOADN                            R32 0
      195 LOADN                            R33 0
      196 CALL                             R31 2 1
      197 SETTABLEKS                       R31 R30 K162 ["SubjectAnchorPoint"]
      199 GETIMPORT                        R31 K144 [Vector2.new]
      201 LOADN                            R32 0
      202 LOADN                            R33 20
      203 CALL                             R31 2 1
      204 SETTABLEKS                       R31 R30 K137 ["Offset"]
      206 SETTABLEKS                       R30 R29 K128 ["callout"]
      208 DUPTABLE                         R30 K166 [{["TargetWidgetUri"], ["TargetAnchorPoint"], ["SubjectAnchorPoint"], ["ShowHighlight"] = True}]
      209 DUPTABLE                         R31 K165 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Move"}]
      210 SETTABLEKS                       R31 R30 K96 ["TargetWidgetUri"]
      212 GETIMPORT                        R31 K144 [Vector2.new]
      214 LOADN                            R32 0
      215 LOADN                            R33 1
      216 CALL                             R31 2 1
      217 SETTABLEKS                       R31 R30 K161 ["TargetAnchorPoint"]
      219 GETIMPORT                        R31 K144 [Vector2.new]
      221 LOADN                            R32 0
      222 LOADN                            R33 0
      223 CALL                             R31 2 1
      224 SETTABLEKS                       R31 R30 K162 ["SubjectAnchorPoint"]
      226 SETTABLEKS                       R30 R29 K93 ["spotlight"]
      228 DUPCLOSURE                       R30 K167 [PROTO_8]
      229 CAPTURE                          VAL R14
      230 SETTABLEKS                       R30 R29 K108 ["onSkip"]
      232 SETTABLEKS                       R3 R29 K92 ["widgets"]
      234 DUPTABLE                         R30 K172 [{["id"] = "rotate", ["kind"] = "Rotate", ["topic"] = "parts", ["callout"], ["spotlight"], ["rotation"] = {0, -90, 0}, ["distance"] = 30, ["instanceId"] = "wedge", ["onSkip"], ["widgets"]}]
      235 DUPTABLE                         R31 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      236 DUPTABLE                         R32 K174 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Rotate"}]
      237 SETTABLEKS                       R32 R31 K96 ["TargetWidgetUri"]
      239 GETIMPORT                        R32 K144 [Vector2.new]
      241 LOADN                            R33 0
      242 LOADN                            R34 1
      243 CALL                             R32 2 1
      244 SETTABLEKS                       R32 R31 K161 ["TargetAnchorPoint"]
      246 GETIMPORT                        R32 K144 [Vector2.new]
      248 LOADN                            R33 0
      249 LOADN                            R34 0
      250 CALL                             R32 2 1
      251 SETTABLEKS                       R32 R31 K162 ["SubjectAnchorPoint"]
      253 GETIMPORT                        R32 K144 [Vector2.new]
      255 LOADN                            R33 0
      256 LOADN                            R34 20
      257 CALL                             R32 2 1
      258 SETTABLEKS                       R32 R31 K137 ["Offset"]
      260 SETTABLEKS                       R31 R30 K128 ["callout"]
      262 DUPTABLE                         R31 K145 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      263 DUPTABLE                         R32 K174 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Rotate"}]
      264 SETTABLEKS                       R32 R31 K96 ["TargetWidgetUri"]
      266 SETTABLEKS                       R31 R30 K93 ["spotlight"]
      268 DUPCLOSURE                       R31 K175 [PROTO_9]
      269 CAPTURE                          VAL R14
      270 SETTABLEKS                       R31 R30 K108 ["onSkip"]
      272 SETTABLEKS                       R3 R30 K92 ["widgets"]
      274 DUPTABLE                         R31 K180 [{["id"] = "scale", ["kind"] = "Scale", ["topic"] = "parts", ["callout"], ["spotlight"], ["minSize"] = {15, 5, 10}, ["instanceId"] = "wedge", ["onSkip"], ["widgets"]}]
      275 DUPTABLE                         R32 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      276 DUPTABLE                         R33 K182 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Scale"}]
      277 SETTABLEKS                       R33 R32 K96 ["TargetWidgetUri"]
      279 GETIMPORT                        R33 K144 [Vector2.new]
      281 LOADN                            R34 0
      282 LOADN                            R35 1
      283 CALL                             R33 2 1
      284 SETTABLEKS                       R33 R32 K161 ["TargetAnchorPoint"]
      286 GETIMPORT                        R33 K144 [Vector2.new]
      288 LOADN                            R34 0
      289 LOADN                            R35 0
      290 CALL                             R33 2 1
      291 SETTABLEKS                       R33 R32 K162 ["SubjectAnchorPoint"]
      293 GETIMPORT                        R33 K144 [Vector2.new]
      295 LOADN                            R34 0
      296 LOADN                            R35 20
      297 CALL                             R33 2 1
      298 SETTABLEKS                       R33 R32 K137 ["Offset"]
      300 SETTABLEKS                       R32 R31 K128 ["callout"]
      302 DUPTABLE                         R32 K145 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      303 DUPTABLE                         R33 K182 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Scale"}]
      304 SETTABLEKS                       R33 R32 K96 ["TargetWidgetUri"]
      306 SETTABLEKS                       R32 R31 K93 ["spotlight"]
      308 DUPCLOSURE                       R32 K183 [PROTO_10]
      309 CAPTURE                          VAL R14
      310 SETTABLEKS                       R32 R31 K108 ["onSkip"]
      312 SETTABLEKS                       R3 R31 K92 ["widgets"]
      314 SETLIST                          R15 R16 16 [1]
      316 DUPTABLE                         R16 K186 [{["id"] = "color", ["kind"] = "Edit", ["topic"] = "properties", ["callout"], ["spotlight"], ["className"] = "Part", ["changes"], ["onSkip"], ["widgets"]}]
      317 DUPTABLE                         R17 K138 [{"TargetWidgetUri", "Offset"}]
      318 DUPTABLE                         R18 K188 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Color"}]
      319 SETTABLEKS                       R18 R17 K96 ["TargetWidgetUri"]
      321 GETIMPORT                        R18 K144 [Vector2.new]
      323 LOADN                            R19 5
      324 LOADN                            R20 20
      325 CALL                             R18 2 1
      326 SETTABLEKS                       R18 R17 K137 ["Offset"]
      328 SETTABLEKS                       R17 R16 K128 ["callout"]
      330 DUPTABLE                         R17 K145 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      331 DUPTABLE                         R18 K188 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Color"}]
      332 SETTABLEKS                       R18 R17 K96 ["TargetWidgetUri"]
      334 SETTABLEKS                       R17 R16 K93 ["spotlight"]
      336 DUPTABLE                         R17 K190 [{["Color"] = True}]
      337 SETTABLEKS                       R17 R16 K185 ["changes"]
      339 DUPCLOSURE                       R17 K191 [PROTO_11]
      340 CAPTURE                          VAL R14
      341 SETTABLEKS                       R17 R16 K108 ["onSkip"]
      343 SETTABLEKS                       R3 R16 K92 ["widgets"]
      345 DUPTABLE                         R17 K193 [{["id"] = "anchor", ["kind"] = "Edit", ["topic"] = "properties", ["callout"], ["spotlight"], ["className"] = "Part", ["changes"], ["onSkip"], ["widgets"]}]
      346 DUPTABLE                         R18 K138 [{"TargetWidgetUri", "Offset"}]
      347 DUPTABLE                         R19 K195 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Anchor"}]
      348 SETTABLEKS                       R19 R18 K96 ["TargetWidgetUri"]
      350 GETIMPORT                        R19 K144 [Vector2.new]
      352 LOADN                            R20 0
      353 LOADN                            R21 20
      354 CALL                             R19 2 1
      355 SETTABLEKS                       R19 R18 K137 ["Offset"]
      357 SETTABLEKS                       R18 R17 K128 ["callout"]
      359 DUPTABLE                         R18 K145 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      360 DUPTABLE                         R19 K195 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Anchor"}]
      361 SETTABLEKS                       R19 R18 K96 ["TargetWidgetUri"]
      363 SETTABLEKS                       R18 R17 K93 ["spotlight"]
      365 DUPTABLE                         R18 K197 [{["Anchored"] = True}]
      366 SETTABLEKS                       R18 R17 K185 ["changes"]
      368 DUPCLOSURE                       R18 K198 [PROTO_12]
      369 CAPTURE                          VAL R14
      370 SETTABLEKS                       R18 R17 K108 ["onSkip"]
      372 SETTABLEKS                       R3 R17 K92 ["widgets"]
      374 DUPTABLE                         R18 K200 [{["id"] = "explorer", ["callout"], ["spotlight"], ["topic"] = "properties", ["showNext"] = True, ["widgets"]}]
      375 DUPTABLE                         R19 K201 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      376 SETTABLEKS                       R10 R19 K96 ["TargetWidgetUri"]
      378 GETIMPORT                        R20 K144 [Vector2.new]
      380 LOADN                            R21 1
      381 LOADN                            R22 0
      382 CALL                             R20 2 1
      383 SETTABLEKS                       R20 R19 K162 ["SubjectAnchorPoint"]
      385 GETIMPORT                        R20 K144 [Vector2.new]
      387 LOADN                            R21 0
      388 LOADN                            R22 0
      389 CALL                             R20 2 1
      390 SETTABLEKS                       R20 R19 K161 ["TargetAnchorPoint"]
      392 GETIMPORT                        R20 K144 [Vector2.new]
      394 LOADN                            R21 -10
      395 LOADN                            R22 20
      396 CALL                             R20 2 1
      397 SETTABLEKS                       R20 R19 K137 ["Offset"]
      399 SETTABLEKS                       R19 R18 K128 ["callout"]
      401 DUPTABLE                         R19 K100 [{["TargetWidgetUri"], ["ShowBox"] = True, ["ShowHighlight"] = True, ["ShowShadows"] = True}]
      402 SETTABLEKS                       R10 R19 K96 ["TargetWidgetUri"]
      404 SETTABLEKS                       R19 R18 K93 ["spotlight"]
      406 SETTABLEKS                       R4 R18 K92 ["widgets"]
      408 DUPTABLE                         R19 K206 [{["id"] = "select", ["kind"] = "Select", ["path"] = "Ball", ["topic"] = "properties", ["callout"], ["onSkip"], ["widgets"]}]
      409 DUPTABLE                         R20 K201 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      410 SETTABLEKS                       R10 R20 K96 ["TargetWidgetUri"]
      412 GETIMPORT                        R21 K144 [Vector2.new]
      414 LOADN                            R22 1
      415 LOADN                            R23 0
      416 CALL                             R21 2 1
      417 SETTABLEKS                       R21 R20 K162 ["SubjectAnchorPoint"]
      419 GETIMPORT                        R21 K144 [Vector2.new]
      421 LOADN                            R22 0
      422 LOADN                            R23 0
      423 CALL                             R21 2 1
      424 SETTABLEKS                       R21 R20 K161 ["TargetAnchorPoint"]
      426 GETIMPORT                        R21 K144 [Vector2.new]
      428 LOADN                            R22 -10
      429 LOADN                            R23 20
      430 CALL                             R21 2 1
      431 SETTABLEKS                       R21 R20 K137 ["Offset"]
      433 SETTABLEKS                       R20 R19 K128 ["callout"]
      435 DUPCLOSURE                       R20 K207 [PROTO_13]
      436 CAPTURE                          VAL R13
      437 CAPTURE                          VAL R7
      438 SETTABLEKS                       R20 R19 K108 ["onSkip"]
      440 SETTABLEKS                       R4 R19 K92 ["widgets"]
      442 DUPTABLE                         R20 K210 [{["id"] = "focus", ["topic"] = "properties", ["kind"] = "Focus", ["onSkip"], ["widgets"]}]
      443 DUPCLOSURE                       R21 K211 [PROTO_14]
      444 CAPTURE                          VAL R13
      445 CAPTURE                          VAL R7
      446 SETTABLEKS                       R21 R20 K108 ["onSkip"]
      448 SETTABLEKS                       R3 R20 K92 ["widgets"]
      450 DUPTABLE                         R21 K212 [{["id"] = "properties", ["topic"] = "properties", ["callout"], ["spotlight"], ["showNext"] = True, ["widgets"]}]
      451 DUPTABLE                         R22 K201 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      452 SETTABLEKS                       R11 R22 K96 ["TargetWidgetUri"]
      454 GETIMPORT                        R23 K144 [Vector2.new]
      456 LOADN                            R24 1
      457 LOADN                            R25 1
      458 CALL                             R23 2 1
      459 SETTABLEKS                       R23 R22 K162 ["SubjectAnchorPoint"]
      461 GETIMPORT                        R23 K144 [Vector2.new]
      463 LOADN                            R24 0
      464 LOADN                            R25 1
      465 CALL                             R23 2 1
      466 SETTABLEKS                       R23 R22 K161 ["TargetAnchorPoint"]
      468 GETIMPORT                        R23 K144 [Vector2.new]
      470 LOADN                            R24 -10
      471 LOADN                            R25 0
      472 CALL                             R23 2 1
      473 SETTABLEKS                       R23 R22 K137 ["Offset"]
      475 SETTABLEKS                       R22 R21 K128 ["callout"]
      477 DUPTABLE                         R22 K100 [{["TargetWidgetUri"], ["ShowBox"] = True, ["ShowHighlight"] = True, ["ShowShadows"] = True}]
      478 SETTABLEKS                       R11 R22 K96 ["TargetWidgetUri"]
      480 SETTABLEKS                       R22 R21 K93 ["spotlight"]
      482 SETTABLEKS                       R5 R21 K92 ["widgets"]
      484 DUPTABLE                         R22 K215 [{["id"] = "speed", ["topic"] = "properties", ["kind"] = "Edit", ["callout"], ["className"] = "Model", ["changes"], ["onSkip"], ["widgets"]}]
      485 DUPTABLE                         R23 K201 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      486 SETTABLEKS                       R11 R23 K96 ["TargetWidgetUri"]
      488 GETIMPORT                        R24 K144 [Vector2.new]
      490 LOADN                            R25 1
      491 LOADN                            R26 1
      492 CALL                             R24 2 1
      493 SETTABLEKS                       R24 R23 K162 ["SubjectAnchorPoint"]
      495 GETIMPORT                        R24 K144 [Vector2.new]
      497 LOADN                            R25 0
      498 LOADN                            R26 1
      499 CALL                             R24 2 1
      500 SETTABLEKS                       R24 R23 K161 ["TargetAnchorPoint"]
      502 GETIMPORT                        R24 K144 [Vector2.new]
      504 LOADN                            R25 -10
      505 LOADN                            R26 0
      506 CALL                             R24 2 1
      507 SETTABLEKS                       R24 R23 K137 ["Offset"]
      509 SETTABLEKS                       R23 R22 K128 ["callout"]
      511 DUPTABLE                         R23 K217 [{"Attributes"}]
      512 DUPTABLE                         R24 K219 [{["Speed"] = True}]
      513 SETTABLEKS                       R24 R23 K216 ["Attributes"]
      515 SETTABLEKS                       R23 R22 K185 ["changes"]
      517 DUPCLOSURE                       R23 K220 [PROTO_15]
      518 CAPTURE                          VAL R13
      519 SETTABLEKS                       R23 R22 K108 ["onSkip"]
      521 SETTABLEKS                       R5 R22 K92 ["widgets"]
      523 DUPTABLE                         R23 K223 [{["id"] = "playtest2", ["topic"] = "summary", ["kind"] = "StartPlaytest", ["widgets"]}]
      524 SETTABLEKS                       R5 R23 K92 ["widgets"]
      526 DUPTABLE                         R24 K225 [{["id"] = "stopPlaytest2", ["topic"] = "summary", ["kind"] = "StopPlaytest", ["widgets"]}]
      527 SETTABLEKS                       R5 R24 K92 ["widgets"]
      529 DUPTABLE                         R25 K227 [{["id"] = "complete", ["topic"] = "summary", ["widgets"]}]
      530 SETTABLEKS                       R5 R25 K92 ["widgets"]
      532 SETLIST                          R15 R16 10 [17]
      534 DUPTABLE                         R16 K234 [{["id"] = "StudioTour3", ["allowedPlaceIds"], ["onStart"], ["onComplete"], ["steps"], ["shouldShowCompletedDialog"]}]
      535 NEWTABLE                         R17 0 2
      537 LOADK                            R18 K235 [81362103443151]
      538 LOADK                            R19 K236 [88926143951080]
      539 SETLIST                          R17 R18 2 [1]
      541 SETTABLEKS                       R17 R16 K229 ["allowedPlaceIds"]
      543 DUPCLOSURE                       R17 K237 [PROTO_16]
      544 CAPTURE                          VAL R6
      545 SETTABLEKS                       R17 R16 K230 ["onStart"]
      547 DUPCLOSURE                       R17 K238 [PROTO_17]
      548 CAPTURE                          VAL R6
      549 SETTABLEKS                       R17 R16 K231 ["onComplete"]
      551 SETTABLEKS                       R15 R16 K232 ["steps"]
      553 JUMPIFNOT                        R1 ; [+2]
      554 LOADB                            R17 1
      555 JUMP                             ; [+1]
      556 LOADNIL                          R17
      557 SETTABLEKS                       R17 R16 K233 ["shouldShowCompletedDialog"]
      559 RETURN                           R16 1
