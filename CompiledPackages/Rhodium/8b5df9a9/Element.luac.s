PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+9]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["new"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K4 ["path"]
       16 JUMP                             ; [+35]
       17 FASTCALL1                        TYPE R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K1 [type]
       21 CALL                             R2 1 1
       22 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+8]
       24 GETTABLEKS                       R2 R0 K6 ["__type"]
       26 JUMPIFNOTEQKS                    R2 K7 ["XPath"] ; [+4]
       28 SETTABLEKS                       R0 R1 K4 ["path"]
       30 JUMP                             ; [+21]
       31 FASTCALL1                        TYPE R0 ; [+3]
       32 MOVE                             R3 R0
       33 GETIMPORT                        R2 K1 [type]
       35 CALL                             R2 1 1
       36 JUMPIFNOTEQKS                    R2 K8 ["userdata"] ; [+11]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K3 ["new"]
       41 MOVE                             R3 R0
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K4 ["path"]
       45 SETTABLEKS                       R0 R1 K9 ["rbxInstance"]
       47 JUMP                             ; [+4]
       48 GETIMPORT                        R2 K11 [error]
       50 LOADK                            R3 K12 ["invalid parameter for element"]
       51 CALL                             R2 1 0
       52 GETUPVAL                         R4 1
       53 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       55 MOVE                             R3 R1
       56 GETIMPORT                        R2 K14 [setmetatable]
       58 CALL                             R2 2 0
       59 GETTABLEKS                       R4 R1 K9 ["rbxInstance"]
       61 NAMECALL                         R2 R1 K15 ["_scrollingFrames"]
       63 CALL                             R2 2 1
       64 JUMPIFNOTEQKN                    R2 K16 [0] ; [+2]
       66 LOADB                            R3 0 +1
       67 LOADB                            R3 1
       68 SETTABLEKS                       R3 R1 K17 ["isInScrollingFrame"]
       70 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R3 R0 K0 ["getRbxInstance"]
        2 CALL                             R3 1 1
        3 GETTABLE                         R2 R3 R1
        4 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["AbsolutePosition"]
        5 RETURN                           R1 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["getLocation"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R3 R0 K1 ["getSize"]
        5 CALL                             R3 1 1
        6 ADD                              R2 R3 R1
        7 GETIMPORT                        R3 K4 [Rect.new]
        9 GETTABLEKS                       R4 R1 K5 ["x"]
       11 GETTABLEKS                       R5 R1 K6 ["y"]
       13 GETTABLEKS                       R6 R2 K5 ["x"]
       15 GETTABLEKS                       R7 R2 K6 ["y"]
       17 CALL                             R3 4 -1
       18 RETURN                           R3 -1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        5 RETURN                           R1 1

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["getLocation"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R4 R0 K2 ["getSize"]
        5 CALL                             R4 1 1
        6 DIVK                             R3 R4 K1 [2]
        7 ADD                              R1 R2 R3
        8 RETURN                           R1 1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Text"]
        5 RETURN                           R1 1

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["getLocation"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["anchor"]
        5 ADD                              R1 R2 R3
        6 RETURN                           R1 1

PROTO_8:
        0 NAMECALL                         R3 R0 K0 ["getSize"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R3 R3 K1 ["x"]
        5 JUMPIFLT                         R3 R1 ; [+14]
        7 NAMECALL                         R3 R0 K0 ["getSize"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R3 R3 K2 ["y"]
       12 JUMPIFLT                         R3 R2 ; [+7]
       14 LOADN                            R3 0
       15 JUMPIFLT                         R1 R3 ; [+4]
       17 LOADN                            R3 0
       18 JUMPIFNOTLT                      R2 R3 ; [+6]
       20 GETIMPORT                        R3 K4 [error]
       22 LOADK                            R4 K5 ["Attempt to set anchor beyond element's bounds"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETIMPORT                        R3 K8 [Vector2.new]
       27 MOVE                             R4 R1
       28 MOVE                             R5 R2
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K9 ["anchor"]
       32 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Visible"]
        5 RETURN                           R1 1

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Selected"]
        5 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["path"]
        2 GETTABLEKS                       R3 R3 K1 ["waitDelay"]
        4 GETTABLEKS                       R4 R0 K0 ["path"]
        6 GETTABLEKS                       R4 R4 K2 ["waitTimeout"]
        8 NAMECALL                         R1 R0 K3 ["waitForRbxInstance"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rbxInstance"]
        3 GETTABLEKS                       R0 R0 K1 ["AbsoluteSize"]
        5 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["rbxInstance"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+19]
        4 GETTABLEKS                       R3 R0 K1 ["path"]
        6 JUMPIFEQKNIL                     R3 ; [+15]
        8 GETTABLEKS                       R3 R0 K1 ["path"]
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 NAMECALL                         R3 R3 K2 ["setWait"]
       14 CALL                             R3 3 0
       15 GETTABLEKS                       R3 R0 K1 ["path"]
       17 NAMECALL                         R3 R3 K3 ["waitForFirstInstance"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R0 K0 ["rbxInstance"]
       22 GETTABLEKS                       R3 R0 K0 ["rbxInstance"]
       24 JUMPIFNOT                        R3 ; [+20]
       25 GETTABLEKS                       R3 R0 K4 ["anchor"]
       27 JUMPIF                           R3 ; [+17]
       28 GETIMPORT                        R3 K6 [pcall]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R0
       32 CALL                             R3 1 1
       33 JUMPIFNOT                        R3 ; [+8]
       34 GETTABLEKS                       R4 R0 K0 ["rbxInstance"]
       36 GETTABLEKS                       R4 R4 K8 ["AbsoluteSize"]
       38 DIVK                             R3 R4 K7 [2]
       39 SETTABLEKS                       R3 R0 K4 ["anchor"]
       41 JUMP                             ; [+3]
       42 LOADNIL                          R3
       43 SETTABLEKS                       R3 R0 K4 ["anchor"]
       45 GETTABLEKS                       R3 R0 K0 ["rbxInstance"]
       47 RETURN                           R3 1

PROTO_14:
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

PROTO_15:
        0 NAMECALL                         R3 R0 K0 ["getRbxInstance"]
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K1 ["_centralizeInScrollingFrame"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_16:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["centralizeInstance"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 NAMECALL                         R2 R0 K2 ["centralizeWithInfiniteScrolling"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_17:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 GETIMPORT                        R2 K1 [game]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADN                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R4 R1 K2 ["Parent"]
       10 NAMECALL                         R2 R0 K3 ["_scrollingFrames"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R3 R1 K4 ["ClassName"]
       15 JUMPIFNOTEQKS                    R3 K5 ["ScrollingFrame"] ; [+2]
       17 ADDK                             R2 R2 K6 [1]
       18 RETURN                           R2 1

PROTO_18:
        0 GETIMPORT                        R3 K1 [game]
        2 JUMPIFNOTEQ                      R1 R3 ; [+2]
        4 RETURN                           R0 0
        5 MOVE                             R3 R2
        6 JUMPIF                           R3 ; [+2]
        7 GETTABLEKS                       R3 R1 K2 ["Parent"]
        9 MOVE                             R2 R3
       10 GETIMPORT                        R3 K1 [game]
       12 JUMPIFNOTEQ                      R2 R3 ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K3 ["ClassName"]
       17 JUMPIFNOTEQKS                    R3 K4 ["ScrollingFrame"] ; [+100]
       19 MOVE                             R5 R2
       20 GETTABLEKS                       R6 R2 K2 ["Parent"]
       22 NAMECALL                         R3 R0 K5 ["_centralizeInScrollingFrame"]
       24 CALL                             R3 3 0
       25 LOADB                            R3 0
       26 JUMPIF                           R3 ; [+59]
       27 GETTABLEKS                       R4 R1 K6 ["AbsolutePosition"]
       29 GETTABLEKS                       R5 R2 K7 ["CanvasPosition"]
       31 GETIMPORT                        R6 K10 [Vector2.new]
       33 LOADN                            R8 44
       34 GETTABLEKS                       R9 R2 K11 ["AbsoluteSize"]
       36 GETTABLEKS                       R9 R9 K12 ["X"]
       38 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       40 GETIMPORT                        R7 K15 [math.min]
       42 CALL                             R7 2 1
       43 LOADN                            R9 44
       44 GETTABLEKS                       R10 R2 K11 ["AbsoluteSize"]
       46 GETTABLEKS                       R10 R10 K16 ["Y"]
       48 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       50 GETIMPORT                        R8 K15 [math.min]
       52 CALL                             R8 2 1
       53 CALL                             R6 2 1
       54 GETTABLEKS                       R8 R2 K7 ["CanvasPosition"]
       56 ADD                              R7 R8 R6
       57 SETTABLEKS                       R7 R2 K7 ["CanvasPosition"]
       59 GETIMPORT                        R7 K18 [wait]
       61 CALL                             R7 0 0
       62 GETTABLEKS                       R8 R2 K7 ["CanvasPosition"]
       64 SUB                              R7 R8 R5
       65 GETTABLEKS                       R9 R7 K19 ["Magnitude"]
       67 LOADN                            R10 2
       68 JUMPIFLE                         R9 R10 ; [+2]
       70 LOADB                            R8 0 +1
       71 LOADB                            R8 1
       72 GETTABLEKS                       R10 R1 K6 ["AbsolutePosition"]
       74 SUB                              R9 R10 R4
       75 MOVE                             R10 R8
       76 JUMPIF                           R10 ; [+7]
       77 GETTABLEKS                       R11 R9 K19 ["Magnitude"]
       79 LOADN                            R12 2
       80 JUMPIFLT                         R12 R11 ; [+2]
       82 LOADB                            R10 0 +1
       83 LOADB                            R10 1
       84 MOVE                             R3 R10
       85 JUMPBACK                         ; [-60]
       86 LOADN                            R6 1
       87 LOADN                            R4 2
       88 LOADN                            R5 1
       89 FORNPREP                         R4
       90 GETTABLEKS                       R8 R2 K6 ["AbsolutePosition"]
       92 GETTABLEKS                       R10 R2 K11 ["AbsoluteSize"]
       94 DIVK                             R9 R10 K20 [2]
       95 ADD                              R7 R8 R9
       96 GETTABLEKS                       R9 R1 K6 ["AbsolutePosition"]
       98 GETTABLEKS                       R11 R1 K11 ["AbsoluteSize"]
      100 DIVK                             R10 R11 K20 [2]
      101 ADD                              R8 R9 R10
      102 SUB                              R9 R8 R7
      103 GETTABLEKS                       R10 R9 K19 ["Magnitude"]
      105 LOADN                            R11 2
      106 JUMPIFLE                         R10 R11 ; [+17]
      108 GETTABLEKS                       R11 R2 K7 ["CanvasPosition"]
      110 ADD                              R10 R11 R9
      111 SETTABLEKS                       R10 R2 K7 ["CanvasPosition"]
      113 GETIMPORT                        R10 K18 [wait]
      115 CALL                             R10 0 0
      116 FORNLOOP                         R4
      117 RETURN                           R0 0
      118 MOVE                             R5 R1
      119 GETTABLEKS                       R6 R2 K2 ["Parent"]
      121 NAMECALL                         R3 R0 K5 ["_centralizeInScrollingFrame"]
      123 CALL                             R3 3 0
      124 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 CALL                             R3 2 1
        5 SETTABLEKS                       R3 R1 K3 ["CanvasPosition"]
        7 GETTABLEKS                       R3 R1 K4 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R3 K5 ["X"]
       11 GETTABLEKS                       R4 R1 K4 ["AbsoluteSize"]
       13 GETTABLEKS                       R4 R4 K6 ["Y"]
       15 LOADB                            R5 0
       16 LOADNIL                          R6
       17 JUMPIF                           R5 ; [+45]
       18 GETIMPORT                        R7 K8 [wait]
       20 LOADK                            R8 K9 [0.1]
       21 CALL                             R7 1 0
       22 NAMECALL                         R7 R2 K10 ["getFirstInstance"]
       24 CALL                             R7 1 1
       25 MOVE                             R6 R7
       26 JUMPIFNOT                        R6 ; [+1]
       27 RETURN                           R6 1
       28 GETTABLEKS                       R7 R1 K3 ["CanvasPosition"]
       30 GETTABLEKS                       R9 R1 K3 ["CanvasPosition"]
       32 GETIMPORT                        R10 K2 [Vector2.new]
       34 FASTCALL2K                       MATH_MIN R3 K11 ; [+5]
       36 MOVE                             R12 R3
       37 LOADK                            R13 K11 [300]
       38 GETIMPORT                        R11 K14 [math.min]
       40 CALL                             R11 2 1
       41 FASTCALL2K                       MATH_MIN R4 K11 ; [+5]
       43 MOVE                             R13 R4
       44 LOADK                            R14 K11 [300]
       45 GETIMPORT                        R12 K14 [math.min]
       47 CALL                             R12 2 1
       48 CALL                             R10 2 1
       49 ADD                              R8 R9 R10
       50 SETTABLEKS                       R8 R1 K3 ["CanvasPosition"]
       52 GETTABLEKS                       R9 R1 K3 ["CanvasPosition"]
       54 SUB                              R8 R9 R7
       55 GETTABLEKS                       R9 R8 K15 ["Magnitude"]
       57 LOADN                            R10 2
       58 JUMPIFLT                         R9 R10 ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 JUMPBACK                         ; [-46]
       63 LOADNIL                          R7
       64 RETURN                           R7 1

PROTO_20:
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
       32 GETTABLEKS                       R6 R4 K9 ["ClassName"]
       34 JUMPIFNOTEQKS                    R6 K10 ["ScrollingFrame"] ; [+3]
       36 MOVE                             R5 R4
       37 JUMP                             ; [+7]
       38 GETTABLEKS                       R4 R4 K11 ["Parent"]
       40 GETIMPORT                        R6 K13 [game]
       42 JUMPIFEQ                         R4 R6 ; [+2]
       44 JUMPBACK                         ; [-13]
       45 JUMPIFNOTEQKNIL                  R5 ; [+2]
       47 RETURN                           R0 0
       48 MOVE                             R8 R5
       49 GETTABLEKS                       R9 R0 K0 ["path"]
       51 NAMECALL                         R6 R0 K14 ["_scrollToFindInstance"]
       53 CALL                             R6 3 1
       54 JUMPIFNOTEQKNIL                  R6 ; [+2]
       56 RETURN                           R0 0
       57 NAMECALL                         R8 R0 K15 ["getRbxInstance"]
       59 CALL                             R8 1 -1
       60 NAMECALL                         R6 R0 K16 ["_centralizeInScrollingFrame"]
       62 CALL                             R6 -1 0
       63 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["rbxInstance"]
        2 LOADK                            R3 K1 ["DockWidgetPluginGui"]
        3 NAMECALL                         R1 R1 K2 ["FindFirstAncestorOfClass"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["setCurrentWindow"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_22:
        0 NAMECALL                         R2 R0 K0 ["centralize"]
        2 CALL                             R2 1 0
        3 NAMECALL                         R2 R0 K1 ["setPluginWindow"]
        5 CALL                             R2 1 0
        6 ORK                              R1 R1 K2 [1]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["Mouse"]
       10 GETTABLEKS                       R2 R2 K4 ["multiClick"]
       12 NAMECALL                         R3 R0 K5 ["getAnchor"]
       14 CALL                             R3 1 1
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_23:
        0 NAMECALL                         R1 R0 K0 ["centralize"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["setPluginWindow"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["Mouse"]
        9 GETTABLEKS                       R1 R1 K3 ["rightClick"]
       11 NAMECALL                         R2 R0 K4 ["getAnchor"]
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_24:
        0 NAMECALL                         R2 R0 K0 ["centralize"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Mouse"]
        6 GETTABLEKS                       R2 R2 K2 ["mouseWheel"]
        8 NAMECALL                         R3 R0 K3 ["getAnchor"]
       10 CALL                             R3 1 1
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_25:
        0 NAMECALL                         R4 R0 K0 ["centralize"]
        2 CALL                             R4 1 0
        3 NAMECALL                         R5 R0 K1 ["getAnchor"]
        5 CALL                             R5 1 1
        6 GETIMPORT                        R6 K4 [Vector2.new]
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 CALL                             R6 2 1
       11 ADD                              R4 R5 R6
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["Mouse"]
       15 GETTABLEKS                       R5 R5 K6 ["mouseDrag"]
       17 NAMECALL                         R6 R0 K1 ["getAnchor"]
       19 CALL                             R6 1 1
       20 MOVE                             R7 R4
       21 MOVE                             R8 R3
       22 LOADB                            R9 1
       23 CALL                             R5 4 0
       24 RETURN                           R0 0

PROTO_26:
        0 NAMECALL                         R3 R0 K0 ["centralize"]
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Mouse"]
        6 GETTABLEKS                       R3 R3 K2 ["mouseDrag"]
        8 NAMECALL                         R4 R0 K3 ["getAnchor"]
       10 CALL                             R4 1 1
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 LOADB                            R7 1
       14 CALL                             R3 4 0
       15 RETURN                           R0 0

PROTO_27:
        0 NAMECALL                         R2 R0 K0 ["setPluginWindow"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Keyboard"]
        6 GETTABLEKS                       R2 R2 K2 ["hitKey"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_28:
        0 NAMECALL                         R2 R0 K0 ["click"]
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K2 [wait]
        5 LOADN                            R3 0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["Text"]
       10 GETTABLEKS                       R2 R2 K4 ["sendText"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_29:
        0 NAMECALL                         R1 R0 K0 ["centralize"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Touch"]
        6 GETTABLEKS                       R1 R1 K2 ["tap"]
        8 NAMECALL                         R2 R0 K3 ["getAnchor"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_30:
        0 NAMECALL                         R5 R0 K0 ["centralize"]
        2 CALL                             R5 1 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["Touch"]
        6 GETTABLEKS                       R5 R5 K2 ["touchScroll"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["VirtualInput"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["XPath"]
       18 CALL                             R1 1 1
       19 NEWTABLE                         R2 32 0
       21 SETTABLEKS                       R2 R2 K7 ["__index"]
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K9 ["new"]
       28 DUPCLOSURE                       R3 K10 [PROTO_1]
       29 SETTABLEKS                       R3 R2 K11 ["getAttribute"]
       31 DUPCLOSURE                       R3 K12 [PROTO_2]
       32 SETTABLEKS                       R3 R2 K13 ["getLocation"]
       34 DUPCLOSURE                       R3 K14 [PROTO_3]
       35 SETTABLEKS                       R3 R2 K15 ["getRect"]
       37 DUPCLOSURE                       R3 K16 [PROTO_4]
       38 SETTABLEKS                       R3 R2 K17 ["getSize"]
       40 DUPCLOSURE                       R3 K18 [PROTO_5]
       41 SETTABLEKS                       R3 R2 K19 ["getCenter"]
       43 DUPCLOSURE                       R3 K20 [PROTO_6]
       44 SETTABLEKS                       R3 R2 K21 ["getText"]
       46 DUPCLOSURE                       R3 K22 [PROTO_7]
       47 SETTABLEKS                       R3 R2 K23 ["getAnchor"]
       49 DUPCLOSURE                       R3 K24 [PROTO_8]
       50 SETTABLEKS                       R3 R2 K25 ["setAnchor"]
       52 DUPCLOSURE                       R3 K26 [PROTO_9]
       53 SETTABLEKS                       R3 R2 K27 ["isDisplayed"]
       55 DUPCLOSURE                       R3 K28 [PROTO_10]
       56 SETTABLEKS                       R3 R2 K29 ["isSelected"]
       58 DUPCLOSURE                       R3 K30 [PROTO_11]
       59 SETTABLEKS                       R3 R2 K31 ["getRbxInstance"]
       61 DUPCLOSURE                       R3 K32 [PROTO_13]
       62 SETTABLEKS                       R3 R2 K33 ["waitForRbxInstance"]
       64 DUPCLOSURE                       R3 K34 [PROTO_14]
       65 SETTABLEKS                       R3 R2 K35 ["_override"]
       67 DUPCLOSURE                       R3 K36 [PROTO_15]
       68 SETTABLEKS                       R3 R2 K37 ["centralizeInstance"]
       70 DUPCLOSURE                       R3 K38 [PROTO_16]
       71 SETTABLEKS                       R3 R2 K39 ["centralize"]
       73 DUPCLOSURE                       R3 K40 [PROTO_17]
       74 SETTABLEKS                       R3 R2 K41 ["_scrollingFrames"]
       76 DUPCLOSURE                       R3 K42 [PROTO_18]
       77 SETTABLEKS                       R3 R2 K43 ["_centralizeInScrollingFrame"]
       79 DUPCLOSURE                       R3 K44 [PROTO_19]
       80 SETTABLEKS                       R3 R2 K45 ["_scrollToFindInstance"]
       82 DUPCLOSURE                       R3 K46 [PROTO_20]
       83 SETTABLEKS                       R3 R2 K47 ["centralizeWithInfiniteScrolling"]
       85 DUPCLOSURE                       R3 K48 [PROTO_21]
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R3 R2 K49 ["setPluginWindow"]
       89 DUPCLOSURE                       R3 K50 [PROTO_22]
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R3 R2 K51 ["click"]
       93 DUPCLOSURE                       R3 K52 [PROTO_23]
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R3 R2 K53 ["rightClick"]
       97 DUPCLOSURE                       R3 K54 [PROTO_24]
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R3 R2 K55 ["mouseWheel"]
      101 DUPCLOSURE                       R3 K56 [PROTO_25]
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R3 R2 K57 ["mouseDrag"]
      105 DUPCLOSURE                       R3 K58 [PROTO_26]
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R3 R2 K59 ["mouseDragTo"]
      109 DUPCLOSURE                       R3 K60 [PROTO_27]
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R3 R2 K61 ["sendKey"]
      113 DUPCLOSURE                       R3 K62 [PROTO_28]
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R3 R2 K63 ["sendText"]
      117 DUPCLOSURE                       R3 K64 [PROTO_29]
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R3 R2 K65 ["tap"]
      121 DUPCLOSURE                       R3 K66 [PROTO_30]
      122 CAPTURE                          VAL R0
      123 SETTABLEKS                       R3 R2 K67 ["touchScroll"]
      125 RETURN                           R2 1
