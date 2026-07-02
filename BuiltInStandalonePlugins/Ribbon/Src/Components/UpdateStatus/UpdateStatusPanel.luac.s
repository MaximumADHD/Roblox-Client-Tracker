PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 LOADK                            R2 K2 ["Studio"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+7]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R2 R1 K3 ["Theme"]
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R2 K4 ["Name"]
       11 RETURN                           R3 1
       12 LOADK                            R2 K5 ["Dark"]
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K5 [{["tag"] = "auto-xy", ["backgroundStyle"], ["onAbsoluteSizeChanged"]}]
        7 GETTABLEKS                       R5 R1 K6 ["Inverse"]
        9 GETTABLEKS                       R5 R5 K7 ["Surface"]
       11 GETTABLEKS                       R5 R5 K8 ["Surface_0"]
       13 SETTABLEKS                       R5 R4 K3 ["backgroundStyle"]
       15 GETTABLEKS                       R5 R0 K4 ["onAbsoluteSizeChanged"]
       17 SETTABLEKS                       R5 R4 K4 ["onAbsoluteSizeChanged"]
       19 GETTABLEKS                       R5 R0 K9 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [pcall]
        3 DUPCLOSURE                       R3 K2 [PROTO_0]
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+7]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETTABLEKS                       R4 R3 K3 ["Theme"]
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETTABLEKS                       R1 R4 K4 ["Name"]
       12 JUMP                             ; [+1]
       13 LOADK                            R1 K5 ["Dark"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 LOADK                            R2 K2 ["Studio"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETTABLEKS                       R1 R0 K4 ["ThemeChanged"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R1 R1 K5 ["Connect"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1
       18 DUPCLOSURE                       R1 K6 [PROTO_5]
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ItemId"]
        4 DUPTABLE                         R3 K9 [{["Id"], ["InitialEnabled"] = False, ["Modal"] = False, ["Popup"], ["Resizable"] = True, ["Title"]}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["ItemId"]
        8 SETTABLEKS                       R4 R3 K1 ["Id"]
       10 DUPTABLE                         R4 K11 [{["PassesThroughMouseEvents"] = True}]
       11 SETTABLEKS                       R4 R3 K5 ["Popup"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K0 ["ItemId"]
       16 SETTABLEKS                       R4 R3 K8 ["Title"]
       18 NAMECALL                         R0 R0 K12 ["CreateQWidgetPluginGui"]
       20 CALL                             R0 3 1
       21 GETIMPORT                        R1 K16 [Enum.ZIndexBehavior.Sibling]
       23 SETTABLEKS                       R1 R0 K14 ["ZIndexBehavior"]
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K17 ["PanelUri"]
       29 GETIMPORT                        R4 K20 [Vector2.zero]
       31 NAMECALL                         R1 R1 K21 ["SetSizeAsync"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PanelUri"]
        4 DUPTABLE                         R3 K5 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K6 ["ButtonUri"]
        8 SETTABLEKS                       R4 R3 K1 ["TargetWidgetUri"]
       10 GETIMPORT                        R4 K9 [Vector2.new]
       12 LOADN                            R5 1
       13 LOADN                            R6 1
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K2 ["TargetAnchorPoint"]
       17 GETIMPORT                        R4 K9 [Vector2.new]
       19 LOADN                            R5 1
       20 LOADN                            R6 0
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K3 ["SubjectAnchorPoint"]
       24 GETIMPORT                        R4 K9 [Vector2.new]
       26 LOADN                            R5 0
       27 LOADN                            R6 5
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K4 ["Offset"]
       31 NAMECALL                         R0 R0 K10 ["SetAttachmentAsync"]
       33 CALL                             R0 3 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R2 K1 ["X"]
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K4 [math.ceil]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
       10 GETTABLEKS                       R3 R3 K5 ["Y"]
       12 FASTCALL1                        MATH_CEIL R3 ; [+2]
       13 GETIMPORT                        R2 K4 [math.ceil]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K6 ["PanelUri"]
       20 GETIMPORT                        R6 K9 [Vector2.new]
       22 MOVE                             R7 R1
       23 MOVE                             R8 R2
       24 CALL                             R6 2 -1
       25 NAMECALL                         R3 R3 K10 ["SetSizeAsync"]
       27 CALL                             R3 -1 0
       28 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 3
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 NEWTABLE                         R6 0 0
       15 CALL                             R4 2 0
       16 LOADK                            R6 K2 ["Panels"]
       17 NAMECALL                         R4 R1 K3 ["GetPluginComponent"]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 4
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 3
       29 NEWCLOSURE                       R7 P2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R0 K4 ["PanelUri"]
       36 GETTABLEKS                       R10 R0 K5 ["ButtonUri"]
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R6 2 0
       41 GETTABLEKS                       R6 R0 K6 ["Enabled"]
       43 SETTABLEKS                       R6 R5 K6 ["Enabled"]
       45 GETUPVAL                         R6 5
       46 GETTABLEKS                       R6 R6 K7 ["createPortal"]
       48 GETUPVAL                         R7 6
       49 GETTABLEKS                       R7 R7 K8 ["createElement"]
       51 GETUPVAL                         R8 7
       52 DUPTABLE                         R9 K11 [{"device", "theme"}]
       53 GETUPVAL                         R10 8
       54 GETTABLEKS                       R10 R10 K12 ["Device"]
       56 GETTABLEKS                       R10 R10 K13 ["Desktop"]
       58 SETTABLEKS                       R10 R9 K9 ["device"]
       60 SETTABLEKS                       R2 R9 K10 ["theme"]
       62 DUPTABLE                         R10 K15 [{"Container"}]
       63 GETUPVAL                         R11 6
       64 GETTABLEKS                       R11 R11 K8 ["createElement"]
       66 GETUPVAL                         R12 9
       67 DUPTABLE                         R13 K17 [{"onAbsoluteSizeChanged"}]
       68 NEWCLOSURE                       R14 P3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R14 R13 K16 ["onAbsoluteSizeChanged"]
       73 NEWTABLE                         R14 0 1
       75 GETTABLEKS                       R15 R0 K18 ["children"]
       77 SETLIST                          R14 R15 1 [1]
       79 CALL                             R11 3 1
       80 SETTABLEKS                       R11 R10 K14 ["Container"]
       82 CALL                             R7 3 1
       83 MOVE                             R8 R5
       84 CALL                             R6 2 -1
       85 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["useEffect"]
       37 GETTABLEKS                       R6 R1 K12 ["useMemo"]
       39 GETTABLEKS                       R7 R1 K13 ["useState"]
       41 GETTABLEKS                       R8 R3 K14 ["FoundationProvider"]
       43 GETTABLEKS                       R9 R3 K15 ["Enums"]
       45 GETTABLEKS                       R10 R3 K16 ["View"]
       47 GETTABLEKS                       R11 R3 K17 ["Hooks"]
       49 GETTABLEKS                       R11 R11 K18 ["useTokens"]
       51 GETTABLEKS                       R12 R4 K19 ["ContextServices"]
       53 GETTABLEKS                       R13 R12 K20 ["Plugin"]
       55 DUPCLOSURE                       R14 K21 [PROTO_1]
       56 DUPCLOSURE                       R15 K22 [PROTO_2]
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R10
       60 DUPCLOSURE                       R16 K23 [PROTO_10]
       61 CAPTURE                          VAL R13
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R14
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R15
       71 RETURN                           R16 1
