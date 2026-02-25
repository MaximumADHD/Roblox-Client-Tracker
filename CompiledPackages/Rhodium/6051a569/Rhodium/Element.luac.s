PROTO_0:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETIMPORT                        R1 K1 [game]
        3 JUMPIFEQ                         R0 R1 ; [+12]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K2 ["Parent"]
        8 CALL                             R1 1 1
        9 LOADK                            R4 K3 ["ScrollingFrame"]
       10 NAMECALL                         R2 R0 K4 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+1]
       14 ADDK                             R1 R1 K5 [1]
       15 RETURN                           R1 1
       16 LOADN                            R1 0
       17 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+8]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["new"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 MOVE                             R1 R3
       15 JUMP                             ; [+32]
       16 FASTCALL1                        TYPE R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K1 [type]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+7]
       23 GETTABLEKS                       R3 R0 K5 ["__type"]
       25 JUMPIFNOTEQKS                    R3 K6 ["XPath"] ; [+3]
       27 MOVE                             R1 R0
       28 JUMP                             ; [+19]
       29 FASTCALL1                        TYPE R0 ; [+3]
       30 MOVE                             R4 R0
       31 GETIMPORT                        R3 K1 [type]
       33 CALL                             R3 1 1
       34 JUMPIFNOTEQKS                    R3 K7 ["userdata"] ; [+9]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K3 ["new"]
       39 MOVE                             R4 R0
       40 CALL                             R3 1 1
       41 MOVE                             R1 R3
       42 MOVE                             R2 R0
       43 JUMP                             ; [+4]
       44 GETIMPORT                        R3 K9 [error]
       46 LOADK                            R4 K10 ["invalid parameter for element"]
       47 CALL                             R3 1 0
       48 DUPTABLE                         R4 K14 [{"path", "rbxInstance", "isInScrollingFrame"}]
       49 SETTABLEKS                       R1 R4 K11 ["path"]
       51 SETTABLEKS                       R2 R4 K12 ["rbxInstance"]
       53 MOVE                             R7 R2
       54 JUMPIFNOT                        R7 ; [+16]
       55 GETIMPORT                        R8 K16 [game]
       57 JUMPIFEQ                         R7 R8 ; [+13]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R9 R7 K17 ["Parent"]
       62 CALL                             R8 1 1
       63 LOADK                            R11 K18 ["ScrollingFrame"]
       64 NAMECALL                         R9 R7 K19 ["IsA"]
       66 CALL                             R9 2 1
       67 JUMPIFNOT                        R9 ; [+1]
       68 ADDK                             R8 R8 K20 [1]
       69 MOVE                             R6 R8
       70 JUMP                             ; [+2]
       71 LOADN                            R6 0
       72 JUMP                             ; [0]
       73 JUMPIFNOTEQKN                    R6 K21 [0] ; [+2]
       75 LOADB                            R5 0 +1
       76 LOADB                            R5 1
       77 SETTABLEKS                       R5 R4 K13 ["isInScrollingFrame"]
       79 GETUPVAL                         R5 2
       80 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       82 GETIMPORT                        R3 K23 [setmetatable]
       84 CALL                             R3 2 1
       85 RETURN                           R3 1

