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
      201 GETUPVAL                         R32 0
      202 GETTABLEKS                       R32 R32 K23 ["useMemo"]
      204 DUPCLOSURE                       R33 K24 [PROTO_27]
      205 CAPTURE                          UPVAL U19
      206 NEWTABLE                         R34 0 1
      208 GETUPVAL                         R35 19
      209 GETTABLEKS                       R35 R35 K25 ["locale"]
      211 SETLIST                          R34 R35 1 [1]
      213 CALL                             R32 2 1
      214 GETUPVAL                         R33 20
      215 DUPTABLE                         R34 K27 [{"textBoxRef", "setInputText"}]
      216 SETTABLEKS                       R20 R34 K12 ["textBoxRef"]
      218 SETTABLEKS                       R19 R34 K26 ["setInputText"]
      220 CALL                             R33 1 2
      221 GETUPVAL                         R35 0
      222 GETTABLEKS                       R35 R35 K19 ["useCallback"]
      224 NEWCLOSURE                       R36 P6
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R26
      227 CAPTURE                          UPVAL U13
      228 CAPTURE                          VAL R19
      229 CAPTURE                          UPVAL U21
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R29
      232 NEWTABLE                         R37 0 4
      234 MOVE                             R38 R19
      235 MOVE                             R39 R29
      236 MOVE                             R40 R17
      237 MOVE                             R41 R25
      238 SETLIST                          R37 R38 4 [1]
      240 CALL                             R35 2 1
      241 GETUPVAL                         R36 0
      242 GETTABLEKS                       R36 R36 K10 ["useState"]
      244 LOADNIL                          R37
      245 CALL                             R36 1 2
      246 GETUPVAL                         R38 0
      247 GETTABLEKS                       R38 R38 K17 ["useEffect"]
      249 NEWCLOSURE                       R39 P7
      250 CAPTURE                          VAL R36
      251 CAPTURE                          VAL R20
      252 NEWTABLE                         R40 0 1
      254 MOVE                             R41 R36
      255 SETLIST                          R40 R41 1 [1]
      257 CALL                             R38 2 0
      258 GETUPVAL                         R38 0
      259 GETTABLEKS                       R38 R38 K19 ["useCallback"]
      261 NEWCLOSURE                       R39 P8
      262 CAPTURE                          VAL R19
      263 CAPTURE                          VAL R37
      264 NEWTABLE                         R40 0 0
      266 CALL                             R38 2 1
      267 GETUPVAL                         R39 0
      268 GETTABLEKS                       R39 R39 K17 ["useEffect"]
      270 NEWCLOSURE                       R40 P9
      271 CAPTURE                          UPVAL U22
      272 CAPTURE                          VAL R37
      273 NEWTABLE                         R41 0 0
      275 CALL                             R39 2 0
      276 GETUPVAL                         R39 0
      277 GETTABLEKS                       R39 R39 K19 ["useCallback"]
      279 NEWCLOSURE                       R40 P10
      280 CAPTURE                          VAL R14
      281 CAPTURE                          VAL R18
      282 CAPTURE                          REF R21
      283 CAPTURE                          VAL R19
      284 CAPTURE                          REF R22
      285 CAPTURE                          VAL R31
      286 CAPTURE                          VAL R33
      287 CAPTURE                          VAL R30
      288 NEWTABLE                         R41 0 8
      290 MOVE                             R42 R18
      291 MOVE                             R43 R19
      292 MOVE                             R44 R31
      293 MOVE                             R45 R33
      294 MOVE                             R46 R30
      295 MOVE                             R47 R21
      296 MOVE                             R48 R22
      297 MOVE                             R49 R14
      298 SETLIST                          R41 R42 8 [1]
      300 CALL                             R39 2 1
      301 GETUPVAL                         R40 0
      302 GETTABLEKS                       R40 R40 K19 ["useCallback"]
      304 NEWCLOSURE                       R41 P11
      305 CAPTURE                          VAL R15
      306 CAPTURE                          UPVAL U23
      307 CAPTURE                          VAL R9
      308 CAPTURE                          VAL R2
      309 CAPTURE                          VAL R6
      310 NEWTABLE                         R42 0 4
      312 MOVE                             R43 R2
      313 MOVE                             R44 R6
      314 MOVE                             R45 R9
      315 MOVE                             R46 R15
      316 SETLIST                          R42 R43 4 [1]
      318 CALL                             R40 2 1
      319 LOADNIL                          R41
      320 GETUPVAL                         R42 13
      321 GETTABLEKS                       R42 R42 K18 ["FFlagAssistantMultiPlayerAgents"]
      323 JUMPIF                           R42 ; [+4]
      324 GETUPVAL                         R42 13
      325 GETTABLEKS                       R42 R42 K16 ["FFlagAssistantEval"]
      327 JUMPIFNOT                        R42 ; [+19]
      328 GETUPVAL                         R42 0
      329 GETTABLEKS                       R42 R42 K13 ["useRef"]
      331 LOADB                            R43 0
      332 CALL                             R42 1 1
      333 MOVE                             R41 R42
      334 GETUPVAL                         R42 0
      335 GETTABLEKS                       R42 R42 K17 ["useEffect"]
      337 NEWCLOSURE                       R43 P12
      338 CAPTURE                          REF R41
      339 CAPTURE                          VAL R39
      340 NEWTABLE                         R44 0 2
      342 MOVE                             R45 R18
      343 MOVE                             R46 R39
      344 SETLIST                          R44 R45 2 [1]
      346 CALL                             R42 2 0
      347 GETUPVAL                         R42 13
      348 GETTABLEKS                       R42 R42 K18 ["FFlagAssistantMultiPlayerAgents"]
      350 JUMPIFNOT                        R42 ; [+14]
      351 GETUPVAL                         R42 0
      352 GETTABLEKS                       R42 R42 K17 ["useEffect"]
      354 NEWCLOSURE                       R43 P13
      355 CAPTURE                          UPVAL U24
      356 CAPTURE                          VAL R19
      357 CAPTURE                          REF R41
      358 CAPTURE                          UPVAL U15
      359 NEWTABLE                         R44 0 1
      361 MOVE                             R45 R19
      362 SETLIST                          R44 R45 1 [1]
      364 CALL                             R42 2 0
      365 GETUPVAL                         R42 13
      366 GETTABLEKS                       R42 R42 K16 ["FFlagAssistantEval"]
      368 JUMPIFNOT                        R42 ; [+37]
      369 GETUPVAL                         R42 0
      370 GETTABLEKS                       R42 R42 K17 ["useEffect"]
      372 NEWCLOSURE                       R43 P14
      373 CAPTURE                          UPVAL U25
      374 CAPTURE                          VAL R19
      375 CAPTURE                          REF R41
      376 NEWTABLE                         R44 0 1
      378 MOVE                             R45 R19
      379 SETLIST                          R44 R45 1 [1]
      381 CALL                             R42 2 0
      382 GETUPVAL                         R42 0
      383 GETTABLEKS                       R42 R42 K13 ["useRef"]
      385 MOVE                             R43 R40
      386 CALL                             R42 1 1
      387 SETTABLEKS                       R40 R42 K28 ["current"]
      389 GETUPVAL                         R43 0
      390 GETTABLEKS                       R43 R43 K13 ["useRef"]
      392 MOVE                             R44 R7
      393 CALL                             R43 1 1
      394 SETTABLEKS                       R7 R43 K28 ["current"]
      396 GETUPVAL                         R44 0
      397 GETTABLEKS                       R44 R44 K17 ["useEffect"]
      399 NEWCLOSURE                       R45 P15
      400 CAPTURE                          UPVAL U25
      401 CAPTURE                          VAL R42
      402 CAPTURE                          VAL R43
      403 NEWTABLE                         R46 0 0
      405 CALL                             R44 2 0
      406 GETUPVAL                         R42 0
      407 GETTABLEKS                       R42 R42 K17 ["useEffect"]
      409 NEWCLOSURE                       R43 P16
      410 CAPTURE                          UPVAL U26
      411 CAPTURE                          VAL R19
      412 NEWTABLE                         R44 0 1
      414 MOVE                             R45 R19
      415 SETLIST                          R44 R45 1 [1]
      417 CALL                             R42 2 0
      418 MOVE                             R42 R5
      419 JUMPIFNOT                        R42 ; [+9]
      420 GETTABLEKS                       R43 R5 K4 ["reasonDisabled"]
      422 GETUPVAL                         R44 27
      423 GETTABLEKS                       R44 R44 K29 ["Generation"]
      425 JUMPIFEQ                         R43 R44 ; [+2]
      427 LOADB                            R42 0 +1
      428 LOADB                            R42 1
      429 LENGTH                           R44 R18
      430 JUMPIFNOTEQKN                    R44 K30 [0] ; [+5]
      432 LOADB                            R43 1
      433 LENGTH                           R44 R21
      434 JUMPIFEQKN                       R44 K30 [0] ; [+2]
      436 MOVE                             R43 R14
      437 GETUPVAL                         R44 28
      438 CALL                             R44 0 1
      439 GETUPVAL                         R45 0
      440 GETTABLEKS                       R45 R45 K31 ["useBinding"]
      442 LOADN                            R46 0
      443 CALL                             R45 1 2
      444 LOADB                            R47 0
      445 LENGTH                           R48 R21
      446 LOADN                            R49 0
      447 JUMPIFNOTLT                      R49 R48 ; [+20]
      449 GETUPVAL                         R47 29
      450 GETUPVAL                         R48 30
      451 DUPTABLE                         R49 K35 [{["tag"] = "row size-full-0 auto-y", ["LayoutOrder"]}]
      452 MOVE                             R50 R44
      453 CALL                             R50 0 1
      454 SETTABLEKS                       R50 R49 K34 ["LayoutOrder"]
      456 DUPTABLE                         R50 K37 [{"List"}]
      457 GETUPVAL                         R51 29
      458 GETUPVAL                         R52 31
      459 DUPTABLE                         R53 K40 [{"attachedImages", "onRemoveImage"}]
      460 SETTABLEKS                       R21 R53 K38 ["attachedImages"]
      462 SETTABLEKS                       R24 R53 K39 ["onRemoveImage"]
      464 CALL                             R51 2 1
      465 SETTABLEKS                       R51 R50 K36 ["List"]
      467 CALL                             R47 3 1
      468 GETUPVAL                         R48 29
      469 GETUPVAL                         R49 30
      470 DUPTABLE                         R50 K42 [{["tag"] = "col flex-between flex-y-fill align-y-center gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      471 MOVE                             R51 R44
      472 CALL                             R51 0 1
      473 SETTABLEKS                       R51 R50 K34 ["LayoutOrder"]
      475 DUPTABLE                         R51 K45 [{"TextInput", "ActionButtons"}]
      476 GETUPVAL                         R52 29
      477 GETUPVAL                         R53 32
      478 DUPTABLE                         R54 K51 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      479 SETTABLEKS                       R18 R54 K46 ["text"]
      481 JUMPIFNOT                        R42 ; [+3]
      482 GETTABLEKS                       R55 R32 K52 ["Responding"]
      484 JUMP                             ; [+6]
      485 JUMPIFEQKNIL                     R34 ; [+3]
      487 MOVE                             R55 R34
      488 JUMP                             ; [+2]
      489 GETTABLEKS                       R55 R32 K53 ["AskAssistant"]
      491 SETTABLEKS                       R55 R54 K47 ["placeholder"]
      493 SETTABLEKS                       R14 R54 K48 ["isDisabled"]
      495 MOVE                             R55 R44
      496 CALL                             R55 0 1
      497 SETTABLEKS                       R55 R54 K34 ["LayoutOrder"]
      499 SETTABLEKS                       R35 R54 K49 ["onChanged"]
      501 SETTABLEKS                       R39 R54 K50 ["onReturnPressed"]
      503 SETTABLEKS                       R20 R54 K12 ["textBoxRef"]
      505 CALL                             R52 2 1
      506 SETTABLEKS                       R52 R51 K43 ["TextInput"]
      508 GETUPVAL                         R52 29
      509 GETUPVAL                         R53 30
      510 DUPTABLE                         R54 K55 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      511 MOVE                             R55 R44
      512 CALL                             R55 0 1
      513 SETTABLEKS                       R55 R54 K34 ["LayoutOrder"]
      515 DUPTABLE                         R55 K62 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButtonContainer", "StopButton"}]
      516 GETUPVAL                         R56 29
      517 GETUPVAL                         R57 33
      518 DUPTABLE                         R58 K64 [{"isDisabled", "onActivated", "LayoutOrder"}]
      519 SETTABLEKS                       R14 R58 K48 ["isDisabled"]
      521 SETTABLEKS                       R23 R58 K63 ["onActivated"]
      523 MOVE                             R59 R44
      524 CALL                             R59 0 1
      525 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      527 CALL                             R56 2 1
      528 SETTABLEKS                       R56 R55 K56 ["AttachImageButton"]
      530 GETUPVAL                         R56 29
      531 GETUPVAL                         R57 34
      532 DUPTABLE                         R58 K65 [{"LayoutOrder"}]
      533 MOVE                             R59 R44
      534 CALL                             R59 0 1
      535 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      537 CALL                             R56 2 1
      538 SETTABLEKS                       R56 R55 K57 ["ServerManagementButton"]
      540 GETUPVAL                         R56 29
      541 GETUPVAL                         R57 30
      542 DUPTABLE                         R58 K67 [{["tag"] = "fill", ["LayoutOrder"]}]
      543 MOVE                             R59 R44
      544 CALL                             R59 0 1
      545 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      547 CALL                             R56 2 1
      548 SETTABLEKS                       R56 R55 K58 ["Spacer"]
      550 GETUPVAL                         R56 29
      551 GETUPVAL                         R57 35
      552 DUPTABLE                         R58 K65 [{"LayoutOrder"}]
      553 MOVE                             R59 R44
      554 CALL                             R59 0 1
      555 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      557 CALL                             R56 2 1
      558 SETTABLEKS                       R56 R55 K59 ["SelectAssistantMode"]
      560 NOT                              R56 R42
      561 JUMPIFNOT                        R56 ; [+12]
      562 GETUPVAL                         R56 29
      563 GETUPVAL                         R57 36
      564 DUPTABLE                         R58 K68 [{"LayoutOrder", "isDisabled", "onActivated"}]
      565 MOVE                             R59 R44
      566 CALL                             R59 0 1
      567 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      569 SETTABLEKS                       R43 R58 K48 ["isDisabled"]
      571 SETTABLEKS                       R39 R58 K63 ["onActivated"]
      573 CALL                             R56 2 1
      574 SETTABLEKS                       R56 R55 K60 ["SendButtonContainer"]
      576 MOVE                             R56 R42
      577 JUMPIFNOT                        R56 ; [+66]
      578 GETUPVAL                         R57 13
      579 GETTABLEKS                       R57 R57 K69 ["FFlagAssistantUseBuilderIcons"]
      581 JUMPIFNOT                        R57 ; [+45]
      582 GETUPVAL                         R56 29
      583 GETUPVAL                         R57 37
      584 DUPTABLE                         R58 K76 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      585 GETUPVAL                         R59 38
      586 GETTABLEKS                       R59 R59 K77 ["Enums"]
      588 GETTABLEKS                       R59 R59 K78 ["IconName"]
      590 GETTABLEKS                       R59 R59 K79 ["StopSmall"]
      592 SETTABLEKS                       R59 R58 K70 ["icon"]
      594 GETUPVAL                         R59 38
      595 GETTABLEKS                       R59 R59 K77 ["Enums"]
      597 GETTABLEKS                       R59 R59 K80 ["InputSize"]
      599 GETTABLEKS                       R59 R59 K81 ["XSmall"]
      601 SETTABLEKS                       R59 R58 K71 ["size"]
      603 GETUPVAL                         R59 38
      604 GETTABLEKS                       R59 R59 K77 ["Enums"]
      606 GETTABLEKS                       R59 R59 K82 ["ButtonVariant"]
      608 GETTABLEKS                       R59 R59 K83 ["Standard"]
      610 SETTABLEKS                       R59 R58 K72 ["variant"]
      612 SETTABLEKS                       R40 R58 K63 ["onActivated"]
      614 MOVE                             R59 R44
      615 CALL                             R59 0 1
      616 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      618 GETUPVAL                         R59 39
      619 GETTABLEKS                       R59 R59 K84 ["InputArea"]
      621 GETTABLEKS                       R59 R59 K61 ["StopButton"]
      623 SETTABLEKS                       R59 R58 K75 ["testId"]
      625 CALL                             R56 2 1
      626 JUMP                             ; [+17]
      627 GETUPVAL                         R56 29
      628 GETUPVAL                         R57 40
      629 DUPTABLE                         R58 K90 [{["icon"] = "icons/controls/mediaStop_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-circle bg-action-standard", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
      630 SETTABLEKS                       R40 R58 K63 ["onActivated"]
      632 MOVE                             R59 R44
      633 CALL                             R59 0 1
      634 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      636 GETUPVAL                         R59 39
      637 GETTABLEKS                       R59 R59 K84 ["InputArea"]
      639 GETTABLEKS                       R59 R59 K61 ["StopButton"]
      641 SETTABLEKS                       R59 R58 K75 ["testId"]
      643 CALL                             R56 2 1
      644 SETTABLEKS                       R56 R55 K61 ["StopButton"]
      646 CALL                             R52 3 1
      647 SETTABLEKS                       R52 R51 K44 ["ActionButtons"]
      649 CALL                             R48 3 1
      650 GETUPVAL                         R49 29
      651 LOADK                            R50 K91 ["UIFlexItem"]
      652 DUPTABLE                         R51 K94 [{"FlexMode", "ItemLineAlignment"}]
      653 GETIMPORT                        R52 K98 [Enum.UIFlexMode.Fill]
      655 SETTABLEKS                       R52 R51 K92 ["FlexMode"]
      657 GETIMPORT                        R52 K100 [Enum.ItemLineAlignment.Center]
      659 SETTABLEKS                       R52 R51 K93 ["ItemLineAlignment"]
      661 CALL                             R49 2 1
      662 LOADNIL                          R50
      663 LOADNIL                          R51
      664 GETUPVAL                         R52 8
      665 CALL                             R52 0 1
      666 JUMPIFNOT                        R52 ; [+48]
      667 NEWTABLE                         R52 4 0
      669 LOADB                            R53 1
      670 SETTABLEKS                       R53 R52 K101 ["col size-full-0 auto-y radius-large"]
      672 JUMPIFNOTEQKNIL                  R25 ; [+2]
      674 LOADB                            R53 0 +1
      675 LOADB                            R53 1
      676 SETTABLEKS                       R53 R52 K102 ["stroke-system-alert"]
      678 JUMPIFEQKNIL                     R25 ; [+2]
      680 LOADB                            R53 0 +1
      681 LOADB                            R53 1
      682 SETTABLEKS                       R53 R52 K103 ["stroke-emphasis"]
      684 MOVE                             R50 R52
      685 DUPTABLE                         R52 K106 [{"UIFlexItem", "UsageBanner", "PaddedContent"}]
      686 SETTABLEKS                       R49 R52 K91 ["UIFlexItem"]
      688 GETUPVAL                         R53 29
      689 GETUPVAL                         R54 41
      690 DUPTABLE                         R55 K65 [{"LayoutOrder"}]
      691 MOVE                             R56 R44
      692 CALL                             R56 0 1
      693 SETTABLEKS                       R56 R55 K34 ["LayoutOrder"]
      695 CALL                             R53 2 1
      696 SETTABLEKS                       R53 R52 K104 ["UsageBanner"]
      698 GETUPVAL                         R53 29
      699 GETUPVAL                         R54 30
      700 DUPTABLE                         R55 K108 [{["tag"] = "col gap-small size-full-0 auto-y padding-medium", ["LayoutOrder"]}]
      701 MOVE                             R56 R44
      702 CALL                             R56 0 1
      703 SETTABLEKS                       R56 R55 K34 ["LayoutOrder"]
      705 DUPTABLE                         R56 K111 [{"AttachedImagesPreview", "InputRow"}]
      706 SETTABLEKS                       R47 R56 K109 ["AttachedImagesPreview"]
      708 SETTABLEKS                       R48 R56 K110 ["InputRow"]
      710 CALL                             R53 3 1
      711 SETTABLEKS                       R53 R52 K105 ["PaddedContent"]
      713 MOVE                             R51 R52
      714 JUMP                             ; [+26]
      715 NEWTABLE                         R52 4 0
      717 LOADB                            R53 1
      718 SETTABLEKS                       R53 R52 K112 ["col gap-small size-full-0 auto-y padding-medium radius-large"]
      720 JUMPIFNOTEQKNIL                  R25 ; [+2]
      722 LOADB                            R53 0 +1
      723 LOADB                            R53 1
      724 SETTABLEKS                       R53 R52 K102 ["stroke-system-alert"]
      726 JUMPIFEQKNIL                     R25 ; [+2]
      728 LOADB                            R53 0 +1
      729 LOADB                            R53 1
      730 SETTABLEKS                       R53 R52 K103 ["stroke-emphasis"]
      732 MOVE                             R50 R52
      733 DUPTABLE                         R52 K113 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      734 SETTABLEKS                       R49 R52 K91 ["UIFlexItem"]
      736 SETTABLEKS                       R47 R52 K109 ["AttachedImagesPreview"]
      738 SETTABLEKS                       R48 R52 K110 ["InputRow"]
      740 MOVE                             R51 R52
      741 GETUPVAL                         R52 29
      742 GETUPVAL                         R53 30
      743 DUPTABLE                         R54 K114 [{"tag", "LayoutOrder", "testId"}]
      744 NEWTABLE                         R55 1 0
      746 LOADB                            R56 1
      747 SETTABLEKS                       R56 R55 K115 ["col size-full-0 auto-y"]
      749 SETTABLEKS                       R55 R54 K32 ["tag"]
      751 GETTABLEKS                       R55 R0 K34 ["LayoutOrder"]
      753 SETTABLEKS                       R55 R54 K34 ["LayoutOrder"]
      755 GETUPVAL                         R55 39
      756 GETTABLEKS                       R55 R55 K84 ["InputArea"]
      758 GETTABLEKS                       R55 R55 K116 ["Container"]
      760 SETTABLEKS                       R55 R54 K75 ["testId"]
      762 DUPTABLE                         R55 K119 [{"Menu", "Footer"}]
      763 GETUPVAL                         R56 29
      764 GETUPVAL                         R57 42
      765 DUPTABLE                         R58 K124 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      766 LENGTH                           R60 R28
      767 LOADN                            R61 0
      768 JUMPIFLT                         R61 R60 ; [+2]
      770 LOADB                            R59 0 +1
      771 LOADB                            R59 1
      772 SETTABLEKS                       R59 R58 K120 ["isOpen"]
      774 SETTABLEKS                       R28 R58 K121 ["items"]
      776 SETTABLEKS                       R45 R58 K122 ["width"]
      778 SETTABLEKS                       R20 R58 K12 ["textBoxRef"]
      780 SETTABLEKS                       R38 R58 K123 ["setTextAndFocus"]
      782 DUPTABLE                         R59 K126 [{"MessageField"}]
      783 GETUPVAL                         R60 29
      784 GETUPVAL                         R61 30
      785 DUPTABLE                         R62 K128 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      786 SETTABLEKS                       R50 R62 K32 ["tag"]
      788 NEWCLOSURE                       R63 P17
      789 CAPTURE                          VAL R46
      790 SETTABLEKS                       R63 R62 K127 ["onAbsoluteSizeChanged"]
      792 MOVE                             R63 R44
      793 CALL                             R63 0 1
      794 SETTABLEKS                       R63 R62 K34 ["LayoutOrder"]
      796 MOVE                             R63 R51
      797 CALL                             R60 3 1
      798 SETTABLEKS                       R60 R59 K125 ["MessageField"]
      800 CALL                             R56 3 1
      801 SETTABLEKS                       R56 R55 K117 ["Menu"]
      803 GETUPVAL                         R56 29
      804 GETUPVAL                         R57 43
      805 DUPTABLE                         R58 K130 [{"LayoutOrder", "imageAttachError"}]
      806 MOVE                             R59 R44
      807 CALL                             R59 0 1
      808 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      810 SETTABLEKS                       R25 R58 K129 ["imageAttachError"]
      812 CALL                             R56 2 1
      813 SETTABLEKS                       R56 R55 K118 ["Footer"]
      815 CALL                             R52 3 -1
      816 CLOSEUPVALS                      R21
      817 RETURN                           R52 -1

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
       98 GETTABLEKS                       R14 R11 K25 ["getIsCreditMeteringEnabled"]
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R0 K6 ["Components"]
      104 GETTABLEKS                       R16 R16 K26 ["ImageAttachmentButton"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R17 R0 K9 ["Util"]
      111 GETTABLEKS                       R17 R17 K27 ["ImageAttachmentUtils"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K6 ["Components"]
      118 GETTABLEKS                       R18 R18 K28 ["InputFooter"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K5 [require]
      123 GETTABLEKS                       R19 R0 K6 ["Components"]
      125 GETTABLEKS                       R19 R19 K11 ["Contexts"]
      127 GETTABLEKS                       R19 R19 K29 ["InputStateContext"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K5 [require]
      132 GETTABLEKS                       R20 R0 K6 ["Components"]
      134 GETTABLEKS                       R20 R20 K11 ["Contexts"]
      136 GETTABLEKS                       R20 R20 K30 ["LLMProviderSelectionContext"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K5 [require]
      141 GETTABLEKS                       R21 R0 K9 ["Util"]
      143 GETTABLEKS                       R21 R21 K31 ["MultiPlayersConnection"]
      145 GETTABLEKS                       R21 R21 K32 ["MultiPlayersAgentClient"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K5 [require]
      150 GETTABLEKS                       R22 R0 K9 ["Util"]
      152 GETTABLEKS                       R22 R22 K31 ["MultiPlayersConnection"]
      154 GETTABLEKS                       R22 R22 K33 ["MultiPlayersModeUtils"]
      156 CALL                             R21 1 1
      157 GETIMPORT                        R22 K5 [require]
      159 GETTABLEKS                       R23 R0 K6 ["Components"]
      161 GETTABLEKS                       R23 R23 K11 ["Contexts"]
      163 GETTABLEKS                       R23 R23 K34 ["OngoingAcpPromptContext"]
      165 CALL                             R22 1 1
      166 GETIMPORT                        R23 K5 [require]
      168 GETTABLEKS                       R24 R0 K13 ["Parent"]
      170 GETTABLEKS                       R24 R24 K35 ["React"]
      172 CALL                             R23 1 1
      173 GETIMPORT                        R24 K5 [require]
      175 GETTABLEKS                       R25 R0 K13 ["Parent"]
      177 GETTABLEKS                       R25 R25 K36 ["ReactUtils"]
      179 CALL                             R24 1 1
      180 GETIMPORT                        R25 K5 [require]
      182 GETTABLEKS                       R26 R0 K6 ["Components"]
      184 GETTABLEKS                       R26 R26 K37 ["ServerManagementDropdown"]
      186 CALL                             R25 1 1
      187 GETIMPORT                        R26 K5 [require]
      189 GETTABLEKS                       R27 R0 K6 ["Components"]
      191 GETTABLEKS                       R27 R27 K11 ["Contexts"]
      193 GETTABLEKS                       R27 R27 K38 ["SessionIdContext"]
      195 CALL                             R26 1 1
      196 GETIMPORT                        R27 K5 [require]
      198 GETTABLEKS                       R28 R0 K6 ["Components"]
      200 GETTABLEKS                       R28 R28 K39 ["SlashCommandMenu"]
      202 CALL                             R27 1 1
      203 GETIMPORT                        R28 K5 [require]
      205 GETTABLEKS                       R29 R0 K9 ["Util"]
      207 GETTABLEKS                       R29 R29 K40 ["TestIds"]
      209 CALL                             R28 1 1
      210 GETIMPORT                        R29 K5 [require]
      212 GETTABLEKS                       R30 R0 K6 ["Components"]
      214 GETTABLEKS                       R30 R30 K11 ["Contexts"]
      216 GETTABLEKS                       R30 R30 K41 ["ThreadIdContext"]
      218 CALL                             R29 1 1
      219 GETIMPORT                        R30 K5 [require]
      221 GETTABLEKS                       R31 R0 K42 ["Resources"]
      223 GETTABLEKS                       R31 R31 K43 ["Localization"]
      225 GETTABLEKS                       R31 R31 K44 ["Translator"]
      227 CALL                             R30 1 1
      228 GETIMPORT                        R31 K5 [require]
      230 GETTABLEKS                       R32 R0 K45 ["Types"]
      232 CALL                             R31 1 1
      233 GETIMPORT                        R32 K5 [require]
      235 GETTABLEKS                       R33 R0 K6 ["Components"]
      237 GETTABLEKS                       R33 R33 K46 ["UIToolRegistry"]
      239 CALL                             R32 1 1
      240 GETIMPORT                        R33 K5 [require]
      242 GETTABLEKS                       R34 R0 K6 ["Components"]
      244 GETTABLEKS                       R34 R34 K47 ["DailyUsage"]
      246 GETTABLEKS                       R34 R34 K48 ["UsageLimitBanner"]
      248 CALL                             R33 1 1
      249 GETIMPORT                        R34 K5 [require]
      251 GETTABLEKS                       R35 R0 K6 ["Components"]
      253 GETTABLEKS                       R35 R35 K11 ["Contexts"]
      255 GETTABLEKS                       R35 R35 K49 ["WindowInputContext"]
      257 CALL                             R34 1 1
      258 GETIMPORT                        R35 K5 [require]
      260 GETTABLEKS                       R36 R0 K9 ["Util"]
      262 GETTABLEKS                       R36 R36 K50 ["getToggleGenerationInputFunc"]
      264 CALL                             R35 1 1
      265 GETIMPORT                        R36 K5 [require]
      267 GETTABLEKS                       R37 R0 K51 ["Hooks"]
      269 GETTABLEKS                       R37 R37 K52 ["useAssistantMode"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K5 [require]
      274 GETTABLEKS                       R38 R0 K51 ["Hooks"]
      276 GETTABLEKS                       R38 R38 K53 ["useClearConversation"]
      278 CALL                             R37 1 1
      279 GETIMPORT                        R38 K5 [require]
      281 GETTABLEKS                       R39 R0 K51 ["Hooks"]
      283 GETTABLEKS                       R39 R39 K54 ["useCurrentAssistantMessageId"]
      285 CALL                             R38 1 1
      286 GETIMPORT                        R39 K5 [require]
      288 GETTABLEKS                       R40 R0 K51 ["Hooks"]
      290 GETTABLEKS                       R40 R40 K55 ["useCurrentThread"]
      292 CALL                             R39 1 1
      293 GETIMPORT                        R40 K5 [require]
      295 GETTABLEKS                       R41 R0 K51 ["Hooks"]
      297 GETTABLEKS                       R41 R41 K56 ["useEventConnection"]
      299 CALL                             R40 1 1
      300 GETIMPORT                        R41 K5 [require]
      302 GETTABLEKS                       R42 R0 K51 ["Hooks"]
      304 GETTABLEKS                       R42 R42 K57 ["useSendMessage"]
      306 CALL                             R41 1 1
      307 GETTABLEKS                       R42 R18 K58 ["InputDisabledReasons"]
      309 GETTABLEKS                       R43 R13 K59 ["IconButton"]
      311 GETTABLEKS                       R44 R13 K60 ["View"]
      313 GETTABLEKS                       R45 R24 K61 ["createNextOrder"]
      315 GETTABLEKS                       R46 R23 K62 ["createElement"]
      317 DUPCLOSURE                       R47 K63 [PROTO_5]
      318 CAPTURE                          VAL R23
      319 CAPTURE                          VAL R29
      320 CAPTURE                          VAL R12
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R34
      323 CAPTURE                          VAL R40
      324 DUPCLOSURE                       R48 K64 [PROTO_14]
      325 CAPTURE                          VAL R13
      326 CAPTURE                          VAL R23
      327 CAPTURE                          VAL R46
      328 CAPTURE                          VAL R5
      329 CAPTURE                          VAL R7
      330 DUPCLOSURE                       R49 K65 [PROTO_16]
      331 CAPTURE                          VAL R23
      332 CAPTURE                          VAL R29
      333 DUPCLOSURE                       R50 K66 [PROTO_17]
      334 CAPTURE                          VAL R12
      335 CAPTURE                          VAL R46
      336 CAPTURE                          VAL R44
      337 CAPTURE                          VAL R43
      338 CAPTURE                          VAL R13
      339 CAPTURE                          VAL R28
      340 CAPTURE                          VAL R6
      341 DUPCLOSURE                       R51 K67 [PROTO_51]
      342 CAPTURE                          VAL R23
      343 CAPTURE                          VAL R22
      344 CAPTURE                          VAL R18
      345 CAPTURE                          VAL R37
      346 CAPTURE                          VAL R26
      347 CAPTURE                          VAL R4
      348 CAPTURE                          VAL R19
      349 CAPTURE                          VAL R31
      350 CAPTURE                          VAL R14
      351 CAPTURE                          VAL R38
      352 CAPTURE                          VAL R39
      353 CAPTURE                          VAL R36
      354 CAPTURE                          VAL R49
      355 CAPTURE                          VAL R12
      356 CAPTURE                          VAL R8
      357 CAPTURE                          VAL R20
      358 CAPTURE                          VAL R16
      359 CAPTURE                          VAL R41
      360 CAPTURE                          VAL R35
      361 CAPTURE                          VAL R30
      362 CAPTURE                          VAL R47
      363 CAPTURE                          VAL R32
      364 CAPTURE                          VAL R10
      365 CAPTURE                          VAL R7
      366 CAPTURE                          VAL R21
      367 CAPTURE                          VAL R9
      368 CAPTURE                          VAL R3
      369 CAPTURE                          VAL R42
      370 CAPTURE                          VAL R45
      371 CAPTURE                          VAL R46
      372 CAPTURE                          VAL R44
      373 CAPTURE                          VAL R2
      374 CAPTURE                          VAL R48
      375 CAPTURE                          VAL R15
      376 CAPTURE                          VAL R25
      377 CAPTURE                          VAL R1
      378 CAPTURE                          VAL R50
      379 CAPTURE                          VAL R43
      380 CAPTURE                          VAL R13
      381 CAPTURE                          VAL R28
      382 CAPTURE                          VAL R6
      383 CAPTURE                          VAL R33
      384 CAPTURE                          VAL R27
      385 CAPTURE                          VAL R17
      386 RETURN                           R51 1
