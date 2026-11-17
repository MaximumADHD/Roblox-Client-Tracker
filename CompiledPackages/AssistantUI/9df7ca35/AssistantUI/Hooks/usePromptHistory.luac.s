PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["messages"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETTABLEKS                       R2 R0 K2 ["messageCountLoaded"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K0 ["current"]
       16 GETTABLEKS                       R3 R3 K3 ["key"]
       18 JUMPIFNOTEQ                      R3 R1 ; [+8]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 GETTABLEKS                       R3 R3 K4 ["loaded"]
       25 JUMPIFEQ                         R3 R2 ; [+21]
       27 GETUPVAL                         R3 1
       28 DUPTABLE                         R4 K6 [{"key", "loaded", "list"}]
       29 SETTABLEKS                       R1 R4 K3 ["key"]
       31 SETTABLEKS                       R2 R4 K4 ["loaded"]
       33 JUMPIFNOT                        R0 ; [+7]
       34 GETUPVAL                         R5 2
       35 MOVE                             R6 R0
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K7 ["FIntMCPAssistantMaxPromptHistory"]
       39 CALL                             R5 2 1
       40 JUMP                             ; [+2]
       41 NEWTABLE                         R5 0 0
       43 SETTABLEKS                       R5 R4 K5 ["list"]
       45 SETTABLEKS                       R4 R3 K0 ["current"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K0 ["current"]
       50 GETTABLEKS                       R3 R3 K5 ["list"]
       52 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 RETURN                           R0 0

PROTO_2:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["current"]
        5 GETTABLE                         R3 R2 R0
        6 JUMPIFNOTEQKNIL                  R3 ; [+9]
        8 JUMPIFNOTEQKN                    R0 K1 [0] ; [+5]
       10 LOADN                            R5 0
       11 GETTABLE                         R4 R2 R5
       12 ORK                              R3 R4 K2 [""]
       13 JUMP                             ; [+1]
       14 GETTABLE                         R3 R1 R0
       15 SETTABLE                         R3 R2 R0
       16 GETUPVAL                         R3 2
       17 SETTABLEKS                       R0 R3 K0 ["current"]
       19 GETUPVAL                         R3 3
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K0 ["current"]
       23 GETUPVAL                         R3 4
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K0 ["current"]
       27 GETTABLE                         R3 R2 R0
       28 GETUPVAL                         R4 5
       29 LENGTH                           R6 R3
       30 ADDK                             R5 R6 K3 [1]
       31 SETTABLEKS                       R5 R4 K0 ["current"]
       33 GETUPVAL                         R4 6
       34 MOVE                             R5 R3
       35 CALL                             R4 1 0
       36 GETUPVAL                         R4 7
       37 DUPCLOSURE                       R5 K4 [PROTO_2]
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 NEWTABLE                         R2 0 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["current"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       16 LOADN                            R8 0
       17 JUMP                             ; [+1]
       18 ADD                              R8 R6 R0
       19 SETTABLE                         R7 R2 R8
       20 FORGLOOP                         R3 2 ; [-7]
       22 GETUPVAL                         R3 1
       23 SETTABLEKS                       R2 R3 K0 ["current"]
       25 JUMPIFEQKN                       R1 K1 [0] ; [+5]
       27 GETUPVAL                         R3 0
       28 ADD                              R4 R1 R0
       29 SETTABLEKS                       R4 R3 K0 ["current"]
       31 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 LENGTH                           R3 R2
        9 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R3 2
       14 SETTABLEKS                       R2 R3 K0 ["current"]
       16 LENGTH                           R4 R2
       17 ADDK                             R3 R4 K2 [1]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K0 ["current"]
       21 LOADNIL                          R5
       22 JUMPIFNOT                        R0 ; [+14]
       23 JUMPIFNOTEQKNIL                  R4 ; [+10]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K0 ["current"]
       28 LOADN                            R7 0
       29 GETTABLEKS                       R8 R1 K3 ["Text"]
       31 SETTABLE                         R8 R6 R7
       32 LENGTH                           R5 R2
       33 JUMP                             ; [+9]
       34 SUBK                             R6 R4 K2 [1]
       35 MOD                              R5 R6 R3
       36 JUMP                             ; [+6]
       37 JUMPIFNOTEQKNIL                  R4 ; [+3]
       39 LOADB                            R6 0
       40 RETURN                           R6 1
       41 ADDK                             R6 R4 K2 [1]
       42 MOD                              R5 R6 R3
       43 LOADB                            R8 0
       44 NAMECALL                         R6 R1 K4 ["ReleaseFocus"]
       46 CALL                             R6 2 0
       47 GETUPVAL                         R6 5
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 GETIMPORT                        R6 K7 [task.wait]
       52 CALL                             R6 0 0
       53 NAMECALL                         R6 R1 K8 ["CaptureFocus"]
       55 CALL                             R6 1 0
       56 LOADB                            R6 1
       57 RETURN                           R6 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQKN                       R1 K1 [0] ; [+2]
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["current"]
       11 LOADN                            R3 1
       12 GETTABLEKS                       R6 R0 K3 ["Text"]
       14 LENGTH                           R5 R6
       15 ADDK                             R4 R5 K2 [1]
       16 FASTCALL                         MATH_CLAMP ; [+2]
       17 GETIMPORT                        R1 K6 [math.clamp]
       19 CALL                             R1 3 1
       20 SETTABLEKS                       R1 R0 K7 ["CursorPosition"]
       22 GETUPVAL                         R2 3
       23 SETTABLEKS                       R1 R2 K0 ["current"]
       25 GETUPVAL                         R2 4
       26 SETTABLEKS                       R1 R2 K0 ["current"]
       28 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R1 1
        1 JUMPIFNOTLT                      R0 R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R0 R1 K0 ["current"]
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R1 R2 K0 ["current"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 SETTABLE                         R0 R2 R1
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 GETUPVAL                         R1 1
        8 JUMPIFEQ                         R0 R1 ; [+9]
       10 GETUPVAL                         R1 2
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 3
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K0 ["current"]
       21 JUMPIFNOTEQKNIL                  R1 ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K0 ["current"]
       27 GETUPVAL                         R2 5
       28 CALL                             R2 0 1
       29 GETUPVAL                         R3 3
       30 SETTABLEKS                       R2 R3 K0 ["current"]
       32 GETUPVAL                         R3 6
       33 GETTABLEKS                       R3 R3 K1 ["reconcile"]
       35 MOVE                             R4 R1
       36 MOVE                             R5 R2
       37 CALL                             R3 2 1
       38 GETTABLEKS                       R4 R3 K2 ["kind"]
       40 GETUPVAL                         R5 6
       41 GETTABLEKS                       R5 R5 K3 ["Kind"]
       43 GETTABLEKS                       R5 R5 K4 ["Reset"]
       45 JUMPIFNOTEQ                      R4 R5 ; [+4]
       47 GETUPVAL                         R4 2
       48 CALL                             R4 0 0
       49 RETURN                           R0 0
       50 GETTABLEKS                       R4 R3 K2 ["kind"]
       52 GETUPVAL                         R5 6
       53 GETTABLEKS                       R5 R5 K3 ["Kind"]
       55 GETTABLEKS                       R5 R5 K5 ["Shift"]
       57 JUMPIFNOTEQ                      R4 R5 ; [+5]
       59 GETUPVAL                         R4 7
       60 GETTABLEKS                       R5 R3 K6 ["by"]
       62 CALL                             R4 1 0
       63 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.4]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K4 ["current"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K4 ["current"]
       10 GETUPVAL                         R2 2
       11 JUMPIFNOTEQ                      R1 R2 ; [+48]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K4 ["current"]
       16 GETUPVAL                         R2 4
       17 JUMPIFNOTEQ                      R1 R2 ; [+42]
       19 GETUPVAL                         R1 5
       20 GETTABLEKS                       R1 R1 K4 ["current"]
       22 JUMPIFNOT                        R1 ; [+37]
       23 NAMECALL                         R2 R1 K5 ["IsFocused"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R2 ; [+33]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K4 ["current"]
       30 JUMPIFEQ                         R3 R0 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R0 R3 K4 ["current"]
       37 GETUPVAL                         R4 6
       38 JUMPIFNOT                        R4 ; [+4]
       39 GETUPVAL                         R3 7
       40 GETTABLEKS                       R3 R3 K4 ["current"]
       42 JUMP                             ; [+3]
       43 GETUPVAL                         R3 8
       44 GETTABLEKS                       R3 R3 K4 ["current"]
       46 JUMPIFNOT                        R2 ; [+8]
       47 JUMPIFNOT                        R3 ; [+7]
       48 GETUPVAL                         R4 9
       49 GETUPVAL                         R5 6
       50 CALL                             R4 1 1
       51 JUMPIFNOT                        R4 ; [+8]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R0 R4 K4 ["current"]
       55 GETIMPORT                        R4 K2 [task.wait]
       57 LOADK                            R5 K6 [0.05]
       58 CALL                             R4 1 0
       59 JUMPBACK                         ; [-53]
       60 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 NAMECALL                         R2 R1 K1 ["IsFocused"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K2 ["UserInputType"]
       12 GETIMPORT                        R3 K5 [Enum.UserInputType.Keyboard]
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R2 R0 K6 ["KeyCode"]
       19 GETIMPORT                        R3 K8 [Enum.KeyCode.Up]
       21 JUMPIFEQ                         R2 R3 ; [+6]
       23 GETIMPORT                        R3 K10 [Enum.KeyCode.Down]
       25 JUMPIFEQ                         R2 R3 ; [+2]
       27 RETURN                           R0 0
       28 GETIMPORT                        R5 K13 [Enum.ModifierKey.Shift]
       30 NAMECALL                         R3 R0 K14 ["IsModifierKeyDown"]
       32 CALL                             R3 2 1
       33 JUMPIF                           R3 ; [+18]
       34 GETIMPORT                        R5 K16 [Enum.ModifierKey.Ctrl]
       36 NAMECALL                         R3 R0 K14 ["IsModifierKeyDown"]
       38 CALL                             R3 2 1
       39 JUMPIF                           R3 ; [+12]
       40 GETIMPORT                        R5 K18 [Enum.ModifierKey.Alt]
       42 NAMECALL                         R3 R0 K14 ["IsModifierKeyDown"]
       44 CALL                             R3 2 1
       45 JUMPIF                           R3 ; [+6]
       46 GETIMPORT                        R5 K20 [Enum.ModifierKey.Meta]
       48 NAMECALL                         R3 R0 K14 ["IsModifierKeyDown"]
       50 CALL                             R3 2 1
       51 JUMPIFNOT                        R3 ; [+1]
       52 RETURN                           R0 0
       53 GETUPVAL                         R4 1
       54 CALL                             R4 0 1
       55 LENGTH                           R3 R4
       56 JUMPIFNOTEQKN                    R3 K21 [0] ; [+2]
       58 RETURN                           R0 0
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K0 ["current"]
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R5 R5 K0 ["current"]
       65 JUMPIFNOTEQ                      R4 R5 ; [+2]
       67 LOADB                            R3 0 +1
       68 LOADB                            R3 1
       69 GETIMPORT                        R5 K8 [Enum.KeyCode.Up]
       71 JUMPIFEQ                         R2 R5 ; [+2]
       73 LOADB                            R4 0 +1
       74 LOADB                            R4 1
       75 GETUPVAL                         R5 4
       76 SETTABLEKS                       R2 R5 K0 ["current"]
       78 JUMPIF                           R3 ; [+5]
       79 GETUPVAL                         R5 5
       80 MOVE                             R6 R4
       81 CALL                             R5 1 1
       82 JUMPIF                           R5 ; [+1]
       83 RETURN                           R0 0
       84 GETUPVAL                         R5 6
       85 GETTABLEKS                       R6 R5 K0 ["current"]
       87 ADDK                             R6 R6 K22 [1]
       88 SETTABLEKS                       R6 R5 K0 ["current"]
       90 GETUPVAL                         R5 6
       91 GETTABLEKS                       R5 R5 K0 ["current"]
       93 GETIMPORT                        R6 K25 [task.spawn]
       95 NEWCLOSURE                       R7 P0
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          VAL R2
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          VAL R5
      101 CAPTURE                          UPVAL U0
      102 CAPTURE                          VAL R4
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          UPVAL U8
      105 CAPTURE                          UPVAL U5
      106 CALL                             R6 1 0
      107 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R1 R2 ; [+12]
        6 GETTABLEKS                       R1 R0 K4 ["KeyCode"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["current"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+5]
       13 GETUPVAL                         R1 0
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K5 ["current"]
       17 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R0 K4 [{"onUserEdit", "onCursorPositionChanged", "resetNavigation", "onCaretEdgeChanged"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["onUserEdit"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["onCursorPositionChanged"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["resetNavigation"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["onCaretEdgeChanged"]
       13 RETURN                           R0 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["textBoxRef"]
        2 GETTABLEKS                       R2 R0 K1 ["setInputText"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["useRef"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["useRef"]
       12 NEWTABLE                         R5 0 0
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["useRef"]
       18 LOADN                            R6 -1
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K2 ["useRef"]
       23 LOADN                            R7 -1
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K2 ["useRef"]
       28 LOADB                            R8 1
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K2 ["useRef"]
       33 LOADB                            R9 1
       34 CALL                             R8 1 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K2 ["useRef"]
       38 LOADN                            R10 1
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K2 ["useRef"]
       43 LOADN                            R11 0
       44 CALL                             R10 1 1
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K2 ["useRef"]
       48 LOADNIL                          R12
       49 CALL                             R11 1 1
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K2 ["useRef"]
       53 NEWTABLE                         R13 0 0
       55 CALL                             R12 1 1
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R13 R13 K3 ["useState"]
       59 LOADN                            R14 0
       60 CALL                             R13 1 2
       61 GETUPVAL                         R15 1
       62 CALL                             R15 0 1
       63 JUMPIFNOT                        R15 ; [+3]
       64 GETTABLEKS                       R16 R15 K4 ["threadId"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R16
       68 JUMPIFNOT                        R15 ; [+3]
       69 GETTABLEKS                       R17 R15 K5 ["messages"]
       71 JUMP                             ; [+1]
       72 LOADB                            R17 0
       73 JUMPIFNOT                        R15 ; [+3]
       74 GETTABLEKS                       R18 R15 K6 ["messageCountLoaded"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R18
       78 GETUPVAL                         R19 0
       79 GETTABLEKS                       R19 R19 K2 ["useRef"]
       81 MOVE                             R20 R15
       82 CALL                             R19 1 1
       83 SETTABLEKS                       R15 R19 K7 ["current"]
       85 GETUPVAL                         R20 0
       86 GETTABLEKS                       R20 R20 K2 ["useRef"]
       88 DUPTABLE                         R21 K12 [{["key"] = , ["loaded"] = , ["list"]}]
       89 NEWTABLE                         R22 0 0
       91 SETTABLEKS                       R22 R21 K11 ["list"]
       93 CALL                             R20 1 1
       94 GETUPVAL                         R21 0
       95 GETTABLEKS                       R21 R21 K13 ["useCallback"]
       97 NEWCLOSURE                       R22 P0
       98 CAPTURE                          VAL R19
       99 CAPTURE                          VAL R20
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          UPVAL U3
      102 NEWTABLE                         R23 0 0
      104 CALL                             R21 2 1
      105 GETUPVAL                         R22 0
      106 GETTABLEKS                       R22 R22 K13 ["useCallback"]
      108 NEWCLOSURE                       R23 P1
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R4
      111 NEWTABLE                         R24 0 0
      113 CALL                             R22 2 1
      114 GETUPVAL                         R23 0
      115 GETTABLEKS                       R23 R23 K13 ["useCallback"]
      117 NEWCLOSURE                       R24 P2
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R14
      126 NEWTABLE                         R25 0 2
      128 MOVE                             R26 R2
      129 MOVE                             R27 R21
      130 SETLIST                          R25 R26 2 [1]
      132 CALL                             R23 2 1
      133 GETUPVAL                         R24 0
      134 GETTABLEKS                       R24 R24 K13 ["useCallback"]
      136 NEWCLOSURE                       R25 P3
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R4
      139 NEWTABLE                         R26 0 0
      141 CALL                             R24 2 1
      142 GETUPVAL                         R25 0
      143 GETTABLEKS                       R25 R25 K13 ["useCallback"]
      145 NEWCLOSURE                       R26 P4
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R23
      152 NEWTABLE                         R27 0 3
      154 MOVE                             R28 R1
      155 MOVE                             R29 R23
      156 MOVE                             R30 R21
      157 SETLIST                          R27 R28 3 [1]
      159 CALL                             R25 2 1
      160 GETUPVAL                         R26 0
      161 GETTABLEKS                       R26 R26 K14 ["useEffect"]
      163 NEWCLOSURE                       R27 P5
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R6
      169 NEWTABLE                         R28 0 2
      171 MOVE                             R29 R1
      172 MOVE                             R30 R13
      173 SETLIST                          R28 R29 2 [1]
      175 CALL                             R26 2 0
      176 GETUPVAL                         R26 0
      177 GETTABLEKS                       R26 R26 K13 ["useCallback"]
      179 NEWCLOSURE                       R27 P6
      180 CAPTURE                          VAL R5
      181 NEWTABLE                         R28 0 0
      183 CALL                             R26 2 1
      184 GETUPVAL                         R27 0
      185 GETTABLEKS                       R27 R27 K13 ["useCallback"]
      187 NEWCLOSURE                       R28 P7
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R8
      190 NEWTABLE                         R29 0 0
      192 CALL                             R27 2 1
      193 GETUPVAL                         R28 4
      194 GETUPVAL                         R29 5
      195 GETTABLEKS                       R29 R29 K15 ["Heartbeat"]
      197 NEWCLOSURE                       R30 P8
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R5
      200 NEWTABLE                         R31 0 0
      202 CALL                             R28 3 0
      203 GETUPVAL                         R28 0
      204 GETTABLEKS                       R28 R28 K13 ["useCallback"]
      206 NEWCLOSURE                       R29 P9
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R4
      209 NEWTABLE                         R30 0 0
      211 CALL                             R28 2 1
      212 GETUPVAL                         R29 0
      213 GETTABLEKS                       R29 R29 K2 ["useRef"]
      215 MOVE                             R30 R16
      216 CALL                             R29 1 1
      217 GETUPVAL                         R30 0
      218 GETTABLEKS                       R30 R30 K14 ["useEffect"]
      220 NEWCLOSURE                       R31 P10
      221 CAPTURE                          VAL R29
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R21
      227 CAPTURE                          UPVAL U6
      228 CAPTURE                          VAL R24
      229 NEWTABLE                         R32 0 6
      231 MOVE                             R33 R17
      232 MOVE                             R34 R18
      233 MOVE                             R35 R16
      234 MOVE                             R36 R22
      235 MOVE                             R37 R24
      236 MOVE                             R38 R21
      237 SETLIST                          R32 R33 6 [1]
      239 CALL                             R30 2 0
      240 GETUPVAL                         R30 0
      241 GETTABLEKS                       R30 R30 K16 ["useContext"]
      243 GETUPVAL                         R31 7
      244 GETTABLEKS                       R31 R31 K17 ["Context"]
      246 CALL                             R30 1 1
      247 GETUPVAL                         R31 4
      248 GETTABLEKS                       R32 R30 K18 ["inputBeganSignal"]
      250 NEWCLOSURE                       R33 P11
      251 CAPTURE                          VAL R1
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R5
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R11
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R10
      258 CAPTURE                          VAL R7
      259 CAPTURE                          VAL R8
      260 NEWTABLE                         R34 0 3
      262 MOVE                             R35 R1
      263 MOVE                             R36 R25
      264 MOVE                             R37 R21
      265 SETLIST                          R34 R35 3 [1]
      267 CALL                             R31 3 0
      268 GETUPVAL                         R31 4
      269 GETTABLEKS                       R32 R30 K19 ["inputEndedSignal"]
      271 NEWCLOSURE                       R33 P12
      272 CAPTURE                          VAL R11
      273 NEWTABLE                         R34 0 0
      275 CALL                             R31 3 0
      276 GETUPVAL                         R31 0
      277 GETTABLEKS                       R31 R31 K20 ["useMemo"]
      279 NEWCLOSURE                       R32 P13
      280 CAPTURE                          VAL R28
      281 CAPTURE                          VAL R26
      282 CAPTURE                          VAL R22
      283 CAPTURE                          VAL R27
      284 NEWTABLE                         R33 0 4
      286 MOVE                             R34 R28
      287 MOVE                             R35 R26
      288 MOVE                             R36 R22
      289 MOVE                             R37 R27
      290 SETLIST                          R33 R34 4 [1]
      292 CALL                             R31 2 1
      293 RETURN                           R31 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Flags"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Components"]
       29 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       31 GETTABLEKS                       R6 R6 K15 ["WindowInputContext"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R0 K16 ["Util"]
       38 GETTABLEKS                       R7 R7 K17 ["derivePromptHistory"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K10 [require]
       43 GETTABLEKS                       R8 R0 K16 ["Util"]
       45 GETTABLEKS                       R8 R8 K18 ["reconcilePromptHistory"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K10 [require]
       50 GETTABLEKS                       R9 R0 K19 ["Hooks"]
       52 GETTABLEKS                       R9 R9 K20 ["useCurrentThread"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K10 [require]
       57 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       59 GETTABLEKS                       R10 R10 K21 ["useEventConnection"]
       61 CALL                             R9 1 1
       62 DUPCLOSURE                       R10 K22 [PROTO_16]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 RETURN                           R10 1
