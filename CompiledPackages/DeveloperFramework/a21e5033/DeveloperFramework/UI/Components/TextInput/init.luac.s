PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["MaxLength"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETIMPORT                        R2 K3 [utf8.len]
        5 GETTABLEKS                       R3 R0 K4 ["Text"]
        7 CALL                             R2 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 GETTABLEKS                       R4 R0 K0 ["MaxLength"]
       12 JUMPIFNOT                        R4 ; [+8]
       13 LOADK                            R3 K5 ["%d/%d"]
       14 MOVE                             R5 R2
       15 GETTABLEKS                       R6 R0 K0 ["MaxLength"]
       17 NAMECALL                         R3 R3 K6 ["format"]
       19 CALL                             R3 3 1
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R3 R0 K7 ["BottomText"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R5 R1 K8 ["errorText"]
       26 GETTABLEKS                       R6 R0 K9 ["ErrorText"]
       28 MOVE                             R7 R3
       29 CALL                             R4 3 -1
       30 RETURN                           R4 -1

PROTO_1:
        0 NOT                              R1 R0
        1 JUMPIF                           R1 ; [+5]
        2 LENGTH                           R2 R0
        3 JUMPIFEQKN                       R2 K0 [0] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 1
        2 RETURN                           R1 1
        3 GETIMPORT                        R2 K1 [next]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 JUMPIFEQKNIL                     R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unmounted"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 DUPTABLE                         R2 K2 [{"isHovered"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K1 ["isHovered"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unmounted"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 DUPTABLE                         R2 K2 [{"isHovered"}]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K1 ["isHovered"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 LOADN                            R3 0
        3 JUMPIFNOTLT                      R3 R2 ; [+14]
        5 GETTABLEKS                       R2 R0 K0 ["autocompleteSelectedIndex"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETTABLEKS                       R2 R0 K0 ["autocompleteSelectedIndex"]
       10 LOADN                            R3 1
       11 GETUPVAL                         R5 0
       12 LENGTH                           R4 R5
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R1 K3 [math.clamp]
       16 CALL                             R1 3 1
       17 JUMP                             ; [+3]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K4 ["None"]
       21 DUPTABLE                         R2 K6 [{"autocompleteItems", "autocompleteSelectedIndex"}]
       22 GETUPVAL                         R3 0
       23 SETTABLEKS                       R3 R2 K5 ["autocompleteItems"]
       25 SETTABLEKS                       R1 R2 K0 ["autocompleteSelectedIndex"]
       27 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["GetAutocompleteItems"]
        5 JUMPIFNOT                        R1 ; [+26]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K3 ["autocompleteItemSelectTime"]
        9 ADDK                             R1 R2 K2 [0.25]
       10 GETIMPORT                        R2 K6 [os.time]
       12 CALL                             R2 0 1
       13 JUMPIFNOTLT                      R1 R2 ; [+18]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["props"]
       18 GETTABLEKS                       R1 R2 K1 ["GetAutocompleteItems"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 JUMPIF                           R1 ; [+2]
       23 NEWTABLE                         R1 0 0
       25 GETUPVAL                         R2 0
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U1
       29 NAMECALL                         R2 R2 K7 ["setState"]
       31 CALL                             R2 2 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unmounted"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 DUPTABLE                         R2 K2 [{"isFocused"}]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K1 ["isFocused"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K4 ["props"]
       16 GETTABLEKS                       R0 R1 K5 ["OnFocusLost"]
       18 JUMPIFNOT                        R0 ; [+34]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K6 ["textBoxRef"]
       22 GETTABLEKS                       R0 R1 K7 ["current"]
       24 GETUPVAL                         R1 1
       25 JUMPIFNOT                        R1 ; [+15]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K4 ["props"]
       29 GETTABLEKS                       R1 R2 K5 ["OnFocusLost"]
       31 JUMPIFNOT                        R0 ; [+5]
       32 LOADK                            R4 K8 ["Text"]
       33 NAMECALL                         R2 R0 K9 ["GetStyled"]
       35 CALL                             R2 2 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R2
       38 LOADB                            R3 0
       39 CALL                             R1 2 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R2 R3 K4 ["props"]
       44 GETTABLEKS                       R1 R2 K5 ["OnFocusLost"]
       46 JUMPIFNOT                        R0 ; [+3]
       47 GETTABLEKS                       R2 R0 K8 ["Text"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R2
       51 LOADB                            R3 0
       52 CALL                             R1 2 0
       53 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["textBoxRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["props"]
       10 GETTABLEKS                       R2 R3 K3 ["OnFormatText"]
       12 JUMPIFNOT                        R2 ; [+14]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K2 ["props"]
       16 GETTABLEKS                       R2 R3 K3 ["OnFormatText"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 JUMPIFEQKNIL                     R2 ; [+8]
       22 JUMPIFEQ                         R2 R0 ; [+6]
       24 SETTABLEKS                       R2 R1 K4 ["Text"]
       26 JUMP                             ; [+2]
       27 SETTABLEKS                       R0 R1 K4 ["Text"]
       29 GETUPVAL                         R2 0
       30 MOVE                             R4 R0
       31 NAMECALL                         R2 R2 K5 ["_validateText"]
       33 CALL                             R2 2 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K2 ["props"]
       37 GETTABLEKS                       R3 R4 K6 ["OnTextChanged"]
       39 JUMPIFNOT                        R3 ; [+8]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K2 ["props"]
       43 GETTABLEKS                       R3 R4 K6 ["OnTextChanged"]
       45 MOVE                             R4 R0
       46 MOVE                             R5 R2
       47 CALL                             R3 2 0
       48 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unmounted"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 DUPTABLE                         R2 K2 [{"isFocused"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K1 ["isFocused"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K4 ["props"]
       16 GETTABLEKS                       R0 R1 K5 ["OnFocused"]
       18 JUMPIFNOT                        R0 ; [+6]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K4 ["props"]
       22 GETTABLEKS                       R0 R1 K5 ["OnFocused"]
       24 CALL                             R0 0 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K6 ["textBoxRef"]
       28 GETTABLEKS                       R0 R1 K7 ["current"]
       30 JUMPIFNOT                        R0 ; [+13]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R1 R2 K8 ["updateAutocomplete"]
       34 GETUPVAL                         R3 1
       35 JUMPIFNOT                        R3 ; [+5]
       36 LOADK                            R4 K9 ["Text"]
       37 NAMECALL                         R2 R0 K10 ["GetStyled"]
       39 CALL                             R2 2 1
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R2 R0 K9 ["Text"]
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["isFocused"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+16]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["UserInputType"]
       11 GETIMPORT                        R2 K4 [Enum.UserInputType.Keyboard]
       13 JUMPIFEQ                         R1 R2 ; [+10]
       15 GETTABLEKS                       R2 R0 K5 ["autocompleteItems"]
       17 LENGTH                           R1 R2
       18 LOADN                            R2 1
       19 JUMPIFNOTLE                      R2 R1 ; [+4]
       21 NEWTABLE                         R1 0 0
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 1
       25 JUMPIFNOT                        R1 ; [+27]
       26 LOADNIL                          R1
       27 GETTABLEKS                       R2 R0 K6 ["autocompleteSelectedIndex"]
       29 GETTABLEKS                       R4 R0 K5 ["autocompleteItems"]
       31 LENGTH                           R3 R4
       32 JUMPIFNOTEQKN                    R3 K7 [1] ; [+5]
       34 GETTABLEKS                       R3 R0 K5 ["autocompleteItems"]
       36 GETTABLEN                        R1 R3 1
       37 JUMP                             ; [+10]
       38 GETTABLEKS                       R4 R0 K5 ["autocompleteItems"]
       40 LENGTH                           R3 R4
       41 LOADN                            R4 1
       42 JUMPIFNOTLT                      R4 R3 ; [+5]
       44 JUMPIFNOT                        R2 ; [+3]
       45 GETTABLEKS                       R3 R0 K5 ["autocompleteItems"]
       47 GETTABLE                         R1 R3 R2
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R3 R4 K8 ["autocompleteItemSelected"]
       51 MOVE                             R4 R1
       52 CALL                             R3 1 0
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R2 R3 K9 ["props"]
       56 GETTABLEKS                       R1 R2 K10 ["OnFocusLost"]
       58 JUMPIFNOT                        R1 ; [+34]
       59 GETUPVAL                         R3 2
       60 GETTABLEKS                       R2 R3 K11 ["textBoxRef"]
       62 GETTABLEKS                       R1 R2 K12 ["current"]
       64 GETUPVAL                         R2 3
       65 JUMPIFNOT                        R2 ; [+15]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R3 R4 K9 ["props"]
       69 GETTABLEKS                       R2 R3 K10 ["OnFocusLost"]
       71 JUMPIFNOT                        R1 ; [+5]
       72 LOADK                            R5 K13 ["Text"]
       73 NAMECALL                         R3 R1 K14 ["GetStyled"]
       75 CALL                             R3 2 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R3
       78 GETUPVAL                         R4 1
       79 CALL                             R2 2 0
       80 JUMP                             ; [+12]
       81 GETUPVAL                         R4 2
       82 GETTABLEKS                       R3 R4 K9 ["props"]
       84 GETTABLEKS                       R2 R3 K10 ["OnFocusLost"]
       86 JUMPIFNOT                        R1 ; [+3]
       87 GETTABLEKS                       R3 R1 K13 ["Text"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R3
       91 GETUPVAL                         R4 1
       92 CALL                             R2 2 0
       93 DUPTABLE                         R1 K15 [{"isFocused"}]
       94 LOADB                            R2 0
       95 SETTABLEKS                       R2 R1 K0 ["isFocused"]
       97 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["unmounted"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R3 R3 K1 ["setState"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["updateText"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["updateAutocomplete"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["textChanged"]
        5 GETTABLEKS                       R2 R0 K1 ["Value"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"autocompleteSelectedIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["autocompleteSelectedIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"autocompleteSelectedIndex"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["autocompleteSelectedIndex"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ForwardRef"]
        4 JUMPIF                           R2 ; [+4]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["createRef"]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R0 K3 ["textBoxRef"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["createRef"]
       14 CALL                             R2 0 1
       15 SETTABLEKS                       R2 R0 K4 ["scrollingFrameRef"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K2 ["createRef"]
       20 CALL                             R2 0 1
       21 SETTABLEKS                       R2 R0 K5 ["ref"]
       23 DUPTABLE                         R2 K11 [{"isError", "isFocused", "isHovered", "autocompleteItems", "autocompleteSelectedIndex"}]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K6 ["isError"]
       27 LOADB                            R3 0
       28 SETTABLEKS                       R3 R2 K7 ["isFocused"]
       30 LOADB                            R3 0
       31 SETTABLEKS                       R3 R2 K8 ["isHovered"]
       33 NEWTABLE                         R3 0 0
       35 SETTABLEKS                       R3 R2 K9 ["autocompleteItems"]
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R2 K10 ["autocompleteSelectedIndex"]
       40 SETTABLEKS                       R2 R0 K12 ["state"]
       42 GETUPVAL                         R2 1
       43 JUMPIF                           R2 ; [+8]
       44 NEWCLOSURE                       R2 P0
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R2 R0 K13 ["mouseEnter"]
       48 NEWCLOSURE                       R2 P1
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R2 R0 K14 ["mouseLeave"]
       52 NEWCLOSURE                       R2 P2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 SETTABLEKS                       R2 R0 K15 ["updateAutocomplete"]
       57 NEWCLOSURE                       R2 P3
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U2
       60 SETTABLEKS                       R2 R0 K16 ["onDropdownFocusLost"]
       62 NEWCLOSURE                       R2 P4
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R2 R0 K17 ["updateText"]
       66 NEWCLOSURE                       R2 P5
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U2
       69 SETTABLEKS                       R2 R0 K18 ["focused"]
       71 NEWCLOSURE                       R2 P6
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U2
       74 SETTABLEKS                       R2 R0 K19 ["focusLost"]
       76 NEWCLOSURE                       R2 P7
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R2 R0 K20 ["textChanged"]
       80 LOADN                            R2 0
       81 SETTABLEKS                       R2 R0 K21 ["autocompleteItemSelectTime"]
       83 NEWCLOSURE                       R2 P8
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R2 R0 K22 ["autocompleteItemSelected"]
       87 NEWCLOSURE                       R2 P9
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R2 R0 K23 ["autocompleteItemChanged"]
       91 NEWCLOSURE                       R2 P10
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U0
       94 SETTABLEKS                       R2 R0 K24 ["autocompleteMouseLeave"]
       96 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Tag"]
        7 GETTABLE                         R2 R1 R3
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 GETUPVAL                         R4 0
       11 JUMPIFNOT                        R4 ; [+6]
       12 GETTABLEKS                       R3 R1 K2 ["Style"]
       14 JUMPIF                           R3 ; [+5]
       15 NEWTABLE                         R3 0 0
       17 JUMP                             ; [+2]
       18 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
       20 GETUPVAL                         R4 0
       21 JUMPIFNOT                        R4 ; [+14]
       22 FASTCALL1                        TYPEOF R3 ; [+3]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K5 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+8]
       29 GETUPVAL                         R4 2
       30 MOVE                             R5 R2
       31 MOVE                             R6 R3
       32 CALL                             R4 2 1
       33 MOVE                             R2 R4
       34 NEWTABLE                         R3 0 0
       36 MOVE                             R4 R3
       37 MOVE                             R5 R2
       38 RETURN                           R4 2

PROTO_18:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+9]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R2
        4 LOADK                            R6 K0 ["Compact"]
        5 CALL                             R4 2 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 GETUPVAL                         R3 2
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 3
       10 RETURN                           R3 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+3]
       13 GETUPVAL                         R3 3
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R1 K1 ["TextSize"]
       17 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R4 R2 K0 ["CanvasPosition"]
        2 GETTABLEKS                       R3 R4 K1 ["Y"]
        4 NAMECALL                         R4 R0 K2 ["_getStyleAndTags"]
        6 CALL                             R4 1 2
        7 MOVE                             R8 R4
        8 MOVE                             R9 R5
        9 NAMECALL                         R6 R0 K3 ["_getTextSize"]
       11 CALL                             R6 3 1
       12 GETTABLEKS                       R9 R2 K5 ["AbsoluteSize"]
       14 GETTABLEKS                       R8 R9 K6 ["X"]
       16 SUBK                             R7 R8 K4 [8]
       17 GETTABLEKS                       R9 R2 K5 ["AbsoluteSize"]
       19 GETTABLEKS                       R8 R9 K1 ["Y"]
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R14 R0 K7 ["props"]
       24 GETTABLEKS                       R13 R14 K8 ["Text"]
       26 LOADN                            R14 0
       27 SUBK                             R15 R1 K9 [1]
       28 FASTCALL                         STRING_SUB ; [+2]
       29 GETIMPORT                        R12 K12 [string.sub]
       31 CALL                             R12 3 1
       32 MOVE                             R13 R6
       33 GETIMPORT                        R14 K16 [Enum.Font.SourceSans]
       35 GETIMPORT                        R15 K19 [Vector2.new]
       37 MOVE                             R16 R7
       38 LOADK                            R17 K20 [∞]
       39 CALL                             R15 2 -1
       40 NAMECALL                         R10 R10 K21 ["GetTextSize"]
       42 CALL                             R10 -1 1
       43 GETTABLEKS                       R9 R10 K1 ["Y"]
       45 ADD                              R10 R3 R6
       46 JUMPIFNOTLT                      R9 R10 ; [+3]
       48 SUB                              R10 R9 R6
       49 RETURN                           R10 1
       50 ADD                              R11 R3 R8
       51 SUB                              R10 R11 R6
       52 JUMPIFNOTLT                      R10 R9 ; [+3]
       54 SUB                              R10 R9 R8
       55 RETURN                           R10 1
       56 RETURN                           R3 1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["scrollingFrameRef"]
        4 GETTABLEKS                       R3 R4 K2 ["current"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R4 R2 K3 ["MultiLine"]
        9 JUMPIF                           R4 ; [+1]
       10 RETURN                           R0 0
       11 NAMECALL                         R4 R0 K4 ["_getStyleAndTags"]
       13 CALL                             R4 1 2
       14 MOVE                             R8 R4
       15 MOVE                             R9 R5
       16 NAMECALL                         R6 R0 K5 ["_getTextSize"]
       18 CALL                             R6 3 1
       19 GETTABLEKS                       R9 R3 K7 ["AbsoluteSize"]
       21 GETTABLEKS                       R8 R9 K8 ["X"]
       23 SUBK                             R7 R8 K6 [8]
       24 GETTABLEKS                       R9 R0 K9 ["textBoxRef"]
       26 GETTABLEKS                       R8 R9 K2 ["current"]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R11 R2 K10 ["Text"]
       31 MOVE                             R12 R6
       32 GETIMPORT                        R13 K14 [Enum.Font.SourceSans]
       34 GETIMPORT                        R14 K17 [Vector2.new]
       36 MOVE                             R15 R7
       37 LOADK                            R16 K18 [∞]
       38 CALL                             R14 2 -1
       39 NAMECALL                         R9 R9 K19 ["GetTextSize"]
       41 CALL                             R9 -1 1
       42 GETIMPORT                        R10 K21 [UDim2.new]
       44 LOADN                            R11 0
       45 LOADN                            R12 0
       46 LOADN                            R13 0
       47 GETTABLEKS                       R14 R9 K22 ["y"]
       49 CALL                             R10 4 1
       50 SETTABLEKS                       R10 R3 K23 ["CanvasSize"]
       52 GETIMPORT                        R10 K21 [UDim2.new]
       54 LOADN                            R11 1
       55 LOADN                            R12 0
       56 LOADN                            R13 0
       57 GETTABLEKS                       R16 R3 K7 ["AbsoluteSize"]
       59 GETTABLEKS                       R15 R16 K24 ["Y"]
       61 GETTABLEKS                       R16 R9 K22 ["y"]
       63 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
       65 GETIMPORT                        R14 K27 [math.max]
       67 CALL                             R14 2 1
       68 CALL                             R10 4 1
       69 SETTABLEKS                       R10 R8 K28 ["Size"]
       71 JUMPIFNOT                        R1 ; [+17]
       72 GETTABLEKS                       R10 R8 K29 ["CursorPosition"]
       74 LOADN                            R11 0
       75 JUMPIFNOTLE                      R11 R10 ; [+13]
       77 GETIMPORT                        R10 K17 [Vector2.new]
       79 LOADN                            R11 0
       80 GETTABLEKS                       R14 R8 K29 ["CursorPosition"]
       82 MOVE                             R15 R3
       83 NAMECALL                         R12 R0 K30 ["_getPositionAtIndex"]
       85 CALL                             R12 3 -1
       86 CALL                             R10 -1 1
       87 SETTABLEKS                       R10 R3 K31 ["CanvasPosition"]
       89 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["_updateScroller"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["MultiLine"]
        4 GETTABLEKS                       R4 R0 K2 ["textBoxRef"]
        6 GETTABLEKS                       R3 R4 K3 ["current"]
        8 JUMPIFNOT                        R2 ; [+12]
        9 JUMPIFNOT                        R3 ; [+11]
       10 LOADK                            R6 K4 ["CursorPosition"]
       11 NAMECALL                         R4 R3 K5 ["GetPropertyChangedSignal"]
       13 CALL                             R4 2 1
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R4 R4 K6 ["Connect"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R0 K7 ["cursorChangeSignal"]
       21 GETTABLEKS                       R4 R1 K8 ["ShouldFocus"]
       23 JUMPIFNOT                        R4 ; [+4]
       24 JUMPIFNOT                        R3 ; [+3]
       25 NAMECALL                         R4 R3 K9 ["CaptureFocus"]
       27 CALL                             R4 1 0
       28 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["unmounted"]
        3 GETTABLEKS                       R1 R0 K1 ["cursorChangeSignal"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["cursorChangeSignal"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R6 R0 K2 ["textBoxRef"]
        6 GETTABLEKS                       R5 R6 K3 ["current"]
        8 JUMPIF                           R5 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R6 R3 K4 ["ShouldFocus"]
       12 JUMPIFNOT                        R6 ; [+6]
       13 GETTABLEKS                       R6 R1 K4 ["ShouldFocus"]
       15 JUMPIF                           R6 ; [+3]
       16 NAMECALL                         R6 R5 K5 ["CaptureFocus"]
       18 CALL                             R6 1 0
       19 GETTABLEKS                       R6 R1 K6 ["OnValidateText"]
       21 GETTABLEKS                       R7 R3 K6 ["OnValidateText"]
       23 JUMPIFEQ                         R6 R7 ; [+6]
       25 GETTABLEKS                       R8 R3 K7 ["Text"]
       27 NAMECALL                         R6 R0 K8 ["_validateText"]
       29 CALL                             R6 2 0
       30 GETTABLEKS                       R6 R3 K9 ["MultiLine"]
       32 JUMPIFNOT                        R6 ; [+19]
       33 LOADB                            R7 1
       34 GETTABLEKS                       R8 R1 K7 ["Text"]
       36 GETTABLEKS                       R9 R3 K7 ["Text"]
       38 JUMPIFNOTEQ                      R8 R9 ; [+9]
       40 GETTABLEKS                       R8 R5 K10 ["CursorPosition"]
       42 GETTABLEKS                       R9 R1 K10 ["CursorPosition"]
       44 JUMPIFNOTEQ                      R8 R9 ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 MOVE                             R10 R7
       49 NAMECALL                         R8 R0 K11 ["_updateScroller"]
       51 CALL                             R8 2 0
       52 GETTABLEKS                       R7 R2 K12 ["autocompleteItems"]
       54 JUMPIFNOT                        R7 ; [+6]
       55 GETTABLEKS                       R7 R4 K12 ["autocompleteItems"]
       57 JUMPIF                           R7 ; [+3]
       58 GETTABLEKS                       R7 R0 K13 ["focusLost"]
       60 CALL                             R7 0 0
       61 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["MaxLength"]
        4 JUMPIFNOT                        R2 ; [+11]
        5 GETIMPORT                        R3 K4 [utf8.len]
        7 GETTABLEKS                       R4 R1 K5 ["Text"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R1 K1 ["MaxLength"]
       12 JUMPIFLT                         R4 R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+26]
        6 NAMECALL                         R3 R0 K2 ["_exceedsMaxLength"]
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+31]
       10 GETTABLEKS                       R3 R1 K3 ["isError"]
       12 JUMPIF                           R3 ; [+28]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["Tag"]
       17 GETTABLE                         R4 R2 R5
       18 LOADK                            R5 K5 ["Error"]
       19 CALL                             R3 2 1
       20 JUMPIF                           R3 ; [+20]
       21 GETTABLEKS                       R5 R2 K6 ["ErrorText"]
       23 NOT                              R4 R5
       24 JUMPIF                           R4 ; [+5]
       25 LENGTH                           R6 R5
       26 JUMPIFEQKN                       R6 K7 [0] ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 NOT                              R3 R4
       31 RETURN                           R3 1
       32 GETTABLEKS                       R4 R2 K8 ["StyleModifier"]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R5 R6 K5 ["Error"]
       37 JUMPIFEQ                         R4 R5 ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 RETURN                           R3 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 NAMECALL                         R3 R0 K2 ["_getStyleAndTags"]
        6 CALL                             R3 1 2
        7 GETTABLEKS                       R7 R1 K3 ["MaxLength"]
        9 JUMPIFNOT                        R7 ; [+6]
       10 GETIMPORT                        R6 K6 [utf8.len]
       12 GETTABLEKS                       R7 R1 K7 ["Text"]
       14 CALL                             R6 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R6
       17 GETTABLEKS                       R8 R1 K3 ["MaxLength"]
       19 JUMPIFNOT                        R8 ; [+8]
       20 LOADK                            R7 K8 ["%d/%d"]
       21 MOVE                             R9 R6
       22 GETTABLEKS                       R10 R1 K3 ["MaxLength"]
       24 NAMECALL                         R7 R7 K9 ["format"]
       26 CALL                             R7 3 1
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R7 R1 K10 ["BottomText"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R9 R2 K11 ["errorText"]
       33 GETTABLEKS                       R10 R1 K12 ["ErrorText"]
       35 MOVE                             R11 R7
       36 CALL                             R8 3 1
       37 MOVE                             R5 R8
       38 NOT                              R7 R5
       39 JUMPIF                           R7 ; [+5]
       40 LENGTH                           R8 R5
       41 JUMPIFEQKN                       R8 K13 [0] ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 NOT                              R6 R7
       46 NAMECALL                         R7 R0 K14 ["hasError"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K18 [Enum.AutomaticSize.XY]
       51 GETTABLEKS                       R9 R1 K16 ["AutomaticSize"]
       53 JUMPIFNOT                        R9 ; [+2]
       54 GETTABLEKS                       R8 R1 K16 ["AutomaticSize"]
       56 DUPTABLE                         R9 K20 [{"TextInput"}]
       57 MOVE                             R12 R6
       58 NAMECALL                         R10 R0 K21 ["_renderTextInput"]
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K19 ["TextInput"]
       63 JUMPIFNOT                        R6 ; [+53]
       64 JUMPIFNOT                        R7 ; [+2]
       65 LOADK                            R10 K22 ["Error"]
       66 JUMP                             ; [+6]
       67 GETUPVAL                         R11 1
       68 JUMPIFNOT                        R11 ; [+2]
       69 LOADK                            R10 K23 ["Label"]
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R10 R3 K10 ["BottomText"]
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R11 R12 K24 ["createElement"]
       76 GETUPVAL                         R12 3
       77 GETUPVAL                         R14 1
       78 JUMPIFNOT                        R14 ; [+16]
       79 NEWTABLE                         R13 4 0
       81 LOADN                            R14 2
       82 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
       84 SETTABLEKS                       R5 R13 K7 ["Text"]
       86 GETUPVAL                         R15 4
       87 GETTABLEKS                       R14 R15 K26 ["Tag"]
       89 GETUPVAL                         R15 5
       90 MOVE                             R16 R10
       91 LOADK                            R17 K27 ["X-Fit Wrap"]
       92 CALL                             R15 2 1
       93 SETTABLE                         R15 R13 R14
       94 JUMP                             ; [+19]
       95 DUPTABLE                         R13 K31 [{"AutomaticSize", "LayoutOrder", "Style", "StyleModifier", "Text", "TextWrapped"}]
       96 GETIMPORT                        R14 K18 [Enum.AutomaticSize.XY]
       98 SETTABLEKS                       R14 R13 K16 ["AutomaticSize"]
      100 LOADN                            R14 2
      101 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      103 SETTABLEKS                       R10 R13 K28 ["Style"]
      105 GETTABLEKS                       R14 R2 K29 ["StyleModifier"]
      107 SETTABLEKS                       R14 R13 K29 ["StyleModifier"]
      109 SETTABLEKS                       R5 R13 K7 ["Text"]
      111 LOADB                            R14 1
      112 SETTABLEKS                       R14 R13 K30 ["TextWrapped"]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R9 K10 ["BottomText"]
      117 GETTABLEKS                       R10 R2 K32 ["autocompleteItems"]
      119 JUMPIFNOT                        R10 ; [+80]
      120 GETTABLEKS                       R11 R2 K32 ["autocompleteItems"]
      122 LENGTH                           R10 R11
      123 LOADN                            R11 0
      124 JUMPIFNOTLT                      R11 R10 ; [+75]
      126 GETTABLEKS                       R10 R1 K33 ["Width"]
      128 JUMPIF                           R10 ; [+11]
      129 GETTABLEKS                       R11 R0 K34 ["ref"]
      131 JUMPIFNOT                        R11 ; [+8]
      132 GETTABLEKS                       R13 R0 K34 ["ref"]
      134 GETTABLEKS                       R12 R13 K35 ["current"]
      136 GETTABLEKS                       R11 R12 K36 ["AbsoluteSize"]
      138 GETTABLEKS                       R10 R11 K37 ["X"]
      140 LOADNIL                          R11
      141 GETTABLEKS                       R13 R2 K32 ["autocompleteItems"]
      143 LENGTH                           R12 R13
      144 JUMPIFNOTEQKN                    R12 K38 [1] ; [+3]
      146 LOADN                            R11 1
      147 JUMP                             ; [+2]
      148 GETTABLEKS                       R11 R2 K39 ["autocompleteSelectedIndex"]
      150 GETUPVAL                         R12 6
      151 DUPTABLE                         R13 K49 [{"Items", "OnHoveredItemChanged", "OnMouseLeave", "Hide", "HoveredItemIndex", "Width", "Position", "OnItemActivated", "OnFocusLost", "OnRenderItem"}]
      152 GETTABLEKS                       R14 R2 K32 ["autocompleteItems"]
      154 SETTABLEKS                       R14 R13 K40 ["Items"]
      156 GETTABLEKS                       R14 R0 K50 ["autocompleteItemChanged"]
      158 SETTABLEKS                       R14 R13 K41 ["OnHoveredItemChanged"]
      160 GETTABLEKS                       R14 R0 K51 ["autocompleteMouseLeave"]
      162 SETTABLEKS                       R14 R13 K42 ["OnMouseLeave"]
      164 GETTABLEKS                       R15 R2 K52 ["isFocused"]
      166 NOT                              R14 R15
      167 SETTABLEKS                       R14 R13 K43 ["Hide"]
      169 SETTABLEKS                       R11 R13 K44 ["HoveredItemIndex"]
      171 SETTABLEKS                       R10 R13 K33 ["Width"]
      173 GETTABLEKS                       R14 R1 K45 ["Position"]
      175 SETTABLEKS                       R14 R13 K45 ["Position"]
      177 GETTABLEKS                       R14 R0 K53 ["autocompleteItemSelected"]
      179 SETTABLEKS                       R14 R13 K46 ["OnItemActivated"]
      181 GETTABLEKS                       R14 R0 K54 ["onDropdownFocusLost"]
      183 SETTABLEKS                       R14 R13 K47 ["OnFocusLost"]
      185 GETTABLEKS                       R14 R1 K55 ["OnRenderAutocompleteItem"]
      187 SETTABLEKS                       R14 R13 K48 ["OnRenderItem"]
      189 GETTABLEKS                       R14 R1 K56 ["DropdownMenuProps"]
      191 CALL                             R12 2 1
      192 GETUPVAL                         R14 2
      193 GETTABLEKS                       R13 R14 K24 ["createElement"]
      195 GETUPVAL                         R14 7
      196 MOVE                             R15 R12
      197 CALL                             R13 2 1
      198 SETTABLEKS                       R13 R9 K57 ["AutocompleteDropdown"]
      200 JUMPIFNOT                        R6 ; [+3]
      201 GETTABLEKS                       R10 R3 K58 ["BottomTextSpacing"]
      203 JUMP                             ; [+1]
      204 LOADN                            R10 0
      205 LOADNIL                          R11
      206 GETUPVAL                         R12 1
      207 JUMPIFNOT                        R12 ; [+52]
      208 NEWTABLE                         R12 8 0
      210 GETTABLEKS                       R13 R1 K59 ["AnchorPoint"]
      212 SETTABLEKS                       R13 R12 K59 ["AnchorPoint"]
      214 SETTABLEKS                       R8 R12 K16 ["AutomaticSize"]
      216 GETTABLEKS                       R13 R1 K25 ["LayoutOrder"]
      218 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      220 GETTABLEKS                       R13 R1 K45 ["Position"]
      222 SETTABLEKS                       R13 R12 K45 ["Position"]
      224 NAMECALL                         R13 R0 K60 ["_getSize"]
      226 CALL                             R13 1 1
      227 SETTABLEKS                       R13 R12 K61 ["Size"]
      229 GETUPVAL                         R14 2
      230 GETTABLEKS                       R13 R14 K62 ["Ref"]
      232 GETTABLEKS                       R14 R0 K34 ["ref"]
      234 SETTABLE                         R14 R12 R13
      235 GETUPVAL                         R14 4
      236 GETTABLEKS                       R13 R14 K26 ["Tag"]
      238 GETTABLEKS                       R15 R1 K63 ["OverrideTags"]
      240 JUMPIFNOT                        R15 ; [+11]
      241 GETUPVAL                         R16 4
      242 GETTABLEKS                       R15 R16 K26 ["Tag"]
      244 GETTABLE                         R14 R1 R15
      245 JUMPIF                           R14 ; [+11]
      246 GETUPVAL                         R14 5
      247 LOADK                            R15 K64 ["Component-TextInput"]
      248 LOADK                            R16 K65 ["X-Left X-Top X-ColumnS"]
      249 MOVE                             R17 R4
      250 CALL                             R14 3 1
      251 JUMP                             ; [+5]
      252 GETUPVAL                         R14 5
      253 LOADK                            R15 K64 ["Component-TextInput"]
      254 LOADK                            R16 K65 ["X-Left X-Top X-ColumnS"]
      255 MOVE                             R17 R4
      256 CALL                             R14 3 1
      257 SETTABLE                         R14 R12 R13
      258 MOVE                             R11 R12
      259 JUMP                             ; [+42]
      260 NEWTABLE                         R12 16 0
      262 GETTABLEKS                       R13 R1 K59 ["AnchorPoint"]
      264 SETTABLEKS                       R13 R12 K59 ["AnchorPoint"]
      266 SETTABLEKS                       R8 R12 K16 ["AutomaticSize"]
      268 GETIMPORT                        R13 K68 [Enum.HorizontalAlignment.Left]
      270 SETTABLEKS                       R13 R12 K66 ["HorizontalAlignment"]
      272 GETIMPORT                        R13 K71 [Enum.FillDirection.Vertical]
      274 SETTABLEKS                       R13 R12 K72 ["Layout"]
      276 GETTABLEKS                       R13 R1 K25 ["LayoutOrder"]
      278 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      280 GETTABLEKS                       R13 R1 K45 ["Position"]
      282 SETTABLEKS                       R13 R12 K45 ["Position"]
      284 GETUPVAL                         R14 2
      285 GETTABLEKS                       R13 R14 K62 ["Ref"]
      287 GETTABLEKS                       R14 R0 K34 ["ref"]
      289 SETTABLE                         R14 R12 R13
      290 SETTABLEKS                       R10 R12 K73 ["Spacing"]
      292 NAMECALL                         R13 R0 K60 ["_getSize"]
      294 CALL                             R13 1 1
      295 SETTABLEKS                       R13 R12 K61 ["Size"]
      297 GETIMPORT                        R13 K76 [Enum.VerticalAlignment.Top]
      299 SETTABLEKS                       R13 R12 K74 ["VerticalAlignment"]
      301 MOVE                             R11 R12
      302 GETUPVAL                         R13 2
      303 GETTABLEKS                       R12 R13 K24 ["createElement"]
      305 GETUPVAL                         R13 8
      306 MOVE                             R14 R11
      307 MOVE                             R15 R9
      308 CALL                             R12 3 -1
      309 RETURN                           R12 -1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NAMECALL                         R2 R0 K1 ["_getStyleAndTags"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R1 K2 ["Size"]
        8 GETTABLEKS                       R5 R2 K2 ["Size"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+1]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R5 R1 K3 ["Width"]
       16 GETTABLEKS                       R6 R2 K3 ["Width"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R6 R1 K4 ["Height"]
       22 GETTABLEKS                       R7 R2 K4 ["Height"]
       24 CALL                             R5 2 1
       25 FASTCALL1                        TYPEOF R4 ; [+3]
       26 MOVE                             R7 R4
       27 GETIMPORT                        R6 K6 [typeof]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K7 ["number"] ; [+13]
       32 GETIMPORT                        R6 K10 [UDim2.new]
       34 GETIMPORT                        R7 K12 [UDim.new]
       36 LOADN                            R8 0
       37 MOVE                             R9 R4
       38 CALL                             R7 2 1
       39 GETTABLEKS                       R8 R3 K13 ["Y"]
       41 CALL                             R6 2 1
       42 MOVE                             R3 R6
       43 JUMP                             ; [+14]
       44 FASTCALL1                        TYPEOF R4 ; [+3]
       45 MOVE                             R7 R4
       46 GETIMPORT                        R6 K6 [typeof]
       48 CALL                             R6 1 1
       49 JUMPIFNOTEQKS                    R6 K11 ["UDim"] ; [+8]
       51 GETIMPORT                        R6 K10 [UDim2.new]
       53 MOVE                             R7 R4
       54 GETTABLEKS                       R8 R3 K13 ["Y"]
       56 CALL                             R6 2 1
       57 MOVE                             R3 R6
       58 FASTCALL1                        TYPEOF R5 ; [+3]
       59 MOVE                             R7 R5
       60 GETIMPORT                        R6 K6 [typeof]
       62 CALL                             R6 1 1
       63 JUMPIFNOTEQKS                    R6 K7 ["number"] ; [+13]
       65 GETIMPORT                        R6 K10 [UDim2.new]
       67 GETTABLEKS                       R7 R3 K14 ["X"]
       69 GETIMPORT                        R8 K12 [UDim.new]
       71 LOADN                            R9 0
       72 MOVE                             R10 R5
       73 CALL                             R8 2 -1
       74 CALL                             R6 -1 1
       75 MOVE                             R3 R6
       76 RETURN                           R3 1
       77 FASTCALL1                        TYPEOF R5 ; [+3]
       78 MOVE                             R7 R5
       79 GETIMPORT                        R6 K6 [typeof]
       81 CALL                             R6 1 1
       82 JUMPIFNOTEQKS                    R6 K11 ["UDim"] ; [+8]
       84 GETIMPORT                        R6 K10 [UDim2.new]
       86 GETTABLEKS                       R7 R3 K14 ["X"]
       88 MOVE                             R8 R5
       89 CALL                             R6 2 1
       90 MOVE                             R3 R6
       91 RETURN                           R3 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADNIL                          R1
        3 JUMP                             ; [+2]
        4 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEKS                       R2 R0 K1 ["LeadingComponent"]
       10 JUMP                             ; [+6]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R3 R0 K1 ["LeadingComponent"]
       14 GETTABLEKS                       R4 R1 K1 ["LeadingComponent"]
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R3 R0 K2 ["LeadingComponentProps"]
       19 GETUPVAL                         R4 0
       20 JUMPIF                           R4 ; [+29]
       21 MOVE                             R5 R3
       22 JUMPIF                           R5 ; [+2]
       23 LOADB                            R4 1
       24 JUMP                             ; [+8]
       25 GETIMPORT                        R6 K4 [next]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 JUMPIFEQKNIL                     R6 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 JUMPIFNOT                        R4 ; [+16]
       34 GETTABLEKS                       R5 R1 K2 ["LeadingComponentProps"]
       36 JUMPIF                           R5 ; [+2]
       37 LOADB                            R4 1
       38 JUMP                             ; [+8]
       39 GETIMPORT                        R6 K4 [next]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 JUMPIFEQKNIL                     R6 ; [+2]
       45 LOADB                            R4 0 +1
       46 LOADB                            R4 1
       47 JUMPIF                           R4 ; [+2]
       48 GETTABLEKS                       R3 R1 K2 ["LeadingComponentProps"]
       50 RETURN                           R2 2

PROTO_30:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADNIL                          R1
        3 JUMP                             ; [+2]
        4 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEKS                       R2 R0 K1 ["TrailingComponent"]
       10 JUMP                             ; [+6]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R3 R0 K1 ["TrailingComponent"]
       14 GETTABLEKS                       R4 R1 K1 ["TrailingComponent"]
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R3 R0 K2 ["TrailingComponentProps"]
       19 GETUPVAL                         R4 0
       20 JUMPIF                           R4 ; [+29]
       21 MOVE                             R5 R3
       22 JUMPIF                           R5 ; [+2]
       23 LOADB                            R4 1
       24 JUMP                             ; [+8]
       25 GETIMPORT                        R6 K4 [next]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 JUMPIFEQKNIL                     R6 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 JUMPIFNOT                        R4 ; [+16]
       34 GETTABLEKS                       R5 R1 K2 ["TrailingComponentProps"]
       36 JUMPIF                           R5 ; [+2]
       37 LOADB                            R4 1
       38 JUMP                             ; [+8]
       39 GETIMPORT                        R6 K4 [next]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 JUMPIFEQKNIL                     R6 ; [+2]
       45 LOADB                            R4 0 +1
       46 LOADB                            R4 1
       47 JUMPIF                           R4 ; [+2]
       48 GETTABLEKS                       R3 R1 K2 ["TrailingComponentProps"]
       50 RETURN                           R2 2

PROTO_31:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 JUMP                             ; [+2]
        5 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETTABLEKS                       R2 R0 K1 ["BottomComponent"]
       11 JUMP                             ; [+6]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R3 R0 K1 ["BottomComponent"]
       15 GETTABLEKS                       R4 R1 K1 ["BottomComponent"]
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R3 R0 K2 ["BottomComponentProps"]
       20 GETUPVAL                         R4 0
       21 JUMPIF                           R4 ; [+29]
       22 MOVE                             R5 R3
       23 JUMPIF                           R5 ; [+2]
       24 LOADB                            R4 1
       25 JUMP                             ; [+8]
       26 GETIMPORT                        R6 K4 [next]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 JUMPIFEQKNIL                     R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 JUMPIFNOT                        R4 ; [+16]
       35 GETTABLEKS                       R5 R1 K2 ["BottomComponentProps"]
       37 JUMPIF                           R5 ; [+2]
       38 LOADB                            R4 1
       39 JUMP                             ; [+8]
       40 GETIMPORT                        R6 K4 [next]
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 JUMPIFEQKNIL                     R6 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 JUMPIF                           R4 ; [+2]
       49 GETTABLEKS                       R3 R1 K2 ["BottomComponentProps"]
       51 RETURN                           R2 2

PROTO_32:
        0 JUMPIFNOT                        R0 ; [+19]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["createElement"]
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R1
        7 DUPTABLE                         R6 K3 [{"LayoutOrder", "StyleModifier"}]
        8 GETUPVAL                         R7 2
        9 NAMECALL                         R7 R7 K4 ["getNextOrder"]
       11 CALL                             R7 1 1
       12 SETTABLEKS                       R7 R6 K1 ["LayoutOrder"]
       14 GETUPVAL                         R7 3
       15 SETTABLEKS                       R7 R6 K2 ["StyleModifier"]
       17 CALL                             R4 2 -1
       18 CALL                             R2 -1 -1
       19 RETURN                           R2 -1
       20 LOADNIL                          R2
       21 RETURN                           R2 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+58]
        6 LOADN                            R0 0
        7 LOADN                            R1 0
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+14]
       10 GETUPVAL                         R2 3
       11 ADD                              R0 R0 R2
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R2 R3 K0 ["Size"]
       15 JUMPIFNOT                        R2 ; [+8]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R4 R5 K0 ["Size"]
       19 GETTABLEKS                       R3 R4 K1 ["X"]
       21 GETTABLEKS                       R2 R3 K2 ["Offset"]
       23 ADD                              R0 R0 R2
       24 GETUPVAL                         R2 1
       25 JUMPIFNOT                        R2 ; [+14]
       26 GETUPVAL                         R2 3
       27 ADD                              R0 R0 R2
       28 GETUPVAL                         R3 5
       29 GETTABLEKS                       R2 R3 K0 ["Size"]
       31 JUMPIFNOT                        R2 ; [+8]
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R4 R5 K0 ["Size"]
       35 GETTABLEKS                       R3 R4 K1 ["X"]
       37 GETTABLEKS                       R2 R3 K2 ["Offset"]
       39 ADD                              R0 R0 R2
       40 GETUPVAL                         R2 2
       41 JUMPIFNOT                        R2 ; [+14]
       42 GETUPVAL                         R2 6
       43 ADD                              R1 R1 R2
       44 GETUPVAL                         R3 7
       45 GETTABLEKS                       R2 R3 K0 ["Size"]
       47 JUMPIFNOT                        R2 ; [+8]
       48 GETUPVAL                         R5 7
       49 GETTABLEKS                       R4 R5 K0 ["Size"]
       51 GETTABLEKS                       R3 R4 K3 ["Y"]
       53 GETTABLEKS                       R2 R3 K2 ["Offset"]
       55 ADD                              R1 R1 R2
       56 GETIMPORT                        R2 K6 [UDim2.new]
       58 LOADN                            R3 1
       59 MINUS                            R4 R0
       60 LOADN                            R5 1
       61 MINUS                            R6 R1
       62 CALL                             R2 4 -1
       63 RETURN                           R2 -1
       64 GETIMPORT                        R0 K8 [UDim2.fromScale]
       66 LOADN                            R1 1
       67 LOADN                            R2 1
       68 CALL                             R0 2 -1
       69 RETURN                           R0 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["TextXAlignment"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["TextXAlignment"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R2 3
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETIMPORT                        R1 K4 [Enum.TextYAlignment.Top]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R2 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K2 ["TextYAlignment"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K2 ["TextYAlignment"]
       21 MOVE                             R5 R1
       22 CALL                             R2 3 1
       23 GETUPVAL                         R3 4
       24 CALL                             R3 0 1
       25 GETUPVAL                         R4 5
       26 NAMECALL                         R4 R4 K5 ["getNextOrder"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R6 6
       30 GETTABLEKS                       R5 R6 K6 ["createElement"]
       32 GETUPVAL                         R6 7
       33 NEWTABLE                         R7 32 0
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R8 R9 K7 ["AllowTab"]
       38 SETTABLEKS                       R8 R7 K7 ["AllowTab"]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R8 R9 K8 ["ClearTextOnFocus"]
       43 SETTABLEKS                       R8 R7 K8 ["ClearTextOnFocus"]
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R8 R9 K9 ["Disabled"]
       48 SETTABLEKS                       R8 R7 K9 ["Disabled"]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R8 R9 K10 ["Font"]
       53 SETTABLEKS                       R8 R7 K10 ["Font"]
       55 GETUPVAL                         R9 3
       56 JUMPIFNOT                        R9 ; [+2]
       57 LOADNIL                          R8
       58 JUMP                             ; [+1]
       59 MOVE                             R8 R4
       60 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R8 R9 K12 ["LineHeight"]
       65 SETTABLEKS                       R8 R7 K12 ["LineHeight"]
       67 GETUPVAL                         R8 3
       68 SETTABLEKS                       R8 R7 K13 ["MultiLine"]
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R8 R9 K14 ["OnEnter"]
       73 SETTABLEKS                       R8 R7 K14 ["OnEnter"]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R8 R9 K15 ["PlaceholderText"]
       78 SETTABLEKS                       R8 R7 K15 ["PlaceholderText"]
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R8 R9 K16 ["PlaceholderTextColor"]
       83 SETTABLEKS                       R8 R7 K16 ["PlaceholderTextColor"]
       85 SETTABLEKS                       R3 R7 K17 ["Size"]
       87 GETUPVAL                         R9 1
       88 GETTABLEKS                       R8 R9 K18 ["Text"]
       90 SETTABLEKS                       R8 R7 K18 ["Text"]
       92 GETUPVAL                         R9 2
       93 GETTABLEKS                       R8 R9 K19 ["TextColor"]
       95 SETTABLEKS                       R8 R7 K19 ["TextColor"]
       97 GETUPVAL                         R9 2
       98 GETTABLEKS                       R8 R9 K20 ["TextSize"]
      100 SETTABLEKS                       R8 R7 K20 ["TextSize"]
      102 GETUPVAL                         R8 3
      103 SETTABLEKS                       R8 R7 K21 ["TextWrapped"]
      105 SETTABLEKS                       R0 R7 K0 ["TextXAlignment"]
      107 SETTABLEKS                       R2 R7 K2 ["TextYAlignment"]
      109 GETUPVAL                         R9 8
      110 GETTABLEKS                       R8 R9 K22 ["focused"]
      112 SETTABLEKS                       R8 R7 K23 ["OnFocused"]
      114 GETUPVAL                         R9 8
      115 GETTABLEKS                       R8 R9 K24 ["focusLost"]
      117 SETTABLEKS                       R8 R7 K25 ["OnFocusLost"]
      119 GETUPVAL                         R9 8
      120 GETTABLEKS                       R8 R9 K26 ["textChanged"]
      122 SETTABLEKS                       R8 R7 K27 ["OnTextChanged"]
      124 GETUPVAL                         R9 6
      125 GETTABLEKS                       R8 R9 K28 ["Ref"]
      127 GETUPVAL                         R10 8
      128 GETTABLEKS                       R9 R10 K29 ["textBoxRef"]
      130 SETTABLE                         R9 R7 R8
      131 CALL                             R5 2 1
      132 GETUPVAL                         R6 3
      133 JUMPIFNOT                        R6 ; [+22]
      134 GETUPVAL                         R7 6
      135 GETTABLEKS                       R6 R7 K6 ["createElement"]
      137 GETUPVAL                         R7 9
      138 NEWTABLE                         R8 4 0
      140 SETTABLEKS                       R4 R8 K11 ["LayoutOrder"]
      142 SETTABLEKS                       R3 R8 K17 ["Size"]
      144 GETUPVAL                         R10 6
      145 GETTABLEKS                       R9 R10 K28 ["Ref"]
      147 GETUPVAL                         R11 8
      148 GETTABLEKS                       R10 R11 K30 ["scrollingFrameRef"]
      150 SETTABLE                         R10 R8 R9
      151 DUPTABLE                         R9 K32 [{"TextBox"}]
      152 SETTABLEKS                       R5 R9 K31 ["TextBox"]
      154 CALL                             R6 3 -1
      155 RETURN                           R6 -1
      156 RETURN                           R5 1

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOT                        R4 ; [+3]
        4 NEWTABLE                         R3 0 0
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        9 GETTABLEKS                       R5 R0 K2 ["state"]
       11 GETTABLEKS                       R4 R5 K3 ["StyleModifier"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K4 ["new"]
       16 CALL                             R5 0 1
       17 GETUPVAL                         R9 0
       18 JUMPIFNOT                        R9 ; [+2]
       19 LOADNIL                          R8
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R8 R2 K1 ["Stylizer"]
       23 GETUPVAL                         R10 0
       24 JUMPIFNOT                        R10 ; [+3]
       25 GETTABLEKS                       R9 R2 K5 ["LeadingComponent"]
       27 JUMP                             ; [+6]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R10 R2 K5 ["LeadingComponent"]
       31 GETTABLEKS                       R11 R8 K5 ["LeadingComponent"]
       33 CALL                             R9 2 1
       34 GETTABLEKS                       R10 R2 K6 ["LeadingComponentProps"]
       36 GETUPVAL                         R11 0
       37 JUMPIF                           R11 ; [+29]
       38 MOVE                             R12 R10
       39 JUMPIF                           R12 ; [+2]
       40 LOADB                            R11 1
       41 JUMP                             ; [+8]
       42 GETIMPORT                        R13 K8 [next]
       44 MOVE                             R14 R12
       45 CALL                             R13 1 1
       46 JUMPIFEQKNIL                     R13 ; [+2]
       48 LOADB                            R11 0 +1
       49 LOADB                            R11 1
       50 JUMPIFNOT                        R11 ; [+16]
       51 GETTABLEKS                       R12 R8 K6 ["LeadingComponentProps"]
       53 JUMPIF                           R12 ; [+2]
       54 LOADB                            R11 1
       55 JUMP                             ; [+8]
       56 GETIMPORT                        R13 K8 [next]
       58 MOVE                             R14 R12
       59 CALL                             R13 1 1
       60 JUMPIFEQKNIL                     R13 ; [+2]
       62 LOADB                            R11 0 +1
       63 LOADB                            R11 1
       64 JUMPIF                           R11 ; [+2]
       65 GETTABLEKS                       R10 R8 K6 ["LeadingComponentProps"]
       67 MOVE                             R6 R9
       68 MOVE                             R7 R10
       69 GETUPVAL                         R11 0
       70 JUMPIFNOT                        R11 ; [+2]
       71 LOADNIL                          R10
       72 JUMP                             ; [+2]
       73 GETTABLEKS                       R10 R2 K1 ["Stylizer"]
       75 GETUPVAL                         R12 0
       76 JUMPIFNOT                        R12 ; [+3]
       77 GETTABLEKS                       R11 R2 K9 ["TrailingComponent"]
       79 JUMP                             ; [+6]
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R12 R2 K9 ["TrailingComponent"]
       83 GETTABLEKS                       R13 R10 K9 ["TrailingComponent"]
       85 CALL                             R11 2 1
       86 GETTABLEKS                       R12 R2 K10 ["TrailingComponentProps"]
       88 GETUPVAL                         R13 0
       89 JUMPIF                           R13 ; [+29]
       90 MOVE                             R14 R12
       91 JUMPIF                           R14 ; [+2]
       92 LOADB                            R13 1
       93 JUMP                             ; [+8]
       94 GETIMPORT                        R15 K8 [next]
       96 MOVE                             R16 R14
       97 CALL                             R15 1 1
       98 JUMPIFEQKNIL                     R15 ; [+2]
      100 LOADB                            R13 0 +1
      101 LOADB                            R13 1
      102 JUMPIFNOT                        R13 ; [+16]
      103 GETTABLEKS                       R14 R10 K10 ["TrailingComponentProps"]
      105 JUMPIF                           R14 ; [+2]
      106 LOADB                            R13 1
      107 JUMP                             ; [+8]
      108 GETIMPORT                        R15 K8 [next]
      110 MOVE                             R16 R14
      111 CALL                             R15 1 1
      112 JUMPIFEQKNIL                     R15 ; [+2]
      114 LOADB                            R13 0 +1
      115 LOADB                            R13 1
      116 JUMPIF                           R13 ; [+2]
      117 GETTABLEKS                       R12 R10 K10 ["TrailingComponentProps"]
      119 MOVE                             R8 R11
      120 MOVE                             R9 R12
      121 GETUPVAL                         R10 3
      122 MOVE                             R11 R2
      123 CALL                             R10 1 2
      124 NEWCLOSURE                       R12 P0
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R4
      129 LOADN                            R13 0
      130 LOADN                            R14 0
      131 JUMPIF                           R6 ; [+2]
      132 JUMPIF                           R8 ; [+1]
      133 JUMPIFNOT                        R10 ; [+22]
      134 GETUPVAL                         R16 0
      135 JUMPIFNOT                        R16 ; [+6]
      136 GETUPVAL                         R15 6
      137 LOADK                            R17 K12 ["HorizontalComponentSpacing"]
      138 NAMECALL                         R15 R15 K13 ["GetAttribute"]
      140 CALL                             R15 2 1
      141 JUMP                             ; [+2]
      142 GETTABLEKS                       R15 R3 K12 ["HorizontalComponentSpacing"]
      144 ORK                              R13 R15 K11 [0]
      145 GETUPVAL                         R16 0
      146 JUMPIFNOT                        R16 ; [+6]
      147 GETUPVAL                         R15 6
      148 LOADK                            R17 K14 ["VerticalComponentSpacing"]
      149 NAMECALL                         R15 R15 K13 ["GetAttribute"]
      151 CALL                             R15 2 1
      152 JUMP                             ; [+2]
      153 GETTABLEKS                       R15 R3 K14 ["VerticalComponentSpacing"]
      155 ORK                              R14 R15 K11 [0]
      156 NEWCLOSURE                       R15 P1
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R10
      160 CAPTURE                          REF R13
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R9
      163 CAPTURE                          REF R14
      164 CAPTURE                          VAL R11
      165 GETTABLEKS                       R16 R2 K15 ["MultiLine"]
      167 NEWCLOSURE                       R17 P2
      168 CAPTURE                          UPVAL U2
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R5
      174 CAPTURE                          UPVAL U4
      175 CAPTURE                          UPVAL U7
      176 CAPTURE                          VAL R0
      177 CAPTURE                          UPVAL U8
      178 JUMPIFNOT                        R6 ; [+17]
      179 GETUPVAL                         R19 4
      180 GETTABLEKS                       R18 R19 K16 ["createElement"]
      182 MOVE                             R19 R6
      183 GETUPVAL                         R20 5
      184 MOVE                             R21 R7
      185 DUPTABLE                         R22 K18 [{"LayoutOrder", "StyleModifier"}]
      186 NAMECALL                         R23 R5 K19 ["getNextOrder"]
      188 CALL                             R23 1 1
      189 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      191 SETTABLEKS                       R4 R22 K3 ["StyleModifier"]
      193 CALL                             R20 2 -1
      194 CALL                             R18 -1 1
      195 JUMP                             ; [+1]
      196 LOADNIL                          R18
      197 MOVE                             R19 R17
      198 CALL                             R19 0 1
      199 JUMPIFNOT                        R8 ; [+17]
      200 GETUPVAL                         R21 4
      201 GETTABLEKS                       R20 R21 K16 ["createElement"]
      203 MOVE                             R21 R8
      204 GETUPVAL                         R22 5
      205 MOVE                             R23 R9
      206 DUPTABLE                         R24 K18 [{"LayoutOrder", "StyleModifier"}]
      207 NAMECALL                         R25 R5 K19 ["getNextOrder"]
      209 CALL                             R25 1 1
      210 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      212 SETTABLEKS                       R4 R24 K3 ["StyleModifier"]
      214 CALL                             R22 2 -1
      215 CALL                             R20 -1 1
      216 JUMP                             ; [+1]
      217 LOADNIL                          R20
      218 DUPTABLE                         R21 K23 [{"LeadingContent", "TextBox", "TrailingContent"}]
      219 SETTABLEKS                       R18 R21 K20 ["LeadingContent"]
      221 SETTABLEKS                       R19 R21 K21 ["TextBox"]
      223 SETTABLEKS                       R20 R21 K22 ["TrailingContent"]
      225 GETIMPORT                        R22 K27 [Enum.FillDirection.Horizontal]
      227 MOVE                             R23 R13
      228 JUMPIFNOT                        R10 ; [+78]
      229 MOVE                             R24 R19
      230 JUMPIF                           R6 ; [+1]
      231 JUMPIFNOT                        R8 ; [+47]
      232 GETUPVAL                         R26 4
      233 GETTABLEKS                       R25 R26 K16 ["createElement"]
      235 GETUPVAL                         R26 9
      236 GETUPVAL                         R28 0
      237 JUMPIFNOT                        R28 ; [+18]
      238 GETUPVAL                         R28 10
      239 GETTABLEKS                       R27 R28 K28 ["join"]
      241 DUPTABLE                         R28 K29 [{"LayoutOrder"}]
      242 NAMECALL                         R29 R5 K19 ["getNextOrder"]
      244 CALL                             R29 1 1
      245 SETTABLEKS                       R29 R28 K17 ["LayoutOrder"]
      247 DUPTABLE                         R29 K32 [{"Layout", "Spacing"}]
      248 GETIMPORT                        R30 K27 [Enum.FillDirection.Horizontal]
      250 SETTABLEKS                       R30 R29 K30 ["Layout"]
      252 SETTABLEKS                       R13 R29 K31 ["Spacing"]
      254 CALL                             R27 2 1
      255 JUMP                             ; [+14]
      256 DUPTABLE                         R27 K33 [{"Layout", "LayoutOrder", "Spacing"}]
      257 GETIMPORT                        R28 K27 [Enum.FillDirection.Horizontal]
      259 SETTABLEKS                       R28 R27 K30 ["Layout"]
      261 NAMECALL                         R28 R5 K19 ["getNextOrder"]
      263 CALL                             R28 1 1
      264 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      266 GETTABLEKS                       R28 R3 K12 ["HorizontalComponentSpacing"]
      268 SETTABLEKS                       R28 R27 K31 ["Spacing"]
      270 DUPTABLE                         R28 K23 [{"LeadingContent", "TextBox", "TrailingContent"}]
      271 SETTABLEKS                       R18 R28 K20 ["LeadingContent"]
      273 SETTABLEKS                       R19 R28 K21 ["TextBox"]
      275 SETTABLEKS                       R20 R28 K22 ["TrailingContent"]
      277 CALL                             R25 3 1
      278 MOVE                             R24 R25
      279 GETIMPORT                        R22 K35 [Enum.FillDirection.Vertical]
      281 MOVE                             R23 R14
      282 DUPTABLE                         R25 K38 [{"TextBoxContent", "BottomContent"}]
      283 SETTABLEKS                       R24 R25 K36 ["TextBoxContent"]
      285 JUMPIFNOT                        R10 ; [+17]
      286 GETUPVAL                         R27 4
      287 GETTABLEKS                       R26 R27 K16 ["createElement"]
      289 MOVE                             R27 R10
      290 GETUPVAL                         R28 5
      291 MOVE                             R29 R11
      292 DUPTABLE                         R30 K18 [{"LayoutOrder", "StyleModifier"}]
      293 NAMECALL                         R31 R5 K19 ["getNextOrder"]
      295 CALL                             R31 1 1
      296 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      298 SETTABLEKS                       R4 R30 K3 ["StyleModifier"]
      300 CALL                             R28 2 -1
      301 CALL                             R26 -1 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R26
      304 SETTABLEKS                       R26 R25 K37 ["BottomContent"]
      306 MOVE                             R21 R25
      307 GETUPVAL                         R24 2
      308 GETTABLEKS                       R25 R2 K39 ["BackgroundColor"]
      310 GETTABLEKS                       R26 R3 K39 ["BackgroundColor"]
      312 CALL                             R24 2 1
      313 GETTABLEKS                       R25 R3 K40 ["BackgroundTransparency"]
      315 GETUPVAL                         R26 2
      316 GETTABLEKS                       R27 R2 K41 ["BorderColor"]
      318 GETTABLEKS                       R28 R3 K41 ["BorderColor"]
      320 CALL                             R26 2 1
      321 NAMECALL                         R27 R0 K42 ["_exceedsMaxLength"]
      323 CALL                             R27 1 1
      324 JUMPIF                           R27 ; [+3]
      325 GETTABLEKS                       R27 R2 K43 ["ErrorText"]
      327 JUMPIFNOT                        R27 ; [+2]
      328 GETTABLEKS                       R26 R3 K44 ["ErrorBorderColor"]
      330 NAMECALL                         R27 R0 K45 ["hasError"]
      332 CALL                             R27 1 1
      333 LOADNIL                          R28
      334 JUMPIFNOT                        R27 ; [+2]
      335 LOADK                            R28 K46 ["X-Error"]
      336 JUMP                             ; [+6]
      337 GETTABLEKS                       R30 R0 K2 ["state"]
      339 GETTABLEKS                       R29 R30 K47 ["isFocused"]
      341 JUMPIFNOT                        R29 ; [+1]
      342 LOADK                            R28 K48 ["X-Focus"]
      343 GETUPVAL                         R29 0
      344 JUMPIF                           R29 ; [+16]
      345 JUMPIFNOT                        R28 ; [+15]
      346 GETUPVAL                         R30 4
      347 GETTABLEKS                       R29 R30 K16 ["createElement"]
      349 LOADK                            R30 K49 ["UIStroke"]
      350 DUPTABLE                         R31 K52 [{"Color", "Thickness"}]
      351 SETTABLEKS                       R26 R31 K50 ["Color"]
      353 GETTABLEKS                       R33 R3 K54 ["BorderThickness"]
      355 ORK                              R32 R33 K53 [1]
      356 SETTABLEKS                       R32 R31 K51 ["Thickness"]
      358 CALL                             R29 2 1
      359 SETTABLEKS                       R29 R21 K55 ["Stroke"]
      361 GETUPVAL                         R30 4
      362 GETTABLEKS                       R29 R30 K16 ["createElement"]
      364 GETUPVAL                         R30 9
      365 GETUPVAL                         R32 0
      366 JUMPIFNOT                        R32 ; [+66]
      367 GETUPVAL                         R32 10
      368 GETTABLEKS                       R31 R32 K28 ["join"]
      370 NEWTABLE                         R32 8 0
      372 JUMPIFNOT                        R1 ; [+2]
      373 LOADN                            R33 1
      374 JUMP                             ; [+2]
      375 GETTABLEKS                       R33 R2 K17 ["LayoutOrder"]
      377 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      379 NAMECALL                         R33 R0 K56 ["_getSize"]
      381 CALL                             R33 1 1
      382 SETTABLEKS                       R33 R32 K57 ["Size"]
      384 GETUPVAL                         R35 4
      385 GETTABLEKS                       R34 R35 K58 ["Event"]
      387 GETTABLEKS                       R33 R34 K59 ["MouseEnter"]
      389 GETTABLEKS                       R34 R0 K60 ["mouseEnter"]
      391 SETTABLE                         R34 R32 R33
      392 GETUPVAL                         R35 4
      393 GETTABLEKS                       R34 R35 K58 ["Event"]
      395 GETTABLEKS                       R33 R34 K61 ["MouseLeave"]
      397 GETTABLEKS                       R34 R0 K62 ["mouseLeave"]
      399 SETTABLE                         R34 R32 R33
      400 GETUPVAL                         R34 11
      401 GETTABLEKS                       R33 R34 K63 ["Tag"]
      403 GETTABLEKS                       R35 R2 K64 ["OverrideTags"]
      405 JUMPIFNOT                        R35 ; [+8]
      406 GETTABLEKS                       R34 R2 K65 ["PaneTags"]
      408 JUMPIF                           R34 ; [+11]
      409 GETUPVAL                         R34 12
      410 LOADK                            R35 K66 ["Input X-Corner X-Left X-PadS X-Middle"]
      411 MOVE                             R36 R28
      412 CALL                             R34 2 1
      413 JUMP                             ; [+6]
      414 GETUPVAL                         R34 12
      415 LOADK                            R35 K66 ["Input X-Corner X-Left X-PadS X-Middle"]
      416 MOVE                             R36 R28
      417 GETTABLEKS                       R37 R2 K65 ["PaneTags"]
      419 CALL                             R34 3 1
      420 SETTABLE                         R34 R32 R33
      421 GETTABLEKS                       R34 R2 K65 ["PaneTags"]
      423 JUMPIF                           R34 ; [+6]
      424 DUPTABLE                         R33 K32 [{"Layout", "Spacing"}]
      425 SETTABLEKS                       R22 R33 K30 ["Layout"]
      427 SETTABLEKS                       R23 R33 K31 ["Spacing"]
      429 JUMP                             ; [+1]
      430 LOADNIL                          R33
      431 CALL                             R31 2 1
      432 JUMP                             ; [+62]
      433 NEWTABLE                         R31 16 0
      435 SETTABLEKS                       R24 R31 K39 ["BackgroundColor"]
      437 SETTABLEKS                       R25 R31 K40 ["BackgroundTransparency"]
      439 SETTABLEKS                       R26 R31 K41 ["BorderColor"]
      441 LOADB                            R32 1
      442 SETTABLEKS                       R32 R31 K67 ["ClipsDescendants"]
      444 GETIMPORT                        R32 K70 [Enum.HorizontalAlignment.Left]
      446 SETTABLEKS                       R32 R31 K68 ["HorizontalAlignment"]
      448 GETIMPORT                        R32 K73 [Enum.VerticalAlignment.Center]
      450 SETTABLEKS                       R32 R31 K71 ["VerticalAlignment"]
      452 SETTABLEKS                       R22 R31 K30 ["Layout"]
      454 JUMPIFNOT                        R1 ; [+2]
      455 LOADN                            R32 1
      456 JUMP                             ; [+2]
      457 GETTABLEKS                       R32 R2 K17 ["LayoutOrder"]
      459 SETTABLEKS                       R32 R31 K17 ["LayoutOrder"]
      461 JUMPIFNOT                        R16 ; [+3]
      462 GETTABLEKS                       R32 R3 K74 ["MultiLinePadding"]
      464 JUMP                             ; [+2]
      465 GETTABLEKS                       R32 R3 K75 ["Padding"]
      467 SETTABLEKS                       R32 R31 K75 ["Padding"]
      469 NAMECALL                         R32 R0 K56 ["_getSize"]
      471 CALL                             R32 1 1
      472 SETTABLEKS                       R32 R31 K57 ["Size"]
      474 SETTABLEKS                       R23 R31 K31 ["Spacing"]
      476 LOADK                            R32 K76 ["CornerBox"]
      477 SETTABLEKS                       R32 R31 K77 ["Style"]
      479 GETUPVAL                         R34 4
      480 GETTABLEKS                       R33 R34 K58 ["Event"]
      482 GETTABLEKS                       R32 R33 K59 ["MouseEnter"]
      484 GETTABLEKS                       R33 R0 K60 ["mouseEnter"]
      486 SETTABLE                         R33 R31 R32
      487 GETUPVAL                         R34 4
      488 GETTABLEKS                       R33 R34 K58 ["Event"]
      490 GETTABLEKS                       R32 R33 K61 ["MouseLeave"]
      492 GETTABLEKS                       R33 R0 K62 ["mouseLeave"]
      494 SETTABLE                         R33 R31 R32
      495 MOVE                             R32 R21
      496 CALL                             R29 3 -1
      497 CLOSEUPVALS                      R13
      498 RETURN                           R29 -1

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["OnValidateText"]
        4 JUMPIFNOT                        R2 ; [+33]
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R3 K1 ["OnValidateText"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 2
       11 NOT                              R4 R2
       12 GETTABLEKS                       R6 R0 K2 ["state"]
       14 GETTABLEKS                       R5 R6 K3 ["isError"]
       16 JUMPIFNOTEQ                      R5 R4 ; [+7]
       18 GETTABLEKS                       R6 R0 K2 ["state"]
       20 GETTABLEKS                       R5 R6 K4 ["errorText"]
       22 JUMPIFEQ                         R5 R3 ; [+14]
       24 DUPTABLE                         R7 K5 [{"isError", "errorText"}]
       25 SETTABLEKS                       R4 R7 K3 ["isError"]
       27 MOVE                             R8 R3
       28 JUMPIF                           R8 ; [+3]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K6 ["None"]
       32 SETTABLEKS                       R8 R7 K4 ["errorText"]
       34 NAMECALL                         R5 R0 K7 ["setState"]
       36 CALL                             R5 2 0
       37 RETURN                           R2 1
       38 LOADB                            R2 1
       39 RETURN                           R2 1

PROTO_37:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["Disabled"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["Disabled"]
        7 JUMP                             ; [+33]
        8 GETTABLEKS                       R3 R1 K1 ["isError"]
       10 JUMPIF                           R3 ; [+13]
       11 GETTABLEKS                       R3 R0 K2 ["Error"]
       13 JUMPIF                           R3 ; [+10]
       14 GETTABLEKS                       R4 R0 K3 ["ErrorText"]
       16 NOT                              R3 R4
       17 JUMPIF                           R3 ; [+5]
       18 LENGTH                           R5 R4
       19 JUMPIFEQKN                       R5 K4 [0] ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 JUMPIF                           R3 ; [+4]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K2 ["Error"]
       27 JUMP                             ; [+13]
       28 GETTABLEKS                       R3 R1 K5 ["isFocused"]
       30 JUMPIFNOT                        R3 ; [+4]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K6 ["Selected"]
       34 JUMP                             ; [+6]
       35 GETTABLEKS                       R3 R1 K7 ["isHovered"]
       37 JUMPIFNOT                        R3 ; [+3]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R2 R3 K8 ["Hover"]
       41 GETTABLEKS                       R3 R1 K9 ["StyleModifier"]
       43 JUMPIFEQ                         R2 R3 ; [+10]
       45 DUPTABLE                         R3 K10 [{"StyleModifier"}]
       46 MOVE                             R4 R2
       47 JUMPIF                           R4 ; [+3]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K11 ["None"]
       51 SETTABLEKS                       R4 R3 K9 ["StyleModifier"]
       53 RETURN                           R3 1
       54 LOADNIL                          R3
       55 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R4 R1 K8 ["Parent"]
       24 LOADK                            R6 K12 ["React"]
       25 NAMECALL                         R4 R4 K13 ["FindFirstChild"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+8]
       29 GETIMPORT                        R3 K10 [require]
       31 GETTABLEKS                       R5 R1 K8 ["Parent"]
       33 GETTABLEKS                       R4 R5 K12 ["React"]
       35 CALL                             R3 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 GETIMPORT                        R4 K10 [require]
       40 GETTABLEKS                       R6 R1 K14 ["Styling"]
       42 GETTABLEKS                       R5 R6 K15 ["supportsStyleSheets"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K10 [require]
       47 GETTABLEKS                       R7 R1 K14 ["Styling"]
       49 GETTABLEKS                       R6 R7 K16 ["joinTags"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K10 [require]
       54 GETTABLEKS                       R8 R1 K14 ["Styling"]
       56 GETTABLEKS                       R7 R8 K17 ["hasTag"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K10 [require]
       61 GETIMPORT                        R9 K5 [script]
       63 GETTABLEKS                       R8 R9 K18 ["styles"]
       65 CALL                             R7 1 1
       66 LOADK                            R10 K19 ["InputTextSize"]
       67 NAMECALL                         R8 R7 K20 ["GetAttribute"]
       69 CALL                             R8 2 1
       70 LOADK                            R11 K21 ["CompactInputTextSize"]
       71 NAMECALL                         R9 R7 K20 ["GetAttribute"]
       73 CALL                             R9 2 1
       74 LOADK                            R12 K22 ["Size"]
       75 NAMECALL                         R10 R7 K20 ["GetAttribute"]
       77 CALL                             R10 2 1
       78 GETIMPORT                        R11 K10 [require]
       80 GETTABLEKS                       R12 R1 K23 ["SharedFlags"]
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R12 R11 K24 ["getFFlagDeveloperFrameworkMigrateStylingV2"]
       85 CALL                             R12 0 1
       86 GETIMPORT                        R13 K10 [require]
       88 GETTABLEKS                       R15 R1 K6 ["UI"]
       90 GETTABLEKS                       R14 R15 K25 ["ContextServices"]
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R14 R13 K26 ["withContext"]
       95 GETIMPORT                        R15 K10 [require]
       97 GETTABLEKS                       R17 R1 K27 ["Util"]
       99 GETTABLEKS                       R16 R17 K28 ["LayoutOrderIterator"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K10 [require]
      104 GETTABLEKS                       R18 R1 K27 ["Util"]
      106 GETTABLEKS                       R17 R18 K29 ["Typecheck"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K10 [require]
      111 GETTABLEKS                       R19 R1 K27 ["Util"]
      113 GETTABLEKS                       R18 R19 K30 ["prioritize"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K10 [require]
      118 GETTABLEKS                       R20 R1 K31 ["Wrappers"]
      120 GETTABLEKS                       R19 R20 K32 ["withForwardRef"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K10 [require]
      125 GETTABLEKS                       R22 R1 K6 ["UI"]
      127 GETTABLEKS                       R21 R22 K33 ["Components"]
      129 GETTABLEKS                       R20 R21 K34 ["DropdownMenu"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K10 [require]
      134 GETTABLEKS                       R23 R1 K6 ["UI"]
      136 GETTABLEKS                       R22 R23 K33 ["Components"]
      138 GETTABLEKS                       R21 R22 K35 ["Pane"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K10 [require]
      143 GETTABLEKS                       R25 R1 K6 ["UI"]
      145 GETTABLEKS                       R24 R25 K33 ["Components"]
      147 GETTABLEKS                       R23 R24 K36 ["TextInput"]
      149 GETTABLEKS                       R22 R23 K37 ["TextBox"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K10 [require]
      154 GETTABLEKS                       R25 R1 K6 ["UI"]
      156 GETTABLEKS                       R24 R25 K33 ["Components"]
      158 GETTABLEKS                       R23 R24 K38 ["TextLabel"]
      160 CALL                             R22 1 1
      161 GETIMPORT                        R23 K10 [require]
      163 GETTABLEKS                       R26 R1 K6 ["UI"]
      165 GETTABLEKS                       R25 R26 K33 ["Components"]
      167 GETTABLEKS                       R24 R25 K39 ["ScrollingFrame"]
      169 CALL                             R23 1 1
      170 GETIMPORT                        R24 K10 [require]
      172 GETTABLEKS                       R26 R1 K27 ["Util"]
      174 GETTABLEKS                       R25 R26 K40 ["StyleModifier"]
      176 CALL                             R24 1 1
      177 GETIMPORT                        R25 K10 [require]
      179 GETTABLEKS                       R27 R1 K8 ["Parent"]
      181 GETTABLEKS                       R26 R27 K41 ["Dash"]
      183 CALL                             R25 1 1
      184 GETTABLEKS                       R26 R25 K42 ["join"]
      186 GETIMPORT                        R27 K10 [require]
      188 GETTABLEKS                       R28 R1 K43 ["Types"]
      190 CALL                             R27 1 1
      191 DUPCLOSURE                       R28 K44 [PROTO_0]
      192 CAPTURE                          VAL R17
      193 DUPCLOSURE                       R29 K45 [PROTO_1]
      194 DUPCLOSURE                       R30 K46 [PROTO_2]
      195 GETTABLEKS                       R31 R2 K47 ["PureComponent"]
      197 LOADK                            R33 K36 ["TextInput"]
      198 NAMECALL                         R31 R31 K48 ["extend"]
      200 CALL                             R31 2 1
      201 GETTABLEKS                       R32 R16 K49 ["wrap"]
      203 MOVE                             R33 R31
      204 GETIMPORT                        R34 K5 [script]
      206 CALL                             R32 2 0
      207 DUPTABLE                         R32 K61 [{"AllowTab", "BottomComponentProps", "Disabled", "DropdownMenuProps", "ClearTextOnFocus", "LeadingComponentProps", "PlaceholderText", "ShouldFocus", "Style", "Text", "TrailingComponentProps"}]
      208 LOADB                            R33 0
      209 SETTABLEKS                       R33 R32 K50 ["AllowTab"]
      211 NEWTABLE                         R33 0 0
      213 SETTABLEKS                       R33 R32 K51 ["BottomComponentProps"]
      215 LOADB                            R33 0
      216 SETTABLEKS                       R33 R32 K52 ["Disabled"]
      218 NEWTABLE                         R33 0 0
      220 SETTABLEKS                       R33 R32 K53 ["DropdownMenuProps"]
      222 LOADB                            R33 0
      223 SETTABLEKS                       R33 R32 K54 ["ClearTextOnFocus"]
      225 NEWTABLE                         R33 0 0
      227 SETTABLEKS                       R33 R32 K55 ["LeadingComponentProps"]
      229 LOADK                            R33 K62 [""]
      230 SETTABLEKS                       R33 R32 K56 ["PlaceholderText"]
      232 LOADB                            R33 0
      233 SETTABLEKS                       R33 R32 K57 ["ShouldFocus"]
      235 JUMPIFNOT                        R4 ; [+2]
      236 LOADNIL                          R33
      237 JUMP                             ; [+1]
      238 LOADK                            R33 K63 ["BorderBox"]
      239 SETTABLEKS                       R33 R32 K58 ["Style"]
      241 LOADK                            R33 K62 [""]
      242 SETTABLEKS                       R33 R32 K59 ["Text"]
      244 NEWTABLE                         R33 0 0
      246 SETTABLEKS                       R33 R32 K60 ["TrailingComponentProps"]
      248 SETTABLEKS                       R32 R31 K64 ["defaultProps"]
      250 DUPCLOSURE                       R32 K65 [PROTO_16]
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R12
      254 SETTABLEKS                       R32 R31 K66 ["init"]
      256 DUPCLOSURE                       R32 K67 [PROTO_17]
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R3
      259 CAPTURE                          VAL R5
      260 SETTABLEKS                       R32 R31 K68 ["_getStyleAndTags"]
      262 DUPCLOSURE                       R32 K69 [PROTO_18]
      263 CAPTURE                          VAL R4
      264 CAPTURE                          VAL R6
      265 CAPTURE                          VAL R9
      266 CAPTURE                          VAL R8
      267 SETTABLEKS                       R32 R31 K70 ["_getTextSize"]
      269 DUPCLOSURE                       R32 K71 [PROTO_19]
      270 CAPTURE                          VAL R0
      271 SETTABLEKS                       R32 R31 K72 ["_getPositionAtIndex"]
      273 DUPCLOSURE                       R32 K73 [PROTO_20]
      274 CAPTURE                          VAL R0
      275 SETTABLEKS                       R32 R31 K74 ["_updateScroller"]
      277 DUPCLOSURE                       R32 K75 [PROTO_22]
      278 SETTABLEKS                       R32 R31 K76 ["didMount"]
      280 DUPCLOSURE                       R32 K77 [PROTO_23]
      281 SETTABLEKS                       R32 R31 K78 ["willUnmount"]
      283 DUPCLOSURE                       R32 K79 [PROTO_24]
      284 SETTABLEKS                       R32 R31 K80 ["didUpdate"]
      286 DUPCLOSURE                       R32 K81 [PROTO_25]
      287 SETTABLEKS                       R32 R31 K82 ["_exceedsMaxLength"]
      289 DUPCLOSURE                       R32 K83 [PROTO_26]
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R6
      292 CAPTURE                          VAL R3
      293 CAPTURE                          VAL R24
      294 SETTABLEKS                       R32 R31 K84 ["hasError"]
      296 DUPCLOSURE                       R32 K85 [PROTO_27]
      297 CAPTURE                          VAL R17
      298 CAPTURE                          VAL R4
      299 CAPTURE                          VAL R2
      300 CAPTURE                          VAL R22
      301 CAPTURE                          VAL R3
      302 CAPTURE                          VAL R5
      303 CAPTURE                          VAL R26
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R20
      306 SETTABLEKS                       R32 R31 K86 ["render"]
      308 DUPCLOSURE                       R32 K87 [PROTO_28]
      309 CAPTURE                          VAL R17
      310 CAPTURE                          VAL R10
      311 SETTABLEKS                       R32 R31 K88 ["_getSize"]
      313 DUPCLOSURE                       R32 K89 [PROTO_29]
      314 CAPTURE                          VAL R4
      315 CAPTURE                          VAL R17
      316 DUPCLOSURE                       R33 K90 [PROTO_30]
      317 CAPTURE                          VAL R4
      318 CAPTURE                          VAL R17
      319 DUPCLOSURE                       R34 K91 [PROTO_31]
      320 CAPTURE                          VAL R4
      321 CAPTURE                          VAL R17
      322 DUPCLOSURE                       R35 K92 [PROTO_35]
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R15
      325 CAPTURE                          VAL R17
      326 CAPTURE                          VAL R34
      327 CAPTURE                          VAL R2
      328 CAPTURE                          VAL R26
      329 CAPTURE                          VAL R7
      330 CAPTURE                          VAL R21
      331 CAPTURE                          VAL R23
      332 CAPTURE                          VAL R20
      333 CAPTURE                          VAL R25
      334 CAPTURE                          VAL R3
      335 CAPTURE                          VAL R5
      336 SETTABLEKS                       R35 R31 K93 ["_renderTextInput"]
      338 DUPCLOSURE                       R35 K94 [PROTO_36]
      339 CAPTURE                          VAL R2
      340 SETTABLEKS                       R35 R31 K95 ["_validateText"]
      342 DUPCLOSURE                       R35 K96 [PROTO_37]
      343 CAPTURE                          VAL R24
      344 CAPTURE                          VAL R2
      345 SETTABLEKS                       R35 R31 K97 ["getDerivedStateFromProps"]
      347 MOVE                             R35 R14
      348 DUPTABLE                         R36 K99 [{"Stylizer"}]
      349 JUMPIFNOT                        R4 ; [+2]
      350 LOADNIL                          R37
      351 JUMP                             ; [+2]
      352 GETTABLEKS                       R37 R13 K98 ["Stylizer"]
      354 SETTABLEKS                       R37 R36 K98 ["Stylizer"]
      356 CALL                             R35 1 1
      357 MOVE                             R36 R31
      358 CALL                             R35 1 1
      359 MOVE                             R31 R35
      360 MOVE                             R35 R18
      361 MOVE                             R36 R31
      362 CALL                             R35 1 -1
      363 RETURN                           R35 -1
