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
        6 DUPTABLE                         R4 K4 [{"tag", "backgroundStyle", "onAbsoluteSizeChanged"}]
        7 LOADK                            R5 K5 ["auto-xy"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 GETTABLEKS                       R5 R1 K6 ["Inverse"]
       12 GETTABLEKS                       R5 R5 K7 ["Surface"]
       14 GETTABLEKS                       R5 R5 K8 ["Surface_0"]
       16 SETTABLEKS                       R5 R4 K2 ["backgroundStyle"]
       18 GETTABLEKS                       R5 R0 K3 ["onAbsoluteSizeChanged"]
       20 SETTABLEKS                       R5 R4 K3 ["onAbsoluteSizeChanged"]
       22 GETTABLEKS                       R5 R0 K9 ["children"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1

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
        4 DUPTABLE                         R3 K7 [{"Id", "InitialEnabled", "Modal", "Popup", "Resizable", "Title"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["ItemId"]
        8 SETTABLEKS                       R4 R3 K1 ["Id"]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K2 ["InitialEnabled"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K3 ["Modal"]
       16 DUPTABLE                         R4 K9 [{"PassesThroughMouseEvents"}]
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K8 ["PassesThroughMouseEvents"]
       20 SETTABLEKS                       R4 R3 K4 ["Popup"]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K5 ["Resizable"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K0 ["ItemId"]
       28 SETTABLEKS                       R4 R3 K6 ["Title"]
       30 NAMECALL                         R0 R0 K10 ["CreateQWidgetPluginGui"]
       32 CALL                             R0 3 1
       33 GETIMPORT                        R1 K14 [Enum.ZIndexBehavior.Sibling]
       35 SETTABLEKS                       R1 R0 K12 ["ZIndexBehavior"]
       37 GETUPVAL                         R1 2
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K15 ["PanelUri"]
       41 GETIMPORT                        R4 K18 [Vector2.zero]
       43 NAMECALL                         R1 R1 K19 ["SetSizeAsync"]
       45 CALL                             R1 3 0
       46 RETURN                           R0 1

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["use"]
        9 CALL                             R1 0 1
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 4
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 0
       21 CALL                             R4 2 0
       22 LOADK                            R6 K4 ["Panels"]
       23 NAMECALL                         R4 R1 K5 ["GetPluginComponent"]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 5
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 0
       33 CALL                             R5 2 1
       34 GETUPVAL                         R6 4
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R8 0 2
       40 GETTABLEKS                       R9 R0 K6 ["PanelUri"]
       42 GETTABLEKS                       R10 R0 K7 ["ButtonUri"]
       44 SETLIST                          R8 R9 2 [1]
       46 CALL                             R6 2 0
       47 GETTABLEKS                       R6 R0 K8 ["Enabled"]
       49 SETTABLEKS                       R6 R5 K8 ["Enabled"]
       51 GETUPVAL                         R6 6
       52 GETTABLEKS                       R6 R6 K9 ["createPortal"]
       54 GETUPVAL                         R7 7
       55 GETTABLEKS                       R7 R7 K10 ["createElement"]
       57 GETUPVAL                         R8 8
       58 DUPTABLE                         R9 K13 [{"device", "theme"}]
       59 GETUPVAL                         R10 9
       60 GETTABLEKS                       R10 R10 K14 ["Device"]
       62 GETTABLEKS                       R10 R10 K15 ["Desktop"]
       64 SETTABLEKS                       R10 R9 K11 ["device"]
       66 SETTABLEKS                       R2 R9 K12 ["theme"]
       68 DUPTABLE                         R10 K17 [{"Container"}]
       69 GETUPVAL                         R11 7
       70 GETTABLEKS                       R11 R11 K10 ["createElement"]
       72 GETUPVAL                         R12 10
       73 DUPTABLE                         R13 K19 [{"onAbsoluteSizeChanged"}]
       74 NEWCLOSURE                       R14 P3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R14 R13 K18 ["onAbsoluteSizeChanged"]
       79 NEWTABLE                         R14 0 1
       81 GETTABLEKS                       R15 R0 K20 ["children"]
       83 SETLIST                          R14 R15 1 [1]
       85 CALL                             R11 3 1
       86 SETTABLEKS                       R11 R10 K16 ["Container"]
       88 CALL                             R7 3 1
       89 MOVE                             R8 R5
       90 CALL                             R6 2 -1
       91 RETURN                           R6 -1

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
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["SharedFlags"]
       41 GETTABLEKS                       R6 R6 K13 ["getFeatureStudioBackgroundUpdates"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K14 ["useEffect"]
       46 GETTABLEKS                       R7 R1 K15 ["useMemo"]
       48 GETTABLEKS                       R8 R1 K16 ["useState"]
       50 GETTABLEKS                       R9 R3 K17 ["FoundationProvider"]
       52 GETTABLEKS                       R10 R3 K18 ["Enums"]
       54 GETTABLEKS                       R11 R3 K19 ["View"]
       56 GETTABLEKS                       R12 R3 K20 ["Hooks"]
       58 GETTABLEKS                       R12 R12 K21 ["useTokens"]
       60 GETTABLEKS                       R13 R4 K22 ["ContextServices"]
       62 GETTABLEKS                       R14 R13 K23 ["Plugin"]
       64 DUPCLOSURE                       R15 K24 [PROTO_1]
       65 DUPCLOSURE                       R16 K25 [PROTO_2]
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R11
       69 DUPCLOSURE                       R17 K26 [PROTO_10]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R16
       81 RETURN                           R17 1
