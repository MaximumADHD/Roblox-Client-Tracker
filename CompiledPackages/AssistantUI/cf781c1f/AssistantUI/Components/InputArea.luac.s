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
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_19:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeImage"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1

PROTO_27:
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
       91 DUPCLOSURE                       R5 K17 [PROTO_26]
       92 CALL                             R4 1 0
       93 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FocusInput"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_43:
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
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R10 R10 K0 ["useContext"]
       31 GETUPVAL                         R11 6
       32 GETTABLEKS                       R11 R11 K1 ["Context"]
       34 CALL                             R10 1 1
       35 GETTABLEKS                       R12 R10 K6 ["selectedProvider"]
       37 GETUPVAL                         R13 7
       38 GETTABLEKS                       R13 R13 K7 ["LLMProviderTypes"]
       40 GETTABLEKS                       R13 R13 K8 ["Studio"]
       42 JUMPIFNOTEQ                      R12 R13 ; [+2]
       44 LOADB                            R11 0 +1
       45 LOADB                            R11 1
       46 LOADNIL                          R12
       47 GETUPVAL                         R13 8
       48 CALL                             R13 0 1
       49 JUMPIFNOT                        R13 ; [+3]
       50 GETUPVAL                         R13 9
       51 CALL                             R13 0 1
       52 MOVE                             R12 R13
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R13 R13 K9 ["useState"]
       56 LOADK                            R14 K10 [""]
       57 CALL                             R13 1 2
       58 GETTABLEKS                       R16 R0 K11 ["textBoxRef"]
       60 JUMPIFNOT                        R16 ; [+3]
       61 GETTABLEKS                       R15 R0 K11 ["textBoxRef"]
       63 JUMP                             ; [+5]
       64 GETUPVAL                         R15 1
       65 GETTABLEKS                       R15 R15 K12 ["useRef"]
       67 LOADNIL                          R16
       68 CALL                             R15 1 1
       69 GETUPVAL                         R16 10
       70 CALL                             R16 0 1
       71 JUMPIFNOT                        R16 ; [+7]
       72 GETUPVAL                         R16 11
       73 DUPTABLE                         R17 K14 [{"inputText", "textBoxRef"}]
       74 SETTABLEKS                       R13 R17 K13 ["inputText"]
       76 SETTABLEKS                       R15 R17 K11 ["textBoxRef"]
       78 CALL                             R16 1 0
       79 NEWTABLE                         R16 0 0
       81 LOADNIL                          R17
       82 LOADNIL                          R18
       83 LOADNIL                          R19
       84 GETUPVAL                         R20 1
       85 GETTABLEKS                       R20 R20 K9 ["useState"]
       87 LOADNIL                          R21
       88 CALL                             R20 1 2
       89 GETUPVAL                         R22 1
       90 GETTABLEKS                       R22 R22 K12 ["useRef"]
       92 LOADB                            R23 1
       93 CALL                             R22 1 1
       94 GETUPVAL                         R23 12
       95 CALL                             R23 0 1
       96 JUMPIFNOT                        R23 ; [+12]
       97 GETUPVAL                         R23 1
       98 GETTABLEKS                       R23 R23 K15 ["useEffect"]
      100 NEWCLOSURE                       R24 P0
      101 CAPTURE                          UPVAL U13
      102 CAPTURE                          VAL R3
      103 NEWTABLE                         R25 0 1
      105 MOVE                             R26 R3
      106 SETLIST                          R25 R26 1 [1]
      108 CALL                             R23 2 0
      109 GETUPVAL                         R23 1
      110 GETTABLEKS                       R23 R23 K15 ["useEffect"]
      112 NEWCLOSURE                       R24 P1
      113 CAPTURE                          VAL R22
      114 NEWTABLE                         R25 0 0
      116 CALL                             R23 2 0
      117 GETUPVAL                         R23 1
      118 GETTABLEKS                       R23 R23 K9 ["useState"]
      120 NEWTABLE                         R24 0 0
      122 CALL                             R23 1 2
      123 MOVE                             R16 R23
      124 MOVE                             R17 R24
      125 GETUPVAL                         R23 1
      126 GETTABLEKS                       R23 R23 K16 ["useCallback"]
      128 NEWCLOSURE                       R24 P2
      129 CAPTURE                          VAL R22
      130 CAPTURE                          VAL R21
      131 CAPTURE                          UPVAL U14
      132 CAPTURE                          REF R17
      133 NEWTABLE                         R25 0 0
      135 CALL                             R23 2 1
      136 MOVE                             R18 R23
      137 GETUPVAL                         R23 1
      138 GETTABLEKS                       R23 R23 K16 ["useCallback"]
      140 NEWCLOSURE                       R24 P3
      141 CAPTURE                          REF R17
      142 CAPTURE                          UPVAL U14
      143 NEWTABLE                         R25 0 0
      145 CALL                             R23 2 1
      146 MOVE                             R19 R23
      147 GETUPVAL                         R23 1
      148 GETTABLEKS                       R23 R23 K9 ["useState"]
      150 NEWTABLE                         R24 0 0
      152 CALL                             R23 1 2
      153 GETTABLEKS                       R25 R0 K17 ["OnMessageSent"]
      155 GETUPVAL                         R26 15
      156 DUPTABLE                         R27 K19 [{"setInputEnabled"}]
      157 GETUPVAL                         R28 16
      158 MOVE                             R29 R2
      159 CALL                             R28 1 1
      160 SETTABLEKS                       R28 R27 K18 ["setInputEnabled"]
      162 CALL                             R26 1 1
      163 GETUPVAL                         R27 1
      164 GETTABLEKS                       R27 R27 K20 ["useMemo"]
      166 DUPCLOSURE                       R28 K21 [PROTO_25]
      167 CAPTURE                          UPVAL U17
      168 NEWTABLE                         R29 0 1
      170 GETUPVAL                         R30 17
      171 GETTABLEKS                       R30 R30 K22 ["locale"]
      173 SETLIST                          R29 R30 1 [1]
      175 CALL                             R27 2 1
      176 GETUPVAL                         R28 18
      177 DUPTABLE                         R29 K24 [{"textBoxRef", "setInputText"}]
      178 SETTABLEKS                       R15 R29 K11 ["textBoxRef"]
      180 SETTABLEKS                       R14 R29 K23 ["setInputText"]
      182 CALL                             R28 1 2
      183 GETUPVAL                         R30 1
      184 GETTABLEKS                       R30 R30 K16 ["useCallback"]
      186 NEWCLOSURE                       R31 P5
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R21
      189 CAPTURE                          UPVAL U19
      190 CAPTURE                          VAL R14
      191 CAPTURE                          UPVAL U20
      192 CAPTURE                          REF R12
      193 CAPTURE                          VAL R24
      194 NEWTABLE                         R32 0 4
      196 MOVE                             R33 R14
      197 MOVE                             R34 R24
      198 MOVE                             R35 R12
      199 MOVE                             R36 R20
      200 SETLIST                          R32 R33 4 [1]
      202 CALL                             R30 2 1
      203 GETUPVAL                         R31 1
      204 GETTABLEKS                       R31 R31 K9 ["useState"]
      206 LOADNIL                          R32
      207 CALL                             R31 1 2
      208 GETUPVAL                         R33 1
      209 GETTABLEKS                       R33 R33 K15 ["useEffect"]
      211 NEWCLOSURE                       R34 P6
      212 CAPTURE                          VAL R31
      213 CAPTURE                          VAL R15
      214 NEWTABLE                         R35 0 1
      216 MOVE                             R36 R31
      217 SETLIST                          R35 R36 1 [1]
      219 CALL                             R33 2 0
      220 GETUPVAL                         R33 1
      221 GETTABLEKS                       R33 R33 K16 ["useCallback"]
      223 NEWCLOSURE                       R34 P7
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R32
      226 NEWTABLE                         R35 0 0
      228 CALL                             R33 2 1
      229 GETUPVAL                         R34 10
      230 CALL                             R34 0 1
      231 JUMPIF                           R34 ; [+3]
      232 GETUPVAL                         R34 8
      233 CALL                             R34 0 1
      234 JUMPIFNOT                        R34 ; [+9]
      235 GETUPVAL                         R34 1
      236 GETTABLEKS                       R34 R34 K15 ["useEffect"]
      238 NEWCLOSURE                       R35 P8
      239 CAPTURE                          UPVAL U21
      240 CAPTURE                          VAL R32
      241 NEWTABLE                         R36 0 0
      243 CALL                             R34 2 0
      244 GETUPVAL                         R34 1
      245 GETTABLEKS                       R34 R34 K16 ["useCallback"]
      247 NEWCLOSURE                       R35 P9
      248 CAPTURE                          VAL R13
      249 CAPTURE                          REF R16
      250 CAPTURE                          VAL R14
      251 CAPTURE                          REF R17
      252 CAPTURE                          VAL R26
      253 CAPTURE                          VAL R28
      254 CAPTURE                          VAL R25
      255 NEWTABLE                         R36 0 7
      257 MOVE                             R37 R13
      258 MOVE                             R38 R14
      259 MOVE                             R39 R26
      260 MOVE                             R40 R28
      261 MOVE                             R41 R25
      262 MOVE                             R42 R16
      263 MOVE                             R43 R17
      264 SETLIST                          R36 R37 7 [1]
      266 CALL                             R34 2 1
      267 GETUPVAL                         R35 1
      268 GETTABLEKS                       R35 R35 K16 ["useCallback"]
      270 NEWCLOSURE                       R36 P10
      271 CAPTURE                          VAL R9
      272 CAPTURE                          UPVAL U22
      273 CAPTURE                          UPVAL U10
      274 CAPTURE                          VAL R8
      275 CAPTURE                          VAL R1
      276 CAPTURE                          VAL R5
      277 NEWTABLE                         R37 0 4
      279 MOVE                             R38 R1
      280 MOVE                             R39 R5
      281 MOVE                             R40 R8
      282 MOVE                             R41 R9
      283 SETLIST                          R37 R38 4 [1]
      285 CALL                             R35 2 1
      286 GETUPVAL                         R36 12
      287 CALL                             R36 0 1
      288 JUMPIFNOT                        R36 ; [+55]
      289 GETUPVAL                         R36 1
      290 GETTABLEKS                       R36 R36 K12 ["useRef"]
      292 LOADB                            R37 0
      293 CALL                             R36 1 1
      294 GETUPVAL                         R37 1
      295 GETTABLEKS                       R37 R37 K15 ["useEffect"]
      297 NEWCLOSURE                       R38 P11
      298 CAPTURE                          UPVAL U23
      299 CAPTURE                          VAL R14
      300 CAPTURE                          VAL R36
      301 NEWTABLE                         R39 0 1
      303 MOVE                             R40 R14
      304 SETLIST                          R39 R40 1 [1]
      306 CALL                             R37 2 0
      307 GETUPVAL                         R37 1
      308 GETTABLEKS                       R37 R37 K15 ["useEffect"]
      310 NEWCLOSURE                       R38 P12
      311 CAPTURE                          VAL R36
      312 CAPTURE                          VAL R34
      313 NEWTABLE                         R39 0 2
      315 MOVE                             R40 R13
      316 MOVE                             R41 R34
      317 SETLIST                          R39 R40 2 [1]
      319 CALL                             R37 2 0
      320 GETUPVAL                         R37 1
      321 GETTABLEKS                       R37 R37 K12 ["useRef"]
      323 MOVE                             R38 R35
      324 CALL                             R37 1 1
      325 SETTABLEKS                       R35 R37 K25 ["current"]
      327 GETUPVAL                         R38 1
      328 GETTABLEKS                       R38 R38 K12 ["useRef"]
      330 MOVE                             R39 R6
      331 CALL                             R38 1 1
      332 SETTABLEKS                       R6 R38 K25 ["current"]
      334 GETUPVAL                         R39 1
      335 GETTABLEKS                       R39 R39 K15 ["useEffect"]
      337 NEWCLOSURE                       R40 P13
      338 CAPTURE                          UPVAL U23
      339 CAPTURE                          VAL R37
      340 CAPTURE                          VAL R38
      341 NEWTABLE                         R41 0 0
      343 CALL                             R39 2 0
      344 MOVE                             R36 R4
      345 JUMPIFNOT                        R36 ; [+9]
      346 GETTABLEKS                       R37 R4 K3 ["reasonDisabled"]
      348 GETUPVAL                         R38 24
      349 GETTABLEKS                       R38 R38 K26 ["Generation"]
      351 JUMPIFEQ                         R37 R38 ; [+2]
      353 LOADB                            R36 0 +1
      354 LOADB                            R36 1
      355 LENGTH                           R38 R13
      356 JUMPIFNOTEQKN                    R38 K27 [0] ; [+5]
      358 LOADB                            R37 1
      359 LENGTH                           R38 R16
      360 JUMPIFEQKN                       R38 K27 [0] ; [+2]
      362 NOT                              R37 R3
      363 GETUPVAL                         R38 25
      364 CALL                             R38 0 1
      365 GETUPVAL                         R39 1
      366 GETTABLEKS                       R39 R39 K28 ["useBinding"]
      368 LOADN                            R40 0
      369 CALL                             R39 1 2
      370 GETUPVAL                         R41 26
      371 GETUPVAL                         R42 27
      372 DUPTABLE                         R43 K32 [{"tag", "LayoutOrder", "testId"}]
      373 NEWTABLE                         R44 2 0
      375 LOADB                            R45 1
      376 SETTABLEKS                       R45 R44 K33 ["col size-full-0 auto-y"]
      378 GETUPVAL                         R46 28
      379 CALL                             R46 0 1
      380 NOT                              R45 R46
      381 SETTABLEKS                       R45 R44 K34 ["margin-x-small"]
      383 SETTABLEKS                       R44 R43 K29 ["tag"]
      385 GETTABLEKS                       R44 R0 K30 ["LayoutOrder"]
      387 SETTABLEKS                       R44 R43 K30 ["LayoutOrder"]
      389 GETUPVAL                         R44 29
      390 GETTABLEKS                       R44 R44 K35 ["InputArea"]
      392 GETTABLEKS                       R44 R44 K36 ["Container"]
      394 SETTABLEKS                       R44 R43 K31 ["testId"]
      396 DUPTABLE                         R44 K39 [{"Menu", "Footer"}]
      397 GETUPVAL                         R45 26
      398 GETUPVAL                         R46 30
      399 DUPTABLE                         R47 K44 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      400 LENGTH                           R49 R23
      401 LOADN                            R50 0
      402 JUMPIFLT                         R50 R49 ; [+2]
      404 LOADB                            R48 0 +1
      405 LOADB                            R48 1
      406 SETTABLEKS                       R48 R47 K40 ["isOpen"]
      408 SETTABLEKS                       R23 R47 K41 ["items"]
      410 SETTABLEKS                       R39 R47 K42 ["width"]
      412 SETTABLEKS                       R15 R47 K11 ["textBoxRef"]
      414 SETTABLEKS                       R33 R47 K43 ["setTextAndFocus"]
      416 DUPTABLE                         R48 K46 [{"MessageField"}]
      417 GETUPVAL                         R49 26
      418 GETUPVAL                         R50 27
      419 DUPTABLE                         R51 K48 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      420 NEWTABLE                         R52 4 0
      422 LOADB                            R53 1
      423 SETTABLEKS                       R53 R52 K49 ["col size-full-0 auto-y gap-small radius-large padding-medium"]
      425 JUMPIFNOTEQKNIL                  R20 ; [+2]
      427 LOADB                            R53 0 +1
      428 LOADB                            R53 1
      429 SETTABLEKS                       R53 R52 K50 ["stroke-system-alert"]
      431 JUMPIFEQKNIL                     R20 ; [+2]
      433 LOADB                            R53 0 +1
      434 LOADB                            R53 1
      435 SETTABLEKS                       R53 R52 K51 ["stroke-emphasis"]
      437 SETTABLEKS                       R52 R51 K29 ["tag"]
      439 NEWCLOSURE                       R52 P14
      440 CAPTURE                          VAL R40
      441 SETTABLEKS                       R52 R51 K47 ["onAbsoluteSizeChanged"]
      443 MOVE                             R52 R38
      444 CALL                             R52 0 1
      445 SETTABLEKS                       R52 R51 K30 ["LayoutOrder"]
      447 DUPTABLE                         R52 K55 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      448 GETUPVAL                         R53 26
      449 LOADK                            R54 K52 ["UIFlexItem"]
      450 DUPTABLE                         R55 K58 [{"FlexMode", "ItemLineAlignment"}]
      451 GETIMPORT                        R56 K62 [Enum.UIFlexMode.Fill]
      453 SETTABLEKS                       R56 R55 K56 ["FlexMode"]
      455 GETIMPORT                        R56 K64 [Enum.ItemLineAlignment.Center]
      457 SETTABLEKS                       R56 R55 K57 ["ItemLineAlignment"]
      459 CALL                             R53 2 1
      460 SETTABLEKS                       R53 R52 K52 ["UIFlexItem"]
      462 LOADB                            R53 0
      463 LENGTH                           R54 R16
      464 LOADN                            R55 0
      465 JUMPIFNOTLT                      R55 R54 ; [+23]
      467 GETUPVAL                         R53 26
      468 GETUPVAL                         R54 27
      469 DUPTABLE                         R55 K65 [{"tag", "LayoutOrder"}]
      470 LOADK                            R56 K66 ["row size-full-0 auto-y"]
      471 SETTABLEKS                       R56 R55 K29 ["tag"]
      473 MOVE                             R56 R38
      474 CALL                             R56 0 1
      475 SETTABLEKS                       R56 R55 K30 ["LayoutOrder"]
      477 DUPTABLE                         R56 K68 [{"List"}]
      478 GETUPVAL                         R57 26
      479 GETUPVAL                         R58 31
      480 DUPTABLE                         R59 K71 [{"attachedImages", "onRemoveImage"}]
      481 SETTABLEKS                       R16 R59 K69 ["attachedImages"]
      483 SETTABLEKS                       R19 R59 K70 ["onRemoveImage"]
      485 CALL                             R57 2 1
      486 SETTABLEKS                       R57 R56 K67 ["List"]
      488 CALL                             R53 3 1
      489 SETTABLEKS                       R53 R52 K53 ["AttachedImagesPreview"]
      491 GETUPVAL                         R53 26
      492 GETUPVAL                         R54 27
      493 DUPTABLE                         R55 K65 [{"tag", "LayoutOrder"}]
      494 LOADK                            R56 K72 ["col size-full-0 auto-y gap-medium flex-between flex-y-fill align-y-center"]
      495 SETTABLEKS                       R56 R55 K29 ["tag"]
      497 MOVE                             R56 R38
      498 CALL                             R56 0 1
      499 SETTABLEKS                       R56 R55 K30 ["LayoutOrder"]
      501 DUPTABLE                         R56 K75 [{"TextInput", "ActionButtons"}]
      502 GETUPVAL                         R57 26
      503 GETUPVAL                         R58 32
      504 DUPTABLE                         R59 K81 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      505 SETTABLEKS                       R13 R59 K76 ["text"]
      507 JUMPIFNOT                        R36 ; [+3]
      508 GETTABLEKS                       R60 R27 K82 ["Responding"]
      510 JUMP                             ; [+6]
      511 JUMPIFEQKNIL                     R29 ; [+3]
      513 MOVE                             R60 R29
      514 JUMP                             ; [+2]
      515 GETTABLEKS                       R60 R27 K83 ["AskAssistant"]
      517 SETTABLEKS                       R60 R59 K77 ["placeholder"]
      519 NOT                              R60 R3
      520 SETTABLEKS                       R60 R59 K78 ["isDisabled"]
      522 MOVE                             R60 R38
      523 CALL                             R60 0 1
      524 SETTABLEKS                       R60 R59 K30 ["LayoutOrder"]
      526 SETTABLEKS                       R30 R59 K79 ["onChanged"]
      528 SETTABLEKS                       R34 R59 K80 ["onReturnPressed"]
      530 SETTABLEKS                       R15 R59 K11 ["textBoxRef"]
      532 CALL                             R57 2 1
      533 SETTABLEKS                       R57 R56 K73 ["TextInput"]
      535 GETUPVAL                         R57 26
      536 GETUPVAL                         R58 27
      537 DUPTABLE                         R59 K65 [{"tag", "LayoutOrder"}]
      538 LOADK                            R60 K84 ["row size-full-0 auto-y gap-xsmall align-y-center"]
      539 SETTABLEKS                       R60 R59 K29 ["tag"]
      541 MOVE                             R60 R38
      542 CALL                             R60 0 1
      543 SETTABLEKS                       R60 R59 K30 ["LayoutOrder"]
      545 DUPTABLE                         R60 K91 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButtonContainer", "StopButton"}]
      546 JUMPIF                           R11 ; [+6]
      547 GETUPVAL                         R62 33
      548 CALL                             R62 0 1
      549 JUMPIFNOT                        R62 ; [+17]
      550 GETUPVAL                         R62 34
      551 CALL                             R62 0 1
      552 JUMPIFNOT                        R62 ; [+14]
      553 GETUPVAL                         R61 26
      554 GETUPVAL                         R62 35
      555 DUPTABLE                         R63 K93 [{"isDisabled", "onActivated", "LayoutOrder"}]
      556 NOT                              R64 R3
      557 SETTABLEKS                       R64 R63 K78 ["isDisabled"]
      559 SETTABLEKS                       R18 R63 K92 ["onActivated"]
      561 MOVE                             R64 R38
      562 CALL                             R64 0 1
      563 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      565 CALL                             R61 2 1
      566 JUMP                             ; [+1]
      567 LOADNIL                          R61
      568 SETTABLEKS                       R61 R60 K85 ["AttachImageButton"]
      570 GETUPVAL                         R61 26
      571 GETUPVAL                         R62 36
      572 DUPTABLE                         R63 K94 [{"LayoutOrder"}]
      573 MOVE                             R64 R38
      574 CALL                             R64 0 1
      575 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      577 CALL                             R61 2 1
      578 SETTABLEKS                       R61 R60 K86 ["ServerManagementButton"]
      580 GETUPVAL                         R61 26
      581 GETUPVAL                         R62 27
      582 DUPTABLE                         R63 K65 [{"tag", "LayoutOrder"}]
      583 LOADK                            R64 K95 ["fill"]
      584 SETTABLEKS                       R64 R63 K29 ["tag"]
      586 MOVE                             R64 R38
      587 CALL                             R64 0 1
      588 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      590 CALL                             R61 2 1
      591 SETTABLEKS                       R61 R60 K87 ["Spacer"]
      593 GETUPVAL                         R62 37
      594 CALL                             R62 0 1
      595 JUMPIFNOT                        R62 ; [+9]
      596 GETUPVAL                         R61 26
      597 GETUPVAL                         R62 38
      598 DUPTABLE                         R63 K94 [{"LayoutOrder"}]
      599 MOVE                             R64 R38
      600 CALL                             R64 0 1
      601 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      603 CALL                             R61 2 1
      604 JUMP                             ; [+1]
      605 LOADNIL                          R61
      606 SETTABLEKS                       R61 R60 K88 ["SelectAssistantMode"]
      608 NOT                              R61 R36
      609 JUMPIFNOT                        R61 ; [+110]
      610 GETUPVAL                         R62 39
      611 CALL                             R62 0 1
      612 JUMPIFNOT                        R62 ; [+77]
      613 GETUPVAL                         R61 26
      614 GETUPVAL                         R62 27
      615 DUPTABLE                         R63 K65 [{"tag", "LayoutOrder"}]
      616 LOADK                            R64 K96 ["auto-xy"]
      617 SETTABLEKS                       R64 R63 K29 ["tag"]
      619 MOVE                             R64 R38
      620 CALL                             R64 0 1
      621 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      623 DUPTABLE                         R64 K98 [{"SendButtonRotation"}]
      624 GETUPVAL                         R65 26
      625 GETUPVAL                         R66 27
      626 DUPTABLE                         R67 K100 [{"tag", "Rotation", "LayoutOrder"}]
      627 LOADK                            R68 K96 ["auto-xy"]
      628 SETTABLEKS                       R68 R67 K29 ["tag"]
      630 LOADN                            R68 166
      631 SETTABLEKS                       R68 R67 K99 ["Rotation"]
      633 MOVE                             R68 R38
      634 CALL                             R68 0 1
      635 SETTABLEKS                       R68 R67 K30 ["LayoutOrder"]
      637 DUPTABLE                         R68 K102 [{"SendButton"}]
      638 GETUPVAL                         R69 26
      639 GETUPVAL                         R70 40
      640 DUPTABLE                         R71 K107 [{"icon", "size", "variant", "isCircular", "isDisabled", "onActivated", "LayoutOrder"}]
      641 LOADK                            R72 K108 ["icons/navigation/seeAllArrow_small"]
      642 SETTABLEKS                       R72 R71 K103 ["icon"]
      644 GETUPVAL                         R72 41
      645 GETTABLEKS                       R72 R72 K109 ["Enums"]
      647 GETTABLEKS                       R72 R72 K110 ["InputSize"]
      649 GETTABLEKS                       R72 R72 K111 ["XSmall"]
      651 SETTABLEKS                       R72 R71 K104 ["size"]
      653 JUMPIFNOT                        R37 ; [+8]
      654 GETUPVAL                         R72 41
      655 GETTABLEKS                       R72 R72 K109 ["Enums"]
      657 GETTABLEKS                       R72 R72 K112 ["ButtonVariant"]
      659 GETTABLEKS                       R72 R72 K113 ["Standard"]
      661 JUMP                             ; [+7]
      662 GETUPVAL                         R72 41
      663 GETTABLEKS                       R72 R72 K109 ["Enums"]
      665 GETTABLEKS                       R72 R72 K112 ["ButtonVariant"]
      667 GETTABLEKS                       R72 R72 K114 ["Emphasis"]
      669 SETTABLEKS                       R72 R71 K105 ["variant"]
      671 LOADB                            R72 1
      672 SETTABLEKS                       R72 R71 K106 ["isCircular"]
      674 SETTABLEKS                       R37 R71 K78 ["isDisabled"]
      676 SETTABLEKS                       R34 R71 K92 ["onActivated"]
      678 MOVE                             R72 R38
      679 CALL                             R72 0 1
      680 SETTABLEKS                       R72 R71 K30 ["LayoutOrder"]
      682 CALL                             R69 2 1
      683 SETTABLEKS                       R69 R68 K101 ["SendButton"]
      685 CALL                             R65 3 1
      686 SETTABLEKS                       R65 R64 K97 ["SendButtonRotation"]
      688 CALL                             R61 3 1
      689 JUMP                             ; [+30]
      690 GETUPVAL                         R61 26
      691 GETUPVAL                         R62 42
      692 DUPTABLE                         R63 K118 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder", "skipBackgroundColoringDisabled"}]
      693 LOADK                            R64 K108 ["icons/navigation/seeAllArrow_small"]
      694 SETTABLEKS                       R64 R63 K103 ["icon"]
      696 JUMPIFNOT                        R37 ; [+2]
      697 LOADK                            R64 K119 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      698 JUMP                             ; [+1]
      699 LOADK                            R64 K120 ["size-600-600 radius-circle bg-action-emphasis align-x-center align-y-center"]
      700 SETTABLEKS                       R64 R63 K29 ["tag"]
      702 LOADK                            R64 K121 ["size-300-300 content-emphasis"]
      703 SETTABLEKS                       R64 R63 K115 ["iconTag"]
      705 LOADN                            R64 166
      706 SETTABLEKS                       R64 R63 K116 ["iconRotation"]
      708 SETTABLEKS                       R37 R63 K78 ["isDisabled"]
      710 SETTABLEKS                       R34 R63 K92 ["onActivated"]
      712 MOVE                             R64 R38
      713 CALL                             R64 0 1
      714 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      716 LOADB                            R64 1
      717 SETTABLEKS                       R64 R63 K117 ["skipBackgroundColoringDisabled"]
      719 CALL                             R61 2 1
      720 SETTABLEKS                       R61 R60 K89 ["SendButtonContainer"]
      722 MOVE                             R61 R36
      723 JUMPIFNOT                        R61 ; [+80]
      724 GETUPVAL                         R62 39
      725 CALL                             R62 0 1
      726 JUMPIFNOT                        R62 ; [+48]
      727 GETUPVAL                         R61 26
      728 GETUPVAL                         R62 40
      729 DUPTABLE                         R63 K122 [{"icon", "size", "variant", "isCircular", "onActivated", "LayoutOrder", "testId"}]
      730 GETUPVAL                         R64 41
      731 GETTABLEKS                       R64 R64 K109 ["Enums"]
      733 GETTABLEKS                       R64 R64 K123 ["IconName"]
      735 GETTABLEKS                       R64 R64 K124 ["StopSmall"]
      737 SETTABLEKS                       R64 R63 K103 ["icon"]
      739 GETUPVAL                         R64 41
      740 GETTABLEKS                       R64 R64 K109 ["Enums"]
      742 GETTABLEKS                       R64 R64 K110 ["InputSize"]
      744 GETTABLEKS                       R64 R64 K111 ["XSmall"]
      746 SETTABLEKS                       R64 R63 K104 ["size"]
      748 GETUPVAL                         R64 41
      749 GETTABLEKS                       R64 R64 K109 ["Enums"]
      751 GETTABLEKS                       R64 R64 K112 ["ButtonVariant"]
      753 GETTABLEKS                       R64 R64 K113 ["Standard"]
      755 SETTABLEKS                       R64 R63 K105 ["variant"]
      757 LOADB                            R64 1
      758 SETTABLEKS                       R64 R63 K106 ["isCircular"]
      760 SETTABLEKS                       R35 R63 K92 ["onActivated"]
      762 MOVE                             R64 R38
      763 CALL                             R64 0 1
      764 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      766 GETUPVAL                         R64 29
      767 GETTABLEKS                       R64 R64 K35 ["InputArea"]
      769 GETTABLEKS                       R64 R64 K90 ["StopButton"]
      771 SETTABLEKS                       R64 R63 K31 ["testId"]
      773 CALL                             R61 2 1
      774 JUMP                             ; [+29]
      775 GETUPVAL                         R61 26
      776 GETUPVAL                         R62 42
      777 DUPTABLE                         R63 K125 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
      778 LOADK                            R64 K126 ["icons/controls/mediaStop_small"]
      779 SETTABLEKS                       R64 R63 K103 ["icon"]
      781 LOADK                            R64 K119 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      782 SETTABLEKS                       R64 R63 K29 ["tag"]
      784 LOADK                            R64 K121 ["size-300-300 content-emphasis"]
      785 SETTABLEKS                       R64 R63 K115 ["iconTag"]
      787 SETTABLEKS                       R35 R63 K92 ["onActivated"]
      789 MOVE                             R64 R38
      790 CALL                             R64 0 1
      791 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      793 GETUPVAL                         R64 29
      794 GETTABLEKS                       R64 R64 K35 ["InputArea"]
      796 GETTABLEKS                       R64 R64 K90 ["StopButton"]
      798 SETTABLEKS                       R64 R63 K31 ["testId"]
      800 LOADB                            R64 1
      801 SETTABLEKS                       R64 R63 K117 ["skipBackgroundColoringDisabled"]
      803 CALL                             R61 2 1
      804 SETTABLEKS                       R61 R60 K90 ["StopButton"]
      806 CALL                             R57 3 1
      807 SETTABLEKS                       R57 R56 K74 ["ActionButtons"]
      809 CALL                             R53 3 1
      810 SETTABLEKS                       R53 R52 K54 ["InputRow"]
      812 CALL                             R49 3 1
      813 SETTABLEKS                       R49 R48 K45 ["MessageField"]
      815 CALL                             R45 3 1
      816 SETTABLEKS                       R45 R44 K37 ["Menu"]
      818 GETUPVAL                         R45 26
      819 GETUPVAL                         R46 43
      820 DUPTABLE                         R47 K128 [{"LayoutOrder", "imageAttachError"}]
      821 MOVE                             R48 R38
      822 CALL                             R48 0 1
      823 SETTABLEKS                       R48 R47 K30 ["LayoutOrder"]
      825 SETTABLEKS                       R20 R47 K127 ["imageAttachError"]
      827 CALL                             R45 2 1
      828 SETTABLEKS                       R45 R44 K38 ["Footer"]
      830 CALL                             R41 3 -1
      831 CLOSEUPVALS                      R12
      832 RETURN                           R41 -1

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
      113 GETTABLEKS                       R16 R0 K9 ["Parent"]
      115 GETTABLEKS                       R16 R16 K26 ["React"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K9 ["Parent"]
      122 GETTABLEKS                       R17 R17 K27 ["ReactUtils"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K6 ["Components"]
      129 GETTABLEKS                       R18 R18 K28 ["ServerManagementDropdown"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K6 ["Components"]
      136 GETTABLEKS                       R19 R19 K23 ["Contexts"]
      138 GETTABLEKS                       R19 R19 K29 ["SessionIdContext"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K5 [require]
      143 GETTABLEKS                       R20 R0 K6 ["Components"]
      145 GETTABLEKS                       R20 R20 K30 ["SlashCommandMenu"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R21 R0 K14 ["Util"]
      152 GETTABLEKS                       R21 R21 K31 ["TestIds"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K6 ["Components"]
      159 GETTABLEKS                       R22 R22 K23 ["Contexts"]
      161 GETTABLEKS                       R22 R22 K32 ["ThreadIdContext"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K33 ["Resources"]
      168 GETTABLEKS                       R23 R23 K34 ["Localization"]
      170 GETTABLEKS                       R23 R23 K35 ["Translator"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K36 ["Types"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K5 [require]
      180 GETTABLEKS                       R25 R0 K6 ["Components"]
      182 GETTABLEKS                       R25 R25 K37 ["UIToolRegistry"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K5 [require]
      187 GETTABLEKS                       R26 R0 K6 ["Components"]
      189 GETTABLEKS                       R26 R26 K23 ["Contexts"]
      191 GETTABLEKS                       R26 R26 K38 ["WindowInputContext"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K5 [require]
      196 GETTABLEKS                       R27 R0 K14 ["Util"]
      198 GETTABLEKS                       R27 R27 K39 ["getToggleGenerationInputFunc"]
      200 CALL                             R26 1 1
      201 GETIMPORT                        R27 K5 [require]
      203 GETTABLEKS                       R28 R0 K40 ["Hooks"]
      205 GETTABLEKS                       R28 R28 K41 ["useAssistantMode"]
      207 CALL                             R27 1 1
      208 GETIMPORT                        R28 K5 [require]
      210 GETTABLEKS                       R29 R0 K40 ["Hooks"]
      212 GETTABLEKS                       R29 R29 K42 ["useClearConversation"]
      214 CALL                             R28 1 1
      215 GETIMPORT                        R29 K5 [require]
      217 GETTABLEKS                       R30 R0 K40 ["Hooks"]
      219 GETTABLEKS                       R30 R30 K43 ["useCurrentAssistantMessageId"]
      221 CALL                             R29 1 1
      222 GETIMPORT                        R30 K5 [require]
      224 GETTABLEKS                       R31 R0 K40 ["Hooks"]
      226 GETTABLEKS                       R31 R31 K44 ["useEventConnection"]
      228 CALL                             R30 1 1
      229 GETIMPORT                        R31 K5 [require]
      231 GETTABLEKS                       R32 R0 K40 ["Hooks"]
      233 GETTABLEKS                       R32 R32 K45 ["useLLMCancelSession"]
      235 CALL                             R31 1 1
      236 GETIMPORT                        R32 K5 [require]
      238 GETTABLEKS                       R33 R0 K40 ["Hooks"]
      240 GETTABLEKS                       R33 R33 K46 ["useSendMessage"]
      242 CALL                             R32 1 1
      243 GETIMPORT                        R33 K5 [require]
      245 GETTABLEKS                       R34 R0 K47 ["Flags"]
      247 GETTABLEKS                       R34 R34 K48 ["getAssistantModeEnabled"]
      249 CALL                             R33 1 1
      250 GETIMPORT                        R34 K5 [require]
      252 GETTABLEKS                       R35 R0 K47 ["Flags"]
      254 GETTABLEKS                       R35 R35 K49 ["FFlagAssistantEval"]
      256 CALL                             R34 1 1
      257 GETIMPORT                        R35 K5 [require]
      259 GETTABLEKS                       R36 R0 K47 ["Flags"]
      261 GETTABLEKS                       R36 R36 K50 ["FFlagAssistantMultipleChatPersistence"]
      263 CALL                             R35 1 1
      264 GETIMPORT                        R36 K5 [require]
      266 GETTABLEKS                       R37 R0 K47 ["Flags"]
      268 GETTABLEKS                       R37 R37 K51 ["FFlagAssistantPlanMode"]
      270 CALL                             R36 1 1
      271 GETIMPORT                        R37 K5 [require]
      273 GETTABLEKS                       R38 R0 K47 ["Flags"]
      275 GETTABLEKS                       R38 R38 K52 ["FFlagAssistantQuestionAnswerTool"]
      277 CALL                             R37 1 1
      278 GETIMPORT                        R38 K5 [require]
      280 GETTABLEKS                       R39 R0 K47 ["Flags"]
      282 GETTABLEKS                       R39 R39 K53 ["FFlagAssistantUseBuilderIcons"]
      284 CALL                             R38 1 1
      285 GETIMPORT                        R39 K5 [require]
      287 GETTABLEKS                       R40 R0 K47 ["Flags"]
      289 GETTABLEKS                       R40 R40 K54 ["FFlagEnablePrimitiveGenTool"]
      291 CALL                             R39 1 1
      292 GETIMPORT                        R40 K5 [require]
      294 GETTABLEKS                       R41 R0 K47 ["Flags"]
      296 GETTABLEKS                       R41 R41 K55 ["FFlagProceduralModel"]
      298 CALL                             R40 1 1
      299 GETIMPORT                        R41 K5 [require]
      301 GETTABLEKS                       R42 R0 K47 ["Flags"]
      303 GETTABLEKS                       R42 R42 K56 ["FIntMCPAssistantInputAreaCharLimit"]
      305 CALL                             R41 1 1
      306 GETIMPORT                        R42 K5 [require]
      308 GETTABLEKS                       R43 R0 K47 ["Flags"]
      310 GETTABLEKS                       R43 R43 K57 ["FIntMCPAssistantMaxPromptHistory"]
      312 CALL                             R42 1 1
      313 GETTABLEKS                       R43 R13 K58 ["InputDisabledReasons"]
      315 GETTABLEKS                       R44 R9 K59 ["IconButton"]
      317 GETTABLEKS                       R45 R9 K60 ["View"]
      319 GETTABLEKS                       R46 R16 K61 ["createNextOrder"]
      321 GETTABLEKS                       R47 R15 K62 ["createElement"]
      323 DUPCLOSURE                       R48 K63 [PROTO_5]
      324 CAPTURE                          VAL R15
      325 CAPTURE                          VAL R35
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R42
      328 CAPTURE                          VAL R3
      329 CAPTURE                          VAL R25
      330 CAPTURE                          VAL R30
      331 DUPCLOSURE                       R49 K64 [PROTO_14]
      332 CAPTURE                          VAL R9
      333 CAPTURE                          VAL R15
      334 CAPTURE                          VAL R47
      335 CAPTURE                          VAL R3
      336 CAPTURE                          VAL R5
      337 DUPCLOSURE                       R50 K65 [PROTO_16]
      338 CAPTURE                          VAL R15
      339 CAPTURE                          VAL R21
      340 DUPCLOSURE                       R51 K66 [PROTO_43]
      341 CAPTURE                          VAL R31
      342 CAPTURE                          VAL R15
      343 CAPTURE                          VAL R13
      344 CAPTURE                          VAL R28
      345 CAPTURE                          VAL R18
      346 CAPTURE                          VAL R29
      347 CAPTURE                          VAL R14
      348 CAPTURE                          VAL R23
      349 CAPTURE                          VAL R36
      350 CAPTURE                          VAL R27
      351 CAPTURE                          VAL R35
      352 CAPTURE                          VAL R50
      353 CAPTURE                          VAL R34
      354 CAPTURE                          VAL R6
      355 CAPTURE                          VAL R11
      356 CAPTURE                          VAL R32
      357 CAPTURE                          VAL R26
      358 CAPTURE                          VAL R22
      359 CAPTURE                          VAL R48
      360 CAPTURE                          VAL R41
      361 CAPTURE                          VAL R24
      362 CAPTURE                          VAL R8
      363 CAPTURE                          VAL R5
      364 CAPTURE                          VAL R7
      365 CAPTURE                          VAL R43
      366 CAPTURE                          VAL R46
      367 CAPTURE                          VAL R47
      368 CAPTURE                          VAL R45
      369 CAPTURE                          VAL R37
      370 CAPTURE                          VAL R20
      371 CAPTURE                          VAL R19
      372 CAPTURE                          VAL R2
      373 CAPTURE                          VAL R49
      374 CAPTURE                          VAL R40
      375 CAPTURE                          VAL R39
      376 CAPTURE                          VAL R10
      377 CAPTURE                          VAL R17
      378 CAPTURE                          VAL R33
      379 CAPTURE                          VAL R1
      380 CAPTURE                          VAL R38
      381 CAPTURE                          VAL R44
      382 CAPTURE                          VAL R9
      383 CAPTURE                          VAL R4
      384 CAPTURE                          VAL R12
      385 RETURN                           R51 1
