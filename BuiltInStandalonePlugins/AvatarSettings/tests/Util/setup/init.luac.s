PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["TextBox"]
        4 LOADB                            R4 1
        5 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 0
        9 CALL                             R2 0 1
       10 JUMPIF                           R2 ; [+6]
       11 JUMPIFNOT                        R1 ; [+5]
       12 LOADK                            R4 K0 ["TextBox"]
       13 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 JUMPIFNOT                        R1 ; [+7]
       18 LOADK                            R5 K0 ["TextBox"]
       19 NAMECALL                         R3 R1 K2 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+2]
       23 MOVE                             R2 R1
       24 RETURN                           R2 1
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_3]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["useRef"]
       12 LOADNIL                          R2
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["useState"]
       17 LOADNIL                          R3
       18 CALL                             R2 1 2
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["useEffect"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R6 0 0
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 3
       29 LOADK                            R5 K4 ["ScreenGui"]
       30 DUPTABLE                         R6 K7 [{"ref", "ZIndexBehavior"}]
       31 SETTABLEKS                       R1 R6 K5 ["ref"]
       33 GETIMPORT                        R7 K10 [Enum.ZIndexBehavior.Sibling]
       35 SETTABLEKS                       R7 R6 K6 ["ZIndexBehavior"]
       37 DUPTABLE                         R7 K13 [{"Content", "StyleLink"}]
       38 MOVE                             R8 R2
       39 JUMPIFNOT                        R8 ; [+84]
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R8 R8 K14 ["provideMockContext"]
       43 NEWTABLE                         R9 0 2
       45 GETUPVAL                         R10 5
       46 GETTABLEKS                       R10 R10 K15 ["Focus"]
       48 GETTABLEKS                       R10 R10 K16 ["new"]
       50 MOVE                             R11 R2
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 6
       53 GETTABLEKS                       R11 R11 K17 ["mock"]
       55 CALL                             R11 0 -1
       56 SETLIST                          R9 R10 -1 [1]
       58 DUPTABLE                         R10 K19 [{"ContextStack"}]
       59 GETUPVAL                         R11 3
       60 GETUPVAL                         R12 7
       61 GETTABLEKS                       R12 R12 K18 ["ContextStack"]
       63 DUPTABLE                         R13 K21 [{"providers"}]
       64 NEWTABLE                         R14 0 9
       66 GETUPVAL                         R15 3
       67 GETUPVAL                         R16 8
       68 CALL                             R15 1 1
       69 GETUPVAL                         R16 3
       70 GETUPVAL                         R17 9
       71 CALL                             R16 1 1
       72 GETUPVAL                         R17 3
       73 GETUPVAL                         R18 10
       74 CALL                             R17 1 1
       75 GETUPVAL                         R18 3
       76 GETUPVAL                         R19 11
       77 CALL                             R18 1 1
       78 GETUPVAL                         R19 3
       79 GETUPVAL                         R20 12
       80 CALL                             R19 1 1
       81 GETUPVAL                         R20 3
       82 GETUPVAL                         R21 13
       83 CALL                             R20 1 1
       84 GETUPVAL                         R21 3
       85 GETUPVAL                         R22 14
       86 CALL                             R21 1 1
       87 GETUPVAL                         R22 3
       88 GETUPVAL                         R23 15
       89 CALL                             R22 1 1
       90 GETTABLEKS                       R24 R0 K22 ["setupConfig"]
       92 GETTABLEKS                       R24 R24 K23 ["doNotMockPublishProvider"]
       94 JUMPIFNOT                        R24 ; [+4]
       95 GETUPVAL                         R23 3
       96 GETUPVAL                         R24 16
       97 CALL                             R23 1 1
       98 JUMP                             ; [+10]
       99 GETUPVAL                         R23 3
      100 GETUPVAL                         R24 17
      101 DUPTABLE                         R25 K25 [{"databaseLoaded"}]
      102 GETTABLEKS                       R26 R0 K22 ["setupConfig"]
      104 GETTABLEKS                       R26 R26 K24 ["databaseLoaded"]
      106 SETTABLEKS                       R26 R25 K24 ["databaseLoaded"]
      108 CALL                             R23 2 1
      109 SETLIST                          R14 R15 9 [1]
      111 SETTABLEKS                       R14 R13 K20 ["providers"]
      113 GETTABLEKS                       R15 R0 K26 ["node"]
      115 JUMPIFNOT                        R15 ; [+3]
      116 GETTABLEKS                       R14 R0 K26 ["node"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R14
      120 CALL                             R11 3 1
      121 SETTABLEKS                       R11 R10 K18 ["ContextStack"]
      123 CALL                             R8 2 1
      124 SETTABLEKS                       R8 R7 K11 ["Content"]
      126 GETUPVAL                         R8 3
      127 LOADK                            R9 K12 ["StyleLink"]
      128 DUPTABLE                         R10 K28 [{"StyleSheet"}]
      129 GETUPVAL                         R11 18
      130 GETUPVAL                         R12 19
      131 LOADK                            R14 K29 ["Plugin"]
      132 NAMECALL                         R12 R12 K30 ["FindFirstAncestorWhichIsA"]
      134 CALL                             R12 2 1
      135 GETUPVAL                         R13 19
      136 CALL                             R11 2 1
      137 SETTABLEKS                       R11 R10 K27 ["StyleSheet"]
      139 CALL                             R8 2 1
      140 SETTABLEKS                       R8 R7 K12 ["StyleLink"]
      142 CALL                             R4 3 1
      143 RETURN                           R4 1

PROTO_6:
        0 GETIMPORT                        R2 K1 [print]
        2 MOVE                             R4 R1
        3 GETTABLEKS                       R5 R0 K2 ["Name"]
        5 CONCAT                           R3 R4 R5
        6 CALL                             R2 1 0
        7 NAMECALL                         R2 R0 K3 ["GetChildren"]
        9 CALL                             R2 1 1
       10 LOADN                            R5 1
       11 LENGTH                           R3 R2
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETUPVAL                         R6 0
       15 GETTABLE                         R7 R2 R5
       16 JUMPIFNOTEQKS                    R1 K4 [""] ; [+3]
       18 LOADK                            R8 K5 [" -"]
       19 JUMP                             ; [+3]
       20 LOADK                            R9 K6 [" "]
       21 MOVE                             R10 R1
       22 CONCAT                           R8 R9 R10
       23 CALL                             R6 2 0
       24 FORNLOOP                         R3
       25 RETURN                           R0 0

PROTO_7:
        0 DUPCLOSURE                       R1 K0 [PROTO_6]
        1 CAPTURE                          VAL R1
        2 GETIMPORT                        R2 K2 [print]
        4 LOADK                            R4 K3 [""]
        5 GETTABLEKS                       R5 R0 K4 ["Name"]
        7 CONCAT                           R3 R4 R5
        8 CALL                             R2 1 0
        9 NAMECALL                         R2 R0 K5 ["GetChildren"]
       11 CALL                             R2 1 1
       12 LOADN                            R5 1
       13 LENGTH                           R3 R2
       14 LOADN                            R4 1
       15 FORNPREP                         R3
       16 MOVE                             R6 R1
       17 GETTABLE                         R7 R2 R5
       18 LOADK                            R8 K6 [" -"]
       19 CALL                             R6 2 0
       20 FORNLOOP                         R3
       21 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["render"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K3 [{"node", "setupConfig"}]
        6 SETTABLEKS                       R0 R5 K1 ["node"]
        8 SETTABLEKS                       R1 R5 K2 ["setupConfig"]
       10 CALL                             R3 2 -1
       11 CALL                             R2 -1 1
       12 GETTABLEKS                       R3 R2 K4 ["container"]
       14 SETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R2 K5 ["unmount"]
       17 SETUPVAL                         R3 4
       18 GETUPVAL                         R3 5
       19 DUPCLOSURE                       R4 K6 [PROTO_0]
       20 CAPTURE                          UPVAL U6
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["render"]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K3 [{"node", "setupConfig"}]
       11 SETTABLEKS                       R0 R5 K1 ["node"]
       13 SETTABLEKS                       R1 R5 K2 ["setupConfig"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 1
       17 GETTABLEKS                       R3 R2 K4 ["container"]
       19 SETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R2 K5 ["unmount"]
       22 SETUPVAL                         R3 5
       23 GETUPVAL                         R3 6
       24 DUPCLOSURE                       R4 K6 [PROTO_0]
       25 CAPTURE                          UPVAL U7
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["Container has not mounted"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ClearAllChildren"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R4 K0 ["GuiObject"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Instance must be a GuiObject"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K5 ["AbsoluteSize"]
       12 GETIMPORT                        R2 K8 [Vector2.new]
       14 GETTABLEKS                       R4 R0 K9 ["AbsolutePosition"]
       16 GETTABLEKS                       R4 R4 K10 ["X"]
       18 GETTABLEKS                       R6 R1 K10 ["X"]
       20 DIVK                             R5 R6 K11 [2]
       21 ADD                              R3 R4 R5
       22 GETTABLEKS                       R5 R0 K9 ["AbsolutePosition"]
       24 GETTABLEKS                       R5 R5 K12 ["Y"]
       26 GETTABLEKS                       R7 R1 K12 ["Y"]
       28 DIVK                             R6 R7 K11 [2]
       29 ADD                              R4 R5 R6
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADN                            R2 246
        6 LOADN                            R3 246
        7 LOADNIL                          R4
        8 NAMECALL                         R0 R0 K1 ["SendMouseMoveEvent"]
       10 CALL                             R0 4 0
       11 GETUPVAL                         R0 0
       12 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_14]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 LOADK                            R5 K1 ["GuiObject"]
        6 NAMECALL                         R3 R1 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Instance must be a GuiObject"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R1 K6 ["AbsoluteSize"]
       17 GETIMPORT                        R3 K9 [Vector2.new]
       19 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       21 GETTABLEKS                       R5 R5 K11 ["X"]
       23 GETTABLEKS                       R7 R2 K11 ["X"]
       25 DIVK                             R6 R7 K12 [2]
       26 ADD                              R4 R5 R6
       27 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
       29 GETTABLEKS                       R6 R6 K13 ["Y"]
       31 GETTABLEKS                       R8 R2 K13 ["Y"]
       33 DIVK                             R7 R8 K12 [2]
       34 ADD                              R5 R6 R7
       35 CALL                             R3 2 1
       36 MOVE                             R0 R3
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R3 R0 K11 ["X"]
       40 GETTABLEKS                       R4 R0 K13 ["Y"]
       42 LOADNIL                          R5
       43 NAMECALL                         R1 R1 K14 ["SendMouseMoveEvent"]
       45 CALL                             R1 4 0
       46 GETUPVAL                         R1 0
       47 NAMECALL                         R1 R1 K0 ["WaitForInputEventsProcessed"]
       49 CALL                             R1 1 0
       50 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADNIL                          R1
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 JUMPIFNOT                        R2 ; [+10]
       10 LOADK                            R5 K3 ["ScrollingFrame"]
       11 NAMECALL                         R3 R2 K1 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+2]
       15 MOVE                             R1 R2
       16 JUMP                             ; [+3]
       17 GETTABLEKS                       R2 R2 K2 ["Parent"]
       19 JUMPBACK                         ; [-11]
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R3 R1 K4 ["AbsolutePosition"]
       24 GETTABLEKS                       R3 R3 K5 ["Y"]
       26 GETTABLEKS                       R5 R1 K6 ["AbsoluteSize"]
       28 GETTABLEKS                       R5 R5 K5 ["Y"]
       30 ADD                              R4 R3 R5
       31 GETTABLEKS                       R5 R0 K4 ["AbsolutePosition"]
       33 GETTABLEKS                       R5 R5 K5 ["Y"]
       35 GETTABLEKS                       R7 R0 K6 ["AbsoluteSize"]
       37 GETTABLEKS                       R7 R7 K5 ["Y"]
       39 ADD                              R6 R5 R7
       40 JUMPIFNOTLT                      R4 R6 ; [+37]
       42 SUB                              R7 R6 R4
       43 GETIMPORT                        R8 K9 [Vector2.new]
       45 GETTABLEKS                       R9 R1 K10 ["CanvasPosition"]
       47 GETTABLEKS                       R9 R9 K11 ["X"]
       49 GETTABLEKS                       R12 R1 K10 ["CanvasPosition"]
       51 GETTABLEKS                       R12 R12 K5 ["Y"]
       53 ADD                              R11 R12 R7
       54 LOADN                            R13 0
       55 GETTABLEKS                       R15 R1 K12 ["AbsoluteCanvasSize"]
       57 GETTABLEKS                       R15 R15 K5 ["Y"]
       59 GETTABLEKS                       R16 R1 K6 ["AbsoluteSize"]
       61 GETTABLEKS                       R16 R16 K5 ["Y"]
       63 SUB                              R14 R15 R16
       64 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       66 GETIMPORT                        R12 K15 [math.max]
       68 CALL                             R12 2 1
       69 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       71 GETIMPORT                        R10 K17 [math.min]
       73 CALL                             R10 2 1
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R1 K10 ["CanvasPosition"]
       77 RETURN                           R0 0
       78 JUMPIFNOTLT                      R5 R3 ; [+22]
       80 SUB                              R7 R3 R5
       81 GETIMPORT                        R8 K9 [Vector2.new]
       83 GETTABLEKS                       R9 R1 K10 ["CanvasPosition"]
       85 GETTABLEKS                       R9 R9 K11 ["X"]
       87 GETTABLEKS                       R12 R1 K10 ["CanvasPosition"]
       89 GETTABLEKS                       R12 R12 K5 ["Y"]
       91 SUB                              R11 R12 R7
       92 FASTCALL2K                       MATH_MAX R11 K18 ; [+4]
       94 LOADK                            R12 K18 [0]
       95 GETIMPORT                        R10 K15 [math.max]
       97 CALL                             R10 2 1
       98 CALL                             R8 2 1
       99 SETTABLEKS                       R8 R1 K10 ["CanvasPosition"]
      101 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 MOVE                             R2 R0
        1 LOADK                            R5 K0 ["TextLabel"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+13]
        6 GETTABLEKS                       R3 R0 K2 ["Parent"]
        8 JUMPIFNOT                        R3 ; [+10]
        9 LOADK                            R6 K3 ["GuiButton"]
       10 NAMECALL                         R4 R3 K1 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+2]
       14 MOVE                             R2 R3
       15 JUMP                             ; [+3]
       16 GETTABLEKS                       R3 R3 K2 ["Parent"]
       18 JUMPBACK                         ; [-11]
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K4 ["contextMenu"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 JUMP                             ; [+11]
       26 GETIMPORT                        R3 K6 [pcall]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          REF R2
       31 CALL                             R3 1 2
       32 JUMPIF                           R3 ; [+4]
       33 GETUPVAL                         R5 0
       34 MOVE                             R6 R2
       35 LOADK                            R7 K7 ["clickWithoutValidation"]
       36 CALL                             R5 2 0
       37 CLOSEUPVALS                      R2
       38 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADB                            R4 0
        4 LOADNIL                          R5
        5 NAMECALL                         R0 R0 K0 ["SendKeyEvent"]
        7 CALL                             R0 5 0
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K1 ["WaitForInputEventsProcessed"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftControl]
        4 LOADB                            R4 0
        5 LOADNIL                          R5
        6 NAMECALL                         R0 R0 K4 ["SendKeyEvent"]
        8 CALL                             R0 5 0
        9 GETUPVAL                         R0 0
       10 LOADB                            R2 1
       11 GETIMPORT                        R3 K6 [Enum.KeyCode.A]
       13 LOADB                            R4 0
       14 LOADNIL                          R5
       15 NAMECALL                         R0 R0 K4 ["SendKeyEvent"]
       17 CALL                             R0 5 0
       18 GETUPVAL                         R0 0
       19 LOADB                            R2 0
       20 GETIMPORT                        R3 K6 [Enum.KeyCode.A]
       22 LOADB                            R4 0
       23 LOADNIL                          R5
       24 NAMECALL                         R0 R0 K4 ["SendKeyEvent"]
       26 CALL                             R0 5 0
       27 GETUPVAL                         R0 0
       28 LOADB                            R2 0
       29 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftControl]
       31 LOADB                            R4 0
       32 LOADNIL                          R5
       33 NAMECALL                         R0 R0 K4 ["SendKeyEvent"]
       35 CALL                             R0 5 0
       36 GETUPVAL                         R0 0
       37 LOADB                            R2 1
       38 GETIMPORT                        R3 K8 [Enum.KeyCode.Backspace]
       40 LOADB                            R4 0
       41 LOADNIL                          R5
       42 NAMECALL                         R0 R0 K4 ["SendKeyEvent"]
       44 CALL                             R0 5 0
       45 GETUPVAL                         R0 0
       46 LOADB                            R2 0
       47 GETIMPORT                        R3 K8 [Enum.KeyCode.Backspace]
       49 LOADB                            R4 0
       50 LOADNIL                          R5
       51 NAMECALL                         R0 R0 K4 ["SendKeyEvent"]
       53 CALL                             R0 5 0
       54 GETUPVAL                         R0 0
       55 NAMECALL                         R0 R0 K9 ["WaitForInputEventsProcessed"]
       57 CALL                             R0 1 0
       58 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_23]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["SendTextInputCharacterEvent"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K1 ["WaitForInputEventsProcessed"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["SendTextInputCharacterEvent"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K1 ["WaitForInputEventsProcessed"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADB                            R2 1
       12 GETIMPORT                        R3 K5 [Enum.KeyCode.Return]
       14 LOADB                            R4 0
       15 LOADNIL                          R5
       16 NAMECALL                         R0 R0 K6 ["SendKeyEvent"]
       18 CALL                             R0 5 0
       19 GETUPVAL                         R0 0
       20 LOADB                            R2 0
       21 GETIMPORT                        R3 K5 [Enum.KeyCode.Return]
       23 LOADB                            R4 0
       24 LOADNIL                          R5
       25 NAMECALL                         R0 R0 K6 ["SendKeyEvent"]
       27 CALL                             R0 5 0
       28 GETUPVAL                         R0 0
       29 NAMECALL                         R0 R0 K1 ["WaitForInputEventsProcessed"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 DUPCLOSURE                       R3 K0 [PROTO_23]
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getByText"]
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K2 [{"exact"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K1 ["exact"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 2
       12 DUPCLOSURE                       R2 K3 [PROTO_0]
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["queryByTestId"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R2 K1 ["CategoryListExpand"]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K2 ["CategoryListCollapse"]
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 DUPCLOSURE                       R3 K3 [PROTO_0]
       15 CAPTURE                          UPVAL U3
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+7]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 DUPCLOSURE                       R2 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 CALL                             R1 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["queryByText"]
       17 LOADK                            R1 K4 ["CategoryList.General"]
       18 DUPTABLE                         R2 K6 [{"exact"}]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K5 ["exact"]
       22 CALL                             R0 2 1
       23 JUMPIF                           R0 ; [+8]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["queryByTestId"]
       27 LOADK                            R2 K7 ["GeneralCategoryImage"]
       28 CALL                             R1 1 1
       29 MOVE                             R0 R1
       30 JUMPIF                           R0 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 1
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 2
       36 DUPCLOSURE                       R2 K2 [PROTO_0]
       37 CAPTURE                          UPVAL U3
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+7]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 DUPCLOSURE                       R2 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 CALL                             R1 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["queryByText"]
       17 LOADK                            R1 K4 ["CategoryList.Body"]
       18 DUPTABLE                         R2 K6 [{"exact"}]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K5 ["exact"]
       22 CALL                             R0 2 1
       23 JUMPIF                           R0 ; [+9]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["queryByTestId"]
       27 LOADK                            R2 K7 ["BodyCategoryImage"]
       28 CALL                             R1 1 1
       29 MOVE                             R0 R1
       30 JUMPIF                           R0 ; [+1]
       31 RETURN                           R0 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 1
       34 MOVE                             R2 R0
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 2
       37 DUPCLOSURE                       R2 K2 [PROTO_0]
       38 CAPTURE                          UPVAL U3
       39 CALL                             R1 1 0
       40 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+7]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 DUPCLOSURE                       R2 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 CALL                             R1 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["queryByText"]
       17 LOADK                            R1 K4 ["CategoryList.Movement"]
       18 DUPTABLE                         R2 K6 [{"exact"}]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K5 ["exact"]
       22 CALL                             R0 2 1
       23 JUMPIF                           R0 ; [+8]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["queryByTestId"]
       27 LOADK                            R2 K7 ["BodyCategoryImage"]
       28 CALL                             R1 1 1
       29 MOVE                             R0 R1
       30 JUMPIF                           R0 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 1
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 2
       36 DUPCLOSURE                       R2 K2 [PROTO_0]
       37 CAPTURE                          UPVAL U3
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+7]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 DUPCLOSURE                       R2 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 CALL                             R1 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["queryByText"]
       17 LOADK                            R1 K4 ["CategoryList.Accessories"]
       18 DUPTABLE                         R2 K6 [{"exact"}]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K5 ["exact"]
       22 CALL                             R0 2 1
       23 JUMPIF                           R0 ; [+8]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["queryByTestId"]
       27 LOADK                            R2 K7 ["BodyCategoryImage"]
       28 CALL                             R1 1 1
       29 MOVE                             R0 R1
       30 JUMPIF                           R0 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 1
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 2
       36 DUPCLOSURE                       R2 K2 [PROTO_0]
       37 CAPTURE                          UPVAL U3
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+7]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 DUPCLOSURE                       R2 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 CALL                             R1 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["queryByText"]
       17 LOADK                            R1 K4 ["CategoryList.Clothing"]
       18 DUPTABLE                         R2 K6 [{"exact"}]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K5 ["exact"]
       22 CALL                             R0 2 1
       23 JUMPIF                           R0 ; [+8]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["queryByTestId"]
       27 LOADK                            R2 K7 ["BodyCategoryImage"]
       28 CALL                             R1 1 1
       29 MOVE                             R0 R1
       30 JUMPIF                           R0 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 1
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 2
       36 DUPCLOSURE                       R2 K2 [PROTO_0]
       37 CAPTURE                          UPVAL U3
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getByTestId"]
        3 LOADK                            R2 K1 ["AvatarTypeDropdownToggleButton"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 DUPCLOSURE                       R3 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["getByText"]
       18 GETUPVAL                         R5 4
       19 GETTABLE                         R4 R5 R0
       20 DUPTABLE                         R5 K5 [{"exact"}]
       21 LOADB                            R6 0
       22 SETTABLEKS                       R6 R5 K4 ["exact"]
       24 CALL                             R3 2 -1
       25 CALL                             R2 -1 0
       26 GETUPVAL                         R2 2
       27 DUPCLOSURE                       R3 K2 [PROTO_0]
       28 CAPTURE                          UPVAL U3
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["queryByText"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"exact"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K1 ["exact"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R1 K3 ["Parent"]
       14 RETURN                           R2 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 LOADK                            R2 K1 ["Checked"]
        4 NAMECALL                         R0 R0 K2 ["HasTag"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["queryByText"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"exact"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K1 ["exact"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R1 K3 ["Parent"]
       14 LOADK                            R4 K4 ["Button"]
       15 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
       17 CALL                             R2 2 1
       18 DUPTABLE                         R3 K9 [{"checkBox", "clickCheckBox", "isChecked"}]
       19 SETTABLEKS                       R2 R3 K6 ["checkBox"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U2
       25 SETTABLEKS                       R4 R3 K7 ["clickCheckBox"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R4 R3 K8 ["isChecked"]
       31 RETURN                           R3 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Foreground"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["queryByText"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"exact"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K1 ["exact"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R1 K3 ["Parent"]
       14 GETTABLEKS                       R2 R2 K3 ["Parent"]
       16 LOADK                            R4 K4 ["RadioImage"]
       17 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
       19 CALL                             R2 2 1
       20 LOADK                            R4 K6 ["Contents"]
       21 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
       23 CALL                             R2 2 1
       24 DUPTABLE                         R3 K10 [{"radioButton", "click", "isSelected"}]
       25 SETTABLEKS                       R2 R3 K7 ["radioButton"]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K8 ["click"]
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R4 R3 K9 ["isSelected"]
       36 RETURN                           R3 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Checked"]
        2 NAMECALL                         R0 R0 K1 ["HasTag"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clickAssetIdInput"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 GETIMPORT                        R1 K4 [Enum.KeyCode.Return]
       11 GETUPVAL                         R2 1
       12 LOADB                            R4 1
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 0
       18 GETIMPORT                        R1 K4 [Enum.KeyCode.Return]
       20 GETUPVAL                         R2 1
       21 LOADB                            R4 0
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_48:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Checkbox"]
        4 LOADB                            R4 1
        5 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        7 CALL                             R1 3 1
        8 JUMPIF                           R0 ; [+2]
        9 LOADNIL                          R2
       10 JUMP                             ; [+23]
       11 LOADK                            R5 K2 ["TextBox"]
       12 LOADB                            R6 1
       13 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
       15 CALL                             R3 3 1
       16 GETUPVAL                         R4 0
       17 CALL                             R4 0 1
       18 JUMPIF                           R4 ; [+6]
       19 JUMPIFNOT                        R3 ; [+5]
       20 LOADK                            R6 K2 ["TextBox"]
       21 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 JUMPIFNOT                        R3 ; [+7]
       26 LOADK                            R6 K2 ["TextBox"]
       27 NAMECALL                         R4 R3 K3 ["IsA"]
       29 CALL                             R4 2 1
       30 JUMPIFNOT                        R4 ; [+2]
       31 MOVE                             R2 R3
       32 JUMP                             ; [+1]
       33 LOADNIL                          R2
       34 JUMPIFNOT                        R1 ; [+1]
       35 JUMPIF                           R2 ; [+2]
       36 LOADNIL                          R3
       37 RETURN                           R3 1
       38 LOADK                            R6 K2 ["TextBox"]
       39 NAMECALL                         R4 R2 K3 ["IsA"]
       41 CALL                             R4 2 1
       42 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       44 LOADK                            R5 K4 ["AssetIdInput is invalid type"]
       45 GETIMPORT                        R3 K6 [assert]
       47 CALL                             R3 2 0
       48 DUPTABLE                         R3 K12 [{"checkBox", "assetIdInput", "clickCheckBox", "isChecked", "clickAssetIdInput"}]
       49 SETTABLEKS                       R1 R3 K7 ["checkBox"]
       51 SETTABLEKS                       R2 R3 K8 ["assetIdInput"]
       53 NEWCLOSURE                       R4 P0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R4 R3 K9 ["clickCheckBox"]
       58 NEWCLOSURE                       R4 P1
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R4 R3 K10 ["isChecked"]
       62 NEWCLOSURE                       R4 P2
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R4 R3 K11 ["clickAssetIdInput"]
       67 NEWCLOSURE                       R4 P3
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          UPVAL U3
       71 SETTABLEKS                       R4 R3 K13 ["enterAssetId"]
       73 RETURN                           R3 1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LowerRangeInput"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 0
        8 LOADK                            R4 K2 ["LowerKnob"]
        9 LOADB                            R5 1
       10 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       12 CALL                             R2 3 1
       13 SETTABLEKS                       R2 R1 K3 ["lowerRangeSliderKnob"]
       15 GETUPVAL                         R1 1
       16 JUMPIF                           R0 ; [+2]
       17 LOADNIL                          R2
       18 JUMP                             ; [+23]
       19 LOADK                            R5 K4 ["TextBox"]
       20 LOADB                            R6 1
       21 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
       23 CALL                             R3 3 1
       24 GETUPVAL                         R4 2
       25 CALL                             R4 0 1
       26 JUMPIF                           R4 ; [+6]
       27 JUMPIFNOT                        R3 ; [+5]
       28 LOADK                            R6 K4 ["TextBox"]
       29 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
       31 CALL                             R4 2 1
       32 MOVE                             R3 R4
       33 JUMPIFNOT                        R3 ; [+7]
       34 LOADK                            R6 K4 ["TextBox"]
       35 NAMECALL                         R4 R3 K5 ["IsA"]
       37 CALL                             R4 2 1
       38 JUMPIFNOT                        R4 ; [+2]
       39 MOVE                             R2 R3
       40 JUMP                             ; [+1]
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R1 K6 ["lowerRangeInput"]
       44 LOADNIL                          R1
       45 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["upperRangeInput"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 GETIMPORT                        R1 K4 [Enum.KeyCode.Return]
       12 GETUPVAL                         R2 2
       13 LOADB                            R4 1
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R1
       18 CALL                             R2 1 0
       19 GETIMPORT                        R1 K4 [Enum.KeyCode.Return]
       21 GETUPVAL                         R2 2
       22 LOADB                            R4 0
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["lowerRangeInput"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["lowerRangeInput"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 0
       15 GETIMPORT                        R1 K4 [Enum.KeyCode.Return]
       17 GETUPVAL                         R2 2
       18 LOADB                            R4 1
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R1
       23 CALL                             R2 1 0
       24 GETIMPORT                        R1 K4 [Enum.KeyCode.Return]
       26 GETUPVAL                         R2 2
       27 LOADB                            R4 0
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["minMaxToggle"]
        3 JUMPIFNOT                        R0 ; [+28]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["minMaxToggle"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 DUPCLOSURE                       R1 K1 [PROTO_0]
       11 CAPTURE                          UPVAL U3
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 5
       14 LOADK                            R2 K2 ["SetMinMaxToggle"]
       15 LOADB                            R3 1
       16 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
       18 CALL                             R0 3 1
       19 SETUPVAL                         R0 4
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R2 4
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETUPVAL                         R1 4
       24 LOADK                            R3 K4 ["Button"]
       25 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
       27 CALL                             R1 2 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K0 ["minMaxToggle"]
       32 RETURN                           R0 0

PROTO_53:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Content"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 MOVE                             R2 R1
        8 JUMPIFNOT                        R2 ; [+4]
        9 LOADK                            R4 K0 ["Content"]
       10 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 JUMPIF                           R1 ; [+3]
       15 LOADNIL                          R2
       16 CLOSEUPVALS                      R1
       17 RETURN                           R2 1
       18 LOADK                            R4 K2 ["UpperKnob"]
       19 LOADB                            R5 1
       20 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       22 CALL                             R2 3 1
       23 LOADK                            R6 K3 ["UpperRangeInput"]
       24 LOADB                            R7 1
       25 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
       27 CALL                             R4 3 1
       28 JUMPIF                           R4 ; [+2]
       29 LOADNIL                          R3
       30 JUMP                             ; [+23]
       31 LOADK                            R7 K4 ["TextBox"]
       32 LOADB                            R8 1
       33 NAMECALL                         R5 R4 K1 ["FindFirstChild"]
       35 CALL                             R5 3 1
       36 GETUPVAL                         R6 0
       37 CALL                             R6 0 1
       38 JUMPIF                           R6 ; [+6]
       39 JUMPIFNOT                        R5 ; [+5]
       40 LOADK                            R8 K4 ["TextBox"]
       41 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
       43 CALL                             R6 2 1
       44 MOVE                             R5 R6
       45 JUMPIFNOT                        R5 ; [+7]
       46 LOADK                            R8 K4 ["TextBox"]
       47 NAMECALL                         R6 R5 K5 ["IsA"]
       49 CALL                             R6 2 1
       50 JUMPIFNOT                        R6 ; [+2]
       51 MOVE                             R3 R5
       52 JUMP                             ; [+1]
       53 LOADNIL                          R3
       54 JUMPIFNOT                        R2 ; [+1]
       55 JUMPIF                           R3 ; [+3]
       56 LOADNIL                          R4
       57 CLOSEUPVALS                      R1
       58 RETURN                           R4 1
       59 LOADK                            R7 K4 ["TextBox"]
       60 NAMECALL                         R5 R3 K5 ["IsA"]
       62 CALL                             R5 2 1
       63 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       65 LOADK                            R6 K6 ["UpperRangeInput is invalid type"]
       66 GETIMPORT                        R4 K8 [assert]
       68 CALL                             R4 2 0
       69 LOADK                            R6 K9 ["LowerRangeInput"]
       70 LOADB                            R7 1
       71 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
       73 CALL                             R4 3 1
       74 LOADK                            R7 K10 ["SetMinMaxToggle"]
       75 LOADB                            R8 1
       76 NAMECALL                         R5 R1 K1 ["FindFirstChild"]
       78 CALL                             R5 3 1
       79 LOADNIL                          R6
       80 NEWTABLE                         R7 8 1
       82 SETTABLEKS                       R3 R7 K11 ["upperRangeInput"]
       84 SETTABLEKS                       R2 R7 K12 ["upperRangeSliderKnob"]
       86 JUMPIF                           R4 ; [+2]
       87 LOADNIL                          R9
       88 JUMP                             ; [+23]
       89 LOADK                            R12 K4 ["TextBox"]
       90 LOADB                            R13 1
       91 NAMECALL                         R10 R4 K1 ["FindFirstChild"]
       93 CALL                             R10 3 1
       94 GETUPVAL                         R11 0
       95 CALL                             R11 0 1
       96 JUMPIF                           R11 ; [+6]
       97 JUMPIFNOT                        R10 ; [+5]
       98 LOADK                            R13 K4 ["TextBox"]
       99 NAMECALL                         R11 R10 K1 ["FindFirstChild"]
      101 CALL                             R11 2 1
      102 MOVE                             R10 R11
      103 JUMPIFNOT                        R10 ; [+7]
      104 LOADK                            R13 K4 ["TextBox"]
      105 NAMECALL                         R11 R10 K5 ["IsA"]
      107 CALL                             R11 2 1
      108 JUMPIFNOT                        R11 ; [+2]
      109 MOVE                             R9 R10
      110 JUMP                             ; [+1]
      111 LOADNIL                          R9
      112 SETTABLEKS                       R9 R7 K13 ["lowerRangeInput"]
      114 LOADK                            R11 K14 ["LowerKnob"]
      115 NAMECALL                         R9 R1 K1 ["FindFirstChild"]
      117 CALL                             R9 2 1
      118 SETTABLEKS                       R9 R7 K15 ["lowerRangeSliderKnob"]
      120 LOADB                            R8 1
      121 SETLIST                          R7 R8 1 [1]
      123 JUMPIFNOT                        R5 ; [+5]
      124 LOADK                            R11 K16 ["Button"]
      125 NAMECALL                         R9 R5 K1 ["FindFirstChild"]
      127 CALL                             R9 2 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R9
      130 SETTABLEKS                       R9 R7 K17 ["minMaxToggle"]
      132 NEWCLOSURE                       R9 P0
      133 CAPTURE                          REF R1
      134 CAPTURE                          REF R6
      135 CAPTURE                          UPVAL U0
      136 SETTABLEKS                       R9 R7 K18 ["searchForLowerRangeComponents"]
      138 MOVE                             R6 R7
      139 NEWCLOSURE                       R7 P1
      140 CAPTURE                          UPVAL U1
      141 CAPTURE                          REF R6
      142 CAPTURE                          UPVAL U2
      143 CAPTURE                          UPVAL U3
      144 SETTABLEKS                       R7 R6 K19 ["enterUpperRange"]
      146 NEWCLOSURE                       R7 P2
      147 CAPTURE                          REF R6
      148 CAPTURE                          UPVAL U1
      149 CAPTURE                          UPVAL U2
      150 CAPTURE                          UPVAL U3
      151 SETTABLEKS                       R7 R6 K20 ["enterLowerRange"]
      153 NEWCLOSURE                       R7 P3
      154 CAPTURE                          REF R6
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          REF R5
      159 CAPTURE                          REF R1
      160 SETTABLEKS                       R7 R6 K21 ["toggleMinMax"]
      162 CLOSEUPVALS                      R1
      163 RETURN                           R6 1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Text"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["toBe"]
        7 GETTABLEKS                       R3 R0 K2 ["X"]
        9 FASTCALL1                        TOSTRING R3 ; [+2]
       10 GETIMPORT                        R2 K4 [tostring]
       12 CALL                             R2 1 1
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K0 ["Text"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R1 R1 K1 ["toBe"]
       21 GETTABLEKS                       R3 R0 K5 ["Y"]
       23 FASTCALL1                        TOSTRING R3 ; [+2]
       24 GETIMPORT                        R2 K4 [tostring]
       26 CALL                             R2 1 1
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 0
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K0 ["Text"]
       32 CALL                             R1 1 1
       33 GETTABLEKS                       R1 R1 K1 ["toBe"]
       35 GETTABLEKS                       R3 R0 K6 ["Z"]
       37 FASTCALL1                        TOSTRING R3 ; [+2]
       38 GETIMPORT                        R2 K4 [tostring]
       40 CALL                             R2 1 1
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 FASTCALL1                        TOSTRING R3 ; [+2]
        4 GETIMPORT                        R2 K2 [tostring]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R1
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 2
       11 DUPCLOSURE                       R4 K3 [PROTO_23]
       12 CAPTURE                          UPVAL U3
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 2
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R2
       18 CALL                             R3 1 0
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R3 R0 K4 ["Y"]
       22 FASTCALL1                        TOSTRING R3 ; [+2]
       23 GETIMPORT                        R2 K2 [tostring]
       25 CALL                             R2 1 1
       26 GETUPVAL                         R3 1
       27 MOVE                             R4 R1
       28 CALL                             R3 1 0
       29 GETUPVAL                         R3 2
       30 DUPCLOSURE                       R4 K3 [PROTO_23]
       31 CAPTURE                          UPVAL U3
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 2
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R2
       37 CALL                             R3 1 0
       38 GETUPVAL                         R1 5
       39 GETTABLEKS                       R3 R0 K5 ["Z"]
       41 FASTCALL1                        TOSTRING R3 ; [+2]
       42 GETIMPORT                        R2 K2 [tostring]
       44 CALL                             R2 1 1
       45 GETUPVAL                         R3 1
       46 MOVE                             R4 R1
       47 CALL                             R3 1 0
       48 GETUPVAL                         R3 2
       49 DUPCLOSURE                       R4 K3 [PROTO_23]
       50 CAPTURE                          UPVAL U3
       51 CALL                             R3 1 0
       52 GETUPVAL                         R3 2
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R2
       56 CALL                             R3 1 0
       57 RETURN                           R0 0

PROTO_56:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Content"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 MOVE                             R2 R1
        8 JUMPIFNOT                        R2 ; [+4]
        9 LOADK                            R4 K2 ["Input"]
       10 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 JUMPIF                           R1 ; [+2]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 LOADK                            R5 K3 ["xInput"]
       18 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+2]
       22 LOADNIL                          R2
       23 JUMP                             ; [+23]
       24 LOADK                            R6 K4 ["TextBox"]
       25 LOADB                            R7 1
       26 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
       28 CALL                             R4 3 1
       29 GETUPVAL                         R5 0
       30 CALL                             R5 0 1
       31 JUMPIF                           R5 ; [+6]
       32 JUMPIFNOT                        R4 ; [+5]
       33 LOADK                            R7 K4 ["TextBox"]
       34 NAMECALL                         R5 R4 K1 ["FindFirstChild"]
       36 CALL                             R5 2 1
       37 MOVE                             R4 R5
       38 JUMPIFNOT                        R4 ; [+7]
       39 LOADK                            R7 K4 ["TextBox"]
       40 NAMECALL                         R5 R4 K5 ["IsA"]
       42 CALL                             R5 2 1
       43 JUMPIFNOT                        R5 ; [+2]
       44 MOVE                             R2 R4
       45 JUMP                             ; [+1]
       46 LOADNIL                          R2
       47 LOADK                            R6 K6 ["yInput"]
       48 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
       50 CALL                             R4 2 1
       51 JUMPIF                           R4 ; [+2]
       52 LOADNIL                          R3
       53 JUMP                             ; [+23]
       54 LOADK                            R7 K4 ["TextBox"]
       55 LOADB                            R8 1
       56 NAMECALL                         R5 R4 K1 ["FindFirstChild"]
       58 CALL                             R5 3 1
       59 GETUPVAL                         R6 0
       60 CALL                             R6 0 1
       61 JUMPIF                           R6 ; [+6]
       62 JUMPIFNOT                        R5 ; [+5]
       63 LOADK                            R8 K4 ["TextBox"]
       64 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
       66 CALL                             R6 2 1
       67 MOVE                             R5 R6
       68 JUMPIFNOT                        R5 ; [+7]
       69 LOADK                            R8 K4 ["TextBox"]
       70 NAMECALL                         R6 R5 K5 ["IsA"]
       72 CALL                             R6 2 1
       73 JUMPIFNOT                        R6 ; [+2]
       74 MOVE                             R3 R5
       75 JUMP                             ; [+1]
       76 LOADNIL                          R3
       77 LOADK                            R7 K7 ["zInput"]
       78 NAMECALL                         R5 R1 K1 ["FindFirstChild"]
       80 CALL                             R5 2 1
       81 JUMPIF                           R5 ; [+2]
       82 LOADNIL                          R4
       83 JUMP                             ; [+23]
       84 LOADK                            R8 K4 ["TextBox"]
       85 LOADB                            R9 1
       86 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
       88 CALL                             R6 3 1
       89 GETUPVAL                         R7 0
       90 CALL                             R7 0 1
       91 JUMPIF                           R7 ; [+6]
       92 JUMPIFNOT                        R6 ; [+5]
       93 LOADK                            R9 K4 ["TextBox"]
       94 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       96 CALL                             R7 2 1
       97 MOVE                             R6 R7
       98 JUMPIFNOT                        R6 ; [+7]
       99 LOADK                            R9 K4 ["TextBox"]
      100 NAMECALL                         R7 R6 K5 ["IsA"]
      102 CALL                             R7 2 1
      103 JUMPIFNOT                        R7 ; [+2]
      104 MOVE                             R4 R6
      105 JUMP                             ; [+1]
      106 LOADNIL                          R4
      107 MOVE                             R6 R2
      108 JUMPIFNOT                        R6 ; [+4]
      109 LOADK                            R8 K4 ["TextBox"]
      110 NAMECALL                         R6 R2 K5 ["IsA"]
      112 CALL                             R6 2 1
      113 FASTCALL2K                       ASSERT R6 K8 ; [+4]
      115 LOADK                            R7 K8 ["xInput not found"]
      116 GETIMPORT                        R5 K10 [assert]
      118 CALL                             R5 2 0
      119 MOVE                             R6 R3
      120 JUMPIFNOT                        R6 ; [+4]
      121 LOADK                            R8 K4 ["TextBox"]
      122 NAMECALL                         R6 R3 K5 ["IsA"]
      124 CALL                             R6 2 1
      125 FASTCALL2K                       ASSERT R6 K11 ; [+4]
      127 LOADK                            R7 K11 ["yInput not found"]
      128 GETIMPORT                        R5 K10 [assert]
      130 CALL                             R5 2 0
      131 MOVE                             R6 R4
      132 JUMPIFNOT                        R6 ; [+4]
      133 LOADK                            R8 K4 ["TextBox"]
      134 NAMECALL                         R6 R4 K5 ["IsA"]
      136 CALL                             R6 2 1
      137 FASTCALL2K                       ASSERT R6 K12 ; [+4]
      139 LOADK                            R7 K12 ["zInput not found"]
      140 GETIMPORT                        R5 K10 [assert]
      142 CALL                             R5 2 0
      143 DUPTABLE                         R5 K15 [{"xInput", "yInput", "zInput", "expectTextToBe", "enterValue"}]
      144 SETTABLEKS                       R2 R5 K3 ["xInput"]
      146 SETTABLEKS                       R3 R5 K6 ["yInput"]
      148 SETTABLEKS                       R4 R5 K7 ["zInput"]
      150 NEWCLOSURE                       R6 P0
      151 CAPTURE                          UPVAL U1
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R4
      155 SETTABLEKS                       R6 R5 K13 ["expectTextToBe"]
      157 NEWCLOSURE                       R6 P1
      158 CAPTURE                          VAL R2
      159 CAPTURE                          UPVAL U2
      160 CAPTURE                          UPVAL U3
      161 CAPTURE                          UPVAL U4
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R6 R5 K14 ["enterValue"]
      166 RETURN                           R5 1

PROTO_57:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R4 K0 ["Content"]
        4 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R1
        9 JUMP                             ; [+23]
       10 LOADK                            R5 K2 ["TextBox"]
       11 LOADB                            R6 1
       12 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       14 CALL                             R3 3 1
       15 GETUPVAL                         R4 0
       16 CALL                             R4 0 1
       17 JUMPIF                           R4 ; [+6]
       18 JUMPIFNOT                        R3 ; [+5]
       19 LOADK                            R6 K2 ["TextBox"]
       20 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 JUMPIFNOT                        R3 ; [+7]
       25 LOADK                            R6 K2 ["TextBox"]
       26 NAMECALL                         R4 R3 K3 ["IsA"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+2]
       30 MOVE                             R1 R3
       31 JUMP                             ; [+1]
       32 LOADNIL                          R1
       33 JUMPIF                           R1 ; [+2]
       34 LOADNIL                          R2
       35 RETURN                           R2 1
       36 LOADK                            R5 K2 ["TextBox"]
       37 NAMECALL                         R3 R1 K3 ["IsA"]
       39 CALL                             R3 2 1
       40 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       42 LOADK                            R4 K4 ["InputFrame not found"]
       43 GETIMPORT                        R2 K6 [assert]
       45 CALL                             R2 2 0
       46 DUPTABLE                         R2 K8 [{"input"}]
       47 SETTABLEKS                       R1 R2 K7 ["input"]
       49 RETURN                           R2 1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["queryByText"]
        4 MOVE                             R5 R0
        5 DUPTABLE                         R6 K2 [{"exact"}]
        6 LOADB                            R7 0
        7 SETTABLEKS                       R7 R6 K1 ["exact"]
        9 CALL                             R4 2 1
       10 JUMPIF                           R4 ; [+2]
       11 LOADNIL                          R3
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R3 R4 K3 ["Parent"]
       15 CALL                             R2 1 1
       16 LOADK                            R6 K4 ["AssetIdSelector "]
       17 MOVE                             R7 R0
       18 LOADK                            R8 K5 [" not found"]
       19 CONCAT                           R5 R6 R8
       20 FASTCALL2                        ASSERT R2 R5 ; [+4]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K7 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 2
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R3 R3 K8 ["toBeDefined"]
       31 CALL                             R3 0 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R4 R2 K9 ["assetIdInput"]
       35 GETTABLEKS                       R4 R4 K10 ["Text"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R3 R3 K11 ["toBe"]
       40 JUMPIFEQKN                       R1 K12 [0] ; [+7]
       42 FASTCALL1                        TOSTRING R1 ; [+3]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K14 [tostring]
       46 CALL                             R4 1 1
       47 JUMP                             ; [+1]
       48 LOADK                            R4 K15 [""]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["queryByText"]
        3 LOADK                            R2 K1 ["NavigationBar.Preview"]
        4 DUPTABLE                         R3 K3 [{"exact"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K2 ["exact"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R0
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R0 R1 K4 ["Parent"]
       14 JUMPIF                           R0 ; [+2]
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       19 MOVE                             R2 R0
       20 LOADK                            R3 K5 ["Preview Toggle TitledComponent should be rendered"]
       21 GETIMPORT                        R1 K7 [assert]
       23 CALL                             R1 2 0
       24 DUPTABLE                         R1 K10 [{"previewToggleButton", "clickPreviewToggle"}]
       25 SETTABLEKS                       R0 R1 K8 ["previewToggleButton"]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R2 R1 K9 ["clickPreviewToggle"]
       32 RETURN                           R1 1

PROTO_61:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 DUPCLOSURE                       R3 K0 [PROTO_7]
        3 NEWCLOSURE                       R4 P1
        4 CAPTURE                          REF R2
        5 NEWCLOSURE                       R5 P2
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          REF R1
       10 CAPTURE                          REF R2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NEWCLOSURE                       R6 P3
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          REF R1
       19 CAPTURE                          REF R2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 NEWCLOSURE                       R7 P4
       23 CAPTURE                          REF R1
       24 DUPCLOSURE                       R8 K1 [PROTO_12]
       25 CAPTURE                          UPVAL U6
       26 DUPCLOSURE                       R9 K2 [PROTO_13]
       27 DUPCLOSURE                       R10 K3 [PROTO_15]
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U7
       30 DUPCLOSURE                       R11 K4 [PROTO_17]
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U7
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K5 ["fireEvent"]
       36 DUPCLOSURE                       R13 K6 [PROTO_18]
       37 NEWCLOSURE                       R14 P10
       38 CAPTURE                          VAL R12
       39 DUPCLOSURE                       R15 K7 [PROTO_22]
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U7
       42 DUPCLOSURE                       R16 K8 [PROTO_24]
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U7
       45 DUPCLOSURE                       R17 K9 [PROTO_26]
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U7
       48 NEWCLOSURE                       R18 P14
       49 CAPTURE                          VAL R14
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U7
       52 NEWCLOSURE                       R19 P15
       53 CAPTURE                          VAL R14
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          UPVAL U4
       57 NEWCLOSURE                       R20 P16
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R14
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 NEWCLOSURE                       R21 P17
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          VAL R14
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          UPVAL U4
       67 NEWCLOSURE                       R22 P18
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          VAL R14
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U4
       72 NEWCLOSURE                       R23 P19
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          VAL R14
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          UPVAL U4
       77 NEWCLOSURE                       R24 P20
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          VAL R14
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          UPVAL U4
       82 NEWCLOSURE                       R25 P21
       83 CAPTURE                          UPVAL U8
       84 CAPTURE                          VAL R14
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          UPVAL U4
       87 NEWTABLE                         R26 4 0
       89 GETIMPORT                        R27 K13 [Enum.GameAvatarType.R15]
       91 LOADK                            R28 K14 ["R15Only:"]
       92 SETTABLE                         R28 R26 R27
       93 GETIMPORT                        R27 K16 [Enum.GameAvatarType.R6]
       95 LOADK                            R28 K17 ["R6Only:"]
       96 SETTABLE                         R28 R26 R27
       97 GETIMPORT                        R27 K19 [Enum.GameAvatarType.PlayerChoice]
       99 LOADK                            R28 K20 ["R15AndR6:"]
      100 SETTABLE                         R28 R26 R27
      101 NEWCLOSURE                       R27 P22
      102 CAPTURE                          UPVAL U8
      103 CAPTURE                          VAL R14
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R26
      107 DUPCLOSURE                       R28 K21 [PROTO_37]
      108 CAPTURE                          UPVAL U8
      109 NEWCLOSURE                       R29 P24
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R14
      113 NEWCLOSURE                       R30 P25
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          VAL R14
      116 NEWCLOSURE                       R31 P26
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          VAL R14
      119 CAPTURE                          UPVAL U3
      120 CAPTURE                          UPVAL U7
      121 NEWCLOSURE                       R32 P27
      122 CAPTURE                          UPVAL U9
      123 CAPTURE                          VAL R14
      124 CAPTURE                          UPVAL U3
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          UPVAL U4
      127 NEWCLOSURE                       R33 P28
      128 CAPTURE                          UPVAL U9
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R14
      131 CAPTURE                          UPVAL U3
      132 CAPTURE                          UPVAL U7
      133 DUPCLOSURE                       R34 K22 [PROTO_57]
      134 CAPTURE                          UPVAL U9
      135 NEWCLOSURE                       R35 P30
      136 CAPTURE                          VAL R31
      137 CAPTURE                          UPVAL U8
      138 CAPTURE                          UPVAL U10
      139 NEWCLOSURE                       R36 P31
      140 CAPTURE                          UPVAL U8
      141 CAPTURE                          VAL R14
      142 DUPTABLE                         R37 K55 [{"printHierarchy", "render", "renderApp", "unmount", "getContainer", "cleanupRules", "updateStylingServiceUnitTestOnly", "getPositionOfInstance", "stopHover", "hoverOverInstance", "mouseClickOverInstance", "enterText", "pressKey", "mouseClickOverInstanceAndEnterText", "mouseClickOverInstanceWithText", "toggleCategoryListExpand", "selectGeneralCategory", "selectBodyCategory", "selectMovementCategory", "selectAccessoriesCategory", "selectClothingCategory", "selectAvatarType", "queryTitledComponentByText", "queryCheckBoxByText", "queryRadioButtonByText", "queryAssetIdSelectorFrom", "querySliderComponentFrom", "queryVector3InputComponentFrom", "queryNumberInputComponentFrom", "queryPreviewToggleButton", "findAssetIdComponentAndVerifyId", "findTextBoxFromInstance"}]
      143 SETTABLEKS                       R3 R37 K23 ["printHierarchy"]
      145 SETTABLEKS                       R5 R37 K24 ["render"]
      147 SETTABLEKS                       R6 R37 K25 ["renderApp"]
      149 SETTABLEKS                       R4 R37 K26 ["unmount"]
      151 SETTABLEKS                       R7 R37 K27 ["getContainer"]
      153 SETTABLEKS                       R8 R37 K28 ["cleanupRules"]
      155 GETUPVAL                         R38 11
      156 SETTABLEKS                       R38 R37 K29 ["updateStylingServiceUnitTestOnly"]
      158 SETTABLEKS                       R9 R37 K30 ["getPositionOfInstance"]
      160 SETTABLEKS                       R10 R37 K31 ["stopHover"]
      162 SETTABLEKS                       R11 R37 K32 ["hoverOverInstance"]
      164 SETTABLEKS                       R14 R37 K33 ["mouseClickOverInstance"]
      166 SETTABLEKS                       R17 R37 K34 ["enterText"]
      168 SETTABLEKS                       R15 R37 K35 ["pressKey"]
      170 SETTABLEKS                       R18 R37 K36 ["mouseClickOverInstanceAndEnterText"]
      172 SETTABLEKS                       R19 R37 K37 ["mouseClickOverInstanceWithText"]
      174 SETTABLEKS                       R20 R37 K38 ["toggleCategoryListExpand"]
      176 SETTABLEKS                       R21 R37 K39 ["selectGeneralCategory"]
      178 SETTABLEKS                       R22 R37 K40 ["selectBodyCategory"]
      180 SETTABLEKS                       R23 R37 K41 ["selectMovementCategory"]
      182 SETTABLEKS                       R24 R37 K42 ["selectAccessoriesCategory"]
      184 SETTABLEKS                       R25 R37 K43 ["selectClothingCategory"]
      186 SETTABLEKS                       R27 R37 K44 ["selectAvatarType"]
      188 SETTABLEKS                       R28 R37 K45 ["queryTitledComponentByText"]
      190 SETTABLEKS                       R29 R37 K46 ["queryCheckBoxByText"]
      192 SETTABLEKS                       R30 R37 K47 ["queryRadioButtonByText"]
      194 SETTABLEKS                       R31 R37 K48 ["queryAssetIdSelectorFrom"]
      196 SETTABLEKS                       R32 R37 K49 ["querySliderComponentFrom"]
      198 SETTABLEKS                       R33 R37 K50 ["queryVector3InputComponentFrom"]
      200 SETTABLEKS                       R34 R37 K51 ["queryNumberInputComponentFrom"]
      202 SETTABLEKS                       R36 R37 K52 ["queryPreviewToggleButton"]
      204 SETTABLEKS                       R35 R37 K53 ["findAssetIdComponentAndVerifyId"]
      206 GETUPVAL                         R38 12
      207 SETTABLEKS                       R38 R37 K54 ["findTextBoxFromInstance"]
      209 JUMPIFNOT                        R0 ; [+3]
      210 GETTABLEKS                       R38 R0 K56 ["shouldNotCleanRulesUp"]
      212 JUMPIF                           R38 ; [+1]
      213 LOADB                            R38 0
      214 JUMPIF                           R38 ; [+4]
      215 GETUPVAL                         R39 6
      216 NAMECALL                         R39 R39 K57 ["ClearAllChildren"]
      218 CALL                             R39 1 0
      219 GETUPVAL                         R39 13
      220 CALL                             R39 0 0
      221 GETUPVAL                         R39 14
      222 CALL                             R39 0 0
      223 GETUPVAL                         R39 15
      224 CALL                             R39 0 0
      225 GETUPVAL                         R39 16
      226 CALL                             R39 0 0
      227 GETUPVAL                         R39 17
      228 CALL                             R39 0 0
      229 GETUPVAL                         R39 18
      230 CALL                             R39 0 0
      231 GETUPVAL                         R39 19
      232 CALL                             R39 0 0
      233 GETUPVAL                         R39 1
      234 GETUPVAL                         R40 20
      235 CALL                             R39 1 1
      236 MOVE                             R40 R0
      237 JUMPIF                           R40 ; [+2]
      238 NEWTABLE                         R40 0 0
      240 GETUPVAL                         R41 0
      241 GETTABLEKS                       R41 R41 K24 ["render"]
      243 GETUPVAL                         R42 1
      244 GETUPVAL                         R43 2
      245 DUPTABLE                         R44 K60 [{"node", "setupConfig"}]
      246 SETTABLEKS                       R39 R44 K58 ["node"]
      248 SETTABLEKS                       R40 R44 K59 ["setupConfig"]
      250 CALL                             R42 2 -1
      251 CALL                             R41 -1 1
      252 GETTABLEKS                       R1 R41 K61 ["container"]
      254 GETTABLEKS                       R2 R41 K26 ["unmount"]
      256 GETUPVAL                         R42 3
      257 DUPCLOSURE                       R43 K62 [PROTO_0]
      258 CAPTURE                          UPVAL U4
      259 CALL                             R42 1 0
      260 CLOSEUPVALS                      R1
      261 RETURN                           R37 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K2 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K7 ["StylingService"]
       16 NAMECALL                         R2 R2 K6 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K8 ["VirtualInputManager"]
       22 NAMECALL                         R3 R3 K6 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K10 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Components"]
       31 GETTABLEKS                       R5 R5 K13 ["App"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Components"]
       40 GETTABLEKS                       R6 R6 K14 ["AvatarSettingsProvider"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K10 [require]
       45 GETTABLEKS                       R7 R0 K15 ["Packages"]
       47 GETTABLEKS                       R7 R7 K16 ["Framework"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K10 [require]
       52 GETTABLEKS                       R8 R0 K15 ["Packages"]
       54 GETTABLEKS                       R8 R8 K17 ["Dev"]
       56 GETTABLEKS                       R8 R8 K18 ["JestGlobals"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K10 [require]
       61 GETTABLEKS                       R9 R0 K11 ["Src"]
       63 GETTABLEKS                       R9 R9 K12 ["Components"]
       65 GETTABLEKS                       R9 R9 K19 ["Contexts"]
       67 GETTABLEKS                       R9 R9 K20 ["LoadAnimationProvider"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K10 [require]
       72 GETTABLEKS                       R10 R0 K11 ["Src"]
       74 GETTABLEKS                       R10 R10 K12 ["Components"]
       76 GETTABLEKS                       R10 R10 K21 ["MainView"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K10 [require]
       81 GETTABLEKS                       R11 R0 K11 ["Src"]
       83 GETTABLEKS                       R11 R11 K12 ["Components"]
       85 GETTABLEKS                       R11 R11 K19 ["Contexts"]
       87 GETTABLEKS                       R11 R11 K22 ["PublishProvider"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K10 [require]
       92 GETTABLEKS                       R12 R0 K15 ["Packages"]
       94 GETTABLEKS                       R12 R12 K23 ["React"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K10 [require]
       99 GETTABLEKS                       R13 R0 K15 ["Packages"]
      101 GETTABLEKS                       R13 R13 K24 ["ReactRoblox"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K10 [require]
      106 GETTABLEKS                       R14 R0 K15 ["Packages"]
      108 GETTABLEKS                       R14 R14 K17 ["Dev"]
      110 GETTABLEKS                       R14 R14 K25 ["ReactTestingLibrary"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K10 [require]
      115 GETTABLEKS                       R15 R0 K15 ["Packages"]
      117 GETTABLEKS                       R15 R15 K26 ["ReactUtils"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K10 [require]
      122 GETTABLEKS                       R16 R0 K11 ["Src"]
      124 GETTABLEKS                       R16 R16 K27 ["Flags"]
      126 GETTABLEKS                       R16 R16 K28 ["getFFlagDevFrameworkTextInputRemoveScrollingHack"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K10 [require]
      131 GETTABLEKS                       R17 R0 K11 ["Src"]
      133 GETTABLEKS                       R17 R17 K29 ["tests"]
      135 GETTABLEKS                       R17 R17 K30 ["Util"]
      137 GETTABLEKS                       R17 R17 K31 ["setup"]
      139 GETTABLEKS                       R17 R17 K32 ["mockAssetDmInvokeContextProvider"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K10 [require]
      144 GETTABLEKS                       R18 R0 K11 ["Src"]
      146 GETTABLEKS                       R18 R18 K29 ["tests"]
      148 GETTABLEKS                       R18 R18 K30 ["Util"]
      150 GETTABLEKS                       R18 R18 K31 ["setup"]
      152 GETTABLEKS                       R18 R18 K33 ["mockAssetServiceProvider"]
      154 CALL                             R17 1 1
      155 GETIMPORT                        R18 K10 [require]
      157 GETTABLEKS                       R19 R0 K11 ["Src"]
      159 GETTABLEKS                       R19 R19 K29 ["tests"]
      161 GETTABLEKS                       R19 R19 K30 ["Util"]
      163 GETTABLEKS                       R19 R19 K31 ["setup"]
      165 GETTABLEKS                       R19 R19 K34 ["mockEnableAvatarSettingsProvider"]
      167 CALL                             R18 1 1
      168 GETIMPORT                        R19 K10 [require]
      170 GETTABLEKS                       R20 R0 K11 ["Src"]
      172 GETTABLEKS                       R20 R20 K29 ["tests"]
      174 GETTABLEKS                       R20 R20 K30 ["Util"]
      176 GETTABLEKS                       R20 R20 K31 ["setup"]
      178 GETTABLEKS                       R20 R20 K35 ["mockInsertServiceProvider"]
      180 CALL                             R19 1 1
      181 GETIMPORT                        R20 K10 [require]
      183 GETTABLEKS                       R21 R0 K11 ["Src"]
      185 GETTABLEKS                       R21 R21 K29 ["tests"]
      187 GETTABLEKS                       R21 R21 K30 ["Util"]
      189 GETTABLEKS                       R21 R21 K31 ["setup"]
      191 GETTABLEKS                       R21 R21 K36 ["mockMarketplaceServiceContextProvider"]
      193 CALL                             R20 1 1
      194 GETIMPORT                        R21 K10 [require]
      196 GETTABLEKS                       R22 R0 K11 ["Src"]
      198 GETTABLEKS                       R22 R22 K29 ["tests"]
      200 GETTABLEKS                       R22 R22 K30 ["Util"]
      202 GETTABLEKS                       R22 R22 K31 ["setup"]
      204 GETTABLEKS                       R22 R22 K37 ["mockPublishProvider"]
      206 CALL                             R21 1 1
      207 GETIMPORT                        R22 K10 [require]
      209 GETTABLEKS                       R23 R0 K11 ["Src"]
      211 GETTABLEKS                       R23 R23 K29 ["tests"]
      213 GETTABLEKS                       R23 R23 K30 ["Util"]
      215 GETTABLEKS                       R23 R23 K31 ["setup"]
      217 GETTABLEKS                       R23 R23 K38 ["mockUnsavedChangesDialogProvider"]
      219 CALL                             R22 1 1
      220 GETIMPORT                        R23 K10 [require]
      222 GETTABLEKS                       R24 R0 K11 ["Src"]
      224 GETTABLEKS                       R24 R24 K29 ["tests"]
      226 GETTABLEKS                       R24 R24 K30 ["Util"]
      228 GETTABLEKS                       R24 R24 K39 ["mockInterfaces"]
      230 GETTABLEKS                       R24 R24 K40 ["setupMockAnimatorInterface"]
      232 CALL                             R23 1 1
      233 GETIMPORT                        R24 K10 [require]
      235 GETTABLEKS                       R25 R0 K11 ["Src"]
      237 GETTABLEKS                       R25 R25 K29 ["tests"]
      239 GETTABLEKS                       R25 R25 K30 ["Util"]
      241 GETTABLEKS                       R25 R25 K39 ["mockInterfaces"]
      243 GETTABLEKS                       R25 R25 K41 ["setupMockHumanoidInterface"]
      245 CALL                             R24 1 1
      246 GETIMPORT                        R25 K10 [require]
      248 GETTABLEKS                       R26 R0 K11 ["Src"]
      250 GETTABLEKS                       R26 R26 K29 ["tests"]
      252 GETTABLEKS                       R26 R26 K30 ["Util"]
      254 GETTABLEKS                       R26 R26 K39 ["mockInterfaces"]
      256 GETTABLEKS                       R26 R26 K42 ["setupMockInsertServiceInterface"]
      258 CALL                             R25 1 1
      259 GETIMPORT                        R26 K10 [require]
      261 GETTABLEKS                       R27 R0 K11 ["Src"]
      263 GETTABLEKS                       R27 R27 K29 ["tests"]
      265 GETTABLEKS                       R27 R27 K30 ["Util"]
      267 GETTABLEKS                       R27 R27 K39 ["mockInterfaces"]
      269 GETTABLEKS                       R27 R27 K43 ["setupMockPlacesServiceInterface"]
      271 CALL                             R26 1 1
      272 GETIMPORT                        R27 K10 [require]
      274 GETTABLEKS                       R28 R0 K11 ["Src"]
      276 GETTABLEKS                       R28 R28 K29 ["tests"]
      278 GETTABLEKS                       R28 R28 K30 ["Util"]
      280 GETTABLEKS                       R28 R28 K39 ["mockInterfaces"]
      282 GETTABLEKS                       R28 R28 K44 ["setupMockPluginLocalizationInterface"]
      284 CALL                             R27 1 1
      285 GETIMPORT                        R28 K10 [require]
      287 GETTABLEKS                       R29 R0 K11 ["Src"]
      289 GETTABLEKS                       R29 R29 K29 ["tests"]
      291 GETTABLEKS                       R29 R29 K30 ["Util"]
      293 GETTABLEKS                       R29 R29 K39 ["mockInterfaces"]
      295 GETTABLEKS                       R29 R29 K45 ["setupMockPublishingInterface"]
      297 CALL                             R28 1 1
      298 GETIMPORT                        R29 K10 [require]
      300 GETTABLEKS                       R30 R0 K11 ["Src"]
      302 GETTABLEKS                       R30 R30 K29 ["tests"]
      304 GETTABLEKS                       R30 R30 K30 ["Util"]
      306 GETTABLEKS                       R30 R30 K39 ["mockInterfaces"]
      308 GETTABLEKS                       R30 R30 K46 ["setupMockRegisterPluginStylesInterface"]
      310 CALL                             R29 1 1
      311 GETIMPORT                        R30 K10 [require]
      313 GETTABLEKS                       R31 R0 K11 ["Src"]
      315 GETTABLEKS                       R31 R31 K30 ["Util"]
      317 GETTABLEKS                       R31 R31 K47 ["Telemetry"]
      319 GETTABLEKS                       R31 R31 K48 ["TelemetryContext"]
      321 CALL                             R30 1 1
      322 GETTABLEKS                       R31 R6 K49 ["Styling"]
      324 GETTABLEKS                       R31 R31 K50 ["registerPluginStyles"]
      326 GETTABLEKS                       R32 R12 K51 ["act"]
      328 GETTABLEKS                       R33 R13 K52 ["screen"]
      330 GETTABLEKS                       R34 R6 K53 ["TestHelpers"]
      332 GETTABLEKS                       R35 R6 K54 ["ContextServices"]
      334 GETTABLEKS                       R36 R7 K55 ["expect"]
      336 GETTABLEKS                       R37 R11 K56 ["createElement"]
      338 DUPCLOSURE                       R38 K57 [PROTO_1]
      339 CAPTURE                          VAL R32
      340 CAPTURE                          VAL R2
      341 DUPCLOSURE                       R39 K58 [PROTO_2]
      342 CAPTURE                          VAL R15
      343 DUPCLOSURE                       R40 K59 [PROTO_5]
      344 CAPTURE                          VAL R11
      345 CAPTURE                          VAL R32
      346 CAPTURE                          VAL R2
      347 CAPTURE                          VAL R37
      348 CAPTURE                          VAL R34
      349 CAPTURE                          VAL R35
      350 CAPTURE                          VAL R30
      351 CAPTURE                          VAL R14
      352 CAPTURE                          VAL R18
      353 CAPTURE                          VAL R16
      354 CAPTURE                          VAL R20
      355 CAPTURE                          VAL R19
      356 CAPTURE                          VAL R17
      357 CAPTURE                          VAL R22
      358 CAPTURE                          VAL R8
      359 CAPTURE                          VAL R5
      360 CAPTURE                          VAL R10
      361 CAPTURE                          VAL R21
      362 CAPTURE                          VAL R31
      363 CAPTURE                          VAL R0
      364 DUPCLOSURE                       R41 K60 [PROTO_61]
      365 CAPTURE                          VAL R13
      366 CAPTURE                          VAL R37
      367 CAPTURE                          VAL R40
      368 CAPTURE                          VAL R32
      369 CAPTURE                          VAL R2
      370 CAPTURE                          VAL R4
      371 CAPTURE                          VAL R1
      372 CAPTURE                          VAL R3
      373 CAPTURE                          VAL R33
      374 CAPTURE                          VAL R15
      375 CAPTURE                          VAL R36
      376 CAPTURE                          VAL R38
      377 CAPTURE                          VAL R39
      378 CAPTURE                          VAL R24
      379 CAPTURE                          VAL R25
      380 CAPTURE                          VAL R23
      381 CAPTURE                          VAL R28
      382 CAPTURE                          VAL R29
      383 CAPTURE                          VAL R26
      384 CAPTURE                          VAL R27
      385 CAPTURE                          VAL R9
      386 RETURN                           R41 1
