PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 3
       12 SETTABLE                         R2 R0 R1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 GETUPVAL                         R2 1
       17 GETTABLE                         R0 R1 R2
       18 JUMPIF                           R0 ; [+2]
       19 NEWTABLE                         R0 0 0
       21 GETUPVAL                         R1 4
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 5
       25 GETUPVAL                         R2 1
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 6
       28 LOADN                            R2 1
       29 SETTABLEKS                       R2 R1 K0 ["current"]
       31 GETUPVAL                         R1 7
       32 LOADNIL                          R2
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 ADDK                             R1 R2 K0 [1]
        4 SETTABLEKS                       R1 R0 K1 ["current"]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R2 R0
        1 GETTABLE                         R1 R0 R2
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [table.clone]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R4 0
       11 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K4 [table.insert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 1
       18 CALL                             R2 0 1
       19 LENGTH                           R3 R1
       20 JUMPIFNOTLT                      R2 R3 ; [+13]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["List"]
       25 GETTABLEKS                       R3 R3 K6 ["getRange"]
       27 MOVE                             R4 R1
       28 LENGTH                           R7 R1
       29 SUB                              R6 R7 R2
       30 ADDK                             R5 R6 K7 [1]
       31 LENGTH                           R6 R1
       32 CALL                             R3 3 1
       33 MOVE                             R1 R3
       34 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["textBoxRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R1 K2 ["Text"]
        9 LENGTH                           R2 R3
       10 LOADN                            R3 0
       11 JUMPIFNOTLT                      R3 R2 ; [+2]
       13 RETURN                           R0 0
       14 NAMECALL                         R2 R1 K3 ["IsFocused"]
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R0 K4 ["UserInputType"]
       21 GETIMPORT                        R3 K7 [Enum.UserInputType.Keyboard]
       23 JUMPIFEQ                         R2 R3 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K1 ["current"]
       29 GETTABLEKS                       R3 R0 K8 ["KeyCode"]
       31 GETIMPORT                        R4 K10 [Enum.KeyCode.Tab]
       33 JUMPIFNOTEQ                      R3 R4 ; [+34]
       35 LOADN                            R3 1
       36 JUMPIFNOTLE                      R3 R2 ; [+30]
       38 GETUPVAL                         R4 2
       39 LENGTH                           R3 R4
       40 JUMPIFNOTLE                      R2 R3 ; [+26]
       42 GETUPVAL                         R3 1
       43 GETUPVAL                         R6 2
       44 LENGTH                           R5 R6
       45 ADDK                             R4 R5 K11 [1]
       46 SETTABLEKS                       R4 R3 K1 ["current"]
       48 GETUPVAL                         R3 3
       49 LOADNIL                          R4
       50 CALL                             R3 1 0
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K12 ["setInputText"]
       54 GETUPVAL                         R5 2
       55 GETTABLE                         R4 R5 R2
       56 CALL                             R3 1 0
       57 LOADB                            R5 0
       58 NAMECALL                         R3 R1 K13 ["ReleaseFocus"]
       60 CALL                             R3 2 0
       61 GETIMPORT                        R3 K16 [task.wait]
       63 CALL                             R3 0 0
       64 NAMECALL                         R3 R1 K17 ["CaptureFocus"]
       66 CALL                             R3 1 0
       67 RETURN                           R0 0
       68 GETTABLEKS                       R3 R0 K8 ["KeyCode"]
       70 GETIMPORT                        R4 K19 [Enum.KeyCode.Up]
       72 JUMPIFNOTEQ                      R3 R4 ; [+3]
       74 SUBK                             R2 R2 K11 [1]
       75 JUMP                             ; [+9]
       76 GETTABLEKS                       R3 R0 K8 ["KeyCode"]
       78 GETIMPORT                        R4 K21 [Enum.KeyCode.Down]
       80 JUMPIFNOTEQ                      R3 R4 ; [+3]
       82 ADDK                             R2 R2 K11 [1]
       83 JUMP                             ; [+1]
       84 RETURN                           R0 0
       85 LOADN                            R5 1
       86 GETUPVAL                         R8 2
       87 LENGTH                           R7 R8
       88 ADDK                             R6 R7 K11 [1]
       89 FASTCALL3                        MATH_CLAMP R2 R5 R6
       91 MOVE                             R4 R2
       92 GETIMPORT                        R3 K24 [math.clamp]
       94 CALL                             R3 3 1
       95 MOVE                             R2 R3
       96 GETUPVAL                         R3 1
       97 SETTABLEKS                       R2 R3 K1 ["current"]
       99 GETUPVAL                         R3 3
      100 GETUPVAL                         R5 2
      101 GETTABLE                         R4 R5 R2
      102 CALL                             R3 1 0
      103 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useRef"]
        9 LOADN                            R4 1
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["useState"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 1
       17 CALL                             R6 0 1
       18 JUMPIFNOT                        R6 ; [+40]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["useContext"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K3 ["Context"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R7 R6 K4 ["threadId"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K1 ["useRef"]
       31 NEWTABLE                         R9 0 0
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K0 ["useState"]
       37 MOVE                             R10 R7
       38 CALL                             R9 1 2
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       42 NEWCLOSURE                       R12 P0
       43 CAPTURE                          VAL R9
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R8
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R13 0 3
       53 MOVE                             R14 R1
       54 MOVE                             R15 R9
       55 MOVE                             R16 R7
       56 SETLIST                          R13 R14 3 [1]
       58 CALL                             R11 2 0
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       62 NEWCLOSURE                       R7 P1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 NEWTABLE                         R8 0 1
       68 MOVE                             R9 R1
       69 SETLIST                          R8 R9 1 [1]
       71 CALL                             R6 2 0
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       75 NEWCLOSURE                       R7 P2
       76 CAPTURE                          VAL R2
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U4
       79 NEWTABLE                         R8 0 0
       81 CALL                             R6 2 1
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K2 ["useContext"]
       85 GETUPVAL                         R8 5
       86 GETTABLEKS                       R8 R8 K3 ["Context"]
       88 CALL                             R7 1 1
       89 GETUPVAL                         R8 6
       90 GETTABLEKS                       R9 R7 K7 ["inputBeganSignal"]
       92 NEWCLOSURE                       R10 P3
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R5
       97 NEWTABLE                         R11 0 3
       99 MOVE                             R12 R1
      100 MOVE                             R13 R5
      101 GETTABLEKS                       R14 R0 K8 ["setInputText"]
      103 SETLIST                          R11 R12 3 [1]
      105 CALL                             R8 3 0
      106 MOVE                             R8 R6
      107 MOVE                             R9 R4
      108 RETURN                           R8 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K1 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R2 R2 K2 ["X"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       17 GETTABLEKS                       R3 R3 K4 ["Y"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Text"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R5 K3 [Enum.ModifierKey.Shift]
        4 NAMECALL                         R3 R2 K4 ["IsModifierKeyDown"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+43]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K5 ["current"]
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 LOADN                            R5 0
       14 JUMPIFNOTLT                      R5 R4 ; [+7]
       16 GETTABLEKS                       R7 R0 K7 ["Text"]
       18 LENGTH                           R6 R7
       19 ADDK                             R5 R6 K6 [1]
       20 JUMPIFLE                         R4 R5 ; [+2]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R9 R0 K7 ["Text"]
       25 LOADN                            R11 1
       26 SUBK                             R12 R4 K6 [1]
       27 NAMECALL                         R9 R9 K8 ["sub"]
       29 CALL                             R9 3 1
       30 MOVE                             R6 R9
       31 LOADK                            R7 K9 ["\n"]
       32 GETTABLEKS                       R8 R0 K7 ["Text"]
       34 MOVE                             R10 R4
       35 NAMECALL                         R8 R8 K8 ["sub"]
       37 CALL                             R8 2 1
       38 CONCAT                           R5 R6 R8
       39 SETTABLEKS                       R5 R0 K7 ["Text"]
       41 GETIMPORT                        R5 K12 [task.wait]
       43 CALL                             R5 0 0
       44 NAMECALL                         R5 R0 K13 ["CaptureFocus"]
       46 CALL                             R5 1 0
       47 ADDK                             R5 R4 K6 [1]
       48 SETTABLEKS                       R5 R0 K14 ["CursorPosition"]
       50 RETURN                           R0 0
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K15 ["onReturnPressed"]
       54 CALL                             R4 0 0
       55 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        2 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R5 R0 K4 ["TextSize"]
       12 GETTABLEKS                       R6 R0 K5 ["LineHeight"]
       14 MUL                              R4 R5 R6
       15 DIVK                             R3 R4 K3 [2]
       16 GETTABLEKS                       R5 R0 K6 ["AbsoluteSize"]
       18 GETTABLEKS                       R5 R5 K7 ["X"]
       20 DIV                              R4 R5 R3
       21 GETIMPORT                        R5 K10 [string.find]
       23 GETTABLEKS                       R6 R0 K11 ["Text"]
       25 LOADK                            R7 K12 ["\n"]
       26 SUBK                             R8 R1 K13 [1]
       27 CALL                             R5 3 1
       28 GETIMPORT                        R6 K10 [string.find]
       30 GETTABLEKS                       R7 R0 K11 ["Text"]
       32 LOADK                            R8 K14 [" "]
       33 MOVE                             R9 R1
       34 CALL                             R6 3 1
       35 JUMPIFNOT                        R5 ; [+9]
       36 JUMPIFNOT                        R6 ; [+8]
       37 FASTCALL2                        MATH_MIN R5 R6 ; [+5]
       39 MOVE                             R8 R5
       40 MOVE                             R9 R6
       41 GETIMPORT                        R7 K17 [math.min]
       43 CALL                             R7 2 1
       44 MOVE                             R6 R7
       45 ADD                              R8 R1 R4
       46 MOVE                             R9 R6
       47 JUMPIF                           R9 ; [+3]
       48 GETTABLEKS                       R10 R0 K11 ["Text"]
       50 LENGTH                           R9 R10
       51 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       53 GETIMPORT                        R7 K17 [math.min]
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R8 R0 K11 ["Text"]
       58 LOADN                            R10 1
       59 MOVE                             R11 R7
       60 NAMECALL                         R8 R8 K18 ["sub"]
       62 CALL                             R8 3 1
       63 GETUPVAL                         R9 1
       64 SETTABLEKS                       R1 R9 K2 ["current"]
       66 GETUPVAL                         R9 2
       67 SETTABLEKS                       R8 R9 K2 ["current"]
       69 SETTABLEKS                       R8 R2 K11 ["Text"]
       71 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETIMPORT                        R3 K3 [task.wait]
       12 CALL                             R3 0 0
       13 GETTABLEKS                       R3 R2 K4 ["CursorPosition"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K0 ["current"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R3 R0 K5 ["Text"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K0 ["current"]
       26 JUMPIFEQ                         R3 R4 ; [+2]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R3 R1 K6 ["AbsoluteSize"]
       31 GETTABLEKS                       R3 R3 K7 ["Y"]
       33 GETTABLEKS                       R4 R1 K8 ["AbsolutePosition"]
       35 GETTABLEKS                       R4 R4 K7 ["Y"]
       37 ADD                              R5 R4 R3
       38 GETTABLEKS                       R7 R2 K8 ["AbsolutePosition"]
       40 GETTABLEKS                       R7 R7 K7 ["Y"]
       42 GETTABLEKS                       R8 R0 K9 ["TextBounds"]
       44 GETTABLEKS                       R8 R8 K7 ["Y"]
       46 ADD                              R6 R7 R8
       47 GETTABLEKS                       R9 R2 K10 ["TextSize"]
       49 GETTABLEKS                       R10 R2 K11 ["LineHeight"]
       51 MUL                              R8 R9 R10
       52 SUB                              R7 R6 R8
       53 LOADNIL                          R8
       54 JUMPIFNOTLT                      R7 R4 ; [+3]
       56 SUB                              R8 R4 R7
       57 JUMP                             ; [+5]
       58 JUMPIFNOTLT                      R5 R6 ; [+3]
       60 SUB                              R8 R5 R6
       61 JUMP                             ; [+1]
       62 RETURN                           R0 0
       63 GETTABLEKS                       R9 R1 K12 ["CanvasPosition"]
       65 GETIMPORT                        R10 K15 [Vector2.new]
       67 LOADN                            R11 0
       68 MOVE                             R12 R8
       69 CALL                             R10 2 1
       70 SUB                              R9 R9 R10
       71 SETTABLEKS                       R9 R1 K12 ["CanvasPosition"]
       73 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["TextBox"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
        5 GETTABLEKS                       R4 R4 K2 ["join"]
        7 DUPTABLE                         R5 K17 [{"PlaceholderText", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment", "ClearTextOnFocus", "Font", "TextSize", "LineHeight", "TextColor3", "PlaceholderColor3", "TextEditable", "Interactable", "BackgroundTransparency"}]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K18 ["placeholder"]
       11 SETTABLEKS                       R6 R5 K3 ["PlaceholderText"]
       13 GETUPVAL                         R6 3
       14 SETTABLEKS                       R6 R5 K4 ["TextWrapped"]
       16 GETUPVAL                         R7 3
       17 JUMPIFNOT                        R7 ; [+3]
       18 GETIMPORT                        R6 K21 [Enum.TextTruncate.None]
       20 JUMP                             ; [+2]
       21 GETIMPORT                        R6 K23 [Enum.TextTruncate.AtEnd]
       23 SETTABLEKS                       R6 R5 K5 ["TextTruncate"]
       25 GETIMPORT                        R6 K25 [Enum.TextXAlignment.Left]
       27 SETTABLEKS                       R6 R5 K6 ["TextXAlignment"]
       29 GETIMPORT                        R6 K27 [Enum.TextYAlignment.Center]
       31 SETTABLEKS                       R6 R5 K7 ["TextYAlignment"]
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K8 ["ClearTextOnFocus"]
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K9 ["Font"]
       39 SETTABLEKS                       R6 R5 K9 ["Font"]
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R6 R6 K28 ["FontSize"]
       44 SETTABLEKS                       R6 R5 K10 ["TextSize"]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K11 ["LineHeight"]
       49 SETTABLEKS                       R6 R5 K11 ["LineHeight"]
       51 GETUPVAL                         R6 5
       52 GETTABLEKS                       R6 R6 K29 ["Color3"]
       54 SETTABLEKS                       R6 R5 K12 ["TextColor3"]
       56 GETUPVAL                         R6 6
       57 GETTABLEKS                       R6 R6 K29 ["Color3"]
       59 SETTABLEKS                       R6 R5 K13 ["PlaceholderColor3"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K30 ["isDisabled"]
       64 NOT                              R6 R7
       65 SETTABLEKS                       R6 R5 K14 ["TextEditable"]
       67 GETUPVAL                         R7 2
       68 GETTABLEKS                       R7 R7 K30 ["isDisabled"]
       70 NOT                              R6 R7
       71 SETTABLEKS                       R6 R5 K15 ["Interactable"]
       73 LOADN                            R6 1
       74 SETTABLEKS                       R6 R5 K16 ["BackgroundTransparency"]
       76 MOVE                             R6 R0
       77 JUMPIF                           R6 ; [+2]
       78 NEWTABLE                         R6 0 0
       80 CALL                             R4 2 1
       81 MOVE                             R5 R1
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodySmall"]
       10 GETTABLEKS                       R3 R1 K4 ["Color"]
       12 GETTABLEKS                       R3 R3 K5 ["Content"]
       14 GETTABLEKS                       R3 R3 K6 ["Muted"]
       16 GETTABLEKS                       R4 R1 K4 ["Color"]
       18 GETTABLEKS                       R4 R4 K5 ["Content"]
       20 GETTABLEKS                       R4 R4 K7 ["Emphasis"]
       22 GETTABLEKS                       R5 R1 K8 ["Semantic"]
       24 GETTABLEKS                       R5 R5 K4 ["Color"]
       26 GETTABLEKS                       R5 R5 K9 ["Common"]
       28 GETTABLEKS                       R5 R5 K10 ["Placeholder"]
       30 GETTABLEKS                       R6 R1 K11 ["Size"]
       32 GETTABLEKS                       R6 R6 K12 ["Size_300"]
       34 GETTABLEKS                       R7 R1 K13 ["Padding"]
       36 GETTABLEKS                       R7 R7 K14 ["XXSmall"]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K15 ["useRef"]
       41 LOADNIL                          R9
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R0 K16 ["textBoxRef"]
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K17 ["useState"]
       48 LOADN                            R11 0
       49 CALL                             R10 1 2
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R12 R12 K17 ["useState"]
       53 LOADN                            R13 0
       54 CALL                             R12 1 2
       55 GETTABLEKS                       R16 R0 K18 ["text"]
       57 LENGTH                           R15 R16
       58 LOADN                            R16 0
       59 JUMPIFLT                         R16 R15 ; [+2]
       61 LOADB                            R14 0 +1
       62 LOADB                            R14 1
       63 GETUPVAL                         R15 1
       64 GETTABLEKS                       R15 R15 K19 ["useCallback"]
       66 NEWCLOSURE                       R16 P0
       67 CAPTURE                          VAL R13
       68 NEWTABLE                         R17 0 1
       70 MOVE                             R18 R13
       71 SETLIST                          R17 R18 1 [1]
       73 CALL                             R15 2 1
       74 GETUPVAL                         R16 1
       75 GETTABLEKS                       R16 R16 K19 ["useCallback"]
       77 NEWCLOSURE                       R17 P1
       78 CAPTURE                          VAL R11
       79 NEWTABLE                         R18 0 1
       81 MOVE                             R19 R11
       82 SETLIST                          R18 R19 1 [1]
       84 CALL                             R16 2 1
       85 GETUPVAL                         R17 1
       86 GETTABLEKS                       R17 R17 K20 ["useEffect"]
       88 NEWCLOSURE                       R18 P2
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R11
       93 NEWTABLE                         R19 0 0
       95 CALL                             R17 2 0
       96 GETUPVAL                         R17 1
       97 GETTABLEKS                       R17 R17 K19 ["useCallback"]
       99 NEWCLOSURE                       R18 P3
      100 CAPTURE                          VAL R0
      101 NEWTABLE                         R19 0 1
      103 GETTABLEKS                       R20 R0 K21 ["onChanged"]
      105 SETLIST                          R19 R20 1 [1]
      107 CALL                             R17 2 1
      108 GETUPVAL                         R18 1
      109 GETTABLEKS                       R18 R18 K15 ["useRef"]
      111 LOADNIL                          R19
      112 CALL                             R18 1 1
      113 GETUPVAL                         R19 1
      114 GETTABLEKS                       R19 R19 K15 ["useRef"]
      116 LOADNIL                          R20
      117 CALL                             R19 1 1
      118 GETUPVAL                         R20 1
      119 GETTABLEKS                       R20 R20 K15 ["useRef"]
      121 LOADNIL                          R21
      122 CALL                             R20 1 1
      123 GETUPVAL                         R21 1
      124 GETTABLEKS                       R21 R21 K19 ["useCallback"]
      126 NEWCLOSURE                       R22 P4
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R0
      129 NEWTABLE                         R23 0 1
      131 GETTABLEKS                       R24 R0 K22 ["onReturnPressed"]
      133 SETLIST                          R23 R24 1 [1]
      135 CALL                             R21 2 1
      136 GETUPVAL                         R22 1
      137 GETTABLEKS                       R22 R22 K19 ["useCallback"]
      139 NEWCLOSURE                       R23 P5
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R20
      143 NEWTABLE                         R24 0 1
      145 GETTABLEKS                       R25 R18 K23 ["current"]
      147 SETLIST                          R24 R25 1 [1]
      149 CALL                             R22 2 1
      150 GETUPVAL                         R23 1
      151 GETTABLEKS                       R23 R23 K19 ["useCallback"]
      153 NEWCLOSURE                       R24 P6
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R20
      158 NEWTABLE                         R25 0 0
      160 CALL                             R23 2 1
      161 NEWCLOSURE                       R24 P7
      162 CAPTURE                          UPVAL U2
      163 CAPTURE                          UPVAL U3
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R3
      169 GETUPVAL                         R25 4
      170 GETTABLEKS                       R25 R25 K24 ["get"]
      172 CALL                             R25 0 1
      173 GETTABLEKS                       R26 R25 K25 ["isRobloxScriptSecurity"]
      175 CALL                             R26 0 1
      176 GETUPVAL                         R27 2
      177 LOADK                            R28 K26 ["ScrollingFrame"]
      178 NEWTABLE                         R29 16 0
      180 GETIMPORT                        R30 K29 [UDim2.new]
      182 LOADN                            R31 1
      183 LOADN                            R32 0
      184 LOADN                            R33 0
      185 FASTCALL2K                       MATH_MIN R10 K30 ; [+5]
      187 MOVE                             R35 R10
      188 LOADK                            R36 K30 [140]
      189 GETIMPORT                        R34 K33 [math.min]
      191 CALL                             R34 2 1
      192 CALL                             R30 4 1
      193 SETTABLEKS                       R30 R29 K11 ["Size"]
      195 GETIMPORT                        R30 K37 [Enum.AutomaticSize.Y]
      197 SETTABLEKS                       R30 R29 K38 ["AutomaticCanvasSize"]
      199 GETIMPORT                        R30 K29 [UDim2.new]
      201 LOADN                            R31 0
      202 LOADN                            R32 0
      203 LOADN                            R33 0
      204 LOADN                            R34 0
      205 CALL                             R30 4 1
      206 SETTABLEKS                       R30 R29 K39 ["CanvasSize"]
      208 GETIMPORT                        R30 K41 [Enum.ScrollingDirection.Y]
      210 SETTABLEKS                       R30 R29 K40 ["ScrollingDirection"]
      212 GETTABLEKS                       R30 R5 K42 ["Color3"]
      214 SETTABLEKS                       R30 R29 K43 ["ScrollBarImageColor3"]
      216 LOADN                            R31 140
      217 JUMPIFNOTLT                      R31 R10 ; [+4]
      219 GETTABLEKS                       R30 R5 K44 ["Transparency"]
      221 JUMP                             ; [+1]
      222 LOADN                            R30 1
      223 SETTABLEKS                       R30 R29 K45 ["ScrollBarImageTransparency"]
      225 SETTABLEKS                       R6 R29 K46 ["ScrollBarThickness"]
      227 LOADN                            R31 140
      228 JUMPIFLT                         R31 R10 ; [+2]
      230 LOADB                            R30 0 +1
      231 LOADB                            R30 1
      232 SETTABLEKS                       R30 R29 K47 ["ScrollingEnabled"]
      234 GETIMPORT                        R30 K50 [Enum.ScrollBarInset.Always]
      236 SETTABLEKS                       R30 R29 K51 ["VerticalScrollBarInset"]
      238 LOADN                            R30 1
      239 SETTABLEKS                       R30 R29 K52 ["BackgroundTransparency"]
      241 LOADN                            R30 0
      242 SETTABLEKS                       R30 R29 K53 ["BorderSizePixel"]
      244 GETUPVAL                         R30 1
      245 GETTABLEKS                       R30 R30 K54 ["Change"]
      247 GETTABLEKS                       R30 R30 K55 ["AbsoluteCanvasSize"]
      249 SETTABLE                         R15 R29 R30
      250 SETTABLEKS                       R8 R29 K56 ["ref"]
      252 DUPTABLE                         R30 K61 [{"TextBox", "UIFlexItem", "UIListLayout", "UIPadding"}]
      253 MOVE                             R31 R24
      254 NEWTABLE                         R32 16 0
      256 GETTABLEKS                       R33 R0 K18 ["text"]
      258 SETTABLEKS                       R33 R32 K62 ["Text"]
      260 GETIMPORT                        R33 K64 [UDim2.fromOffset]
      262 LOADN                            R36 2
      263 MUL                              R35 R36 R7
      264 SUB                              R34 R12 R35
      265 LOADN                            R35 28
      266 CALL                             R33 2 1
      267 SETTABLEKS                       R33 R32 K11 ["Size"]
      269 GETIMPORT                        R33 K37 [Enum.AutomaticSize.Y]
      271 SETTABLEKS                       R33 R32 K35 ["AutomaticSize"]
      273 JUMPIFNOT                        R26 ; [+2]
      274 LOADB                            R33 1
      275 JUMP                             ; [+1]
      276 LOADNIL                          R33
      277 SETTABLEKS                       R33 R32 K65 ["ShouldEmitUpAndDownArrowEvents"]
      279 JUMPIFNOT                        R26 ; [+2]
      280 LOADB                            R33 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R33
      283 SETTABLEKS                       R33 R32 K66 ["ShouldEmitTabEvents"]
      285 GETUPVAL                         R33 1
      286 GETTABLEKS                       R33 R33 K54 ["Change"]
      288 GETTABLEKS                       R33 R33 K62 ["Text"]
      290 SETTABLE                         R17 R32 R33
      291 GETUPVAL                         R33 1
      292 GETTABLEKS                       R33 R33 K67 ["Event"]
      294 GETTABLEKS                       R33 R33 K68 ["FocusLost"]
      296 SETTABLE                         R21 R32 R33
      297 GETUPVAL                         R33 1
      298 GETTABLEKS                       R33 R33 K54 ["Change"]
      300 GETTABLEKS                       R33 R33 K69 ["AbsoluteSize"]
      302 SETTABLE                         R16 R32 R33
      303 GETUPVAL                         R33 1
      304 GETTABLEKS                       R33 R33 K54 ["Change"]
      306 GETTABLEKS                       R33 R33 K70 ["CursorPosition"]
      308 SETTABLE                         R22 R32 R33
      309 SETTABLEKS                       R9 R32 K56 ["ref"]
      311 DUPTABLE                         R33 K72 [{"TextBoundChecker", "UIListLayout"}]
      312 MOVE                             R34 R24
      313 NEWTABLE                         R35 8 0
      315 GETIMPORT                        R36 K74 [UDim2.fromScale]
      317 LOADN                            R37 1
      318 LOADN                            R38 0
      319 CALL                             R36 2 1
      320 SETTABLEKS                       R36 R35 K11 ["Size"]
      322 LOADN                            R36 1
      323 SETTABLEKS                       R36 R35 K75 ["TextTransparency"]
      325 GETIMPORT                        R36 K78 [Enum.TextYAlignment.Top]
      327 SETTABLEKS                       R36 R35 K76 ["TextYAlignment"]
      329 LOADB                            R36 0
      330 SETTABLEKS                       R36 R35 K79 ["Interactable"]
      332 LOADB                            R36 0
      333 SETTABLEKS                       R36 R35 K80 ["TextEditable"]
      335 LOADB                            R36 0
      336 SETTABLEKS                       R36 R35 K81 ["Selectable"]
      338 GETUPVAL                         R36 1
      339 GETTABLEKS                       R36 R36 K54 ["Change"]
      341 GETTABLEKS                       R36 R36 K82 ["TextBounds"]
      343 SETTABLE                         R23 R35 R36
      344 SETTABLEKS                       R18 R35 K56 ["ref"]
      346 CALL                             R34 1 1
      347 SETTABLEKS                       R34 R33 K71 ["TextBoundChecker"]
      349 GETUPVAL                         R34 2
      350 LOADK                            R35 K59 ["UIListLayout"]
      351 DUPTABLE                         R36 K84 [{"VerticalFlex"}]
      352 GETIMPORT                        R37 K87 [Enum.UIFlexAlignment.Fill]
      354 SETTABLEKS                       R37 R36 K83 ["VerticalFlex"]
      356 CALL                             R34 2 1
      357 SETTABLEKS                       R34 R33 K59 ["UIListLayout"]
      359 CALL                             R31 2 1
      360 SETTABLEKS                       R31 R30 K57 ["TextBox"]
      362 GETUPVAL                         R31 2
      363 LOADK                            R32 K58 ["UIFlexItem"]
      364 DUPTABLE                         R33 K90 [{"FlexMode", "ItemLineAlignment"}]
      365 GETIMPORT                        R34 K92 [Enum.UIFlexMode.Fill]
      367 SETTABLEKS                       R34 R33 K88 ["FlexMode"]
      369 GETIMPORT                        R34 K94 [Enum.ItemLineAlignment.Center]
      371 SETTABLEKS                       R34 R33 K89 ["ItemLineAlignment"]
      373 CALL                             R31 2 1
      374 SETTABLEKS                       R31 R30 K58 ["UIFlexItem"]
      376 GETUPVAL                         R31 2
      377 LOADK                            R32 K59 ["UIListLayout"]
      378 DUPTABLE                         R33 K95 [{"ItemLineAlignment"}]
      379 GETIMPORT                        R34 K94 [Enum.ItemLineAlignment.Center]
      381 SETTABLEKS                       R34 R33 K89 ["ItemLineAlignment"]
      383 CALL                             R31 2 1
      384 SETTABLEKS                       R31 R30 K59 ["UIListLayout"]
      386 GETUPVAL                         R31 2
      387 LOADK                            R32 K60 ["UIPadding"]
      388 DUPTABLE                         R33 K98 [{"PaddingLeft", "PaddingRight"}]
      389 GETIMPORT                        R34 K100 [UDim.new]
      391 LOADN                            R35 0
      392 MOVE                             R36 R7
      393 CALL                             R34 2 1
      394 SETTABLEKS                       R34 R33 K96 ["PaddingLeft"]
      396 GETIMPORT                        R34 K100 [UDim.new]
      398 LOADN                            R35 0
      399 MOVE                             R36 R7
      400 CALL                             R34 2 1
      401 SETTABLEKS                       R34 R33 K97 ["PaddingRight"]
      403 CALL                             R31 2 1
      404 SETTABLEKS                       R31 R30 K60 ["UIPadding"]
      406 CALL                             R27 3 -1
      407 RETURN                           R27 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K1 ["current"]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K2 ["inputText"]
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K1 ["current"]
       25 GETUPVAL                         R3 1
       26 GETTABLE                         R1 R2 R3
       27 ORK                              R2 R1 K3 [""]
       28 SETTABLEKS                       R2 R0 K4 ["Text"]
       30 GETUPVAL                         R2 4
       31 GETUPVAL                         R3 1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["useContext"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["Context"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K3 ["threadId"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["useState"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R8 0 3
       31 GETTABLEKS                       R9 R0 K6 ["inputText"]
       33 MOVE                             R10 R4
       34 MOVE                             R11 R3
       35 SETLIST                          R8 R9 3 [1]
       37 CALL                             R6 2 0
       38 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputEnabled"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onInputStateChanged"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["promptAndLoadImageAsync"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["current"]
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R1 2
       10 NEWTABLE                         R2 0 1
       12 MOVE                             R3 R0
       13 SETLIST                          R2 R3 1 [1]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+11]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["current"]
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETUPVAL                         R2 3
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K4 [tostring]
       17 CALL                             R3 1 1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 GETIMPORT                        R0 K3 [task.spawn]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeImage"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R0 K2 [{"AskAssistant", "Responding"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["InputArea"]
        3 LOADK                            R4 K0 ["AskAssistant"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["AskAssistant"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["InputArea"]
       11 LOADK                            R4 K1 ["Responding"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Responding"]
       17 RETURN                           R0 1

PROTO_27:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 1
        7 GETIMPORT                        R2 K2 [utf8.len]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+5]
       13 GETUPVAL                         R3 3
       14 LOADK                            R4 K3 [""]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 JUMPIFNOTLT                      R1 R2 ; [+14]
       19 GETIMPORT                        R3 K5 [utf8.offset]
       21 MOVE                             R4 R0
       22 ADDK                             R5 R1 K6 [1]
       23 LOADN                            R6 1
       24 CALL                             R3 3 1
       25 JUMPIFNOT                        R3 ; [+6]
       26 LOADN                            R6 1
       27 SUBK                             R7 R3 K6 [1]
       28 NAMECALL                         R4 R0 K7 ["sub"]
       30 CALL                             R4 3 1
       31 MOVE                             R0 R4
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R0
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 4
       36 GETTABLEKS                       R3 R3 K8 ["CommandPrefix"]
       38 LOADN                            R6 1
       39 LENGTH                           R7 R3
       40 NAMECALL                         R4 R0 K7 ["sub"]
       42 CALL                             R4 3 1
       43 JUMPIFNOTEQ                      R4 R3 ; [+46]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R6 R6 K9 ["CommandDelimiter"]
       48 NAMECALL                         R4 R0 K10 ["find"]
       50 CALL                             R4 2 1
       51 JUMPIF                           R4 ; [+38]
       52 LENGTH                           R7 R3
       53 ADDK                             R6 R7 K6 [1]
       54 NAMECALL                         R4 R0 K7 ["sub"]
       56 CALL                             R4 2 1
       57 GETUPVAL                         R5 4
       58 GETTABLEKS                       R5 R5 K11 ["getRegisteredSlashCommands"]
       60 GETUPVAL                         R6 5
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K14 [table.create]
       64 LENGTH                           R7 R5
       65 CALL                             R6 1 1
       66 MOVE                             R7 R5
       67 LOADNIL                          R8
       68 LOADNIL                          R9
       69 FORGPREP                         R7
       70 LOADN                            R14 1
       71 LENGTH                           R15 R4
       72 NAMECALL                         R12 R11 K7 ["sub"]
       74 CALL                             R12 3 1
       75 JUMPIFNOTEQ                      R12 R4 ; [+8]
       77 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       79 MOVE                             R13 R6
       80 MOVE                             R14 R11
       81 GETIMPORT                        R12 K16 [table.insert]
       83 CALL                             R12 2 0
       84 FORGLOOP                         R7 2 ; [-15]
       86 GETUPVAL                         R7 6
       87 MOVE                             R8 R6
       88 CALL                             R7 1 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R4 6
       91 DUPCLOSURE                       R5 K17 [PROTO_27]
       92 CALL                             R4 1 0
       93 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETTABLEKS                       R3 R0 K2 ["Text"]
        9 LENGTH                           R2 R3
       10 ADDK                             R1 R2 K1 [1]
       11 SETTABLEKS                       R1 R0 K3 ["CursorPosition"]
       13 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FocusInput"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_34:
        0 GETIMPORT                        R0 K2 [string.gsub]
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K3 ["^%s+"]
        4 LOADK                            R3 K4 [""]
        5 CALL                             R0 3 1
        6 GETIMPORT                        R1 K2 [string.gsub]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K5 ["%s+$"]
       10 LOADK                            R4 K4 [""]
       11 CALL                             R1 3 1
       12 LENGTH                           R2 R1
       13 JUMPIFNOTEQKN                    R2 K6 [0] ; [+6]
       15 GETUPVAL                         R3 1
       16 LENGTH                           R2 R3
       17 JUMPIFNOTEQKN                    R2 K6 [0] ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 LOADK                            R3 K4 [""]
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 3
       24 NEWTABLE                         R3 0 0
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 4
       28 DUPTABLE                         R3 K9 [{"text", "images"}]
       29 SETTABLEKS                       R1 R3 K7 ["text"]
       31 GETUPVAL                         R6 1
       32 LENGTH                           R5 R6
       33 LOADN                            R6 0
       34 JUMPIFNOTLT                      R6 R5 ; [+3]
       36 GETUPVAL                         R4 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 SETTABLEKS                       R4 R3 K8 ["images"]
       41 CALL                             R2 1 0
       42 LENGTH                           R2 R1
       43 LOADN                            R3 0
       44 JUMPIFNOTLT                      R3 R2 ; [+4]
       46 GETUPVAL                         R2 5
       47 MOVE                             R3 R1
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 6
       50 JUMPIFNOT                        R2 ; [+3]
       51 GETUPVAL                         R2 6
       52 MOVE                             R3 R1
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+24]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["get"]
        5 CALL                             R0 0 1
        6 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 GETUPVAL                         R1 0
       12 JUMP                             ; [+4]
       13 GETTABLEKS                       R1 R0 K2 ["getMessageGuid"]
       15 GETUPVAL                         R2 0
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R2 R0 K3 ["logStopGeneration"]
       19 DUPTABLE                         R3 K6 [{"messageGuid", "sessionId"}]
       20 SETTABLEKS                       R1 R3 K4 ["messageGuid"]
       22 GETUPVAL                         R4 3
       23 SETTABLEKS                       R4 R3 K5 ["sessionId"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R0 4
       27 JUMPIFNOT                        R0 ; [+2]
       28 GETUPVAL                         R0 4
       29 CALL                             R0 0 0
       30 GETUPVAL                         R0 5
       31 CALL                             R0 0 0
       32 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 LOADK                            R3 K1 ["Send Prompt: %*"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 0
       10 JUMPIFNOTEQKS                    R0 K3 [""] ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 2
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R1 K4 ["current"]
       20 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_39:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R2 R2 K0 ["popCurrentPlayerPrompt"]
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+21]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["log"]
       13 LOADK                            R5 K2 ["Send Prompt: %*"]
       14 MOVE                             R7 R2
       15 NAMECALL                         R5 R5 K3 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 CALL                             R3 1 0
       20 JUMPIFNOTEQKS                    R2 K4 [""] ; [+2]
       22 JUMP                             ; [+17]
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 2
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K5 ["current"]
       30 JUMP                             ; [+9]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K6 ["getCurrentPlayerPromptReadySignal"]
       34 CALL                             R3 0 1
       35 MOVE                             R5 R0
       36 NAMECALL                         R3 R3 K7 ["Connect"]
       38 CALL                             R3 2 1
       39 MOVE                             R1 R3
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          REF R1
       42 CLOSEUPVALS                      R1
       43 RETURN                           R3 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
        3 LOADK                            R1 K1 ["SendMessage"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["registerFunction"]
        3 LOADK                            R1 K1 ["ClearConversation"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["inputEnabled"]
       11 GETTABLEKS                       R4 R2 K3 ["reasonDisabled"]
       13 GETTABLEKS                       R5 R2 K4 ["clearInputDisabled"]
       15 GETUPVAL                         R6 3
       16 CALL                             R6 0 1
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K0 ["useContext"]
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R8 R8 K1 ["Context"]
       23 CALL                             R7 1 1
       24 GETTABLEKS                       R8 R7 K5 ["sessionId"]
       26 GETUPVAL                         R9 5
       27 CALL                             R9 0 1
       28 GETUPVAL                         R10 6
       29 CALL                             R10 0 1
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K0 ["useContext"]
       33 GETUPVAL                         R12 7
       34 GETTABLEKS                       R12 R12 K1 ["Context"]
       36 CALL                             R11 1 1
       37 GETTABLEKS                       R13 R11 K6 ["selectedProvider"]
       39 GETUPVAL                         R14 8
       40 GETTABLEKS                       R14 R14 K7 ["LLMProviderTypes"]
       42 GETTABLEKS                       R14 R14 K8 ["Studio"]
       44 JUMPIFNOTEQ                      R13 R14 ; [+2]
       46 LOADB                            R12 0 +1
       47 LOADB                            R12 1
       48 LOADNIL                          R13
       49 GETUPVAL                         R14 9
       50 CALL                             R14 0 1
       51 JUMPIFNOT                        R14 ; [+3]
       52 GETUPVAL                         R14 10
       53 CALL                             R14 0 1
       54 MOVE                             R13 R14
       55 GETUPVAL                         R14 1
       56 GETTABLEKS                       R14 R14 K9 ["useState"]
       58 LOADK                            R15 K10 [""]
       59 CALL                             R14 1 2
       60 GETTABLEKS                       R17 R0 K11 ["textBoxRef"]
       62 JUMPIFNOT                        R17 ; [+3]
       63 GETTABLEKS                       R16 R0 K11 ["textBoxRef"]
       65 JUMP                             ; [+5]
       66 GETUPVAL                         R16 1
       67 GETTABLEKS                       R16 R16 K12 ["useRef"]
       69 LOADNIL                          R17
       70 CALL                             R16 1 1
       71 GETUPVAL                         R17 11
       72 CALL                             R17 0 1
       73 JUMPIFNOT                        R17 ; [+7]
       74 GETUPVAL                         R17 12
       75 DUPTABLE                         R18 K14 [{"inputText", "textBoxRef"}]
       76 SETTABLEKS                       R14 R18 K13 ["inputText"]
       78 SETTABLEKS                       R16 R18 K11 ["textBoxRef"]
       80 CALL                             R17 1 0
       81 NEWTABLE                         R17 0 0
       83 LOADNIL                          R18
       84 LOADNIL                          R19
       85 LOADNIL                          R20
       86 GETUPVAL                         R21 1
       87 GETTABLEKS                       R21 R21 K9 ["useState"]
       89 LOADNIL                          R22
       90 CALL                             R21 1 2
       91 GETUPVAL                         R23 1
       92 GETTABLEKS                       R23 R23 K12 ["useRef"]
       94 LOADB                            R24 1
       95 CALL                             R23 1 1
       96 GETUPVAL                         R24 13
       97 CALL                             R24 0 1
       98 JUMPIFNOT                        R24 ; [+12]
       99 GETUPVAL                         R24 1
      100 GETTABLEKS                       R24 R24 K15 ["useEffect"]
      102 NEWCLOSURE                       R25 P0
      103 CAPTURE                          UPVAL U14
      104 CAPTURE                          VAL R3
      105 NEWTABLE                         R26 0 1
      107 MOVE                             R27 R3
      108 SETLIST                          R26 R27 1 [1]
      110 CALL                             R24 2 0
      111 GETUPVAL                         R24 15
      112 CALL                             R24 0 1
      113 JUMPIFNOT                        R24 ; [+14]
      114 GETUPVAL                         R24 1
      115 GETTABLEKS                       R24 R24 K15 ["useEffect"]
      117 NEWCLOSURE                       R25 P1
      118 CAPTURE                          UPVAL U16
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R10
      122 NEWTABLE                         R26 0 1
      124 MOVE                             R27 R3
      125 SETLIST                          R26 R27 1 [1]
      127 CALL                             R24 2 0
      128 GETUPVAL                         R24 1
      129 GETTABLEKS                       R24 R24 K15 ["useEffect"]
      131 NEWCLOSURE                       R25 P2
      132 CAPTURE                          VAL R23
      133 NEWTABLE                         R26 0 0
      135 CALL                             R24 2 0
      136 GETUPVAL                         R24 1
      137 GETTABLEKS                       R24 R24 K9 ["useState"]
      139 NEWTABLE                         R25 0 0
      141 CALL                             R24 1 2
      142 MOVE                             R17 R24
      143 MOVE                             R18 R25
      144 GETUPVAL                         R24 1
      145 GETTABLEKS                       R24 R24 K16 ["useCallback"]
      147 NEWCLOSURE                       R25 P3
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R22
      150 CAPTURE                          UPVAL U17
      151 CAPTURE                          REF R18
      152 NEWTABLE                         R26 0 0
      154 CALL                             R24 2 1
      155 MOVE                             R19 R24
      156 GETUPVAL                         R24 1
      157 GETTABLEKS                       R24 R24 K16 ["useCallback"]
      159 NEWCLOSURE                       R25 P4
      160 CAPTURE                          REF R18
      161 CAPTURE                          UPVAL U17
      162 NEWTABLE                         R26 0 0
      164 CALL                             R24 2 1
      165 MOVE                             R20 R24
      166 GETUPVAL                         R24 1
      167 GETTABLEKS                       R24 R24 K9 ["useState"]
      169 NEWTABLE                         R25 0 0
      171 CALL                             R24 1 2
      172 GETTABLEKS                       R26 R0 K17 ["OnMessageSent"]
      174 GETUPVAL                         R27 18
      175 DUPTABLE                         R28 K19 [{"setInputEnabled"}]
      176 GETUPVAL                         R29 19
      177 MOVE                             R30 R2
      178 CALL                             R29 1 1
      179 SETTABLEKS                       R29 R28 K18 ["setInputEnabled"]
      181 CALL                             R27 1 1
      182 GETUPVAL                         R28 1
      183 GETTABLEKS                       R28 R28 K20 ["useMemo"]
      185 DUPCLOSURE                       R29 K21 [PROTO_26]
      186 CAPTURE                          UPVAL U20
      187 NEWTABLE                         R30 0 1
      189 GETUPVAL                         R31 20
      190 GETTABLEKS                       R31 R31 K22 ["locale"]
      192 SETLIST                          R30 R31 1 [1]
      194 CALL                             R28 2 1
      195 GETUPVAL                         R29 21
      196 DUPTABLE                         R30 K24 [{"textBoxRef", "setInputText"}]
      197 SETTABLEKS                       R16 R30 K11 ["textBoxRef"]
      199 SETTABLEKS                       R15 R30 K23 ["setInputText"]
      201 CALL                             R29 1 2
      202 GETUPVAL                         R31 1
      203 GETTABLEKS                       R31 R31 K16 ["useCallback"]
      205 NEWCLOSURE                       R32 P6
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R22
      208 CAPTURE                          UPVAL U22
      209 CAPTURE                          VAL R15
      210 CAPTURE                          UPVAL U23
      211 CAPTURE                          REF R13
      212 CAPTURE                          VAL R25
      213 NEWTABLE                         R33 0 4
      215 MOVE                             R34 R15
      216 MOVE                             R35 R25
      217 MOVE                             R36 R13
      218 MOVE                             R37 R21
      219 SETLIST                          R33 R34 4 [1]
      221 CALL                             R31 2 1
      222 GETUPVAL                         R32 1
      223 GETTABLEKS                       R32 R32 K9 ["useState"]
      225 LOADNIL                          R33
      226 CALL                             R32 1 2
      227 GETUPVAL                         R34 1
      228 GETTABLEKS                       R34 R34 K15 ["useEffect"]
      230 NEWCLOSURE                       R35 P7
      231 CAPTURE                          VAL R32
      232 CAPTURE                          VAL R16
      233 NEWTABLE                         R36 0 1
      235 MOVE                             R37 R32
      236 SETLIST                          R36 R37 1 [1]
      238 CALL                             R34 2 0
      239 GETUPVAL                         R34 1
      240 GETTABLEKS                       R34 R34 K16 ["useCallback"]
      242 NEWCLOSURE                       R35 P8
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R33
      245 NEWTABLE                         R36 0 0
      247 CALL                             R34 2 1
      248 GETUPVAL                         R35 11
      249 CALL                             R35 0 1
      250 JUMPIF                           R35 ; [+3]
      251 GETUPVAL                         R35 9
      252 CALL                             R35 0 1
      253 JUMPIFNOT                        R35 ; [+9]
      254 GETUPVAL                         R35 1
      255 GETTABLEKS                       R35 R35 K15 ["useEffect"]
      257 NEWCLOSURE                       R36 P9
      258 CAPTURE                          UPVAL U24
      259 CAPTURE                          VAL R33
      260 NEWTABLE                         R37 0 0
      262 CALL                             R35 2 0
      263 GETUPVAL                         R35 1
      264 GETTABLEKS                       R35 R35 K16 ["useCallback"]
      266 NEWCLOSURE                       R36 P10
      267 CAPTURE                          VAL R14
      268 CAPTURE                          REF R17
      269 CAPTURE                          VAL R15
      270 CAPTURE                          REF R18
      271 CAPTURE                          VAL R27
      272 CAPTURE                          VAL R29
      273 CAPTURE                          VAL R26
      274 NEWTABLE                         R37 0 7
      276 MOVE                             R38 R14
      277 MOVE                             R39 R15
      278 MOVE                             R40 R27
      279 MOVE                             R41 R29
      280 MOVE                             R42 R26
      281 MOVE                             R43 R17
      282 MOVE                             R44 R18
      283 SETLIST                          R37 R38 7 [1]
      285 CALL                             R35 2 1
      286 GETUPVAL                         R36 1
      287 GETTABLEKS                       R36 R36 K16 ["useCallback"]
      289 NEWCLOSURE                       R37 P11
      290 CAPTURE                          VAL R9
      291 CAPTURE                          UPVAL U25
      292 CAPTURE                          UPVAL U11
      293 CAPTURE                          VAL R8
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R5
      296 NEWTABLE                         R38 0 4
      298 MOVE                             R39 R1
      299 MOVE                             R40 R5
      300 MOVE                             R41 R8
      301 MOVE                             R42 R9
      302 SETLIST                          R38 R39 4 [1]
      304 CALL                             R36 2 1
      305 LOADNIL                          R37
      306 GETUPVAL                         R38 15
      307 CALL                             R38 0 1
      308 JUMPIF                           R38 ; [+3]
      309 GETUPVAL                         R38 13
      310 CALL                             R38 0 1
      311 JUMPIFNOT                        R38 ; [+19]
      312 GETUPVAL                         R38 1
      313 GETTABLEKS                       R38 R38 K12 ["useRef"]
      315 LOADB                            R39 0
      316 CALL                             R38 1 1
      317 MOVE                             R37 R38
      318 GETUPVAL                         R38 1
      319 GETTABLEKS                       R38 R38 K15 ["useEffect"]
      321 NEWCLOSURE                       R39 P12
      322 CAPTURE                          REF R37
      323 CAPTURE                          VAL R35
      324 NEWTABLE                         R40 0 2
      326 MOVE                             R41 R14
      327 MOVE                             R42 R35
      328 SETLIST                          R40 R41 2 [1]
      330 CALL                             R38 2 0
      331 GETUPVAL                         R38 15
      332 CALL                             R38 0 1
      333 JUMPIFNOT                        R38 ; [+14]
      334 GETUPVAL                         R38 1
      335 GETTABLEKS                       R38 R38 K15 ["useEffect"]
      337 NEWCLOSURE                       R39 P13
      338 CAPTURE                          UPVAL U26
      339 CAPTURE                          VAL R15
      340 CAPTURE                          REF R37
      341 CAPTURE                          UPVAL U16
      342 NEWTABLE                         R40 0 1
      344 MOVE                             R41 R15
      345 SETLIST                          R40 R41 1 [1]
      347 CALL                             R38 2 0
      348 GETUPVAL                         R38 13
      349 CALL                             R38 0 1
      350 JUMPIFNOT                        R38 ; [+37]
      351 GETUPVAL                         R38 1
      352 GETTABLEKS                       R38 R38 K15 ["useEffect"]
      354 NEWCLOSURE                       R39 P14
      355 CAPTURE                          UPVAL U27
      356 CAPTURE                          VAL R15
      357 CAPTURE                          REF R37
      358 NEWTABLE                         R40 0 1
      360 MOVE                             R41 R15
      361 SETLIST                          R40 R41 1 [1]
      363 CALL                             R38 2 0
      364 GETUPVAL                         R38 1
      365 GETTABLEKS                       R38 R38 K12 ["useRef"]
      367 MOVE                             R39 R36
      368 CALL                             R38 1 1
      369 SETTABLEKS                       R36 R38 K25 ["current"]
      371 GETUPVAL                         R39 1
      372 GETTABLEKS                       R39 R39 K12 ["useRef"]
      374 MOVE                             R40 R6
      375 CALL                             R39 1 1
      376 SETTABLEKS                       R6 R39 K25 ["current"]
      378 GETUPVAL                         R40 1
      379 GETTABLEKS                       R40 R40 K15 ["useEffect"]
      381 NEWCLOSURE                       R41 P15
      382 CAPTURE                          UPVAL U27
      383 CAPTURE                          VAL R38
      384 CAPTURE                          VAL R39
      385 NEWTABLE                         R42 0 0
      387 CALL                             R40 2 0
      388 MOVE                             R38 R4
      389 JUMPIFNOT                        R38 ; [+9]
      390 GETTABLEKS                       R39 R4 K3 ["reasonDisabled"]
      392 GETUPVAL                         R40 28
      393 GETTABLEKS                       R40 R40 K26 ["Generation"]
      395 JUMPIFEQ                         R39 R40 ; [+2]
      397 LOADB                            R38 0 +1
      398 LOADB                            R38 1
      399 LENGTH                           R40 R14
      400 JUMPIFNOTEQKN                    R40 K27 [0] ; [+5]
      402 LOADB                            R39 1
      403 LENGTH                           R40 R17
      404 JUMPIFEQKN                       R40 K27 [0] ; [+2]
      406 NOT                              R39 R3
      407 GETUPVAL                         R40 29
      408 CALL                             R40 0 1
      409 GETUPVAL                         R41 1
      410 GETTABLEKS                       R41 R41 K28 ["useBinding"]
      412 LOADN                            R42 0
      413 CALL                             R41 1 2
      414 GETUPVAL                         R43 30
      415 GETUPVAL                         R44 31
      416 DUPTABLE                         R45 K32 [{"tag", "LayoutOrder", "testId"}]
      417 NEWTABLE                         R46 2 0
      419 LOADB                            R47 1
      420 SETTABLEKS                       R47 R46 K33 ["col size-full-0 auto-y"]
      422 GETUPVAL                         R48 32
      423 CALL                             R48 0 1
      424 NOT                              R47 R48
      425 SETTABLEKS                       R47 R46 K34 ["margin-x-small"]
      427 SETTABLEKS                       R46 R45 K29 ["tag"]
      429 GETTABLEKS                       R46 R0 K30 ["LayoutOrder"]
      431 SETTABLEKS                       R46 R45 K30 ["LayoutOrder"]
      433 GETUPVAL                         R46 33
      434 GETTABLEKS                       R46 R46 K35 ["InputArea"]
      436 GETTABLEKS                       R46 R46 K36 ["Container"]
      438 SETTABLEKS                       R46 R45 K31 ["testId"]
      440 DUPTABLE                         R46 K39 [{"Menu", "Footer"}]
      441 GETUPVAL                         R47 30
      442 GETUPVAL                         R48 34
      443 DUPTABLE                         R49 K44 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      444 LENGTH                           R51 R24
      445 LOADN                            R52 0
      446 JUMPIFLT                         R52 R51 ; [+2]
      448 LOADB                            R50 0 +1
      449 LOADB                            R50 1
      450 SETTABLEKS                       R50 R49 K40 ["isOpen"]
      452 SETTABLEKS                       R24 R49 K41 ["items"]
      454 SETTABLEKS                       R41 R49 K42 ["width"]
      456 SETTABLEKS                       R16 R49 K11 ["textBoxRef"]
      458 SETTABLEKS                       R34 R49 K43 ["setTextAndFocus"]
      460 DUPTABLE                         R50 K46 [{"MessageField"}]
      461 GETUPVAL                         R51 30
      462 GETUPVAL                         R52 31
      463 DUPTABLE                         R53 K48 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      464 NEWTABLE                         R54 4 0
      466 LOADB                            R55 1
      467 SETTABLEKS                       R55 R54 K49 ["col size-full-0 auto-y gap-small radius-large padding-medium"]
      469 JUMPIFNOTEQKNIL                  R21 ; [+2]
      471 LOADB                            R55 0 +1
      472 LOADB                            R55 1
      473 SETTABLEKS                       R55 R54 K50 ["stroke-system-alert"]
      475 JUMPIFEQKNIL                     R21 ; [+2]
      477 LOADB                            R55 0 +1
      478 LOADB                            R55 1
      479 SETTABLEKS                       R55 R54 K51 ["stroke-emphasis"]
      481 SETTABLEKS                       R54 R53 K29 ["tag"]
      483 NEWCLOSURE                       R54 P16
      484 CAPTURE                          VAL R42
      485 SETTABLEKS                       R54 R53 K47 ["onAbsoluteSizeChanged"]
      487 MOVE                             R54 R40
      488 CALL                             R54 0 1
      489 SETTABLEKS                       R54 R53 K30 ["LayoutOrder"]
      491 DUPTABLE                         R54 K55 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      492 GETUPVAL                         R55 30
      493 LOADK                            R56 K52 ["UIFlexItem"]
      494 DUPTABLE                         R57 K58 [{"FlexMode", "ItemLineAlignment"}]
      495 GETIMPORT                        R58 K62 [Enum.UIFlexMode.Fill]
      497 SETTABLEKS                       R58 R57 K56 ["FlexMode"]
      499 GETIMPORT                        R58 K64 [Enum.ItemLineAlignment.Center]
      501 SETTABLEKS                       R58 R57 K57 ["ItemLineAlignment"]
      503 CALL                             R55 2 1
      504 SETTABLEKS                       R55 R54 K52 ["UIFlexItem"]
      506 LOADB                            R55 0
      507 LENGTH                           R56 R17
      508 LOADN                            R57 0
      509 JUMPIFNOTLT                      R57 R56 ; [+23]
      511 GETUPVAL                         R55 30
      512 GETUPVAL                         R56 31
      513 DUPTABLE                         R57 K65 [{"tag", "LayoutOrder"}]
      514 LOADK                            R58 K66 ["row size-full-0 auto-y"]
      515 SETTABLEKS                       R58 R57 K29 ["tag"]
      517 MOVE                             R58 R40
      518 CALL                             R58 0 1
      519 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      521 DUPTABLE                         R58 K68 [{"List"}]
      522 GETUPVAL                         R59 30
      523 GETUPVAL                         R60 35
      524 DUPTABLE                         R61 K71 [{"attachedImages", "onRemoveImage"}]
      525 SETTABLEKS                       R17 R61 K69 ["attachedImages"]
      527 SETTABLEKS                       R20 R61 K70 ["onRemoveImage"]
      529 CALL                             R59 2 1
      530 SETTABLEKS                       R59 R58 K67 ["List"]
      532 CALL                             R55 3 1
      533 SETTABLEKS                       R55 R54 K53 ["AttachedImagesPreview"]
      535 GETUPVAL                         R55 30
      536 GETUPVAL                         R56 31
      537 DUPTABLE                         R57 K65 [{"tag", "LayoutOrder"}]
      538 LOADK                            R58 K72 ["col size-full-0 auto-y gap-medium flex-between flex-y-fill align-y-center"]
      539 SETTABLEKS                       R58 R57 K29 ["tag"]
      541 MOVE                             R58 R40
      542 CALL                             R58 0 1
      543 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      545 DUPTABLE                         R58 K75 [{"TextInput", "ActionButtons"}]
      546 GETUPVAL                         R59 30
      547 GETUPVAL                         R60 36
      548 DUPTABLE                         R61 K81 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      549 SETTABLEKS                       R14 R61 K76 ["text"]
      551 JUMPIFNOT                        R38 ; [+3]
      552 GETTABLEKS                       R62 R28 K82 ["Responding"]
      554 JUMP                             ; [+6]
      555 JUMPIFEQKNIL                     R30 ; [+3]
      557 MOVE                             R62 R30
      558 JUMP                             ; [+2]
      559 GETTABLEKS                       R62 R28 K83 ["AskAssistant"]
      561 SETTABLEKS                       R62 R61 K77 ["placeholder"]
      563 NOT                              R62 R3
      564 SETTABLEKS                       R62 R61 K78 ["isDisabled"]
      566 MOVE                             R62 R40
      567 CALL                             R62 0 1
      568 SETTABLEKS                       R62 R61 K30 ["LayoutOrder"]
      570 SETTABLEKS                       R31 R61 K79 ["onChanged"]
      572 SETTABLEKS                       R35 R61 K80 ["onReturnPressed"]
      574 SETTABLEKS                       R16 R61 K11 ["textBoxRef"]
      576 CALL                             R59 2 1
      577 SETTABLEKS                       R59 R58 K73 ["TextInput"]
      579 GETUPVAL                         R59 30
      580 GETUPVAL                         R60 31
      581 DUPTABLE                         R61 K65 [{"tag", "LayoutOrder"}]
      582 LOADK                            R62 K84 ["row size-full-0 auto-y gap-xsmall align-y-center"]
      583 SETTABLEKS                       R62 R61 K29 ["tag"]
      585 MOVE                             R62 R40
      586 CALL                             R62 0 1
      587 SETTABLEKS                       R62 R61 K30 ["LayoutOrder"]
      589 DUPTABLE                         R62 K91 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButtonContainer", "StopButton"}]
      590 JUMPIF                           R12 ; [+3]
      591 GETUPVAL                         R64 37
      592 CALL                             R64 0 1
      593 JUMPIFNOT                        R64 ; [+14]
      594 GETUPVAL                         R63 30
      595 GETUPVAL                         R64 38
      596 DUPTABLE                         R65 K93 [{"isDisabled", "onActivated", "LayoutOrder"}]
      597 NOT                              R66 R3
      598 SETTABLEKS                       R66 R65 K78 ["isDisabled"]
      600 SETTABLEKS                       R19 R65 K92 ["onActivated"]
      602 MOVE                             R66 R40
      603 CALL                             R66 0 1
      604 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      606 CALL                             R63 2 1
      607 JUMP                             ; [+1]
      608 LOADNIL                          R63
      609 SETTABLEKS                       R63 R62 K85 ["AttachImageButton"]
      611 GETUPVAL                         R63 30
      612 GETUPVAL                         R64 39
      613 DUPTABLE                         R65 K94 [{"LayoutOrder"}]
      614 MOVE                             R66 R40
      615 CALL                             R66 0 1
      616 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      618 CALL                             R63 2 1
      619 SETTABLEKS                       R63 R62 K86 ["ServerManagementButton"]
      621 GETUPVAL                         R63 30
      622 GETUPVAL                         R64 31
      623 DUPTABLE                         R65 K65 [{"tag", "LayoutOrder"}]
      624 LOADK                            R66 K95 ["fill"]
      625 SETTABLEKS                       R66 R65 K29 ["tag"]
      627 MOVE                             R66 R40
      628 CALL                             R66 0 1
      629 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      631 CALL                             R63 2 1
      632 SETTABLEKS                       R63 R62 K87 ["Spacer"]
      634 GETUPVAL                         R64 40
      635 CALL                             R64 0 1
      636 JUMPIFNOT                        R64 ; [+9]
      637 GETUPVAL                         R63 30
      638 GETUPVAL                         R64 41
      639 DUPTABLE                         R65 K94 [{"LayoutOrder"}]
      640 MOVE                             R66 R40
      641 CALL                             R66 0 1
      642 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      644 CALL                             R63 2 1
      645 JUMP                             ; [+1]
      646 LOADNIL                          R63
      647 SETTABLEKS                       R63 R62 K88 ["SelectAssistantMode"]
      649 NOT                              R63 R38
      650 JUMPIFNOT                        R63 ; [+110]
      651 GETUPVAL                         R64 42
      652 CALL                             R64 0 1
      653 JUMPIFNOT                        R64 ; [+77]
      654 GETUPVAL                         R63 30
      655 GETUPVAL                         R64 31
      656 DUPTABLE                         R65 K65 [{"tag", "LayoutOrder"}]
      657 LOADK                            R66 K96 ["auto-xy"]
      658 SETTABLEKS                       R66 R65 K29 ["tag"]
      660 MOVE                             R66 R40
      661 CALL                             R66 0 1
      662 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      664 DUPTABLE                         R66 K98 [{"SendButtonRotation"}]
      665 GETUPVAL                         R67 30
      666 GETUPVAL                         R68 31
      667 DUPTABLE                         R69 K100 [{"tag", "Rotation", "LayoutOrder"}]
      668 LOADK                            R70 K96 ["auto-xy"]
      669 SETTABLEKS                       R70 R69 K29 ["tag"]
      671 LOADN                            R70 166
      672 SETTABLEKS                       R70 R69 K99 ["Rotation"]
      674 MOVE                             R70 R40
      675 CALL                             R70 0 1
      676 SETTABLEKS                       R70 R69 K30 ["LayoutOrder"]
      678 DUPTABLE                         R70 K102 [{"SendButton"}]
      679 GETUPVAL                         R71 30
      680 GETUPVAL                         R72 43
      681 DUPTABLE                         R73 K107 [{"icon", "size", "variant", "isCircular", "isDisabled", "onActivated", "LayoutOrder"}]
      682 LOADK                            R74 K108 ["icons/navigation/seeAllArrow_small"]
      683 SETTABLEKS                       R74 R73 K103 ["icon"]
      685 GETUPVAL                         R74 44
      686 GETTABLEKS                       R74 R74 K109 ["Enums"]
      688 GETTABLEKS                       R74 R74 K110 ["InputSize"]
      690 GETTABLEKS                       R74 R74 K111 ["XSmall"]
      692 SETTABLEKS                       R74 R73 K104 ["size"]
      694 JUMPIFNOT                        R39 ; [+8]
      695 GETUPVAL                         R74 44
      696 GETTABLEKS                       R74 R74 K109 ["Enums"]
      698 GETTABLEKS                       R74 R74 K112 ["ButtonVariant"]
      700 GETTABLEKS                       R74 R74 K113 ["Standard"]
      702 JUMP                             ; [+7]
      703 GETUPVAL                         R74 44
      704 GETTABLEKS                       R74 R74 K109 ["Enums"]
      706 GETTABLEKS                       R74 R74 K112 ["ButtonVariant"]
      708 GETTABLEKS                       R74 R74 K114 ["Emphasis"]
      710 SETTABLEKS                       R74 R73 K105 ["variant"]
      712 LOADB                            R74 1
      713 SETTABLEKS                       R74 R73 K106 ["isCircular"]
      715 SETTABLEKS                       R39 R73 K78 ["isDisabled"]
      717 SETTABLEKS                       R35 R73 K92 ["onActivated"]
      719 MOVE                             R74 R40
      720 CALL                             R74 0 1
      721 SETTABLEKS                       R74 R73 K30 ["LayoutOrder"]
      723 CALL                             R71 2 1
      724 SETTABLEKS                       R71 R70 K101 ["SendButton"]
      726 CALL                             R67 3 1
      727 SETTABLEKS                       R67 R66 K97 ["SendButtonRotation"]
      729 CALL                             R63 3 1
      730 JUMP                             ; [+30]
      731 GETUPVAL                         R63 30
      732 GETUPVAL                         R64 45
      733 DUPTABLE                         R65 K118 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder", "skipBackgroundColoringDisabled"}]
      734 LOADK                            R66 K108 ["icons/navigation/seeAllArrow_small"]
      735 SETTABLEKS                       R66 R65 K103 ["icon"]
      737 JUMPIFNOT                        R39 ; [+2]
      738 LOADK                            R66 K119 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      739 JUMP                             ; [+1]
      740 LOADK                            R66 K120 ["size-600-600 radius-circle bg-action-emphasis align-x-center align-y-center"]
      741 SETTABLEKS                       R66 R65 K29 ["tag"]
      743 LOADK                            R66 K121 ["size-300-300 content-emphasis"]
      744 SETTABLEKS                       R66 R65 K115 ["iconTag"]
      746 LOADN                            R66 166
      747 SETTABLEKS                       R66 R65 K116 ["iconRotation"]
      749 SETTABLEKS                       R39 R65 K78 ["isDisabled"]
      751 SETTABLEKS                       R35 R65 K92 ["onActivated"]
      753 MOVE                             R66 R40
      754 CALL                             R66 0 1
      755 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      757 LOADB                            R66 1
      758 SETTABLEKS                       R66 R65 K117 ["skipBackgroundColoringDisabled"]
      760 CALL                             R63 2 1
      761 SETTABLEKS                       R63 R62 K89 ["SendButtonContainer"]
      763 MOVE                             R63 R38
      764 JUMPIFNOT                        R63 ; [+80]
      765 GETUPVAL                         R64 42
      766 CALL                             R64 0 1
      767 JUMPIFNOT                        R64 ; [+48]
      768 GETUPVAL                         R63 30
      769 GETUPVAL                         R64 43
      770 DUPTABLE                         R65 K122 [{"icon", "size", "variant", "isCircular", "onActivated", "LayoutOrder", "testId"}]
      771 GETUPVAL                         R66 44
      772 GETTABLEKS                       R66 R66 K109 ["Enums"]
      774 GETTABLEKS                       R66 R66 K123 ["IconName"]
      776 GETTABLEKS                       R66 R66 K124 ["StopSmall"]
      778 SETTABLEKS                       R66 R65 K103 ["icon"]
      780 GETUPVAL                         R66 44
      781 GETTABLEKS                       R66 R66 K109 ["Enums"]
      783 GETTABLEKS                       R66 R66 K110 ["InputSize"]
      785 GETTABLEKS                       R66 R66 K111 ["XSmall"]
      787 SETTABLEKS                       R66 R65 K104 ["size"]
      789 GETUPVAL                         R66 44
      790 GETTABLEKS                       R66 R66 K109 ["Enums"]
      792 GETTABLEKS                       R66 R66 K112 ["ButtonVariant"]
      794 GETTABLEKS                       R66 R66 K113 ["Standard"]
      796 SETTABLEKS                       R66 R65 K105 ["variant"]
      798 LOADB                            R66 1
      799 SETTABLEKS                       R66 R65 K106 ["isCircular"]
      801 SETTABLEKS                       R36 R65 K92 ["onActivated"]
      803 MOVE                             R66 R40
      804 CALL                             R66 0 1
      805 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      807 GETUPVAL                         R66 33
      808 GETTABLEKS                       R66 R66 K35 ["InputArea"]
      810 GETTABLEKS                       R66 R66 K90 ["StopButton"]
      812 SETTABLEKS                       R66 R65 K31 ["testId"]
      814 CALL                             R63 2 1
      815 JUMP                             ; [+29]
      816 GETUPVAL                         R63 30
      817 GETUPVAL                         R64 45
      818 DUPTABLE                         R65 K125 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
      819 LOADK                            R66 K126 ["icons/controls/mediaStop_small"]
      820 SETTABLEKS                       R66 R65 K103 ["icon"]
      822 LOADK                            R66 K119 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      823 SETTABLEKS                       R66 R65 K29 ["tag"]
      825 LOADK                            R66 K121 ["size-300-300 content-emphasis"]
      826 SETTABLEKS                       R66 R65 K115 ["iconTag"]
      828 SETTABLEKS                       R36 R65 K92 ["onActivated"]
      830 MOVE                             R66 R40
      831 CALL                             R66 0 1
      832 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      834 GETUPVAL                         R66 33
      835 GETTABLEKS                       R66 R66 K35 ["InputArea"]
      837 GETTABLEKS                       R66 R66 K90 ["StopButton"]
      839 SETTABLEKS                       R66 R65 K31 ["testId"]
      841 LOADB                            R66 1
      842 SETTABLEKS                       R66 R65 K117 ["skipBackgroundColoringDisabled"]
      844 CALL                             R63 2 1
      845 SETTABLEKS                       R63 R62 K90 ["StopButton"]
      847 CALL                             R59 3 1
      848 SETTABLEKS                       R59 R58 K74 ["ActionButtons"]
      850 CALL                             R55 3 1
      851 SETTABLEKS                       R55 R54 K54 ["InputRow"]
      853 CALL                             R51 3 1
      854 SETTABLEKS                       R51 R50 K45 ["MessageField"]
      856 CALL                             R47 3 1
      857 SETTABLEKS                       R47 R46 K37 ["Menu"]
      859 GETUPVAL                         R47 30
      860 GETUPVAL                         R48 46
      861 DUPTABLE                         R49 K128 [{"LayoutOrder", "imageAttachError"}]
      862 MOVE                             R50 R40
      863 CALL                             R50 0 1
      864 SETTABLEKS                       R50 R49 K30 ["LayoutOrder"]
      866 SETTABLEKS                       R21 R49 K127 ["imageAttachError"]
      868 CALL                             R47 2 1
      869 SETTABLEKS                       R47 R46 K38 ["Footer"]
      871 CALL                             R43 3 -1
      872 CLOSEUPVALS                      R13
      873 RETURN                           R43 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantModeDropdown"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["AttachedImagesPreviewList"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["CustomIconButton"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Guest"]
       39 GETTABLEKS                       R6 R6 K13 ["Environment"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["AssistantEval"]
       48 GETTABLEKS                       R7 R7 K16 ["EvalController"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Util"]
       55 GETTABLEKS                       R8 R8 K15 ["AssistantEval"]
       57 GETTABLEKS                       R8 R8 K17 ["EvalFunctionRegistry"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Events"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K9 ["Parent"]
       69 GETTABLEKS                       R10 R10 K19 ["Foundation"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Components"]
       76 GETTABLEKS                       R11 R11 K20 ["ImageAttachmentButton"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K14 ["Util"]
       83 GETTABLEKS                       R12 R12 K21 ["ImageAttachmentUtils"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K6 ["Components"]
       90 GETTABLEKS                       R13 R13 K22 ["InputFooter"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Components"]
       97 GETTABLEKS                       R14 R14 K23 ["Contexts"]
       99 GETTABLEKS                       R14 R14 K24 ["InputStateContext"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K6 ["Components"]
      106 GETTABLEKS                       R15 R15 K23 ["Contexts"]
      108 GETTABLEKS                       R15 R15 K25 ["LLMProviderSelectionContext"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K14 ["Util"]
      115 GETTABLEKS                       R16 R16 K26 ["MultiPlayersConnection"]
      117 GETTABLEKS                       R16 R16 K27 ["MultiPlayersAgentClient"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R0 K9 ["Parent"]
      124 GETTABLEKS                       R17 R17 K28 ["React"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R18 R0 K9 ["Parent"]
      131 GETTABLEKS                       R18 R18 K29 ["ReactUtils"]
      133 CALL                             R17 1 1
      134 GETIMPORT                        R18 K5 [require]
      136 GETTABLEKS                       R19 R0 K6 ["Components"]
      138 GETTABLEKS                       R19 R19 K30 ["ServerManagementDropdown"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K5 [require]
      143 GETTABLEKS                       R20 R0 K6 ["Components"]
      145 GETTABLEKS                       R20 R20 K23 ["Contexts"]
      147 GETTABLEKS                       R20 R20 K31 ["SessionIdContext"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K5 [require]
      152 GETTABLEKS                       R21 R0 K6 ["Components"]
      154 GETTABLEKS                       R21 R21 K32 ["SlashCommandMenu"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K5 [require]
      159 GETTABLEKS                       R22 R0 K14 ["Util"]
      161 GETTABLEKS                       R22 R22 K33 ["TestIds"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K6 ["Components"]
      168 GETTABLEKS                       R23 R23 K23 ["Contexts"]
      170 GETTABLEKS                       R23 R23 K34 ["ThreadIdContext"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K35 ["Resources"]
      177 GETTABLEKS                       R24 R24 K36 ["Localization"]
      179 GETTABLEKS                       R24 R24 K37 ["Translator"]
      181 CALL                             R23 1 1
      182 GETIMPORT                        R24 K5 [require]
      184 GETTABLEKS                       R25 R0 K38 ["Types"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K5 [require]
      189 GETTABLEKS                       R26 R0 K6 ["Components"]
      191 GETTABLEKS                       R26 R26 K39 ["UIToolRegistry"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K5 [require]
      196 GETTABLEKS                       R27 R0 K6 ["Components"]
      198 GETTABLEKS                       R27 R27 K23 ["Contexts"]
      200 GETTABLEKS                       R27 R27 K40 ["WindowInputContext"]
      202 CALL                             R26 1 1
      203 GETIMPORT                        R27 K5 [require]
      205 GETTABLEKS                       R28 R0 K14 ["Util"]
      207 GETTABLEKS                       R28 R28 K41 ["getToggleGenerationInputFunc"]
      209 CALL                             R27 1 1
      210 GETIMPORT                        R28 K5 [require]
      212 GETTABLEKS                       R29 R0 K42 ["Hooks"]
      214 GETTABLEKS                       R29 R29 K43 ["useAssistantMode"]
      216 CALL                             R28 1 1
      217 GETIMPORT                        R29 K5 [require]
      219 GETTABLEKS                       R30 R0 K42 ["Hooks"]
      221 GETTABLEKS                       R30 R30 K44 ["useClearConversation"]
      223 CALL                             R29 1 1
      224 GETIMPORT                        R30 K5 [require]
      226 GETTABLEKS                       R31 R0 K42 ["Hooks"]
      228 GETTABLEKS                       R31 R31 K45 ["useCurrentAssistantMessageId"]
      230 CALL                             R30 1 1
      231 GETIMPORT                        R31 K5 [require]
      233 GETTABLEKS                       R32 R0 K42 ["Hooks"]
      235 GETTABLEKS                       R32 R32 K46 ["useCurrentThread"]
      237 CALL                             R31 1 1
      238 GETIMPORT                        R32 K5 [require]
      240 GETTABLEKS                       R33 R0 K42 ["Hooks"]
      242 GETTABLEKS                       R33 R33 K47 ["useEventConnection"]
      244 CALL                             R32 1 1
      245 GETIMPORT                        R33 K5 [require]
      247 GETTABLEKS                       R34 R0 K42 ["Hooks"]
      249 GETTABLEKS                       R34 R34 K48 ["useLLMCancelSession"]
      251 CALL                             R33 1 1
      252 GETIMPORT                        R34 K5 [require]
      254 GETTABLEKS                       R35 R0 K42 ["Hooks"]
      256 GETTABLEKS                       R35 R35 K49 ["useSendMessage"]
      258 CALL                             R34 1 1
      259 GETIMPORT                        R35 K5 [require]
      261 GETTABLEKS                       R36 R0 K14 ["Util"]
      263 GETTABLEKS                       R36 R36 K26 ["MultiPlayersConnection"]
      265 GETTABLEKS                       R36 R36 K50 ["MultiPlayersModeUtils"]
      267 CALL                             R35 1 1
      268 GETIMPORT                        R36 K5 [require]
      270 GETTABLEKS                       R37 R0 K51 ["Flags"]
      272 GETTABLEKS                       R37 R37 K52 ["getAssistantModeEnabled"]
      274 CALL                             R36 1 1
      275 GETIMPORT                        R37 K5 [require]
      277 GETTABLEKS                       R38 R0 K51 ["Flags"]
      279 GETTABLEKS                       R38 R38 K53 ["FFlagAssistantEval"]
      281 CALL                             R37 1 1
      282 GETIMPORT                        R38 K5 [require]
      284 GETTABLEKS                       R39 R0 K51 ["Flags"]
      286 GETTABLEKS                       R39 R39 K54 ["FFlagAssistantMultiPlayerAgents"]
      288 CALL                             R38 1 1
      289 GETIMPORT                        R39 K5 [require]
      291 GETTABLEKS                       R40 R0 K51 ["Flags"]
      293 GETTABLEKS                       R40 R40 K55 ["FFlagAssistantMultipleChatPersistence"]
      295 CALL                             R39 1 1
      296 GETIMPORT                        R40 K5 [require]
      298 GETTABLEKS                       R41 R0 K51 ["Flags"]
      300 GETTABLEKS                       R41 R41 K56 ["FFlagAssistantPlanMode"]
      302 CALL                             R40 1 1
      303 GETIMPORT                        R41 K5 [require]
      305 GETTABLEKS                       R42 R0 K51 ["Flags"]
      307 GETTABLEKS                       R42 R42 K57 ["FFlagAssistantQuestionAnswerTool"]
      309 CALL                             R41 1 1
      310 GETIMPORT                        R42 K5 [require]
      312 GETTABLEKS                       R43 R0 K51 ["Flags"]
      314 GETTABLEKS                       R43 R43 K58 ["FFlagAssistantUseBuilderIcons"]
      316 CALL                             R42 1 1
      317 GETIMPORT                        R43 K5 [require]
      319 GETTABLEKS                       R44 R0 K51 ["Flags"]
      321 GETTABLEKS                       R44 R44 K59 ["FFlagProceduralModel"]
      323 CALL                             R43 1 1
      324 GETIMPORT                        R44 K5 [require]
      326 GETTABLEKS                       R45 R0 K51 ["Flags"]
      328 GETTABLEKS                       R45 R45 K60 ["FIntMCPAssistantInputAreaCharLimit"]
      330 CALL                             R44 1 1
      331 GETIMPORT                        R45 K5 [require]
      333 GETTABLEKS                       R46 R0 K51 ["Flags"]
      335 GETTABLEKS                       R46 R46 K61 ["FIntMCPAssistantMaxPromptHistory"]
      337 CALL                             R45 1 1
      338 GETTABLEKS                       R46 R13 K62 ["InputDisabledReasons"]
      340 GETTABLEKS                       R47 R9 K63 ["IconButton"]
      342 GETTABLEKS                       R48 R9 K64 ["View"]
      344 GETTABLEKS                       R49 R17 K65 ["createNextOrder"]
      346 GETTABLEKS                       R50 R16 K66 ["createElement"]
      348 DUPCLOSURE                       R51 K67 [PROTO_5]
      349 CAPTURE                          VAL R16
      350 CAPTURE                          VAL R39
      351 CAPTURE                          VAL R22
      352 CAPTURE                          VAL R45
      353 CAPTURE                          VAL R3
      354 CAPTURE                          VAL R26
      355 CAPTURE                          VAL R32
      356 DUPCLOSURE                       R52 K68 [PROTO_14]
      357 CAPTURE                          VAL R9
      358 CAPTURE                          VAL R16
      359 CAPTURE                          VAL R50
      360 CAPTURE                          VAL R3
      361 CAPTURE                          VAL R5
      362 DUPCLOSURE                       R53 K69 [PROTO_16]
      363 CAPTURE                          VAL R16
      364 CAPTURE                          VAL R22
      365 DUPCLOSURE                       R54 K70 [PROTO_47]
      366 CAPTURE                          VAL R33
      367 CAPTURE                          VAL R16
      368 CAPTURE                          VAL R13
      369 CAPTURE                          VAL R29
      370 CAPTURE                          VAL R19
      371 CAPTURE                          VAL R30
      372 CAPTURE                          VAL R31
      373 CAPTURE                          VAL R14
      374 CAPTURE                          VAL R24
      375 CAPTURE                          VAL R40
      376 CAPTURE                          VAL R28
      377 CAPTURE                          VAL R39
      378 CAPTURE                          VAL R53
      379 CAPTURE                          VAL R37
      380 CAPTURE                          VAL R6
      381 CAPTURE                          VAL R38
      382 CAPTURE                          VAL R15
      383 CAPTURE                          VAL R11
      384 CAPTURE                          VAL R34
      385 CAPTURE                          VAL R27
      386 CAPTURE                          VAL R23
      387 CAPTURE                          VAL R51
      388 CAPTURE                          VAL R44
      389 CAPTURE                          VAL R25
      390 CAPTURE                          VAL R8
      391 CAPTURE                          VAL R5
      392 CAPTURE                          VAL R35
      393 CAPTURE                          VAL R7
      394 CAPTURE                          VAL R46
      395 CAPTURE                          VAL R49
      396 CAPTURE                          VAL R50
      397 CAPTURE                          VAL R48
      398 CAPTURE                          VAL R41
      399 CAPTURE                          VAL R21
      400 CAPTURE                          VAL R20
      401 CAPTURE                          VAL R2
      402 CAPTURE                          VAL R52
      403 CAPTURE                          VAL R43
      404 CAPTURE                          VAL R10
      405 CAPTURE                          VAL R18
      406 CAPTURE                          VAL R36
      407 CAPTURE                          VAL R1
      408 CAPTURE                          VAL R42
      409 CAPTURE                          VAL R47
      410 CAPTURE                          VAL R9
      411 CAPTURE                          VAL R4
      412 CAPTURE                          VAL R12
      413 RETURN                           R54 1
