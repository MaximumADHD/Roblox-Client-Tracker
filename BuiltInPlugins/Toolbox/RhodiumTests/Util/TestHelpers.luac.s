PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["game.CoreGui.ScreenGui.%s.%s"]
        3 LOADK                            R3 K4 ["ToolboxComponent"]
        4 MOVE                             R4 R0
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETIMPORT                        R1 K3 [game]
        4 GETTABLEKS                       R1 R1 K4 ["CoreGui"]
        6 NAMECALL                         R1 R1 K5 ["GetChildren"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 3
       10 FORGPREP_INEXT                   R0
       11 GETTABLEKS                       R5 R4 K6 ["Name"]
       13 JUMPIFNOTEQKS                    R5 K7 ["CategoryVerification"] ; [+4]
       15 NAMECALL                         R5 R4 K8 ["Destroy"]
       17 CALL                             R5 1 0
       18 FORGLOOP                         R0 2 [inext] ; [-8]
       20 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R2
        1 JUMPIF                           R4 ; [+5]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["getSimpleAsset"]
        5 LOADN                            R5 12345
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R5 R4 K1 ["Asset"]
        9 GETTABLEKS                       R5 R5 K2 ["Id"]
       11 MOVE                             R6 R3
       12 JUMPIF                           R6 ; [+2]
       13 NEWTABLE                         R6 0 0
       15 MOVE                             R3 R6
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K3 ["Dictionary"]
       19 GETTABLEKS                       R6 R6 K4 ["join"]
       21 MOVE                             R7 R3
       22 DUPTABLE                         R8 K6 [{"store"}]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K7 ["Store"]
       26 GETTABLEKS                       R9 R9 K8 ["new"]
       28 GETUPVAL                         R10 3
       29 DUPTABLE                         R11 K10 [{"assets"}]
       30 DUPTABLE                         R12 K12 [{"idToAssetMap"}]
       31 NEWTABLE                         R13 1 0
       33 SETTABLE                         R4 R13 R5
       34 SETTABLEKS                       R13 R12 K11 ["idToAssetMap"]
       36 SETTABLEKS                       R12 R11 K9 ["assets"]
       38 NEWTABLE                         R12 0 1
       40 GETUPVAL                         R13 2
       41 GETTABLEKS                       R13 R13 K13 ["thunkMiddleware"]
       43 SETLIST                          R12 R13 1 [1]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K5 ["store"]
       48 CALL                             R6 2 1
       49 MOVE                             R3 R6
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R6 R6 K14 ["createElement"]
       53 GETUPVAL                         R7 5
       54 MOVE                             R8 R3
       55 JUMPIF                           R8 ; [+2]
       56 NEWTABLE                         R8 0 0
       58 DUPTABLE                         R9 K15 [{"Asset"}]
       59 GETUPVAL                         R10 4
       60 GETTABLEKS                       R10 R10 K14 ["createElement"]
       62 GETUPVAL                         R11 6
       63 DUPTABLE                         R12 K22 [{["assetId"], ["assetData"], ["LayoutOrder"] = 1, ["Selected"] = False}]
       64 SETTABLEKS                       R5 R12 K16 ["assetId"]
       66 SETTABLEKS                       R4 R12 K17 ["assetData"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K1 ["Asset"]
       71 CALL                             R6 3 1
       72 GETUPVAL                         R7 4
       73 GETTABLEKS                       R7 R7 K23 ["mount"]
       75 MOVE                             R8 R6
       76 ORK                              R9 R0 K24 []
       77 ORK                              R10 R1 K25 [""]
       78 CALL                             R7 3 -1
       79 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 LOADK                            R5 K1 ["ScreenGui"]
        4 DUPTABLE                         R6 K3 [{"ZIndexBehavior"}]
        5 GETIMPORT                        R7 K6 [Enum.ZIndexBehavior.Sibling]
        7 SETTABLEKS                       R7 R6 K2 ["ZIndexBehavior"]
        9 DUPTABLE                         R7 K8 [{"Root"}]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R8 R8 K0 ["createElement"]
       13 LOADK                            R9 K9 ["Frame"]
       14 DUPTABLE                         R10 K12 [{"Size", "Position"}]
       15 GETIMPORT                        R11 K15 [UDim2.new]
       17 LOADK                            R12 K16 [0.5]
       18 LOADN                            R13 0
       19 LOADK                            R14 K16 [0.5]
       20 LOADN                            R15 0
       21 CALL                             R11 4 1
       22 SETTABLEKS                       R11 R10 K10 ["Size"]
       24 GETIMPORT                        R11 K15 [UDim2.new]
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 LOADN                            R14 0
       29 LOADN                            R15 0
       30 CALL                             R11 4 1
       31 SETTABLEKS                       R11 R10 K11 ["Position"]
       33 DUPTABLE                         R11 K18 [{"Components"}]
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K0 ["createElement"]
       37 GETUPVAL                         R13 1
       38 MOVE                             R14 R3
       39 JUMPIF                           R14 ; [+2]
       40 NEWTABLE                         R14 0 0
       42 DUPTABLE                         R15 K20 [{"Tab"}]
       43 GETUPVAL                         R16 0
       44 GETTABLEKS                       R16 R16 K0 ["createElement"]
       46 GETUPVAL                         R17 2
       47 NEWTABLE                         R18 0 0
       49 CALL                             R16 2 1
       50 SETTABLEKS                       R16 R15 K19 ["Tab"]
       52 CALL                             R12 3 1
       53 SETTABLEKS                       R12 R11 K17 ["Components"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Root"]
       58 CALL                             R4 3 1
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K21 ["mount"]
       62 MOVE                             R6 R4
       63 ORK                              R7 R0 K22 []
       64 ORK                              R8 R1 K23 [""]
       65 CALL                             R5 3 -1
       66 RETURN                           R5 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 ["ToolboxManager"] ; [+3]
        2 GETUPVAL                         R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKS                    R1 K1 ["WebBrowserManager"] ; [+7]
        6 NEWTABLE                         R2 1 0
        8 DUPCLOSURE                       R3 K2 [PROTO_7]
        9 SETTABLEKS                       R3 R2 K3 ["IsAvailableAsync"]
       11 RETURN                           R2 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 DUPTABLE                         R1 K4 [{"ReloadWebBrowserWidgetAsync", "ShowWebBrowserWidgetAsync", "HideWebBrowserWidgetAsync"}]
        5 DUPCLOSURE                       R2 K5 [PROTO_4]
        6 SETTABLEKS                       R2 R1 K1 ["ReloadWebBrowserWidgetAsync"]
        8 DUPCLOSURE                       R2 K6 [PROTO_5]
        9 SETTABLEKS                       R2 R1 K2 ["ShowWebBrowserWidgetAsync"]
       11 DUPCLOSURE                       R2 K7 [PROTO_6]
       12 SETTABLEKS                       R2 R1 K3 ["HideWebBrowserWidgetAsync"]
       14 NEWCLOSURE                       R2 P3
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R0 K8 ["GetPluginComponent"]
       18 RETURN                           R0 1

PROTO_10:
        0 GETIMPORT                        R4 K3 [Enum.ZIndexBehavior.Sibling]
        2 SETTABLEKS                       R4 R0 K1 ["ZIndexBehavior"]
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETTABLEKS                       R5 R3 K4 ["plugin"]
        7 JUMPIFNOT                        R5 ; [+3]
        8 GETTABLEKS                       R4 R3 K4 ["plugin"]
       10 JUMP                             ; [+4]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["createMockPlugin"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K6 ["createElement"]
       18 LOADK                            R6 K7 ["Frame"]
       19 DUPTABLE                         R7 K10 [{"Size", "Position"}]
       20 GETIMPORT                        R8 K13 [UDim2.new]
       22 LOADK                            R9 K14 [0.8]
       23 LOADN                            R10 0
       24 LOADK                            R11 K14 [0.8]
       25 LOADN                            R12 0
       26 CALL                             R8 4 1
       27 SETTABLEKS                       R8 R7 K8 ["Size"]
       29 GETIMPORT                        R8 K13 [UDim2.new]
       31 LOADN                            R9 0
       32 LOADN                            R10 0
       33 LOADN                            R11 0
       34 LOADN                            R12 0
       35 CALL                             R8 4 1
       36 SETTABLEKS                       R8 R7 K9 ["Position"]
       38 DUPTABLE                         R8 K16 [{"Components"}]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K6 ["createElement"]
       42 GETUPVAL                         R10 2
       43 MOVE                             R11 R3
       44 JUMPIF                           R11 ; [+5]
       45 DUPTABLE                         R11 K18 [{"plugin", "pluginGui"}]
       46 SETTABLEKS                       R4 R11 K4 ["plugin"]
       48 SETTABLEKS                       R0 R11 K17 ["pluginGui"]
       50 DUPTABLE                         R12 K20 [{"Toolbox"}]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K6 ["createElement"]
       54 GETUPVAL                         R14 3
       55 DUPTABLE                         R15 K21 [{"plugin"}]
       56 SETTABLEKS                       R4 R15 K4 ["plugin"]
       58 CALL                             R13 2 1
       59 SETTABLEKS                       R13 R12 K19 ["Toolbox"]
       61 CALL                             R9 3 1
       62 SETTABLEKS                       R9 R8 K15 ["Components"]
       64 CALL                             R5 3 1
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K22 ["mount"]
       68 MOVE                             R7 R5
       69 ORK                              R8 R0 K23 []
       70 LOADK                            R9 K24 ["ToolboxComponent"]
       71 CALL                             R6 3 -1
       72 RETURN                           R6 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETIMPORT                        R1 K3 [game]
        4 GETTABLEKS                       R1 R1 K4 ["CoreGui"]
        6 NAMECALL                         R1 R1 K5 ["GetChildren"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 3
       10 FORGPREP_INEXT                   R0
       11 GETIMPORT                        R5 K1 [ipairs]
       13 NAMECALL                         R6 R4 K5 ["GetChildren"]
       15 CALL                             R6 1 -1
       16 CALL                             R5 -1 3
       17 FORGPREP_INEXT                   R5
       18 GETTABLEKS                       R10 R9 K6 ["Name"]
       20 JUMPIFNOTEQKS                    R10 K7 ["ToolboxComponent"] ; [+5]
       22 NAMECALL                         R10 R4 K8 ["Destroy"]
       24 CALL                             R10 1 0
       25 JUMP                             ; [+2]
       26 FORGLOOP                         R5 2 [inext] ; [-9]
       28 FORGLOOP                         R0 2 [inext] ; [-18]
       30 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 NEWTABLE                         R6 0 0
        6 DUPTABLE                         R7 K2 [{"AssetPreviewWrapper"}]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K0 ["createElement"]
       10 GETUPVAL                         R9 2
       11 DUPTABLE                         R10 K5 [{"assetData", "previewFuncs"}]
       12 GETUPVAL                         R11 3
       13 GETTABLEKS                       R11 R11 K6 ["getPreviewAsset"]
       15 LOADK                            R12 K7 [112312321312]
       16 CALL                             R11 1 1
       17 SETTABLEKS                       R11 R10 K3 ["assetData"]
       19 NEWTABLE                         R11 0 0
       21 SETTABLEKS                       R11 R10 K4 ["previewFuncs"]
       23 CALL                             R8 2 1
       24 SETTABLEKS                       R8 R7 K1 ["AssetPreviewWrapper"]
       26 CALL                             R4 3 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K8 ["mount"]
       30 MOVE                             R6 R4
       31 ORK                              R7 R0 K9 []
       32 ORK                              R8 R1 K10 [""]
       33 CALL                             R5 3 -1
       34 RETURN                           R5 -1

PROTO_13:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDescendants"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LOADNIL                          R3
        6 GETIMPORT                        R4 K2 [pairs]
        8 MOVE                             R5 R2
        9 CALL                             R4 1 3
       10 FORGPREP_NEXT                    R4
       11 JUMPIFNOTEQ                      R8 R1 ; [+2]
       13 MOVE                             R3 R8
       14 FORGLOOP                         R4 2 ; [-4]
       16 RETURN                           R3 1

PROTO_15:
        0 ORK                              R1 R0 K0 [0.2]
        1 GETIMPORT                        R2 K3 [task.wait]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clickWithoutValidation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["act"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["delay"]
       14 CALL                             R2 0 0
       15 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["sendText"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["act"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["delay"]
       15 CALL                             R3 0 0
       16 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clickWithoutValidation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["act"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["delay"]
       14 CALL                             R2 0 0
       15 RETURN                           R1 1

PROTO_22:
        0 JUMPIF                           R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["new"]
        4 CALL                             R1 0 1
        5 MOVE                             R0 R1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["Mouse"]
        9 GETTABLEKS                       R1 R1 K0 ["new"]
       11 NAMECALL                         R2 R0 K2 ["GetMouse"]
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UGCTestBody"]
        3 NAMECALL                         R1 R0 K1 ["Clone"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UGCTestBody"]
        3 NAMECALL                         R1 R0 K1 ["Clone"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["MeshPart"]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K6 ["unknownPart"]
       11 SETTABLEKS                       R3 R2 K7 ["Name"]
       13 SETTABLEKS                       R1 R2 K8 ["Parent"]
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["Cryo"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R2 K11 ["Framework"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K9 [require]
       29 GETTABLEKS                       R6 R2 K12 ["Roact"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K9 [require]
       34 GETTABLEKS                       R7 R2 K13 ["Rodux"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K9 [require]
       39 GETTABLEKS                       R8 R2 K14 ["ReactRoblox"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R4 K15 ["ContextServices"]
       44 GETTABLEKS                       R9 R4 K16 ["TestHelpers"]
       46 GETTABLEKS                       R9 R9 K17 ["Instances"]
       48 GETTABLEKS                       R9 R9 K18 ["MockPlugin"]
       50 GETIMPORT                        R10 K9 [require]
       52 GETTABLEKS                       R11 R1 K19 ["Src"]
       54 GETTABLEKS                       R11 R11 K20 ["Reducers"]
       56 GETTABLEKS                       R11 R11 K21 ["ToolboxReducer"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K9 [require]
       61 GETTABLEKS                       R12 R1 K19 ["Src"]
       63 GETTABLEKS                       R12 R12 K22 ["Components"]
       65 GETTABLEKS                       R12 R12 K23 ["Asset"]
       67 GETTABLEKS                       R12 R12 K23 ["Asset"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K9 [require]
       72 GETTABLEKS                       R13 R1 K19 ["Src"]
       74 GETTABLEKS                       R13 R13 K22 ["Components"]
       76 GETTABLEKS                       R13 R13 K23 ["Asset"]
       78 GETTABLEKS                       R13 R13 K24 ["Preview"]
       80 GETTABLEKS                       R13 R13 K25 ["AssetPreviewWrapper"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K9 [require]
       85 GETTABLEKS                       R14 R1 K19 ["Src"]
       87 GETTABLEKS                       R14 R14 K26 ["Util"]
       89 GETTABLEKS                       R14 R14 K27 ["MockWrapper"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K9 [require]
       94 GETTABLEKS                       R15 R1 K28 ["TestUtils"]
       96 GETTABLEKS                       R15 R15 K29 ["MockItems"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K9 [require]
      101 GETIMPORT                        R16 K5 [script]
      103 GETTABLEKS                       R16 R16 K6 ["Parent"]
      105 GETTABLEKS                       R16 R16 K30 ["TabTestWrapper"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K9 [require]
      110 GETIMPORT                        R17 K5 [script]
      112 GETTABLEKS                       R17 R17 K6 ["Parent"]
      114 GETTABLEKS                       R17 R17 K31 ["ToolboxTestWrapper"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K9 [require]
      119 GETTABLEKS                       R18 R1 K7 ["Packages"]
      121 GETTABLEKS                       R18 R18 K32 ["Dev"]
      123 GETTABLEKS                       R18 R18 K33 ["Rhodium"]
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R18 R17 K34 ["Element"]
      128 NEWTABLE                         R19 32 0
      130 DUPCLOSURE                       R20 K35 [PROTO_0]
      131 SETTABLEKS                       R20 R19 K36 ["getPathInTestToolbox"]
      133 DUPCLOSURE                       R20 K37 [PROTO_1]
      134 SETTABLEKS                       R20 R19 K38 ["cleanupCategoryVerification"]
      136 DUPCLOSURE                       R20 K39 [PROTO_2]
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R11
      144 SETTABLEKS                       R20 R19 K40 ["createTestAsset"]
      146 DUPCLOSURE                       R20 K41 [PROTO_3]
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R15
      150 SETTABLEKS                       R20 R19 K42 ["createTestTab"]
      152 DUPCLOSURE                       R20 K43 [PROTO_9]
      153 CAPTURE                          VAL R9
      154 SETTABLEKS                       R20 R19 K44 ["createMockPlugin"]
      156 DUPCLOSURE                       R20 K45 [PROTO_10]
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R16
      161 SETTABLEKS                       R20 R19 K46 ["createTestToolbox"]
      163 DUPCLOSURE                       R20 K47 [PROTO_11]
      164 SETTABLEKS                       R20 R19 K48 ["cleanupTestToolbox"]
      166 DUPCLOSURE                       R20 K49 [PROTO_12]
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R14
      171 SETTABLEKS                       R20 R19 K50 ["createPreviewAsset"]
      173 DUPCLOSURE                       R20 K51 [PROTO_13]
      174 SETTABLEKS                       R20 R19 K52 ["getDescendants"]
      176 DUPCLOSURE                       R20 K53 [PROTO_14]
      177 CAPTURE                          VAL R19
      178 SETTABLEKS                       R20 R19 K54 ["getDescendant"]
      180 DUPCLOSURE                       R20 K55 [PROTO_15]
      181 SETTABLEKS                       R20 R19 K56 ["delay"]
      183 DUPCLOSURE                       R20 K57 [PROTO_17]
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R19
      187 SETTABLEKS                       R20 R19 K58 ["clickInstanceWithXPath"]
      189 DUPCLOSURE                       R20 K59 [PROTO_19]
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R19
      193 SETTABLEKS                       R20 R19 K60 ["typeInstanceWithXPath"]
      195 DUPCLOSURE                       R20 K61 [PROTO_21]
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R19
      199 SETTABLEKS                       R20 R19 K62 ["clickInstance"]
      201 DUPCLOSURE                       R20 K63 [PROTO_22]
      202 CAPTURE                          VAL R9
      203 CAPTURE                          VAL R8
      204 SETTABLEKS                       R20 R19 K64 ["mockMouse"]
      206 DUPCLOSURE                       R20 K65 [PROTO_23]
      207 CAPTURE                          VAL R0
      208 SETTABLEKS                       R20 R19 K66 ["getMockUGCBody"]
      210 DUPCLOSURE                       R20 K67 [PROTO_24]
      211 CAPTURE                          VAL R0
      212 SETTABLEKS                       R20 R19 K68 ["getMockBodyWithUnknown"]
      214 RETURN                           R19 1
