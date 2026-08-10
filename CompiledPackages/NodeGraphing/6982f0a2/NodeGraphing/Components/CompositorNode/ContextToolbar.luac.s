PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["createUniqueKey"]
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R4 R0
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 MOVE                             R9 R2
       15 GETTABLEKS                       R10 R8 K2 ["Tooltip"]
       17 CALL                             R9 1 1
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R10 R10 K3 ["createElement"]
       21 GETUPVAL                         R11 2
       22 GETTABLEKS                       R11 R11 K2 ["Tooltip"]
       24 DUPTABLE                         R12 K8 [{["title"] = "", ["text"], ["side"]}]
       25 GETTABLEKS                       R13 R8 K2 ["Tooltip"]
       27 SETTABLEKS                       R13 R12 K6 ["text"]
       29 GETUPVAL                         R13 2
       30 GETTABLEKS                       R13 R13 K9 ["Enums"]
       32 GETTABLEKS                       R13 R13 K10 ["PopoverSide"]
       34 GETTABLEKS                       R13 R13 K11 ["Bottom"]
       36 SETTABLEKS                       R13 R12 K7 ["side"]
       38 GETUPVAL                         R13 1
       39 GETTABLEKS                       R13 R13 K3 ["createElement"]
       41 GETUPVAL                         R14 2
       42 GETTABLEKS                       R14 R14 K12 ["IconButton"]
       44 DUPTABLE                         R15 K18 [{"icon", "onActivated", "size", "testId", "LayoutOrder"}]
       45 GETTABLEKS                       R16 R8 K19 ["Icon"]
       47 SETTABLEKS                       R16 R15 K13 ["icon"]
       49 GETTABLEKS                       R16 R8 K20 ["OnActivated"]
       51 SETTABLEKS                       R16 R15 K14 ["onActivated"]
       53 GETUPVAL                         R17 3
       54 CALL                             R17 0 1
       55 JUMPIFNOT                        R17 ; [+8]
       56 GETUPVAL                         R16 2
       57 GETTABLEKS                       R16 R16 K9 ["Enums"]
       59 GETTABLEKS                       R16 R16 K21 ["ButtonSize"]
       61 GETTABLEKS                       R16 R16 K22 ["XSmall"]
       63 JUMP                             ; [+7]
       64 GETUPVAL                         R16 2
       65 GETTABLEKS                       R16 R16 K9 ["Enums"]
       67 GETTABLEKS                       R16 R16 K21 ["ButtonSize"]
       69 GETTABLEKS                       R16 R16 K23 ["Small"]
       71 SETTABLEKS                       R16 R15 K15 ["size"]
       73 LOADK                            R17 K24 ["ContextToolbarButton-%*"]
       74 GETTABLEKS                       R19 R8 K2 ["Tooltip"]
       76 LOADK                            R21 K25 ["%s"]
       77 LOADK                            R22 K26 ["_"]
       78 NAMECALL                         R19 R19 K27 ["gsub"]
       80 CALL                             R19 3 1
       81 NAMECALL                         R17 R17 K28 ["format"]
       83 CALL                             R17 2 1
       84 MOVE                             R16 R17
       85 SETTABLEKS                       R16 R15 K16 ["testId"]
       87 MOVE                             R16 R1
       88 CALL                             R16 0 1
       89 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
       91 NEWTABLE                         R16 0 0
       93 CALL                             R13 3 -1
       94 CALL                             R10 -1 1
       95 SETTABLE                         R10 R3 R9
       96 FORGLOOP                         R4 2 ; [-83]
       98 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["Padding"]
        6 GETTABLEKS                       R4 R4 K4 ["Small"]
        8 CALL                             R2 2 1
        9 SUB                              R1 R0 R2
       10 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       10 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       12 CALL                             R2 0 1
       13 GETTABLEKS                       R3 R1 K4 ["layer"]
       15 JUMPIF                           R3 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K5 ["createPortal"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["createElement"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K7 ["View"]
       27 DUPTABLE                         R6 K10 [{"Position", "Size"}]
       28 GETTABLEKS                       R7 R0 K11 ["positionBinding"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R2
       32 NAMECALL                         R7 R7 K12 ["map"]
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K8 ["Position"]
       37 GETTABLEKS                       R7 R0 K13 ["widthBinding"]
       39 DUPCLOSURE                       R9 K14 [PROTO_2]
       40 NAMECALL                         R7 R7 K12 ["map"]
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K9 ["Size"]
       45 DUPTABLE                         R7 K16 [{"Toolbar"}]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K6 ["createElement"]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K7 ["View"]
       52 DUPTABLE                         R10 K19 [{["tag"] = "row align-x-center gap-xsmall position-top-center anchor-bottom-center size-0-0 auto-xy padding-xsmall stroke-standard stroke-default radius-medium bg-surface-100"}]
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R12 R0 K20 ["Buttons"]
       56 CALL                             R11 1 1
       57 CALL                             R8 3 1
       58 SETTABLEKS                       R8 R7 K15 ["Toolbar"]
       60 CALL                             R4 3 1
       61 GETTABLEKS                       R5 R1 K4 ["layer"]
       63 CALL                             R3 2 -1
       64 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R2 R0 K3 ["X"]
        5 GETTABLEKS                       R3 R0 K4 ["Y"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K6 [UDim2.fromScale]
       11 LOADN                            R2 -1000
       12 LOADN                            R3 -1000
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useOverlay"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useBinding"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["useEventCallback"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R3
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K4 ["createElement"]
       20 LOADK                            R6 K5 ["Folder"]
       21 NEWTABLE                         R7 0 0
       23 DUPTABLE                         R8 K8 [{"Anchor", "Portal"}]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K4 ["createElement"]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K9 ["View"]
       30 DUPTABLE                         R11 K12 [{["tag"] = "position-top-center anchor-bottom-center padding-y-small"}]
       31 GETUPVAL                         R12 1
       32 GETTABLEKS                       R12 R12 K4 ["createElement"]
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R13 R13 K9 ["View"]
       37 DUPTABLE                         R14 K14 [{"onAbsolutePositionChanged"}]
       38 SETTABLEKS                       R4 R14 K13 ["onAbsolutePositionChanged"]
       40 CALL                             R12 2 -1
       41 CALL                             R9 -1 1
       42 SETTABLEKS                       R9 R8 K6 ["Anchor"]
       44 MOVE                             R9 R1
       45 JUMPIFNOT                        R9 ; [+34]
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K15 ["createPortal"]
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K4 ["createElement"]
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K9 ["View"]
       55 DUPTABLE                         R12 K17 [{"Position"}]
       56 DUPCLOSURE                       R15 K18 [PROTO_5]
       57 NAMECALL                         R13 R2 K19 ["map"]
       59 CALL                             R13 2 1
       60 SETTABLEKS                       R13 R12 K16 ["Position"]
       62 DUPTABLE                         R13 K21 [{"Toolbar"}]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K4 ["createElement"]
       66 GETUPVAL                         R15 0
       67 GETTABLEKS                       R15 R15 K9 ["View"]
       69 DUPTABLE                         R16 K23 [{["tag"] = "row align-x-center gap-xsmall position-top-center anchor-bottom-center size-0-0 auto-xy padding-xsmall stroke-standard stroke-default radius-medium bg-surface-100"}]
       70 GETUPVAL                         R17 4
       71 GETTABLEKS                       R18 R0 K24 ["Buttons"]
       73 CALL                             R17 1 1
       74 CALL                             R14 3 1
       75 SETTABLEKS                       R14 R13 K20 ["Toolbar"]
       77 CALL                             R10 3 1
       78 MOVE                             R11 R1
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K7 ["Portal"]
       82 CALL                             R5 3 -1
       83 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["createElement"]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CanvasOverlayContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUISpotlightClipping"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_SpotlightNodes"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K16 [PROTO_0]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R9 K17 [PROTO_3]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R10 K18 [PROTO_6]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R8
       73 DUPCLOSURE                       R11 K19 [PROTO_7]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R10
       78 RETURN                           R11 1
