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
        0 GETTABLEKS                       R1 R0 K0 ["isDisabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantUseBuilderIcons"]
        5 JUMPIFNOT                        R2 ; [+63]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K5 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K7 [{"SendButtonRotation"}]
       14 GETUPVAL                         R6 1
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K10 [{["tag"] = "auto-xy", ["Rotation"] = -90}]
       17 DUPTABLE                         R9 K12 [{"SendButton"}]
       18 GETUPVAL                         R10 1
       19 GETUPVAL                         R11 3
       20 DUPTABLE                         R12 K21 [{["icon"] = "icons/navigation/seeAllArrow_small", ["size"], ["variant"], ["isCircular"] = True, [5], ["onActivated"], ["testId"]}]
       21 GETUPVAL                         R13 4
       22 GETTABLEKS                       R13 R13 K22 ["Enums"]
       24 GETTABLEKS                       R13 R13 K23 ["InputSize"]
       26 GETTABLEKS                       R13 R13 K24 ["XSmall"]
       28 SETTABLEKS                       R13 R12 K15 ["size"]
       30 JUMPIFNOT                        R1 ; [+8]
       31 GETUPVAL                         R13 4
       32 GETTABLEKS                       R13 R13 K22 ["Enums"]
       34 GETTABLEKS                       R13 R13 K25 ["ButtonVariant"]
       36 GETTABLEKS                       R13 R13 K26 ["Standard"]
       38 JUMP                             ; [+7]
       39 GETUPVAL                         R13 4
       40 GETTABLEKS                       R13 R13 K22 ["Enums"]
       42 GETTABLEKS                       R13 R13 K25 ["ButtonVariant"]
       44 GETTABLEKS                       R13 R13 K27 ["Emphasis"]
       46 SETTABLEKS                       R13 R12 K16 ["variant"]
       48 SETTABLEKS                       R1 R12 K0 ["isDisabled"]
       50 GETTABLEKS                       R13 R0 K19 ["onActivated"]
       52 SETTABLEKS                       R13 R12 K19 ["onActivated"]
       54 GETUPVAL                         R13 5
       55 GETTABLEKS                       R13 R13 K28 ["InputArea"]
       57 GETTABLEKS                       R13 R13 K11 ["SendButton"]
       59 SETTABLEKS                       R13 R12 K20 ["testId"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K11 ["SendButton"]
       64 CALL                             R6 3 1
       65 SETTABLEKS                       R6 R5 K6 ["SendButtonRotation"]
       67 CALL                             R2 3 -1
       68 RETURN                           R2 -1
       69 GETUPVAL                         R2 1
       70 GETUPVAL                         R3 6
       71 DUPTABLE                         R4 K33 [{["icon"] = "icons/navigation/seeAllArrow_small", ["tag"], ["iconTag"] = "size-300-300 content-emphasis", ["iconRotation"] = -90, [5], ["onActivated"], ["LayoutOrder"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
       72 NEWTABLE                         R5 4 0
       74 LOADB                            R6 1
       75 SETTABLEKS                       R6 R5 K34 ["align-x-center align-y-center size-600-600 radius-circle"]
       77 SETTABLEKS                       R1 R5 K35 ["bg-action-standard"]
       79 NOT                              R6 R1
       80 SETTABLEKS                       R6 R5 K36 ["bg-action-emphasis"]
       82 SETTABLEKS                       R5 R4 K2 ["tag"]
       84 SETTABLEKS                       R1 R4 K0 ["isDisabled"]
       86 GETTABLEKS                       R5 R0 K19 ["onActivated"]
       88 SETTABLEKS                       R5 R4 K19 ["onActivated"]
       90 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       92 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       94 GETUPVAL                         R5 5
       95 GETTABLEKS                       R5 R5 K28 ["InputArea"]
       97 GETTABLEKS                       R5 R5 K11 ["SendButton"]
       99 SETTABLEKS                       R5 R4 K20 ["testId"]
      101 CALL                             R2 2 -1
      102 RETURN                           R2 -1

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
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["FIntMCPAssistantInputAreaCharLimit"]
        8 GETIMPORT                        R2 K3 [utf8.len]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+5]
       14 GETUPVAL                         R3 3
       15 LOADK                            R4 K4 [""]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0
       18 JUMPIFNOTLT                      R1 R2 ; [+14]
       20 GETIMPORT                        R3 K6 [utf8.offset]
       22 MOVE                             R4 R0
       23 ADDK                             R5 R1 K7 [1]
       24 LOADN                            R6 1
       25 CALL                             R3 3 1
       26 JUMPIFNOT                        R3 ; [+6]
       27 LOADN                            R6 1
       28 SUBK                             R7 R3 K7 [1]
       29 NAMECALL                         R4 R0 K8 ["sub"]
       31 CALL                             R4 3 1
       32 MOVE                             R0 R4
       33 GETUPVAL                         R3 3
       34 MOVE                             R4 R0
       35 CALL                             R3 1 0
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K9 ["CommandPrefix"]
       39 LOADN                            R6 1
       40 LENGTH                           R7 R3
       41 NAMECALL                         R4 R0 K8 ["sub"]
       43 CALL                             R4 3 1
       44 JUMPIFNOTEQ                      R4 R3 ; [+52]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K10 ["CommandDelimiter"]
       49 NAMECALL                         R4 R0 K11 ["find"]
       51 CALL                             R4 2 1
       52 JUMPIF                           R4 ; [+44]
       53 LENGTH                           R7 R3
       54 ADDK                             R6 R7 K7 [1]
       55 NAMECALL                         R4 R0 K8 ["sub"]
       57 CALL                             R4 2 1
       58 GETUPVAL                         R5 4
       59 GETTABLEKS                       R5 R5 K12 ["getRegisteredSlashCommands"]
       61 GETUPVAL                         R6 5
       62 CALL                             R5 1 1
       63 GETIMPORT                        R6 K15 [table.create]
       65 LENGTH                           R7 R5
       66 CALL                             R6 1 1
       67 NAMECALL                         R7 R4 K16 ["lower"]
       69 CALL                             R7 1 1
       70 MOVE                             R8 R5
       71 LOADNIL                          R9
       72 LOADNIL                          R10
       73 FORGPREP                         R8
       74 GETIMPORT                        R13 K18 [string.find]
       76 NAMECALL                         R14 R12 K16 ["lower"]
       78 CALL                             R14 1 1
       79 MOVE                             R15 R7
       80 LOADN                            R16 1
       81 LOADB                            R17 1
       82 CALL                             R13 4 1
       83 JUMPIFNOT                        R13 ; [+7]
       84 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       86 MOVE                             R14 R6
       87 MOVE                             R15 R12
       88 GETIMPORT                        R13 K20 [table.insert]
       90 CALL                             R13 2 0
       91 FORGLOOP                         R8 2 ; [-18]
       93 GETUPVAL                         R8 6
       94 MOVE                             R9 R6
       95 CALL                             R8 1 0
       96 RETURN                           R0 0
       97 GETUPVAL                         R4 6
       98 DUPCLOSURE                       R5 K21 [PROTO_28]
       99 CALL                             R4 1 0
      100 RETURN                           R0 0

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
       47 JUMPIFNOTLT                      R3 R2 ; [+4]
       49 GETUPVAL                         R2 6
       50 MOVE                             R3 R1
       51 CALL                             R2 1 0
       52 GETUPVAL                         R2 7
       53 JUMPIFNOT                        R2 ; [+3]
       54 GETUPVAL                         R2 7
       55 MOVE                             R3 R1
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

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
       19 CALL                             R0 0 1
       20 JUMPIFNOT                        R0 ; [+14]
       21 GETUPVAL                         R0 4
       22 CALL                             R0 0 0
       23 GETUPVAL                         R0 5
       24 CALL                             R0 0 1
       25 JUMPIF                           R0 ; [+13]
       26 GETUPVAL                         R0 6
       27 GETTABLEKS                       R0 R0 K6 ["FFlagAssistantSupportSlashCommandCancellation"]
       29 JUMPIFNOT                        R0 ; [+9]
       30 GETUPVAL                         R0 7
       31 JUMPIFNOT                        R0 ; [+7]
       32 GETUPVAL                         R0 7
       33 CALL                             R0 0 0
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R0 7
       36 JUMPIFNOT                        R0 ; [+2]
       37 GETUPVAL                         R0 7
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 8
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

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
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["cancelCurrentAcpSession"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K0 ["useContext"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K1 ["Context"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R4 K3 ["inputEnabled"]
       20 GETTABLEKS                       R6 R4 K4 ["reasonDisabled"]
       22 GETTABLEKS                       R7 R4 K5 ["clearInputDisabled"]
       24 GETUPVAL                         R8 4
       25 CALL                             R8 0 1
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K0 ["useContext"]
       29 GETUPVAL                         R10 5
       30 GETTABLEKS                       R10 R10 K1 ["Context"]
       32 CALL                             R9 1 1
       33 GETTABLEKS                       R10 R9 K6 ["sessionId"]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K0 ["useContext"]
       38 GETUPVAL                         R12 6
       39 GETTABLEKS                       R12 R12 K1 ["Context"]
       41 CALL                             R11 1 1
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K0 ["useContext"]
       45 GETUPVAL                         R13 7
       46 GETTABLEKS                       R13 R13 K1 ["Context"]
       48 CALL                             R12 1 1
       49 GETTABLEKS                       R14 R12 K7 ["selectedModel"]
       51 GETUPVAL                         R15 8
       52 GETTABLEKS                       R15 R15 K8 ["DEFAULT_STUDIO_MODEL"]
       54 JUMPIFEQ                         R14 R15 ; [+2]
       56 LOADB                            R13 0 +1
       57 LOADB                            R13 1
       58 GETUPVAL                         R14 9
       59 GETTABLEKS                       R14 R14 K9 ["FFlagAssistantCreditMetering"]
       61 JUMPIFNOT                        R14 ; [+8]
       62 MOVE                             R14 R13
       63 JUMPIFNOT                        R14 ; [+6]
       64 GETTABLEKS                       R15 R11 K10 ["blockReason"]
       66 JUMPIFNOTEQKNIL                  R15 ; [+2]
       68 LOADB                            R14 0 +1
       69 LOADB                            R14 1
       70 NOT                              R16 R5
       71 OR                               R15 R16 R14
       72 GETUPVAL                         R16 10
       73 CALL                             R16 0 1
       74 GETUPVAL                         R17 11
       75 CALL                             R17 0 1
       76 GETUPVAL                         R18 12
       77 CALL                             R18 0 1
       78 GETUPVAL                         R19 1
       79 GETTABLEKS                       R19 R19 K11 ["useState"]
       81 LOADK                            R20 K12 [""]
       82 CALL                             R19 1 2
       83 GETTABLEKS                       R22 R0 K13 ["textBoxRef"]
       85 JUMPIFNOT                        R22 ; [+3]
       86 GETTABLEKS                       R21 R0 K13 ["textBoxRef"]
       88 JUMP                             ; [+5]
       89 GETUPVAL                         R21 1
       90 GETTABLEKS                       R21 R21 K14 ["useRef"]
       92 LOADNIL                          R22
       93 CALL                             R21 1 1
       94 GETUPVAL                         R22 13
       95 DUPTABLE                         R23 K16 [{"inputText", "textBoxRef"}]
       96 SETTABLEKS                       R19 R23 K15 ["inputText"]
       98 SETTABLEKS                       R21 R23 K13 ["textBoxRef"]
      100 CALL                             R22 1 0
      101 NEWTABLE                         R22 0 0
      103 LOADNIL                          R23
      104 LOADNIL                          R24
      105 LOADNIL                          R25
      106 GETUPVAL                         R26 1
      107 GETTABLEKS                       R26 R26 K11 ["useState"]
      109 LOADNIL                          R27
      110 CALL                             R26 1 2
      111 GETUPVAL                         R28 1
      112 GETTABLEKS                       R28 R28 K14 ["useRef"]
      114 LOADB                            R29 1
      115 CALL                             R28 1 1
      116 GETUPVAL                         R29 9
      117 GETTABLEKS                       R29 R29 K17 ["FFlagAssistantEval"]
      119 JUMPIFNOT                        R29 ; [+12]
      120 GETUPVAL                         R29 1
      121 GETTABLEKS                       R29 R29 K18 ["useEffect"]
      123 NEWCLOSURE                       R30 P0
      124 CAPTURE                          UPVAL U14
      125 CAPTURE                          VAL R5
      126 NEWTABLE                         R31 0 1
      128 MOVE                             R32 R5
      129 SETLIST                          R31 R32 1 [1]
      131 CALL                             R29 2 0
      132 GETUPVAL                         R29 9
      133 GETTABLEKS                       R29 R29 K19 ["FFlagAssistantMultiPlayerAgents"]
      135 JUMPIFNOT                        R29 ; [+14]
      136 GETUPVAL                         R29 1
      137 GETTABLEKS                       R29 R29 K18 ["useEffect"]
      139 NEWCLOSURE                       R30 P1
      140 CAPTURE                          UPVAL U15
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R17
      144 NEWTABLE                         R31 0 1
      146 MOVE                             R32 R5
      147 SETLIST                          R31 R32 1 [1]
      149 CALL                             R29 2 0
      150 GETUPVAL                         R29 1
      151 GETTABLEKS                       R29 R29 K18 ["useEffect"]
      153 NEWCLOSURE                       R30 P2
      154 CAPTURE                          VAL R28
      155 NEWTABLE                         R31 0 0
      157 CALL                             R29 2 0
      158 GETUPVAL                         R29 1
      159 GETTABLEKS                       R29 R29 K11 ["useState"]
      161 NEWTABLE                         R30 0 0
      163 CALL                             R29 1 2
      164 MOVE                             R22 R29
      165 MOVE                             R23 R30
      166 GETUPVAL                         R29 1
      167 GETTABLEKS                       R29 R29 K20 ["useCallback"]
      169 NEWCLOSURE                       R30 P3
      170 CAPTURE                          VAL R28
      171 CAPTURE                          VAL R27
      172 CAPTURE                          UPVAL U16
      173 CAPTURE                          REF R23
      174 NEWTABLE                         R31 0 0
      176 CALL                             R29 2 1
      177 MOVE                             R24 R29
      178 GETUPVAL                         R29 1
      179 GETTABLEKS                       R29 R29 K20 ["useCallback"]
      181 NEWCLOSURE                       R30 P4
      182 CAPTURE                          REF R23
      183 CAPTURE                          UPVAL U16
      184 NEWTABLE                         R31 0 0
      186 CALL                             R29 2 1
      187 MOVE                             R25 R29
      188 GETUPVAL                         R29 1
      189 GETTABLEKS                       R29 R29 K11 ["useState"]
      191 NEWTABLE                         R30 0 0
      193 CALL                             R29 1 2
      194 GETTABLEKS                       R31 R0 K21 ["OnMessageSent"]
      196 GETUPVAL                         R32 17
      197 DUPTABLE                         R33 K23 [{"setInputEnabled"}]
      198 GETUPVAL                         R34 18
      199 MOVE                             R35 R4
      200 CALL                             R34 1 1
      201 SETTABLEKS                       R34 R33 K22 ["setInputEnabled"]
      203 CALL                             R32 1 1
      204 GETUPVAL                         R33 1
      205 GETTABLEKS                       R33 R33 K24 ["useMemo"]
      207 DUPCLOSURE                       R34 K25 [PROTO_27]
      208 CAPTURE                          UPVAL U19
      209 NEWTABLE                         R35 0 1
      211 GETUPVAL                         R36 19
      212 GETTABLEKS                       R36 R36 K26 ["locale"]
      214 SETLIST                          R35 R36 1 [1]
      216 CALL                             R33 2 1
      217 GETUPVAL                         R34 20
      218 DUPTABLE                         R35 K28 [{"textBoxRef", "setInputText"}]
      219 SETTABLEKS                       R21 R35 K13 ["textBoxRef"]
      221 SETTABLEKS                       R20 R35 K27 ["setInputText"]
      223 CALL                             R34 1 2
      224 GETUPVAL                         R36 1
      225 GETTABLEKS                       R36 R36 K20 ["useCallback"]
      227 NEWCLOSURE                       R37 P6
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R27
      230 CAPTURE                          UPVAL U9
      231 CAPTURE                          VAL R20
      232 CAPTURE                          UPVAL U21
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R30
      235 NEWTABLE                         R38 0 4
      237 MOVE                             R39 R20
      238 MOVE                             R40 R30
      239 MOVE                             R41 R18
      240 MOVE                             R42 R26
      241 SETLIST                          R38 R39 4 [1]
      243 CALL                             R36 2 1
      244 GETUPVAL                         R37 1
      245 GETTABLEKS                       R37 R37 K11 ["useState"]
      247 LOADNIL                          R38
      248 CALL                             R37 1 2
      249 GETUPVAL                         R39 1
      250 GETTABLEKS                       R39 R39 K18 ["useEffect"]
      252 NEWCLOSURE                       R40 P7
      253 CAPTURE                          VAL R37
      254 CAPTURE                          VAL R21
      255 NEWTABLE                         R41 0 1
      257 MOVE                             R42 R37
      258 SETLIST                          R41 R42 1 [1]
      260 CALL                             R39 2 0
      261 GETUPVAL                         R39 1
      262 GETTABLEKS                       R39 R39 K20 ["useCallback"]
      264 NEWCLOSURE                       R40 P8
      265 CAPTURE                          VAL R20
      266 CAPTURE                          VAL R38
      267 NEWTABLE                         R41 0 0
      269 CALL                             R39 2 1
      270 GETUPVAL                         R40 1
      271 GETTABLEKS                       R40 R40 K18 ["useEffect"]
      273 NEWCLOSURE                       R41 P9
      274 CAPTURE                          UPVAL U22
      275 CAPTURE                          VAL R38
      276 NEWTABLE                         R42 0 0
      278 CALL                             R40 2 0
      279 GETUPVAL                         R40 1
      280 GETTABLEKS                       R40 R40 K20 ["useCallback"]
      282 NEWCLOSURE                       R41 P10
      283 CAPTURE                          VAL R15
      284 CAPTURE                          VAL R19
      285 CAPTURE                          REF R22
      286 CAPTURE                          VAL R20
      287 CAPTURE                          REF R23
      288 CAPTURE                          VAL R32
      289 CAPTURE                          VAL R34
      290 CAPTURE                          VAL R31
      291 NEWTABLE                         R42 0 8
      293 MOVE                             R43 R19
      294 MOVE                             R44 R20
      295 MOVE                             R45 R32
      296 MOVE                             R46 R34
      297 MOVE                             R47 R31
      298 MOVE                             R48 R22
      299 MOVE                             R49 R23
      300 MOVE                             R50 R15
      301 SETLIST                          R42 R43 8 [1]
      303 CALL                             R40 2 1
      304 GETUPVAL                         R41 1
      305 GETTABLEKS                       R41 R41 K20 ["useCallback"]
      307 NEWCLOSURE                       R42 P11
      308 CAPTURE                          VAL R16
      309 CAPTURE                          UPVAL U23
      310 CAPTURE                          VAL R10
      311 CAPTURE                          UPVAL U24
      312 CAPTURE                          VAL R3
      313 CAPTURE                          UPVAL U25
      314 CAPTURE                          UPVAL U9
      315 CAPTURE                          VAL R1
      316 CAPTURE                          VAL R7
      317 NEWTABLE                         R43 0 5
      319 MOVE                             R44 R1
      320 MOVE                             R45 R3
      321 MOVE                             R46 R7
      322 MOVE                             R47 R10
      323 MOVE                             R48 R16
      324 SETLIST                          R43 R44 5 [1]
      326 CALL                             R41 2 1
      327 LOADNIL                          R42
      328 GETUPVAL                         R43 9
      329 GETTABLEKS                       R43 R43 K19 ["FFlagAssistantMultiPlayerAgents"]
      331 JUMPIF                           R43 ; [+4]
      332 GETUPVAL                         R43 9
      333 GETTABLEKS                       R43 R43 K17 ["FFlagAssistantEval"]
      335 JUMPIFNOT                        R43 ; [+19]
      336 GETUPVAL                         R43 1
      337 GETTABLEKS                       R43 R43 K14 ["useRef"]
      339 LOADB                            R44 0
      340 CALL                             R43 1 1
      341 MOVE                             R42 R43
      342 GETUPVAL                         R43 1
      343 GETTABLEKS                       R43 R43 K18 ["useEffect"]
      345 NEWCLOSURE                       R44 P12
      346 CAPTURE                          REF R42
      347 CAPTURE                          VAL R40
      348 NEWTABLE                         R45 0 2
      350 MOVE                             R46 R19
      351 MOVE                             R47 R40
      352 SETLIST                          R45 R46 2 [1]
      354 CALL                             R43 2 0
      355 GETUPVAL                         R43 9
      356 GETTABLEKS                       R43 R43 K19 ["FFlagAssistantMultiPlayerAgents"]
      358 JUMPIFNOT                        R43 ; [+14]
      359 GETUPVAL                         R43 1
      360 GETTABLEKS                       R43 R43 K18 ["useEffect"]
      362 NEWCLOSURE                       R44 P13
      363 CAPTURE                          UPVAL U26
      364 CAPTURE                          VAL R20
      365 CAPTURE                          REF R42
      366 CAPTURE                          UPVAL U15
      367 NEWTABLE                         R45 0 1
      369 MOVE                             R46 R20
      370 SETLIST                          R45 R46 1 [1]
      372 CALL                             R43 2 0
      373 GETUPVAL                         R43 9
      374 GETTABLEKS                       R43 R43 K17 ["FFlagAssistantEval"]
      376 JUMPIFNOT                        R43 ; [+37]
      377 GETUPVAL                         R43 1
      378 GETTABLEKS                       R43 R43 K18 ["useEffect"]
      380 NEWCLOSURE                       R44 P14
      381 CAPTURE                          UPVAL U27
      382 CAPTURE                          VAL R20
      383 CAPTURE                          REF R42
      384 NEWTABLE                         R45 0 1
      386 MOVE                             R46 R20
      387 SETLIST                          R45 R46 1 [1]
      389 CALL                             R43 2 0
      390 GETUPVAL                         R43 1
      391 GETTABLEKS                       R43 R43 K14 ["useRef"]
      393 MOVE                             R44 R41
      394 CALL                             R43 1 1
      395 SETTABLEKS                       R41 R43 K29 ["current"]
      397 GETUPVAL                         R44 1
      398 GETTABLEKS                       R44 R44 K14 ["useRef"]
      400 MOVE                             R45 R8
      401 CALL                             R44 1 1
      402 SETTABLEKS                       R8 R44 K29 ["current"]
      404 GETUPVAL                         R45 1
      405 GETTABLEKS                       R45 R45 K18 ["useEffect"]
      407 NEWCLOSURE                       R46 P15
      408 CAPTURE                          UPVAL U27
      409 CAPTURE                          VAL R43
      410 CAPTURE                          VAL R44
      411 NEWTABLE                         R47 0 0
      413 CALL                             R45 2 0
      414 GETUPVAL                         R43 1
      415 GETTABLEKS                       R43 R43 K18 ["useEffect"]
      417 NEWCLOSURE                       R44 P16
      418 CAPTURE                          UPVAL U28
      419 CAPTURE                          VAL R20
      420 NEWTABLE                         R45 0 1
      422 MOVE                             R46 R20
      423 SETLIST                          R45 R46 1 [1]
      425 CALL                             R43 2 0
      426 MOVE                             R43 R6
      427 JUMPIFNOT                        R43 ; [+9]
      428 GETTABLEKS                       R44 R6 K4 ["reasonDisabled"]
      430 GETUPVAL                         R45 29
      431 GETTABLEKS                       R45 R45 K30 ["Generation"]
      433 JUMPIFEQ                         R44 R45 ; [+2]
      435 LOADB                            R43 0 +1
      436 LOADB                            R43 1
      437 LENGTH                           R45 R19
      438 JUMPIFNOTEQKN                    R45 K31 [0] ; [+5]
      440 LOADB                            R44 1
      441 LENGTH                           R45 R22
      442 JUMPIFEQKN                       R45 K31 [0] ; [+2]
      444 MOVE                             R44 R15
      445 GETUPVAL                         R45 30
      446 CALL                             R45 0 1
      447 GETUPVAL                         R46 1
      448 GETTABLEKS                       R46 R46 K32 ["useBinding"]
      450 LOADN                            R47 0
      451 CALL                             R46 1 2
      452 LOADB                            R48 0
      453 LENGTH                           R49 R22
      454 LOADN                            R50 0
      455 JUMPIFNOTLT                      R50 R49 ; [+20]
      457 GETUPVAL                         R48 31
      458 GETUPVAL                         R49 32
      459 DUPTABLE                         R50 K36 [{["tag"] = "row size-full-0 auto-y", ["LayoutOrder"]}]
      460 MOVE                             R51 R45
      461 CALL                             R51 0 1
      462 SETTABLEKS                       R51 R50 K35 ["LayoutOrder"]
      464 DUPTABLE                         R51 K38 [{"List"}]
      465 GETUPVAL                         R52 31
      466 GETUPVAL                         R53 33
      467 DUPTABLE                         R54 K41 [{"attachedImages", "onRemoveImage"}]
      468 SETTABLEKS                       R22 R54 K39 ["attachedImages"]
      470 SETTABLEKS                       R25 R54 K40 ["onRemoveImage"]
      472 CALL                             R52 2 1
      473 SETTABLEKS                       R52 R51 K37 ["List"]
      475 CALL                             R48 3 1
      476 GETUPVAL                         R49 31
      477 GETUPVAL                         R50 32
      478 DUPTABLE                         R51 K43 [{["tag"] = "col flex-between flex-y-fill align-y-center gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      479 MOVE                             R52 R45
      480 CALL                             R52 0 1
      481 SETTABLEKS                       R52 R51 K35 ["LayoutOrder"]
      483 DUPTABLE                         R52 K46 [{"TextInput", "ActionButtons"}]
      484 GETUPVAL                         R53 31
      485 GETUPVAL                         R54 34
      486 DUPTABLE                         R55 K52 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      487 SETTABLEKS                       R19 R55 K47 ["text"]
      489 JUMPIFNOT                        R43 ; [+3]
      490 GETTABLEKS                       R56 R33 K53 ["Responding"]
      492 JUMP                             ; [+6]
      493 JUMPIFEQKNIL                     R35 ; [+3]
      495 MOVE                             R56 R35
      496 JUMP                             ; [+2]
      497 GETTABLEKS                       R56 R33 K54 ["AskAssistant"]
      499 SETTABLEKS                       R56 R55 K48 ["placeholder"]
      501 SETTABLEKS                       R15 R55 K49 ["isDisabled"]
      503 MOVE                             R56 R45
      504 CALL                             R56 0 1
      505 SETTABLEKS                       R56 R55 K35 ["LayoutOrder"]
      507 SETTABLEKS                       R36 R55 K50 ["onChanged"]
      509 SETTABLEKS                       R40 R55 K51 ["onReturnPressed"]
      511 SETTABLEKS                       R21 R55 K13 ["textBoxRef"]
      513 CALL                             R53 2 1
      514 SETTABLEKS                       R53 R52 K44 ["TextInput"]
      516 GETUPVAL                         R53 31
      517 GETUPVAL                         R54 32
      518 DUPTABLE                         R55 K56 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      519 MOVE                             R56 R45
      520 CALL                             R56 0 1
      521 SETTABLEKS                       R56 R55 K35 ["LayoutOrder"]
      523 DUPTABLE                         R56 K63 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButtonContainer", "StopButton"}]
      524 GETUPVAL                         R57 31
      525 GETUPVAL                         R58 35
      526 DUPTABLE                         R59 K65 [{"isDisabled", "onActivated", "LayoutOrder"}]
      527 SETTABLEKS                       R15 R59 K49 ["isDisabled"]
      529 SETTABLEKS                       R24 R59 K64 ["onActivated"]
      531 MOVE                             R60 R45
      532 CALL                             R60 0 1
      533 SETTABLEKS                       R60 R59 K35 ["LayoutOrder"]
      535 CALL                             R57 2 1
      536 SETTABLEKS                       R57 R56 K57 ["AttachImageButton"]
      538 GETUPVAL                         R57 31
      539 GETUPVAL                         R58 36
      540 DUPTABLE                         R59 K66 [{"LayoutOrder"}]
      541 MOVE                             R60 R45
      542 CALL                             R60 0 1
      543 SETTABLEKS                       R60 R59 K35 ["LayoutOrder"]
      545 CALL                             R57 2 1
      546 SETTABLEKS                       R57 R56 K58 ["ServerManagementButton"]
      548 GETUPVAL                         R57 31
      549 GETUPVAL                         R58 32
      550 DUPTABLE                         R59 K68 [{["tag"] = "fill", ["LayoutOrder"]}]
      551 MOVE                             R60 R45
      552 CALL                             R60 0 1
      553 SETTABLEKS                       R60 R59 K35 ["LayoutOrder"]
      555 CALL                             R57 2 1
      556 SETTABLEKS                       R57 R56 K59 ["Spacer"]
      558 GETUPVAL                         R57 31
      559 GETUPVAL                         R58 37
      560 DUPTABLE                         R59 K66 [{"LayoutOrder"}]
      561 MOVE                             R60 R45
      562 CALL                             R60 0 1
      563 SETTABLEKS                       R60 R59 K35 ["LayoutOrder"]
      565 CALL                             R57 2 1
      566 SETTABLEKS                       R57 R56 K60 ["SelectAssistantMode"]
      568 NOT                              R57 R43
      569 JUMPIFNOT                        R57 ; [+12]
      570 GETUPVAL                         R57 31
      571 GETUPVAL                         R58 38
      572 DUPTABLE                         R59 K69 [{"LayoutOrder", "isDisabled", "onActivated"}]
      573 MOVE                             R60 R45
      574 CALL                             R60 0 1
      575 SETTABLEKS                       R60 R59 K35 ["LayoutOrder"]
      577 SETTABLEKS                       R44 R59 K49 ["isDisabled"]
      579 SETTABLEKS                       R40 R59 K64 ["onActivated"]
      581 CALL                             R57 2 1
      582 SETTABLEKS                       R57 R56 K61 ["SendButtonContainer"]
      584 MOVE                             R57 R43
      585 JUMPIFNOT                        R57 ; [+66]
      586 GETUPVAL                         R58 9
      587 GETTABLEKS                       R58 R58 K70 ["FFlagAssistantUseBuilderIcons"]
      589 JUMPIFNOT                        R58 ; [+45]
      590 GETUPVAL                         R57 31
      591 GETUPVAL                         R58 39
      592 DUPTABLE                         R59 K77 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      593 GETUPVAL                         R60 40
      594 GETTABLEKS                       R60 R60 K78 ["Enums"]
      596 GETTABLEKS                       R60 R60 K79 ["IconName"]
      598 GETTABLEKS                       R60 R60 K80 ["StopSmall"]
      600 SETTABLEKS                       R60 R59 K71 ["icon"]
      602 GETUPVAL                         R60 40
      603 GETTABLEKS                       R60 R60 K78 ["Enums"]
      605 GETTABLEKS                       R60 R60 K81 ["InputSize"]
      607 GETTABLEKS                       R60 R60 K82 ["XSmall"]
      609 SETTABLEKS                       R60 R59 K72 ["size"]
      611 GETUPVAL                         R60 40
      612 GETTABLEKS                       R60 R60 K78 ["Enums"]
      614 GETTABLEKS                       R60 R60 K83 ["ButtonVariant"]
      616 GETTABLEKS                       R60 R60 K84 ["Standard"]
      618 SETTABLEKS                       R60 R59 K73 ["variant"]
      620 SETTABLEKS                       R41 R59 K64 ["onActivated"]
      622 MOVE                             R60 R45
      623 CALL                             R60 0 1
      624 SETTABLEKS                       R60 R59 K35 ["LayoutOrder"]
      626 GETUPVAL                         R60 41
      627 GETTABLEKS                       R60 R60 K85 ["InputArea"]
      629 GETTABLEKS                       R60 R60 K62 ["StopButton"]
      631 SETTABLEKS                       R60 R59 K76 ["testId"]
      633 CALL                             R57 2 1
      634 JUMP                             ; [+17]
      635 GETUPVAL                         R57 31
      636 GETUPVAL                         R58 42
      637 DUPTABLE                         R59 K91 [{["icon"] = "icons/controls/mediaStop_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-circle bg-action-standard", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
      638 SETTABLEKS                       R41 R59 K64 ["onActivated"]
      640 MOVE                             R60 R45
      641 CALL                             R60 0 1
      642 SETTABLEKS                       R60 R59 K35 ["LayoutOrder"]
      644 GETUPVAL                         R60 41
      645 GETTABLEKS                       R60 R60 K85 ["InputArea"]
      647 GETTABLEKS                       R60 R60 K62 ["StopButton"]
      649 SETTABLEKS                       R60 R59 K76 ["testId"]
      651 CALL                             R57 2 1
      652 SETTABLEKS                       R57 R56 K62 ["StopButton"]
      654 CALL                             R53 3 1
      655 SETTABLEKS                       R53 R52 K45 ["ActionButtons"]
      657 CALL                             R49 3 1
      658 GETUPVAL                         R50 31
      659 LOADK                            R51 K92 ["UIFlexItem"]
      660 DUPTABLE                         R52 K95 [{"FlexMode", "ItemLineAlignment"}]
      661 GETIMPORT                        R53 K99 [Enum.UIFlexMode.Fill]
      663 SETTABLEKS                       R53 R52 K93 ["FlexMode"]
      665 GETIMPORT                        R53 K101 [Enum.ItemLineAlignment.Center]
      667 SETTABLEKS                       R53 R52 K94 ["ItemLineAlignment"]
      669 CALL                             R50 2 1
      670 LOADNIL                          R51
      671 LOADNIL                          R52
      672 GETUPVAL                         R53 9
      673 GETTABLEKS                       R53 R53 K9 ["FFlagAssistantCreditMetering"]
      675 JUMPIFNOT                        R53 ; [+48]
      676 NEWTABLE                         R53 4 0
      678 LOADB                            R54 1
      679 SETTABLEKS                       R54 R53 K102 ["col size-full-0 auto-y radius-large"]
      681 JUMPIFNOTEQKNIL                  R26 ; [+2]
      683 LOADB                            R54 0 +1
      684 LOADB                            R54 1
      685 SETTABLEKS                       R54 R53 K103 ["stroke-system-alert"]
      687 JUMPIFEQKNIL                     R26 ; [+2]
      689 LOADB                            R54 0 +1
      690 LOADB                            R54 1
      691 SETTABLEKS                       R54 R53 K104 ["stroke-emphasis"]
      693 MOVE                             R51 R53
      694 DUPTABLE                         R53 K107 [{"UIFlexItem", "UsageBanner", "PaddedContent"}]
      695 SETTABLEKS                       R50 R53 K92 ["UIFlexItem"]
      697 GETUPVAL                         R54 31
      698 GETUPVAL                         R55 43
      699 DUPTABLE                         R56 K66 [{"LayoutOrder"}]
      700 MOVE                             R57 R45
      701 CALL                             R57 0 1
      702 SETTABLEKS                       R57 R56 K35 ["LayoutOrder"]
      704 CALL                             R54 2 1
      705 SETTABLEKS                       R54 R53 K105 ["UsageBanner"]
      707 GETUPVAL                         R54 31
      708 GETUPVAL                         R55 32
      709 DUPTABLE                         R56 K109 [{["tag"] = "col gap-small size-full-0 auto-y padding-medium", ["LayoutOrder"]}]
      710 MOVE                             R57 R45
      711 CALL                             R57 0 1
      712 SETTABLEKS                       R57 R56 K35 ["LayoutOrder"]
      714 DUPTABLE                         R57 K112 [{"AttachedImagesPreview", "InputRow"}]
      715 SETTABLEKS                       R48 R57 K110 ["AttachedImagesPreview"]
      717 SETTABLEKS                       R49 R57 K111 ["InputRow"]
      719 CALL                             R54 3 1
      720 SETTABLEKS                       R54 R53 K106 ["PaddedContent"]
      722 MOVE                             R52 R53
      723 JUMP                             ; [+26]
      724 NEWTABLE                         R53 4 0
      726 LOADB                            R54 1
      727 SETTABLEKS                       R54 R53 K113 ["col gap-small size-full-0 auto-y padding-medium radius-large"]
      729 JUMPIFNOTEQKNIL                  R26 ; [+2]
      731 LOADB                            R54 0 +1
      732 LOADB                            R54 1
      733 SETTABLEKS                       R54 R53 K103 ["stroke-system-alert"]
      735 JUMPIFEQKNIL                     R26 ; [+2]
      737 LOADB                            R54 0 +1
      738 LOADB                            R54 1
      739 SETTABLEKS                       R54 R53 K104 ["stroke-emphasis"]
      741 MOVE                             R51 R53
      742 DUPTABLE                         R53 K114 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      743 SETTABLEKS                       R50 R53 K92 ["UIFlexItem"]
      745 SETTABLEKS                       R48 R53 K110 ["AttachedImagesPreview"]
      747 SETTABLEKS                       R49 R53 K111 ["InputRow"]
      749 MOVE                             R52 R53
      750 GETUPVAL                         R53 31
      751 GETUPVAL                         R54 32
      752 DUPTABLE                         R55 K115 [{"tag", "LayoutOrder", "testId"}]
      753 NEWTABLE                         R56 1 0
      755 LOADB                            R57 1
      756 SETTABLEKS                       R57 R56 K116 ["col size-full-0 auto-y"]
      758 SETTABLEKS                       R56 R55 K33 ["tag"]
      760 GETTABLEKS                       R56 R0 K35 ["LayoutOrder"]
      762 SETTABLEKS                       R56 R55 K35 ["LayoutOrder"]
      764 GETUPVAL                         R56 41
      765 GETTABLEKS                       R56 R56 K85 ["InputArea"]
      767 GETTABLEKS                       R56 R56 K117 ["Container"]
      769 SETTABLEKS                       R56 R55 K76 ["testId"]
      771 DUPTABLE                         R56 K120 [{"Menu", "Footer"}]
      772 GETUPVAL                         R57 31
      773 GETUPVAL                         R58 44
      774 DUPTABLE                         R59 K125 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      775 LENGTH                           R61 R29
      776 LOADN                            R62 0
      777 JUMPIFLT                         R62 R61 ; [+2]
      779 LOADB                            R60 0 +1
      780 LOADB                            R60 1
      781 SETTABLEKS                       R60 R59 K121 ["isOpen"]
      783 SETTABLEKS                       R29 R59 K122 ["items"]
      785 SETTABLEKS                       R46 R59 K123 ["width"]
      787 SETTABLEKS                       R21 R59 K13 ["textBoxRef"]
      789 SETTABLEKS                       R39 R59 K124 ["setTextAndFocus"]
      791 DUPTABLE                         R60 K127 [{"MessageField"}]
      792 GETUPVAL                         R61 31
      793 GETUPVAL                         R62 32
      794 DUPTABLE                         R63 K129 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      795 SETTABLEKS                       R51 R63 K33 ["tag"]
      797 NEWCLOSURE                       R64 P17
      798 CAPTURE                          VAL R47
      799 SETTABLEKS                       R64 R63 K128 ["onAbsoluteSizeChanged"]
      801 MOVE                             R64 R45
      802 CALL                             R64 0 1
      803 SETTABLEKS                       R64 R63 K35 ["LayoutOrder"]
      805 MOVE                             R64 R52
      806 CALL                             R61 3 1
      807 SETTABLEKS                       R61 R60 K126 ["MessageField"]
      809 CALL                             R57 3 1
      810 SETTABLEKS                       R57 R56 K118 ["Menu"]
      812 GETUPVAL                         R57 31
      813 GETUPVAL                         R58 45
      814 DUPTABLE                         R59 K131 [{"LayoutOrder", "imageAttachError"}]
      815 MOVE                             R60 R45
      816 CALL                             R60 0 1
      817 SETTABLEKS                       R60 R59 K35 ["LayoutOrder"]
      819 SETTABLEKS                       R26 R59 K130 ["imageAttachError"]
      821 CALL                             R57 2 1
      822 SETTABLEKS                       R57 R56 K119 ["Footer"]
      824 CALL                             R53 3 -1
      825 CLOSEUPVALS                      R22
      826 RETURN                           R53 -1

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
       46 GETTABLEKS                       R7 R0 K6 ["Components"]
       48 GETTABLEKS                       R7 R7 K15 ["CustomIconButton"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Guest"]
       55 GETTABLEKS                       R8 R8 K17 ["Environment"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K9 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["AssistantEval"]
       64 GETTABLEKS                       R9 R9 K19 ["EvalController"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K9 ["Util"]
       71 GETTABLEKS                       R10 R10 K18 ["AssistantEval"]
       73 GETTABLEKS                       R10 R10 K20 ["EvalFunctionRegistry"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K21 ["Events"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K22 ["FlagUtils"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Flags"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K13 ["Parent"]
       95 GETTABLEKS                       R14 R14 K24 ["Foundation"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R11 K25 ["getIsAssistantHarnessSplit"]
      100 GETTABLEKS                       R15 R11 K26 ["getIsSlashCommandViaAcp"]
      102 GETIMPORT                        R16 K5 [require]
      104 GETTABLEKS                       R17 R0 K6 ["Components"]
      106 GETTABLEKS                       R17 R17 K27 ["ImageAttachmentButton"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K5 [require]
      111 GETTABLEKS                       R18 R0 K9 ["Util"]
      113 GETTABLEKS                       R18 R18 K28 ["ImageAttachmentUtils"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K5 [require]
      118 GETTABLEKS                       R19 R0 K6 ["Components"]
      120 GETTABLEKS                       R19 R19 K29 ["InputFooter"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K5 [require]
      125 GETTABLEKS                       R20 R0 K6 ["Components"]
      127 GETTABLEKS                       R20 R20 K11 ["Contexts"]
      129 GETTABLEKS                       R20 R20 K30 ["InputStateContext"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K5 [require]
      134 GETTABLEKS                       R21 R0 K6 ["Components"]
      136 GETTABLEKS                       R21 R21 K11 ["Contexts"]
      138 GETTABLEKS                       R21 R21 K31 ["LLMProviderSelectionContext"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETTABLEKS                       R22 R0 K9 ["Util"]
      145 GETTABLEKS                       R22 R22 K32 ["MultiPlayersConnection"]
      147 GETTABLEKS                       R22 R22 K33 ["MultiPlayersAgentClient"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETTABLEKS                       R23 R0 K9 ["Util"]
      154 GETTABLEKS                       R23 R23 K32 ["MultiPlayersConnection"]
      156 GETTABLEKS                       R23 R23 K34 ["MultiPlayersModeUtils"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K6 ["Components"]
      163 GETTABLEKS                       R24 R24 K11 ["Contexts"]
      165 GETTABLEKS                       R24 R24 K35 ["OngoingAcpPromptContext"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K5 [require]
      170 GETTABLEKS                       R25 R0 K13 ["Parent"]
      172 GETTABLEKS                       R25 R25 K36 ["React"]
      174 CALL                             R24 1 1
      175 GETIMPORT                        R25 K5 [require]
      177 GETTABLEKS                       R26 R0 K13 ["Parent"]
      179 GETTABLEKS                       R26 R26 K37 ["ReactUtils"]
      181 CALL                             R25 1 1
      182 GETIMPORT                        R26 K5 [require]
      184 GETTABLEKS                       R27 R0 K6 ["Components"]
      186 GETTABLEKS                       R27 R27 K38 ["ServerManagementDropdown"]
      188 CALL                             R26 1 1
      189 GETIMPORT                        R27 K5 [require]
      191 GETTABLEKS                       R28 R0 K6 ["Components"]
      193 GETTABLEKS                       R28 R28 K11 ["Contexts"]
      195 GETTABLEKS                       R28 R28 K39 ["SessionIdContext"]
      197 CALL                             R27 1 1
      198 GETIMPORT                        R28 K5 [require]
      200 GETTABLEKS                       R29 R0 K6 ["Components"]
      202 GETTABLEKS                       R29 R29 K40 ["SlashCommandMenu"]
      204 CALL                             R28 1 1
      205 GETIMPORT                        R29 K5 [require]
      207 GETTABLEKS                       R30 R0 K9 ["Util"]
      209 GETTABLEKS                       R30 R30 K41 ["TestIds"]
      211 CALL                             R29 1 1
      212 GETIMPORT                        R30 K5 [require]
      214 GETTABLEKS                       R31 R0 K6 ["Components"]
      216 GETTABLEKS                       R31 R31 K11 ["Contexts"]
      218 GETTABLEKS                       R31 R31 K42 ["ThreadIdContext"]
      220 CALL                             R30 1 1
      221 GETIMPORT                        R31 K5 [require]
      223 GETTABLEKS                       R32 R0 K43 ["Resources"]
      225 GETTABLEKS                       R32 R32 K44 ["Localization"]
      227 GETTABLEKS                       R32 R32 K45 ["Translator"]
      229 CALL                             R31 1 1
      230 GETIMPORT                        R32 K5 [require]
      232 GETTABLEKS                       R33 R0 K46 ["Types"]
      234 CALL                             R32 1 1
      235 GETIMPORT                        R33 K5 [require]
      237 GETTABLEKS                       R34 R0 K6 ["Components"]
      239 GETTABLEKS                       R34 R34 K47 ["UIToolRegistry"]
      241 CALL                             R33 1 1
      242 GETIMPORT                        R34 K5 [require]
      244 GETTABLEKS                       R35 R0 K6 ["Components"]
      246 GETTABLEKS                       R35 R35 K48 ["DailyUsage"]
      248 GETTABLEKS                       R35 R35 K49 ["UsageLimitBanner"]
      250 CALL                             R34 1 1
      251 GETIMPORT                        R35 K5 [require]
      253 GETTABLEKS                       R36 R0 K6 ["Components"]
      255 GETTABLEKS                       R36 R36 K11 ["Contexts"]
      257 GETTABLEKS                       R36 R36 K50 ["WindowInputContext"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K5 [require]
      262 GETTABLEKS                       R37 R0 K9 ["Util"]
      264 GETTABLEKS                       R37 R37 K51 ["getToggleGenerationInputFunc"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K5 [require]
      269 GETTABLEKS                       R38 R0 K52 ["Hooks"]
      271 GETTABLEKS                       R38 R38 K53 ["useAssistantMode"]
      273 CALL                             R37 1 1
      274 GETIMPORT                        R38 K5 [require]
      276 GETTABLEKS                       R39 R0 K52 ["Hooks"]
      278 GETTABLEKS                       R39 R39 K54 ["useClearConversation"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K5 [require]
      283 GETTABLEKS                       R40 R0 K52 ["Hooks"]
      285 GETTABLEKS                       R40 R40 K55 ["useCurrentAssistantMessageId"]
      287 CALL                             R39 1 1
      288 GETIMPORT                        R40 K5 [require]
      290 GETTABLEKS                       R41 R0 K52 ["Hooks"]
      292 GETTABLEKS                       R41 R41 K56 ["useCurrentThread"]
      294 CALL                             R40 1 1
      295 GETIMPORT                        R41 K5 [require]
      297 GETTABLEKS                       R42 R0 K52 ["Hooks"]
      299 GETTABLEKS                       R42 R42 K57 ["useEventConnection"]
      301 CALL                             R41 1 1
      302 GETIMPORT                        R42 K5 [require]
      304 GETTABLEKS                       R43 R0 K52 ["Hooks"]
      306 GETTABLEKS                       R43 R43 K58 ["useLLMCancelSession"]
      308 CALL                             R42 1 1
      309 GETIMPORT                        R43 K5 [require]
      311 GETTABLEKS                       R44 R0 K52 ["Hooks"]
      313 GETTABLEKS                       R44 R44 K59 ["useSendMessage"]
      315 CALL                             R43 1 1
      316 GETTABLEKS                       R44 R19 K60 ["InputDisabledReasons"]
      318 GETTABLEKS                       R45 R13 K61 ["IconButton"]
      320 GETTABLEKS                       R46 R13 K62 ["View"]
      322 GETTABLEKS                       R47 R25 K63 ["createNextOrder"]
      324 GETTABLEKS                       R48 R24 K64 ["createElement"]
      326 DUPCLOSURE                       R49 K65 [PROTO_5]
      327 CAPTURE                          VAL R24
      328 CAPTURE                          VAL R30
      329 CAPTURE                          VAL R12
      330 CAPTURE                          VAL R5
      331 CAPTURE                          VAL R35
      332 CAPTURE                          VAL R41
      333 DUPCLOSURE                       R50 K66 [PROTO_14]
      334 CAPTURE                          VAL R13
      335 CAPTURE                          VAL R24
      336 CAPTURE                          VAL R48
      337 CAPTURE                          VAL R5
      338 CAPTURE                          VAL R7
      339 DUPCLOSURE                       R51 K67 [PROTO_16]
      340 CAPTURE                          VAL R24
      341 CAPTURE                          VAL R30
      342 DUPCLOSURE                       R52 K68 [PROTO_17]
      343 CAPTURE                          VAL R12
      344 CAPTURE                          VAL R48
      345 CAPTURE                          VAL R46
      346 CAPTURE                          VAL R45
      347 CAPTURE                          VAL R13
      348 CAPTURE                          VAL R29
      349 CAPTURE                          VAL R6
      350 DUPCLOSURE                       R53 K69 [PROTO_51]
      351 CAPTURE                          VAL R42
      352 CAPTURE                          VAL R24
      353 CAPTURE                          VAL R23
      354 CAPTURE                          VAL R19
      355 CAPTURE                          VAL R38
      356 CAPTURE                          VAL R27
      357 CAPTURE                          VAL R4
      358 CAPTURE                          VAL R20
      359 CAPTURE                          VAL R32
      360 CAPTURE                          VAL R12
      361 CAPTURE                          VAL R39
      362 CAPTURE                          VAL R40
      363 CAPTURE                          VAL R37
      364 CAPTURE                          VAL R51
      365 CAPTURE                          VAL R8
      366 CAPTURE                          VAL R21
      367 CAPTURE                          VAL R17
      368 CAPTURE                          VAL R43
      369 CAPTURE                          VAL R36
      370 CAPTURE                          VAL R31
      371 CAPTURE                          VAL R49
      372 CAPTURE                          VAL R33
      373 CAPTURE                          VAL R10
      374 CAPTURE                          VAL R7
      375 CAPTURE                          VAL R14
      376 CAPTURE                          VAL R15
      377 CAPTURE                          VAL R22
      378 CAPTURE                          VAL R9
      379 CAPTURE                          VAL R3
      380 CAPTURE                          VAL R44
      381 CAPTURE                          VAL R47
      382 CAPTURE                          VAL R48
      383 CAPTURE                          VAL R46
      384 CAPTURE                          VAL R2
      385 CAPTURE                          VAL R50
      386 CAPTURE                          VAL R16
      387 CAPTURE                          VAL R26
      388 CAPTURE                          VAL R1
      389 CAPTURE                          VAL R52
      390 CAPTURE                          VAL R45
      391 CAPTURE                          VAL R13
      392 CAPTURE                          VAL R29
      393 CAPTURE                          VAL R6
      394 CAPTURE                          VAL R34
      395 CAPTURE                          VAL R28
      396 CAPTURE                          VAL R18
      397 RETURN                           R53 1
