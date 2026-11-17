PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Option A clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Option B clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked on"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Should be unreachable"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K8 [{[1] = "Button", ["Tooltip"] = "A button", ["TooltipDescription"], ["Icon"] = "rbxassetid://11560341132", ["OnClick"]}]
        1 LOADK                            R2 K9 ["This is a %*long description."]
        2 GETIMPORT                        R4 K12 [string.rep]
        4 LOADK                            R5 K13 ["very "]
        5 LOADN                            R6 10
        6 CALL                             R4 2 1
        7 NAMECALL                         R2 R2 K14 ["format"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K4 ["TooltipDescription"]
       12 DUPCLOSURE                       R2 K15 [PROTO_0]
       13 SETTABLEKS                       R2 R1 K7 ["OnClick"]
       15 GETIMPORT                        R2 K18 [table.clone]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K19 ["Selected"]
       22 DUPTABLE                         R3 K22 [{[1] = "SplitButton", ["Options"]}]
       23 NEWTABLE                         R4 0 2
       25 DUPTABLE                         R5 K26 [{["Icon"] = "rbxasset://textures/StudioToolbox/Search.png", ["Text"] = "Option A", ["OnClick"]}]
       26 DUPCLOSURE                       R6 K27 [PROTO_1]
       27 SETTABLEKS                       R6 R5 K7 ["OnClick"]
       29 DUPTABLE                         R6 K31 [{["Icon"] = "rbxasset://textures/StudioToolbox/Gallery.png", ["Text"] = "This is the second option, as you can see", ["TooltipDescription"] = "The name is long on purpose!", ["OnClick"]}]
       30 DUPCLOSURE                       R7 K32 [PROTO_2]
       31 SETTABLEKS                       R7 R6 K7 ["OnClick"]
       33 SETLIST                          R4 R5 2 [1]
       35 SETTABLEKS                       R4 R3 K21 ["Options"]
       37 DUPTABLE                         R4 K34 [{[1] = "Separator"}]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K35 ["useState"]
       41 LOADK                            R6 K36 ["gallery"]
       42 CALL                             R5 1 2
       43 DUPTABLE                         R7 K41 [{[1] = "Radio", ["Value"], ["OnChange"], ["Items"]}]
       44 SETTABLEKS                       R5 R7 K38 ["Value"]
       46 SETTABLEKS                       R6 R7 K39 ["OnChange"]
       48 NEWTABLE                         R8 0 3
       50 DUPTABLE                         R9 K45 [{["Id"] = "gallery", ["Tooltip"] = "Gallery", ["TooltipDescription"] = "The gallery", ["Icon"] = "rbxasset://textures/StudioToolbox/Gallery.png"}]
       51 DUPTABLE                         R10 K49 [{["Id"] = "list", ["Tooltip"] = "List", ["Icon"] = "rbxasset://textures/StudioToolbox/List.png"}]
       52 DUPTABLE                         R11 K52 [{["Id"] = "search", ["Tooltip"] = "Search", ["Icon"] = "rbxasset://textures/StudioToolbox/Search.png"}]
       53 SETLIST                          R8 R9 3 [1]
       55 SETTABLEKS                       R8 R7 K40 ["Items"]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K35 ["useState"]
       60 LOADN                            R9 5
       61 CALL                             R8 1 2
       62 DUPTABLE                         R10 K61 [{[1] = "Slider", ["Value"], ["OnChange"], ["Min"] = 0, ["Max"] = 10, ["IncrementStep"] = 1, ["Icon"] = "rbxasset://textures/StudioToolbox/Gallery.png", ["Tooltip"] = "My slider"}]
       63 SETTABLEKS                       R8 R10 K38 ["Value"]
       65 SETTABLEKS                       R9 R10 K39 ["OnChange"]
       67 DUPTABLE                         R11 K64 [{[1] = "Label", ["Text"] = "This is a label."}]
       68 DUPTABLE                         R12 K66 [{"HorizontalItems"}]
       69 NEWTABLE                         R13 0 12
       71 MOVE                             R14 R1
       72 MOVE                             R15 R2
       73 MOVE                             R16 R3
       74 MOVE                             R17 R4
       75 MOVE                             R18 R7
       76 MOVE                             R19 R4
       77 MOVE                             R20 R10
       78 MOVE                             R21 R4
       79 DUPTABLE                         R22 K69 [{[1] = "TextButton", ["Text"] = "On", ["OnClick"]}]
       80 DUPCLOSURE                       R23 K70 [PROTO_3]
       81 SETTABLEKS                       R23 R22 K7 ["OnClick"]
       83 DUPTABLE                         R23 K74 [{[1] = "TextButton", ["Text"] = "Off", ["Enabled"] = False, ["OnClick"]}]
       84 DUPCLOSURE                       R24 K75 [PROTO_4]
       85 SETTABLEKS                       R24 R23 K7 ["OnClick"]
       87 MOVE                             R24 R4
       88 MOVE                             R25 R11
       89 SETLIST                          R13 R14 12 [1]
       91 SETTABLEKS                       R13 R12 K65 ["HorizontalItems"]
       93 DUPTABLE                         R13 K77 [{"VerticalItems"}]
       94 NEWTABLE                         R14 0 5
       96 MOVE                             R15 R1
       97 MOVE                             R16 R2
       98 MOVE                             R17 R3
       99 MOVE                             R18 R4
      100 MOVE                             R19 R7
      101 SETLIST                          R14 R15 5 [1]
      103 SETTABLEKS                       R14 R13 K76 ["VerticalItems"]
      105 GETTABLEKS                       R15 R0 K78 ["controls"]
      107 GETTABLEKS                       R15 R15 K79 ["PutInViewport"]
      109 JUMPIFNOT                        R15 ; [+2]
      110 GETUPVAL                         R14 1
      111 JUMP                             ; [+1]
      112 GETUPVAL                         R14 2
      113 GETUPVAL                         R15 0
      114 GETTABLEKS                       R15 R15 K80 ["createElement"]
      116 GETUPVAL                         R16 0
      117 GETTABLEKS                       R16 R16 K81 ["Fragment"]
      119 NEWTABLE                         R17 0 0
      121 DUPTABLE                         R18 K84 [{"HorizontalToolbar", "VerticalToolbar"}]
      122 GETUPVAL                         R19 0
      123 GETTABLEKS                       R19 R19 K80 ["createElement"]
      125 MOVE                             R20 R14
      126 MOVE                             R21 R12
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K82 ["HorizontalToolbar"]
      130 GETUPVAL                         R19 0
      131 GETTABLEKS                       R19 R19 K80 ["createElement"]
      133 MOVE                             R20 R14
      134 MOVE                             R21 R13
      135 CALL                             R19 2 1
      136 SETTABLEKS                       R19 R18 K83 ["VerticalToolbar"]
      138 CALL                             R15 3 -1
      139 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Toolbar"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ToolbarBase"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Types"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K12 [PROTO_5]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 DUPTABLE                         R6 K15 [{"story", "controls"}]
       38 SETTABLEKS                       R5 R6 K13 ["story"]
       40 DUPTABLE                         R7 K18 [{["PutInViewport"] = False}]
       41 SETTABLEKS                       R7 R6 K14 ["controls"]
       43 RETURN                           R6 1
