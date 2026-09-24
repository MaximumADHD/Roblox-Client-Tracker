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
       18 GETTABLEKS                       R2 R2 K5 ["FIntMCPAssistantMaxPromptHistory"]
       20 LENGTH                           R3 R1
       21 JUMPIFNOTLT                      R2 R3 ; [+13]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["List"]
       26 GETTABLEKS                       R3 R3 K7 ["getRange"]
       28 MOVE                             R4 R1
       29 LENGTH                           R7 R1
       30 SUB                              R6 R7 R2
       31 ADDK                             R5 R6 K8 [1]
       32 LENGTH                           R6 R1
       33 CALL                             R3 3 1
       34 MOVE                             R1 R3
       35 RETURN                           R1 1

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
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K2 ["useContext"]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K3 ["Context"]
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R7 R6 K4 ["threadId"]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K1 ["useRef"]
       28 NEWTABLE                         R9 0 0
       30 CALL                             R8 1 1
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K0 ["useState"]
       34 MOVE                             R10 R7
       35 CALL                             R9 1 2
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       39 NEWCLOSURE                       R12 P0
       40 CAPTURE                          VAL R9
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R8
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 NEWTABLE                         R13 0 3
       50 MOVE                             R14 R1
       51 MOVE                             R15 R9
       52 MOVE                             R16 R7
       53 SETLIST                          R13 R14 3 [1]
       55 CALL                             R11 2 0
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       59 NEWCLOSURE                       R12 P1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R13 0 1
       65 MOVE                             R14 R1
       66 SETLIST                          R13 R14 1 [1]
       68 CALL                             R11 2 0
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       72 NEWCLOSURE                       R12 P2
       73 CAPTURE                          VAL R2
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U3
       76 NEWTABLE                         R13 0 0
       78 CALL                             R11 2 1
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K2 ["useContext"]
       82 GETUPVAL                         R13 4
       83 GETTABLEKS                       R13 R13 K3 ["Context"]
       85 CALL                             R12 1 1
       86 GETUPVAL                         R13 5
       87 GETTABLEKS                       R14 R12 K7 ["inputBeganSignal"]
       89 NEWCLOSURE                       R15 P3
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R5
       94 NEWTABLE                         R16 0 3
       96 MOVE                             R17 R1
       97 MOVE                             R18 R5
       98 GETTABLEKS                       R19 R0 K8 ["setInputText"]
      100 SETLIST                          R16 R17 3 [1]
      102 CALL                             R13 3 0
      103 MOVE                             R13 R11
      104 MOVE                             R14 R4
      105 RETURN                           R13 2

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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["onCursorPositionChanged"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["onCursorPositionChanged"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 JUMPIFNOTEQKN                    R1 K2 [-1] ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["current"]
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R0 K5 ["TextSize"]
       21 GETTABLEKS                       R6 R0 K6 ["LineHeight"]
       23 MUL                              R4 R5 R6
       24 DIVK                             R3 R4 K4 [2]
       25 GETTABLEKS                       R5 R0 K7 ["AbsoluteSize"]
       27 GETTABLEKS                       R5 R5 K8 ["X"]
       29 DIV                              R4 R5 R3
       30 GETIMPORT                        R5 K11 [string.find]
       32 GETTABLEKS                       R6 R0 K12 ["Text"]
       34 LOADK                            R7 K13 ["\n"]
       35 SUBK                             R8 R1 K14 [1]
       36 CALL                             R5 3 1
       37 GETIMPORT                        R6 K11 [string.find]
       39 GETTABLEKS                       R7 R0 K12 ["Text"]
       41 LOADK                            R8 K15 [" "]
       42 MOVE                             R9 R1
       43 CALL                             R6 3 1
       44 JUMPIFNOT                        R5 ; [+9]
       45 JUMPIFNOT                        R6 ; [+8]
       46 FASTCALL2                        MATH_MIN R5 R6 ; [+5]
       48 MOVE                             R8 R5
       49 MOVE                             R9 R6
       50 GETIMPORT                        R7 K18 [math.min]
       52 CALL                             R7 2 1
       53 MOVE                             R6 R7
       54 ADD                              R8 R1 R4
       55 MOVE                             R9 R6
       56 JUMPIF                           R9 ; [+3]
       57 GETTABLEKS                       R10 R0 K12 ["Text"]
       59 LENGTH                           R9 R10
       60 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       62 GETIMPORT                        R7 K18 [math.min]
       64 CALL                             R7 2 1
       65 GETTABLEKS                       R8 R0 K12 ["Text"]
       67 LOADN                            R10 1
       68 MOVE                             R11 R7
       69 NAMECALL                         R8 R8 K19 ["sub"]
       71 CALL                             R8 3 1
       72 GETUPVAL                         R9 2
       73 SETTABLEKS                       R1 R9 K3 ["current"]
       75 GETUPVAL                         R9 3
       76 SETTABLEKS                       R8 R9 K3 ["current"]
       78 SETTABLEKS                       R8 R2 K12 ["Text"]
       80 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K3 [task.wait]
        7 CALL                             R2 0 0
        8 GETTABLEKS                       R2 R1 K4 ["CursorPosition"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["current"]
       13 JUMPIFEQ                         R2 R3 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R0 K5 ["Text"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K0 ["current"]
       21 JUMPIFEQ                         R2 R3 ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K6 ["onCaretEdgeChanged"]
       27 JUMPIFNOT                        R2 ; [+30]
       28 GETTABLEKS                       R3 R1 K7 ["TextSize"]
       30 GETTABLEKS                       R4 R1 K8 ["LineHeight"]
       32 MUL                              R2 R3 R4
       33 GETTABLEKS                       R3 R0 K9 ["TextBounds"]
       35 GETTABLEKS                       R3 R3 K10 ["Y"]
       37 GETTABLEKS                       R4 R1 K9 ["TextBounds"]
       39 GETTABLEKS                       R4 R4 K10 ["Y"]
       41 MULK                             R6 R2 K11 [1.5]
       42 JUMPIFLE                         R3 R6 ; [+2]
       44 LOADB                            R5 0 +1
       45 LOADB                            R5 1
       46 MULK                             R8 R2 K12 [0.5]
       47 SUB                              R7 R4 R8
       48 JUMPIFLE                         R7 R3 ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K6 ["onCaretEdgeChanged"]
       55 MOVE                             R8 R5
       56 MOVE                             R9 R6
       57 CALL                             R7 2 0
       58 GETUPVAL                         R2 4
       59 GETTABLEKS                       R2 R2 K0 ["current"]
       61 JUMPIF                           R2 ; [+1]
       62 RETURN                           R0 0
       63 GETTABLEKS                       R3 R2 K13 ["AbsoluteSize"]
       65 GETTABLEKS                       R3 R3 K10 ["Y"]
       67 GETTABLEKS                       R4 R2 K14 ["AbsolutePosition"]
       69 GETTABLEKS                       R4 R4 K10 ["Y"]
       71 ADD                              R5 R4 R3
       72 GETTABLEKS                       R7 R1 K14 ["AbsolutePosition"]
       74 GETTABLEKS                       R7 R7 K10 ["Y"]
       76 GETTABLEKS                       R8 R0 K9 ["TextBounds"]
       78 GETTABLEKS                       R8 R8 K10 ["Y"]
       80 ADD                              R6 R7 R8
       81 GETTABLEKS                       R9 R1 K7 ["TextSize"]
       83 GETTABLEKS                       R10 R1 K8 ["LineHeight"]
       85 MUL                              R8 R9 R10
       86 SUB                              R7 R6 R8
       87 LOADNIL                          R8
       88 JUMPIFNOTLT                      R7 R4 ; [+3]
       90 SUB                              R8 R4 R7
       91 JUMP                             ; [+5]
       92 JUMPIFNOTLT                      R5 R6 ; [+3]
       94 SUB                              R8 R5 R6
       95 JUMP                             ; [+1]
       96 RETURN                           R0 0
       97 GETTABLEKS                       R9 R2 K15 ["CanvasPosition"]
       99 GETIMPORT                        R10 K18 [Vector2.new]
      101 LOADN                            R11 0
      102 MOVE                             R12 R8
      103 CALL                             R10 2 1
      104 SUB                              R9 R9 R10
      105 SETTABLEKS                       R9 R2 K15 ["CanvasPosition"]
      107 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["TextBox"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
        5 GETTABLEKS                       R4 R4 K2 ["join"]
        7 DUPTABLE                         R5 K19 [{["PlaceholderText"], ["TextWrapped"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["ClearTextOnFocus"] = False, ["Font"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["PlaceholderColor3"], ["TextEditable"], ["Interactable"], ["BackgroundTransparency"] = 1}]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K20 ["placeholder"]
       11 SETTABLEKS                       R6 R5 K3 ["PlaceholderText"]
       13 GETUPVAL                         R6 3
       14 SETTABLEKS                       R6 R5 K4 ["TextWrapped"]
       16 GETUPVAL                         R7 3
       17 JUMPIFNOT                        R7 ; [+3]
       18 GETIMPORT                        R6 K23 [Enum.TextTruncate.None]
       20 JUMP                             ; [+2]
       21 GETIMPORT                        R6 K25 [Enum.TextTruncate.AtEnd]
       23 SETTABLEKS                       R6 R5 K5 ["TextTruncate"]
       25 GETIMPORT                        R6 K27 [Enum.TextXAlignment.Left]
       27 SETTABLEKS                       R6 R5 K6 ["TextXAlignment"]
       29 GETIMPORT                        R6 K29 [Enum.TextYAlignment.Center]
       31 SETTABLEKS                       R6 R5 K7 ["TextYAlignment"]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K10 ["Font"]
       36 SETTABLEKS                       R6 R5 K10 ["Font"]
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K30 ["FontSize"]
       41 SETTABLEKS                       R6 R5 K11 ["TextSize"]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K12 ["LineHeight"]
       46 SETTABLEKS                       R6 R5 K12 ["LineHeight"]
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R6 R6 K31 ["Color3"]
       51 SETTABLEKS                       R6 R5 K13 ["TextColor3"]
       53 GETUPVAL                         R6 6
       54 GETTABLEKS                       R6 R6 K31 ["Color3"]
       56 SETTABLEKS                       R6 R5 K14 ["PlaceholderColor3"]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K32 ["isDisabled"]
       61 NOT                              R6 R7
       62 SETTABLEKS                       R6 R5 K15 ["TextEditable"]
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K32 ["isDisabled"]
       67 NOT                              R6 R7
       68 SETTABLEKS                       R6 R5 K16 ["Interactable"]
       70 MOVE                             R6 R0
       71 JUMPIF                           R6 ; [+2]
       72 NEWTABLE                         R6 0 0
       74 CALL                             R4 2 1
       75 MOVE                             R5 R1
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

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
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R20
      144 NEWTABLE                         R24 0 2
      146 GETTABLEKS                       R25 R18 K23 ["current"]
      148 GETTABLEKS                       R26 R0 K24 ["onCursorPositionChanged"]
      150 SETLIST                          R24 R25 2 [1]
      152 CALL                             R22 2 1
      153 GETUPVAL                         R23 1
      154 GETTABLEKS                       R23 R23 K19 ["useCallback"]
      156 NEWCLOSURE                       R24 P6
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R8
      162 NEWTABLE                         R25 0 1
      164 GETTABLEKS                       R26 R0 K25 ["onCaretEdgeChanged"]
      166 SETLIST                          R25 R26 1 [1]
      168 CALL                             R23 2 1
      169 NEWCLOSURE                       R24 P7
      170 CAPTURE                          UPVAL U2
      171 CAPTURE                          UPVAL U3
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R3
      177 GETUPVAL                         R25 4
      178 GETTABLEKS                       R25 R25 K26 ["get"]
      180 CALL                             R25 0 1
      181 GETTABLEKS                       R26 R25 K27 ["isRobloxScriptSecurity"]
      183 CALL                             R26 0 1
      184 GETUPVAL                         R27 2
      185 LOADK                            R28 K28 ["ScrollingFrame"]
      186 NEWTABLE                         R29 16 0
      188 GETIMPORT                        R30 K31 [UDim2.new]
      190 LOADN                            R31 1
      191 LOADN                            R32 0
      192 LOADN                            R33 0
      193 FASTCALL2K                       MATH_MIN R10 K32 ; [+5]
      195 MOVE                             R35 R10
      196 LOADK                            R36 K32 [140]
      197 GETIMPORT                        R34 K35 [math.min]
      199 CALL                             R34 2 1
      200 CALL                             R30 4 1
      201 SETTABLEKS                       R30 R29 K11 ["Size"]
      203 GETIMPORT                        R30 K39 [Enum.AutomaticSize.Y]
      205 SETTABLEKS                       R30 R29 K40 ["AutomaticCanvasSize"]
      207 GETIMPORT                        R30 K31 [UDim2.new]
      209 LOADN                            R31 0
      210 LOADN                            R32 0
      211 LOADN                            R33 0
      212 LOADN                            R34 0
      213 CALL                             R30 4 1
      214 SETTABLEKS                       R30 R29 K41 ["CanvasSize"]
      216 GETIMPORT                        R30 K43 [Enum.ScrollingDirection.Y]
      218 SETTABLEKS                       R30 R29 K42 ["ScrollingDirection"]
      220 GETTABLEKS                       R30 R5 K44 ["Color3"]
      222 SETTABLEKS                       R30 R29 K45 ["ScrollBarImageColor3"]
      224 LOADN                            R31 140
      225 JUMPIFNOTLT                      R31 R10 ; [+4]
      227 GETTABLEKS                       R30 R5 K46 ["Transparency"]
      229 JUMP                             ; [+1]
      230 LOADN                            R30 1
      231 SETTABLEKS                       R30 R29 K47 ["ScrollBarImageTransparency"]
      233 SETTABLEKS                       R6 R29 K48 ["ScrollBarThickness"]
      235 LOADN                            R31 140
      236 JUMPIFLT                         R31 R10 ; [+2]
      238 LOADB                            R30 0 +1
      239 LOADB                            R30 1
      240 SETTABLEKS                       R30 R29 K49 ["ScrollingEnabled"]
      242 GETIMPORT                        R30 K52 [Enum.ScrollBarInset.Always]
      244 SETTABLEKS                       R30 R29 K53 ["VerticalScrollBarInset"]
      246 LOADN                            R30 1
      247 SETTABLEKS                       R30 R29 K54 ["BackgroundTransparency"]
      249 LOADN                            R30 0
      250 SETTABLEKS                       R30 R29 K55 ["BorderSizePixel"]
      252 GETUPVAL                         R30 1
      253 GETTABLEKS                       R30 R30 K56 ["Change"]
      255 GETTABLEKS                       R30 R30 K57 ["AbsoluteCanvasSize"]
      257 SETTABLE                         R15 R29 R30
      258 SETTABLEKS                       R8 R29 K58 ["ref"]
      260 DUPTABLE                         R30 K63 [{"TextBox", "UIFlexItem", "UIListLayout", "UIPadding"}]
      261 MOVE                             R31 R24
      262 NEWTABLE                         R32 16 0
      264 GETTABLEKS                       R33 R0 K18 ["text"]
      266 SETTABLEKS                       R33 R32 K64 ["Text"]
      268 GETIMPORT                        R33 K66 [UDim2.fromOffset]
      270 LOADN                            R36 2
      271 MUL                              R35 R36 R7
      272 SUB                              R34 R12 R35
      273 LOADN                            R35 28
      274 CALL                             R33 2 1
      275 SETTABLEKS                       R33 R32 K11 ["Size"]
      277 GETIMPORT                        R33 K39 [Enum.AutomaticSize.Y]
      279 SETTABLEKS                       R33 R32 K37 ["AutomaticSize"]
      281 JUMPIFNOT                        R26 ; [+2]
      282 LOADB                            R33 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R33
      285 SETTABLEKS                       R33 R32 K67 ["ShouldEmitUpAndDownArrowEvents"]
      287 JUMPIFNOT                        R26 ; [+2]
      288 LOADB                            R33 1
      289 JUMP                             ; [+1]
      290 LOADNIL                          R33
      291 SETTABLEKS                       R33 R32 K68 ["ShouldEmitTabEvents"]
      293 GETUPVAL                         R33 1
      294 GETTABLEKS                       R33 R33 K56 ["Change"]
      296 GETTABLEKS                       R33 R33 K64 ["Text"]
      298 SETTABLE                         R17 R32 R33
      299 GETUPVAL                         R33 1
      300 GETTABLEKS                       R33 R33 K69 ["Event"]
      302 GETTABLEKS                       R33 R33 K70 ["FocusLost"]
      304 SETTABLE                         R21 R32 R33
      305 GETUPVAL                         R33 1
      306 GETTABLEKS                       R33 R33 K56 ["Change"]
      308 GETTABLEKS                       R33 R33 K71 ["AbsoluteSize"]
      310 SETTABLE                         R16 R32 R33
      311 GETUPVAL                         R33 1
      312 GETTABLEKS                       R33 R33 K56 ["Change"]
      314 GETTABLEKS                       R33 R33 K72 ["CursorPosition"]
      316 SETTABLE                         R22 R32 R33
      317 SETTABLEKS                       R9 R32 K58 ["ref"]
      319 DUPTABLE                         R33 K74 [{"TextBoundChecker", "UIListLayout"}]
      320 MOVE                             R34 R24
      321 NEWTABLE                         R35 8 0
      323 GETIMPORT                        R36 K76 [UDim2.fromScale]
      325 LOADN                            R37 1
      326 LOADN                            R38 0
      327 CALL                             R36 2 1
      328 SETTABLEKS                       R36 R35 K11 ["Size"]
      330 LOADN                            R36 1
      331 SETTABLEKS                       R36 R35 K77 ["TextTransparency"]
      333 GETIMPORT                        R36 K80 [Enum.TextYAlignment.Top]
      335 SETTABLEKS                       R36 R35 K78 ["TextYAlignment"]
      337 LOADB                            R36 0
      338 SETTABLEKS                       R36 R35 K81 ["Interactable"]
      340 LOADB                            R36 0
      341 SETTABLEKS                       R36 R35 K82 ["TextEditable"]
      343 LOADB                            R36 0
      344 SETTABLEKS                       R36 R35 K83 ["Selectable"]
      346 GETUPVAL                         R36 1
      347 GETTABLEKS                       R36 R36 K56 ["Change"]
      349 GETTABLEKS                       R36 R36 K84 ["TextBounds"]
      351 SETTABLE                         R23 R35 R36
      352 SETTABLEKS                       R18 R35 K58 ["ref"]
      354 CALL                             R34 1 1
      355 SETTABLEKS                       R34 R33 K73 ["TextBoundChecker"]
      357 GETUPVAL                         R34 2
      358 LOADK                            R35 K61 ["UIListLayout"]
      359 DUPTABLE                         R36 K86 [{"VerticalFlex"}]
      360 GETIMPORT                        R37 K89 [Enum.UIFlexAlignment.Fill]
      362 SETTABLEKS                       R37 R36 K85 ["VerticalFlex"]
      364 CALL                             R34 2 1
      365 SETTABLEKS                       R34 R33 K61 ["UIListLayout"]
      367 CALL                             R31 2 1
      368 SETTABLEKS                       R31 R30 K59 ["TextBox"]
      370 GETUPVAL                         R31 2
      371 LOADK                            R32 K60 ["UIFlexItem"]
      372 DUPTABLE                         R33 K92 [{"FlexMode", "ItemLineAlignment"}]
      373 GETIMPORT                        R34 K94 [Enum.UIFlexMode.Fill]
      375 SETTABLEKS                       R34 R33 K90 ["FlexMode"]
      377 GETIMPORT                        R34 K96 [Enum.ItemLineAlignment.Center]
      379 SETTABLEKS                       R34 R33 K91 ["ItemLineAlignment"]
      381 CALL                             R31 2 1
      382 SETTABLEKS                       R31 R30 K60 ["UIFlexItem"]
      384 GETUPVAL                         R31 2
      385 LOADK                            R32 K61 ["UIListLayout"]
      386 DUPTABLE                         R33 K97 [{"ItemLineAlignment"}]
      387 GETIMPORT                        R34 K96 [Enum.ItemLineAlignment.Center]
      389 SETTABLEKS                       R34 R33 K91 ["ItemLineAlignment"]
      391 CALL                             R31 2 1
      392 SETTABLEKS                       R31 R30 K61 ["UIListLayout"]
      394 GETUPVAL                         R31 2
      395 LOADK                            R32 K62 ["UIPadding"]
      396 DUPTABLE                         R33 K100 [{"PaddingLeft", "PaddingRight"}]
      397 GETIMPORT                        R34 K102 [UDim.new]
      399 LOADN                            R35 0
      400 MOVE                             R36 R7
      401 CALL                             R34 2 1
      402 SETTABLEKS                       R34 R33 K98 ["PaddingLeft"]
      404 GETIMPORT                        R34 K102 [UDim.new]
      406 LOADN                            R35 0
      407 MOVE                             R36 R7
      408 CALL                             R34 2 1
      409 SETTABLEKS                       R34 R33 K99 ["PaddingRight"]
      411 CALL                             R31 2 1
      412 SETTABLEKS                       R31 R30 K62 ["UIPadding"]
      414 CALL                             R27 3 -1
      415 RETURN                           R27 -1

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
        0 GETTABLEKS                       R1 R0 K0 ["isDisabled"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
        7 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
        9 DUPTABLE                         R5 K6 [{"SendButtonRotation"}]
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R7 1
       12 DUPTABLE                         R8 K9 [{["tag"] = "auto-xy", ["Rotation"] = -90}]
       13 DUPTABLE                         R9 K11 [{"SendButton"}]
       14 GETUPVAL                         R10 0
       15 GETUPVAL                         R11 2
       16 DUPTABLE                         R12 K20 [{["icon"] = "icons/navigation/seeAllArrow_small", ["size"], ["variant"], ["isCircular"] = True, [5], ["onActivated"], ["testId"]}]
       17 GETUPVAL                         R13 3
       18 GETTABLEKS                       R13 R13 K21 ["Enums"]
       20 GETTABLEKS                       R13 R13 K22 ["InputSize"]
       22 GETTABLEKS                       R13 R13 K23 ["XSmall"]
       24 SETTABLEKS                       R13 R12 K14 ["size"]
       26 JUMPIFNOT                        R1 ; [+8]
       27 GETUPVAL                         R13 3
       28 GETTABLEKS                       R13 R13 K21 ["Enums"]
       30 GETTABLEKS                       R13 R13 K24 ["ButtonVariant"]
       32 GETTABLEKS                       R13 R13 K25 ["Standard"]
       34 JUMP                             ; [+7]
       35 GETUPVAL                         R13 3
       36 GETTABLEKS                       R13 R13 K21 ["Enums"]
       38 GETTABLEKS                       R13 R13 K24 ["ButtonVariant"]
       40 GETTABLEKS                       R13 R13 K26 ["Emphasis"]
       42 SETTABLEKS                       R13 R12 K15 ["variant"]
       44 SETTABLEKS                       R1 R12 K0 ["isDisabled"]
       46 GETTABLEKS                       R13 R0 K18 ["onActivated"]
       48 SETTABLEKS                       R13 R12 K18 ["onActivated"]
       50 GETUPVAL                         R13 4
       51 GETTABLEKS                       R13 R13 K27 ["InputArea"]
       53 GETTABLEKS                       R13 R13 K10 ["SendButton"]
       55 SETTABLEKS                       R13 R12 K19 ["testId"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K10 ["SendButton"]
       60 CALL                             R6 3 1
       61 SETTABLEKS                       R6 R5 K5 ["SendButtonRotation"]
       63 CALL                             R2 3 -1
       64 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputEnabled"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onInputStateChanged"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeImage"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R1 2
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K0 ["FIntMCPAssistantInputAreaCharLimit"]
       13 GETIMPORT                        R2 K3 [utf8.len]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+5]
       19 GETUPVAL                         R3 4
       20 LOADK                            R4 K4 [""]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 JUMPIFNOTLT                      R1 R2 ; [+14]
       25 GETIMPORT                        R3 K6 [utf8.offset]
       27 MOVE                             R4 R0
       28 ADDK                             R5 R1 K7 [1]
       29 LOADN                            R6 1
       30 CALL                             R3 3 1
       31 JUMPIFNOT                        R3 ; [+6]
       32 LOADN                            R6 1
       33 SUBK                             R7 R3 K7 [1]
       34 NAMECALL                         R4 R0 K8 ["sub"]
       36 CALL                             R4 3 1
       37 MOVE                             R0 R4
       38 GETUPVAL                         R3 4
       39 MOVE                             R4 R0
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 5
       42 GETTABLEKS                       R3 R3 K9 ["CommandPrefix"]
       44 LOADN                            R6 1
       45 LENGTH                           R7 R3
       46 NAMECALL                         R4 R0 K8 ["sub"]
       48 CALL                             R4 3 1
       49 JUMPIFNOTEQ                      R4 R3 ; [+52]
       51 GETUPVAL                         R6 5
       52 GETTABLEKS                       R6 R6 K10 ["CommandDelimiter"]
       54 NAMECALL                         R4 R0 K11 ["find"]
       56 CALL                             R4 2 1
       57 JUMPIF                           R4 ; [+44]
       58 LENGTH                           R7 R3
       59 ADDK                             R6 R7 K7 [1]
       60 NAMECALL                         R4 R0 K8 ["sub"]
       62 CALL                             R4 2 1
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K12 ["getRegisteredSlashCommands"]
       66 GETUPVAL                         R6 6
       67 CALL                             R5 1 1
       68 GETIMPORT                        R6 K15 [table.create]
       70 LENGTH                           R7 R5
       71 CALL                             R6 1 1
       72 NAMECALL                         R7 R4 K16 ["lower"]
       74 CALL                             R7 1 1
       75 MOVE                             R8 R5
       76 LOADNIL                          R9
       77 LOADNIL                          R10
       78 FORGPREP                         R8
       79 GETIMPORT                        R13 K18 [string.find]
       81 NAMECALL                         R14 R12 K16 ["lower"]
       83 CALL                             R14 1 1
       84 MOVE                             R15 R7
       85 LOADN                            R16 1
       86 LOADB                            R17 1
       87 CALL                             R13 4 1
       88 JUMPIFNOT                        R13 ; [+7]
       89 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       91 MOVE                             R14 R6
       92 MOVE                             R15 R12
       93 GETIMPORT                        R13 K20 [table.insert]
       95 CALL                             R13 2 0
       96 FORGLOOP                         R8 2 ; [-18]
       98 GETUPVAL                         R8 7
       99 MOVE                             R9 R6
      100 CALL                             R8 1 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R4 7
      103 DUPCLOSURE                       R5 K21 [PROTO_28]
      104 CALL                             R4 1 0
      105 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FocusInput"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K2 [string.gsub]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K3 ["^%s+"]
        7 LOADK                            R3 K4 [""]
        8 CALL                             R0 3 1
        9 GETIMPORT                        R1 K2 [string.gsub]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K5 ["%s+$"]
       13 LOADK                            R4 K4 [""]
       14 CALL                             R1 3 1
       15 LENGTH                           R2 R1
       16 JUMPIFNOTEQKN                    R2 K6 [0] ; [+6]
       18 GETUPVAL                         R3 2
       19 LENGTH                           R2 R3
       20 JUMPIFNOTEQKN                    R2 K6 [0] ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 3
       24 LOADK                            R3 K4 [""]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 4
       27 NEWTABLE                         R3 0 0
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 5
       31 DUPTABLE                         R3 K9 [{"text", "images"}]
       32 SETTABLEKS                       R1 R3 K7 ["text"]
       34 GETUPVAL                         R6 2
       35 LENGTH                           R5 R6
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R5 ; [+3]
       39 GETUPVAL                         R4 2
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 SETTABLEKS                       R4 R3 K8 ["images"]
       44 CALL                             R2 1 0
       45 LENGTH                           R2 R1
       46 LOADN                            R3 0
       47 JUMPIFNOTLT                      R3 R2 ; [+6]
       49 GETUPVAL                         R2 6
       50 JUMPIFNOT                        R2 ; [+3]
       51 GETUPVAL                         R2 6
       52 MOVE                             R3 R1
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 7
       55 JUMPIFNOT                        R2 ; [+2]
       56 GETUPVAL                         R2 7
       57 CALL                             R2 0 0
       58 GETUPVAL                         R2 8
       59 JUMPIFNOT                        R2 ; [+3]
       60 GETUPVAL                         R2 8
       61 MOVE                             R3 R1
       62 CALL                             R2 1 0
       63 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["get"]
        5 CALL                             R0 0 1
        6 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        8 GETTABLEKS                       R1 R0 K2 ["logStopGeneration"]
       10 DUPTABLE                         R2 K5 [{"messageGuid", "sessionId"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K3 ["messageGuid"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K4 ["sessionId"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R0 3
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 4
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 LOADK                            R2 K1 ["Send Prompt: %*"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 CALL                             R1 1 0
        9 JUMPIFNOTEQKS                    R0 K3 [""] ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K4 ["current"]
       19 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_40:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R2 R2 K0 ["popCurrentPlayerPrompt"]
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+20]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["log"]
       13 LOADK                            R4 K2 ["Send Prompt: %*"]
       14 MOVE                             R6 R2
       15 NAMECALL                         R4 R4 K3 ["format"]
       17 CALL                             R4 2 1
       18 CALL                             R3 1 0
       19 JUMPIFNOTEQKS                    R2 K4 [""] ; [+2]
       21 JUMP                             ; [+17]
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 2
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K5 ["current"]
       29 JUMP                             ; [+9]
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R3 R3 K6 ["getCurrentPlayerPromptReadySignal"]
       33 CALL                             R3 0 1
       34 MOVE                             R5 R0
       35 NAMECALL                         R3 R3 K7 ["Connect"]
       37 CALL                             R3 2 1
       38 MOVE                             R1 R3
       39 NEWCLOSURE                       R3 P1
       40 CAPTURE                          REF R1
       41 CLOSEUPVALS                      R1
       42 RETURN                           R3 1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Requested"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["cancelCurrentAcpSession"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["Context"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R3 K3 ["inputEnabled"]
       18 GETTABLEKS                       R5 R3 K4 ["reasonDisabled"]
       20 GETTABLEKS                       R6 R3 K5 ["clearInputDisabled"]
       22 GETUPVAL                         R7 3
       23 CALL                             R7 0 1
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K0 ["useContext"]
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R9 R9 K1 ["Context"]
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R9 R8 K6 ["sessionId"]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K0 ["useContext"]
       36 GETUPVAL                         R11 5
       37 GETTABLEKS                       R11 R11 K1 ["Context"]
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K0 ["useContext"]
       43 GETUPVAL                         R12 6
       44 GETTABLEKS                       R12 R12 K1 ["Context"]
       46 CALL                             R11 1 1
       47 GETTABLEKS                       R13 R11 K7 ["selectedModel"]
       49 GETUPVAL                         R14 7
       50 GETTABLEKS                       R14 R14 K8 ["DEFAULT_STUDIO_MODEL"]
       52 JUMPIFEQ                         R13 R14 ; [+2]
       54 LOADB                            R12 0 +1
       55 LOADB                            R12 1
       56 GETUPVAL                         R13 8
       57 CALL                             R13 0 1
       58 JUMPIFNOT                        R13 ; [+8]
       59 MOVE                             R13 R12
       60 JUMPIFNOT                        R13 ; [+6]
       61 GETTABLEKS                       R14 R10 K9 ["blockReason"]
       63 JUMPIFNOTEQKNIL                  R14 ; [+2]
       65 LOADB                            R13 0 +1
       66 LOADB                            R13 1
       67 NOT                              R15 R4
       68 OR                               R14 R15 R13
       69 GETUPVAL                         R15 9
       70 CALL                             R15 0 1
       71 GETUPVAL                         R16 10
       72 CALL                             R16 0 1
       73 GETUPVAL                         R17 11
       74 CALL                             R17 0 1
       75 GETUPVAL                         R18 0
       76 GETTABLEKS                       R18 R18 K10 ["useState"]
       78 LOADK                            R19 K11 [""]
       79 CALL                             R18 1 2
       80 GETTABLEKS                       R21 R0 K12 ["textBoxRef"]
       82 JUMPIFNOT                        R21 ; [+3]
       83 GETTABLEKS                       R20 R0 K12 ["textBoxRef"]
       85 JUMP                             ; [+5]
       86 GETUPVAL                         R20 0
       87 GETTABLEKS                       R20 R20 K13 ["useRef"]
       89 LOADNIL                          R21
       90 CALL                             R20 1 1
       91 GETUPVAL                         R21 12
       92 DUPTABLE                         R22 K15 [{"inputText", "textBoxRef"}]
       93 SETTABLEKS                       R18 R22 K14 ["inputText"]
       95 SETTABLEKS                       R20 R22 K12 ["textBoxRef"]
       97 CALL                             R21 1 0
       98 NEWTABLE                         R21 0 0
      100 LOADNIL                          R22
      101 LOADNIL                          R23
      102 LOADNIL                          R24
      103 GETUPVAL                         R25 0
      104 GETTABLEKS                       R25 R25 K10 ["useState"]
      106 LOADNIL                          R26
      107 CALL                             R25 1 2
      108 GETUPVAL                         R27 0
      109 GETTABLEKS                       R27 R27 K13 ["useRef"]
      111 LOADB                            R28 1
      112 CALL                             R27 1 1
      113 GETUPVAL                         R28 13
      114 GETTABLEKS                       R28 R28 K16 ["FFlagAssistantEval"]
      116 JUMPIFNOT                        R28 ; [+12]
      117 GETUPVAL                         R28 0
      118 GETTABLEKS                       R28 R28 K17 ["useEffect"]
      120 NEWCLOSURE                       R29 P0
      121 CAPTURE                          UPVAL U14
      122 CAPTURE                          VAL R4
      123 NEWTABLE                         R30 0 1
      125 MOVE                             R31 R4
      126 SETLIST                          R30 R31 1 [1]
      128 CALL                             R28 2 0
      129 GETUPVAL                         R28 13
      130 GETTABLEKS                       R28 R28 K18 ["FFlagAssistantMultiPlayerAgents"]
      132 JUMPIFNOT                        R28 ; [+14]
      133 GETUPVAL                         R28 0
      134 GETTABLEKS                       R28 R28 K17 ["useEffect"]
      136 NEWCLOSURE                       R29 P1
      137 CAPTURE                          UPVAL U15
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R16
      141 NEWTABLE                         R30 0 1
      143 MOVE                             R31 R4
      144 SETLIST                          R30 R31 1 [1]
      146 CALL                             R28 2 0
      147 GETUPVAL                         R28 0
      148 GETTABLEKS                       R28 R28 K17 ["useEffect"]
      150 NEWCLOSURE                       R29 P2
      151 CAPTURE                          VAL R27
      152 NEWTABLE                         R30 0 0
      154 CALL                             R28 2 0
      155 GETUPVAL                         R28 0
      156 GETTABLEKS                       R28 R28 K10 ["useState"]
      158 NEWTABLE                         R29 0 0
      160 CALL                             R28 1 2
      161 MOVE                             R21 R28
      162 MOVE                             R22 R29
      163 GETUPVAL                         R28 0
      164 GETTABLEKS                       R28 R28 K19 ["useCallback"]
      166 NEWCLOSURE                       R29 P3
      167 CAPTURE                          VAL R27
      168 CAPTURE                          VAL R26
      169 CAPTURE                          UPVAL U16
      170 CAPTURE                          REF R22
      171 NEWTABLE                         R30 0 0
      173 CALL                             R28 2 1
      174 MOVE                             R23 R28
      175 GETUPVAL                         R28 0
      176 GETTABLEKS                       R28 R28 K19 ["useCallback"]
      178 NEWCLOSURE                       R29 P4
      179 CAPTURE                          REF R22
      180 CAPTURE                          UPVAL U16
      181 NEWTABLE                         R30 0 0
      183 CALL                             R28 2 1
      184 MOVE                             R24 R28
      185 GETUPVAL                         R28 0
      186 GETTABLEKS                       R28 R28 K10 ["useState"]
      188 NEWTABLE                         R29 0 0
      190 CALL                             R28 1 2
      191 GETTABLEKS                       R30 R0 K20 ["OnMessageSent"]
      193 GETUPVAL                         R31 17
      194 DUPTABLE                         R32 K22 [{"setInputEnabled"}]
      195 GETUPVAL                         R33 18
      196 MOVE                             R34 R3
      197 CALL                             R33 1 1
      198 SETTABLEKS                       R33 R32 K21 ["setInputEnabled"]
      200 CALL                             R31 1 1
      201 LOADNIL                          R32
      202 LOADNIL                          R33
      203 LOADNIL                          R34
      204 GETUPVAL                         R35 13
      205 GETTABLEKS                       R35 R35 K23 ["FFlagAssistantPromptHistoryFromConversation"]
      207 JUMPIFNOT                        R35 ; [+9]
      208 GETUPVAL                         R35 19
      209 DUPTABLE                         R36 K25 [{"textBoxRef", "setInputText"}]
      210 SETTABLEKS                       R20 R36 K12 ["textBoxRef"]
      212 SETTABLEKS                       R19 R36 K24 ["setInputText"]
      214 CALL                             R35 1 1
      215 MOVE                             R32 R35
      216 JUMP                             ; [+9]
      217 GETUPVAL                         R35 20
      218 DUPTABLE                         R36 K25 [{"textBoxRef", "setInputText"}]
      219 SETTABLEKS                       R20 R36 K12 ["textBoxRef"]
      221 SETTABLEKS                       R19 R36 K24 ["setInputText"]
      223 CALL                             R35 1 2
      224 MOVE                             R33 R35
      225 MOVE                             R34 R36
      226 MOVE                             R35 R32
      227 JUMPIFNOT                        R35 ; [+2]
      228 GETTABLEKS                       R35 R32 K26 ["onUserEdit"]
      230 MOVE                             R36 R32
      231 JUMPIFNOT                        R36 ; [+2]
      232 GETTABLEKS                       R36 R32 K27 ["onCursorPositionChanged"]
      234 MOVE                             R37 R32
      235 JUMPIFNOT                        R37 ; [+2]
      236 GETTABLEKS                       R37 R32 K28 ["onCaretEdgeChanged"]
      238 MOVE                             R38 R32
      239 JUMPIFNOT                        R38 ; [+2]
      240 GETTABLEKS                       R38 R32 K29 ["resetNavigation"]
      242 GETUPVAL                         R39 0
      243 GETTABLEKS                       R39 R39 K30 ["useMemo"]
      245 DUPCLOSURE                       R40 K31 [PROTO_27]
      246 CAPTURE                          UPVAL U21
      247 NEWTABLE                         R41 0 1
      249 GETUPVAL                         R42 21
      250 GETTABLEKS                       R42 R42 K32 ["locale"]
      252 SETLIST                          R41 R42 1 [1]
      254 CALL                             R39 2 1
      255 GETUPVAL                         R40 0
      256 GETTABLEKS                       R40 R40 K19 ["useCallback"]
      258 NEWCLOSURE                       R41 P6
      259 CAPTURE                          VAL R35
      260 CAPTURE                          VAL R25
      261 CAPTURE                          VAL R26
      262 CAPTURE                          UPVAL U13
      263 CAPTURE                          VAL R19
      264 CAPTURE                          UPVAL U22
      265 CAPTURE                          VAL R17
      266 CAPTURE                          VAL R29
      267 NEWTABLE                         R42 0 5
      269 MOVE                             R43 R19
      270 MOVE                             R44 R29
      271 MOVE                             R45 R17
      272 MOVE                             R46 R25
      273 MOVE                             R47 R35
      274 SETLIST                          R42 R43 5 [1]
      276 CALL                             R40 2 1
      277 GETUPVAL                         R41 0
      278 GETTABLEKS                       R41 R41 K10 ["useState"]
      280 LOADNIL                          R42
      281 CALL                             R41 1 2
      282 GETUPVAL                         R43 0
      283 GETTABLEKS                       R43 R43 K17 ["useEffect"]
      285 NEWCLOSURE                       R44 P7
      286 CAPTURE                          VAL R41
      287 CAPTURE                          VAL R20
      288 NEWTABLE                         R45 0 1
      290 MOVE                             R46 R41
      291 SETLIST                          R45 R46 1 [1]
      293 CALL                             R43 2 0
      294 GETUPVAL                         R43 0
      295 GETTABLEKS                       R43 R43 K19 ["useCallback"]
      297 NEWCLOSURE                       R44 P8
      298 CAPTURE                          VAL R19
      299 CAPTURE                          VAL R42
      300 NEWTABLE                         R45 0 0
      302 CALL                             R43 2 1
      303 GETUPVAL                         R44 0
      304 GETTABLEKS                       R44 R44 K17 ["useEffect"]
      306 NEWCLOSURE                       R45 P9
      307 CAPTURE                          UPVAL U23
      308 CAPTURE                          VAL R42
      309 NEWTABLE                         R46 0 0
      311 CALL                             R44 2 0
      312 GETUPVAL                         R44 0
      313 GETTABLEKS                       R44 R44 K19 ["useCallback"]
      315 NEWCLOSURE                       R45 P10
      316 CAPTURE                          VAL R14
      317 CAPTURE                          VAL R18
      318 CAPTURE                          REF R21
      319 CAPTURE                          VAL R19
      320 CAPTURE                          REF R22
      321 CAPTURE                          VAL R31
      322 CAPTURE                          REF R33
      323 CAPTURE                          VAL R38
      324 CAPTURE                          VAL R30
      325 NEWTABLE                         R46 0 9
      327 MOVE                             R47 R18
      328 MOVE                             R48 R19
      329 MOVE                             R49 R31
      330 MOVE                             R50 R33
      331 MOVE                             R51 R38
      332 MOVE                             R52 R30
      333 MOVE                             R53 R21
      334 MOVE                             R54 R22
      335 MOVE                             R55 R14
      336 SETLIST                          R46 R47 9 [1]
      338 CALL                             R44 2 1
      339 GETUPVAL                         R45 0
      340 GETTABLEKS                       R45 R45 K19 ["useCallback"]
      342 NEWCLOSURE                       R46 P11
      343 CAPTURE                          VAL R15
      344 CAPTURE                          UPVAL U24
      345 CAPTURE                          VAL R9
      346 CAPTURE                          VAL R2
      347 CAPTURE                          VAL R6
      348 NEWTABLE                         R47 0 4
      350 MOVE                             R48 R2
      351 MOVE                             R49 R6
      352 MOVE                             R50 R9
      353 MOVE                             R51 R15
      354 SETLIST                          R47 R48 4 [1]
      356 CALL                             R45 2 1
      357 LOADNIL                          R46
      358 GETUPVAL                         R47 13
      359 GETTABLEKS                       R47 R47 K18 ["FFlagAssistantMultiPlayerAgents"]
      361 JUMPIF                           R47 ; [+4]
      362 GETUPVAL                         R47 13
      363 GETTABLEKS                       R47 R47 K16 ["FFlagAssistantEval"]
      365 JUMPIFNOT                        R47 ; [+19]
      366 GETUPVAL                         R47 0
      367 GETTABLEKS                       R47 R47 K13 ["useRef"]
      369 LOADB                            R48 0
      370 CALL                             R47 1 1
      371 MOVE                             R46 R47
      372 GETUPVAL                         R47 0
      373 GETTABLEKS                       R47 R47 K17 ["useEffect"]
      375 NEWCLOSURE                       R48 P12
      376 CAPTURE                          REF R46
      377 CAPTURE                          VAL R44
      378 NEWTABLE                         R49 0 2
      380 MOVE                             R50 R18
      381 MOVE                             R51 R44
      382 SETLIST                          R49 R50 2 [1]
      384 CALL                             R47 2 0
      385 GETUPVAL                         R47 13
      386 GETTABLEKS                       R47 R47 K18 ["FFlagAssistantMultiPlayerAgents"]
      388 JUMPIFNOT                        R47 ; [+14]
      389 GETUPVAL                         R47 0
      390 GETTABLEKS                       R47 R47 K17 ["useEffect"]
      392 NEWCLOSURE                       R48 P13
      393 CAPTURE                          UPVAL U25
      394 CAPTURE                          VAL R19
      395 CAPTURE                          REF R46
      396 CAPTURE                          UPVAL U15
      397 NEWTABLE                         R49 0 1
      399 MOVE                             R50 R19
      400 SETLIST                          R49 R50 1 [1]
      402 CALL                             R47 2 0
      403 GETUPVAL                         R47 13
      404 GETTABLEKS                       R47 R47 K16 ["FFlagAssistantEval"]
      406 JUMPIFNOT                        R47 ; [+37]
      407 GETUPVAL                         R47 0
      408 GETTABLEKS                       R47 R47 K17 ["useEffect"]
      410 NEWCLOSURE                       R48 P14
      411 CAPTURE                          UPVAL U26
      412 CAPTURE                          VAL R19
      413 CAPTURE                          REF R46
      414 NEWTABLE                         R49 0 1
      416 MOVE                             R50 R19
      417 SETLIST                          R49 R50 1 [1]
      419 CALL                             R47 2 0
      420 GETUPVAL                         R47 0
      421 GETTABLEKS                       R47 R47 K13 ["useRef"]
      423 MOVE                             R48 R45
      424 CALL                             R47 1 1
      425 SETTABLEKS                       R45 R47 K33 ["current"]
      427 GETUPVAL                         R48 0
      428 GETTABLEKS                       R48 R48 K13 ["useRef"]
      430 MOVE                             R49 R7
      431 CALL                             R48 1 1
      432 SETTABLEKS                       R7 R48 K33 ["current"]
      434 GETUPVAL                         R49 0
      435 GETTABLEKS                       R49 R49 K17 ["useEffect"]
      437 NEWCLOSURE                       R50 P15
      438 CAPTURE                          UPVAL U26
      439 CAPTURE                          VAL R47
      440 CAPTURE                          VAL R48
      441 NEWTABLE                         R51 0 0
      443 CALL                             R49 2 0
      444 GETUPVAL                         R47 0
      445 GETTABLEKS                       R47 R47 K17 ["useEffect"]
      447 NEWCLOSURE                       R48 P16
      448 CAPTURE                          UPVAL U27
      449 CAPTURE                          VAL R19
      450 NEWTABLE                         R49 0 1
      452 MOVE                             R50 R19
      453 SETLIST                          R49 R50 1 [1]
      455 CALL                             R47 2 0
      456 MOVE                             R47 R5
      457 JUMPIFNOT                        R47 ; [+9]
      458 GETTABLEKS                       R48 R5 K4 ["reasonDisabled"]
      460 GETUPVAL                         R49 28
      461 GETTABLEKS                       R49 R49 K34 ["Generation"]
      463 JUMPIFEQ                         R48 R49 ; [+2]
      465 LOADB                            R47 0 +1
      466 LOADB                            R47 1
      467 LENGTH                           R49 R18
      468 JUMPIFNOTEQKN                    R49 K35 [0] ; [+5]
      470 LOADB                            R48 1
      471 LENGTH                           R49 R21
      472 JUMPIFEQKN                       R49 K35 [0] ; [+2]
      474 MOVE                             R48 R14
      475 GETUPVAL                         R49 29
      476 CALL                             R49 0 1
      477 GETUPVAL                         R50 0
      478 GETTABLEKS                       R50 R50 K36 ["useBinding"]
      480 LOADN                            R51 0
      481 CALL                             R50 1 2
      482 LOADB                            R52 0
      483 LENGTH                           R53 R21
      484 LOADN                            R54 0
      485 JUMPIFNOTLT                      R54 R53 ; [+20]
      487 GETUPVAL                         R52 30
      488 GETUPVAL                         R53 31
      489 DUPTABLE                         R54 K40 [{["tag"] = "row size-full-0 auto-y", ["LayoutOrder"]}]
      490 MOVE                             R55 R49
      491 CALL                             R55 0 1
      492 SETTABLEKS                       R55 R54 K39 ["LayoutOrder"]
      494 DUPTABLE                         R55 K42 [{"List"}]
      495 GETUPVAL                         R56 30
      496 GETUPVAL                         R57 32
      497 DUPTABLE                         R58 K45 [{"attachedImages", "onRemoveImage"}]
      498 SETTABLEKS                       R21 R58 K43 ["attachedImages"]
      500 SETTABLEKS                       R24 R58 K44 ["onRemoveImage"]
      502 CALL                             R56 2 1
      503 SETTABLEKS                       R56 R55 K41 ["List"]
      505 CALL                             R52 3 1
      506 GETUPVAL                         R53 30
      507 GETUPVAL                         R54 31
      508 DUPTABLE                         R55 K47 [{["tag"] = "col flex-between flex-y-fill align-y-center gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      509 MOVE                             R56 R49
      510 CALL                             R56 0 1
      511 SETTABLEKS                       R56 R55 K39 ["LayoutOrder"]
      513 DUPTABLE                         R56 K50 [{"TextInput", "ActionButtons"}]
      514 GETUPVAL                         R57 30
      515 GETUPVAL                         R58 33
      516 DUPTABLE                         R59 K56 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "onCursorPositionChanged", "onCaretEdgeChanged", "textBoxRef"}]
      517 SETTABLEKS                       R18 R59 K51 ["text"]
      519 JUMPIFNOT                        R47 ; [+3]
      520 GETTABLEKS                       R60 R39 K57 ["Responding"]
      522 JUMP                             ; [+6]
      523 JUMPIFEQKNIL                     R34 ; [+3]
      525 MOVE                             R60 R34
      526 JUMP                             ; [+2]
      527 GETTABLEKS                       R60 R39 K58 ["AskAssistant"]
      529 SETTABLEKS                       R60 R59 K52 ["placeholder"]
      531 SETTABLEKS                       R14 R59 K53 ["isDisabled"]
      533 MOVE                             R60 R49
      534 CALL                             R60 0 1
      535 SETTABLEKS                       R60 R59 K39 ["LayoutOrder"]
      537 SETTABLEKS                       R40 R59 K54 ["onChanged"]
      539 SETTABLEKS                       R44 R59 K55 ["onReturnPressed"]
      541 SETTABLEKS                       R36 R59 K27 ["onCursorPositionChanged"]
      543 SETTABLEKS                       R37 R59 K28 ["onCaretEdgeChanged"]
      545 SETTABLEKS                       R20 R59 K12 ["textBoxRef"]
      547 CALL                             R57 2 1
      548 SETTABLEKS                       R57 R56 K48 ["TextInput"]
      550 GETUPVAL                         R57 30
      551 GETUPVAL                         R58 31
      552 DUPTABLE                         R59 K60 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      553 MOVE                             R60 R49
      554 CALL                             R60 0 1
      555 SETTABLEKS                       R60 R59 K39 ["LayoutOrder"]
      557 DUPTABLE                         R60 K67 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButtonContainer", "StopButton"}]
      558 GETUPVAL                         R61 30
      559 GETUPVAL                         R62 34
      560 DUPTABLE                         R63 K69 [{"isDisabled", "onActivated", "LayoutOrder"}]
      561 SETTABLEKS                       R14 R63 K53 ["isDisabled"]
      563 SETTABLEKS                       R23 R63 K68 ["onActivated"]
      565 MOVE                             R64 R49
      566 CALL                             R64 0 1
      567 SETTABLEKS                       R64 R63 K39 ["LayoutOrder"]
      569 CALL                             R61 2 1
      570 SETTABLEKS                       R61 R60 K61 ["AttachImageButton"]
      572 GETUPVAL                         R61 30
      573 GETUPVAL                         R62 35
      574 DUPTABLE                         R63 K70 [{"LayoutOrder"}]
      575 MOVE                             R64 R49
      576 CALL                             R64 0 1
      577 SETTABLEKS                       R64 R63 K39 ["LayoutOrder"]
      579 CALL                             R61 2 1
      580 SETTABLEKS                       R61 R60 K62 ["ServerManagementButton"]
      582 GETUPVAL                         R61 30
      583 GETUPVAL                         R62 31
      584 DUPTABLE                         R63 K72 [{["tag"] = "fill", ["LayoutOrder"]}]
      585 MOVE                             R64 R49
      586 CALL                             R64 0 1
      587 SETTABLEKS                       R64 R63 K39 ["LayoutOrder"]
      589 CALL                             R61 2 1
      590 SETTABLEKS                       R61 R60 K63 ["Spacer"]
      592 GETUPVAL                         R61 30
      593 GETUPVAL                         R62 36
      594 DUPTABLE                         R63 K70 [{"LayoutOrder"}]
      595 MOVE                             R64 R49
      596 CALL                             R64 0 1
      597 SETTABLEKS                       R64 R63 K39 ["LayoutOrder"]
      599 CALL                             R61 2 1
      600 SETTABLEKS                       R61 R60 K64 ["SelectAssistantMode"]
      602 NOT                              R61 R47
      603 JUMPIFNOT                        R61 ; [+12]
      604 GETUPVAL                         R61 30
      605 GETUPVAL                         R62 37
      606 DUPTABLE                         R63 K73 [{"LayoutOrder", "isDisabled", "onActivated"}]
      607 MOVE                             R64 R49
      608 CALL                             R64 0 1
      609 SETTABLEKS                       R64 R63 K39 ["LayoutOrder"]
      611 SETTABLEKS                       R48 R63 K53 ["isDisabled"]
      613 SETTABLEKS                       R44 R63 K68 ["onActivated"]
      615 CALL                             R61 2 1
      616 SETTABLEKS                       R61 R60 K65 ["SendButtonContainer"]
      618 MOVE                             R61 R47
      619 JUMPIFNOT                        R61 ; [+44]
      620 GETUPVAL                         R61 30
      621 GETUPVAL                         R62 38
      622 DUPTABLE                         R63 K80 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      623 GETUPVAL                         R64 39
      624 GETTABLEKS                       R64 R64 K81 ["Enums"]
      626 GETTABLEKS                       R64 R64 K82 ["IconName"]
      628 GETTABLEKS                       R64 R64 K83 ["StopSmall"]
      630 SETTABLEKS                       R64 R63 K74 ["icon"]
      632 GETUPVAL                         R64 39
      633 GETTABLEKS                       R64 R64 K81 ["Enums"]
      635 GETTABLEKS                       R64 R64 K84 ["InputSize"]
      637 GETTABLEKS                       R64 R64 K85 ["XSmall"]
      639 SETTABLEKS                       R64 R63 K75 ["size"]
      641 GETUPVAL                         R64 39
      642 GETTABLEKS                       R64 R64 K81 ["Enums"]
      644 GETTABLEKS                       R64 R64 K86 ["ButtonVariant"]
      646 GETTABLEKS                       R64 R64 K87 ["Standard"]
      648 SETTABLEKS                       R64 R63 K76 ["variant"]
      650 SETTABLEKS                       R45 R63 K68 ["onActivated"]
      652 MOVE                             R64 R49
      653 CALL                             R64 0 1
      654 SETTABLEKS                       R64 R63 K39 ["LayoutOrder"]
      656 GETUPVAL                         R64 40
      657 GETTABLEKS                       R64 R64 K88 ["InputArea"]
      659 GETTABLEKS                       R64 R64 K66 ["StopButton"]
      661 SETTABLEKS                       R64 R63 K79 ["testId"]
      663 CALL                             R61 2 1
      664 SETTABLEKS                       R61 R60 K66 ["StopButton"]
      666 CALL                             R57 3 1
      667 SETTABLEKS                       R57 R56 K49 ["ActionButtons"]
      669 CALL                             R53 3 1
      670 GETUPVAL                         R54 30
      671 LOADK                            R55 K89 ["UIFlexItem"]
      672 DUPTABLE                         R56 K92 [{"FlexMode", "ItemLineAlignment"}]
      673 GETIMPORT                        R57 K96 [Enum.UIFlexMode.Fill]
      675 SETTABLEKS                       R57 R56 K90 ["FlexMode"]
      677 GETIMPORT                        R57 K98 [Enum.ItemLineAlignment.Center]
      679 SETTABLEKS                       R57 R56 K91 ["ItemLineAlignment"]
      681 CALL                             R54 2 1
      682 LOADNIL                          R55
      683 LOADNIL                          R56
      684 GETUPVAL                         R57 8
      685 CALL                             R57 0 1
      686 JUMPIFNOT                        R57 ; [+48]
      687 NEWTABLE                         R57 4 0
      689 LOADB                            R58 1
      690 SETTABLEKS                       R58 R57 K99 ["col size-full-0 auto-y radius-large"]
      692 JUMPIFNOTEQKNIL                  R25 ; [+2]
      694 LOADB                            R58 0 +1
      695 LOADB                            R58 1
      696 SETTABLEKS                       R58 R57 K100 ["stroke-system-alert"]
      698 JUMPIFEQKNIL                     R25 ; [+2]
      700 LOADB                            R58 0 +1
      701 LOADB                            R58 1
      702 SETTABLEKS                       R58 R57 K101 ["stroke-emphasis"]
      704 MOVE                             R55 R57
      705 DUPTABLE                         R57 K104 [{"UIFlexItem", "UsageBanner", "PaddedContent"}]
      706 SETTABLEKS                       R54 R57 K89 ["UIFlexItem"]
      708 GETUPVAL                         R58 30
      709 GETUPVAL                         R59 41
      710 DUPTABLE                         R60 K70 [{"LayoutOrder"}]
      711 MOVE                             R61 R49
      712 CALL                             R61 0 1
      713 SETTABLEKS                       R61 R60 K39 ["LayoutOrder"]
      715 CALL                             R58 2 1
      716 SETTABLEKS                       R58 R57 K102 ["UsageBanner"]
      718 GETUPVAL                         R58 30
      719 GETUPVAL                         R59 31
      720 DUPTABLE                         R60 K106 [{["tag"] = "col gap-small size-full-0 auto-y padding-medium", ["LayoutOrder"]}]
      721 MOVE                             R61 R49
      722 CALL                             R61 0 1
      723 SETTABLEKS                       R61 R60 K39 ["LayoutOrder"]
      725 DUPTABLE                         R61 K109 [{"AttachedImagesPreview", "InputRow"}]
      726 SETTABLEKS                       R52 R61 K107 ["AttachedImagesPreview"]
      728 SETTABLEKS                       R53 R61 K108 ["InputRow"]
      730 CALL                             R58 3 1
      731 SETTABLEKS                       R58 R57 K103 ["PaddedContent"]
      733 MOVE                             R56 R57
      734 JUMP                             ; [+26]
      735 NEWTABLE                         R57 4 0
      737 LOADB                            R58 1
      738 SETTABLEKS                       R58 R57 K110 ["col gap-small size-full-0 auto-y padding-medium radius-large"]
      740 JUMPIFNOTEQKNIL                  R25 ; [+2]
      742 LOADB                            R58 0 +1
      743 LOADB                            R58 1
      744 SETTABLEKS                       R58 R57 K100 ["stroke-system-alert"]
      746 JUMPIFEQKNIL                     R25 ; [+2]
      748 LOADB                            R58 0 +1
      749 LOADB                            R58 1
      750 SETTABLEKS                       R58 R57 K101 ["stroke-emphasis"]
      752 MOVE                             R55 R57
      753 DUPTABLE                         R57 K111 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      754 SETTABLEKS                       R54 R57 K89 ["UIFlexItem"]
      756 SETTABLEKS                       R52 R57 K107 ["AttachedImagesPreview"]
      758 SETTABLEKS                       R53 R57 K108 ["InputRow"]
      760 MOVE                             R56 R57
      761 GETUPVAL                         R57 30
      762 GETUPVAL                         R58 31
      763 DUPTABLE                         R59 K113 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"], ["testId"]}]
      764 GETTABLEKS                       R60 R0 K39 ["LayoutOrder"]
      766 SETTABLEKS                       R60 R59 K39 ["LayoutOrder"]
      768 GETUPVAL                         R60 40
      769 GETTABLEKS                       R60 R60 K88 ["InputArea"]
      771 GETTABLEKS                       R60 R60 K114 ["Container"]
      773 SETTABLEKS                       R60 R59 K79 ["testId"]
      775 DUPTABLE                         R60 K117 [{"Menu", "Footer"}]
      776 GETUPVAL                         R61 30
      777 GETUPVAL                         R62 42
      778 DUPTABLE                         R63 K122 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus", "LayoutOrder"}]
      779 LENGTH                           R65 R28
      780 LOADN                            R66 0
      781 JUMPIFLT                         R66 R65 ; [+2]
      783 LOADB                            R64 0 +1
      784 LOADB                            R64 1
      785 SETTABLEKS                       R64 R63 K118 ["isOpen"]
      787 SETTABLEKS                       R28 R63 K119 ["items"]
      789 SETTABLEKS                       R50 R63 K120 ["width"]
      791 SETTABLEKS                       R20 R63 K12 ["textBoxRef"]
      793 SETTABLEKS                       R43 R63 K121 ["setTextAndFocus"]
      795 MOVE                             R64 R49
      796 CALL                             R64 0 1
      797 SETTABLEKS                       R64 R63 K39 ["LayoutOrder"]
      799 DUPTABLE                         R64 K124 [{"MessageField"}]
      800 GETUPVAL                         R65 30
      801 GETUPVAL                         R66 31
      802 DUPTABLE                         R67 K126 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      803 SETTABLEKS                       R55 R67 K37 ["tag"]
      805 NEWCLOSURE                       R68 P17
      806 CAPTURE                          VAL R51
      807 SETTABLEKS                       R68 R67 K125 ["onAbsoluteSizeChanged"]
      809 MOVE                             R68 R49
      810 CALL                             R68 0 1
      811 SETTABLEKS                       R68 R67 K39 ["LayoutOrder"]
      813 MOVE                             R68 R56
      814 CALL                             R65 3 1
      815 SETTABLEKS                       R65 R64 K123 ["MessageField"]
      817 CALL                             R61 3 1
      818 SETTABLEKS                       R61 R60 K115 ["Menu"]
      820 GETUPVAL                         R61 30
      821 GETUPVAL                         R62 43
      822 DUPTABLE                         R63 K128 [{"imageAttachError", "LayoutOrder"}]
      823 SETTABLEKS                       R25 R63 K127 ["imageAttachError"]
      825 MOVE                             R64 R49
      826 CALL                             R64 0 1
      827 SETTABLEKS                       R64 R63 K39 ["LayoutOrder"]
      829 CALL                             R61 2 1
      830 SETTABLEKS                       R61 R60 K116 ["Footer"]
      832 CALL                             R57 3 -1
      833 CLOSEUPVALS                      R21
      834 RETURN                           R57 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["ComposerPrefill"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["CreditMeteringContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["Cryo"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Guest"]
       48 GETTABLEKS                       R7 R7 K16 ["Environment"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K9 ["Util"]
       55 GETTABLEKS                       R8 R8 K17 ["AssistantEval"]
       57 GETTABLEKS                       R8 R8 K18 ["EvalController"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K9 ["Util"]
       64 GETTABLEKS                       R9 R9 K17 ["AssistantEval"]
       66 GETTABLEKS                       R9 R9 K19 ["EvalFunctionRegistry"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K20 ["Events"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K21 ["FlagUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["Flags"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K13 ["Parent"]
       88 GETTABLEKS                       R13 R13 K23 ["Foundation"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R10 K24 ["getIsCreditMeteringEnabled"]
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Components"]
       97 GETTABLEKS                       R15 R15 K25 ["ImageAttachmentButton"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R0 K9 ["Util"]
      104 GETTABLEKS                       R16 R16 K26 ["ImageAttachmentUtils"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R17 R0 K6 ["Components"]
      111 GETTABLEKS                       R17 R17 K27 ["InputFooter"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K6 ["Components"]
      118 GETTABLEKS                       R18 R18 K11 ["Contexts"]
      120 GETTABLEKS                       R18 R18 K28 ["InputStateContext"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K6 ["Components"]
      127 GETTABLEKS                       R19 R19 K11 ["Contexts"]
      129 GETTABLEKS                       R19 R19 K29 ["LLMProviderSelectionContext"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K5 [require]
      134 GETTABLEKS                       R20 R0 K9 ["Util"]
      136 GETTABLEKS                       R20 R20 K30 ["MultiPlayersConnection"]
      138 GETTABLEKS                       R20 R20 K31 ["MultiPlayersAgentClient"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K5 [require]
      143 GETTABLEKS                       R21 R0 K9 ["Util"]
      145 GETTABLEKS                       R21 R21 K30 ["MultiPlayersConnection"]
      147 GETTABLEKS                       R21 R21 K32 ["MultiPlayersModeUtils"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K5 [require]
      152 GETTABLEKS                       R22 R0 K6 ["Components"]
      154 GETTABLEKS                       R22 R22 K11 ["Contexts"]
      156 GETTABLEKS                       R22 R22 K33 ["OngoingAcpPromptContext"]
      158 CALL                             R21 1 1
      159 GETIMPORT                        R22 K5 [require]
      161 GETTABLEKS                       R23 R0 K13 ["Parent"]
      163 GETTABLEKS                       R23 R23 K34 ["React"]
      165 CALL                             R22 1 1
      166 GETIMPORT                        R23 K5 [require]
      168 GETTABLEKS                       R24 R0 K13 ["Parent"]
      170 GETTABLEKS                       R24 R24 K35 ["ReactUtils"]
      172 CALL                             R23 1 1
      173 GETIMPORT                        R24 K5 [require]
      175 GETTABLEKS                       R25 R0 K6 ["Components"]
      177 GETTABLEKS                       R25 R25 K36 ["ServerManagementDropdown"]
      179 CALL                             R24 1 1
      180 GETIMPORT                        R25 K5 [require]
      182 GETTABLEKS                       R26 R0 K6 ["Components"]
      184 GETTABLEKS                       R26 R26 K11 ["Contexts"]
      186 GETTABLEKS                       R26 R26 K37 ["SessionIdContext"]
      188 CALL                             R25 1 1
      189 GETIMPORT                        R26 K5 [require]
      191 GETTABLEKS                       R27 R0 K6 ["Components"]
      193 GETTABLEKS                       R27 R27 K38 ["SlashCommandMenu"]
      195 CALL                             R26 1 1
      196 GETIMPORT                        R27 K5 [require]
      198 GETTABLEKS                       R28 R0 K9 ["Util"]
      200 GETTABLEKS                       R28 R28 K39 ["TestIds"]
      202 CALL                             R27 1 1
      203 GETIMPORT                        R28 K5 [require]
      205 GETTABLEKS                       R29 R0 K6 ["Components"]
      207 GETTABLEKS                       R29 R29 K11 ["Contexts"]
      209 GETTABLEKS                       R29 R29 K40 ["ThreadIdContext"]
      211 CALL                             R28 1 1
      212 GETIMPORT                        R29 K5 [require]
      214 GETTABLEKS                       R30 R0 K41 ["Resources"]
      216 GETTABLEKS                       R30 R30 K42 ["Localization"]
      218 GETTABLEKS                       R30 R30 K43 ["Translator"]
      220 CALL                             R29 1 1
      221 GETIMPORT                        R30 K5 [require]
      223 GETTABLEKS                       R31 R0 K44 ["Types"]
      225 CALL                             R30 1 1
      226 GETIMPORT                        R31 K5 [require]
      228 GETTABLEKS                       R32 R0 K6 ["Components"]
      230 GETTABLEKS                       R32 R32 K45 ["UIToolRegistry"]
      232 CALL                             R31 1 1
      233 GETIMPORT                        R32 K5 [require]
      235 GETTABLEKS                       R33 R0 K6 ["Components"]
      237 GETTABLEKS                       R33 R33 K46 ["DailyUsage"]
      239 GETTABLEKS                       R33 R33 K47 ["UsageLimitBanner"]
      241 CALL                             R32 1 1
      242 GETIMPORT                        R33 K5 [require]
      244 GETTABLEKS                       R34 R0 K6 ["Components"]
      246 GETTABLEKS                       R34 R34 K11 ["Contexts"]
      248 GETTABLEKS                       R34 R34 K48 ["WindowInputContext"]
      250 CALL                             R33 1 1
      251 GETIMPORT                        R34 K5 [require]
      253 GETTABLEKS                       R35 R0 K9 ["Util"]
      255 GETTABLEKS                       R35 R35 K49 ["getToggleGenerationInputFunc"]
      257 CALL                             R34 1 1
      258 GETIMPORT                        R35 K5 [require]
      260 GETTABLEKS                       R36 R0 K50 ["Hooks"]
      262 GETTABLEKS                       R36 R36 K51 ["useAssistantMode"]
      264 CALL                             R35 1 1
      265 GETIMPORT                        R36 K5 [require]
      267 GETTABLEKS                       R37 R0 K50 ["Hooks"]
      269 GETTABLEKS                       R37 R37 K52 ["useClearConversation"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K5 [require]
      274 GETTABLEKS                       R38 R0 K50 ["Hooks"]
      276 GETTABLEKS                       R38 R38 K53 ["useCurrentAssistantMessageId"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K5 [require]
      281 GETTABLEKS                       R39 R0 K50 ["Hooks"]
      283 GETTABLEKS                       R39 R39 K54 ["useCurrentThread"]
      285 CALL                             R38 1 1
      286 GETIMPORT                        R39 K5 [require]
      288 GETTABLEKS                       R40 R0 K50 ["Hooks"]
      290 GETTABLEKS                       R40 R40 K55 ["useEventConnection"]
      292 CALL                             R39 1 1
      293 GETIMPORT                        R40 K5 [require]
      295 GETTABLEKS                       R41 R0 K50 ["Hooks"]
      297 GETTABLEKS                       R41 R41 K56 ["usePromptHistory"]
      299 CALL                             R40 1 1
      300 GETIMPORT                        R41 K5 [require]
      302 GETTABLEKS                       R42 R0 K50 ["Hooks"]
      304 GETTABLEKS                       R42 R42 K57 ["useSendMessage"]
      306 CALL                             R41 1 1
      307 GETTABLEKS                       R42 R17 K58 ["InputDisabledReasons"]
      309 GETTABLEKS                       R43 R12 K59 ["IconButton"]
      311 GETTABLEKS                       R44 R12 K60 ["View"]
      313 GETTABLEKS                       R45 R23 K61 ["createNextOrder"]
      315 GETTABLEKS                       R46 R22 K62 ["createElement"]
      317 DUPCLOSURE                       R47 K63 [PROTO_5]
      318 CAPTURE                          VAL R22
      319 CAPTURE                          VAL R28
      320 CAPTURE                          VAL R11
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R33
      323 CAPTURE                          VAL R39
      324 DUPCLOSURE                       R48 K64 [PROTO_14]
      325 CAPTURE                          VAL R12
      326 CAPTURE                          VAL R22
      327 CAPTURE                          VAL R46
      328 CAPTURE                          VAL R5
      329 CAPTURE                          VAL R6
      330 DUPCLOSURE                       R49 K65 [PROTO_16]
      331 CAPTURE                          VAL R22
      332 CAPTURE                          VAL R28
      333 DUPCLOSURE                       R50 K66 [PROTO_17]
      334 CAPTURE                          VAL R46
      335 CAPTURE                          VAL R44
      336 CAPTURE                          VAL R43
      337 CAPTURE                          VAL R12
      338 CAPTURE                          VAL R27
      339 DUPCLOSURE                       R51 K67 [PROTO_51]
      340 CAPTURE                          VAL R22
      341 CAPTURE                          VAL R21
      342 CAPTURE                          VAL R17
      343 CAPTURE                          VAL R36
      344 CAPTURE                          VAL R25
      345 CAPTURE                          VAL R4
      346 CAPTURE                          VAL R18
      347 CAPTURE                          VAL R30
      348 CAPTURE                          VAL R13
      349 CAPTURE                          VAL R37
      350 CAPTURE                          VAL R38
      351 CAPTURE                          VAL R35
      352 CAPTURE                          VAL R49
      353 CAPTURE                          VAL R11
      354 CAPTURE                          VAL R7
      355 CAPTURE                          VAL R19
      356 CAPTURE                          VAL R15
      357 CAPTURE                          VAL R41
      358 CAPTURE                          VAL R34
      359 CAPTURE                          VAL R40
      360 CAPTURE                          VAL R47
      361 CAPTURE                          VAL R29
      362 CAPTURE                          VAL R31
      363 CAPTURE                          VAL R9
      364 CAPTURE                          VAL R6
      365 CAPTURE                          VAL R20
      366 CAPTURE                          VAL R8
      367 CAPTURE                          VAL R3
      368 CAPTURE                          VAL R42
      369 CAPTURE                          VAL R45
      370 CAPTURE                          VAL R46
      371 CAPTURE                          VAL R44
      372 CAPTURE                          VAL R2
      373 CAPTURE                          VAL R48
      374 CAPTURE                          VAL R14
      375 CAPTURE                          VAL R24
      376 CAPTURE                          VAL R1
      377 CAPTURE                          VAL R50
      378 CAPTURE                          VAL R43
      379 CAPTURE                          VAL R12
      380 CAPTURE                          VAL R27
      381 CAPTURE                          VAL R32
      382 CAPTURE                          VAL R26
      383 CAPTURE                          VAL R16
      384 RETURN                           R51 1
