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
        1 LOADK                            R3 K9 ["This is a %*long description."]
        2 GETIMPORT                        R5 K12 [string.rep]
        4 LOADK                            R6 K13 ["very "]
        5 LOADN                            R7 10
        6 CALL                             R5 2 1
        7 NAMECALL                         R3 R3 K14 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 SETTABLEKS                       R2 R1 K4 ["TooltipDescription"]
       13 DUPCLOSURE                       R2 K15 [PROTO_0]
       14 SETTABLEKS                       R2 R1 K7 ["OnClick"]
       16 GETIMPORT                        R2 K18 [table.clone]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R2 K19 ["Selected"]
       23 DUPTABLE                         R3 K22 [{[1] = "SplitButton", ["Options"]}]
       24 NEWTABLE                         R4 0 2
       26 DUPTABLE                         R5 K26 [{["Icon"] = "rbxasset://textures/StudioToolbox/Search.png", ["Text"] = "Option A", ["OnClick"]}]
       27 DUPCLOSURE                       R6 K27 [PROTO_1]
       28 SETTABLEKS                       R6 R5 K7 ["OnClick"]
       30 DUPTABLE                         R6 K31 [{["Icon"] = "rbxasset://textures/StudioToolbox/Gallery.png", ["Text"] = "This is the second option, as you can see", ["TooltipDescription"] = "The name is long on purpose!", ["OnClick"]}]
       31 DUPCLOSURE                       R7 K32 [PROTO_2]
       32 SETTABLEKS                       R7 R6 K7 ["OnClick"]
       34 SETLIST                          R4 R5 2 [1]
       36 SETTABLEKS                       R4 R3 K21 ["Options"]
       38 DUPTABLE                         R4 K34 [{[1] = "Separator"}]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K35 ["useState"]
       42 LOADK                            R6 K36 ["gallery"]
       43 CALL                             R5 1 2
       44 DUPTABLE                         R7 K41 [{[1] = "Radio", ["Value"], ["OnChange"], ["Items"]}]
       45 SETTABLEKS                       R5 R7 K38 ["Value"]
       47 SETTABLEKS                       R6 R7 K39 ["OnChange"]
       49 NEWTABLE                         R8 0 3
       51 DUPTABLE                         R9 K45 [{["Id"] = "gallery", ["Tooltip"] = "Gallery", ["TooltipDescription"] = "The gallery", ["Icon"] = "rbxasset://textures/StudioToolbox/Gallery.png"}]
       52 DUPTABLE                         R10 K49 [{["Id"] = "list", ["Tooltip"] = "List", ["Icon"] = "rbxasset://textures/StudioToolbox/List.png"}]
       53 DUPTABLE                         R11 K52 [{["Id"] = "search", ["Tooltip"] = "Search", ["Icon"] = "rbxasset://textures/StudioToolbox/Search.png"}]
       54 SETLIST                          R8 R9 3 [1]
       56 SETTABLEKS                       R8 R7 K40 ["Items"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K35 ["useState"]
       61 LOADN                            R9 5
       62 CALL                             R8 1 2
       63 DUPTABLE                         R10 K61 [{[1] = "Slider", ["Value"], ["OnChange"], ["Min"] = 0, ["Max"] = 10, ["IncrementStep"] = 1, ["Icon"] = "rbxasset://textures/StudioToolbox/Gallery.png", ["Tooltip"] = "My slider"}]
       64 SETTABLEKS                       R8 R10 K38 ["Value"]
       66 SETTABLEKS                       R9 R10 K39 ["OnChange"]
       68 DUPTABLE                         R11 K64 [{[1] = "Label", ["Text"] = "This is a label."}]
       69 DUPTABLE                         R12 K66 [{"HorizontalItems"}]
       70 NEWTABLE                         R13 0 12
       72 MOVE                             R14 R1
       73 MOVE                             R15 R2
       74 MOVE                             R16 R3
       75 MOVE                             R17 R4
       76 MOVE                             R18 R7
       77 MOVE                             R19 R4
       78 MOVE                             R20 R10
       79 MOVE                             R21 R4
       80 DUPTABLE                         R22 K69 [{[1] = "TextButton", ["Text"] = "On", ["OnClick"]}]
       81 DUPCLOSURE                       R23 K70 [PROTO_3]
       82 SETTABLEKS                       R23 R22 K7 ["OnClick"]
       84 DUPTABLE                         R23 K74 [{[1] = "TextButton", ["Text"] = "Off", ["Enabled"] = False, ["OnClick"]}]
       85 DUPCLOSURE                       R24 K75 [PROTO_4]
       86 SETTABLEKS                       R24 R23 K7 ["OnClick"]
       88 MOVE                             R24 R4
       89 MOVE                             R25 R11
       90 SETLIST                          R13 R14 12 [1]
       92 SETTABLEKS                       R13 R12 K65 ["HorizontalItems"]
       94 DUPTABLE                         R13 K77 [{"VerticalItems"}]
       95 NEWTABLE                         R14 0 5
       97 MOVE                             R15 R1
       98 MOVE                             R16 R2
       99 MOVE                             R17 R3
      100 MOVE                             R18 R4
      101 MOVE                             R19 R7
      102 SETLIST                          R14 R15 5 [1]
      104 SETTABLEKS                       R14 R13 K76 ["VerticalItems"]
      106 GETTABLEKS                       R15 R0 K78 ["controls"]
      108 GETTABLEKS                       R15 R15 K79 ["PutInViewport"]
      110 JUMPIFNOT                        R15 ; [+2]
      111 GETUPVAL                         R14 1
      112 JUMP                             ; [+1]
      113 GETUPVAL                         R14 2
      114 GETUPVAL                         R15 0
      115 GETTABLEKS                       R15 R15 K80 ["createElement"]
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R16 R16 K81 ["Fragment"]
      120 NEWTABLE                         R17 0 0
      122 DUPTABLE                         R18 K84 [{"HorizontalToolbar", "VerticalToolbar"}]
      123 GETUPVAL                         R19 0
      124 GETTABLEKS                       R19 R19 K80 ["createElement"]
      126 MOVE                             R20 R14
      127 MOVE                             R21 R12
      128 CALL                             R19 2 1
      129 SETTABLEKS                       R19 R18 K82 ["HorizontalToolbar"]
      131 GETUPVAL                         R19 0
      132 GETTABLEKS                       R19 R19 K80 ["createElement"]
      134 MOVE                             R20 R14
      135 MOVE                             R21 R13
      136 CALL                             R19 2 1
      137 SETTABLEKS                       R19 R18 K83 ["VerticalToolbar"]
      139 CALL                             R15 3 -1
      140 RETURN                           R15 -1

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
