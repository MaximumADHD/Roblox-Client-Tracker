PROTO_0:
        0 LOADK                            R3 K0 ["ScrollingFrame"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K2 ["AbsolutePosition"]
        8 GETTABLEKS                       R3 R3 K3 ["Y"]
       10 GETTABLEKS                       R4 R1 K2 ["AbsolutePosition"]
       12 GETTABLEKS                       R4 R4 K3 ["Y"]
       14 SUB                              R2 R3 R4
       15 GETTABLEKS                       R4 R1 K4 ["CanvasPosition"]
       17 GETTABLEKS                       R4 R4 K3 ["Y"]
       19 ADD                              R3 R4 R2
       20 LOADN                            R6 0
       21 LOADN                            R8 0
       22 GETTABLEKS                       R10 R1 K5 ["AbsoluteCanvasSize"]
       24 GETTABLEKS                       R10 R10 K3 ["Y"]
       26 GETTABLEKS                       R11 R1 K6 ["AbsoluteSize"]
       28 GETTABLEKS                       R11 R11 K3 ["Y"]
       30 SUB                              R9 R10 R11
       31 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       33 GETIMPORT                        R7 K9 [math.max]
       35 CALL                             R7 2 1
       36 FASTCALL3                        MATH_CLAMP R3 R6 R7
       38 MOVE                             R5 R3
       39 GETIMPORT                        R4 K11 [math.clamp]
       41 CALL                             R4 3 1
       42 MOVE                             R3 R4
       43 GETIMPORT                        R4 K14 [Vector2.new]
       45 GETTABLEKS                       R5 R1 K4 ["CanvasPosition"]
       47 GETTABLEKS                       R5 R5 K15 ["X"]
       49 MOVE                             R6 R3
       50 CALL                             R4 2 1
       51 SETTABLEKS                       R4 R1 K4 ["CanvasPosition"]
       53 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["clickWithoutValidation"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+44]
        3 GETTABLEKS                       R3 R1 K0 ["resizeAncestors"]
        5 JUMPIFNOT                        R3 ; [+41]
        6 GETTABLEKS                       R3 R0 K1 ["Parent"]
        8 JUMPIFNOT                        R3 ; [+38]
        9 LOADK                            R6 K2 ["GuiObject"]
       10 NAMECALL                         R4 R3 K3 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+30]
       14 GETTABLEKS                       R4 R3 K4 ["AbsoluteSize"]
       16 GETTABLEKS                       R4 R4 K5 ["X"]
       18 LOADN                            R5 1
       19 JUMPIFLT                         R4 R5 ; [+8]
       21 GETTABLEKS                       R4 R3 K4 ["AbsoluteSize"]
       23 GETTABLEKS                       R4 R4 K6 ["Y"]
       25 LOADN                            R5 1
       26 JUMPIFNOTLT                      R4 R5 ; [+17]
       28 DUPTABLE                         R6 K9 [{"guiObject", "originalSize"}]
       29 SETTABLEKS                       R3 R6 K7 ["guiObject"]
       31 GETTABLEKS                       R7 R3 K10 ["Size"]
       33 SETTABLEKS                       R7 R6 K8 ["originalSize"]
       35 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       37 MOVE                             R5 R2
       38 GETIMPORT                        R4 K13 [table.insert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 0
       42 SETTABLEKS                       R4 R3 K10 ["Size"]
       44 GETTABLEKS                       R3 R3 K1 ["Parent"]
       46 JUMPBACK                         ; [-39]
       47 MOVE                             R3 R1
       48 JUMPIFNOT                        R3 ; [+2]
       49 GETTABLEKS                       R3 R1 K14 ["forceResize"]
       51 JUMPIF                           R3 ; [+14]
       52 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       54 GETTABLEKS                       R4 R4 K5 ["X"]
       56 LOADN                            R5 1
       57 JUMPIFLT                         R4 R5 ; [+8]
       59 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       61 GETTABLEKS                       R4 R4 K6 ["Y"]
       63 LOADN                            R5 1
       64 JUMPIFNOTLT                      R4 R5 ; [+17]
       66 DUPTABLE                         R6 K9 [{"guiObject", "originalSize"}]
       67 SETTABLEKS                       R0 R6 K7 ["guiObject"]
       69 GETTABLEKS                       R7 R0 K10 ["Size"]
       71 SETTABLEKS                       R7 R6 K8 ["originalSize"]
       73 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       75 MOVE                             R5 R2
       76 GETIMPORT                        R4 K13 [table.insert]
       78 CALL                             R4 2 0
       79 GETUPVAL                         R4 1
       80 SETTABLEKS                       R4 R0 K10 ["Size"]
       82 JUMPIFNOT                        R1 ; [+6]
       83 GETTABLEKS                       R4 R1 K15 ["scrollIntoView"]
       85 JUMPIFNOT                        R4 ; [+3]
       86 GETUPVAL                         R4 2
       87 MOVE                             R5 R0
       88 CALL                             R4 1 0
       89 GETUPVAL                         R4 3
       90 GETTABLEKS                       R4 R4 K16 ["act"]
       92 NEWCLOSURE                       R5 P0
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          VAL R0
       95 CALL                             R4 1 0
       96 MOVE                             R4 R2
       97 LOADNIL                          R5
       98 LOADNIL                          R6
       99 FORGPREP                         R4
      100 GETTABLEKS                       R9 R8 K7 ["guiObject"]
      102 GETTABLEKS                       R9 R9 K1 ["Parent"]
      104 JUMPIFNOT                        R9 ; [+6]
      105 GETTABLEKS                       R9 R8 K7 ["guiObject"]
      107 GETTABLEKS                       R10 R8 K8 ["originalSize"]
      109 SETTABLEKS                       R10 R9 K10 ["Size"]
      111 FORGLOOP                         R4 2 ; [-12]
      113 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["ReactRoblox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["Rhodium"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K12 [UDim2.fromOffset]
       25 LOADN                            R4 50
       26 LOADN                            R5 24
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K12 [UDim2.fromOffset]
       30 LOADN                            R5 144
       31 LOADN                            R6 44
       32 CALL                             R4 2 1
       33 DUPCLOSURE                       R5 K13 [PROTO_0]
       34 DUPCLOSURE                       R6 K14 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 RETURN                           R6 1
