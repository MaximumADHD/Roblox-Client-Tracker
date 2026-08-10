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
       39 GETUPVAL                         R13 8
       40 CALL                             R13 0 1
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R14 R14 K7 ["useState"]
       44 LOADK                            R15 K8 [""]
       45 CALL                             R14 1 2
       46 GETTABLEKS                       R17 R0 K9 ["textBoxRef"]
       48 JUMPIFNOT                        R17 ; [+3]
       49 GETTABLEKS                       R16 R0 K9 ["textBoxRef"]
       51 JUMP                             ; [+5]
       52 GETUPVAL                         R16 1
       53 GETTABLEKS                       R16 R16 K10 ["useRef"]
       55 LOADNIL                          R17
       56 CALL                             R16 1 1
       57 GETUPVAL                         R17 9
       58 DUPTABLE                         R18 K12 [{"inputText", "textBoxRef"}]
       59 SETTABLEKS                       R14 R18 K11 ["inputText"]
       61 SETTABLEKS                       R16 R18 K9 ["textBoxRef"]
       63 CALL                             R17 1 0
       64 NEWTABLE                         R17 0 0
       66 LOADNIL                          R18
       67 LOADNIL                          R19
       68 LOADNIL                          R20
       69 GETUPVAL                         R21 1
       70 GETTABLEKS                       R21 R21 K7 ["useState"]
       72 LOADNIL                          R22
       73 CALL                             R21 1 2
       74 GETUPVAL                         R23 1
       75 GETTABLEKS                       R23 R23 K10 ["useRef"]
       77 LOADB                            R24 1
       78 CALL                             R23 1 1
       79 GETUPVAL                         R24 10
       80 GETTABLEKS                       R24 R24 K13 ["FFlagAssistantEval"]
       82 JUMPIFNOT                        R24 ; [+12]
       83 GETUPVAL                         R24 1
       84 GETTABLEKS                       R24 R24 K14 ["useEffect"]
       86 NEWCLOSURE                       R25 P0
       87 CAPTURE                          UPVAL U11
       88 CAPTURE                          VAL R5
       89 NEWTABLE                         R26 0 1
       91 MOVE                             R27 R5
       92 SETLIST                          R26 R27 1 [1]
       94 CALL                             R24 2 0
       95 GETUPVAL                         R24 10
       96 GETTABLEKS                       R24 R24 K15 ["FFlagAssistantMultiPlayerAgents"]
       98 JUMPIFNOT                        R24 ; [+14]
       99 GETUPVAL                         R24 1
      100 GETTABLEKS                       R24 R24 K14 ["useEffect"]
      102 NEWCLOSURE                       R25 P1
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R12
      107 NEWTABLE                         R26 0 1
      109 MOVE                             R27 R5
      110 SETLIST                          R26 R27 1 [1]
      112 CALL                             R24 2 0
      113 GETUPVAL                         R24 1
      114 GETTABLEKS                       R24 R24 K14 ["useEffect"]
      116 NEWCLOSURE                       R25 P2
      117 CAPTURE                          VAL R23
      118 NEWTABLE                         R26 0 0
      120 CALL                             R24 2 0
      121 GETUPVAL                         R24 1
      122 GETTABLEKS                       R24 R24 K7 ["useState"]
      124 NEWTABLE                         R25 0 0
      126 CALL                             R24 1 2
      127 MOVE                             R17 R24
      128 MOVE                             R18 R25
      129 GETUPVAL                         R24 1
      130 GETTABLEKS                       R24 R24 K16 ["useCallback"]
      132 NEWCLOSURE                       R25 P3
      133 CAPTURE                          VAL R23
      134 CAPTURE                          VAL R22
      135 CAPTURE                          UPVAL U13
      136 CAPTURE                          REF R18
      137 NEWTABLE                         R26 0 0
      139 CALL                             R24 2 1
      140 MOVE                             R19 R24
      141 GETUPVAL                         R24 1
      142 GETTABLEKS                       R24 R24 K16 ["useCallback"]
      144 NEWCLOSURE                       R25 P4
      145 CAPTURE                          REF R18
      146 CAPTURE                          UPVAL U13
      147 NEWTABLE                         R26 0 0
      149 CALL                             R24 2 1
      150 MOVE                             R20 R24
      151 GETUPVAL                         R24 1
      152 GETTABLEKS                       R24 R24 K7 ["useState"]
      154 NEWTABLE                         R25 0 0
      156 CALL                             R24 1 2
      157 GETTABLEKS                       R26 R0 K17 ["OnMessageSent"]
      159 GETUPVAL                         R27 14
      160 DUPTABLE                         R28 K19 [{"setInputEnabled"}]
      161 GETUPVAL                         R29 15
      162 MOVE                             R30 R4
      163 CALL                             R29 1 1
      164 SETTABLEKS                       R29 R28 K18 ["setInputEnabled"]
      166 CALL                             R27 1 1
      167 GETUPVAL                         R28 1
      168 GETTABLEKS                       R28 R28 K20 ["useMemo"]
      170 DUPCLOSURE                       R29 K21 [PROTO_26]
      171 CAPTURE                          UPVAL U16
      172 NEWTABLE                         R30 0 1
      174 GETUPVAL                         R31 16
      175 GETTABLEKS                       R31 R31 K22 ["locale"]
      177 SETLIST                          R30 R31 1 [1]
      179 CALL                             R28 2 1
      180 GETUPVAL                         R29 17
      181 DUPTABLE                         R30 K24 [{"textBoxRef", "setInputText"}]
      182 SETTABLEKS                       R16 R30 K9 ["textBoxRef"]
      184 SETTABLEKS                       R15 R30 K23 ["setInputText"]
      186 CALL                             R29 1 2
      187 GETUPVAL                         R31 1
      188 GETTABLEKS                       R31 R31 K16 ["useCallback"]
      190 NEWCLOSURE                       R32 P6
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R22
      193 CAPTURE                          UPVAL U10
      194 CAPTURE                          VAL R15
      195 CAPTURE                          UPVAL U18
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R25
      198 NEWTABLE                         R33 0 4
      200 MOVE                             R34 R15
      201 MOVE                             R35 R25
      202 MOVE                             R36 R13
      203 MOVE                             R37 R21
      204 SETLIST                          R33 R34 4 [1]
      206 CALL                             R31 2 1
      207 GETUPVAL                         R32 1
      208 GETTABLEKS                       R32 R32 K7 ["useState"]
      210 LOADNIL                          R33
      211 CALL                             R32 1 2
      212 GETUPVAL                         R34 1
      213 GETTABLEKS                       R34 R34 K14 ["useEffect"]
      215 NEWCLOSURE                       R35 P7
      216 CAPTURE                          VAL R32
      217 CAPTURE                          VAL R16
      218 NEWTABLE                         R36 0 1
      220 MOVE                             R37 R32
      221 SETLIST                          R36 R37 1 [1]
      223 CALL                             R34 2 0
      224 GETUPVAL                         R34 1
      225 GETTABLEKS                       R34 R34 K16 ["useCallback"]
      227 NEWCLOSURE                       R35 P8
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R33
      230 NEWTABLE                         R36 0 0
      232 CALL                             R34 2 1
      233 GETUPVAL                         R35 1
      234 GETTABLEKS                       R35 R35 K14 ["useEffect"]
      236 NEWCLOSURE                       R36 P9
      237 CAPTURE                          UPVAL U19
      238 CAPTURE                          VAL R33
      239 NEWTABLE                         R37 0 0
      241 CALL                             R35 2 0
      242 GETUPVAL                         R35 1
      243 GETTABLEKS                       R35 R35 K16 ["useCallback"]
      245 NEWCLOSURE                       R36 P10
      246 CAPTURE                          VAL R14
      247 CAPTURE                          REF R17
      248 CAPTURE                          VAL R15
      249 CAPTURE                          REF R18
      250 CAPTURE                          VAL R27
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R26
      253 NEWTABLE                         R37 0 7
      255 MOVE                             R38 R14
      256 MOVE                             R39 R15
      257 MOVE                             R40 R27
      258 MOVE                             R41 R29
      259 MOVE                             R42 R26
      260 MOVE                             R43 R17
      261 MOVE                             R44 R18
      262 SETLIST                          R37 R38 7 [1]
      264 CALL                             R35 2 1
      265 GETUPVAL                         R36 1
      266 GETTABLEKS                       R36 R36 K16 ["useCallback"]
      268 NEWCLOSURE                       R37 P11
      269 CAPTURE                          VAL R11
      270 CAPTURE                          UPVAL U20
      271 CAPTURE                          VAL R10
      272 CAPTURE                          UPVAL U21
      273 CAPTURE                          VAL R3
      274 CAPTURE                          UPVAL U22
      275 CAPTURE                          UPVAL U10
      276 CAPTURE                          VAL R1
      277 CAPTURE                          VAL R7
      278 NEWTABLE                         R38 0 5
      280 MOVE                             R39 R1
      281 MOVE                             R40 R3
      282 MOVE                             R41 R7
      283 MOVE                             R42 R10
      284 MOVE                             R43 R11
      285 SETLIST                          R38 R39 5 [1]
      287 CALL                             R36 2 1
      288 LOADNIL                          R37
      289 GETUPVAL                         R38 10
      290 GETTABLEKS                       R38 R38 K15 ["FFlagAssistantMultiPlayerAgents"]
      292 JUMPIF                           R38 ; [+4]
      293 GETUPVAL                         R38 10
      294 GETTABLEKS                       R38 R38 K13 ["FFlagAssistantEval"]
      296 JUMPIFNOT                        R38 ; [+19]
      297 GETUPVAL                         R38 1
      298 GETTABLEKS                       R38 R38 K10 ["useRef"]
      300 LOADB                            R39 0
      301 CALL                             R38 1 1
      302 MOVE                             R37 R38
      303 GETUPVAL                         R38 1
      304 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      306 NEWCLOSURE                       R39 P12
      307 CAPTURE                          REF R37
      308 CAPTURE                          VAL R35
      309 NEWTABLE                         R40 0 2
      311 MOVE                             R41 R14
      312 MOVE                             R42 R35
      313 SETLIST                          R40 R41 2 [1]
      315 CALL                             R38 2 0
      316 GETUPVAL                         R38 10
      317 GETTABLEKS                       R38 R38 K15 ["FFlagAssistantMultiPlayerAgents"]
      319 JUMPIFNOT                        R38 ; [+14]
      320 GETUPVAL                         R38 1
      321 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      323 NEWCLOSURE                       R39 P13
      324 CAPTURE                          UPVAL U23
      325 CAPTURE                          VAL R15
      326 CAPTURE                          REF R37
      327 CAPTURE                          UPVAL U12
      328 NEWTABLE                         R40 0 1
      330 MOVE                             R41 R15
      331 SETLIST                          R40 R41 1 [1]
      333 CALL                             R38 2 0
      334 GETUPVAL                         R38 10
      335 GETTABLEKS                       R38 R38 K13 ["FFlagAssistantEval"]
      337 JUMPIFNOT                        R38 ; [+37]
      338 GETUPVAL                         R38 1
      339 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      341 NEWCLOSURE                       R39 P14
      342 CAPTURE                          UPVAL U24
      343 CAPTURE                          VAL R15
      344 CAPTURE                          REF R37
      345 NEWTABLE                         R40 0 1
      347 MOVE                             R41 R15
      348 SETLIST                          R40 R41 1 [1]
      350 CALL                             R38 2 0
      351 GETUPVAL                         R38 1
      352 GETTABLEKS                       R38 R38 K10 ["useRef"]
      354 MOVE                             R39 R36
      355 CALL                             R38 1 1
      356 SETTABLEKS                       R36 R38 K25 ["current"]
      358 GETUPVAL                         R39 1
      359 GETTABLEKS                       R39 R39 K10 ["useRef"]
      361 MOVE                             R40 R8
      362 CALL                             R39 1 1
      363 SETTABLEKS                       R8 R39 K25 ["current"]
      365 GETUPVAL                         R40 1
      366 GETTABLEKS                       R40 R40 K14 ["useEffect"]
      368 NEWCLOSURE                       R41 P15
      369 CAPTURE                          UPVAL U24
      370 CAPTURE                          VAL R38
      371 CAPTURE                          VAL R39
      372 NEWTABLE                         R42 0 0
      374 CALL                             R40 2 0
      375 GETUPVAL                         R38 1
      376 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      378 NEWCLOSURE                       R39 P16
      379 CAPTURE                          UPVAL U25
      380 CAPTURE                          VAL R15
      381 NEWTABLE                         R40 0 1
      383 MOVE                             R41 R15
      384 SETLIST                          R40 R41 1 [1]
      386 CALL                             R38 2 0
      387 MOVE                             R38 R6
      388 JUMPIFNOT                        R38 ; [+9]
      389 GETTABLEKS                       R39 R6 K4 ["reasonDisabled"]
      391 GETUPVAL                         R40 26
      392 GETTABLEKS                       R40 R40 K26 ["Generation"]
      394 JUMPIFEQ                         R39 R40 ; [+2]
      396 LOADB                            R38 0 +1
      397 LOADB                            R38 1
      398 LENGTH                           R40 R14
      399 JUMPIFNOTEQKN                    R40 K27 [0] ; [+5]
      401 LOADB                            R39 1
      402 LENGTH                           R40 R17
      403 JUMPIFEQKN                       R40 K27 [0] ; [+2]
      405 NOT                              R39 R5
      406 GETUPVAL                         R40 27
      407 CALL                             R40 0 1
      408 GETUPVAL                         R41 1
      409 GETTABLEKS                       R41 R41 K28 ["useBinding"]
      411 LOADN                            R42 0
      412 CALL                             R41 1 2
      413 GETUPVAL                         R43 28
      414 GETUPVAL                         R44 29
      415 DUPTABLE                         R45 K32 [{"tag", "LayoutOrder", "testId"}]
      416 NEWTABLE                         R46 1 0
      418 LOADB                            R47 1
      419 SETTABLEKS                       R47 R46 K33 ["col size-full-0 auto-y"]
      421 SETTABLEKS                       R46 R45 K29 ["tag"]
      423 GETTABLEKS                       R46 R0 K30 ["LayoutOrder"]
      425 SETTABLEKS                       R46 R45 K30 ["LayoutOrder"]
      427 GETUPVAL                         R46 30
      428 GETTABLEKS                       R46 R46 K34 ["InputArea"]
      430 GETTABLEKS                       R46 R46 K35 ["Container"]
      432 SETTABLEKS                       R46 R45 K31 ["testId"]
      434 DUPTABLE                         R46 K38 [{"Menu", "Footer"}]
      435 GETUPVAL                         R47 28
      436 GETUPVAL                         R48 31
      437 DUPTABLE                         R49 K43 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      438 LENGTH                           R51 R24
      439 LOADN                            R52 0
      440 JUMPIFLT                         R52 R51 ; [+2]
      442 LOADB                            R50 0 +1
      443 LOADB                            R50 1
      444 SETTABLEKS                       R50 R49 K39 ["isOpen"]
      446 SETTABLEKS                       R24 R49 K40 ["items"]
      448 SETTABLEKS                       R41 R49 K41 ["width"]
      450 SETTABLEKS                       R16 R49 K9 ["textBoxRef"]
      452 SETTABLEKS                       R34 R49 K42 ["setTextAndFocus"]
      454 DUPTABLE                         R50 K45 [{"MessageField"}]
      455 GETUPVAL                         R51 28
      456 GETUPVAL                         R52 29
      457 DUPTABLE                         R53 K47 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      458 NEWTABLE                         R54 4 0
      460 LOADB                            R55 1
      461 SETTABLEKS                       R55 R54 K48 ["col gap-small size-full-0 auto-y padding-medium radius-large"]
      463 JUMPIFNOTEQKNIL                  R21 ; [+2]
      465 LOADB                            R55 0 +1
      466 LOADB                            R55 1
      467 SETTABLEKS                       R55 R54 K49 ["stroke-system-alert"]
      469 JUMPIFEQKNIL                     R21 ; [+2]
      471 LOADB                            R55 0 +1
      472 LOADB                            R55 1
      473 SETTABLEKS                       R55 R54 K50 ["stroke-emphasis"]
      475 SETTABLEKS                       R54 R53 K29 ["tag"]
      477 NEWCLOSURE                       R54 P17
      478 CAPTURE                          VAL R42
      479 SETTABLEKS                       R54 R53 K46 ["onAbsoluteSizeChanged"]
      481 MOVE                             R54 R40
      482 CALL                             R54 0 1
      483 SETTABLEKS                       R54 R53 K30 ["LayoutOrder"]
      485 DUPTABLE                         R54 K54 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      486 GETUPVAL                         R55 28
      487 LOADK                            R56 K51 ["UIFlexItem"]
      488 DUPTABLE                         R57 K57 [{"FlexMode", "ItemLineAlignment"}]
      489 GETIMPORT                        R58 K61 [Enum.UIFlexMode.Fill]
      491 SETTABLEKS                       R58 R57 K55 ["FlexMode"]
      493 GETIMPORT                        R58 K63 [Enum.ItemLineAlignment.Center]
      495 SETTABLEKS                       R58 R57 K56 ["ItemLineAlignment"]
      497 CALL                             R55 2 1
      498 SETTABLEKS                       R55 R54 K51 ["UIFlexItem"]
      500 LOADB                            R55 0
      501 LENGTH                           R56 R17
      502 LOADN                            R57 0
      503 JUMPIFNOTLT                      R57 R56 ; [+20]
      505 GETUPVAL                         R55 28
      506 GETUPVAL                         R56 29
      507 DUPTABLE                         R57 K65 [{["tag"] = "row size-full-0 auto-y", ["LayoutOrder"]}]
      508 MOVE                             R58 R40
      509 CALL                             R58 0 1
      510 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      512 DUPTABLE                         R58 K67 [{"List"}]
      513 GETUPVAL                         R59 28
      514 GETUPVAL                         R60 32
      515 DUPTABLE                         R61 K70 [{"attachedImages", "onRemoveImage"}]
      516 SETTABLEKS                       R17 R61 K68 ["attachedImages"]
      518 SETTABLEKS                       R20 R61 K69 ["onRemoveImage"]
      520 CALL                             R59 2 1
      521 SETTABLEKS                       R59 R58 K66 ["List"]
      523 CALL                             R55 3 1
      524 SETTABLEKS                       R55 R54 K52 ["AttachedImagesPreview"]
      526 GETUPVAL                         R55 28
      527 GETUPVAL                         R56 29
      528 DUPTABLE                         R57 K72 [{["tag"] = "col flex-between flex-y-fill align-y-center gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      529 MOVE                             R58 R40
      530 CALL                             R58 0 1
      531 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      533 DUPTABLE                         R58 K75 [{"TextInput", "ActionButtons"}]
      534 GETUPVAL                         R59 28
      535 GETUPVAL                         R60 33
      536 DUPTABLE                         R61 K81 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      537 SETTABLEKS                       R14 R61 K76 ["text"]
      539 JUMPIFNOT                        R38 ; [+3]
      540 GETTABLEKS                       R62 R28 K82 ["Responding"]
      542 JUMP                             ; [+6]
      543 JUMPIFEQKNIL                     R30 ; [+3]
      545 MOVE                             R62 R30
      546 JUMP                             ; [+2]
      547 GETTABLEKS                       R62 R28 K83 ["AskAssistant"]
      549 SETTABLEKS                       R62 R61 K77 ["placeholder"]
      551 NOT                              R62 R5
      552 SETTABLEKS                       R62 R61 K78 ["isDisabled"]
      554 MOVE                             R62 R40
      555 CALL                             R62 0 1
      556 SETTABLEKS                       R62 R61 K30 ["LayoutOrder"]
      558 SETTABLEKS                       R31 R61 K79 ["onChanged"]
      560 SETTABLEKS                       R35 R61 K80 ["onReturnPressed"]
      562 SETTABLEKS                       R16 R61 K9 ["textBoxRef"]
      564 CALL                             R59 2 1
      565 SETTABLEKS                       R59 R58 K73 ["TextInput"]
      567 GETUPVAL                         R59 28
      568 GETUPVAL                         R60 29
      569 DUPTABLE                         R61 K85 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      570 MOVE                             R62 R40
      571 CALL                             R62 0 1
      572 SETTABLEKS                       R62 R61 K30 ["LayoutOrder"]
      574 DUPTABLE                         R62 K92 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButtonContainer", "StopButton"}]
      575 GETUPVAL                         R63 28
      576 GETUPVAL                         R64 34
      577 DUPTABLE                         R65 K94 [{"isDisabled", "onActivated", "LayoutOrder"}]
      578 NOT                              R66 R5
      579 SETTABLEKS                       R66 R65 K78 ["isDisabled"]
      581 SETTABLEKS                       R19 R65 K93 ["onActivated"]
      583 MOVE                             R66 R40
      584 CALL                             R66 0 1
      585 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      587 CALL                             R63 2 1
      588 SETTABLEKS                       R63 R62 K86 ["AttachImageButton"]
      590 GETUPVAL                         R63 28
      591 GETUPVAL                         R64 35
      592 DUPTABLE                         R65 K95 [{"LayoutOrder"}]
      593 MOVE                             R66 R40
      594 CALL                             R66 0 1
      595 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      597 CALL                             R63 2 1
      598 SETTABLEKS                       R63 R62 K87 ["ServerManagementButton"]
      600 GETUPVAL                         R63 28
      601 GETUPVAL                         R64 29
      602 DUPTABLE                         R65 K97 [{["tag"] = "fill", ["LayoutOrder"]}]
      603 MOVE                             R66 R40
      604 CALL                             R66 0 1
      605 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      607 CALL                             R63 2 1
      608 SETTABLEKS                       R63 R62 K88 ["Spacer"]
      610 GETUPVAL                         R63 28
      611 GETUPVAL                         R64 36
      612 DUPTABLE                         R65 K95 [{"LayoutOrder"}]
      613 MOVE                             R66 R40
      614 CALL                             R66 0 1
      615 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      617 CALL                             R63 2 1
      618 SETTABLEKS                       R63 R62 K89 ["SelectAssistantMode"]
      620 NOT                              R63 R38
      621 JUMPIFNOT                        R63 ; [+84]
      622 GETUPVAL                         R64 10
      623 GETTABLEKS                       R64 R64 K98 ["FFlagAssistantUseBuilderIcons"]
      625 JUMPIFNOT                        R64 ; [+62]
      626 GETUPVAL                         R63 28
      627 GETUPVAL                         R64 29
      628 DUPTABLE                         R65 K100 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      629 MOVE                             R66 R40
      630 CALL                             R66 0 1
      631 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      633 DUPTABLE                         R66 K102 [{"SendButtonRotation"}]
      634 GETUPVAL                         R67 28
      635 GETUPVAL                         R68 29
      636 DUPTABLE                         R69 K105 [{["tag"] = "auto-xy", ["Rotation"] = -90, ["LayoutOrder"]}]
      637 MOVE                             R70 R40
      638 CALL                             R70 0 1
      639 SETTABLEKS                       R70 R69 K30 ["LayoutOrder"]
      641 DUPTABLE                         R70 K107 [{"SendButton"}]
      642 GETUPVAL                         R71 28
      643 GETUPVAL                         R72 37
      644 DUPTABLE                         R73 K114 [{["icon"] = "icons/navigation/seeAllArrow_small", ["size"], ["variant"], ["isCircular"] = True, ["isDisabled"], ["onActivated"], ["LayoutOrder"]}]
      645 GETUPVAL                         R74 38
      646 GETTABLEKS                       R74 R74 K115 ["Enums"]
      648 GETTABLEKS                       R74 R74 K116 ["InputSize"]
      650 GETTABLEKS                       R74 R74 K117 ["XSmall"]
      652 SETTABLEKS                       R74 R73 K110 ["size"]
      654 JUMPIFNOT                        R39 ; [+8]
      655 GETUPVAL                         R74 38
      656 GETTABLEKS                       R74 R74 K115 ["Enums"]
      658 GETTABLEKS                       R74 R74 K118 ["ButtonVariant"]
      660 GETTABLEKS                       R74 R74 K119 ["Standard"]
      662 JUMP                             ; [+7]
      663 GETUPVAL                         R74 38
      664 GETTABLEKS                       R74 R74 K115 ["Enums"]
      666 GETTABLEKS                       R74 R74 K118 ["ButtonVariant"]
      668 GETTABLEKS                       R74 R74 K120 ["Emphasis"]
      670 SETTABLEKS                       R74 R73 K111 ["variant"]
      672 SETTABLEKS                       R39 R73 K78 ["isDisabled"]
      674 SETTABLEKS                       R35 R73 K93 ["onActivated"]
      676 MOVE                             R74 R40
      677 CALL                             R74 0 1
      678 SETTABLEKS                       R74 R73 K30 ["LayoutOrder"]
      680 CALL                             R71 2 1
      681 SETTABLEKS                       R71 R70 K106 ["SendButton"]
      683 CALL                             R67 3 1
      684 SETTABLEKS                       R67 R66 K101 ["SendButtonRotation"]
      686 CALL                             R63 3 1
      687 JUMP                             ; [+18]
      688 GETUPVAL                         R63 28
      689 GETUPVAL                         R64 39
      690 DUPTABLE                         R65 K125 [{["icon"] = "icons/navigation/seeAllArrow_small", ["tag"], ["iconTag"] = "size-300-300 content-emphasis", ["iconRotation"] = -90, ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["skipBackgroundColoringDisabled"] = True}]
      691 JUMPIFNOT                        R39 ; [+2]
      692 LOADK                            R66 K126 ["align-x-center align-y-center size-600-600 radius-circle bg-action-standard"]
      693 JUMP                             ; [+1]
      694 LOADK                            R66 K127 ["align-x-center align-y-center size-600-600 radius-circle bg-action-emphasis"]
      695 SETTABLEKS                       R66 R65 K29 ["tag"]
      697 SETTABLEKS                       R39 R65 K78 ["isDisabled"]
      699 SETTABLEKS                       R35 R65 K93 ["onActivated"]
      701 MOVE                             R66 R40
      702 CALL                             R66 0 1
      703 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      705 CALL                             R63 2 1
      706 SETTABLEKS                       R63 R62 K90 ["SendButtonContainer"]
      708 MOVE                             R63 R38
      709 JUMPIFNOT                        R63 ; [+66]
      710 GETUPVAL                         R64 10
      711 GETTABLEKS                       R64 R64 K98 ["FFlagAssistantUseBuilderIcons"]
      713 JUMPIFNOT                        R64 ; [+45]
      714 GETUPVAL                         R63 28
      715 GETUPVAL                         R64 37
      716 DUPTABLE                         R65 K128 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
      717 GETUPVAL                         R66 38
      718 GETTABLEKS                       R66 R66 K115 ["Enums"]
      720 GETTABLEKS                       R66 R66 K129 ["IconName"]
      722 GETTABLEKS                       R66 R66 K130 ["StopSmall"]
      724 SETTABLEKS                       R66 R65 K108 ["icon"]
      726 GETUPVAL                         R66 38
      727 GETTABLEKS                       R66 R66 K115 ["Enums"]
      729 GETTABLEKS                       R66 R66 K116 ["InputSize"]
      731 GETTABLEKS                       R66 R66 K117 ["XSmall"]
      733 SETTABLEKS                       R66 R65 K110 ["size"]
      735 GETUPVAL                         R66 38
      736 GETTABLEKS                       R66 R66 K115 ["Enums"]
      738 GETTABLEKS                       R66 R66 K118 ["ButtonVariant"]
      740 GETTABLEKS                       R66 R66 K119 ["Standard"]
      742 SETTABLEKS                       R66 R65 K111 ["variant"]
      744 SETTABLEKS                       R36 R65 K93 ["onActivated"]
      746 MOVE                             R66 R40
      747 CALL                             R66 0 1
      748 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      750 GETUPVAL                         R66 30
      751 GETTABLEKS                       R66 R66 K34 ["InputArea"]
      753 GETTABLEKS                       R66 R66 K91 ["StopButton"]
      755 SETTABLEKS                       R66 R65 K31 ["testId"]
      757 CALL                             R63 2 1
      758 JUMP                             ; [+17]
      759 GETUPVAL                         R63 28
      760 GETUPVAL                         R64 39
      761 DUPTABLE                         R65 K132 [{["icon"] = "icons/controls/mediaStop_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-circle bg-action-standard", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
      762 SETTABLEKS                       R36 R65 K93 ["onActivated"]
      764 MOVE                             R66 R40
      765 CALL                             R66 0 1
      766 SETTABLEKS                       R66 R65 K30 ["LayoutOrder"]
      768 GETUPVAL                         R66 30
      769 GETTABLEKS                       R66 R66 K34 ["InputArea"]
      771 GETTABLEKS                       R66 R66 K91 ["StopButton"]
      773 SETTABLEKS                       R66 R65 K31 ["testId"]
      775 CALL                             R63 2 1
      776 SETTABLEKS                       R63 R62 K91 ["StopButton"]
      778 CALL                             R59 3 1
      779 SETTABLEKS                       R59 R58 K74 ["ActionButtons"]
      781 CALL                             R55 3 1
      782 SETTABLEKS                       R55 R54 K53 ["InputRow"]
      784 CALL                             R51 3 1
      785 SETTABLEKS                       R51 R50 K44 ["MessageField"]
      787 CALL                             R47 3 1
      788 SETTABLEKS                       R47 R46 K36 ["Menu"]
      790 GETUPVAL                         R47 28
      791 GETUPVAL                         R48 40
      792 DUPTABLE                         R49 K134 [{"LayoutOrder", "imageAttachError"}]
      793 MOVE                             R50 R40
      794 CALL                             R50 0 1
      795 SETTABLEKS                       R50 R49 K30 ["LayoutOrder"]
      797 SETTABLEKS                       R21 R49 K133 ["imageAttachError"]
      799 CALL                             R47 2 1
      800 SETTABLEKS                       R47 R46 K37 ["Footer"]
      802 CALL                             R43 3 -1
      803 CLOSEUPVALS                      R17
      804 RETURN                           R43 -1

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
       74 GETTABLEKS                       R11 R0 K20 ["FlagUtils"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K21 ["Flags"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K11 ["Parent"]
       86 GETTABLEKS                       R13 R13 K22 ["Foundation"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R13 R10 K23 ["getIsAssistantHarnessSplit"]
       91 GETTABLEKS                       R14 R10 K24 ["getIsSlashCommandViaAcp"]
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R0 K6 ["Components"]
       97 GETTABLEKS                       R16 R16 K25 ["ImageAttachmentButton"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K9 ["Util"]
      104 GETTABLEKS                       R17 R17 K26 ["ImageAttachmentUtils"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K5 [require]
      109 GETTABLEKS                       R18 R0 K6 ["Components"]
      111 GETTABLEKS                       R18 R18 K27 ["InputFooter"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K5 [require]
      116 GETTABLEKS                       R19 R0 K6 ["Components"]
      118 GETTABLEKS                       R19 R19 K28 ["Contexts"]
      120 GETTABLEKS                       R19 R19 K29 ["InputStateContext"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K5 [require]
      125 GETTABLEKS                       R20 R0 K9 ["Util"]
      127 GETTABLEKS                       R20 R20 K30 ["MultiPlayersConnection"]
      129 GETTABLEKS                       R20 R20 K31 ["MultiPlayersAgentClient"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K5 [require]
      134 GETTABLEKS                       R21 R0 K9 ["Util"]
      136 GETTABLEKS                       R21 R21 K30 ["MultiPlayersConnection"]
      138 GETTABLEKS                       R21 R21 K32 ["MultiPlayersModeUtils"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETTABLEKS                       R22 R0 K6 ["Components"]
      145 GETTABLEKS                       R22 R22 K28 ["Contexts"]
      147 GETTABLEKS                       R22 R22 K33 ["OngoingAcpPromptContext"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETTABLEKS                       R23 R0 K11 ["Parent"]
      154 GETTABLEKS                       R23 R23 K34 ["React"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K5 [require]
      159 GETTABLEKS                       R24 R0 K11 ["Parent"]
      161 GETTABLEKS                       R24 R24 K35 ["ReactUtils"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K5 [require]
      166 GETTABLEKS                       R25 R0 K6 ["Components"]
      168 GETTABLEKS                       R25 R25 K36 ["ServerManagementDropdown"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K5 [require]
      173 GETTABLEKS                       R26 R0 K6 ["Components"]
      175 GETTABLEKS                       R26 R26 K28 ["Contexts"]
      177 GETTABLEKS                       R26 R26 K37 ["SessionIdContext"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K6 ["Components"]
      184 GETTABLEKS                       R27 R27 K38 ["SlashCommandMenu"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K9 ["Util"]
      191 GETTABLEKS                       R28 R28 K39 ["TestIds"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K6 ["Components"]
      198 GETTABLEKS                       R29 R29 K28 ["Contexts"]
      200 GETTABLEKS                       R29 R29 K40 ["ThreadIdContext"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K5 [require]
      205 GETTABLEKS                       R30 R0 K41 ["Resources"]
      207 GETTABLEKS                       R30 R30 K42 ["Localization"]
      209 GETTABLEKS                       R30 R30 K43 ["Translator"]
      211 CALL                             R29 1 1
      212 GETIMPORT                        R30 K5 [require]
      214 GETTABLEKS                       R31 R0 K44 ["Types"]
      216 CALL                             R30 1 1
      217 GETIMPORT                        R31 K5 [require]
      219 GETTABLEKS                       R32 R0 K6 ["Components"]
      221 GETTABLEKS                       R32 R32 K45 ["UIToolRegistry"]
      223 CALL                             R31 1 1
      224 GETIMPORT                        R32 K5 [require]
      226 GETTABLEKS                       R33 R0 K6 ["Components"]
      228 GETTABLEKS                       R33 R33 K28 ["Contexts"]
      230 GETTABLEKS                       R33 R33 K46 ["WindowInputContext"]
      232 CALL                             R32 1 1
      233 GETIMPORT                        R33 K5 [require]
      235 GETTABLEKS                       R34 R0 K9 ["Util"]
      237 GETTABLEKS                       R34 R34 K47 ["getToggleGenerationInputFunc"]
      239 CALL                             R33 1 1
      240 GETIMPORT                        R34 K5 [require]
      242 GETTABLEKS                       R35 R0 K48 ["Hooks"]
      244 GETTABLEKS                       R35 R35 K49 ["useAssistantMode"]
      246 CALL                             R34 1 1
      247 GETIMPORT                        R35 K5 [require]
      249 GETTABLEKS                       R36 R0 K48 ["Hooks"]
      251 GETTABLEKS                       R36 R36 K50 ["useClearConversation"]
      253 CALL                             R35 1 1
      254 GETIMPORT                        R36 K5 [require]
      256 GETTABLEKS                       R37 R0 K48 ["Hooks"]
      258 GETTABLEKS                       R37 R37 K51 ["useCurrentAssistantMessageId"]
      260 CALL                             R36 1 1
      261 GETIMPORT                        R37 K5 [require]
      263 GETTABLEKS                       R38 R0 K48 ["Hooks"]
      265 GETTABLEKS                       R38 R38 K52 ["useCurrentThread"]
      267 CALL                             R37 1 1
      268 GETIMPORT                        R38 K5 [require]
      270 GETTABLEKS                       R39 R0 K48 ["Hooks"]
      272 GETTABLEKS                       R39 R39 K53 ["useEventConnection"]
      274 CALL                             R38 1 1
      275 GETIMPORT                        R39 K5 [require]
      277 GETTABLEKS                       R40 R0 K48 ["Hooks"]
      279 GETTABLEKS                       R40 R40 K54 ["useLLMCancelSession"]
      281 CALL                             R39 1 1
      282 GETIMPORT                        R40 K5 [require]
      284 GETTABLEKS                       R41 R0 K48 ["Hooks"]
      286 GETTABLEKS                       R41 R41 K55 ["useSendMessage"]
      288 CALL                             R40 1 1
      289 GETTABLEKS                       R41 R18 K56 ["InputDisabledReasons"]
      291 GETTABLEKS                       R42 R12 K57 ["IconButton"]
      293 GETTABLEKS                       R43 R12 K58 ["View"]
      295 GETTABLEKS                       R44 R23 K59 ["createNextOrder"]
      297 GETTABLEKS                       R45 R22 K60 ["createElement"]
      299 DUPCLOSURE                       R46 K61 [PROTO_5]
      300 CAPTURE                          VAL R22
      301 CAPTURE                          VAL R28
      302 CAPTURE                          VAL R11
      303 CAPTURE                          VAL R4
      304 CAPTURE                          VAL R32
      305 CAPTURE                          VAL R38
      306 DUPCLOSURE                       R47 K62 [PROTO_14]
      307 CAPTURE                          VAL R12
      308 CAPTURE                          VAL R22
      309 CAPTURE                          VAL R45
      310 CAPTURE                          VAL R4
      311 CAPTURE                          VAL R6
      312 DUPCLOSURE                       R48 K63 [PROTO_16]
      313 CAPTURE                          VAL R22
      314 CAPTURE                          VAL R28
      315 DUPCLOSURE                       R49 K64 [PROTO_50]
      316 CAPTURE                          VAL R39
      317 CAPTURE                          VAL R22
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R18
      320 CAPTURE                          VAL R35
      321 CAPTURE                          VAL R25
      322 CAPTURE                          VAL R36
      323 CAPTURE                          VAL R37
      324 CAPTURE                          VAL R34
      325 CAPTURE                          VAL R48
      326 CAPTURE                          VAL R11
      327 CAPTURE                          VAL R7
      328 CAPTURE                          VAL R19
      329 CAPTURE                          VAL R16
      330 CAPTURE                          VAL R40
      331 CAPTURE                          VAL R33
      332 CAPTURE                          VAL R29
      333 CAPTURE                          VAL R46
      334 CAPTURE                          VAL R31
      335 CAPTURE                          VAL R9
      336 CAPTURE                          VAL R6
      337 CAPTURE                          VAL R13
      338 CAPTURE                          VAL R14
      339 CAPTURE                          VAL R20
      340 CAPTURE                          VAL R8
      341 CAPTURE                          VAL R3
      342 CAPTURE                          VAL R41
      343 CAPTURE                          VAL R44
      344 CAPTURE                          VAL R45
      345 CAPTURE                          VAL R43
      346 CAPTURE                          VAL R27
      347 CAPTURE                          VAL R26
      348 CAPTURE                          VAL R2
      349 CAPTURE                          VAL R47
      350 CAPTURE                          VAL R15
      351 CAPTURE                          VAL R24
      352 CAPTURE                          VAL R1
      353 CAPTURE                          VAL R42
      354 CAPTURE                          VAL R12
      355 CAPTURE                          VAL R5
      356 CAPTURE                          VAL R17
      357 RETURN                           R49 1
