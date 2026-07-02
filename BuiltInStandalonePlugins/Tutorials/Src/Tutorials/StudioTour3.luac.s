PROTO_0:
        0 DUPTABLE                         R1 K8 [{[1] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"]}]
        1 SETTABLEKS                       R0 R1 K7 ["ItemId"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R3 K2 ["rbxassetid://%*"]
        3 LOADK                            R5 K3 [17274156146]
        4 NAMECALL                         R3 R3 K4 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 NAMECALL                         R0 R0 K5 ["GetObjects"]
       10 CALL                             R0 2 1
       11 GETTABLEN                        R1 R0 1
       12 GETIMPORT                        R4 K8 [CFrame.new]
       14 LOADK                            R5 K9 [{-363.583, 18.009, 74.073}]
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R1 K10 ["SetPrimaryPartCFrame"]
       18 CALL                             R2 -1 0
       19 GETUPVAL                         R2 0
       20 SETTABLEKS                       R2 R1 K11 ["Parent"]
       22 RETURN                           R1 1

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
       19 GETIMPORT                        R2 K9 [game]
       21 LOADK                            R4 K10 ["Workspace"]
       22 NAMECALL                         R2 R2 K11 ["GetService"]
       24 CALL                             R2 2 1
       25 GETIMPORT                        R3 K9 [game]
       27 LOADK                            R5 K12 ["Selection"]
       28 NAMECALL                         R3 R3 K11 ["GetService"]
       30 CALL                             R3 2 1
       31 DUPTABLE                         R4 K18 [{["assetIds"], ["positionOverride"] = {-363.583, 18.009, 74.073}, ["scriptWarningOverride"] = True}]
       32 NEWTABLE                         R5 0 1
       34 LOADK                            R6 K19 [17274156146]
       35 SETLIST                          R5 R6 1 [1]
       37 SETTABLEKS                       R5 R4 K13 ["assetIds"]
       39 DUPCLOSURE                       R5 K20 [PROTO_0]
       40 DUPTABLE                         R6 K29 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "ExplorerPlugin", ["Category"] = "Widgets", ["ItemId"] = "ExplorerPlugin"}]
       41 DUPTABLE                         R7 K32 [{["PluginId"] = "Properties", ["Category"] = "Widgets", ["ItemId"] = "Main"}]
       42 DUPTABLE                         R8 K36 [{["DataModel"] = "Edit", ["PluginType"] = "Asset", ["PluginId"] = "Toolbox", ["Category"] = "Widgets", ["ItemId"] = "Toolbox"}]
       43 DUPCLOSURE                       R9 K37 [PROTO_2]
       44 CAPTURE                          VAL R2
       45 DUPCLOSURE                       R10 K38 [PROTO_3]
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R11 0 26
       49 DUPTABLE                         R12 K49 [{["id"] = "intro1", ["topic"] = "introduction", ["showNext"] = True, ["cameraFocus"] = {-363.583, 18.009, 74.073}, ["cameraOffset"] = {80, 30, -20}, ["cameraMoveDuration"] = 0}]
       50 DUPTABLE                         R13 K51 [{["id"] = "intro2", ["topic"] = "introduction", ["showNext"] = True}]
       51 DUPTABLE                         R14 K58 [{["id"] = "rotateCamera", ["kind"] = "Rotate", ["topic"] = "navigation", ["instanceId"] = "camera"}]
       52 DUPTABLE                         R15 K62 [{["id"] = "moveCamera", ["kind"] = "Input", ["keys"], ["topic"] = "navigation"}]
       53 NEWTABLE                         R16 0 4
       55 GETIMPORT                        R17 K66 [Enum.KeyCode.W]
       57 GETIMPORT                        R18 K68 [Enum.KeyCode.A]
       59 GETIMPORT                        R19 K70 [Enum.KeyCode.S]
       61 GETIMPORT                        R20 K72 [Enum.KeyCode.D]
       63 SETLIST                          R16 R17 4 [1]
       65 SETTABLEKS                       R16 R15 K61 ["keys"]
       67 DUPTABLE                         R16 K74 [{["id"] = "panCamera", ["kind"] = "Input", ["keys"], ["topic"] = "navigation"}]
       68 NEWTABLE                         R17 0 2
       70 GETIMPORT                        R18 K76 [Enum.KeyCode.E]
       72 GETIMPORT                        R19 K78 [Enum.KeyCode.Q]
       74 SETLIST                          R17 R18 2 [1]
       76 SETTABLEKS                       R17 R16 K61 ["keys"]
       78 DUPTABLE                         R17 K81 [{["id"] = "zoomCamera", ["kind"] = "Input", ["inputs"], ["topic"] = "navigation"}]
       79 NEWTABLE                         R18 0 1
       81 GETIMPORT                        R19 K84 [Enum.UserInputType.MouseWheel]
       83 SETLIST                          R18 R19 1 [1]
       85 SETTABLEKS                       R18 R17 K80 ["inputs"]
       87 DUPTABLE                         R18 K89 [{["id"] = "marketplace", ["topic"] = "marketplace", ["widgets"] = "Toolbox", ["showNext"] = True, ["spotlight"], ["toolboxLimits"]}]
       88 DUPTABLE                         R19 K94 [{["TargetWidgetUri"], ["ShowBox"] = True, ["ShowHighlight"] = True, ["ShowShadows"] = True}]
       89 SETTABLEKS                       R8 R19 K90 ["TargetWidgetUri"]
       91 SETTABLEKS                       R19 R18 K87 ["spotlight"]
       93 SETTABLEKS                       R4 R18 K88 ["toolboxLimits"]
       95 DUPTABLE                         R19 K99 [{["id"] = "searchMarketplace", ["kind"] = "ToolboxSearch", ["search"] = "ball", ["toolboxLimits"], ["topic"] = "marketplace", ["widgets"] = "Toolbox"}]
       96 SETTABLEKS                       R4 R19 K88 ["toolboxLimits"]
       98 DUPTABLE                         R20 K103 [{["id"] = "insertMarketplace", ["kind"] = "ToolboxInsert", ["toolboxLimits"], ["topic"] = "marketplace", ["onSkip"], ["widgets"] = "Toolbox"}]
       99 SETTABLEKS                       R4 R20 K88 ["toolboxLimits"]
      101 DUPCLOSURE                       R21 K104 [PROTO_4]
      102 CAPTURE                          VAL R9
      103 SETTABLEKS                       R21 R20 K102 ["onSkip"]
      105 DUPTABLE                         R21 K109 [{["id"] = "playtest", ["topic"] = "playtest", ["kind"] = "StartPlaytest", ["widgets"] = "Ribbon-Home", ["hideWidgets"] = "Toolbox"}]
      106 DUPTABLE                         R22 K113 [{["id"] = "avatar", ["topic"] = "playtest", ["kind"] = "Avatar", ["state"], ["widgets"] = "Ribbon-Home"}]
      107 GETIMPORT                        R23 K116 [Enum.HumanoidStateType.Seated]
      109 SETTABLEKS                       R23 R22 K112 ["state"]
      111 DUPTABLE                         R23 K119 [{["id"] = "stopPlaytest", ["topic"] = "playtest", ["kind"] = "StopPlaytest", ["widgets"] = "Ribbon-Home"}]
      112 DUPTABLE                         R24 K131 [{["id"] = "wedge", ["kind"] = "Insert", ["topic"] = "parts", ["callout"], ["spotlight"], ["cameraFocus"] = {-843.991, -192.828, 68.512}, ["cameraOffset"] = {20, 20, 5}, ["instanceId"] = "wedge", ["className"] = "Part", ["properties"], ["onBind"], ["onSkip"], ["onUnbind"], ["widgets"] = "Ribbon-Home"}]
      113 DUPTABLE                         R25 K133 [{"TargetWidgetUri", "Offset"}]
      114 DUPTABLE                         R26 K136 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Part"}]
      115 SETTABLEKS                       R26 R25 K90 ["TargetWidgetUri"]
      117 GETIMPORT                        R26 K139 [Vector2.new]
      119 LOADN                            R27 5
      120 LOADN                            R28 20
      121 CALL                             R26 2 1
      122 SETTABLEKS                       R26 R25 K132 ["Offset"]
      124 SETTABLEKS                       R25 R24 K123 ["callout"]
      126 DUPTABLE                         R25 K140 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      127 DUPTABLE                         R26 K136 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Part"}]
      128 SETTABLEKS                       R26 R25 K90 ["TargetWidgetUri"]
      130 SETTABLEKS                       R25 R24 K87 ["spotlight"]
      132 DUPTABLE                         R25 K142 [{"Shape"}]
      133 GETIMPORT                        R26 K145 [Enum.PartType.Wedge]
      135 SETTABLEKS                       R26 R25 K141 ["Shape"]
      137 SETTABLEKS                       R25 R24 K128 ["properties"]
      139 DUPCLOSURE                       R25 K146 [PROTO_5]
      140 SETTABLEKS                       R25 R24 K129 ["onBind"]
      142 DUPCLOSURE                       R25 K147 [PROTO_6]
      143 CAPTURE                          VAL R10
      144 SETTABLEKS                       R25 R24 K102 ["onSkip"]
      146 DUPCLOSURE                       R25 K148 [PROTO_7]
      147 CAPTURE                          VAL R10
      148 SETTABLEKS                       R25 R24 K130 ["onUnbind"]
      150 DUPTABLE                         R25 K155 [{["id"] = "move", ["kind"] = "Move", ["topic"] = "parts", ["callout"], ["spotlight"], ["position"] = {-851.33, -193.045, 60.764}, ["distance"] = 80, ["instanceId"] = "wedge", ["onSkip"], ["widgets"] = "Ribbon-Home"}]
      151 DUPTABLE                         R26 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      152 DUPTABLE                         R27 K160 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Move"}]
      153 SETTABLEKS                       R27 R26 K90 ["TargetWidgetUri"]
      155 GETIMPORT                        R27 K139 [Vector2.new]
      157 LOADN                            R28 0
      158 LOADN                            R29 1
      159 CALL                             R27 2 1
      160 SETTABLEKS                       R27 R26 K156 ["TargetAnchorPoint"]
      162 GETIMPORT                        R27 K139 [Vector2.new]
      164 LOADN                            R28 0
      165 LOADN                            R29 0
      166 CALL                             R27 2 1
      167 SETTABLEKS                       R27 R26 K157 ["SubjectAnchorPoint"]
      169 GETIMPORT                        R27 K139 [Vector2.new]
      171 LOADN                            R28 0
      172 LOADN                            R29 20
      173 CALL                             R27 2 1
      174 SETTABLEKS                       R27 R26 K132 ["Offset"]
      176 SETTABLEKS                       R26 R25 K123 ["callout"]
      178 DUPTABLE                         R26 K161 [{["TargetWidgetUri"], ["TargetAnchorPoint"], ["SubjectAnchorPoint"], ["ShowHighlight"] = True}]
      179 DUPTABLE                         R27 K160 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Move"}]
      180 SETTABLEKS                       R27 R26 K90 ["TargetWidgetUri"]
      182 GETIMPORT                        R27 K139 [Vector2.new]
      184 LOADN                            R28 0
      185 LOADN                            R29 1
      186 CALL                             R27 2 1
      187 SETTABLEKS                       R27 R26 K156 ["TargetAnchorPoint"]
      189 GETIMPORT                        R27 K139 [Vector2.new]
      191 LOADN                            R28 0
      192 LOADN                            R29 0
      193 CALL                             R27 2 1
      194 SETTABLEKS                       R27 R26 K157 ["SubjectAnchorPoint"]
      196 SETTABLEKS                       R26 R25 K87 ["spotlight"]
      198 DUPCLOSURE                       R26 K162 [PROTO_8]
      199 CAPTURE                          VAL R10
      200 SETTABLEKS                       R26 R25 K102 ["onSkip"]
      202 DUPTABLE                         R26 K167 [{["id"] = "rotate", ["kind"] = "Rotate", ["topic"] = "parts", ["callout"], ["spotlight"], ["rotation"] = {0, -90, 0}, ["distance"] = 30, ["instanceId"] = "wedge", ["onSkip"], ["widgets"] = "Ribbon-Home"}]
      203 DUPTABLE                         R27 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      204 DUPTABLE                         R28 K169 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Rotate"}]
      205 SETTABLEKS                       R28 R27 K90 ["TargetWidgetUri"]
      207 GETIMPORT                        R28 K139 [Vector2.new]
      209 LOADN                            R29 0
      210 LOADN                            R30 1
      211 CALL                             R28 2 1
      212 SETTABLEKS                       R28 R27 K156 ["TargetAnchorPoint"]
      214 GETIMPORT                        R28 K139 [Vector2.new]
      216 LOADN                            R29 0
      217 LOADN                            R30 0
      218 CALL                             R28 2 1
      219 SETTABLEKS                       R28 R27 K157 ["SubjectAnchorPoint"]
      221 GETIMPORT                        R28 K139 [Vector2.new]
      223 LOADN                            R29 0
      224 LOADN                            R30 20
      225 CALL                             R28 2 1
      226 SETTABLEKS                       R28 R27 K132 ["Offset"]
      228 SETTABLEKS                       R27 R26 K123 ["callout"]
      230 DUPTABLE                         R27 K140 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      231 DUPTABLE                         R28 K169 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Rotate"}]
      232 SETTABLEKS                       R28 R27 K90 ["TargetWidgetUri"]
      234 SETTABLEKS                       R27 R26 K87 ["spotlight"]
      236 DUPCLOSURE                       R27 K170 [PROTO_9]
      237 CAPTURE                          VAL R10
      238 SETTABLEKS                       R27 R26 K102 ["onSkip"]
      240 DUPTABLE                         R27 K175 [{["id"] = "scale", ["kind"] = "Scale", ["topic"] = "parts", ["callout"], ["spotlight"], ["minSize"] = {15, 5, 10}, ["instanceId"] = "wedge", ["onSkip"], ["widgets"] = "Ribbon-Home"}]
      241 DUPTABLE                         R28 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      242 DUPTABLE                         R29 K177 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Scale"}]
      243 SETTABLEKS                       R29 R28 K90 ["TargetWidgetUri"]
      245 GETIMPORT                        R29 K139 [Vector2.new]
      247 LOADN                            R30 0
      248 LOADN                            R31 1
      249 CALL                             R29 2 1
      250 SETTABLEKS                       R29 R28 K156 ["TargetAnchorPoint"]
      252 GETIMPORT                        R29 K139 [Vector2.new]
      254 LOADN                            R30 0
      255 LOADN                            R31 0
      256 CALL                             R29 2 1
      257 SETTABLEKS                       R29 R28 K157 ["SubjectAnchorPoint"]
      259 GETIMPORT                        R29 K139 [Vector2.new]
      261 LOADN                            R30 0
      262 LOADN                            R31 20
      263 CALL                             R29 2 1
      264 SETTABLEKS                       R29 R28 K132 ["Offset"]
      266 SETTABLEKS                       R28 R27 K123 ["callout"]
      268 DUPTABLE                         R28 K140 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      269 DUPTABLE                         R29 K177 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Scale"}]
      270 SETTABLEKS                       R29 R28 K90 ["TargetWidgetUri"]
      272 SETTABLEKS                       R28 R27 K87 ["spotlight"]
      274 DUPCLOSURE                       R28 K178 [PROTO_10]
      275 CAPTURE                          VAL R10
      276 SETTABLEKS                       R28 R27 K102 ["onSkip"]
      278 SETLIST                          R11 R12 16 [1]
      280 DUPTABLE                         R12 K181 [{["id"] = "color", ["kind"] = "Edit", ["topic"] = "properties", ["callout"], ["spotlight"], ["className"] = "Part", ["changes"], ["onSkip"], ["widgets"] = "Ribbon-Home"}]
      281 DUPTABLE                         R13 K133 [{"TargetWidgetUri", "Offset"}]
      282 DUPTABLE                         R14 K183 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Color"}]
      283 SETTABLEKS                       R14 R13 K90 ["TargetWidgetUri"]
      285 GETIMPORT                        R14 K139 [Vector2.new]
      287 LOADN                            R15 5
      288 LOADN                            R16 20
      289 CALL                             R14 2 1
      290 SETTABLEKS                       R14 R13 K132 ["Offset"]
      292 SETTABLEKS                       R13 R12 K123 ["callout"]
      294 DUPTABLE                         R13 K140 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      295 DUPTABLE                         R14 K183 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Color"}]
      296 SETTABLEKS                       R14 R13 K90 ["TargetWidgetUri"]
      298 SETTABLEKS                       R13 R12 K87 ["spotlight"]
      300 DUPTABLE                         R13 K185 [{["Color"] = True}]
      301 SETTABLEKS                       R13 R12 K180 ["changes"]
      303 DUPCLOSURE                       R13 K186 [PROTO_11]
      304 CAPTURE                          VAL R10
      305 SETTABLEKS                       R13 R12 K102 ["onSkip"]
      307 DUPTABLE                         R13 K188 [{["id"] = "anchor", ["kind"] = "Edit", ["topic"] = "properties", ["callout"], ["spotlight"], ["className"] = "Part", ["changes"], ["onSkip"], ["widgets"] = "Ribbon-Home"}]
      308 DUPTABLE                         R14 K133 [{"TargetWidgetUri", "Offset"}]
      309 DUPTABLE                         R15 K190 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Anchor"}]
      310 SETTABLEKS                       R15 R14 K90 ["TargetWidgetUri"]
      312 GETIMPORT                        R15 K139 [Vector2.new]
      314 LOADN                            R16 0
      315 LOADN                            R17 20
      316 CALL                             R15 2 1
      317 SETTABLEKS                       R15 R14 K132 ["Offset"]
      319 SETTABLEKS                       R14 R13 K123 ["callout"]
      321 DUPTABLE                         R14 K140 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      322 DUPTABLE                         R15 K190 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_HomeTab/Anchor"}]
      323 SETTABLEKS                       R15 R14 K90 ["TargetWidgetUri"]
      325 SETTABLEKS                       R14 R13 K87 ["spotlight"]
      327 DUPTABLE                         R14 K192 [{["Anchored"] = True}]
      328 SETTABLEKS                       R14 R13 K180 ["changes"]
      330 DUPCLOSURE                       R14 K193 [PROTO_12]
      331 CAPTURE                          VAL R10
      332 SETTABLEKS                       R14 R13 K102 ["onSkip"]
      334 DUPTABLE                         R14 K196 [{["id"] = "explorer", ["callout"], ["spotlight"], ["topic"] = "properties", ["showNext"] = True, ["widgets"] = "Ribbon-Home,Explorer"}]
      335 DUPTABLE                         R15 K197 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      336 SETTABLEKS                       R6 R15 K90 ["TargetWidgetUri"]
      338 GETIMPORT                        R16 K139 [Vector2.new]
      340 LOADN                            R17 1
      341 LOADN                            R18 0
      342 CALL                             R16 2 1
      343 SETTABLEKS                       R16 R15 K157 ["SubjectAnchorPoint"]
      345 GETIMPORT                        R16 K139 [Vector2.new]
      347 LOADN                            R17 0
      348 LOADN                            R18 0
      349 CALL                             R16 2 1
      350 SETTABLEKS                       R16 R15 K156 ["TargetAnchorPoint"]
      352 GETIMPORT                        R16 K139 [Vector2.new]
      354 LOADN                            R17 -10
      355 LOADN                            R18 20
      356 CALL                             R16 2 1
      357 SETTABLEKS                       R16 R15 K132 ["Offset"]
      359 SETTABLEKS                       R15 R14 K123 ["callout"]
      361 DUPTABLE                         R15 K94 [{["TargetWidgetUri"], ["ShowBox"] = True, ["ShowHighlight"] = True, ["ShowShadows"] = True}]
      362 SETTABLEKS                       R6 R15 K90 ["TargetWidgetUri"]
      364 SETTABLEKS                       R15 R14 K87 ["spotlight"]
      366 DUPTABLE                         R15 K202 [{["id"] = "select", ["kind"] = "Select", ["path"] = "Ball", ["topic"] = "properties", ["callout"], ["onSkip"], ["widgets"] = "Ribbon-Home,Explorer"}]
      367 DUPTABLE                         R16 K197 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      368 SETTABLEKS                       R6 R16 K90 ["TargetWidgetUri"]
      370 GETIMPORT                        R17 K139 [Vector2.new]
      372 LOADN                            R18 1
      373 LOADN                            R19 0
      374 CALL                             R17 2 1
      375 SETTABLEKS                       R17 R16 K157 ["SubjectAnchorPoint"]
      377 GETIMPORT                        R17 K139 [Vector2.new]
      379 LOADN                            R18 0
      380 LOADN                            R19 0
      381 CALL                             R17 2 1
      382 SETTABLEKS                       R17 R16 K156 ["TargetAnchorPoint"]
      384 GETIMPORT                        R17 K139 [Vector2.new]
      386 LOADN                            R18 -10
      387 LOADN                            R19 20
      388 CALL                             R17 2 1
      389 SETTABLEKS                       R17 R16 K132 ["Offset"]
      391 SETTABLEKS                       R16 R15 K123 ["callout"]
      393 DUPCLOSURE                       R16 K203 [PROTO_13]
      394 CAPTURE                          VAL R9
      395 CAPTURE                          VAL R3
      396 SETTABLEKS                       R16 R15 K102 ["onSkip"]
      398 DUPTABLE                         R16 K206 [{["id"] = "focus", ["topic"] = "properties", ["kind"] = "Focus", ["onSkip"], ["widgets"] = "Ribbon-Home"}]
      399 DUPCLOSURE                       R17 K207 [PROTO_14]
      400 CAPTURE                          VAL R9
      401 CAPTURE                          VAL R3
      402 SETTABLEKS                       R17 R16 K102 ["onSkip"]
      404 DUPTABLE                         R17 K209 [{["id"] = "properties", ["topic"] = "properties", ["callout"], ["spotlight"], ["showNext"] = True, ["widgets"] = "Ribbon-Home,Explorer,Properties"}]
      405 DUPTABLE                         R18 K197 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      406 SETTABLEKS                       R7 R18 K90 ["TargetWidgetUri"]
      408 GETIMPORT                        R19 K139 [Vector2.new]
      410 LOADN                            R20 1
      411 LOADN                            R21 1
      412 CALL                             R19 2 1
      413 SETTABLEKS                       R19 R18 K157 ["SubjectAnchorPoint"]
      415 GETIMPORT                        R19 K139 [Vector2.new]
      417 LOADN                            R20 0
      418 LOADN                            R21 1
      419 CALL                             R19 2 1
      420 SETTABLEKS                       R19 R18 K156 ["TargetAnchorPoint"]
      422 GETIMPORT                        R19 K139 [Vector2.new]
      424 LOADN                            R20 -10
      425 LOADN                            R21 0
      426 CALL                             R19 2 1
      427 SETTABLEKS                       R19 R18 K132 ["Offset"]
      429 SETTABLEKS                       R18 R17 K123 ["callout"]
      431 DUPTABLE                         R18 K94 [{["TargetWidgetUri"], ["ShowBox"] = True, ["ShowHighlight"] = True, ["ShowShadows"] = True}]
      432 SETTABLEKS                       R7 R18 K90 ["TargetWidgetUri"]
      434 SETTABLEKS                       R18 R17 K87 ["spotlight"]
      436 DUPTABLE                         R18 K212 [{["id"] = "speed", ["topic"] = "properties", ["kind"] = "Edit", ["callout"], ["className"] = "Model", ["changes"], ["onSkip"], ["widgets"] = "Ribbon-Home,Explorer,Properties"}]
      437 DUPTABLE                         R19 K197 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      438 SETTABLEKS                       R7 R19 K90 ["TargetWidgetUri"]
      440 GETIMPORT                        R20 K139 [Vector2.new]
      442 LOADN                            R21 1
      443 LOADN                            R22 1
      444 CALL                             R20 2 1
      445 SETTABLEKS                       R20 R19 K157 ["SubjectAnchorPoint"]
      447 GETIMPORT                        R20 K139 [Vector2.new]
      449 LOADN                            R21 0
      450 LOADN                            R22 1
      451 CALL                             R20 2 1
      452 SETTABLEKS                       R20 R19 K156 ["TargetAnchorPoint"]
      454 GETIMPORT                        R20 K139 [Vector2.new]
      456 LOADN                            R21 -10
      457 LOADN                            R22 0
      458 CALL                             R20 2 1
      459 SETTABLEKS                       R20 R19 K132 ["Offset"]
      461 SETTABLEKS                       R19 R18 K123 ["callout"]
      463 DUPTABLE                         R19 K214 [{"Attributes"}]
      464 DUPTABLE                         R20 K216 [{["Speed"] = True}]
      465 SETTABLEKS                       R20 R19 K213 ["Attributes"]
      467 SETTABLEKS                       R19 R18 K180 ["changes"]
      469 DUPCLOSURE                       R19 K217 [PROTO_15]
      470 CAPTURE                          VAL R9
      471 SETTABLEKS                       R19 R18 K102 ["onSkip"]
      473 DUPTABLE                         R19 K220 [{["id"] = "playtest2", ["topic"] = "summary", ["kind"] = "StartPlaytest", ["widgets"] = "Ribbon-Home,Explorer,Properties"}]
      474 DUPTABLE                         R20 K222 [{["id"] = "stopPlaytest2", ["topic"] = "summary", ["kind"] = "StopPlaytest", ["widgets"] = "Ribbon-Home,Explorer,Properties"}]
      475 DUPTABLE                         R21 K224 [{["id"] = "complete", ["topic"] = "summary", ["widgets"] = "Ribbon-Home,Explorer,Properties"}]
      476 SETLIST                          R11 R12 10 [17]
      478 DUPTABLE                         R12 K231 [{["id"] = "StudioTour3", ["allowedPlaceIds"], ["onStart"], ["onComplete"], ["steps"], ["shouldShowCompletedDialog"]}]
      479 NEWTABLE                         R13 0 2
      481 LOADK                            R14 K232 [81362103443151]
      482 LOADK                            R15 K233 [88926143951080]
      483 SETLIST                          R13 R14 2 [1]
      485 SETTABLEKS                       R13 R12 K226 ["allowedPlaceIds"]
      487 DUPCLOSURE                       R13 K234 [PROTO_16]
      488 CAPTURE                          VAL R2
      489 SETTABLEKS                       R13 R12 K227 ["onStart"]
      491 DUPCLOSURE                       R13 K235 [PROTO_17]
      492 CAPTURE                          VAL R2
      493 SETTABLEKS                       R13 R12 K228 ["onComplete"]
      495 SETTABLEKS                       R11 R12 K229 ["steps"]
      497 JUMPIFNOT                        R1 ; [+2]
      498 LOADB                            R13 1
      499 JUMP                             ; [+1]
      500 LOADNIL                          R13
      501 SETTABLEKS                       R13 R12 K230 ["shouldShowCompletedDialog"]
      503 RETURN                           R12 1
