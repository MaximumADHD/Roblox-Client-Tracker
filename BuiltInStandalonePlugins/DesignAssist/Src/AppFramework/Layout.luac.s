PROTO_0:
        0 DUPTABLE                         R2 K10 [{[1] = "NavigationRegion", ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["ZIndex"] = 2}]
        1 JUMPIFNOTEQKS                    R0 K11 ["Bottom"] ; [+25]
        3 GETIMPORT                        R3 K14 [Vector2.new]
        5 LOADK                            R4 K15 [0.5]
        6 LOADN                            R5 1
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R3 R2 K16 ["AnchorPoint"]
       10 GETIMPORT                        R3 K19 [UDim2.fromScale]
       12 LOADK                            R4 K15 [0.5]
       13 LOADN                            R5 1
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K20 ["Position"]
       17 GETIMPORT                        R3 K21 [UDim2.new]
       19 LOADN                            R4 1
       20 LOADN                            R5 0
       21 LOADN                            R6 0
       22 MOVE                             R7 R1
       23 CALL                             R3 4 1
       24 SETTABLEKS                       R3 R2 K22 ["Size"]
       26 RETURN                           R2 1
       27 JUMPIFNOTEQKS                    R0 K23 ["Top"] ; [+25]
       29 GETIMPORT                        R3 K14 [Vector2.new]
       31 LOADK                            R4 K15 [0.5]
       32 LOADN                            R5 0
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K16 ["AnchorPoint"]
       36 GETIMPORT                        R3 K19 [UDim2.fromScale]
       38 LOADK                            R4 K15 [0.5]
       39 LOADN                            R5 0
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K20 ["Position"]
       43 GETIMPORT                        R3 K21 [UDim2.new]
       45 LOADN                            R4 1
       46 LOADN                            R5 0
       47 LOADN                            R6 0
       48 MOVE                             R7 R1
       49 CALL                             R3 4 1
       50 SETTABLEKS                       R3 R2 K22 ["Size"]
       52 RETURN                           R2 1
       53 JUMPIFNOTEQKS                    R0 K24 ["Right"] ; [+25]
       55 GETIMPORT                        R3 K14 [Vector2.new]
       57 LOADN                            R4 1
       58 LOADK                            R5 K15 [0.5]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K16 ["AnchorPoint"]
       62 GETIMPORT                        R3 K19 [UDim2.fromScale]
       64 LOADN                            R4 1
       65 LOADK                            R5 K15 [0.5]
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R2 K20 ["Position"]
       69 GETIMPORT                        R3 K21 [UDim2.new]
       71 LOADN                            R4 0
       72 MOVE                             R5 R1
       73 LOADN                            R6 1
       74 LOADN                            R7 0
       75 CALL                             R3 4 1
       76 SETTABLEKS                       R3 R2 K22 ["Size"]
       78 RETURN                           R2 1
       79 GETIMPORT                        R3 K14 [Vector2.new]
       81 LOADN                            R4 0
       82 LOADK                            R5 K15 [0.5]
       83 CALL                             R3 2 1
       84 SETTABLEKS                       R3 R2 K16 ["AnchorPoint"]
       86 GETIMPORT                        R3 K19 [UDim2.fromScale]
       88 LOADN                            R4 0
       89 LOADK                            R5 K15 [0.5]
       90 CALL                             R3 2 1
       91 SETTABLEKS                       R3 R2 K20 ["Position"]
       93 GETIMPORT                        R3 K21 [UDim2.new]
       95 LOADN                            R4 0
       96 MOVE                             R5 R1
       97 LOADN                            R6 1
       98 LOADN                            R7 0
       99 CALL                             R3 4 1
      100 SETTABLEKS                       R3 R2 K22 ["Size"]
      102 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K9 [{[1] = "ContentRegion", ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["ZIndex"] = 1}]
        1 JUMPIFNOTEQKS                    R0 K10 ["Left"] ; [+3]
        3 MOVE                             R4 R1
        4 JUMP                             ; [+1]
        5 LOADN                            R4 0
        6 JUMPIFNOTEQKS                    R0 K11 ["Right"] ; [+3]
        8 MOVE                             R5 R1
        9 JUMP                             ; [+1]
       10 LOADN                            R5 0
       11 JUMPIFNOTEQKS                    R0 K12 ["Top"] ; [+3]
       13 MOVE                             R6 R1
       14 JUMP                             ; [+1]
       15 LOADN                            R6 0
       16 JUMPIFNOTEQKS                    R0 K13 ["Bottom"] ; [+3]
       18 MOVE                             R7 R1
       19 JUMP                             ; [+1]
       20 LOADN                            R7 0
       21 GETIMPORT                        R8 K16 [UDim2.fromOffset]
       23 GETTABLEKS                       R10 R2 K17 ["left"]
       25 ADD                              R9 R4 R10
       26 GETTABLEKS                       R11 R2 K18 ["top"]
       28 ADD                              R10 R6 R11
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R3 K19 ["Position"]
       32 GETIMPORT                        R8 K21 [UDim2.new]
       34 LOADN                            R9 1
       35 ADD                              R13 R4 R5
       36 GETTABLEKS                       R14 R2 K17 ["left"]
       38 ADD                              R12 R13 R14
       39 GETTABLEKS                       R13 R2 K22 ["right"]
       41 ADD                              R11 R12 R13
       42 MINUS                            R10 R11
       43 LOADN                            R11 1
       44 ADD                              R15 R6 R7
       45 GETTABLEKS                       R16 R2 K18 ["top"]
       47 ADD                              R14 R15 R16
       48 GETTABLEKS                       R15 R2 K23 ["bottom"]
       50 ADD                              R13 R14 R15
       51 MINUS                            R12 R13
       52 CALL                             R8 4 1
       53 SETTABLEKS                       R8 R3 K24 ["Size"]
       55 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R6 R0 K0 ["width"]
        2 GETTABLEKS                       R7 R3 K1 ["left"]
        4 SUB                              R5 R6 R7
        5 GETTABLEKS                       R6 R3 K2 ["right"]
        7 SUB                              R4 R5 R6
        8 JUMPIFEQKS                       R1 K3 ["Left"] ; [+3]
       10 JUMPIFNOTEQKS                    R1 K4 ["Right"] ; [+2]
       12 SUB                              R4 R4 R2
       13 LOADN                            R6 0
       14 FASTCALL2                        MATH_MAX R6 R4 ; [+4]
       16 MOVE                             R7 R4
       17 GETIMPORT                        R5 K7 [math.max]
       19 CALL                             R5 2 1
       20 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SUPPORT_MIN_WIDTH"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["SUPPORT_MAX_WIDTH"]
        6 FASTCALL3                        MATH_CLAMP R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [math.clamp]
       11 CALL                             R1 3 1
       12 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["contentPropsFor"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R5 3 1
        7 JUMPIFEQKS                       R3 K1 ["SplitLeft"] ; [+4]
        9 JUMPIFEQKS                       R3 K2 ["SplitRight"] ; [+2]
       11 RETURN                           R5 1
       12 GETTABLEKS                       R6 R5 K3 ["Position"]
       14 GETTABLEKS                       R7 R5 K4 ["Size"]
       16 JUMPIFNOTEQKS                    R3 K1 ["SplitLeft"] ; [+3]
       18 MOVE                             R8 R4
       19 JUMP                             ; [+1]
       20 LOADN                            R8 0
       21 GETIMPORT                        R9 K7 [UDim2.new]
       23 GETTABLEKS                       R10 R6 K8 ["X"]
       25 GETTABLEKS                       R10 R10 K9 ["Scale"]
       27 GETTABLEKS                       R12 R6 K8 ["X"]
       29 GETTABLEKS                       R12 R12 K10 ["Offset"]
       31 ADD                              R11 R12 R8
       32 GETTABLEKS                       R12 R6 K11 ["Y"]
       34 GETTABLEKS                       R12 R12 K9 ["Scale"]
       36 GETTABLEKS                       R13 R6 K11 ["Y"]
       38 GETTABLEKS                       R13 R13 K10 ["Offset"]
       40 CALL                             R9 4 1
       41 SETTABLEKS                       R9 R5 K3 ["Position"]
       43 GETIMPORT                        R9 K7 [UDim2.new]
       45 GETTABLEKS                       R10 R7 K8 ["X"]
       47 GETTABLEKS                       R10 R10 K9 ["Scale"]
       49 GETTABLEKS                       R12 R7 K8 ["X"]
       51 GETTABLEKS                       R12 R12 K10 ["Offset"]
       53 SUB                              R11 R12 R4
       54 GETTABLEKS                       R12 R7 K11 ["Y"]
       56 GETTABLEKS                       R12 R12 K9 ["Scale"]
       58 GETTABLEKS                       R13 R7 K11 ["Y"]
       60 GETTABLEKS                       R13 R13 K10 ["Offset"]
       62 CALL                             R9 4 1
       63 SETTABLEKS                       R9 R5 K4 ["Size"]
       65 RETURN                           R5 1

PROTO_5:
        0 JUMPIFNOTEQKS                    R0 K0 ["Left"] ; [+3]
        2 MOVE                             R5 R1
        3 JUMP                             ; [+1]
        4 LOADN                            R5 0
        5 JUMPIFNOTEQKS                    R0 K1 ["Right"] ; [+3]
        7 MOVE                             R6 R1
        8 JUMP                             ; [+1]
        9 LOADN                            R6 0
       10 JUMPIFNOTEQKS                    R0 K2 ["Top"] ; [+3]
       12 MOVE                             R8 R1
       13 JUMP                             ; [+1]
       14 LOADN                            R8 0
       15 GETTABLEKS                       R9 R2 K3 ["top"]
       17 ADD                              R7 R8 R9
       18 JUMPIFNOTEQKS                    R0 K4 ["Bottom"] ; [+3]
       20 MOVE                             R9 R1
       21 JUMP                             ; [+1]
       22 LOADN                            R9 0
       23 GETTABLEKS                       R10 R2 K5 ["bottom"]
       25 ADD                              R8 R9 R10
       26 DUPTABLE                         R9 K16 [{["Name"] = "SupportRegion", ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["ZIndex"] = 1, ["Size"]}]
       27 GETIMPORT                        R10 K19 [UDim2.new]
       29 LOADN                            R11 0
       30 MOVE                             R12 R4
       31 LOADN                            R13 1
       32 ADD                              R15 R7 R8
       33 MINUS                            R14 R15
       34 CALL                             R10 4 1
       35 SETTABLEKS                       R10 R9 K15 ["Size"]
       37 JUMPIFNOTEQKS                    R3 K20 ["SplitRight"] ; [+21]
       39 GETIMPORT                        R10 K22 [Vector2.new]
       41 LOADN                            R11 1
       42 LOADN                            R12 0
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K23 ["AnchorPoint"]
       46 GETIMPORT                        R10 K19 [UDim2.new]
       48 LOADN                            R11 1
       49 GETTABLEKS                       R14 R2 K24 ["right"]
       51 ADD                              R13 R6 R14
       52 MINUS                            R12 R13
       53 LOADN                            R13 0
       54 MOVE                             R14 R7
       55 CALL                             R10 4 1
       56 SETTABLEKS                       R10 R9 K25 ["Position"]
       58 RETURN                           R9 1
       59 GETIMPORT                        R10 K22 [Vector2.new]
       61 LOADN                            R11 0
       62 LOADN                            R12 0
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K23 ["AnchorPoint"]
       66 GETIMPORT                        R10 K27 [UDim2.fromOffset]
       68 GETTABLEKS                       R12 R2 K28 ["left"]
       70 ADD                              R11 R5 R12
       71 MOVE                             R12 R7
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K25 ["Position"]
       75 RETURN                           R9 1

PROTO_6:
        0 JUMPIFNOTEQKS                    R1 K0 ["None"] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 JUMPIFEQKS                       R1 K1 ["Bottom"] ; [+3]
        6 JUMPIFNOTEQKS                    R1 K2 ["Top"] ; [+4]
        8 GETTABLEKS                       R2 R0 K3 ["keySizeY"]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R0 K4 ["keySizeX"]
       13 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getLayoutMetrics"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K7 [{"breakpoint", "columns", "margin", "gutter", "gap", "contentWidth"}]
        6 GETTABLEKS                       R3 R1 K1 ["breakpoint"]
        8 SETTABLEKS                       R3 R2 K1 ["breakpoint"]
       10 GETTABLEKS                       R3 R1 K2 ["columns"]
       12 SETTABLEKS                       R3 R2 K2 ["columns"]
       14 GETTABLEKS                       R3 R1 K3 ["margin"]
       16 SETTABLEKS                       R3 R2 K3 ["margin"]
       18 GETTABLEKS                       R3 R1 K4 ["gutter"]
       20 SETTABLEKS                       R3 R2 K4 ["gutter"]
       22 GETTABLEKS                       R3 R1 K5 ["gap"]
       24 SETTABLEKS                       R3 R2 K5 ["gap"]
       26 SETTABLEKS                       R0 R2 K6 ["contentWidth"]
       28 RETURN                           R2 1

PROTO_8:
        0 JUMPIFNOTEQKS                    R0 K0 ["Left"] ; [+3]
        2 MOVE                             R5 R1
        3 JUMP                             ; [+1]
        4 LOADN                            R5 0
        5 JUMPIFNOTEQKS                    R0 K1 ["Right"] ; [+3]
        7 MOVE                             R6 R1
        8 JUMP                             ; [+1]
        9 LOADN                            R6 0
       10 JUMPIFNOTEQKS                    R0 K2 ["Top"] ; [+3]
       12 MOVE                             R8 R1
       13 JUMP                             ; [+1]
       14 LOADN                            R8 0
       15 GETTABLEKS                       R9 R2 K3 ["top"]
       17 ADD                              R7 R8 R9
       18 JUMPIFNOTEQKS                    R0 K4 ["Bottom"] ; [+3]
       20 MOVE                             R9 R1
       21 JUMP                             ; [+1]
       22 LOADN                            R9 0
       23 GETTABLEKS                       R10 R2 K5 ["bottom"]
       25 ADD                              R8 R9 R10
       26 DUPTABLE                         R9 K16 [{["Name"] = "RegionDivider", ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 3, ["AnchorPoint"], ["Size"]}]
       27 GETIMPORT                        R10 K19 [Vector2.new]
       29 LOADK                            R11 K20 [0.5]
       30 LOADN                            R12 0
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K14 ["AnchorPoint"]
       34 GETIMPORT                        R10 K22 [UDim2.new]
       36 LOADN                            R11 0
       37 LOADN                            R12 1
       38 LOADN                            R13 1
       39 ADD                              R15 R7 R8
       40 MINUS                            R14 R15
       41 CALL                             R10 4 1
       42 SETTABLEKS                       R10 R9 K15 ["Size"]
       44 JUMPIFNOTEQKS                    R3 K23 ["SplitRight"] ; [+15]
       46 GETIMPORT                        R10 K22 [UDim2.new]
       48 LOADN                            R11 1
       49 GETTABLEKS                       R15 R2 K24 ["right"]
       51 ADD                              R14 R6 R15
       52 ADD                              R13 R14 R4
       53 MINUS                            R12 R13
       54 LOADN                            R13 0
       55 MOVE                             R14 R7
       56 CALL                             R10 4 1
       57 SETTABLEKS                       R10 R9 K25 ["Position"]
       59 RETURN                           R9 1
       60 GETIMPORT                        R10 K27 [UDim2.fromOffset]
       62 GETTABLEKS                       R13 R2 K28 ["left"]
       64 ADD                              R12 R5 R13
       65 ADD                              R11 R12 R4
       66 MOVE                             R12 R7
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K25 ["Position"]
       70 RETURN                           R9 1

PROTO_9:
        0 JUMPIFNOT                        R1 ; [+4]
        1 GETTABLEKS                       R2 R0 K0 ["breakpoint"]
        3 JUMPIFEQKS                       R2 K1 ["Mobile"] ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["ZERO_INSETS"]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K3 ["orientation"]
       11 JUMPIFNOTEQKS                    R2 K4 ["Landscape"] ; [+3]
       13 DUPTABLE                         R2 K12 [{["top"] = 44, ["right"] = 59, ["bottom"] = 21, ["left"] = 59}]
       14 RETURN                           R2 1
       15 DUPTABLE                         R2 K16 [{["top"] = 100, ["right"] = 0, ["bottom"] = 34, ["left"] = 0}]
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Layout must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETIMPORT                        R2 K1 [script]
       18 GETTABLEKS                       R2 R2 K9 ["Parent"]
       20 GETTABLEKS                       R2 R2 K10 ["Contexts"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K8 [require]
       25 GETIMPORT                        R3 K1 [script]
       27 GETTABLEKS                       R3 R3 K9 ["Parent"]
       29 GETTABLEKS                       R3 R3 K11 ["DeviceProfiles"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K8 [require]
       34 GETIMPORT                        R4 K1 [script]
       36 GETTABLEKS                       R4 R4 K9 ["Parent"]
       38 GETTABLEKS                       R4 R4 K12 ["Hooks"]
       40 CALL                             R3 1 1
       41 NEWTABLE                         R4 16 0
       43 DUPCLOSURE                       R5 K13 [PROTO_0]
       44 SETTABLEKS                       R5 R4 K14 ["navPropsFor"]
       46 DUPCLOSURE                       R5 K15 [PROTO_1]
       47 SETTABLEKS                       R5 R4 K16 ["contentPropsFor"]
       49 DUPCLOSURE                       R5 K17 [PROTO_2]
       50 SETTABLEKS                       R5 R4 K18 ["contentWidthFor"]
       52 DUPCLOSURE                       R5 K19 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R5 R4 K20 ["clampSupportWidth"]
       56 DUPCLOSURE                       R5 K21 [PROTO_4]
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R5 R4 K22 ["splitContentPropsFor"]
       60 DUPCLOSURE                       R5 K23 [PROTO_5]
       61 SETTABLEKS                       R5 R4 K24 ["supportPropsFor"]
       63 DUPCLOSURE                       R5 K25 [PROTO_6]
       64 SETTABLEKS                       R5 R4 K26 ["navThicknessFor"]
       66 DUPCLOSURE                       R5 K27 [PROTO_7]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R5 R4 K28 ["layoutMetricsForContentWidth"]
       70 DUPCLOSURE                       R5 K29 [PROTO_8]
       71 SETTABLEKS                       R5 R4 K30 ["dividerPropsFor"]
       73 DUPCLOSURE                       R5 K31 [PROTO_9]
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R5 R4 K32 ["getSafeAreaInsets"]
       77 RETURN                           R4 1