PROTO_2:
        0 NAMECALL                         R3 R0 K0 ["getRbxInstance"]
        2 CALL                             R3 1 1
        3 GETTABLE                         R2 R3 R1
        4 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["_getGuiBase2d"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["AbsolutePosition"]
        5 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getSize"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getLocation"]
        5 CALL                             R2 1 1
        6 ADD                              R3 R1 R2
        7 GETIMPORT                        R4 K4 [Rect.new]
        9 GETTABLEKS                       R5 R2 K5 ["X"]
       11 GETTABLEKS                       R6 R2 K6 ["Y"]
       13 GETTABLEKS                       R7 R3 K5 ["X"]
       15 GETTABLEKS                       R8 R3 K6 ["Y"]
       17 CALL                             R4 4 -1
       18 RETURN                           R4 -1

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["_getGuiBase2d"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["AbsoluteSize"]
        5 RETURN                           R1 1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["getLocation"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getSize"]
        5 CALL                             R2 1 1
        6 DIVK                             R4 R2 K2 [2]
        7 ADD                              R3 R1 R4
        8 RETURN                           R3 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 LOADK                            R4 K1 ["TextLabel"]
        4 NAMECALL                         R2 R1 K2 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+10]
        8 LOADK                            R4 K3 ["TextButton"]
        9 NAMECALL                         R2 R1 K2 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+5]
       13 LOADK                            R4 K4 ["TextBox"]
       14 NAMECALL                         R2 R1 K2 ["IsA"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R2 R1 K5 ["Text"]
       20 RETURN                           R2 1
       21 GETIMPORT                        R2 K7 [error]
       23 LOADK                            R3 K8 ["expected element to have text, but got `%s`"]
       24 GETTABLEKS                       R5 R1 K9 ["ClassName"]
       26 NAMECALL                         R3 R3 K10 ["format"]
       28 CALL                             R3 2 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["anchor"]
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 NAMECALL                         R1 R0 K1 ["getLocation"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K0 ["anchor"]
        9 ADD                              R2 R1 R3
       10 RETURN                           R2 1
       11 NAMECALL                         R1 R0 K2 ["getCenter"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_9:
        0 NAMECALL                         R3 R0 K0 ["getSize"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R4 R3 K1 ["X"]
        5 JUMPIFLT                         R4 R1 ; [+11]
        7 GETTABLEKS                       R4 R3 K2 ["Y"]
        9 JUMPIFLT                         R4 R2 ; [+7]
       11 LOADN                            R4 0
       12 JUMPIFLT                         R1 R4 ; [+4]
       14 LOADN                            R4 0
       15 JUMPIFNOTLT                      R2 R4 ; [+6]
       17 GETIMPORT                        R4 K4 [error]
       19 LOADK                            R5 K5 ["Attempt to set anchor beyond element's bounds"]
       20 CALL                             R4 1 0
       21 RETURN                           R0 0
       22 GETIMPORT                        R4 K8 [Vector2.new]
       24 MOVE                             R5 R1
       25 MOVE                             R6 R2
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R0 K9 ["anchor"]
       29 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["anchor"]
        3 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R2 R0 K0 ["_getGuiObject"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["Visible"]
        5 RETURN                           R1 1

PROTO_12:
        0 NAMECALL                         R2 R0 K0 ["_getGuiButton"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["Selected"]
        5 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["path"]
        2 GETTABLEKS                       R3 R4 K1 ["waitDelay"]
        4 GETTABLEKS                       R5 R0 K0 ["path"]
        6 GETTABLEKS                       R4 R5 K2 ["waitTimeout"]
        8 NAMECALL                         R1 R0 K3 ["waitForRbxInstance"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_14:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["_getInstanceOfClass"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["_getInstanceOfClass"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_16:
        0 LOADK                            R3 K0 ["GuiBase2d"]
        1 NAMECALL                         R1 R0 K1 ["_getInstanceOfClass"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_17:
        0 NAMECALL                         R2 R0 K0 ["getRbxInstance"]
        2 CALL                             R2 1 1
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R2 K1 ["IsA"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R2 1
        9 GETIMPORT                        R3 K3 [error]
       11 LOADK                            R4 K4 ["expected element to be a %s, but got `%s`"]
       12 MOVE                             R6 R1
       13 GETTABLEKS                       R7 R2 K5 ["ClassName"]
       15 NAMECALL                         R4 R4 K6 ["format"]
       17 CALL                             R4 3 -1
       18 CALL                             R3 -1 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["rbxInstance"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+20]
        4 GETTABLEKS                       R4 R0 K1 ["path"]
        6 JUMPIFEQKNIL                     R4 ; [+16]
        8 GETTABLEKS                       R4 R0 K1 ["path"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 NAMECALL                         R4 R4 K2 ["setWait"]
       14 CALL                             R4 3 0
       15 GETTABLEKS                       R4 R0 K1 ["path"]
       17 NAMECALL                         R4 R4 K3 ["waitForFirstInstance"]
       19 CALL                             R4 1 1
       20 MOVE                             R3 R4
       21 SETTABLEKS                       R3 R0 K0 ["rbxInstance"]
       23 RETURN                           R3 1

PROTO_19:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 LOADK                            R9 K2 ["^_"]
        6 NAMECALL                         R7 R5 K3 ["find"]
        8 CALL                             R7 2 1
        9 JUMPIF                           R7 ; [+1]
       10 SETTABLE                         R6 R0 R5
       11 FORGLOOP                         R2 2 ; [-7]
       13 RETURN                           R0 0

PROTO_20:
        0 NAMECALL                         R3 R0 K0 ["getRbxInstance"]
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K1 ["_centralizeInScrollingFrame"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["centralizeInstance"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 NAMECALL                         R2 R0 K2 ["centralizeWithInfiniteScrolling"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R3 K1 [game]
        2 JUMPIFNOTEQ                      R1 R3 ; [+2]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R2 ; [+2]
        6 MOVE                             R3 R2
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R3 R1 K2 ["Parent"]
       10 GETIMPORT                        R4 K1 [game]
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 RETURN                           R0 0
       15 LOADK                            R6 K3 ["ScrollingFrame"]
       16 NAMECALL                         R4 R3 K4 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+99]
       20 MOVE                             R6 R3
       21 GETTABLEKS                       R7 R3 K2 ["Parent"]
       23 NAMECALL                         R4 R0 K5 ["_centralizeInScrollingFrame"]
       25 CALL                             R4 3 0
       26 LOADB                            R4 0
       27 JUMPIF                           R4 ; [+59]
       28 GETTABLEKS                       R5 R1 K6 ["AbsolutePosition"]
       30 GETTABLEKS                       R6 R3 K7 ["CanvasPosition"]
       32 GETIMPORT                        R7 K10 [Vector2.new]
       34 LOADN                            R9 44
       35 GETTABLEKS                       R11 R3 K11 ["AbsoluteSize"]
       37 GETTABLEKS                       R10 R11 K12 ["X"]
       39 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       41 GETIMPORT                        R8 K15 [math.min]
       43 CALL                             R8 2 1
       44 LOADN                            R10 44
       45 GETTABLEKS                       R12 R3 K11 ["AbsoluteSize"]
       47 GETTABLEKS                       R11 R12 K16 ["Y"]
       49 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       51 GETIMPORT                        R9 K15 [math.min]
       53 CALL                             R9 2 1
       54 CALL                             R7 2 1
       55 GETTABLEKS                       R9 R3 K7 ["CanvasPosition"]
       57 ADD                              R8 R9 R7
       58 SETTABLEKS                       R8 R3 K7 ["CanvasPosition"]
       60 GETIMPORT                        R8 K19 [task.wait]
       62 CALL                             R8 0 0
       63 GETTABLEKS                       R9 R3 K7 ["CanvasPosition"]
       65 SUB                              R8 R9 R6
       66 GETTABLEKS                       R10 R8 K20 ["Magnitude"]
       68 LOADN                            R11 2
       69 JUMPIFLE                         R10 R11 ; [+2]
       71 LOADB                            R9 0 +1
       72 LOADB                            R9 1
       73 GETTABLEKS                       R11 R1 K6 ["AbsolutePosition"]
       75 SUB                              R10 R11 R5
       76 MOVE                             R11 R9
       77 JUMPIF                           R11 ; [+7]
       78 GETTABLEKS                       R12 R10 K20 ["Magnitude"]
       80 LOADN                            R13 2
       81 JUMPIFLT                         R13 R12 ; [+2]
       83 LOADB                            R11 0 +1
       84 LOADB                            R11 1
       85 MOVE                             R4 R11
       86 JUMPBACK                         ; [-60]
       87 LOADN                            R7 1
       88 LOADN                            R5 2
       89 LOADN                            R6 1
       90 FORNPREP                         R5
       91 GETTABLEKS                       R9 R3 K6 ["AbsolutePosition"]
       93 GETTABLEKS                       R11 R3 K11 ["AbsoluteSize"]
       95 DIVK                             R10 R11 K21 [2]
       96 ADD                              R8 R9 R10
       97 GETTABLEKS                       R10 R1 K6 ["AbsolutePosition"]
       99 GETTABLEKS                       R12 R1 K11 ["AbsoluteSize"]
      101 DIVK                             R11 R12 K21 [2]
      102 ADD                              R9 R10 R11
      103 SUB                              R10 R9 R8
      104 GETTABLEKS                       R11 R10 K20 ["Magnitude"]
      106 LOADN                            R12 2
      107 JUMPIFLE                         R11 R12 ; [+17]
      109 GETTABLEKS                       R12 R3 K7 ["CanvasPosition"]
      111 ADD                              R11 R12 R10
      112 SETTABLEKS                       R11 R3 K7 ["CanvasPosition"]
      114 GETIMPORT                        R11 K19 [task.wait]
      116 CALL                             R11 0 0
      117 FORNLOOP                         R5
      118 RETURN                           R0 0
      119 MOVE                             R6 R1
      120 GETTABLEKS                       R7 R3 K2 ["Parent"]
      122 NAMECALL                         R4 R0 K5 ["_centralizeInScrollingFrame"]
      124 CALL                             R4 3 0
      125 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 CALL                             R3 2 1
        5 SETTABLEKS                       R3 R1 K3 ["CanvasPosition"]
        7 GETTABLEKS                       R4 R1 K4 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R4 K5 ["X"]
       11 GETTABLEKS                       R5 R1 K4 ["AbsoluteSize"]
       13 GETTABLEKS                       R4 R5 K6 ["Y"]
       15 LOADB                            R5 0
       16 LOADNIL                          R6
       17 JUMPIF                           R5 ; [+45]
       18 GETIMPORT                        R7 K9 [task.wait]
       20 LOADK                            R8 K10 [0.1]
       21 CALL                             R7 1 0
       22 NAMECALL                         R7 R2 K11 ["getFirstInstance"]
       24 CALL                             R7 1 1
       25 MOVE                             R6 R7
       26 JUMPIFNOT                        R6 ; [+1]
       27 RETURN                           R6 1
       28 GETTABLEKS                       R7 R1 K3 ["CanvasPosition"]
       30 GETTABLEKS                       R9 R1 K3 ["CanvasPosition"]
       32 GETIMPORT                        R10 K2 [Vector2.new]
       34 FASTCALL2K                       MATH_MIN R3 K12 ; [+5]
       36 MOVE                             R12 R3
       37 LOADK                            R13 K12 [300]
       38 GETIMPORT                        R11 K15 [math.min]
       40 CALL                             R11 2 1
       41 FASTCALL2K                       MATH_MIN R4 K12 ; [+5]
       43 MOVE                             R13 R4
       44 LOADK                            R14 K12 [300]
       45 GETIMPORT                        R12 K15 [math.min]
       47 CALL                             R12 2 1
       48 CALL                             R10 2 1
       49 ADD                              R8 R9 R10
       50 SETTABLEKS                       R8 R1 K3 ["CanvasPosition"]
       52 GETTABLEKS                       R9 R1 K3 ["CanvasPosition"]
       54 SUB                              R8 R9 R7
       55 GETTABLEKS                       R9 R8 K16 ["Magnitude"]
       57 LOADN                            R10 2
       58 JUMPIFLT                         R9 R10 ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 JUMPBACK                         ; [-46]
       63 LOADNIL                          R7
       64 RETURN                           R7 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["path"]
        2 NAMECALL                         R1 R1 K1 ["getInstances"]
        4 CALL                             R1 1 2
        5 LENGTH                           R3 R1
        6 LOADN                            R4 0
        7 JUMPIFNOTLT                      R4 R3 ; [+4]
        9 NAMECALL                         R3 R0 K2 ["centralizeInstance"]
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R3 R0 K0 ["path"]
       14 NAMECALL                         R3 R3 K3 ["copy"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R5 R3 K4 ["data"]
       19 LENGTH                           R4 R5
       20 JUMPIFNOTLT                      R2 R4 ; [+7]
       22 GETIMPORT                        R4 K7 [table.remove]
       24 GETTABLEKS                       R5 R3 K4 ["data"]
       26 CALL                             R4 1 0
       27 JUMPBACK                         ; [-11]
       28 NAMECALL                         R4 R3 K8 ["getFirstInstance"]
       30 CALL                             R4 1 1
       31 LOADNIL                          R5
       32 JUMPIFNOTEQKNIL                  R4 ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       38 LOADK                            R8 K9 ["Rhodium encountered an internal error"]
       39 GETIMPORT                        R6 K11 [assert]
       41 CALL                             R6 2 0
       42 LOADK                            R8 K12 ["ScrollingFrame"]
       43 NAMECALL                         R6 R4 K13 ["IsA"]
       45 CALL                             R6 2 1
       46 JUMPIFNOT                        R6 ; [+2]
       47 MOVE                             R5 R4
       48 JUMP                             ; [+7]
       49 GETTABLEKS                       R4 R4 K14 ["Parent"]
       51 GETIMPORT                        R6 K16 [game]
       53 JUMPIFEQ                         R4 R6 ; [+2]
       55 JUMPBACK                         ; [-24]
       56 JUMPIFNOTEQKNIL                  R5 ; [+2]
       58 RETURN                           R0 0
       59 MOVE                             R8 R5
       60 GETTABLEKS                       R9 R0 K0 ["path"]
       62 NAMECALL                         R6 R0 K17 ["_scrollToFindInstance"]
       64 CALL                             R6 3 1
       65 JUMPIFNOTEQKNIL                  R6 ; [+2]
       67 RETURN                           R0 0
       68 NAMECALL                         R8 R0 K18 ["getRbxInstance"]
       70 CALL                             R8 1 -1
       71 NAMECALL                         R6 R0 K19 ["_centralizeInScrollingFrame"]
       73 CALL                             R6 -1 0
       74 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["rbxInstance"]
        2 LOADK                            R3 K1 ["DockWidgetPluginGui"]
        3 NAMECALL                         R1 R1 K2 ["FindFirstAncestorOfClass"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K3 ["setCurrentWindow"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_26:
        0 NAMECALL                         R2 R0 K0 ["centralize"]
        2 CALL                             R2 1 0
        3 NAMECALL                         R2 R0 K1 ["setPluginWindow"]
        5 CALL                             R2 1 0
        6 ORK                              R1 R1 K2 [1]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["Mouse"]
       10 GETTABLEKS                       R2 R3 K4 ["multiClick"]
       12 NAMECALL                         R3 R0 K5 ["getAnchor"]
       14 CALL                             R3 1 1
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_27:
        0 NAMECALL                         R1 R0 K0 ["centralize"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["setPluginWindow"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["Mouse"]
        9 GETTABLEKS                       R1 R2 K3 ["rightClick"]
       11 NAMECALL                         R2 R0 K4 ["getAnchor"]
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_28:
        0 NAMECALL                         R2 R0 K0 ["centralize"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["Mouse"]
        6 GETTABLEKS                       R2 R3 K2 ["mouseWheel"]
        8 NAMECALL                         R3 R0 K3 ["getAnchor"]
       10 CALL                             R3 1 1
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_29:
        0 NAMECALL                         R4 R0 K0 ["centralize"]
        2 CALL                             R4 1 0
        3 NAMECALL                         R4 R0 K1 ["getAnchor"]
        5 CALL                             R4 1 1
        6 GETIMPORT                        R6 K4 [Vector2.new]
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 CALL                             R6 2 1
       11 ADD                              R5 R4 R6
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K5 ["Mouse"]
       15 GETTABLEKS                       R6 R7 K6 ["mouseDrag"]
       17 NAMECALL                         R7 R0 K1 ["getAnchor"]
       19 CALL                             R7 1 1
       20 MOVE                             R8 R5
       21 MOVE                             R9 R3
       22 CALL                             R6 3 0
       23 RETURN                           R0 0

PROTO_30:
        0 NAMECALL                         R3 R0 K0 ["centralize"]
        2 CALL                             R3 1 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Mouse"]
        6 GETTABLEKS                       R3 R4 K2 ["mouseDrag"]
        8 NAMECALL                         R4 R0 K3 ["getAnchor"]
       10 CALL                             R4 1 1
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_31:
        0 NAMECALL                         R2 R0 K0 ["setPluginWindow"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["Keyboard"]
        6 GETTABLEKS                       R2 R3 K2 ["hitKey"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_32:
        0 NAMECALL                         R2 R0 K0 ["click"]
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K3 [task.wait]
        5 LOADN                            R3 0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K4 ["Text"]
       10 GETTABLEKS                       R2 R3 K5 ["sendText"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_33:
        0 NAMECALL                         R1 R0 K0 ["centralize"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["Touch"]
        6 GETTABLEKS                       R1 R2 K2 ["tap"]
        8 NAMECALL                         R2 R0 K3 ["getAnchor"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_34:
        0 NAMECALL                         R5 R0 K0 ["centralize"]
        2 CALL                             R5 1 0
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["Touch"]
        6 GETTABLEKS                       R5 R6 K2 ["touchScroll"]
        8 NAMECALL                         R6 R0 K3 ["getAnchor"]
       10 CALL                             R6 1 1
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 MOVE                             R9 R3
       14 LOADB                            R10 1
       15 MOVE                             R11 R4
       16 CALL                             R5 6 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["VirtualInput"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["XPath"]
       18 CALL                             R1 1 1
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R3 64 0
       23 SETTABLEKS                       R3 R3 K8 ["__index"]
       25 DUPCLOSURE                       R4 K9 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R3 K10 ["new"]
       31 DUPCLOSURE                       R4 K11 [PROTO_2]
       32 SETTABLEKS                       R4 R3 K12 ["getAttribute"]
       34 DUPCLOSURE                       R4 K13 [PROTO_3]
       35 SETTABLEKS                       R4 R3 K14 ["getLocation"]
       37 DUPCLOSURE                       R4 K15 [PROTO_4]
       38 SETTABLEKS                       R4 R3 K16 ["getRect"]
       40 DUPCLOSURE                       R4 K17 [PROTO_5]
       41 SETTABLEKS                       R4 R3 K18 ["getSize"]
       43 DUPCLOSURE                       R4 K19 [PROTO_6]
       44 SETTABLEKS                       R4 R3 K20 ["getCenter"]
       46 DUPCLOSURE                       R4 K21 [PROTO_7]
       47 SETTABLEKS                       R4 R3 K22 ["getText"]
       49 DUPCLOSURE                       R4 K23 [PROTO_8]
       50 SETTABLEKS                       R4 R3 K24 ["getAnchor"]
       52 DUPCLOSURE                       R4 K25 [PROTO_9]
       53 SETTABLEKS                       R4 R3 K26 ["setAnchor"]
       55 DUPCLOSURE                       R4 K27 [PROTO_10]
       56 SETTABLEKS                       R4 R3 K28 ["unsetAnchor"]
       58 DUPCLOSURE                       R4 K29 [PROTO_11]
       59 SETTABLEKS                       R4 R3 K30 ["isDisplayed"]
       61 DUPCLOSURE                       R4 K31 [PROTO_12]
       62 SETTABLEKS                       R4 R3 K32 ["isSelected"]
       64 DUPCLOSURE                       R4 K33 [PROTO_13]
       65 SETTABLEKS                       R4 R3 K34 ["getRbxInstance"]
       67 DUPCLOSURE                       R4 K35 [PROTO_14]
       68 SETTABLEKS                       R4 R3 K36 ["_getGuiObject"]
       70 DUPCLOSURE                       R4 K37 [PROTO_15]
       71 SETTABLEKS                       R4 R3 K38 ["_getGuiButton"]
       73 DUPCLOSURE                       R4 K39 [PROTO_16]
       74 SETTABLEKS                       R4 R3 K40 ["_getGuiBase2d"]
       76 DUPCLOSURE                       R4 K41 [PROTO_17]
       77 SETTABLEKS                       R4 R3 K42 ["_getInstanceOfClass"]
       79 DUPCLOSURE                       R4 K43 [PROTO_18]
       80 SETTABLEKS                       R4 R3 K44 ["waitForRbxInstance"]
       82 DUPCLOSURE                       R4 K45 [PROTO_19]
       83 SETTABLEKS                       R4 R3 K46 ["_override"]
       85 DUPCLOSURE                       R4 K47 [PROTO_20]
       86 SETTABLEKS                       R4 R3 K48 ["centralizeInstance"]
       88 DUPCLOSURE                       R4 K49 [PROTO_21]
       89 SETTABLEKS                       R4 R3 K50 ["centralize"]
       91 DUPCLOSURE                       R4 K51 [PROTO_22]
       92 SETTABLEKS                       R4 R3 K52 ["_centralizeInScrollingFrame"]
       94 DUPCLOSURE                       R4 K53 [PROTO_23]
       95 SETTABLEKS                       R4 R3 K54 ["_scrollToFindInstance"]
       97 DUPCLOSURE                       R4 K55 [PROTO_24]
       98 SETTABLEKS                       R4 R3 K56 ["centralizeWithInfiniteScrolling"]
      100 DUPCLOSURE                       R4 K57 [PROTO_25]
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R4 R3 K58 ["setPluginWindow"]
      104 DUPCLOSURE                       R4 K59 [PROTO_26]
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R4 R3 K60 ["click"]
      108 DUPCLOSURE                       R4 K61 [PROTO_27]
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R4 R3 K62 ["rightClick"]
      112 DUPCLOSURE                       R4 K63 [PROTO_28]
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R4 R3 K64 ["mouseWheel"]
      116 DUPCLOSURE                       R4 K65 [PROTO_29]
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R4 R3 K66 ["mouseDrag"]
      120 DUPCLOSURE                       R4 K67 [PROTO_30]
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R4 R3 K68 ["mouseDragTo"]
      124 DUPCLOSURE                       R4 K69 [PROTO_31]
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R4 R3 K70 ["sendKey"]
      128 DUPCLOSURE                       R4 K71 [PROTO_32]
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R4 R3 K72 ["sendText"]
      132 DUPCLOSURE                       R4 K73 [PROTO_33]
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R4 R3 K74 ["tap"]
      136 DUPCLOSURE                       R4 K75 [PROTO_34]
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R4 R3 K76 ["touchScroll"]
      140 RETURN                           R3 1
