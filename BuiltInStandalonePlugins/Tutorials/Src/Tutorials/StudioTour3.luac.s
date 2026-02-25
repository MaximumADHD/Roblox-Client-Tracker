PROTO_0:
        0 DUPTABLE                         R1 K5 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
        1 LOADK                            R2 K6 ["Standalone"]
        2 SETTABLEKS                       R2 R1 K0 ["DataModel"]
        4 LOADK                            R2 K6 ["Standalone"]
        5 SETTABLEKS                       R2 R1 K1 ["PluginType"]
        7 LOADK                            R2 K7 ["Ribbon"]
        8 SETTABLEKS                       R2 R1 K2 ["PluginId"]
       10 LOADK                            R2 K8 ["Widgets"]
       11 SETTABLEKS                       R2 R1 K3 ["Category"]
       13 SETTABLEKS                       R0 R1 K4 ["ItemId"]
       15 RETURN                           R1 1

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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Flags"]
       15 GETTABLEKS                       R2 R3 K7 ["getFFlagEnableRibbonTour"]
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
       31 DUPTABLE                         R4 K16 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
       32 NEWTABLE                         R5 0 1
       34 LOADK                            R6 K17 [17274156146]
       35 SETLIST                          R5 R6 1 [1]
       37 SETTABLEKS                       R5 R4 K13 ["assetIds"]
       39 LOADK                            R5 K18 [{-363.583, 18.009, 74.073}]
       40 SETTABLEKS                       R5 R4 K14 ["positionOverride"]
       42 LOADB                            R5 1
       43 SETTABLEKS                       R5 R4 K15 ["scriptWarningOverride"]
       45 DUPCLOSURE                       R5 K19 [PROTO_0]
       46 DUPTABLE                         R6 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       47 LOADK                            R7 K26 ["Standalone"]
       48 SETTABLEKS                       R7 R6 K20 ["DataModel"]
       50 LOADK                            R7 K26 ["Standalone"]
       51 SETTABLEKS                       R7 R6 K21 ["PluginType"]
       53 LOADK                            R7 K27 ["ExplorerPlugin"]
       54 SETTABLEKS                       R7 R6 K22 ["PluginId"]
       56 LOADK                            R7 K28 ["Widgets"]
       57 SETTABLEKS                       R7 R6 K23 ["Category"]
       59 LOADK                            R7 K27 ["ExplorerPlugin"]
       60 SETTABLEKS                       R7 R6 K24 ["ItemId"]
       62 DUPTABLE                         R7 K29 [{"PluginId", "Category", "ItemId"}]
       63 LOADK                            R8 K30 ["Properties"]
       64 SETTABLEKS                       R8 R7 K22 ["PluginId"]
       66 LOADK                            R8 K28 ["Widgets"]
       67 SETTABLEKS                       R8 R7 K23 ["Category"]
       69 LOADK                            R8 K31 ["Main"]
       70 SETTABLEKS                       R8 R7 K24 ["ItemId"]
       72 DUPTABLE                         R8 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       73 LOADK                            R9 K32 ["Edit"]
       74 SETTABLEKS                       R9 R8 K20 ["DataModel"]
       76 LOADK                            R9 K33 ["Asset"]
       77 SETTABLEKS                       R9 R8 K21 ["PluginType"]
       79 LOADK                            R9 K34 ["Toolbox"]
       80 SETTABLEKS                       R9 R8 K22 ["PluginId"]
       82 LOADK                            R9 K28 ["Widgets"]
       83 SETTABLEKS                       R9 R8 K23 ["Category"]
       85 LOADK                            R9 K34 ["Toolbox"]
       86 SETTABLEKS                       R9 R8 K24 ["ItemId"]
       88 DUPCLOSURE                       R9 K35 [PROTO_2]
       89 CAPTURE                          VAL R2
       90 DUPCLOSURE                       R10 K36 [PROTO_3]
       91 CAPTURE                          VAL R2
       92 NEWTABLE                         R11 0 26
       94 DUPTABLE                         R12 K43 [{"id", "topic", "showNext", "cameraFocus", "cameraOffset", "cameraMoveDuration"}]
       95 LOADK                            R13 K44 ["intro1"]
       96 SETTABLEKS                       R13 R12 K37 ["id"]
       98 LOADK                            R13 K45 ["introduction"]
       99 SETTABLEKS                       R13 R12 K38 ["topic"]
      101 LOADB                            R13 1
      102 SETTABLEKS                       R13 R12 K39 ["showNext"]
      104 LOADK                            R13 K18 [{-363.583, 18.009, 74.073}]
      105 SETTABLEKS                       R13 R12 K40 ["cameraFocus"]
      107 LOADK                            R13 K46 [{80, 30, -20}]
      108 SETTABLEKS                       R13 R12 K41 ["cameraOffset"]
      110 LOADN                            R13 0
      111 SETTABLEKS                       R13 R12 K42 ["cameraMoveDuration"]
      113 DUPTABLE                         R13 K47 [{"id", "topic", "showNext"}]
      114 LOADK                            R14 K48 ["intro2"]
      115 SETTABLEKS                       R14 R13 K37 ["id"]
      117 LOADK                            R14 K45 ["introduction"]
      118 SETTABLEKS                       R14 R13 K38 ["topic"]
      120 LOADB                            R14 1
      121 SETTABLEKS                       R14 R13 K39 ["showNext"]
      123 DUPTABLE                         R14 K51 [{"id", "kind", "topic", "instanceId"}]
      124 LOADK                            R15 K52 ["rotateCamera"]
      125 SETTABLEKS                       R15 R14 K37 ["id"]
      127 LOADK                            R15 K53 ["Rotate"]
      128 SETTABLEKS                       R15 R14 K49 ["kind"]
      130 LOADK                            R15 K54 ["navigation"]
      131 SETTABLEKS                       R15 R14 K38 ["topic"]
      133 LOADK                            R15 K55 ["camera"]
      134 SETTABLEKS                       R15 R14 K50 ["instanceId"]
      136 DUPTABLE                         R15 K57 [{"id", "kind", "keys", "topic"}]
      137 LOADK                            R16 K58 ["moveCamera"]
      138 SETTABLEKS                       R16 R15 K37 ["id"]
      140 LOADK                            R16 K59 ["Input"]
      141 SETTABLEKS                       R16 R15 K49 ["kind"]
      143 NEWTABLE                         R16 0 4
      145 GETIMPORT                        R17 K63 [Enum.KeyCode.W]
      147 GETIMPORT                        R18 K65 [Enum.KeyCode.A]
      149 GETIMPORT                        R19 K67 [Enum.KeyCode.S]
      151 GETIMPORT                        R20 K69 [Enum.KeyCode.D]
      153 SETLIST                          R16 R17 4 [1]
      155 SETTABLEKS                       R16 R15 K56 ["keys"]
      157 LOADK                            R16 K54 ["navigation"]
      158 SETTABLEKS                       R16 R15 K38 ["topic"]
      160 DUPTABLE                         R16 K57 [{"id", "kind", "keys", "topic"}]
      161 LOADK                            R17 K70 ["panCamera"]
      162 SETTABLEKS                       R17 R16 K37 ["id"]
      164 LOADK                            R17 K59 ["Input"]
      165 SETTABLEKS                       R17 R16 K49 ["kind"]
      167 NEWTABLE                         R17 0 2
      169 GETIMPORT                        R18 K72 [Enum.KeyCode.E]
      171 GETIMPORT                        R19 K74 [Enum.KeyCode.Q]
      173 SETLIST                          R17 R18 2 [1]
      175 SETTABLEKS                       R17 R16 K56 ["keys"]
      177 LOADK                            R17 K54 ["navigation"]
      178 SETTABLEKS                       R17 R16 K38 ["topic"]
      180 DUPTABLE                         R17 K76 [{"id", "kind", "inputs", "topic"}]
      181 LOADK                            R18 K77 ["zoomCamera"]
      182 SETTABLEKS                       R18 R17 K37 ["id"]
      184 LOADK                            R18 K59 ["Input"]
      185 SETTABLEKS                       R18 R17 K49 ["kind"]
      187 NEWTABLE                         R18 0 1
      189 GETIMPORT                        R19 K80 [Enum.UserInputType.MouseWheel]
      191 SETLIST                          R18 R19 1 [1]
      193 SETTABLEKS                       R18 R17 K75 ["inputs"]
      195 LOADK                            R18 K54 ["navigation"]
      196 SETTABLEKS                       R18 R17 K38 ["topic"]
      198 DUPTABLE                         R18 K84 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
      199 LOADK                            R19 K85 ["marketplace"]
      200 SETTABLEKS                       R19 R18 K37 ["id"]
      202 LOADK                            R19 K85 ["marketplace"]
      203 SETTABLEKS                       R19 R18 K38 ["topic"]
      205 LOADK                            R19 K34 ["Toolbox"]
      206 SETTABLEKS                       R19 R18 K81 ["widgets"]
      208 LOADB                            R19 1
      209 SETTABLEKS                       R19 R18 K39 ["showNext"]
      211 DUPTABLE                         R19 K90 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
      212 SETTABLEKS                       R8 R19 K86 ["TargetWidgetUri"]
      214 LOADB                            R20 1
      215 SETTABLEKS                       R20 R19 K87 ["ShowBox"]
      217 LOADB                            R20 1
      218 SETTABLEKS                       R20 R19 K88 ["ShowHighlight"]
      220 LOADB                            R20 1
      221 SETTABLEKS                       R20 R19 K89 ["ShowShadows"]
      223 SETTABLEKS                       R19 R18 K82 ["spotlight"]
      225 SETTABLEKS                       R4 R18 K83 ["toolboxLimits"]
      227 DUPTABLE                         R19 K92 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
      228 LOADK                            R20 K93 ["searchMarketplace"]
      229 SETTABLEKS                       R20 R19 K37 ["id"]
      231 LOADK                            R20 K94 ["ToolboxSearch"]
      232 SETTABLEKS                       R20 R19 K49 ["kind"]
      234 LOADK                            R20 K95 ["ball"]
      235 SETTABLEKS                       R20 R19 K91 ["search"]
      237 SETTABLEKS                       R4 R19 K83 ["toolboxLimits"]
      239 LOADK                            R20 K85 ["marketplace"]
      240 SETTABLEKS                       R20 R19 K38 ["topic"]
      242 LOADK                            R20 K34 ["Toolbox"]
      243 SETTABLEKS                       R20 R19 K81 ["widgets"]
      245 DUPTABLE                         R20 K97 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
      246 LOADK                            R21 K98 ["insertMarketplace"]
      247 SETTABLEKS                       R21 R20 K37 ["id"]
      249 LOADK                            R21 K99 ["ToolboxInsert"]
      250 SETTABLEKS                       R21 R20 K49 ["kind"]
      252 SETTABLEKS                       R4 R20 K83 ["toolboxLimits"]
      254 LOADK                            R21 K85 ["marketplace"]
      255 SETTABLEKS                       R21 R20 K38 ["topic"]
      257 DUPCLOSURE                       R21 K100 [PROTO_4]
      258 CAPTURE                          VAL R9
      259 SETTABLEKS                       R21 R20 K96 ["onSkip"]
      261 LOADK                            R21 K34 ["Toolbox"]
      262 SETTABLEKS                       R21 R20 K81 ["widgets"]
      264 DUPTABLE                         R21 K102 [{"id", "topic", "kind", "widgets", "hideWidgets"}]
      265 LOADK                            R22 K103 ["playtest"]
      266 SETTABLEKS                       R22 R21 K37 ["id"]
      268 LOADK                            R22 K103 ["playtest"]
      269 SETTABLEKS                       R22 R21 K38 ["topic"]
      271 LOADK                            R22 K104 ["StartPlaytest"]
      272 SETTABLEKS                       R22 R21 K49 ["kind"]
      274 LOADK                            R22 K105 ["Ribbon-Home"]
      275 SETTABLEKS                       R22 R21 K81 ["widgets"]
      277 LOADK                            R22 K34 ["Toolbox"]
      278 SETTABLEKS                       R22 R21 K101 ["hideWidgets"]
      280 DUPTABLE                         R22 K107 [{"id", "topic", "kind", "state", "widgets"}]
      281 LOADK                            R23 K108 ["avatar"]
      282 SETTABLEKS                       R23 R22 K37 ["id"]
      284 LOADK                            R23 K103 ["playtest"]
      285 SETTABLEKS                       R23 R22 K38 ["topic"]
      287 LOADK                            R23 K109 ["Avatar"]
      288 SETTABLEKS                       R23 R22 K49 ["kind"]
      290 GETIMPORT                        R23 K112 [Enum.HumanoidStateType.Seated]
      292 SETTABLEKS                       R23 R22 K106 ["state"]
      294 LOADK                            R23 K105 ["Ribbon-Home"]
      295 SETTABLEKS                       R23 R22 K81 ["widgets"]
      297 DUPTABLE                         R23 K113 [{"id", "topic", "kind", "widgets"}]
      298 LOADK                            R24 K114 ["stopPlaytest"]
      299 SETTABLEKS                       R24 R23 K37 ["id"]
      301 LOADK                            R24 K103 ["playtest"]
      302 SETTABLEKS                       R24 R23 K38 ["topic"]
      304 LOADK                            R24 K115 ["StopPlaytest"]
      305 SETTABLEKS                       R24 R23 K49 ["kind"]
      307 LOADK                            R24 K105 ["Ribbon-Home"]
      308 SETTABLEKS                       R24 R23 K81 ["widgets"]
      310 DUPTABLE                         R24 K121 [{"id", "kind", "topic", "callout", "spotlight", "cameraFocus", "cameraOffset", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "widgets"}]
      311 LOADK                            R25 K122 ["wedge"]
      312 SETTABLEKS                       R25 R24 K37 ["id"]
      314 LOADK                            R25 K123 ["Insert"]
      315 SETTABLEKS                       R25 R24 K49 ["kind"]
      317 LOADK                            R25 K124 ["parts"]
      318 SETTABLEKS                       R25 R24 K38 ["topic"]
      320 DUPTABLE                         R25 K126 [{"TargetWidgetUri", "Offset"}]
      321 DUPTABLE                         R26 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      322 LOADK                            R27 K26 ["Standalone"]
      323 SETTABLEKS                       R27 R26 K20 ["DataModel"]
      325 LOADK                            R27 K26 ["Standalone"]
      326 SETTABLEKS                       R27 R26 K21 ["PluginType"]
      328 LOADK                            R27 K127 ["Ribbon"]
      329 SETTABLEKS                       R27 R26 K22 ["PluginId"]
      331 LOADK                            R27 K28 ["Widgets"]
      332 SETTABLEKS                       R27 R26 K23 ["Category"]
      334 LOADK                            R27 K128 ["Tabs/BuiltIn_HomeTab/Part"]
      335 SETTABLEKS                       R27 R26 K24 ["ItemId"]
      337 SETTABLEKS                       R26 R25 K86 ["TargetWidgetUri"]
      339 GETIMPORT                        R26 K131 [Vector2.new]
      341 LOADN                            R27 5
      342 LOADN                            R28 20
      343 CALL                             R26 2 1
      344 SETTABLEKS                       R26 R25 K125 ["Offset"]
      346 SETTABLEKS                       R25 R24 K116 ["callout"]
      348 DUPTABLE                         R25 K132 [{"TargetWidgetUri", "ShowHighlight"}]
      349 DUPTABLE                         R26 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      350 LOADK                            R27 K26 ["Standalone"]
      351 SETTABLEKS                       R27 R26 K20 ["DataModel"]
      353 LOADK                            R27 K26 ["Standalone"]
      354 SETTABLEKS                       R27 R26 K21 ["PluginType"]
      356 LOADK                            R27 K127 ["Ribbon"]
      357 SETTABLEKS                       R27 R26 K22 ["PluginId"]
      359 LOADK                            R27 K28 ["Widgets"]
      360 SETTABLEKS                       R27 R26 K23 ["Category"]
      362 LOADK                            R27 K128 ["Tabs/BuiltIn_HomeTab/Part"]
      363 SETTABLEKS                       R27 R26 K24 ["ItemId"]
      365 SETTABLEKS                       R26 R25 K86 ["TargetWidgetUri"]
      367 LOADB                            R26 1
      368 SETTABLEKS                       R26 R25 K88 ["ShowHighlight"]
      370 SETTABLEKS                       R25 R24 K82 ["spotlight"]
      372 LOADK                            R25 K133 [{-843.991, -192.828, 68.512}]
      373 SETTABLEKS                       R25 R24 K40 ["cameraFocus"]
      375 LOADK                            R25 K134 [{20, 20, 5}]
      376 SETTABLEKS                       R25 R24 K41 ["cameraOffset"]
      378 LOADK                            R25 K122 ["wedge"]
      379 SETTABLEKS                       R25 R24 K50 ["instanceId"]
      381 LOADK                            R25 K135 ["Part"]
      382 SETTABLEKS                       R25 R24 K117 ["className"]
      384 DUPTABLE                         R25 K137 [{"Shape"}]
      385 GETIMPORT                        R26 K140 [Enum.PartType.Wedge]
      387 SETTABLEKS                       R26 R25 K136 ["Shape"]
      389 SETTABLEKS                       R25 R24 K118 ["properties"]
      391 DUPCLOSURE                       R25 K141 [PROTO_5]
      392 SETTABLEKS                       R25 R24 K119 ["onBind"]
      394 DUPCLOSURE                       R25 K142 [PROTO_6]
      395 CAPTURE                          VAL R10
      396 SETTABLEKS                       R25 R24 K96 ["onSkip"]
      398 DUPCLOSURE                       R25 K143 [PROTO_7]
      399 CAPTURE                          VAL R10
      400 SETTABLEKS                       R25 R24 K120 ["onUnbind"]
      402 LOADK                            R25 K105 ["Ribbon-Home"]
      403 SETTABLEKS                       R25 R24 K81 ["widgets"]
      405 DUPTABLE                         R25 K146 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
      406 LOADK                            R26 K147 ["move"]
      407 SETTABLEKS                       R26 R25 K37 ["id"]
      409 LOADK                            R26 K148 ["Move"]
      410 SETTABLEKS                       R26 R25 K49 ["kind"]
      412 LOADK                            R26 K124 ["parts"]
      413 SETTABLEKS                       R26 R25 K38 ["topic"]
      415 DUPTABLE                         R26 K151 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      416 DUPTABLE                         R27 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      417 LOADK                            R28 K26 ["Standalone"]
      418 SETTABLEKS                       R28 R27 K20 ["DataModel"]
      420 LOADK                            R28 K26 ["Standalone"]
      421 SETTABLEKS                       R28 R27 K21 ["PluginType"]
      423 LOADK                            R28 K127 ["Ribbon"]
      424 SETTABLEKS                       R28 R27 K22 ["PluginId"]
      426 LOADK                            R28 K28 ["Widgets"]
      427 SETTABLEKS                       R28 R27 K23 ["Category"]
      429 LOADK                            R28 K152 ["Tabs/BuiltIn_HomeTab/Move"]
      430 SETTABLEKS                       R28 R27 K24 ["ItemId"]
      432 SETTABLEKS                       R27 R26 K86 ["TargetWidgetUri"]
      434 GETIMPORT                        R27 K131 [Vector2.new]
      436 LOADN                            R28 0
      437 LOADN                            R29 1
      438 CALL                             R27 2 1
      439 SETTABLEKS                       R27 R26 K149 ["TargetAnchorPoint"]
      441 GETIMPORT                        R27 K131 [Vector2.new]
      443 LOADN                            R28 0
      444 LOADN                            R29 0
      445 CALL                             R27 2 1
      446 SETTABLEKS                       R27 R26 K150 ["SubjectAnchorPoint"]
      448 GETIMPORT                        R27 K131 [Vector2.new]
      450 LOADN                            R28 0
      451 LOADN                            R29 20
      452 CALL                             R27 2 1
      453 SETTABLEKS                       R27 R26 K125 ["Offset"]
      455 SETTABLEKS                       R26 R25 K116 ["callout"]
      457 DUPTABLE                         R26 K153 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "ShowHighlight"}]
      458 DUPTABLE                         R27 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      459 LOADK                            R28 K26 ["Standalone"]
      460 SETTABLEKS                       R28 R27 K20 ["DataModel"]
      462 LOADK                            R28 K26 ["Standalone"]
      463 SETTABLEKS                       R28 R27 K21 ["PluginType"]
      465 LOADK                            R28 K127 ["Ribbon"]
      466 SETTABLEKS                       R28 R27 K22 ["PluginId"]
      468 LOADK                            R28 K28 ["Widgets"]
      469 SETTABLEKS                       R28 R27 K23 ["Category"]
      471 LOADK                            R28 K152 ["Tabs/BuiltIn_HomeTab/Move"]
      472 SETTABLEKS                       R28 R27 K24 ["ItemId"]
      474 SETTABLEKS                       R27 R26 K86 ["TargetWidgetUri"]
      476 GETIMPORT                        R27 K131 [Vector2.new]
      478 LOADN                            R28 0
      479 LOADN                            R29 1
      480 CALL                             R27 2 1
      481 SETTABLEKS                       R27 R26 K149 ["TargetAnchorPoint"]
      483 GETIMPORT                        R27 K131 [Vector2.new]
      485 LOADN                            R28 0
      486 LOADN                            R29 0
      487 CALL                             R27 2 1
      488 SETTABLEKS                       R27 R26 K150 ["SubjectAnchorPoint"]
      490 LOADB                            R27 1
      491 SETTABLEKS                       R27 R26 K88 ["ShowHighlight"]
      493 SETTABLEKS                       R26 R25 K82 ["spotlight"]
      495 LOADK                            R26 K154 [{-851.33, -193.045, 60.764}]
      496 SETTABLEKS                       R26 R25 K144 ["position"]
      498 LOADN                            R26 80
      499 SETTABLEKS                       R26 R25 K145 ["distance"]
      501 LOADK                            R26 K122 ["wedge"]
      502 SETTABLEKS                       R26 R25 K50 ["instanceId"]
      504 DUPCLOSURE                       R26 K155 [PROTO_8]
      505 CAPTURE                          VAL R10
      506 SETTABLEKS                       R26 R25 K96 ["onSkip"]
      508 LOADK                            R26 K105 ["Ribbon-Home"]
      509 SETTABLEKS                       R26 R25 K81 ["widgets"]
      511 DUPTABLE                         R26 K157 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
      512 LOADK                            R27 K158 ["rotate"]
      513 SETTABLEKS                       R27 R26 K37 ["id"]
      515 LOADK                            R27 K53 ["Rotate"]
      516 SETTABLEKS                       R27 R26 K49 ["kind"]
      518 LOADK                            R27 K124 ["parts"]
      519 SETTABLEKS                       R27 R26 K38 ["topic"]
      521 DUPTABLE                         R27 K151 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      522 DUPTABLE                         R28 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      523 LOADK                            R29 K26 ["Standalone"]
      524 SETTABLEKS                       R29 R28 K20 ["DataModel"]
      526 LOADK                            R29 K26 ["Standalone"]
      527 SETTABLEKS                       R29 R28 K21 ["PluginType"]
      529 LOADK                            R29 K127 ["Ribbon"]
      530 SETTABLEKS                       R29 R28 K22 ["PluginId"]
      532 LOADK                            R29 K28 ["Widgets"]
      533 SETTABLEKS                       R29 R28 K23 ["Category"]
      535 LOADK                            R29 K159 ["Tabs/BuiltIn_HomeTab/Rotate"]
      536 SETTABLEKS                       R29 R28 K24 ["ItemId"]
      538 SETTABLEKS                       R28 R27 K86 ["TargetWidgetUri"]
      540 GETIMPORT                        R28 K131 [Vector2.new]
      542 LOADN                            R29 0
      543 LOADN                            R30 1
      544 CALL                             R28 2 1
      545 SETTABLEKS                       R28 R27 K149 ["TargetAnchorPoint"]
      547 GETIMPORT                        R28 K131 [Vector2.new]
      549 LOADN                            R29 0
      550 LOADN                            R30 0
      551 CALL                             R28 2 1
      552 SETTABLEKS                       R28 R27 K150 ["SubjectAnchorPoint"]
      554 GETIMPORT                        R28 K131 [Vector2.new]
      556 LOADN                            R29 0
      557 LOADN                            R30 20
      558 CALL                             R28 2 1
      559 SETTABLEKS                       R28 R27 K125 ["Offset"]
      561 SETTABLEKS                       R27 R26 K116 ["callout"]
      563 DUPTABLE                         R27 K132 [{"TargetWidgetUri", "ShowHighlight"}]
      564 DUPTABLE                         R28 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      565 LOADK                            R29 K26 ["Standalone"]
      566 SETTABLEKS                       R29 R28 K20 ["DataModel"]
      568 LOADK                            R29 K26 ["Standalone"]
      569 SETTABLEKS                       R29 R28 K21 ["PluginType"]
      571 LOADK                            R29 K127 ["Ribbon"]
      572 SETTABLEKS                       R29 R28 K22 ["PluginId"]
      574 LOADK                            R29 K28 ["Widgets"]
      575 SETTABLEKS                       R29 R28 K23 ["Category"]
      577 LOADK                            R29 K159 ["Tabs/BuiltIn_HomeTab/Rotate"]
      578 SETTABLEKS                       R29 R28 K24 ["ItemId"]
      580 SETTABLEKS                       R28 R27 K86 ["TargetWidgetUri"]
      582 LOADB                            R28 1
      583 SETTABLEKS                       R28 R27 K88 ["ShowHighlight"]
      585 SETTABLEKS                       R27 R26 K82 ["spotlight"]
      587 LOADK                            R27 K160 [{0, -90, 0}]
      588 SETTABLEKS                       R27 R26 K156 ["rotation"]
      590 LOADN                            R27 30
      591 SETTABLEKS                       R27 R26 K145 ["distance"]
      593 LOADK                            R27 K122 ["wedge"]
      594 SETTABLEKS                       R27 R26 K50 ["instanceId"]
      596 DUPCLOSURE                       R27 K161 [PROTO_9]
      597 CAPTURE                          VAL R10
      598 SETTABLEKS                       R27 R26 K96 ["onSkip"]
      600 LOADK                            R27 K105 ["Ribbon-Home"]
      601 SETTABLEKS                       R27 R26 K81 ["widgets"]
      603 DUPTABLE                         R27 K163 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
      604 LOADK                            R28 K164 ["scale"]
      605 SETTABLEKS                       R28 R27 K37 ["id"]
      607 LOADK                            R28 K165 ["Scale"]
      608 SETTABLEKS                       R28 R27 K49 ["kind"]
      610 LOADK                            R28 K124 ["parts"]
      611 SETTABLEKS                       R28 R27 K38 ["topic"]
      613 DUPTABLE                         R28 K151 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      614 DUPTABLE                         R29 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      615 LOADK                            R30 K26 ["Standalone"]
      616 SETTABLEKS                       R30 R29 K20 ["DataModel"]
      618 LOADK                            R30 K26 ["Standalone"]
      619 SETTABLEKS                       R30 R29 K21 ["PluginType"]
      621 LOADK                            R30 K127 ["Ribbon"]
      622 SETTABLEKS                       R30 R29 K22 ["PluginId"]
      624 LOADK                            R30 K28 ["Widgets"]
      625 SETTABLEKS                       R30 R29 K23 ["Category"]
      627 LOADK                            R30 K166 ["Tabs/BuiltIn_HomeTab/Scale"]
      628 SETTABLEKS                       R30 R29 K24 ["ItemId"]
      630 SETTABLEKS                       R29 R28 K86 ["TargetWidgetUri"]
      632 GETIMPORT                        R29 K131 [Vector2.new]
      634 LOADN                            R30 0
      635 LOADN                            R31 1
      636 CALL                             R29 2 1
      637 SETTABLEKS                       R29 R28 K149 ["TargetAnchorPoint"]
      639 GETIMPORT                        R29 K131 [Vector2.new]
      641 LOADN                            R30 0
      642 LOADN                            R31 0
      643 CALL                             R29 2 1
      644 SETTABLEKS                       R29 R28 K150 ["SubjectAnchorPoint"]
      646 GETIMPORT                        R29 K131 [Vector2.new]
      648 LOADN                            R30 0
      649 LOADN                            R31 20
      650 CALL                             R29 2 1
      651 SETTABLEKS                       R29 R28 K125 ["Offset"]
      653 SETTABLEKS                       R28 R27 K116 ["callout"]
      655 DUPTABLE                         R28 K132 [{"TargetWidgetUri", "ShowHighlight"}]
      656 DUPTABLE                         R29 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      657 LOADK                            R30 K26 ["Standalone"]
      658 SETTABLEKS                       R30 R29 K20 ["DataModel"]
      660 LOADK                            R30 K26 ["Standalone"]
      661 SETTABLEKS                       R30 R29 K21 ["PluginType"]
      663 LOADK                            R30 K127 ["Ribbon"]
      664 SETTABLEKS                       R30 R29 K22 ["PluginId"]
      666 LOADK                            R30 K28 ["Widgets"]
      667 SETTABLEKS                       R30 R29 K23 ["Category"]
      669 LOADK                            R30 K166 ["Tabs/BuiltIn_HomeTab/Scale"]
      670 SETTABLEKS                       R30 R29 K24 ["ItemId"]
      672 SETTABLEKS                       R29 R28 K86 ["TargetWidgetUri"]
      674 LOADB                            R29 1
      675 SETTABLEKS                       R29 R28 K88 ["ShowHighlight"]
      677 SETTABLEKS                       R28 R27 K82 ["spotlight"]
      679 LOADK                            R28 K167 [{15, 5, 10}]
      680 SETTABLEKS                       R28 R27 K162 ["minSize"]
      682 LOADK                            R28 K122 ["wedge"]
      683 SETTABLEKS                       R28 R27 K50 ["instanceId"]
      685 DUPCLOSURE                       R28 K168 [PROTO_10]
      686 CAPTURE                          VAL R10
      687 SETTABLEKS                       R28 R27 K96 ["onSkip"]
      689 LOADK                            R28 K105 ["Ribbon-Home"]
      690 SETTABLEKS                       R28 R27 K81 ["widgets"]
      692 SETLIST                          R11 R12 16 [1]
      694 DUPTABLE                         R12 K170 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
      695 LOADK                            R13 K171 ["color"]
      696 SETTABLEKS                       R13 R12 K37 ["id"]
      698 LOADK                            R13 K32 ["Edit"]
      699 SETTABLEKS                       R13 R12 K49 ["kind"]
      701 LOADK                            R13 K118 ["properties"]
      702 SETTABLEKS                       R13 R12 K38 ["topic"]
      704 DUPTABLE                         R13 K126 [{"TargetWidgetUri", "Offset"}]
      705 DUPTABLE                         R14 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      706 LOADK                            R15 K26 ["Standalone"]
      707 SETTABLEKS                       R15 R14 K20 ["DataModel"]
      709 LOADK                            R15 K26 ["Standalone"]
      710 SETTABLEKS                       R15 R14 K21 ["PluginType"]
      712 LOADK                            R15 K127 ["Ribbon"]
      713 SETTABLEKS                       R15 R14 K22 ["PluginId"]
      715 LOADK                            R15 K28 ["Widgets"]
      716 SETTABLEKS                       R15 R14 K23 ["Category"]
      718 LOADK                            R15 K172 ["Tabs/BuiltIn_HomeTab/Color"]
      719 SETTABLEKS                       R15 R14 K24 ["ItemId"]
      721 SETTABLEKS                       R14 R13 K86 ["TargetWidgetUri"]
      723 GETIMPORT                        R14 K131 [Vector2.new]
      725 LOADN                            R15 5
      726 LOADN                            R16 20
      727 CALL                             R14 2 1
      728 SETTABLEKS                       R14 R13 K125 ["Offset"]
      730 SETTABLEKS                       R13 R12 K116 ["callout"]
      732 DUPTABLE                         R13 K132 [{"TargetWidgetUri", "ShowHighlight"}]
      733 DUPTABLE                         R14 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      734 LOADK                            R15 K26 ["Standalone"]
      735 SETTABLEKS                       R15 R14 K20 ["DataModel"]
      737 LOADK                            R15 K26 ["Standalone"]
      738 SETTABLEKS                       R15 R14 K21 ["PluginType"]
      740 LOADK                            R15 K127 ["Ribbon"]
      741 SETTABLEKS                       R15 R14 K22 ["PluginId"]
      743 LOADK                            R15 K28 ["Widgets"]
      744 SETTABLEKS                       R15 R14 K23 ["Category"]
      746 LOADK                            R15 K172 ["Tabs/BuiltIn_HomeTab/Color"]
      747 SETTABLEKS                       R15 R14 K24 ["ItemId"]
      749 SETTABLEKS                       R14 R13 K86 ["TargetWidgetUri"]
      751 LOADB                            R14 1
      752 SETTABLEKS                       R14 R13 K88 ["ShowHighlight"]
      754 SETTABLEKS                       R13 R12 K82 ["spotlight"]
      756 LOADK                            R13 K135 ["Part"]
      757 SETTABLEKS                       R13 R12 K117 ["className"]
      759 DUPTABLE                         R13 K174 [{"Color"}]
      760 LOADB                            R14 1
      761 SETTABLEKS                       R14 R13 K173 ["Color"]
      763 SETTABLEKS                       R13 R12 K169 ["changes"]
      765 DUPCLOSURE                       R13 K175 [PROTO_11]
      766 CAPTURE                          VAL R10
      767 SETTABLEKS                       R13 R12 K96 ["onSkip"]
      769 LOADK                            R13 K105 ["Ribbon-Home"]
      770 SETTABLEKS                       R13 R12 K81 ["widgets"]
      772 DUPTABLE                         R13 K170 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
      773 LOADK                            R14 K176 ["anchor"]
      774 SETTABLEKS                       R14 R13 K37 ["id"]
      776 LOADK                            R14 K32 ["Edit"]
      777 SETTABLEKS                       R14 R13 K49 ["kind"]
      779 LOADK                            R14 K118 ["properties"]
      780 SETTABLEKS                       R14 R13 K38 ["topic"]
      782 DUPTABLE                         R14 K126 [{"TargetWidgetUri", "Offset"}]
      783 DUPTABLE                         R15 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      784 LOADK                            R16 K26 ["Standalone"]
      785 SETTABLEKS                       R16 R15 K20 ["DataModel"]
      787 LOADK                            R16 K26 ["Standalone"]
      788 SETTABLEKS                       R16 R15 K21 ["PluginType"]
      790 LOADK                            R16 K127 ["Ribbon"]
      791 SETTABLEKS                       R16 R15 K22 ["PluginId"]
      793 LOADK                            R16 K28 ["Widgets"]
      794 SETTABLEKS                       R16 R15 K23 ["Category"]
      796 LOADK                            R16 K177 ["Tabs/BuiltIn_HomeTab/Anchor"]
      797 SETTABLEKS                       R16 R15 K24 ["ItemId"]
      799 SETTABLEKS                       R15 R14 K86 ["TargetWidgetUri"]
      801 GETIMPORT                        R15 K131 [Vector2.new]
      803 LOADN                            R16 0
      804 LOADN                            R17 20
      805 CALL                             R15 2 1
      806 SETTABLEKS                       R15 R14 K125 ["Offset"]
      808 SETTABLEKS                       R14 R13 K116 ["callout"]
      810 DUPTABLE                         R14 K132 [{"TargetWidgetUri", "ShowHighlight"}]
      811 DUPTABLE                         R15 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      812 LOADK                            R16 K26 ["Standalone"]
      813 SETTABLEKS                       R16 R15 K20 ["DataModel"]
      815 LOADK                            R16 K26 ["Standalone"]
      816 SETTABLEKS                       R16 R15 K21 ["PluginType"]
      818 LOADK                            R16 K127 ["Ribbon"]
      819 SETTABLEKS                       R16 R15 K22 ["PluginId"]
      821 LOADK                            R16 K28 ["Widgets"]
      822 SETTABLEKS                       R16 R15 K23 ["Category"]
      824 LOADK                            R16 K177 ["Tabs/BuiltIn_HomeTab/Anchor"]
      825 SETTABLEKS                       R16 R15 K24 ["ItemId"]
      827 SETTABLEKS                       R15 R14 K86 ["TargetWidgetUri"]
      829 LOADB                            R15 1
      830 SETTABLEKS                       R15 R14 K88 ["ShowHighlight"]
      832 SETTABLEKS                       R14 R13 K82 ["spotlight"]
      834 LOADK                            R14 K135 ["Part"]
      835 SETTABLEKS                       R14 R13 K117 ["className"]
      837 DUPTABLE                         R14 K179 [{"Anchored"}]
      838 LOADB                            R15 1
      839 SETTABLEKS                       R15 R14 K178 ["Anchored"]
      841 SETTABLEKS                       R14 R13 K169 ["changes"]
      843 DUPCLOSURE                       R14 K180 [PROTO_12]
      844 CAPTURE                          VAL R10
      845 SETTABLEKS                       R14 R13 K96 ["onSkip"]
      847 LOADK                            R14 K105 ["Ribbon-Home"]
      848 SETTABLEKS                       R14 R13 K81 ["widgets"]
      850 DUPTABLE                         R14 K181 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
      851 LOADK                            R15 K182 ["explorer"]
      852 SETTABLEKS                       R15 R14 K37 ["id"]
      854 DUPTABLE                         R15 K183 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      855 SETTABLEKS                       R6 R15 K86 ["TargetWidgetUri"]
      857 GETIMPORT                        R16 K131 [Vector2.new]
      859 LOADN                            R17 1
      860 LOADN                            R18 0
      861 CALL                             R16 2 1
      862 SETTABLEKS                       R16 R15 K150 ["SubjectAnchorPoint"]
      864 GETIMPORT                        R16 K131 [Vector2.new]
      866 LOADN                            R17 0
      867 LOADN                            R18 0
      868 CALL                             R16 2 1
      869 SETTABLEKS                       R16 R15 K149 ["TargetAnchorPoint"]
      871 GETIMPORT                        R16 K131 [Vector2.new]
      873 LOADN                            R17 246
      874 LOADN                            R18 20
      875 CALL                             R16 2 1
      876 SETTABLEKS                       R16 R15 K125 ["Offset"]
      878 SETTABLEKS                       R15 R14 K116 ["callout"]
      880 DUPTABLE                         R15 K90 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
      881 SETTABLEKS                       R6 R15 K86 ["TargetWidgetUri"]
      883 LOADB                            R16 1
      884 SETTABLEKS                       R16 R15 K87 ["ShowBox"]
      886 LOADB                            R16 1
      887 SETTABLEKS                       R16 R15 K88 ["ShowHighlight"]
      889 LOADB                            R16 1
      890 SETTABLEKS                       R16 R15 K89 ["ShowShadows"]
      892 SETTABLEKS                       R15 R14 K82 ["spotlight"]
      894 LOADK                            R15 K118 ["properties"]
      895 SETTABLEKS                       R15 R14 K38 ["topic"]
      897 LOADB                            R15 1
      898 SETTABLEKS                       R15 R14 K39 ["showNext"]
      900 LOADK                            R15 K184 ["Ribbon-Home,Explorer"]
      901 SETTABLEKS                       R15 R14 K81 ["widgets"]
      903 DUPTABLE                         R15 K186 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
      904 LOADK                            R16 K187 ["select"]
      905 SETTABLEKS                       R16 R15 K37 ["id"]
      907 LOADK                            R16 K188 ["Select"]
      908 SETTABLEKS                       R16 R15 K49 ["kind"]
      910 LOADK                            R16 K189 ["Ball"]
      911 SETTABLEKS                       R16 R15 K185 ["path"]
      913 LOADK                            R16 K118 ["properties"]
      914 SETTABLEKS                       R16 R15 K38 ["topic"]
      916 DUPTABLE                         R16 K183 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      917 SETTABLEKS                       R6 R16 K86 ["TargetWidgetUri"]
      919 GETIMPORT                        R17 K131 [Vector2.new]
      921 LOADN                            R18 1
      922 LOADN                            R19 0
      923 CALL                             R17 2 1
      924 SETTABLEKS                       R17 R16 K150 ["SubjectAnchorPoint"]
      926 GETIMPORT                        R17 K131 [Vector2.new]
      928 LOADN                            R18 0
      929 LOADN                            R19 0
      930 CALL                             R17 2 1
      931 SETTABLEKS                       R17 R16 K149 ["TargetAnchorPoint"]
      933 GETIMPORT                        R17 K131 [Vector2.new]
      935 LOADN                            R18 246
      936 LOADN                            R19 20
      937 CALL                             R17 2 1
      938 SETTABLEKS                       R17 R16 K125 ["Offset"]
      940 SETTABLEKS                       R16 R15 K116 ["callout"]
      942 DUPCLOSURE                       R16 K190 [PROTO_13]
      943 CAPTURE                          VAL R9
      944 CAPTURE                          VAL R3
      945 SETTABLEKS                       R16 R15 K96 ["onSkip"]
      947 LOADK                            R16 K184 ["Ribbon-Home,Explorer"]
      948 SETTABLEKS                       R16 R15 K81 ["widgets"]
      950 DUPTABLE                         R16 K191 [{"id", "topic", "kind", "onSkip", "widgets"}]
      951 LOADK                            R17 K192 ["focus"]
      952 SETTABLEKS                       R17 R16 K37 ["id"]
      954 LOADK                            R17 K118 ["properties"]
      955 SETTABLEKS                       R17 R16 K38 ["topic"]
      957 LOADK                            R17 K193 ["Focus"]
      958 SETTABLEKS                       R17 R16 K49 ["kind"]
      960 DUPCLOSURE                       R17 K194 [PROTO_14]
      961 CAPTURE                          VAL R9
      962 CAPTURE                          VAL R3
      963 SETTABLEKS                       R17 R16 K96 ["onSkip"]
      965 LOADK                            R17 K105 ["Ribbon-Home"]
      966 SETTABLEKS                       R17 R16 K81 ["widgets"]
      968 DUPTABLE                         R17 K195 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
      969 LOADK                            R18 K118 ["properties"]
      970 SETTABLEKS                       R18 R17 K37 ["id"]
      972 LOADK                            R18 K118 ["properties"]
      973 SETTABLEKS                       R18 R17 K38 ["topic"]
      975 DUPTABLE                         R18 K183 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      976 SETTABLEKS                       R7 R18 K86 ["TargetWidgetUri"]
      978 GETIMPORT                        R19 K131 [Vector2.new]
      980 LOADN                            R20 1
      981 LOADN                            R21 1
      982 CALL                             R19 2 1
      983 SETTABLEKS                       R19 R18 K150 ["SubjectAnchorPoint"]
      985 GETIMPORT                        R19 K131 [Vector2.new]
      987 LOADN                            R20 0
      988 LOADN                            R21 1
      989 CALL                             R19 2 1
      990 SETTABLEKS                       R19 R18 K149 ["TargetAnchorPoint"]
      992 GETIMPORT                        R19 K131 [Vector2.new]
      994 LOADN                            R20 246
      995 LOADN                            R21 0
      996 CALL                             R19 2 1
      997 SETTABLEKS                       R19 R18 K125 ["Offset"]
      999 SETTABLEKS                       R18 R17 K116 ["callout"]
     1001 DUPTABLE                         R18 K90 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
     1002 SETTABLEKS                       R7 R18 K86 ["TargetWidgetUri"]
     1004 LOADB                            R19 1
     1005 SETTABLEKS                       R19 R18 K87 ["ShowBox"]
     1007 LOADB                            R19 1
     1008 SETTABLEKS                       R19 R18 K88 ["ShowHighlight"]
     1010 LOADB                            R19 1
     1011 SETTABLEKS                       R19 R18 K89 ["ShowShadows"]
     1013 SETTABLEKS                       R18 R17 K82 ["spotlight"]
     1015 LOADB                            R18 1
     1016 SETTABLEKS                       R18 R17 K39 ["showNext"]
     1018 LOADK                            R18 K196 ["Ribbon-Home,Explorer,Properties"]
     1019 SETTABLEKS                       R18 R17 K81 ["widgets"]
     1021 DUPTABLE                         R18 K197 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
     1022 LOADK                            R19 K198 ["speed"]
     1023 SETTABLEKS                       R19 R18 K37 ["id"]
     1025 LOADK                            R19 K118 ["properties"]
     1026 SETTABLEKS                       R19 R18 K38 ["topic"]
     1028 LOADK                            R19 K32 ["Edit"]
     1029 SETTABLEKS                       R19 R18 K49 ["kind"]
     1031 DUPTABLE                         R19 K183 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
     1032 SETTABLEKS                       R7 R19 K86 ["TargetWidgetUri"]
     1034 GETIMPORT                        R20 K131 [Vector2.new]
     1036 LOADN                            R21 1
     1037 LOADN                            R22 1
     1038 CALL                             R20 2 1
     1039 SETTABLEKS                       R20 R19 K150 ["SubjectAnchorPoint"]
     1041 GETIMPORT                        R20 K131 [Vector2.new]
     1043 LOADN                            R21 0
     1044 LOADN                            R22 1
     1045 CALL                             R20 2 1
     1046 SETTABLEKS                       R20 R19 K149 ["TargetAnchorPoint"]
     1048 GETIMPORT                        R20 K131 [Vector2.new]
     1050 LOADN                            R21 246
     1051 LOADN                            R22 0
     1052 CALL                             R20 2 1
     1053 SETTABLEKS                       R20 R19 K125 ["Offset"]
     1055 SETTABLEKS                       R19 R18 K116 ["callout"]
     1057 LOADK                            R19 K199 ["Model"]
     1058 SETTABLEKS                       R19 R18 K117 ["className"]
     1060 DUPTABLE                         R19 K201 [{"Attributes"}]
     1061 DUPTABLE                         R20 K203 [{"Speed"}]
     1062 LOADB                            R21 1
     1063 SETTABLEKS                       R21 R20 K202 ["Speed"]
     1065 SETTABLEKS                       R20 R19 K200 ["Attributes"]
     1067 SETTABLEKS                       R19 R18 K169 ["changes"]
     1069 DUPCLOSURE                       R19 K204 [PROTO_15]
     1070 CAPTURE                          VAL R9
     1071 SETTABLEKS                       R19 R18 K96 ["onSkip"]
     1073 LOADK                            R19 K196 ["Ribbon-Home,Explorer,Properties"]
     1074 SETTABLEKS                       R19 R18 K81 ["widgets"]
     1076 DUPTABLE                         R19 K113 [{"id", "topic", "kind", "widgets"}]
     1077 LOADK                            R20 K205 ["playtest2"]
     1078 SETTABLEKS                       R20 R19 K37 ["id"]
     1080 LOADK                            R20 K206 ["summary"]
     1081 SETTABLEKS                       R20 R19 K38 ["topic"]
     1083 LOADK                            R20 K104 ["StartPlaytest"]
     1084 SETTABLEKS                       R20 R19 K49 ["kind"]
     1086 LOADK                            R20 K196 ["Ribbon-Home,Explorer,Properties"]
     1087 SETTABLEKS                       R20 R19 K81 ["widgets"]
     1089 DUPTABLE                         R20 K113 [{"id", "topic", "kind", "widgets"}]
     1090 LOADK                            R21 K207 ["stopPlaytest2"]
     1091 SETTABLEKS                       R21 R20 K37 ["id"]
     1093 LOADK                            R21 K206 ["summary"]
     1094 SETTABLEKS                       R21 R20 K38 ["topic"]
     1096 LOADK                            R21 K115 ["StopPlaytest"]
     1097 SETTABLEKS                       R21 R20 K49 ["kind"]
     1099 LOADK                            R21 K196 ["Ribbon-Home,Explorer,Properties"]
     1100 SETTABLEKS                       R21 R20 K81 ["widgets"]
     1102 DUPTABLE                         R21 K208 [{"id", "topic", "widgets"}]
     1103 LOADK                            R28 K209 ["complete"]
     1104 SETTABLEKS                       R28 R21 K37 ["id"]
     1106 LOADK                            R28 K206 ["summary"]
     1107 SETTABLEKS                       R28 R21 K38 ["topic"]
     1109 LOADK                            R28 K196 ["Ribbon-Home,Explorer,Properties"]
     1110 SETTABLEKS                       R28 R21 K81 ["widgets"]
     1112 SETLIST                          R11 R12 10 [17]
     1114 DUPTABLE                         R12 K215 [{"id", "allowedPlaceIds", "onStart", "onComplete", "steps", "shouldShowCompletedDialog"}]
     1115 LOADK                            R13 K216 ["StudioTour3"]
     1116 SETTABLEKS                       R13 R12 K37 ["id"]
     1118 NEWTABLE                         R13 0 2
     1120 LOADK                            R14 K217 [81362103443151]
     1121 LOADK                            R15 K218 [88926143951080]
     1122 SETLIST                          R13 R14 2 [1]
     1124 SETTABLEKS                       R13 R12 K210 ["allowedPlaceIds"]
     1126 DUPCLOSURE                       R13 K219 [PROTO_16]
     1127 CAPTURE                          VAL R2
     1128 SETTABLEKS                       R13 R12 K211 ["onStart"]
     1130 DUPCLOSURE                       R13 K220 [PROTO_17]
     1131 CAPTURE                          VAL R2
     1132 SETTABLEKS                       R13 R12 K212 ["onComplete"]
     1134 SETTABLEKS                       R11 R12 K213 ["steps"]
     1136 JUMPIFNOT                        R1 ; [+2]
     1137 LOADB                            R13 1
     1138 JUMP                             ; [+1]
     1139 LOADNIL                          R13
     1140 SETTABLEKS                       R13 R12 K214 ["shouldShowCompletedDialog"]
     1142 RETURN                           R12 1
