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
       98 DUPCLOSURE                       R5 K21 [PROTO_27]
       99 CALL                             R4 1 0
      100 RETURN                           R0 0

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
       19 GETTABLEKS                       R0 R0 K6 ["FFlagAssistantHarnessSplit"]
       21 JUMPIFNOT                        R0 ; [+11]
       22 GETUPVAL                         R0 4
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 3
       25 GETTABLEKS                       R0 R0 K7 ["FFlagAssistantSupportSlashCommandCancellation"]
       27 JUMPIFNOT                        R0 ; [+9]
       28 GETUPVAL                         R0 5
       29 JUMPIFNOT                        R0 ; [+7]
       30 GETUPVAL                         R0 5
       31 CALL                             R0 0 0
       32 JUMP                             ; [+4]
       33 GETUPVAL                         R0 5
       34 JUMPIFNOT                        R0 ; [+2]
       35 GETUPVAL                         R0 5
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 6
       38 CALL                             R0 0 0
       39 RETURN                           R0 0

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
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Requested"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_50:
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
       35 GETUPVAL                         R11 6
       36 CALL                             R11 0 1
       37 GETUPVAL                         R12 7
       38 CALL                             R12 0 1
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R13 R13 K0 ["useContext"]
       42 GETUPVAL                         R14 8
       43 GETTABLEKS                       R14 R14 K1 ["Context"]
       45 CALL                             R13 1 1
       46 GETTABLEKS                       R15 R13 K7 ["selectedProvider"]
       48 GETUPVAL                         R16 9
       49 GETTABLEKS                       R16 R16 K8 ["LLMProviderTypes"]
       51 GETTABLEKS                       R16 R16 K9 ["Studio"]
       53 JUMPIFNOTEQ                      R15 R16 ; [+2]
       55 LOADB                            R14 0 +1
       56 LOADB                            R14 1
       57 GETUPVAL                         R15 10
       58 CALL                             R15 0 1
       59 GETUPVAL                         R16 1
       60 GETTABLEKS                       R16 R16 K10 ["useState"]
       62 LOADK                            R17 K11 [""]
       63 CALL                             R16 1 2
       64 GETTABLEKS                       R19 R0 K12 ["textBoxRef"]
       66 JUMPIFNOT                        R19 ; [+3]
       67 GETTABLEKS                       R18 R0 K12 ["textBoxRef"]
       69 JUMP                             ; [+5]
       70 GETUPVAL                         R18 1
       71 GETTABLEKS                       R18 R18 K13 ["useRef"]
       73 LOADNIL                          R19
       74 CALL                             R18 1 1
       75 GETUPVAL                         R19 11
       76 DUPTABLE                         R20 K15 [{"inputText", "textBoxRef"}]
       77 SETTABLEKS                       R16 R20 K14 ["inputText"]
       79 SETTABLEKS                       R18 R20 K12 ["textBoxRef"]
       81 CALL                             R19 1 0
       82 NEWTABLE                         R19 0 0
       84 LOADNIL                          R20
       85 LOADNIL                          R21
       86 LOADNIL                          R22
       87 GETUPVAL                         R23 1
       88 GETTABLEKS                       R23 R23 K10 ["useState"]
       90 LOADNIL                          R24
       91 CALL                             R23 1 2
       92 GETUPVAL                         R25 1
       93 GETTABLEKS                       R25 R25 K13 ["useRef"]
       95 LOADB                            R26 1
       96 CALL                             R25 1 1
       97 GETUPVAL                         R26 12
       98 GETTABLEKS                       R26 R26 K16 ["FFlagAssistantEval"]
      100 JUMPIFNOT                        R26 ; [+12]
      101 GETUPVAL                         R26 1
      102 GETTABLEKS                       R26 R26 K17 ["useEffect"]
      104 NEWCLOSURE                       R27 P0
      105 CAPTURE                          UPVAL U13
      106 CAPTURE                          VAL R5
      107 NEWTABLE                         R28 0 1
      109 MOVE                             R29 R5
      110 SETLIST                          R28 R29 1 [1]
      112 CALL                             R26 2 0
      113 GETUPVAL                         R26 12
      114 GETTABLEKS                       R26 R26 K18 ["FFlagAssistantMultiPlayerAgents"]
      116 JUMPIFNOT                        R26 ; [+14]
      117 GETUPVAL                         R26 1
      118 GETTABLEKS                       R26 R26 K17 ["useEffect"]
      120 NEWCLOSURE                       R27 P1
      121 CAPTURE                          UPVAL U14
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R12
      125 NEWTABLE                         R28 0 1
      127 MOVE                             R29 R5
      128 SETLIST                          R28 R29 1 [1]
      130 CALL                             R26 2 0
      131 GETUPVAL                         R26 1
      132 GETTABLEKS                       R26 R26 K17 ["useEffect"]
      134 NEWCLOSURE                       R27 P2
      135 CAPTURE                          VAL R25
      136 NEWTABLE                         R28 0 0
      138 CALL                             R26 2 0
      139 GETUPVAL                         R26 1
      140 GETTABLEKS                       R26 R26 K10 ["useState"]
      142 NEWTABLE                         R27 0 0
      144 CALL                             R26 1 2
      145 MOVE                             R19 R26
      146 MOVE                             R20 R27
      147 GETUPVAL                         R26 1
      148 GETTABLEKS                       R26 R26 K19 ["useCallback"]
      150 NEWCLOSURE                       R27 P3
      151 CAPTURE                          VAL R25
      152 CAPTURE                          VAL R24
      153 CAPTURE                          UPVAL U15
      154 CAPTURE                          REF R20
      155 NEWTABLE                         R28 0 0
      157 CALL                             R26 2 1
      158 MOVE                             R21 R26
      159 GETUPVAL                         R26 1
      160 GETTABLEKS                       R26 R26 K19 ["useCallback"]
      162 NEWCLOSURE                       R27 P4
      163 CAPTURE                          REF R20
      164 CAPTURE                          UPVAL U15
      165 NEWTABLE                         R28 0 0
      167 CALL                             R26 2 1
      168 MOVE                             R22 R26
      169 GETUPVAL                         R26 1
      170 GETTABLEKS                       R26 R26 K10 ["useState"]
      172 NEWTABLE                         R27 0 0
      174 CALL                             R26 1 2
      175 GETTABLEKS                       R28 R0 K20 ["OnMessageSent"]
      177 GETUPVAL                         R29 16
      178 DUPTABLE                         R30 K22 [{"setInputEnabled"}]
      179 GETUPVAL                         R31 17
      180 MOVE                             R32 R4
      181 CALL                             R31 1 1
      182 SETTABLEKS                       R31 R30 K21 ["setInputEnabled"]
      184 CALL                             R29 1 1
      185 GETUPVAL                         R30 1
      186 GETTABLEKS                       R30 R30 K23 ["useMemo"]
      188 DUPCLOSURE                       R31 K24 [PROTO_26]
      189 CAPTURE                          UPVAL U18
      190 NEWTABLE                         R32 0 1
      192 GETUPVAL                         R33 18
      193 GETTABLEKS                       R33 R33 K25 ["locale"]
      195 SETLIST                          R32 R33 1 [1]
      197 CALL                             R30 2 1
      198 GETUPVAL                         R31 19
      199 DUPTABLE                         R32 K27 [{"textBoxRef", "setInputText"}]
      200 SETTABLEKS                       R18 R32 K12 ["textBoxRef"]
      202 SETTABLEKS                       R17 R32 K26 ["setInputText"]
      204 CALL                             R31 1 2
      205 GETUPVAL                         R33 1
      206 GETTABLEKS                       R33 R33 K19 ["useCallback"]
      208 NEWCLOSURE                       R34 P6
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R24
      211 CAPTURE                          UPVAL U12
      212 CAPTURE                          VAL R17
      213 CAPTURE                          UPVAL U20
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R27
      216 NEWTABLE                         R35 0 4
      218 MOVE                             R36 R17
      219 MOVE                             R37 R27
      220 MOVE                             R38 R15
      221 MOVE                             R39 R23
      222 SETLIST                          R35 R36 4 [1]
      224 CALL                             R33 2 1
      225 GETUPVAL                         R34 1
      226 GETTABLEKS                       R34 R34 K10 ["useState"]
      228 LOADNIL                          R35
      229 CALL                             R34 1 2
      230 GETUPVAL                         R36 1
      231 GETTABLEKS                       R36 R36 K17 ["useEffect"]
      233 NEWCLOSURE                       R37 P7
      234 CAPTURE                          VAL R34
      235 CAPTURE                          VAL R18
      236 NEWTABLE                         R38 0 1
      238 MOVE                             R39 R34
      239 SETLIST                          R38 R39 1 [1]
      241 CALL                             R36 2 0
      242 GETUPVAL                         R36 1
      243 GETTABLEKS                       R36 R36 K19 ["useCallback"]
      245 NEWCLOSURE                       R37 P8
      246 CAPTURE                          VAL R17
      247 CAPTURE                          VAL R35
      248 NEWTABLE                         R38 0 0
      250 CALL                             R36 2 1
      251 GETUPVAL                         R37 1
      252 GETTABLEKS                       R37 R37 K17 ["useEffect"]
      254 NEWCLOSURE                       R38 P9
      255 CAPTURE                          UPVAL U21
      256 CAPTURE                          VAL R35
      257 NEWTABLE                         R39 0 0
      259 CALL                             R37 2 0
      260 GETUPVAL                         R37 1
      261 GETTABLEKS                       R37 R37 K19 ["useCallback"]
      263 NEWCLOSURE                       R38 P10
      264 CAPTURE                          VAL R16
      265 CAPTURE                          REF R19
      266 CAPTURE                          VAL R17
      267 CAPTURE                          REF R20
      268 CAPTURE                          VAL R29
      269 CAPTURE                          VAL R31
      270 CAPTURE                          VAL R28
      271 NEWTABLE                         R39 0 7
      273 MOVE                             R40 R16
      274 MOVE                             R41 R17
      275 MOVE                             R42 R29
      276 MOVE                             R43 R31
      277 MOVE                             R44 R28
      278 MOVE                             R45 R19
      279 MOVE                             R46 R20
      280 SETLIST                          R39 R40 7 [1]
      282 CALL                             R37 2 1
      283 GETUPVAL                         R38 1
      284 GETTABLEKS                       R38 R38 K19 ["useCallback"]
      286 NEWCLOSURE                       R39 P11
      287 CAPTURE                          VAL R11
      288 CAPTURE                          UPVAL U22
      289 CAPTURE                          VAL R10
      290 CAPTURE                          UPVAL U12
      291 CAPTURE                          VAL R3
      292 CAPTURE                          VAL R1
      293 CAPTURE                          VAL R7
      294 NEWTABLE                         R40 0 5
      296 MOVE                             R41 R1
      297 MOVE                             R42 R3
      298 MOVE                             R43 R7
      299 MOVE                             R44 R10
      300 MOVE                             R45 R11
      301 SETLIST                          R40 R41 5 [1]
      303 CALL                             R38 2 1
      304 LOADNIL                          R39
      305 GETUPVAL                         R40 12
      306 GETTABLEKS                       R40 R40 K18 ["FFlagAssistantMultiPlayerAgents"]
      308 JUMPIF                           R40 ; [+4]
      309 GETUPVAL                         R40 12
      310 GETTABLEKS                       R40 R40 K16 ["FFlagAssistantEval"]
      312 JUMPIFNOT                        R40 ; [+19]
      313 GETUPVAL                         R40 1
      314 GETTABLEKS                       R40 R40 K13 ["useRef"]
      316 LOADB                            R41 0
      317 CALL                             R40 1 1
      318 MOVE                             R39 R40
      319 GETUPVAL                         R40 1
      320 GETTABLEKS                       R40 R40 K17 ["useEffect"]
      322 NEWCLOSURE                       R41 P12
      323 CAPTURE                          REF R39
      324 CAPTURE                          VAL R37
      325 NEWTABLE                         R42 0 2
      327 MOVE                             R43 R16
      328 MOVE                             R44 R37
      329 SETLIST                          R42 R43 2 [1]
      331 CALL                             R40 2 0
      332 GETUPVAL                         R40 12
      333 GETTABLEKS                       R40 R40 K18 ["FFlagAssistantMultiPlayerAgents"]
      335 JUMPIFNOT                        R40 ; [+14]
      336 GETUPVAL                         R40 1
      337 GETTABLEKS                       R40 R40 K17 ["useEffect"]
      339 NEWCLOSURE                       R41 P13
      340 CAPTURE                          UPVAL U23
      341 CAPTURE                          VAL R17
      342 CAPTURE                          REF R39
      343 CAPTURE                          UPVAL U14
      344 NEWTABLE                         R42 0 1
      346 MOVE                             R43 R17
      347 SETLIST                          R42 R43 1 [1]
      349 CALL                             R40 2 0
      350 GETUPVAL                         R40 12
      351 GETTABLEKS                       R40 R40 K16 ["FFlagAssistantEval"]
      353 JUMPIFNOT                        R40 ; [+37]
      354 GETUPVAL                         R40 1
      355 GETTABLEKS                       R40 R40 K17 ["useEffect"]
      357 NEWCLOSURE                       R41 P14
      358 CAPTURE                          UPVAL U24
      359 CAPTURE                          VAL R17
      360 CAPTURE                          REF R39
      361 NEWTABLE                         R42 0 1
      363 MOVE                             R43 R17
      364 SETLIST                          R42 R43 1 [1]
      366 CALL                             R40 2 0
      367 GETUPVAL                         R40 1
      368 GETTABLEKS                       R40 R40 K13 ["useRef"]
      370 MOVE                             R41 R38
      371 CALL                             R40 1 1
      372 SETTABLEKS                       R38 R40 K28 ["current"]
      374 GETUPVAL                         R41 1
      375 GETTABLEKS                       R41 R41 K13 ["useRef"]
      377 MOVE                             R42 R8
      378 CALL                             R41 1 1
      379 SETTABLEKS                       R8 R41 K28 ["current"]
      381 GETUPVAL                         R42 1
      382 GETTABLEKS                       R42 R42 K17 ["useEffect"]
      384 NEWCLOSURE                       R43 P15
      385 CAPTURE                          UPVAL U24
      386 CAPTURE                          VAL R40
      387 CAPTURE                          VAL R41
      388 NEWTABLE                         R44 0 0
      390 CALL                             R42 2 0
      391 GETUPVAL                         R40 1
      392 GETTABLEKS                       R40 R40 K17 ["useEffect"]
      394 NEWCLOSURE                       R41 P16
      395 CAPTURE                          UPVAL U25
      396 CAPTURE                          VAL R17
      397 NEWTABLE                         R42 0 1
      399 MOVE                             R43 R17
      400 SETLIST                          R42 R43 1 [1]
      402 CALL                             R40 2 0
      403 MOVE                             R40 R6
      404 JUMPIFNOT                        R40 ; [+9]
      405 GETTABLEKS                       R41 R6 K4 ["reasonDisabled"]
      407 GETUPVAL                         R42 26
      408 GETTABLEKS                       R42 R42 K29 ["Generation"]
      410 JUMPIFEQ                         R41 R42 ; [+2]
      412 LOADB                            R40 0 +1
      413 LOADB                            R40 1
      414 LENGTH                           R42 R16
      415 JUMPIFNOTEQKN                    R42 K30 [0] ; [+5]
      417 LOADB                            R41 1
      418 LENGTH                           R42 R19
      419 JUMPIFEQKN                       R42 K30 [0] ; [+2]
      421 NOT                              R41 R5
      422 GETUPVAL                         R42 27
      423 CALL                             R42 0 1
      424 GETUPVAL                         R43 1
      425 GETTABLEKS                       R43 R43 K31 ["useBinding"]
      427 LOADN                            R44 0
      428 CALL                             R43 1 2
      429 GETUPVAL                         R45 28
      430 GETUPVAL                         R46 29
      431 DUPTABLE                         R47 K35 [{"tag", "LayoutOrder", "testId"}]
      432 NEWTABLE                         R48 1 0
      434 LOADB                            R49 1
      435 SETTABLEKS                       R49 R48 K36 ["col size-full-0 auto-y"]
      437 SETTABLEKS                       R48 R47 K32 ["tag"]
      439 GETTABLEKS                       R48 R0 K33 ["LayoutOrder"]
      441 SETTABLEKS                       R48 R47 K33 ["LayoutOrder"]
      443 GETUPVAL                         R48 30
      444 GETTABLEKS                       R48 R48 K37 ["InputArea"]
      446 GETTABLEKS                       R48 R48 K38 ["Container"]
      448 SETTABLEKS                       R48 R47 K34 ["testId"]
      450 DUPTABLE                         R48 K41 [{"Menu", "Footer"}]
      451 GETUPVAL                         R49 28
      452 GETUPVAL                         R50 31
      453 DUPTABLE                         R51 K46 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      454 LENGTH                           R53 R26
      455 LOADN                            R54 0
      456 JUMPIFLT                         R54 R53 ; [+2]
      458 LOADB                            R52 0 +1
      459 LOADB                            R52 1
      460 SETTABLEKS                       R52 R51 K42 ["isOpen"]
      462 SETTABLEKS                       R26 R51 K43 ["items"]
      464 SETTABLEKS                       R43 R51 K44 ["width"]
      466 SETTABLEKS                       R18 R51 K12 ["textBoxRef"]
      468 SETTABLEKS                       R36 R51 K45 ["setTextAndFocus"]
      470 DUPTABLE                         R52 K48 [{"MessageField"}]
      471 GETUPVAL                         R53 28
      472 GETUPVAL                         R54 29
      473 DUPTABLE                         R55 K50 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      474 NEWTABLE                         R56 4 0
      476 LOADB                            R57 1
      477 SETTABLEKS                       R57 R56 K51 ["col gap-small size-full-0 auto-y padding-medium radius-large"]
      479 JUMPIFNOTEQKNIL                  R23 ; [+2]
      481 LOADB                            R57 0 +1
      482 LOADB                            R57 1
      483 SETTABLEKS                       R57 R56 K52 ["stroke-system-alert"]
      485 JUMPIFEQKNIL                     R23 ; [+2]
      487 LOADB                            R57 0 +1
      488 LOADB                            R57 1
      489 SETTABLEKS                       R57 R56 K53 ["stroke-emphasis"]
      491 SETTABLEKS                       R56 R55 K32 ["tag"]
      493 NEWCLOSURE                       R56 P17
      494 CAPTURE                          VAL R44
      495 SETTABLEKS                       R56 R55 K49 ["onAbsoluteSizeChanged"]
      497 MOVE                             R56 R42
      498 CALL                             R56 0 1
      499 SETTABLEKS                       R56 R55 K33 ["LayoutOrder"]
      501 DUPTABLE                         R56 K57 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      502 GETUPVAL                         R57 28
      503 LOADK                            R58 K54 ["UIFlexItem"]
      504 DUPTABLE                         R59 K60 [{"FlexMode", "ItemLineAlignment"}]
      505 GETIMPORT                        R60 K64 [Enum.UIFlexMode.Fill]
      507 SETTABLEKS                       R60 R59 K58 ["FlexMode"]
      509 GETIMPORT                        R60 K66 [Enum.ItemLineAlignment.Center]
      511 SETTABLEKS                       R60 R59 K59 ["ItemLineAlignment"]
      513 CALL                             R57 2 1
      514 SETTABLEKS                       R57 R56 K54 ["UIFlexItem"]
      516 LOADB                            R57 0
      517 LENGTH                           R58 R19
      518 LOADN                            R59 0
      519 JUMPIFNOTLT                      R59 R58 ; [+20]
      521 GETUPVAL                         R57 28
      522 GETUPVAL                         R58 29
      523 DUPTABLE                         R59 K68 [{["tag"] = "row size-full-0 auto-y", ["LayoutOrder"]}]
      524 MOVE                             R60 R42
      525 CALL                             R60 0 1
      526 SETTABLEKS                       R60 R59 K33 ["LayoutOrder"]
      528 DUPTABLE                         R60 K70 [{"List"}]
      529 GETUPVAL                         R61 28
      530 GETUPVAL                         R62 32
      531 DUPTABLE                         R63 K73 [{"attachedImages", "onRemoveImage"}]
      532 SETTABLEKS                       R19 R63 K71 ["attachedImages"]
      534 SETTABLEKS                       R22 R63 K72 ["onRemoveImage"]
      536 CALL                             R61 2 1
      537 SETTABLEKS                       R61 R60 K69 ["List"]
      539 CALL                             R57 3 1
      540 SETTABLEKS                       R57 R56 K55 ["AttachedImagesPreview"]
      542 GETUPVAL                         R57 28
      543 GETUPVAL                         R58 29
      544 DUPTABLE                         R59 K75 [{["tag"] = "col flex-between flex-y-fill align-y-center gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      545 MOVE                             R60 R42
      546 CALL                             R60 0 1
      547 SETTABLEKS                       R60 R59 K33 ["LayoutOrder"]
      549 DUPTABLE                         R60 K78 [{"TextInput", "ActionButtons"}]
      550 GETUPVAL                         R61 28
      551 GETUPVAL                         R62 33
      552 DUPTABLE                         R63 K84 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      553 SETTABLEKS                       R16 R63 K79 ["text"]
      555 JUMPIFNOT                        R40 ; [+3]
      556 GETTABLEKS                       R64 R30 K85 ["Responding"]
      558 JUMP                             ; [+6]
      559 JUMPIFEQKNIL                     R32 ; [+3]
      561 MOVE                             R64 R32
      562 JUMP                             ; [+2]
      563 GETTABLEKS                       R64 R30 K86 ["AskAssistant"]
      565 SETTABLEKS                       R64 R63 K80 ["placeholder"]
      567 NOT                              R64 R5
      568 SETTABLEKS                       R64 R63 K81 ["isDisabled"]
      570 MOVE                             R64 R42
      571 CALL                             R64 0 1
      572 SETTABLEKS                       R64 R63 K33 ["LayoutOrder"]
      574 SETTABLEKS                       R33 R63 K82 ["onChanged"]
      576 SETTABLEKS                       R37 R63 K83 ["onReturnPressed"]
      578 SETTABLEKS                       R18 R63 K12 ["textBoxRef"]
      580 CALL                             R61 2 1
      581 SETTABLEKS                       R61 R60 K76 ["TextInput"]
      583 GETUPVAL                         R61 28
      584 GETUPVAL                         R62 29
      585 DUPTABLE                         R63 K88 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      586 MOVE                             R64 R42
      587 CALL                             R64 0 1
      588 SETTABLEKS                       R64 R63 K33 ["LayoutOrder"]
      590 DUPTABLE                         R64 K95 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButtonContainer", "StopButton"}]
      591 JUMPIF                           R14 ; [+4]
      592 GETUPVAL                         R66 12
      593 GETTABLEKS                       R66 R66 K96 ["EngineFeatureProceduralModel"]
      595 JUMPIFNOT                        R66 ; [+14]
      596 GETUPVAL                         R65 28
      597 GETUPVAL                         R66 34
      598 DUPTABLE                         R67 K98 [{"isDisabled", "onActivated", "LayoutOrder"}]
      599 NOT                              R68 R5
      600 SETTABLEKS                       R68 R67 K81 ["isDisabled"]
      602 SETTABLEKS                       R21 R67 K97 ["onActivated"]
      604 MOVE                             R68 R42
      605 CALL                             R68 0 1
      606 SETTABLEKS                       R68 R67 K33 ["LayoutOrder"]
      608 CALL                             R65 2 1
      609 JUMP                             ; [+1]
      610 LOADNIL                          R65
      611 SETTABLEKS                       R65 R64 K89 ["AttachImageButton"]
      613 GETUPVAL                         R65 28
      614 GETUPVAL                         R66 35
      615 DUPTABLE                         R67 K99 [{"LayoutOrder"}]
      616 MOVE                             R68 R42
      617 CALL                             R68 0 1
      618 SETTABLEKS                       R68 R67 K33 ["LayoutOrder"]
      620 CALL                             R65 2 1
      621 SETTABLEKS                       R65 R64 K90 ["ServerManagementButton"]
      623 GETUPVAL                         R65 28
      624 GETUPVAL                         R66 29
      625 DUPTABLE                         R67 K101 [{["tag"] = "fill", ["LayoutOrder"]}]
      626 MOVE                             R68 R42
      627 CALL                             R68 0 1
      628 SETTABLEKS                       R68 R67 K33 ["LayoutOrder"]
      630 CALL                             R65 2 1
      631 SETTABLEKS                       R65 R64 K91 ["Spacer"]
      633 GETUPVAL                         R65 28
      634 GETUPVAL                         R66 36
      635 DUPTABLE                         R67 K99 [{"LayoutOrder"}]
      636 MOVE                             R68 R42
      637 CALL                             R68 0 1
      638 SETTABLEKS                       R68 R67 K33 ["LayoutOrder"]
      640 CALL                             R65 2 1
      641 SETTABLEKS                       R65 R64 K92 ["SelectAssistantMode"]
      643 NOT                              R65 R40
      644 JUMPIFNOT                        R65 ; [+84]
      645 GETUPVAL                         R66 12
      646 GETTABLEKS                       R66 R66 K102 ["FFlagAssistantUseBuilderIcons"]
      648 JUMPIFNOT                        R66 ; [+62]
      649 GETUPVAL                         R65 28
      650 GETUPVAL                         R66 29
      651 DUPTABLE                         R67 K104 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      652 MOVE                             R68 R42
      653 CALL                             R68 0 1
      654 SETTABLEKS                       R68 R67 K33 ["LayoutOrder"]
      656 DUPTABLE                         R68 K106 [{"SendButtonRotation"}]
      657 GETUPVAL                         R69 28
      658 GETUPVAL                         R70 29
      659 DUPTABLE                         R71 K109 [{["tag"] = "auto-xy", ["Rotation"] = -90, ["LayoutOrder"]}]
      660 MOVE                             R72 R42
      661 CALL                             R72 0 1
      662 SETTABLEKS                       R72 R71 K33 ["LayoutOrder"]
      664 DUPTABLE                         R72 K111 [{"SendButton"}]
      665 GETUPVAL                         R73 28
      666 GETUPVAL                         R74 37
      667 DUPTABLE                         R75 K118 [{["icon"] = "icons/navigation/seeAllArrow_small", ["size"], ["variant"], ["isCircular"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"]}]
      668 GETUPVAL                         R76 38
      669 GETTABLEKS                       R76 R76 K119 ["Enums"]
      671 GETTABLEKS                       R76 R76 K120 ["InputSize"]
      673 GETTABLEKS                       R76 R76 K121 ["XSmall"]
      675 SETTABLEKS                       R76 R75 K114 ["size"]
      677 JUMPIFNOT                        R41 ; [+8]
      678 GETUPVAL                         R76 38
      679 GETTABLEKS                       R76 R76 K119 ["Enums"]
      681 GETTABLEKS                       R76 R76 K122 ["ButtonVariant"]
      683 GETTABLEKS                       R76 R76 K123 ["Standard"]
      685 JUMP                             ; [+7]
      686 GETUPVAL                         R76 38
      687 GETTABLEKS                       R76 R76 K119 ["Enums"]
      689 GETTABLEKS                       R76 R76 K122 ["ButtonVariant"]
      691 GETTABLEKS                       R76 R76 K124 ["Emphasis"]
      693 SETTABLEKS                       R76 R75 K115 ["variant"]
      695 SETTABLEKS                       R41 R75 K81 ["isDisabled"]
      697 SETTABLEKS                       R37 R75 K97 ["onActivated"]
      699 MOVE                             R76 R42
      700 CALL                             R76 0 1
      701 SETTABLEKS                       R76 R75 K33 ["LayoutOrder"]
      703 CALL                             R73 2 1
      704 SETTABLEKS                       R73 R72 K110 ["SendButton"]
      706 CALL                             R69 3 1
      707 SETTABLEKS                       R69 R68 K105 ["SendButtonRotation"]
      709 CALL                             R65 3 1
      710 JUMP                             ; [+18]
      711 GETUPVAL                         R65 28
      712 GETUPVAL                         R66 39
      713 DUPTABLE                         R67 K129 [{["icon"] = "icons/navigation/seeAllArrow_small", ["tag"], ["iconTag"] = "size-300-300 content-emphasis", ["iconRotation"] = -90, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["skipBackgroundColoringDisabled"] = True}]
      714 JUMPIFNOT                        R41 ; [+2]
      715 LOADK                            R68 K130 ["align-x-center align-y-center size-600-600 radius-circle bg-action-standard"]
      716 JUMP                             ; [+1]
      717 LOADK                            R68 K131 ["align-x-center align-y-center size-600-600 radius-circle bg-action-emphasis"]
      718 SETTABLEKS                       R68 R67 K32 ["tag"]
      720 SETTABLEKS                       R41 R67 K81 ["isDisabled"]
      722 SETTABLEKS                       R37 R67 K97 ["onActivated"]
      724 MOVE                             R68 R42
      725 CALL                             R68 0 1
      726 SETTABLEKS                       R68 R67 K33 ["LayoutOrder"]
      728 CALL                             R65 2 1
      729 SETTABLEKS                       R65 R64 K93 ["SendButtonContainer"]
      731 MOVE                             R65 R40
      732 JUMPIFNOT                        R65 ; [+66]
      733 GETUPVAL                         R66 12
      734 GETTABLEKS                       R66 R66 K102 ["FFlagAssistantUseBuilderIcons"]
      736 JUMPIFNOT                        R66 ; [+45]
      737 GETUPVAL                         R65 28
      738 GETUPVAL                         R66 37
      739 DUPTABLE                         R67 K132 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      740 GETUPVAL                         R68 38
      741 GETTABLEKS                       R68 R68 K119 ["Enums"]
      743 GETTABLEKS                       R68 R68 K133 ["IconName"]
      745 GETTABLEKS                       R68 R68 K134 ["StopSmall"]
      747 SETTABLEKS                       R68 R67 K112 ["icon"]
      749 GETUPVAL                         R68 38
      750 GETTABLEKS                       R68 R68 K119 ["Enums"]
      752 GETTABLEKS                       R68 R68 K120 ["InputSize"]
      754 GETTABLEKS                       R68 R68 K121 ["XSmall"]
      756 SETTABLEKS                       R68 R67 K114 ["size"]
      758 GETUPVAL                         R68 38
      759 GETTABLEKS                       R68 R68 K119 ["Enums"]
      761 GETTABLEKS                       R68 R68 K122 ["ButtonVariant"]
      763 GETTABLEKS                       R68 R68 K123 ["Standard"]
      765 SETTABLEKS                       R68 R67 K115 ["variant"]
      767 SETTABLEKS                       R38 R67 K97 ["onActivated"]
      769 MOVE                             R68 R42
      770 CALL                             R68 0 1
      771 SETTABLEKS                       R68 R67 K33 ["LayoutOrder"]
      773 GETUPVAL                         R68 30
      774 GETTABLEKS                       R68 R68 K37 ["InputArea"]
      776 GETTABLEKS                       R68 R68 K94 ["StopButton"]
      778 SETTABLEKS                       R68 R67 K34 ["testId"]
      780 CALL                             R65 2 1
      781 JUMP                             ; [+17]
      782 GETUPVAL                         R65 28
      783 GETUPVAL                         R66 39
      784 DUPTABLE                         R67 K136 [{["icon"] = "icons/controls/mediaStop_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-circle bg-action-standard", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
      785 SETTABLEKS                       R38 R67 K97 ["onActivated"]
      787 MOVE                             R68 R42
      788 CALL                             R68 0 1
      789 SETTABLEKS                       R68 R67 K33 ["LayoutOrder"]
      791 GETUPVAL                         R68 30
      792 GETTABLEKS                       R68 R68 K37 ["InputArea"]
      794 GETTABLEKS                       R68 R68 K94 ["StopButton"]
      796 SETTABLEKS                       R68 R67 K34 ["testId"]
      798 CALL                             R65 2 1
      799 SETTABLEKS                       R65 R64 K94 ["StopButton"]
      801 CALL                             R61 3 1
      802 SETTABLEKS                       R61 R60 K77 ["ActionButtons"]
      804 CALL                             R57 3 1
      805 SETTABLEKS                       R57 R56 K56 ["InputRow"]
      807 CALL                             R53 3 1
      808 SETTABLEKS                       R53 R52 K47 ["MessageField"]
      810 CALL                             R49 3 1
      811 SETTABLEKS                       R49 R48 K39 ["Menu"]
      813 GETUPVAL                         R49 28
      814 GETUPVAL                         R50 40
      815 DUPTABLE                         R51 K138 [{"LayoutOrder", "imageAttachError"}]
      816 MOVE                             R52 R42
      817 CALL                             R52 0 1
      818 SETTABLEKS                       R52 R51 K33 ["LayoutOrder"]
      820 SETTABLEKS                       R23 R51 K137 ["imageAttachError"]
      822 CALL                             R49 2 1
      823 SETTABLEKS                       R49 R48 K40 ["Footer"]
      825 CALL                             R45 3 -1
      826 CLOSEUPVALS                      R19
      827 RETURN                           R45 -1

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
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["CustomIconButton"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Guest"]
       46 GETTABLEKS                       R7 R7 K15 ["Environment"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["AssistantEval"]
       55 GETTABLEKS                       R8 R8 K17 ["EvalController"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K9 ["Util"]
       62 GETTABLEKS                       R9 R9 K16 ["AssistantEval"]
       64 GETTABLEKS                       R9 R9 K18 ["EvalFunctionRegistry"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Events"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K20 ["Flags"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K11 ["Parent"]
       81 GETTABLEKS                       R12 R12 K21 ["Foundation"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Components"]
       88 GETTABLEKS                       R13 R13 K22 ["ImageAttachmentButton"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K9 ["Util"]
       95 GETTABLEKS                       R14 R14 K23 ["ImageAttachmentUtils"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K6 ["Components"]
      102 GETTABLEKS                       R15 R15 K24 ["InputFooter"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K6 ["Components"]
      109 GETTABLEKS                       R16 R16 K25 ["Contexts"]
      111 GETTABLEKS                       R16 R16 K26 ["InputStateContext"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K6 ["Components"]
      118 GETTABLEKS                       R17 R17 K25 ["Contexts"]
      120 GETTABLEKS                       R17 R17 K27 ["LLMProviderSelectionContext"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K9 ["Util"]
      127 GETTABLEKS                       R18 R18 K28 ["MultiPlayersConnection"]
      129 GETTABLEKS                       R18 R18 K29 ["MultiPlayersAgentClient"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K9 ["Util"]
      136 GETTABLEKS                       R19 R19 K28 ["MultiPlayersConnection"]
      138 GETTABLEKS                       R19 R19 K30 ["MultiPlayersModeUtils"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K5 [require]
      143 GETTABLEKS                       R20 R0 K6 ["Components"]
      145 GETTABLEKS                       R20 R20 K25 ["Contexts"]
      147 GETTABLEKS                       R20 R20 K31 ["OngoingAcpPromptContext"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K5 [require]
      152 GETTABLEKS                       R21 R0 K11 ["Parent"]
      154 GETTABLEKS                       R21 R21 K32 ["React"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K5 [require]
      159 GETTABLEKS                       R22 R0 K11 ["Parent"]
      161 GETTABLEKS                       R22 R22 K33 ["ReactUtils"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K6 ["Components"]
      168 GETTABLEKS                       R23 R23 K34 ["ServerManagementDropdown"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R24 R0 K6 ["Components"]
      175 GETTABLEKS                       R24 R24 K25 ["Contexts"]
      177 GETTABLEKS                       R24 R24 K35 ["SessionIdContext"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R25 R0 K6 ["Components"]
      184 GETTABLEKS                       R25 R25 K36 ["SlashCommandMenu"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K5 [require]
      189 GETTABLEKS                       R26 R0 K9 ["Util"]
      191 GETTABLEKS                       R26 R26 K37 ["TestIds"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K5 [require]
      196 GETTABLEKS                       R27 R0 K6 ["Components"]
      198 GETTABLEKS                       R27 R27 K25 ["Contexts"]
      200 GETTABLEKS                       R27 R27 K38 ["ThreadIdContext"]
      202 CALL                             R26 1 1
      203 GETIMPORT                        R27 K5 [require]
      205 GETTABLEKS                       R28 R0 K39 ["Resources"]
      207 GETTABLEKS                       R28 R28 K40 ["Localization"]
      209 GETTABLEKS                       R28 R28 K41 ["Translator"]
      211 CALL                             R27 1 1
      212 GETIMPORT                        R28 K5 [require]
      214 GETTABLEKS                       R29 R0 K42 ["Types"]
      216 CALL                             R28 1 1
      217 GETIMPORT                        R29 K5 [require]
      219 GETTABLEKS                       R30 R0 K6 ["Components"]
      221 GETTABLEKS                       R30 R30 K43 ["UIToolRegistry"]
      223 CALL                             R29 1 1
      224 GETIMPORT                        R30 K5 [require]
      226 GETTABLEKS                       R31 R0 K6 ["Components"]
      228 GETTABLEKS                       R31 R31 K25 ["Contexts"]
      230 GETTABLEKS                       R31 R31 K44 ["WindowInputContext"]
      232 CALL                             R30 1 1
      233 GETIMPORT                        R31 K5 [require]
      235 GETTABLEKS                       R32 R0 K9 ["Util"]
      237 GETTABLEKS                       R32 R32 K45 ["getToggleGenerationInputFunc"]
      239 CALL                             R31 1 1
      240 GETIMPORT                        R32 K5 [require]
      242 GETTABLEKS                       R33 R0 K46 ["Hooks"]
      244 GETTABLEKS                       R33 R33 K47 ["useAssistantMode"]
      246 CALL                             R32 1 1
      247 GETIMPORT                        R33 K5 [require]
      249 GETTABLEKS                       R34 R0 K46 ["Hooks"]
      251 GETTABLEKS                       R34 R34 K48 ["useClearConversation"]
      253 CALL                             R33 1 1
      254 GETIMPORT                        R34 K5 [require]
      256 GETTABLEKS                       R35 R0 K46 ["Hooks"]
      258 GETTABLEKS                       R35 R35 K49 ["useCurrentAssistantMessageId"]
      260 CALL                             R34 1 1
      261 GETIMPORT                        R35 K5 [require]
      263 GETTABLEKS                       R36 R0 K46 ["Hooks"]
      265 GETTABLEKS                       R36 R36 K50 ["useCurrentThread"]
      267 CALL                             R35 1 1
      268 GETIMPORT                        R36 K5 [require]
      270 GETTABLEKS                       R37 R0 K46 ["Hooks"]
      272 GETTABLEKS                       R37 R37 K51 ["useEventConnection"]
      274 CALL                             R36 1 1
      275 GETIMPORT                        R37 K5 [require]
      277 GETTABLEKS                       R38 R0 K46 ["Hooks"]
      279 GETTABLEKS                       R38 R38 K52 ["useLLMCancelSession"]
      281 CALL                             R37 1 1
      282 GETIMPORT                        R38 K5 [require]
      284 GETTABLEKS                       R39 R0 K46 ["Hooks"]
      286 GETTABLEKS                       R39 R39 K53 ["useSendMessage"]
      288 CALL                             R38 1 1
      289 GETTABLEKS                       R39 R15 K54 ["InputDisabledReasons"]
      291 GETTABLEKS                       R40 R11 K55 ["IconButton"]
      293 GETTABLEKS                       R41 R11 K56 ["View"]
      295 GETTABLEKS                       R42 R21 K57 ["createNextOrder"]
      297 GETTABLEKS                       R43 R20 K58 ["createElement"]
      299 DUPCLOSURE                       R44 K59 [PROTO_5]
      300 CAPTURE                          VAL R20
      301 CAPTURE                          VAL R26
      302 CAPTURE                          VAL R10
      303 CAPTURE                          VAL R4
      304 CAPTURE                          VAL R30
      305 CAPTURE                          VAL R36
      306 DUPCLOSURE                       R45 K60 [PROTO_14]
      307 CAPTURE                          VAL R11
      308 CAPTURE                          VAL R20
      309 CAPTURE                          VAL R43
      310 CAPTURE                          VAL R4
      311 CAPTURE                          VAL R6
      312 DUPCLOSURE                       R46 K61 [PROTO_16]
      313 CAPTURE                          VAL R20
      314 CAPTURE                          VAL R26
      315 DUPCLOSURE                       R47 K62 [PROTO_50]
      316 CAPTURE                          VAL R37
      317 CAPTURE                          VAL R20
      318 CAPTURE                          VAL R19
      319 CAPTURE                          VAL R15
      320 CAPTURE                          VAL R33
      321 CAPTURE                          VAL R23
      322 CAPTURE                          VAL R34
      323 CAPTURE                          VAL R35
      324 CAPTURE                          VAL R16
      325 CAPTURE                          VAL R28
      326 CAPTURE                          VAL R32
      327 CAPTURE                          VAL R46
      328 CAPTURE                          VAL R10
      329 CAPTURE                          VAL R7
      330 CAPTURE                          VAL R17
      331 CAPTURE                          VAL R13
      332 CAPTURE                          VAL R38
      333 CAPTURE                          VAL R31
      334 CAPTURE                          VAL R27
      335 CAPTURE                          VAL R44
      336 CAPTURE                          VAL R29
      337 CAPTURE                          VAL R9
      338 CAPTURE                          VAL R6
      339 CAPTURE                          VAL R18
      340 CAPTURE                          VAL R8
      341 CAPTURE                          VAL R3
      342 CAPTURE                          VAL R39
      343 CAPTURE                          VAL R42
      344 CAPTURE                          VAL R43
      345 CAPTURE                          VAL R41
      346 CAPTURE                          VAL R25
      347 CAPTURE                          VAL R24
      348 CAPTURE                          VAL R2
      349 CAPTURE                          VAL R45
      350 CAPTURE                          VAL R12
      351 CAPTURE                          VAL R22
      352 CAPTURE                          VAL R1
      353 CAPTURE                          VAL R40
      354 CAPTURE                          VAL R11
      355 CAPTURE                          VAL R5
      356 CAPTURE                          VAL R14
      357 RETURN                           R47 1
