PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["R"]
        2 LOADN                            R3 0
        3 LOADN                            R4 1
        4 FASTCALL                         MATH_CLAMP ; [+2]
        5 GETIMPORT                        R1 K3 [math.clamp]
        7 CALL                             R1 3 1
        8 GETTABLEKS                       R3 R0 K4 ["G"]
       10 LOADN                            R4 0
       11 LOADN                            R5 1
       12 FASTCALL                         MATH_CLAMP ; [+2]
       13 GETIMPORT                        R2 K3 [math.clamp]
       15 CALL                             R2 3 1
       16 GETTABLEKS                       R4 R0 K5 ["B"]
       18 LOADN                            R5 0
       19 LOADN                            R6 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R3 K3 [math.clamp]
       23 CALL                             R3 3 1
       24 GETIMPORT                        R4 K8 [Color3.new]
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 MOVE                             R7 R3
       29 CALL                             R4 3 1
       30 NAMECALL                         R4 R4 K9 ["ToHex"]
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onFocused"]
        3 JUMPIFEQKNIL                     R1 ; [+6]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["onFocused"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["color3Part"]
       13 GETTABLEKS                       R1 R2 K2 ["multiple"]
       15 JUMPIFNOT                        R1 ; [+3]
       16 LOADK                            R1 K3 [""]
       17 SETTABLEKS                       R1 R0 K4 ["Text"]
       19 GETTABLEKS                       R3 R0 K4 ["Text"]
       21 LENGTH                           R2 R3
       22 ADDK                             R1 R2 K5 [1]
       23 SETTABLEKS                       R1 R0 K6 ["CursorPosition"]
       25 LOADN                            R1 1
       26 SETTABLEKS                       R1 R0 K7 ["SelectionStart"]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R2 R0 K4 ["Text"]
       31 SETTABLEKS                       R2 R1 K8 ["current"]
       33 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [Color3.fromHex]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K3 ["Text"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 0
       11 GETIMPORT                        R3 K2 [pcall]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CALL                             R3 1 2
       17 JUMPIFNOT                        R3 ; [+30]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K3 ["beginEditingAsync"]
       21 CALL                             R5 0 0
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K4 ["setPart"]
       25 LOADK                            R6 K5 ["color3"]
       26 MOVE                             R7 R4
       27 CALL                             R5 2 0
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K6 ["finishEditing"]
       31 GETIMPORT                        R6 K10 [Enum.FinishRecordingOperation.Commit]
       33 CALL                             R5 1 0
       34 LOADK                            R6 K11 ["#%*"]
       35 NAMECALL                         R8 R4 K12 ["ToHex"]
       37 CALL                             R8 1 1
       38 NAMECALL                         R8 R8 K13 ["upper"]
       40 CALL                             R8 1 1
       41 NAMECALL                         R6 R6 K14 ["format"]
       43 CALL                             R6 2 1
       44 MOVE                             R5 R6
       45 SETTABLEKS                       R5 R0 K15 ["Text"]
       47 RETURN                           R0 0
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R5 R6 K16 ["current"]
       51 SETTABLEKS                       R5 R0 K15 ["Text"]
       53 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 2
       13 GETTABLEKS                       R5 R0 K3 ["onFocused"]
       15 GETTABLEKS                       R7 R0 K4 ["color3Part"]
       17 GETTABLEKS                       R6 R7 K5 ["multiple"]
       19 SETLIST                          R4 R5 2 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R5 0 4
       31 GETTABLEKS                       R6 R0 K6 ["onFocusLost"]
       33 GETTABLEKS                       R7 R0 K7 ["beginEditingAsync"]
       35 GETTABLEKS                       R8 R0 K8 ["setPart"]
       37 GETTABLEKS                       R9 R0 K9 ["finishEditing"]
       39 SETLIST                          R5 R6 4 [1]
       41 CALL                             R3 2 1
       42 GETUPVAL                         R4 2
       43 CALL                             R4 0 1
       44 GETUPVAL                         R5 3
       45 GETUPVAL                         R6 4
       46 DUPTABLE                         R7 K12 [{"LayoutOrder", "tag"}]
       47 GETTABLEKS                       R8 R0 K13 ["layoutOrder"]
       49 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       51 LOADK                            R8 K14 ["size-full-full row padding-left-xxsmall"]
       52 SETTABLEKS                       R8 R7 K11 ["tag"]
       54 DUPTABLE                         R8 K16 [{"HexBox"}]
       55 GETUPVAL                         R9 3
       56 GETUPVAL                         R10 5
       57 DUPTABLE                         R11 K19 [{"layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
       58 MOVE                             R12 R4
       59 CALL                             R12 0 1
       60 SETTABLEKS                       R12 R11 K13 ["layoutOrder"]
       62 GETIMPORT                        R12 K22 [UDim2.fromScale]
       64 LOADN                            R13 1
       65 LOADN                            R14 1
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K17 ["size"]
       69 GETTABLEKS                       R14 R0 K4 ["color3Part"]
       71 GETTABLEKS                       R13 R14 K5 ["multiple"]
       73 JUMPIFNOT                        R13 ; [+2]
       74 LOADK                            R12 K5 ["multiple"]
       75 JUMP                             ; [+14]
       76 LOADK                            R13 K23 ["#%*"]
       77 GETIMPORT                        R15 K26 [string.upper]
       79 GETUPVAL                         R16 6
       80 GETTABLEKS                       R18 R0 K4 ["color3Part"]
       82 GETTABLEKS                       R17 R18 K27 ["value"]
       84 CALL                             R16 1 -1
       85 CALL                             R15 -1 1
       86 NAMECALL                         R13 R13 K28 ["format"]
       88 CALL                             R13 2 1
       89 MOVE                             R12 R13
       90 SETTABLEKS                       R12 R11 K18 ["text"]
       92 SETTABLEKS                       R2 R11 K3 ["onFocused"]
       94 SETTABLEKS                       R3 R11 K6 ["onFocusLost"]
       96 CALL                             R9 2 1
       97 SETTABLEKS                       R9 R8 K15 ["HexBox"]
       99 CALL                             R5 3 -1
      100 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["PlaceholderTextBox"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["PropertyTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Util"]
       46 GETTABLEKS                       R7 R8 K14 ["trimWhitespace"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R1 K15 ["View"]
       51 GETTABLEKS                       R8 R4 K16 ["createElement"]
       53 GETTABLEKS                       R9 R5 K17 ["createNextOrder"]
       55 DUPCLOSURE                       R10 K18 [PROTO_0]
       56 DUPCLOSURE                       R11 K19 [PROTO_4]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R10
       64 RETURN                           R11 1
