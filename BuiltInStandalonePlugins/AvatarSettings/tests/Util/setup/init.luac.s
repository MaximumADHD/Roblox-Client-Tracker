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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useEffect"]
        3 DUPCLOSURE                       R2 K1 [PROTO_3]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["useRef"]
       12 LOADNIL                          R2
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["useState"]
       17 LOADNIL                          R3
       18 CALL                             R2 1 2
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K0 ["useEffect"]
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
       37 DUPTABLE                         R7 K12 [{"Content"}]
       38 MOVE                             R8 R2
       39 JUMPIFNOT                        R8 ; [+100]
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R8 R9 K13 ["provideMockContext"]
       43 NEWTABLE                         R9 0 2
       45 GETUPVAL                         R12 5
       46 GETTABLEKS                       R11 R12 K14 ["Focus"]
       48 GETTABLEKS                       R10 R11 K15 ["new"]
       50 MOVE                             R11 R2
       51 CALL                             R10 1 1
       52 GETUPVAL                         R12 6
       53 GETTABLEKS                       R11 R12 K16 ["mock"]
       55 CALL                             R11 0 -1
       56 SETLIST                          R9 R10 -1 [1]
       58 DUPTABLE                         R10 K19 [{"ContextStack", "StyleLink"}]
       59 GETUPVAL                         R11 3
       60 GETUPVAL                         R13 7
       61 GETTABLEKS                       R12 R13 K17 ["ContextStack"]
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
       90 GETTABLEKS                       R25 R0 K22 ["setupConfig"]
       92 GETTABLEKS                       R24 R25 K23 ["doNotMockPublishProvider"]
       94 JUMPIFNOT                        R24 ; [+4]
       95 GETUPVAL                         R23 3
       96 GETUPVAL                         R24 16
       97 CALL                             R23 1 1
       98 JUMP                             ; [+10]
       99 GETUPVAL                         R23 3
      100 GETUPVAL                         R24 17
      101 DUPTABLE                         R25 K25 [{"databaseLoaded"}]
      102 GETTABLEKS                       R27 R0 K22 ["setupConfig"]
      104 GETTABLEKS                       R26 R27 K24 ["databaseLoaded"]
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
      121 SETTABLEKS                       R11 R10 K17 ["ContextStack"]
      123 GETUPVAL                         R11 3
      124 LOADK                            R12 K18 ["StyleLink"]
      125 DUPTABLE                         R13 K28 [{"StyleSheet"}]
      126 GETUPVAL                         R14 18
      127 GETUPVAL                         R15 19
      128 LOADK                            R17 K29 ["Plugin"]
      129 NAMECALL                         R15 R15 K30 ["FindFirstAncestorWhichIsA"]
      131 CALL                             R15 2 1
      132 GETUPVAL                         R16 19
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K27 ["StyleSheet"]
      136 CALL                             R11 2 1
      137 SETTABLEKS                       R11 R10 K18 ["StyleLink"]
      139 CALL                             R8 2 1
      140 SETTABLEKS                       R8 R7 K11 ["Content"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["render"]
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
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K0 ["render"]
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
       10 GETIMPORT                        R1 K7 [Vector2.new]
       12 GETTABLEKS                       R4 R0 K8 ["AbsolutePosition"]
       14 GETTABLEKS                       R3 R4 K9 ["X"]
       16 GETTABLEKS                       R6 R0 K11 ["AbsoluteSize"]
       18 GETTABLEKS                       R5 R6 K9 ["X"]
       20 DIVK                             R4 R5 K10 [2]
       21 ADD                              R2 R3 R4
       22 GETTABLEKS                       R5 R0 K8 ["AbsolutePosition"]
       24 GETTABLEKS                       R4 R5 K12 ["Y"]
       26 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       28 GETTABLEKS                       R6 R7 K12 ["Y"]
       30 DIVK                             R5 R6 K10 [2]
       31 ADD                              R3 R4 R5
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["X"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["Y"]
       11 GETUPVAL                         R5 2
       12 JUMPIFNOTEQKS                    R5 K3 ["left"] ; [+3]
       14 LOADN                            R4 0
       15 JUMP                             ; [+1]
       16 LOADN                            R4 1
       17 GETUPVAL                         R5 3
       18 LOADNIL                          R6
       19 LOADN                            R7 1
       20 NAMECALL                         R0 R0 K4 ["SendMouseButtonEvent"]
       22 CALL                             R0 7 0
       23 GETUPVAL                         R0 0
       24 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_16]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
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
       15 GETIMPORT                        R2 K8 [Vector2.new]
       17 GETTABLEKS                       R5 R1 K9 ["AbsolutePosition"]
       19 GETTABLEKS                       R4 R5 K10 ["X"]
       21 GETTABLEKS                       R7 R1 K12 ["AbsoluteSize"]
       23 GETTABLEKS                       R6 R7 K10 ["X"]
       25 DIVK                             R5 R6 K11 [2]
       26 ADD                              R3 R4 R5
       27 GETTABLEKS                       R6 R1 K9 ["AbsolutePosition"]
       29 GETTABLEKS                       R5 R6 K13 ["Y"]
       31 GETTABLEKS                       R8 R1 K12 ["AbsoluteSize"]
       33 GETTABLEKS                       R7 R8 K13 ["Y"]
       35 DIVK                             R6 R7 K11 [2]
       36 ADD                              R4 R5 R6
       37 CALL                             R2 2 1
       38 MOVE                             R0 R2
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R3 R0 K10 ["X"]
       42 GETTABLEKS                       R4 R0 K13 ["Y"]
       44 LOADNIL                          R5
       45 NAMECALL                         R1 R1 K14 ["SendMouseMoveEvent"]
       47 CALL                             R1 4 0
       48 GETUPVAL                         R1 0
       49 NAMECALL                         R1 R1 K0 ["WaitForInputEventsProcessed"]
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 LOADK                            R6 K0 ["GuiObject"]
        1 NAMECALL                         R4 R0 K1 ["IsA"]
        3 CALL                             R4 2 1
        4 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        6 LOADK                            R5 K2 ["Instance must be a GuiObject"]
        7 GETIMPORT                        R3 K4 [assert]
        9 CALL                             R3 2 0
       10 GETIMPORT                        R2 K7 [Vector2.new]
       12 GETTABLEKS                       R5 R0 K8 ["AbsolutePosition"]
       14 GETTABLEKS                       R4 R5 K9 ["X"]
       16 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R7 K9 ["X"]
       20 DIVK                             R5 R6 K10 [2]
       21 ADD                              R3 R4 R5
       22 GETTABLEKS                       R6 R0 K8 ["AbsolutePosition"]
       24 GETTABLEKS                       R5 R6 K12 ["Y"]
       26 GETTABLEKS                       R8 R0 K11 ["AbsoluteSize"]
       28 GETTABLEKS                       R7 R8 K12 ["Y"]
       30 DIVK                             R6 R7 K10 [2]
       31 ADD                              R4 R5 R6
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R1 ; [+2]
       34 LOADK                            R3 K13 ["right"]
       35 JUMP                             ; [+1]
       36 LOADK                            R3 K14 ["left"]
       37 GETUPVAL                         R4 0
       38 LOADB                            R6 1
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R6
       44 CALL                             R4 1 0
       45 JUMPIFNOT                        R1 ; [+2]
       46 LOADK                            R3 K13 ["right"]
       47 JUMP                             ; [+1]
       48 LOADK                            R3 K14 ["left"]
       49 GETUPVAL                         R4 0
       50 LOADB                            R6 0
       51 NEWCLOSURE                       R5 P0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CALL                             R4 1 0
       57 RETURN                           R0 0

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
        0 LOADK                            R6 K0 ["GuiObject"]
        1 NAMECALL                         R4 R0 K1 ["IsA"]
        3 CALL                             R4 2 1
        4 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        6 LOADK                            R5 K2 ["Instance must be a GuiObject"]
        7 GETIMPORT                        R3 K4 [assert]
        9 CALL                             R3 2 0
       10 GETIMPORT                        R2 K7 [Vector2.new]
       12 GETTABLEKS                       R5 R0 K8 ["AbsolutePosition"]
       14 GETTABLEKS                       R4 R5 K9 ["X"]
       16 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R7 K9 ["X"]
       20 DIVK                             R5 R6 K10 [2]
       21 ADD                              R3 R4 R5
       22 GETTABLEKS                       R6 R0 K8 ["AbsolutePosition"]
       24 GETTABLEKS                       R5 R6 K12 ["Y"]
       26 GETTABLEKS                       R8 R0 K11 ["AbsoluteSize"]
       28 GETTABLEKS                       R7 R8 K12 ["Y"]
       30 DIVK                             R6 R7 K10 [2]
       31 ADD                              R4 R5 R6
       32 CALL                             R2 2 1
       33 GETUPVAL                         R3 0
       34 LOADK                            R5 K13 ["left"]
       35 LOADB                            R6 1
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 0
       43 LOADK                            R5 K13 ["left"]
       44 LOADB                            R6 0
       45 NEWCLOSURE                       R4 P0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CALL                             R3 1 0
       51 GETUPVAL                         R2 0
       52 DUPCLOSURE                       R3 K14 [PROTO_23]
       53 CAPTURE                          UPVAL U1
       54 CALL                             R2 1 0
       55 GETUPVAL                         R2 0
       56 NEWCLOSURE                       R3 P2
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R1
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getByText"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"exact"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K1 ["exact"]
        8 CALL                             R1 2 2
        9 LOADK                            R7 K3 ["GuiObject"]
       10 NAMECALL                         R5 R1 K4 ["IsA"]
       12 CALL                             R5 2 1
       13 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       15 LOADK                            R6 K5 ["Instance must be a GuiObject"]
       16 GETIMPORT                        R4 K7 [assert]
       18 CALL                             R4 2 0
       19 GETIMPORT                        R3 K10 [Vector2.new]
       21 GETTABLEKS                       R6 R1 K11 ["AbsolutePosition"]
       23 GETTABLEKS                       R5 R6 K12 ["X"]
       25 GETTABLEKS                       R8 R1 K14 ["AbsoluteSize"]
       27 GETTABLEKS                       R7 R8 K12 ["X"]
       29 DIVK                             R6 R7 K13 [2]
       30 ADD                              R4 R5 R6
       31 GETTABLEKS                       R7 R1 K11 ["AbsolutePosition"]
       33 GETTABLEKS                       R6 R7 K15 ["Y"]
       35 GETTABLEKS                       R9 R1 K14 ["AbsoluteSize"]
       37 GETTABLEKS                       R8 R9 K15 ["Y"]
       39 DIVK                             R7 R8 K13 [2]
       40 ADD                              R5 R6 R7
       41 CALL                             R3 2 1
       42 JUMPIFNOT                        R2 ; [+2]
       43 LOADK                            R4 K16 ["right"]
       44 JUMP                             ; [+1]
       45 LOADK                            R4 K17 ["left"]
       46 GETUPVAL                         R5 1
       47 LOADB                            R7 1
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R7
       53 CALL                             R5 1 0
       54 JUMPIFNOT                        R2 ; [+2]
       55 LOADK                            R4 K16 ["right"]
       56 JUMP                             ; [+1]
       57 LOADK                            R4 K17 ["left"]
       58 GETUPVAL                         R5 1
       59 LOADB                            R7 0
       60 NEWCLOSURE                       R6 P0
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R7
       65 CALL                             R5 1 0
       66 GETUPVAL                         R1 1
       67 DUPCLOSURE                       R2 K18 [PROTO_0]
       68 CAPTURE                          UPVAL U3
       69 CALL                             R1 1 0
       70 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["queryByTestId"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R2 K1 ["CategoryListExpand"]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K2 ["CategoryListCollapse"]
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 LOADK                            R6 K3 ["GuiObject"]
       11 NAMECALL                         R4 R1 K4 ["IsA"]
       13 CALL                             R4 2 1
       14 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       16 LOADK                            R5 K5 ["Instance must be a GuiObject"]
       17 GETIMPORT                        R3 K7 [assert]
       19 CALL                             R3 2 0
       20 GETIMPORT                        R2 K10 [Vector2.new]
       22 GETTABLEKS                       R5 R1 K11 ["AbsolutePosition"]
       24 GETTABLEKS                       R4 R5 K12 ["X"]
       26 GETTABLEKS                       R7 R1 K14 ["AbsoluteSize"]
       28 GETTABLEKS                       R6 R7 K12 ["X"]
       30 DIVK                             R5 R6 K13 [2]
       31 ADD                              R3 R4 R5
       32 GETTABLEKS                       R6 R1 K11 ["AbsolutePosition"]
       34 GETTABLEKS                       R5 R6 K15 ["Y"]
       36 GETTABLEKS                       R8 R1 K14 ["AbsoluteSize"]
       38 GETTABLEKS                       R7 R8 K15 ["Y"]
       40 DIVK                             R6 R7 K13 [2]
       41 ADD                              R4 R5 R6
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 1
       44 LOADK                            R5 K16 ["left"]
       45 LOADB                            R6 1
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CALL                             R3 1 0
       52 GETUPVAL                         R3 1
       53 LOADK                            R5 K16 ["left"]
       54 LOADB                            R6 0
       55 NEWCLOSURE                       R4 P0
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CALL                             R3 1 0
       61 GETUPVAL                         R2 1
       62 DUPCLOSURE                       R3 K17 [PROTO_0]
       63 CAPTURE                          UPVAL U3
       64 CALL                             R2 1 0
       65 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+55]
        7 LOADK                            R5 K2 ["GuiObject"]
        8 NAMECALL                         R3 R0 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       13 LOADK                            R4 K4 ["Instance must be a GuiObject"]
       14 GETIMPORT                        R2 K6 [assert]
       16 CALL                             R2 2 0
       17 GETIMPORT                        R1 K9 [Vector2.new]
       19 GETTABLEKS                       R4 R0 K10 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R4 K11 ["X"]
       23 GETTABLEKS                       R6 R0 K13 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K11 ["X"]
       27 DIVK                             R4 R5 K12 [2]
       28 ADD                              R2 R3 R4
       29 GETTABLEKS                       R5 R0 K10 ["AbsolutePosition"]
       31 GETTABLEKS                       R4 R5 K14 ["Y"]
       33 GETTABLEKS                       R7 R0 K13 ["AbsoluteSize"]
       35 GETTABLEKS                       R6 R7 K14 ["Y"]
       37 DIVK                             R5 R6 K12 [2]
       38 ADD                              R3 R4 R5
       39 CALL                             R1 2 1
       40 GETUPVAL                         R2 1
       41 LOADK                            R4 K15 ["left"]
       42 LOADB                            R5 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 1
       50 LOADK                            R4 K15 ["left"]
       51 LOADB                            R5 0
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CALL                             R2 1 0
       58 GETUPVAL                         R1 1
       59 DUPCLOSURE                       R2 K16 [PROTO_0]
       60 CAPTURE                          UPVAL U3
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R0 R1 K17 ["queryByText"]
       65 LOADK                            R1 K18 ["CategoryList.General"]
       66 DUPTABLE                         R2 K20 [{"exact"}]
       67 LOADB                            R3 0
       68 SETTABLEKS                       R3 R2 K19 ["exact"]
       70 CALL                             R0 2 1
       71 JUMPIF                           R0 ; [+8]
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R1 R2 K0 ["queryByTestId"]
       75 LOADK                            R2 K21 ["GeneralCategoryImage"]
       76 CALL                             R1 1 1
       77 MOVE                             R0 R1
       78 JUMPIF                           R0 ; [+1]
       79 RETURN                           R0 0
       80 MOVE                             R1 R0
       81 LOADK                            R6 K2 ["GuiObject"]
       82 NAMECALL                         R4 R1 K3 ["IsA"]
       84 CALL                             R4 2 1
       85 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       87 LOADK                            R5 K4 ["Instance must be a GuiObject"]
       88 GETIMPORT                        R3 K6 [assert]
       90 CALL                             R3 2 0
       91 GETIMPORT                        R2 K9 [Vector2.new]
       93 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       95 GETTABLEKS                       R4 R5 K11 ["X"]
       97 GETTABLEKS                       R7 R1 K13 ["AbsoluteSize"]
       99 GETTABLEKS                       R6 R7 K11 ["X"]
      101 DIVK                             R5 R6 K12 [2]
      102 ADD                              R3 R4 R5
      103 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
      105 GETTABLEKS                       R5 R6 K14 ["Y"]
      107 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
      109 GETTABLEKS                       R7 R8 K14 ["Y"]
      111 DIVK                             R6 R7 K12 [2]
      112 ADD                              R4 R5 R6
      113 CALL                             R2 2 1
      114 GETUPVAL                         R3 1
      115 LOADK                            R5 K15 ["left"]
      116 LOADB                            R6 1
      117 NEWCLOSURE                       R4 P0
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R6
      122 CALL                             R3 1 0
      123 GETUPVAL                         R3 1
      124 LOADK                            R5 K15 ["left"]
      125 LOADB                            R6 0
      126 NEWCLOSURE                       R4 P0
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 CALL                             R3 1 0
      132 GETUPVAL                         R1 1
      133 DUPCLOSURE                       R2 K16 [PROTO_0]
      134 CAPTURE                          UPVAL U3
      135 CALL                             R1 1 0
      136 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+55]
        7 LOADK                            R5 K2 ["GuiObject"]
        8 NAMECALL                         R3 R0 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       13 LOADK                            R4 K4 ["Instance must be a GuiObject"]
       14 GETIMPORT                        R2 K6 [assert]
       16 CALL                             R2 2 0
       17 GETIMPORT                        R1 K9 [Vector2.new]
       19 GETTABLEKS                       R4 R0 K10 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R4 K11 ["X"]
       23 GETTABLEKS                       R6 R0 K13 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K11 ["X"]
       27 DIVK                             R4 R5 K12 [2]
       28 ADD                              R2 R3 R4
       29 GETTABLEKS                       R5 R0 K10 ["AbsolutePosition"]
       31 GETTABLEKS                       R4 R5 K14 ["Y"]
       33 GETTABLEKS                       R7 R0 K13 ["AbsoluteSize"]
       35 GETTABLEKS                       R6 R7 K14 ["Y"]
       37 DIVK                             R5 R6 K12 [2]
       38 ADD                              R3 R4 R5
       39 CALL                             R1 2 1
       40 GETUPVAL                         R2 1
       41 LOADK                            R4 K15 ["left"]
       42 LOADB                            R5 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 1
       50 LOADK                            R4 K15 ["left"]
       51 LOADB                            R5 0
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CALL                             R2 1 0
       58 GETUPVAL                         R1 1
       59 DUPCLOSURE                       R2 K16 [PROTO_0]
       60 CAPTURE                          UPVAL U3
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R0 R1 K17 ["queryByText"]
       65 LOADK                            R1 K18 ["CategoryList.Body"]
       66 DUPTABLE                         R2 K20 [{"exact"}]
       67 LOADB                            R3 0
       68 SETTABLEKS                       R3 R2 K19 ["exact"]
       70 CALL                             R0 2 1
       71 JUMPIF                           R0 ; [+9]
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R1 R2 K0 ["queryByTestId"]
       75 LOADK                            R2 K21 ["BodyCategoryImage"]
       76 CALL                             R1 1 1
       77 MOVE                             R0 R1
       78 JUMPIF                           R0 ; [+1]
       79 RETURN                           R0 0
       80 RETURN                           R0 0
       81 MOVE                             R1 R0
       82 LOADK                            R6 K2 ["GuiObject"]
       83 NAMECALL                         R4 R1 K3 ["IsA"]
       85 CALL                             R4 2 1
       86 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       88 LOADK                            R5 K4 ["Instance must be a GuiObject"]
       89 GETIMPORT                        R3 K6 [assert]
       91 CALL                             R3 2 0
       92 GETIMPORT                        R2 K9 [Vector2.new]
       94 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       96 GETTABLEKS                       R4 R5 K11 ["X"]
       98 GETTABLEKS                       R7 R1 K13 ["AbsoluteSize"]
      100 GETTABLEKS                       R6 R7 K11 ["X"]
      102 DIVK                             R5 R6 K12 [2]
      103 ADD                              R3 R4 R5
      104 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
      106 GETTABLEKS                       R5 R6 K14 ["Y"]
      108 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
      110 GETTABLEKS                       R7 R8 K14 ["Y"]
      112 DIVK                             R6 R7 K12 [2]
      113 ADD                              R4 R5 R6
      114 CALL                             R2 2 1
      115 GETUPVAL                         R3 1
      116 LOADK                            R5 K15 ["left"]
      117 LOADB                            R6 1
      118 NEWCLOSURE                       R4 P0
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R6
      123 CALL                             R3 1 0
      124 GETUPVAL                         R3 1
      125 LOADK                            R5 K15 ["left"]
      126 LOADB                            R6 0
      127 NEWCLOSURE                       R4 P0
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R6
      132 CALL                             R3 1 0
      133 GETUPVAL                         R1 1
      134 DUPCLOSURE                       R2 K16 [PROTO_0]
      135 CAPTURE                          UPVAL U3
      136 CALL                             R1 1 0
      137 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+55]
        7 LOADK                            R5 K2 ["GuiObject"]
        8 NAMECALL                         R3 R0 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       13 LOADK                            R4 K4 ["Instance must be a GuiObject"]
       14 GETIMPORT                        R2 K6 [assert]
       16 CALL                             R2 2 0
       17 GETIMPORT                        R1 K9 [Vector2.new]
       19 GETTABLEKS                       R4 R0 K10 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R4 K11 ["X"]
       23 GETTABLEKS                       R6 R0 K13 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K11 ["X"]
       27 DIVK                             R4 R5 K12 [2]
       28 ADD                              R2 R3 R4
       29 GETTABLEKS                       R5 R0 K10 ["AbsolutePosition"]
       31 GETTABLEKS                       R4 R5 K14 ["Y"]
       33 GETTABLEKS                       R7 R0 K13 ["AbsoluteSize"]
       35 GETTABLEKS                       R6 R7 K14 ["Y"]
       37 DIVK                             R5 R6 K12 [2]
       38 ADD                              R3 R4 R5
       39 CALL                             R1 2 1
       40 GETUPVAL                         R2 1
       41 LOADK                            R4 K15 ["left"]
       42 LOADB                            R5 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 1
       50 LOADK                            R4 K15 ["left"]
       51 LOADB                            R5 0
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CALL                             R2 1 0
       58 GETUPVAL                         R1 1
       59 DUPCLOSURE                       R2 K16 [PROTO_0]
       60 CAPTURE                          UPVAL U3
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R0 R1 K17 ["queryByText"]
       65 LOADK                            R1 K18 ["CategoryList.Movement"]
       66 DUPTABLE                         R2 K20 [{"exact"}]
       67 LOADB                            R3 0
       68 SETTABLEKS                       R3 R2 K19 ["exact"]
       70 CALL                             R0 2 1
       71 JUMPIF                           R0 ; [+8]
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R1 R2 K0 ["queryByTestId"]
       75 LOADK                            R2 K21 ["BodyCategoryImage"]
       76 CALL                             R1 1 1
       77 MOVE                             R0 R1
       78 JUMPIF                           R0 ; [+1]
       79 RETURN                           R0 0
       80 MOVE                             R1 R0
       81 LOADK                            R6 K2 ["GuiObject"]
       82 NAMECALL                         R4 R1 K3 ["IsA"]
       84 CALL                             R4 2 1
       85 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       87 LOADK                            R5 K4 ["Instance must be a GuiObject"]
       88 GETIMPORT                        R3 K6 [assert]
       90 CALL                             R3 2 0
       91 GETIMPORT                        R2 K9 [Vector2.new]
       93 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       95 GETTABLEKS                       R4 R5 K11 ["X"]
       97 GETTABLEKS                       R7 R1 K13 ["AbsoluteSize"]
       99 GETTABLEKS                       R6 R7 K11 ["X"]
      101 DIVK                             R5 R6 K12 [2]
      102 ADD                              R3 R4 R5
      103 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
      105 GETTABLEKS                       R5 R6 K14 ["Y"]
      107 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
      109 GETTABLEKS                       R7 R8 K14 ["Y"]
      111 DIVK                             R6 R7 K12 [2]
      112 ADD                              R4 R5 R6
      113 CALL                             R2 2 1
      114 GETUPVAL                         R3 1
      115 LOADK                            R5 K15 ["left"]
      116 LOADB                            R6 1
      117 NEWCLOSURE                       R4 P0
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R6
      122 CALL                             R3 1 0
      123 GETUPVAL                         R3 1
      124 LOADK                            R5 K15 ["left"]
      125 LOADB                            R6 0
      126 NEWCLOSURE                       R4 P0
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 CALL                             R3 1 0
      132 GETUPVAL                         R1 1
      133 DUPCLOSURE                       R2 K16 [PROTO_0]
      134 CAPTURE                          UPVAL U3
      135 CALL                             R1 1 0
      136 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+55]
        7 LOADK                            R5 K2 ["GuiObject"]
        8 NAMECALL                         R3 R0 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       13 LOADK                            R4 K4 ["Instance must be a GuiObject"]
       14 GETIMPORT                        R2 K6 [assert]
       16 CALL                             R2 2 0
       17 GETIMPORT                        R1 K9 [Vector2.new]
       19 GETTABLEKS                       R4 R0 K10 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R4 K11 ["X"]
       23 GETTABLEKS                       R6 R0 K13 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K11 ["X"]
       27 DIVK                             R4 R5 K12 [2]
       28 ADD                              R2 R3 R4
       29 GETTABLEKS                       R5 R0 K10 ["AbsolutePosition"]
       31 GETTABLEKS                       R4 R5 K14 ["Y"]
       33 GETTABLEKS                       R7 R0 K13 ["AbsoluteSize"]
       35 GETTABLEKS                       R6 R7 K14 ["Y"]
       37 DIVK                             R5 R6 K12 [2]
       38 ADD                              R3 R4 R5
       39 CALL                             R1 2 1
       40 GETUPVAL                         R2 1
       41 LOADK                            R4 K15 ["left"]
       42 LOADB                            R5 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 1
       50 LOADK                            R4 K15 ["left"]
       51 LOADB                            R5 0
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CALL                             R2 1 0
       58 GETUPVAL                         R1 1
       59 DUPCLOSURE                       R2 K16 [PROTO_0]
       60 CAPTURE                          UPVAL U3
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R0 R1 K17 ["queryByText"]
       65 LOADK                            R1 K18 ["CategoryList.Accessories"]
       66 DUPTABLE                         R2 K20 [{"exact"}]
       67 LOADB                            R3 0
       68 SETTABLEKS                       R3 R2 K19 ["exact"]
       70 CALL                             R0 2 1
       71 JUMPIF                           R0 ; [+8]
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R1 R2 K0 ["queryByTestId"]
       75 LOADK                            R2 K21 ["BodyCategoryImage"]
       76 CALL                             R1 1 1
       77 MOVE                             R0 R1
       78 JUMPIF                           R0 ; [+1]
       79 RETURN                           R0 0
       80 MOVE                             R1 R0
       81 LOADK                            R6 K2 ["GuiObject"]
       82 NAMECALL                         R4 R1 K3 ["IsA"]
       84 CALL                             R4 2 1
       85 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       87 LOADK                            R5 K4 ["Instance must be a GuiObject"]
       88 GETIMPORT                        R3 K6 [assert]
       90 CALL                             R3 2 0
       91 GETIMPORT                        R2 K9 [Vector2.new]
       93 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       95 GETTABLEKS                       R4 R5 K11 ["X"]
       97 GETTABLEKS                       R7 R1 K13 ["AbsoluteSize"]
       99 GETTABLEKS                       R6 R7 K11 ["X"]
      101 DIVK                             R5 R6 K12 [2]
      102 ADD                              R3 R4 R5
      103 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
      105 GETTABLEKS                       R5 R6 K14 ["Y"]
      107 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
      109 GETTABLEKS                       R7 R8 K14 ["Y"]
      111 DIVK                             R6 R7 K12 [2]
      112 ADD                              R4 R5 R6
      113 CALL                             R2 2 1
      114 GETUPVAL                         R3 1
      115 LOADK                            R5 K15 ["left"]
      116 LOADB                            R6 1
      117 NEWCLOSURE                       R4 P0
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R6
      122 CALL                             R3 1 0
      123 GETUPVAL                         R3 1
      124 LOADK                            R5 K15 ["left"]
      125 LOADB                            R6 0
      126 NEWCLOSURE                       R4 P0
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 CALL                             R3 1 0
      132 GETUPVAL                         R1 1
      133 DUPCLOSURE                       R2 K16 [PROTO_0]
      134 CAPTURE                          UPVAL U3
      135 CALL                             R1 1 0
      136 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["queryByTestId"]
        3 LOADK                            R1 K1 ["CategoryListExpand"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 JUMP                             ; [+55]
        7 LOADK                            R5 K2 ["GuiObject"]
        8 NAMECALL                         R3 R0 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       13 LOADK                            R4 K4 ["Instance must be a GuiObject"]
       14 GETIMPORT                        R2 K6 [assert]
       16 CALL                             R2 2 0
       17 GETIMPORT                        R1 K9 [Vector2.new]
       19 GETTABLEKS                       R4 R0 K10 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R4 K11 ["X"]
       23 GETTABLEKS                       R6 R0 K13 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K11 ["X"]
       27 DIVK                             R4 R5 K12 [2]
       28 ADD                              R2 R3 R4
       29 GETTABLEKS                       R5 R0 K10 ["AbsolutePosition"]
       31 GETTABLEKS                       R4 R5 K14 ["Y"]
       33 GETTABLEKS                       R7 R0 K13 ["AbsoluteSize"]
       35 GETTABLEKS                       R6 R7 K14 ["Y"]
       37 DIVK                             R5 R6 K12 [2]
       38 ADD                              R3 R4 R5
       39 CALL                             R1 2 1
       40 GETUPVAL                         R2 1
       41 LOADK                            R4 K15 ["left"]
       42 LOADB                            R5 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 1
       50 LOADK                            R4 K15 ["left"]
       51 LOADB                            R5 0
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CALL                             R2 1 0
       58 GETUPVAL                         R1 1
       59 DUPCLOSURE                       R2 K16 [PROTO_0]
       60 CAPTURE                          UPVAL U3
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R0 R1 K17 ["queryByText"]
       65 LOADK                            R1 K18 ["CategoryList.Clothing"]
       66 DUPTABLE                         R2 K20 [{"exact"}]
       67 LOADB                            R3 0
       68 SETTABLEKS                       R3 R2 K19 ["exact"]
       70 CALL                             R0 2 1
       71 JUMPIF                           R0 ; [+8]
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R1 R2 K0 ["queryByTestId"]
       75 LOADK                            R2 K21 ["BodyCategoryImage"]
       76 CALL                             R1 1 1
       77 MOVE                             R0 R1
       78 JUMPIF                           R0 ; [+1]
       79 RETURN                           R0 0
       80 MOVE                             R1 R0
       81 LOADK                            R6 K2 ["GuiObject"]
       82 NAMECALL                         R4 R1 K3 ["IsA"]
       84 CALL                             R4 2 1
       85 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       87 LOADK                            R5 K4 ["Instance must be a GuiObject"]
       88 GETIMPORT                        R3 K6 [assert]
       90 CALL                             R3 2 0
       91 GETIMPORT                        R2 K9 [Vector2.new]
       93 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       95 GETTABLEKS                       R4 R5 K11 ["X"]
       97 GETTABLEKS                       R7 R1 K13 ["AbsoluteSize"]
       99 GETTABLEKS                       R6 R7 K11 ["X"]
      101 DIVK                             R5 R6 K12 [2]
      102 ADD                              R3 R4 R5
      103 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
      105 GETTABLEKS                       R5 R6 K14 ["Y"]
      107 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
      109 GETTABLEKS                       R7 R8 K14 ["Y"]
      111 DIVK                             R6 R7 K12 [2]
      112 ADD                              R4 R5 R6
      113 CALL                             R2 2 1
      114 GETUPVAL                         R3 1
      115 LOADK                            R5 K15 ["left"]
      116 LOADB                            R6 1
      117 NEWCLOSURE                       R4 P0
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R6
      122 CALL                             R3 1 0
      123 GETUPVAL                         R3 1
      124 LOADK                            R5 K15 ["left"]
      125 LOADB                            R6 0
      126 NEWCLOSURE                       R4 P0
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 CALL                             R3 1 0
      132 GETUPVAL                         R1 1
      133 DUPCLOSURE                       R2 K16 [PROTO_0]
      134 CAPTURE                          UPVAL U3
      135 CALL                             R1 1 0
      136 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getByTestId"]
        3 LOADK                            R2 K1 ["AvatarTypeDropdownToggleButton"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADK                            R6 K2 ["GuiObject"]
        8 NAMECALL                         R4 R1 K3 ["IsA"]
       10 CALL                             R4 2 1
       11 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       13 LOADK                            R5 K4 ["Instance must be a GuiObject"]
       14 GETIMPORT                        R3 K6 [assert]
       16 CALL                             R3 2 0
       17 GETIMPORT                        R2 K9 [Vector2.new]
       19 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       21 GETTABLEKS                       R4 R5 K11 ["X"]
       23 GETTABLEKS                       R7 R1 K13 ["AbsoluteSize"]
       25 GETTABLEKS                       R6 R7 K11 ["X"]
       27 DIVK                             R5 R6 K12 [2]
       28 ADD                              R3 R4 R5
       29 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
       31 GETTABLEKS                       R5 R6 K14 ["Y"]
       33 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
       35 GETTABLEKS                       R7 R8 K14 ["Y"]
       37 DIVK                             R6 R7 K12 [2]
       38 ADD                              R4 R5 R6
       39 CALL                             R2 2 1
       40 GETUPVAL                         R3 1
       41 LOADK                            R5 K15 ["left"]
       42 LOADB                            R6 1
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CALL                             R3 1 0
       49 GETUPVAL                         R3 1
       50 LOADK                            R5 K15 ["left"]
       51 LOADB                            R6 0
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CALL                             R3 1 0
       58 GETUPVAL                         R2 1
       59 DUPCLOSURE                       R3 K16 [PROTO_0]
       60 CAPTURE                          UPVAL U3
       61 CALL                             R2 1 0
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R2 R3 K17 ["getByText"]
       65 GETUPVAL                         R4 4
       66 GETTABLE                         R3 R4 R0
       67 DUPTABLE                         R4 K19 [{"exact"}]
       68 LOADB                            R5 0
       69 SETTABLEKS                       R5 R4 K18 ["exact"]
       71 CALL                             R2 2 2
       72 LOADK                            R8 K2 ["GuiObject"]
       73 NAMECALL                         R6 R2 K3 ["IsA"]
       75 CALL                             R6 2 1
       76 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       78 LOADK                            R7 K4 ["Instance must be a GuiObject"]
       79 GETIMPORT                        R5 K6 [assert]
       81 CALL                             R5 2 0
       82 GETIMPORT                        R4 K9 [Vector2.new]
       84 GETTABLEKS                       R7 R2 K10 ["AbsolutePosition"]
       86 GETTABLEKS                       R6 R7 K11 ["X"]
       88 GETTABLEKS                       R9 R2 K13 ["AbsoluteSize"]
       90 GETTABLEKS                       R8 R9 K11 ["X"]
       92 DIVK                             R7 R8 K12 [2]
       93 ADD                              R5 R6 R7
       94 GETTABLEKS                       R8 R2 K10 ["AbsolutePosition"]
       96 GETTABLEKS                       R7 R8 K14 ["Y"]
       98 GETTABLEKS                       R10 R2 K13 ["AbsoluteSize"]
      100 GETTABLEKS                       R9 R10 K14 ["Y"]
      102 DIVK                             R8 R9 K12 [2]
      103 ADD                              R6 R7 R8
      104 CALL                             R4 2 1
      105 JUMPIFNOT                        R3 ; [+2]
      106 LOADK                            R5 K20 ["right"]
      107 JUMP                             ; [+1]
      108 LOADK                            R5 K15 ["left"]
      109 GETUPVAL                         R6 1
      110 LOADB                            R8 1
      111 NEWCLOSURE                       R7 P0
      112 CAPTURE                          UPVAL U2
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R8
      116 CALL                             R6 1 0
      117 JUMPIFNOT                        R3 ; [+2]
      118 LOADK                            R5 K20 ["right"]
      119 JUMP                             ; [+1]
      120 LOADK                            R5 K15 ["left"]
      121 GETUPVAL                         R6 1
      122 LOADB                            R8 0
      123 NEWCLOSURE                       R7 P0
      124 CAPTURE                          UPVAL U2
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R8
      128 CALL                             R6 1 0
      129 GETUPVAL                         R2 1
      130 DUPCLOSURE                       R3 K16 [PROTO_0]
      131 CAPTURE                          UPVAL U3
      132 CALL                             R2 1 0
      133 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["queryByText"]
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
        1 LOADK                            R5 K0 ["GuiObject"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Instance must be a GuiObject"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETIMPORT                        R1 K7 [Vector2.new]
       13 GETTABLEKS                       R4 R0 K8 ["AbsolutePosition"]
       15 GETTABLEKS                       R3 R4 K9 ["X"]
       17 GETTABLEKS                       R6 R0 K11 ["AbsoluteSize"]
       19 GETTABLEKS                       R5 R6 K9 ["X"]
       21 DIVK                             R4 R5 K10 [2]
       22 ADD                              R2 R3 R4
       23 GETTABLEKS                       R5 R0 K8 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R5 K12 ["Y"]
       27 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       29 GETTABLEKS                       R6 R7 K12 ["Y"]
       31 DIVK                             R5 R6 K10 [2]
       32 ADD                              R3 R4 R5
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 1
       35 LOADK                            R4 K13 ["left"]
       36 LOADB                            R5 1
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 1
       44 LOADK                            R4 K13 ["left"]
       45 LOADB                            R5 0
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Parent"]
        3 LOADK                            R2 K1 ["Checked"]
        4 NAMECALL                         R0 R0 K2 ["HasTag"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["queryByText"]
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
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 SETTABLEKS                       R4 R3 K7 ["clickCheckBox"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R4 R3 K8 ["isChecked"]
       31 RETURN                           R3 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R5 K0 ["GuiObject"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Instance must be a GuiObject"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETIMPORT                        R1 K7 [Vector2.new]
       13 GETTABLEKS                       R4 R0 K8 ["AbsolutePosition"]
       15 GETTABLEKS                       R3 R4 K9 ["X"]
       17 GETTABLEKS                       R6 R0 K11 ["AbsoluteSize"]
       19 GETTABLEKS                       R5 R6 K9 ["X"]
       21 DIVK                             R4 R5 K10 [2]
       22 ADD                              R2 R3 R4
       23 GETTABLEKS                       R5 R0 K8 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R5 K12 ["Y"]
       27 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       29 GETTABLEKS                       R6 R7 K12 ["Y"]
       31 DIVK                             R5 R6 K10 [2]
       32 ADD                              R3 R4 R5
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 1
       35 LOADK                            R4 K13 ["left"]
       36 LOADB                            R5 1
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 1
       44 LOADK                            R4 K13 ["left"]
       45 LOADB                            R5 0
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["queryByText"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"exact"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K1 ["exact"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R3 R1 K3 ["Parent"]
       14 GETTABLEKS                       R2 R3 K3 ["Parent"]
       16 LOADK                            R4 K4 ["RadioImage"]
       17 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
       19 CALL                             R2 2 1
       20 LOADK                            R4 K6 ["Contents"]
       21 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
       23 CALL                             R2 2 1
       24 DUPTABLE                         R3 K10 [{"radioButton", "click", "isSelected"}]
       25 SETTABLEKS                       R2 R3 K7 ["radioButton"]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 SETTABLEKS                       R4 R3 K8 ["click"]
       33 NEWCLOSURE                       R4 P1
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R4 R3 K9 ["isSelected"]
       37 RETURN                           R3 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADK                            R5 K0 ["GuiObject"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Instance must be a GuiObject"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETIMPORT                        R1 K7 [Vector2.new]
       13 GETTABLEKS                       R4 R0 K8 ["AbsolutePosition"]
       15 GETTABLEKS                       R3 R4 K9 ["X"]
       17 GETTABLEKS                       R6 R0 K11 ["AbsoluteSize"]
       19 GETTABLEKS                       R5 R6 K9 ["X"]
       21 DIVK                             R4 R5 K10 [2]
       22 ADD                              R2 R3 R4
       23 GETTABLEKS                       R5 R0 K8 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R5 K12 ["Y"]
       27 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       29 GETTABLEKS                       R6 R7 K12 ["Y"]
       31 DIVK                             R5 R6 K10 [2]
       32 ADD                              R3 R4 R5
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 1
       35 LOADK                            R4 K13 ["left"]
       36 LOADB                            R5 1
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 1
       44 LOADK                            R4 K13 ["left"]
       45 LOADB                            R5 0
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Checked"]
        2 NAMECALL                         R0 R0 K1 ["HasTag"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 LOADK                            R5 K0 ["GuiObject"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Instance must be a GuiObject"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETIMPORT                        R1 K7 [Vector2.new]
       13 GETTABLEKS                       R4 R0 K8 ["AbsolutePosition"]
       15 GETTABLEKS                       R3 R4 K9 ["X"]
       17 GETTABLEKS                       R6 R0 K11 ["AbsoluteSize"]
       19 GETTABLEKS                       R5 R6 K9 ["X"]
       21 DIVK                             R4 R5 K10 [2]
       22 ADD                              R2 R3 R4
       23 GETTABLEKS                       R5 R0 K8 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R5 K12 ["Y"]
       27 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       29 GETTABLEKS                       R6 R7 K12 ["Y"]
       31 DIVK                             R5 R6 K10 [2]
       32 ADD                              R3 R4 R5
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 1
       35 LOADK                            R4 K13 ["left"]
       36 LOADB                            R5 1
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 1
       44 LOADK                            R4 K13 ["left"]
       45 LOADB                            R5 0
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["clickAssetIdInput"]
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
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U2
       57 SETTABLEKS                       R4 R3 K9 ["clickCheckBox"]
       59 NEWCLOSURE                       R4 P1
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R4 R3 K10 ["isChecked"]
       63 NEWCLOSURE                       R4 P2
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          UPVAL U2
       67 SETTABLEKS                       R4 R3 K11 ["clickAssetIdInput"]
       69 NEWCLOSURE                       R4 P3
       70 CAPTURE                          VAL R3
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          UPVAL U2
       73 SETTABLEKS                       R4 R3 K13 ["enterAssetId"]
       75 RETURN                           R3 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["upperRangeInput"]
        3 LOADK                            R6 K1 ["GuiObject"]
        4 NAMECALL                         R4 R1 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 FASTCALL2K                       ASSERT R4 K3 ; [+4]
        9 LOADK                            R5 K3 ["Instance must be a GuiObject"]
       10 GETIMPORT                        R3 K5 [assert]
       12 CALL                             R3 2 0
       13 GETIMPORT                        R2 K8 [Vector2.new]
       15 GETTABLEKS                       R5 R1 K9 ["AbsolutePosition"]
       17 GETTABLEKS                       R4 R5 K10 ["X"]
       19 GETTABLEKS                       R7 R1 K12 ["AbsoluteSize"]
       21 GETTABLEKS                       R6 R7 K10 ["X"]
       23 DIVK                             R5 R6 K11 [2]
       24 ADD                              R3 R4 R5
       25 GETTABLEKS                       R6 R1 K9 ["AbsolutePosition"]
       27 GETTABLEKS                       R5 R6 K13 ["Y"]
       29 GETTABLEKS                       R8 R1 K12 ["AbsoluteSize"]
       31 GETTABLEKS                       R7 R8 K13 ["Y"]
       33 DIVK                             R6 R7 K11 [2]
       34 ADD                              R4 R5 R6
       35 CALL                             R2 2 1
       36 GETUPVAL                         R3 1
       37 LOADK                            R5 K14 ["left"]
       38 LOADB                            R6 1
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CALL                             R3 1 0
       45 GETUPVAL                         R3 1
       46 LOADK                            R5 K14 ["left"]
       47 LOADB                            R6 0
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CALL                             R3 1 0
       54 GETUPVAL                         R1 1
       55 NEWCLOSURE                       R2 P1
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R0
       58 CALL                             R1 1 0
       59 GETIMPORT                        R1 K18 [Enum.KeyCode.Return]
       61 GETUPVAL                         R2 1
       62 LOADB                            R4 1
       63 NEWCLOSURE                       R3 P2
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R1
       67 CALL                             R2 1 0
       68 GETIMPORT                        R1 K18 [Enum.KeyCode.Return]
       70 GETUPVAL                         R2 1
       71 LOADB                            R4 0
       72 NEWCLOSURE                       R3 P2
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R1
       76 CALL                             R2 1 0
       77 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["lowerRangeInput"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["lowerRangeInput"]
        8 LOADK                            R6 K1 ["GuiObject"]
        9 NAMECALL                         R4 R1 K2 ["IsA"]
       11 CALL                             R4 2 1
       12 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       14 LOADK                            R5 K3 ["Instance must be a GuiObject"]
       15 GETIMPORT                        R3 K5 [assert]
       17 CALL                             R3 2 0
       18 GETIMPORT                        R2 K8 [Vector2.new]
       20 GETTABLEKS                       R5 R1 K9 ["AbsolutePosition"]
       22 GETTABLEKS                       R4 R5 K10 ["X"]
       24 GETTABLEKS                       R7 R1 K12 ["AbsoluteSize"]
       26 GETTABLEKS                       R6 R7 K10 ["X"]
       28 DIVK                             R5 R6 K11 [2]
       29 ADD                              R3 R4 R5
       30 GETTABLEKS                       R6 R1 K9 ["AbsolutePosition"]
       32 GETTABLEKS                       R5 R6 K13 ["Y"]
       34 GETTABLEKS                       R8 R1 K12 ["AbsoluteSize"]
       36 GETTABLEKS                       R7 R8 K13 ["Y"]
       38 DIVK                             R6 R7 K11 [2]
       39 ADD                              R4 R5 R6
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 1
       42 LOADK                            R5 K14 ["left"]
       43 LOADB                            R6 1
       44 NEWCLOSURE                       R4 P0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 CALL                             R3 1 0
       50 GETUPVAL                         R3 1
       51 LOADK                            R5 K14 ["left"]
       52 LOADB                            R6 0
       53 NEWCLOSURE                       R4 P0
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CALL                             R3 1 0
       59 GETUPVAL                         R1 1
       60 NEWCLOSURE                       R2 P1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R0
       63 CALL                             R1 1 0
       64 GETIMPORT                        R1 K18 [Enum.KeyCode.Return]
       66 GETUPVAL                         R2 1
       67 LOADB                            R4 1
       68 NEWCLOSURE                       R3 P2
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 CALL                             R2 1 0
       73 GETIMPORT                        R1 K18 [Enum.KeyCode.Return]
       75 GETUPVAL                         R2 1
       76 LOADB                            R4 0
       77 NEWCLOSURE                       R3 P2
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R1
       81 CALL                             R2 1 0
       82 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["minMaxToggle"]
        3 JUMPIFNOT                        R0 ; [+77]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["minMaxToggle"]
        7 LOADK                            R5 K1 ["GuiObject"]
        8 NAMECALL                         R3 R0 K2 ["IsA"]
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["Instance must be a GuiObject"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 GETIMPORT                        R1 K8 [Vector2.new]
       19 GETTABLEKS                       R4 R0 K9 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R4 K10 ["X"]
       23 GETTABLEKS                       R6 R0 K12 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K10 ["X"]
       27 DIVK                             R4 R5 K11 [2]
       28 ADD                              R2 R3 R4
       29 GETTABLEKS                       R5 R0 K9 ["AbsolutePosition"]
       31 GETTABLEKS                       R4 R5 K13 ["Y"]
       33 GETTABLEKS                       R7 R0 K12 ["AbsoluteSize"]
       35 GETTABLEKS                       R6 R7 K13 ["Y"]
       37 DIVK                             R5 R6 K11 [2]
       38 ADD                              R3 R4 R5
       39 CALL                             R1 2 1
       40 GETUPVAL                         R2 1
       41 LOADK                            R4 K14 ["left"]
       42 LOADB                            R5 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 1
       50 LOADK                            R4 K14 ["left"]
       51 LOADB                            R5 0
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CALL                             R2 1 0
       58 GETUPVAL                         R0 1
       59 DUPCLOSURE                       R1 K15 [PROTO_0]
       60 CAPTURE                          UPVAL U3
       61 CALL                             R0 1 0
       62 GETUPVAL                         R0 5
       63 LOADK                            R2 K16 ["SetMinMaxToggle"]
       64 LOADB                            R3 1
       65 NAMECALL                         R0 R0 K17 ["FindFirstChild"]
       67 CALL                             R0 3 1
       68 SETUPVAL                         R0 4
       69 GETUPVAL                         R0 0
       70 GETUPVAL                         R2 4
       71 JUMPIFNOT                        R2 ; [+6]
       72 GETUPVAL                         R1 4
       73 LOADK                            R3 K18 ["Button"]
       74 NAMECALL                         R1 R1 K17 ["FindFirstChild"]
       76 CALL                             R1 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R1
       79 SETTABLEKS                       R1 R0 K0 ["minMaxToggle"]
       81 RETURN                           R0 0

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
      140 CAPTURE                          REF R6
      141 CAPTURE                          UPVAL U1
      142 CAPTURE                          UPVAL U2
      143 SETTABLEKS                       R7 R6 K19 ["enterUpperRange"]
      145 NEWCLOSURE                       R7 P2
      146 CAPTURE                          REF R6
      147 CAPTURE                          UPVAL U1
      148 CAPTURE                          UPVAL U2
      149 SETTABLEKS                       R7 R6 K20 ["enterLowerRange"]
      151 NEWCLOSURE                       R7 P3
      152 CAPTURE                          REF R6
      153 CAPTURE                          UPVAL U1
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          UPVAL U3
      156 CAPTURE                          REF R5
      157 CAPTURE                          REF R1
      158 SETTABLEKS                       R7 R6 K21 ["toggleMinMax"]
      160 CLOSEUPVALS                      R1
      161 RETURN                           R6 1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Text"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R1 R2 K1 ["toBe"]
        7 GETTABLEKS                       R3 R0 K2 ["X"]
        9 FASTCALL1                        TOSTRING R3 ; [+2]
       10 GETIMPORT                        R2 K4 [tostring]
       12 CALL                             R2 1 1
       13 CALL                             R1 1 0
       14 GETUPVAL                         R2 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K0 ["Text"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R1 R2 K1 ["toBe"]
       21 GETTABLEKS                       R3 R0 K5 ["Y"]
       23 FASTCALL1                        TOSTRING R3 ; [+2]
       24 GETIMPORT                        R2 K4 [tostring]
       26 CALL                             R2 1 1
       27 CALL                             R1 1 0
       28 GETUPVAL                         R2 0
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R3 R4 K0 ["Text"]
       32 CALL                             R2 1 1
       33 GETTABLEKS                       R1 R2 K1 ["toBe"]
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
        7 LOADK                            R7 K3 ["GuiObject"]
        8 NAMECALL                         R5 R1 K4 ["IsA"]
       10 CALL                             R5 2 1
       11 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       13 LOADK                            R6 K5 ["Instance must be a GuiObject"]
       14 GETIMPORT                        R4 K7 [assert]
       16 CALL                             R4 2 0
       17 GETIMPORT                        R3 K10 [Vector2.new]
       19 GETTABLEKS                       R6 R1 K11 ["AbsolutePosition"]
       21 GETTABLEKS                       R5 R6 K0 ["X"]
       23 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
       25 GETTABLEKS                       R7 R8 K0 ["X"]
       27 DIVK                             R6 R7 K12 [2]
       28 ADD                              R4 R5 R6
       29 GETTABLEKS                       R7 R1 K11 ["AbsolutePosition"]
       31 GETTABLEKS                       R6 R7 K14 ["Y"]
       33 GETTABLEKS                       R9 R1 K13 ["AbsoluteSize"]
       35 GETTABLEKS                       R8 R9 K14 ["Y"]
       37 DIVK                             R7 R8 K12 [2]
       38 ADD                              R5 R6 R7
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 1
       41 LOADK                            R6 K15 ["left"]
       42 LOADB                            R7 1
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R7
       48 CALL                             R4 1 0
       49 GETUPVAL                         R4 1
       50 LOADK                            R6 K15 ["left"]
       51 LOADB                            R7 0
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CALL                             R4 1 0
       58 GETUPVAL                         R3 1
       59 DUPCLOSURE                       R4 K16 [PROTO_23]
       60 CAPTURE                          UPVAL U2
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 1
       63 NEWCLOSURE                       R4 P2
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R2
       66 CALL                             R3 1 0
       67 GETUPVAL                         R1 3
       68 GETTABLEKS                       R3 R0 K14 ["Y"]
       70 FASTCALL1                        TOSTRING R3 ; [+2]
       71 GETIMPORT                        R2 K2 [tostring]
       73 CALL                             R2 1 1
       74 LOADK                            R7 K3 ["GuiObject"]
       75 NAMECALL                         R5 R1 K4 ["IsA"]
       77 CALL                             R5 2 1
       78 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       80 LOADK                            R6 K5 ["Instance must be a GuiObject"]
       81 GETIMPORT                        R4 K7 [assert]
       83 CALL                             R4 2 0
       84 GETIMPORT                        R3 K10 [Vector2.new]
       86 GETTABLEKS                       R6 R1 K11 ["AbsolutePosition"]
       88 GETTABLEKS                       R5 R6 K0 ["X"]
       90 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
       92 GETTABLEKS                       R7 R8 K0 ["X"]
       94 DIVK                             R6 R7 K12 [2]
       95 ADD                              R4 R5 R6
       96 GETTABLEKS                       R7 R1 K11 ["AbsolutePosition"]
       98 GETTABLEKS                       R6 R7 K14 ["Y"]
      100 GETTABLEKS                       R9 R1 K13 ["AbsoluteSize"]
      102 GETTABLEKS                       R8 R9 K14 ["Y"]
      104 DIVK                             R7 R8 K12 [2]
      105 ADD                              R5 R6 R7
      106 CALL                             R3 2 1
      107 GETUPVAL                         R4 1
      108 LOADK                            R6 K15 ["left"]
      109 LOADB                            R7 1
      110 NEWCLOSURE                       R5 P0
      111 CAPTURE                          UPVAL U2
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 CALL                             R4 1 0
      116 GETUPVAL                         R4 1
      117 LOADK                            R6 K15 ["left"]
      118 LOADB                            R7 0
      119 NEWCLOSURE                       R5 P0
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R7
      124 CALL                             R4 1 0
      125 GETUPVAL                         R3 1
      126 DUPCLOSURE                       R4 K16 [PROTO_23]
      127 CAPTURE                          UPVAL U2
      128 CALL                             R3 1 0
      129 GETUPVAL                         R3 1
      130 NEWCLOSURE                       R4 P2
      131 CAPTURE                          UPVAL U2
      132 CAPTURE                          VAL R2
      133 CALL                             R3 1 0
      134 GETUPVAL                         R1 4
      135 GETTABLEKS                       R3 R0 K17 ["Z"]
      137 FASTCALL1                        TOSTRING R3 ; [+2]
      138 GETIMPORT                        R2 K2 [tostring]
      140 CALL                             R2 1 1
      141 LOADK                            R7 K3 ["GuiObject"]
      142 NAMECALL                         R5 R1 K4 ["IsA"]
      144 CALL                             R5 2 1
      145 FASTCALL2K                       ASSERT R5 K5 ; [+4]
      147 LOADK                            R6 K5 ["Instance must be a GuiObject"]
      148 GETIMPORT                        R4 K7 [assert]
      150 CALL                             R4 2 0
      151 GETIMPORT                        R3 K10 [Vector2.new]
      153 GETTABLEKS                       R6 R1 K11 ["AbsolutePosition"]
      155 GETTABLEKS                       R5 R6 K0 ["X"]
      157 GETTABLEKS                       R8 R1 K13 ["AbsoluteSize"]
      159 GETTABLEKS                       R7 R8 K0 ["X"]
      161 DIVK                             R6 R7 K12 [2]
      162 ADD                              R4 R5 R6
      163 GETTABLEKS                       R7 R1 K11 ["AbsolutePosition"]
      165 GETTABLEKS                       R6 R7 K14 ["Y"]
      167 GETTABLEKS                       R9 R1 K13 ["AbsoluteSize"]
      169 GETTABLEKS                       R8 R9 K14 ["Y"]
      171 DIVK                             R7 R8 K12 [2]
      172 ADD                              R5 R6 R7
      173 CALL                             R3 2 1
      174 GETUPVAL                         R4 1
      175 LOADK                            R6 K15 ["left"]
      176 LOADB                            R7 1
      177 NEWCLOSURE                       R5 P0
      178 CAPTURE                          UPVAL U2
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R7
      182 CALL                             R4 1 0
      183 GETUPVAL                         R4 1
      184 LOADK                            R6 K15 ["left"]
      185 LOADB                            R7 0
      186 NEWCLOSURE                       R5 P0
      187 CAPTURE                          UPVAL U2
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R7
      191 CALL                             R4 1 0
      192 GETUPVAL                         R3 1
      193 DUPCLOSURE                       R4 K16 [PROTO_23]
      194 CAPTURE                          UPVAL U2
      195 CALL                             R3 1 0
      196 GETUPVAL                         R3 1
      197 NEWCLOSURE                       R4 P2
      198 CAPTURE                          UPVAL U2
      199 CAPTURE                          VAL R2
      200 CALL                             R3 1 0
      201 RETURN                           R0 0

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
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R4
      163 SETTABLEKS                       R6 R5 K14 ["enterValue"]
      165 RETURN                           R5 1

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
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["queryByText"]
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
       26 GETUPVAL                         R4 2
       27 MOVE                             R5 R2
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R3 R4 K8 ["toBeDefined"]
       31 CALL                             R3 0 0
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R6 R2 K9 ["assetIdInput"]
       35 GETTABLEKS                       R5 R6 K10 ["Text"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R3 R4 K11 ["toBe"]
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
        1 LOADK                            R5 K0 ["GuiObject"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Instance must be a GuiObject"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETIMPORT                        R1 K7 [Vector2.new]
       13 GETTABLEKS                       R4 R0 K8 ["AbsolutePosition"]
       15 GETTABLEKS                       R3 R4 K9 ["X"]
       17 GETTABLEKS                       R6 R0 K11 ["AbsoluteSize"]
       19 GETTABLEKS                       R5 R6 K9 ["X"]
       21 DIVK                             R4 R5 K10 [2]
       22 ADD                              R2 R3 R4
       23 GETTABLEKS                       R5 R0 K8 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R5 K12 ["Y"]
       27 GETTABLEKS                       R7 R0 K11 ["AbsoluteSize"]
       29 GETTABLEKS                       R6 R7 K12 ["Y"]
       31 DIVK                             R5 R6 K10 [2]
       32 ADD                              R3 R4 R5
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 1
       35 LOADK                            R4 K13 ["left"]
       36 LOADB                            R5 1
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 1
       44 LOADK                            R4 K13 ["left"]
       45 LOADB                            R5 0
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["queryByText"]
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
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 SETTABLEKS                       R2 R1 K9 ["clickPreviewToggle"]
       33 RETURN                           R1 1

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
       33 DUPCLOSURE                       R12 K5 [PROTO_19]
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U7
       36 DUPCLOSURE                       R13 K6 [PROTO_20]
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U7
       39 DUPCLOSURE                       R14 K7 [PROTO_22]
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U7
       42 DUPCLOSURE                       R15 K8 [PROTO_24]
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U7
       45 DUPCLOSURE                       R16 K9 [PROTO_26]
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U7
       48 DUPCLOSURE                       R17 K10 [PROTO_28]
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U7
       51 DUPCLOSURE                       R18 K11 [PROTO_29]
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U4
       56 DUPCLOSURE                       R19 K12 [PROTO_30]
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U4
       61 DUPCLOSURE                       R20 K13 [PROTO_31]
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U4
       66 DUPCLOSURE                       R21 K14 [PROTO_32]
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U4
       71 DUPCLOSURE                       R22 K15 [PROTO_33]
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U4
       76 DUPCLOSURE                       R23 K16 [PROTO_34]
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          UPVAL U4
       81 DUPCLOSURE                       R24 K17 [PROTO_35]
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U4
       86 NEWTABLE                         R25 4 0
       88 GETIMPORT                        R26 K21 [Enum.GameAvatarType.R15]
       90 LOADK                            R27 K22 ["R15Only:"]
       91 SETTABLE                         R27 R25 R26
       92 GETIMPORT                        R26 K24 [Enum.GameAvatarType.R6]
       94 LOADK                            R27 K25 ["R6Only:"]
       95 SETTABLE                         R27 R25 R26
       96 GETIMPORT                        R26 K27 [Enum.GameAvatarType.PlayerChoice]
       98 LOADK                            R27 K28 ["R15AndR6:"]
       99 SETTABLE                         R27 R25 R26
      100 NEWCLOSURE                       R26 P22
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          UPVAL U4
      105 CAPTURE                          VAL R25
      106 DUPCLOSURE                       R27 K29 [PROTO_37]
      107 CAPTURE                          UPVAL U8
      108 DUPCLOSURE                       R28 K30 [PROTO_40]
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          UPVAL U7
      112 DUPCLOSURE                       R29 K31 [PROTO_43]
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          UPVAL U7
      116 DUPCLOSURE                       R30 K32 [PROTO_48]
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          UPVAL U7
      120 DUPCLOSURE                       R31 K33 [PROTO_53]
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          UPVAL U7
      124 CAPTURE                          UPVAL U4
      125 DUPCLOSURE                       R32 K34 [PROTO_56]
      126 CAPTURE                          UPVAL U9
      127 CAPTURE                          UPVAL U10
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          UPVAL U7
      130 DUPCLOSURE                       R33 K35 [PROTO_57]
      131 CAPTURE                          UPVAL U9
      132 DUPCLOSURE                       R34 K36 [PROTO_58]
      133 CAPTURE                          VAL R30
      134 CAPTURE                          UPVAL U8
      135 CAPTURE                          UPVAL U10
      136 DUPCLOSURE                       R35 K37 [PROTO_60]
      137 CAPTURE                          UPVAL U8
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          UPVAL U7
      140 DUPTABLE                         R36 K70 [{"printHierarchy", "render", "renderApp", "unmount", "getContainer", "cleanupRules", "updateStylingServiceUnitTestOnly", "getPositionOfInstance", "stopHover", "hoverOverInstance", "mouseClickOverInstance", "enterText", "pressKey", "mouseClickOverInstanceAndEnterText", "mouseClickOverInstanceWithText", "toggleCategoryListExpand", "selectGeneralCategory", "selectBodyCategory", "selectMovementCategory", "selectAccessoriesCategory", "selectClothingCategory", "selectAvatarType", "queryTitledComponentByText", "queryCheckBoxByText", "queryRadioButtonByText", "queryAssetIdSelectorFrom", "querySliderComponentFrom", "queryVector3InputComponentFrom", "queryNumberInputComponentFrom", "queryPreviewToggleButton", "findAssetIdComponentAndVerifyId", "findTextBoxFromInstance"}]
      141 SETTABLEKS                       R3 R36 K38 ["printHierarchy"]
      143 SETTABLEKS                       R5 R36 K39 ["render"]
      145 SETTABLEKS                       R6 R36 K40 ["renderApp"]
      147 SETTABLEKS                       R4 R36 K41 ["unmount"]
      149 SETTABLEKS                       R7 R36 K42 ["getContainer"]
      151 SETTABLEKS                       R8 R36 K43 ["cleanupRules"]
      153 GETUPVAL                         R37 11
      154 SETTABLEKS                       R37 R36 K44 ["updateStylingServiceUnitTestOnly"]
      156 SETTABLEKS                       R9 R36 K45 ["getPositionOfInstance"]
      158 SETTABLEKS                       R11 R36 K46 ["stopHover"]
      160 SETTABLEKS                       R12 R36 K47 ["hoverOverInstance"]
      162 SETTABLEKS                       R13 R36 K48 ["mouseClickOverInstance"]
      164 SETTABLEKS                       R16 R36 K49 ["enterText"]
      166 SETTABLEKS                       R14 R36 K50 ["pressKey"]
      168 SETTABLEKS                       R17 R36 K51 ["mouseClickOverInstanceAndEnterText"]
      170 SETTABLEKS                       R18 R36 K52 ["mouseClickOverInstanceWithText"]
      172 SETTABLEKS                       R19 R36 K53 ["toggleCategoryListExpand"]
      174 SETTABLEKS                       R20 R36 K54 ["selectGeneralCategory"]
      176 SETTABLEKS                       R21 R36 K55 ["selectBodyCategory"]
      178 SETTABLEKS                       R22 R36 K56 ["selectMovementCategory"]
      180 SETTABLEKS                       R23 R36 K57 ["selectAccessoriesCategory"]
      182 SETTABLEKS                       R24 R36 K58 ["selectClothingCategory"]
      184 SETTABLEKS                       R26 R36 K59 ["selectAvatarType"]
      186 SETTABLEKS                       R27 R36 K60 ["queryTitledComponentByText"]
      188 SETTABLEKS                       R28 R36 K61 ["queryCheckBoxByText"]
      190 SETTABLEKS                       R29 R36 K62 ["queryRadioButtonByText"]
      192 SETTABLEKS                       R30 R36 K63 ["queryAssetIdSelectorFrom"]
      194 SETTABLEKS                       R31 R36 K64 ["querySliderComponentFrom"]
      196 SETTABLEKS                       R32 R36 K65 ["queryVector3InputComponentFrom"]
      198 SETTABLEKS                       R33 R36 K66 ["queryNumberInputComponentFrom"]
      200 SETTABLEKS                       R35 R36 K67 ["queryPreviewToggleButton"]
      202 SETTABLEKS                       R34 R36 K68 ["findAssetIdComponentAndVerifyId"]
      204 GETUPVAL                         R37 12
      205 SETTABLEKS                       R37 R36 K69 ["findTextBoxFromInstance"]
      207 JUMPIFNOT                        R0 ; [+3]
      208 GETTABLEKS                       R37 R0 K71 ["shouldNotCleanRulesUp"]
      210 JUMPIF                           R37 ; [+1]
      211 LOADB                            R37 0
      212 JUMPIF                           R37 ; [+4]
      213 GETUPVAL                         R38 6
      214 NAMECALL                         R38 R38 K72 ["ClearAllChildren"]
      216 CALL                             R38 1 0
      217 GETUPVAL                         R38 13
      218 CALL                             R38 0 0
      219 GETUPVAL                         R38 14
      220 CALL                             R38 0 0
      221 GETUPVAL                         R38 15
      222 CALL                             R38 0 0
      223 GETUPVAL                         R38 16
      224 CALL                             R38 0 0
      225 GETUPVAL                         R38 17
      226 CALL                             R38 0 0
      227 GETUPVAL                         R38 18
      228 CALL                             R38 0 0
      229 GETUPVAL                         R38 19
      230 CALL                             R38 0 0
      231 GETUPVAL                         R38 1
      232 GETUPVAL                         R39 20
      233 CALL                             R38 1 1
      234 MOVE                             R39 R0
      235 JUMPIF                           R39 ; [+2]
      236 NEWTABLE                         R39 0 0
      238 GETUPVAL                         R41 0
      239 GETTABLEKS                       R40 R41 K39 ["render"]
      241 GETUPVAL                         R41 1
      242 GETUPVAL                         R42 2
      243 DUPTABLE                         R43 K75 [{"node", "setupConfig"}]
      244 SETTABLEKS                       R38 R43 K73 ["node"]
      246 SETTABLEKS                       R39 R43 K74 ["setupConfig"]
      248 CALL                             R41 2 -1
      249 CALL                             R40 -1 1
      250 GETTABLEKS                       R1 R40 K76 ["container"]
      252 GETTABLEKS                       R2 R40 K41 ["unmount"]
      254 GETUPVAL                         R41 3
      255 DUPCLOSURE                       R42 K77 [PROTO_0]
      256 CAPTURE                          UPVAL U4
      257 CALL                             R41 1 0
      258 CLOSEUPVALS                      R1
      259 RETURN                           R36 1

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
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["Components"]
       31 GETTABLEKS                       R5 R6 K13 ["App"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R8 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R8 K12 ["Components"]
       40 GETTABLEKS                       R6 R7 K14 ["AvatarSettingsProvider"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K10 [require]
       45 GETTABLEKS                       R8 R0 K15 ["Packages"]
       47 GETTABLEKS                       R7 R8 K16 ["Framework"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K10 [require]
       52 GETTABLEKS                       R10 R0 K15 ["Packages"]
       54 GETTABLEKS                       R9 R10 K17 ["Dev"]
       56 GETTABLEKS                       R8 R9 K18 ["JestGlobals"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K10 [require]
       61 GETTABLEKS                       R12 R0 K11 ["Src"]
       63 GETTABLEKS                       R11 R12 K12 ["Components"]
       65 GETTABLEKS                       R10 R11 K19 ["Contexts"]
       67 GETTABLEKS                       R9 R10 K20 ["LoadAnimationProvider"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K10 [require]
       72 GETTABLEKS                       R12 R0 K11 ["Src"]
       74 GETTABLEKS                       R11 R12 K12 ["Components"]
       76 GETTABLEKS                       R10 R11 K21 ["MainView"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K10 [require]
       81 GETTABLEKS                       R14 R0 K11 ["Src"]
       83 GETTABLEKS                       R13 R14 K12 ["Components"]
       85 GETTABLEKS                       R12 R13 K19 ["Contexts"]
       87 GETTABLEKS                       R11 R12 K22 ["PublishProvider"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K10 [require]
       92 GETTABLEKS                       R13 R0 K15 ["Packages"]
       94 GETTABLEKS                       R12 R13 K23 ["React"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K10 [require]
       99 GETTABLEKS                       R14 R0 K15 ["Packages"]
      101 GETTABLEKS                       R13 R14 K24 ["ReactRoblox"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K10 [require]
      106 GETTABLEKS                       R16 R0 K15 ["Packages"]
      108 GETTABLEKS                       R15 R16 K17 ["Dev"]
      110 GETTABLEKS                       R14 R15 K25 ["ReactTestingLibrary"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K10 [require]
      115 GETTABLEKS                       R16 R0 K15 ["Packages"]
      117 GETTABLEKS                       R15 R16 K26 ["ReactUtils"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K10 [require]
      122 GETTABLEKS                       R18 R0 K11 ["Src"]
      124 GETTABLEKS                       R17 R18 K27 ["Flags"]
      126 GETTABLEKS                       R16 R17 K28 ["getFFlagDevFrameworkTextInputRemoveScrollingHack"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K10 [require]
      131 GETTABLEKS                       R21 R0 K11 ["Src"]
      133 GETTABLEKS                       R20 R21 K29 ["tests"]
      135 GETTABLEKS                       R19 R20 K30 ["Util"]
      137 GETTABLEKS                       R18 R19 K31 ["setup"]
      139 GETTABLEKS                       R17 R18 K32 ["mockAssetDmInvokeContextProvider"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K10 [require]
      144 GETTABLEKS                       R22 R0 K11 ["Src"]
      146 GETTABLEKS                       R21 R22 K29 ["tests"]
      148 GETTABLEKS                       R20 R21 K30 ["Util"]
      150 GETTABLEKS                       R19 R20 K31 ["setup"]
      152 GETTABLEKS                       R18 R19 K33 ["mockAssetServiceProvider"]
      154 CALL                             R17 1 1
      155 GETIMPORT                        R18 K10 [require]
      157 GETTABLEKS                       R23 R0 K11 ["Src"]
      159 GETTABLEKS                       R22 R23 K29 ["tests"]
      161 GETTABLEKS                       R21 R22 K30 ["Util"]
      163 GETTABLEKS                       R20 R21 K31 ["setup"]
      165 GETTABLEKS                       R19 R20 K34 ["mockEnableAvatarSettingsProvider"]
      167 CALL                             R18 1 1
      168 GETIMPORT                        R19 K10 [require]
      170 GETTABLEKS                       R24 R0 K11 ["Src"]
      172 GETTABLEKS                       R23 R24 K29 ["tests"]
      174 GETTABLEKS                       R22 R23 K30 ["Util"]
      176 GETTABLEKS                       R21 R22 K31 ["setup"]
      178 GETTABLEKS                       R20 R21 K35 ["mockInsertServiceProvider"]
      180 CALL                             R19 1 1
      181 GETIMPORT                        R20 K10 [require]
      183 GETTABLEKS                       R25 R0 K11 ["Src"]
      185 GETTABLEKS                       R24 R25 K29 ["tests"]
      187 GETTABLEKS                       R23 R24 K30 ["Util"]
      189 GETTABLEKS                       R22 R23 K31 ["setup"]
      191 GETTABLEKS                       R21 R22 K36 ["mockMarketplaceServiceContextProvider"]
      193 CALL                             R20 1 1
      194 GETIMPORT                        R21 K10 [require]
      196 GETTABLEKS                       R26 R0 K11 ["Src"]
      198 GETTABLEKS                       R25 R26 K29 ["tests"]
      200 GETTABLEKS                       R24 R25 K30 ["Util"]
      202 GETTABLEKS                       R23 R24 K31 ["setup"]
      204 GETTABLEKS                       R22 R23 K37 ["mockPublishProvider"]
      206 CALL                             R21 1 1
      207 GETIMPORT                        R22 K10 [require]
      209 GETTABLEKS                       R27 R0 K11 ["Src"]
      211 GETTABLEKS                       R26 R27 K29 ["tests"]
      213 GETTABLEKS                       R25 R26 K30 ["Util"]
      215 GETTABLEKS                       R24 R25 K31 ["setup"]
      217 GETTABLEKS                       R23 R24 K38 ["mockUnsavedChangesDialogProvider"]
      219 CALL                             R22 1 1
      220 GETIMPORT                        R23 K10 [require]
      222 GETTABLEKS                       R28 R0 K11 ["Src"]
      224 GETTABLEKS                       R27 R28 K29 ["tests"]
      226 GETTABLEKS                       R26 R27 K30 ["Util"]
      228 GETTABLEKS                       R25 R26 K39 ["mockInterfaces"]
      230 GETTABLEKS                       R24 R25 K40 ["setupMockAnimatorInterface"]
      232 CALL                             R23 1 1
      233 GETIMPORT                        R24 K10 [require]
      235 GETTABLEKS                       R29 R0 K11 ["Src"]
      237 GETTABLEKS                       R28 R29 K29 ["tests"]
      239 GETTABLEKS                       R27 R28 K30 ["Util"]
      241 GETTABLEKS                       R26 R27 K39 ["mockInterfaces"]
      243 GETTABLEKS                       R25 R26 K41 ["setupMockHumanoidInterface"]
      245 CALL                             R24 1 1
      246 GETIMPORT                        R25 K10 [require]
      248 GETTABLEKS                       R30 R0 K11 ["Src"]
      250 GETTABLEKS                       R29 R30 K29 ["tests"]
      252 GETTABLEKS                       R28 R29 K30 ["Util"]
      254 GETTABLEKS                       R27 R28 K39 ["mockInterfaces"]
      256 GETTABLEKS                       R26 R27 K42 ["setupMockInsertServiceInterface"]
      258 CALL                             R25 1 1
      259 GETIMPORT                        R26 K10 [require]
      261 GETTABLEKS                       R31 R0 K11 ["Src"]
      263 GETTABLEKS                       R30 R31 K29 ["tests"]
      265 GETTABLEKS                       R29 R30 K30 ["Util"]
      267 GETTABLEKS                       R28 R29 K39 ["mockInterfaces"]
      269 GETTABLEKS                       R27 R28 K43 ["setupMockPlacesServiceInterface"]
      271 CALL                             R26 1 1
      272 GETIMPORT                        R27 K10 [require]
      274 GETTABLEKS                       R32 R0 K11 ["Src"]
      276 GETTABLEKS                       R31 R32 K29 ["tests"]
      278 GETTABLEKS                       R30 R31 K30 ["Util"]
      280 GETTABLEKS                       R29 R30 K39 ["mockInterfaces"]
      282 GETTABLEKS                       R28 R29 K44 ["setupMockPluginLocalizationInterface"]
      284 CALL                             R27 1 1
      285 GETIMPORT                        R28 K10 [require]
      287 GETTABLEKS                       R33 R0 K11 ["Src"]
      289 GETTABLEKS                       R32 R33 K29 ["tests"]
      291 GETTABLEKS                       R31 R32 K30 ["Util"]
      293 GETTABLEKS                       R30 R31 K39 ["mockInterfaces"]
      295 GETTABLEKS                       R29 R30 K45 ["setupMockPublishingInterface"]
      297 CALL                             R28 1 1
      298 GETIMPORT                        R29 K10 [require]
      300 GETTABLEKS                       R34 R0 K11 ["Src"]
      302 GETTABLEKS                       R33 R34 K29 ["tests"]
      304 GETTABLEKS                       R32 R33 K30 ["Util"]
      306 GETTABLEKS                       R31 R32 K39 ["mockInterfaces"]
      308 GETTABLEKS                       R30 R31 K46 ["setupMockRegisterPluginStylesInterface"]
      310 CALL                             R29 1 1
      311 GETIMPORT                        R30 K10 [require]
      313 GETTABLEKS                       R34 R0 K11 ["Src"]
      315 GETTABLEKS                       R33 R34 K30 ["Util"]
      317 GETTABLEKS                       R32 R33 K47 ["Telemetry"]
      319 GETTABLEKS                       R31 R32 K48 ["TelemetryContext"]
      321 CALL                             R30 1 1
      322 GETTABLEKS                       R32 R6 K49 ["Styling"]
      324 GETTABLEKS                       R31 R32 K50 ["registerPluginStyles"]
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
