PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"textFieldSize"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 SETTABLEKS                       R4 R3 K0 ["textFieldSize"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"textFieldPosition"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsolutePosition"]
        4 SETTABLEKS                       R4 R3 K0 ["textFieldPosition"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["active"]
        5 JUMPIF                           R0 ; [+26]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["textBoxRef"]
        9 JUMPIFNOT                        R0 ; [+22]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["textBoxRef"]
       13 GETTABLEKS                       R0 R1 K3 ["current"]
       15 JUMPIFNOT                        R0 ; [+16]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K2 ["textBoxRef"]
       19 GETTABLEKS                       R0 R1 K3 ["current"]
       21 LOADN                            R1 15
       22 SETTABLEKS                       R1 R0 K4 ["CursorPosition"]
       24 GETUPVAL                         R0 0
       25 DUPTABLE                         R2 K5 [{"active"}]
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R2 K1 ["active"]
       29 NAMECALL                         R0 R0 K6 ["setState"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+48]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R0 K0 ["Text"]
        4 CALL                             R3 1 1
        5 LENGTH                           R2 R3
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+29]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["props"]
       12 GETTABLEKS                       R3 R4 K2 ["suggestions"]
       14 LENGTH                           R2 R3
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R3 R2 ; [+20]
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K1 ["props"]
       22 GETTABLEKS                       R5 R6 K2 ["suggestions"]
       24 GETTABLEN                        R4 R5 1
       25 NAMECALL                         R2 R2 K3 ["addTag"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K1 ["props"]
       31 GETTABLEKS                       R2 R3 K4 ["clearSuggestions"]
       33 CALL                             R2 0 0
       34 LOADK                            R2 K5 [" "]
       35 SETTABLEKS                       R2 R0 K0 ["Text"]
       37 GETUPVAL                         R2 2
       38 CALL                             R2 0 1
       39 JUMPIFNOT                        R2 ; [+5]
       40 JUMPIFNOT                        R0 ; [+42]
       41 NAMECALL                         R2 R0 K6 ["CaptureFocus"]
       43 CALL                             R2 1 0
       44 RETURN                           R0 0
       45 NAMECALL                         R2 R0 K6 ["CaptureFocus"]
       47 CALL                             R2 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R3 R4 K7 ["state"]
       52 GETTABLEKS                       R2 R3 K8 ["active"]
       54 JUMPIFNOT                        R2 ; [+8]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R4 R5 K1 ["props"]
       58 GETTABLEKS                       R3 R4 K2 ["suggestions"]
       60 LENGTH                           R2 R3
       61 JUMPIFNOTEQKN                    R2 K9 [0] ; [+10]
       63 GETUPVAL                         R2 1
       64 DUPTABLE                         R4 K10 [{"active"}]
       65 LOADB                            R5 0
       66 SETTABLEKS                       R5 R4 K8 ["active"]
       68 NAMECALL                         R2 R2 K11 ["setState"]
       70 CALL                             R2 2 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R2 2
       73 CALL                             R2 0 1
       74 JUMPIFNOT                        R2 ; [+5]
       75 JUMPIFNOT                        R0 ; [+7]
       76 NAMECALL                         R2 R0 K6 ["CaptureFocus"]
       78 CALL                             R2 1 0
       79 RETURN                           R0 0
       80 NAMECALL                         R2 R0 K6 ["CaptureFocus"]
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Network"]
        5 GETTABLEKS                       R1 R2 K2 ["networkInterface"]
        7 GETTABLEKS                       R2 R0 K3 ["Text"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K4 ["lastText"]
       12 JUMPIFEQ                         R2 R3 ; [+92]
       14 LOADB                            R3 0
       15 LOADN                            R6 1
       16 LOADN                            R7 1
       17 FASTCALL3                        STRING_SUB R2 R6 R7
       19 MOVE                             R5 R2
       20 GETIMPORT                        R4 K7 [string.sub]
       22 CALL                             R4 3 1
       23 JUMPIFEQKS                       R4 K8 [" "] ; [+28]
       25 LOADK                            R4 K8 [" "]
       26 MOVE                             R5 R2
       27 CONCAT                           R2 R4 R5
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["props"]
       31 GETTABLEKS                       R4 R5 K9 ["tags"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K4 ["lastText"]
       36 LENGTH                           R5 R6
       37 JUMPIFNOTEQKN                    R5 K10 [1] ; [+13]
       39 LENGTH                           R5 R4
       40 LOADN                            R6 0
       41 JUMPIFNOTLT                      R6 R5 ; [+9]
       43 GETUPVAL                         R5 0
       44 LENGTH                           R9 R4
       45 GETTABLE                         R8 R4 R9
       46 GETTABLEKS                       R7 R8 K11 ["tagId"]
       48 NAMECALL                         R5 R5 K12 ["removeTag"]
       50 CALL                             R5 2 0
       51 LOADB                            R3 1
       52 LENGTH                           R6 R2
       53 LENGTH                           R7 R2
       54 FASTCALL3                        STRING_SUB R2 R6 R7
       56 MOVE                             R5 R2
       57 GETIMPORT                        R4 K7 [string.sub]
       59 CALL                             R4 3 1
       60 JUMPIFNOTEQKS                    R4 K13 ["\r"] ; [+12]
       62 LOADN                            R6 1
       63 LENGTH                           R8 R2
       64 SUBK                             R7 R8 K10 [1]
       65 FASTCALL3                        STRING_SUB R2 R6 R7
       67 MOVE                             R5 R2
       68 GETIMPORT                        R4 K7 [string.sub]
       70 CALL                             R4 3 1
       71 MOVE                             R2 R4
       72 LOADB                            R3 1
       73 GETUPVAL                         R4 0
       74 NAMECALL                         R4 R4 K14 ["canAddTags"]
       76 CALL                             R4 1 1
       77 JUMPIF                           R4 ; [+2]
       78 LOADK                            R2 K8 [" "]
       79 LOADB                            R3 1
       80 JUMPIFNOT                        R3 ; [+21]
       81 GETUPVAL                         R4 1
       82 CALL                             R4 0 1
       83 JUMPIFNOT                        R4 ; [+10]
       84 JUMPIFNOT                        R0 ; [+17]
       85 SETTABLEKS                       R2 R0 K3 ["Text"]
       87 NAMECALL                         R4 R0 K15 ["ReleaseFocus"]
       89 CALL                             R4 1 0
       90 NAMECALL                         R4 R0 K16 ["CaptureFocus"]
       92 CALL                             R4 1 0
       93 JUMP                             ; [+8]
       94 SETTABLEKS                       R2 R0 K3 ["Text"]
       96 NAMECALL                         R4 R0 K15 ["ReleaseFocus"]
       98 CALL                             R4 1 0
       99 NAMECALL                         R4 R0 K16 ["CaptureFocus"]
      101 CALL                             R4 1 0
      102 GETUPVAL                         R4 0
      103 SETTABLEKS                       R2 R4 K4 ["lastText"]
      105 GETUPVAL                         R3 2
      106 MOVE                             R4 R2
      107 CALL                             R3 1 1
      108 LENGTH                           R4 R3
      109 LOADN                            R5 0
      110 JUMPIFNOTLT                      R5 R4 ; [+15]
      112 GETUPVAL                         R6 0
      113 GETTABLEKS                       R5 R6 K0 ["props"]
      115 GETTABLEKS                       R4 R5 K17 ["getSuggestions"]
      117 MOVE                             R5 R1
      118 GETUPVAL                         R8 0
      119 GETTABLEKS                       R7 R8 K0 ["props"]
      121 GETTABLEKS                       R6 R7 K9 ["tags"]
      123 MOVE                             R7 R3
      124 CALL                             R4 3 0
      125 RETURN                           R0 0
      126 GETUPVAL                         R6 0
      127 GETTABLEKS                       R5 R6 K0 ["props"]
      129 GETTABLEKS                       R4 R5 K18 ["clearSuggestions"]
      131 CALL                             R4 0 0
      132 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        2 LOADN                            R2 2
        3 JUMPIFNOTLT                      R1 R2 ; [+4]
        5 LOADN                            R1 2
        6 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        8 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K3 [{"active", "textFieldPosition", "textFieldSize"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["active"]
        4 GETIMPORT                        R2 K6 [Vector2.new]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["textFieldPosition"]
        9 GETIMPORT                        R2 K6 [Vector2.new]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K2 ["textFieldSize"]
       14 SETTABLEKS                       R1 R0 K7 ["state"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K8 ["createRef"]
       19 CALL                             R1 0 1
       20 SETTABLEKS                       R1 R0 K9 ["textBoxRef"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K8 ["createRef"]
       25 CALL                             R1 0 1
       26 SETTABLEKS                       R1 R0 K10 ["textFieldRef"]
       28 LOADK                            R1 K11 [" "]
       29 SETTABLEKS                       R1 R0 K12 ["lastText"]
       31 NEWCLOSURE                       R1 P0
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K13 ["onTextFieldAbsoluteSizeChanged"]
       35 NEWCLOSURE                       R1 P1
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K14 ["onTextFieldAbsolutePositionChanged"]
       39 NEWCLOSURE                       R1 P2
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K15 ["onTextBoxFocused"]
       43 NEWCLOSURE                       R1 P3
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R1 R0 K16 ["onTextBoxFocusLost"]
       49 NEWCLOSURE                       R1 P4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U1
       53 SETTABLEKS                       R1 R0 K17 ["onTextBoxTextChanged"]
       55 DUPCLOSURE                       R1 K18 [PROTO_5]
       56 SETTABLEKS                       R1 R0 K19 ["onTextBoxCursorPositionChanged"]
       58 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["tags"]
        4 LENGTH                           R2 R3
        5 GETTABLEKS                       R4 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R4 K2 ["maximumItemTagsPerItem"]
        9 JUMPIFLT                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["canAddTags"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+31]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["hasTag"]
        7 GETTABLEKS                       R4 R0 K2 ["props"]
        9 GETTABLEKS                       R3 R4 K3 ["tags"]
       11 GETTABLEKS                       R4 R1 K4 ["tagId"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+20]
       15 GETTABLEKS                       R3 R0 K2 ["props"]
       17 GETTABLEKS                       R2 R3 K5 ["onTagsChange"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K6 ["List"]
       22 GETTABLEKS                       R3 R4 K7 ["join"]
       24 GETTABLEKS                       R5 R0 K2 ["props"]
       26 GETTABLEKS                       R4 R5 K3 ["tags"]
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R1
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 -1
       34 CALL                             R2 -1 0
       35 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 GETTABLEKS                       R7 R0 K0 ["props"]
        5 GETTABLEKS                       R6 R7 K1 ["tags"]
        7 LENGTH                           R3 R6
        8 LOADN                            R4 1
        9 FORNPREP                         R3
       10 GETTABLEKS                       R8 R0 K0 ["props"]
       12 GETTABLEKS                       R7 R8 K1 ["tags"]
       14 GETTABLE                         R6 R7 R5
       15 GETTABLEKS                       R7 R6 K2 ["tagId"]
       17 JUMPIFEQ                         R7 R1 ; [+8]
       19 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       21 MOVE                             R8 R2
       22 MOVE                             R9 R6
       23 GETIMPORT                        R7 K5 [table.insert]
       25 CALL                             R7 2 0
       26 FORNLOOP                         R3
       27 GETTABLEKS                       R4 R0 K0 ["props"]
       29 GETTABLEKS                       R3 R4 K6 ["onTagsChange"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R5 R0 K2 ["props"]
        6 GETTABLEKS                       R3 R5 K3 ["suggestions"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 DUPTABLE                         R9 K6 [{"name", "selectable"}]
       11 GETTABLEKS                       R10 R6 K7 ["localizedDisplayName"]
       13 SETTABLEKS                       R10 R9 K4 ["name"]
       15 LOADB                            R10 1
       16 SETTABLEKS                       R10 R9 K5 ["selectable"]
       18 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R7 K10 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-15]
       26 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["clearSuggestions"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["textFieldRef"]
        2 GETTABLEKS                       R1 R2 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+20]
        5 DUPTABLE                         R3 K4 [{"textFieldPosition", "textFieldSize"}]
        6 GETTABLEKS                       R6 R0 K0 ["textFieldRef"]
        8 GETTABLEKS                       R5 R6 K1 ["current"]
       10 GETTABLEKS                       R4 R5 K5 ["AbsolutePosition"]
       12 SETTABLEKS                       R4 R3 K2 ["textFieldPosition"]
       14 GETTABLEKS                       R6 R0 K0 ["textFieldRef"]
       16 GETTABLEKS                       R5 R6 K1 ["current"]
       18 GETTABLEKS                       R4 R5 K6 ["AbsoluteSize"]
       20 SETTABLEKS                       R4 R3 K3 ["textFieldSize"]
       22 NAMECALL                         R1 R0 K7 ["setState"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 ADD                              R2 R3 R0
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["textFieldSize"]
        6 GETTABLEKS                       R4 R5 K2 ["X"]
        8 SUBK                             R3 R4 K0 [10]
        9 JUMPIFNOTLT                      R3 R2 ; [+7]
       11 GETUPVAL                         R3 2
       12 ADDK                             R2 R3 K3 [1]
       13 SETUPVAL                         R2 2
       14 LOADN                            R2 10
       15 SETUPVAL                         R2 0
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R4 0
       18 ADD                              R3 R4 R0
       19 ADDK                             R2 R3 K4 [3]
       20 SETUPVAL                         R2 0
       21 MOVE                             R2 R1
       22 LOADN                            R4 10
       23 GETUPVAL                         R6 2
       24 LOADN                            R8 10
       25 GETUPVAL                         R9 3
       26 ADD                              R7 R8 R9
       27 MUL                              R5 R6 R7
       28 ADD                              R3 R4 R5
       29 RETURN                           R2 2

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["tagId"]
        4 NAMECALL                         R0 R0 K1 ["removeTag"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 [" "]
        2 SETTABLEKS                       R2 R1 K1 ["lastText"]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["suggestions"]
        8 GETTABLE                         R3 R4 R0
        9 NAMECALL                         R1 R1 K3 ["addTag"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K4 ["props"]
       15 GETTABLEKS                       R1 R2 K5 ["clearSuggestions"]
       17 CALL                             R1 0 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K6 ["textBoxRef"]
       21 JUMPIFNOT                        R1 ; [+14]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K6 ["textBoxRef"]
       25 GETTABLEKS                       R1 R2 K7 ["current"]
       27 JUMPIFNOT                        R1 ; [+8]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K6 ["textBoxRef"]
       31 GETTABLEKS                       R1 R2 K7 ["current"]
       33 NAMECALL                         R1 R1 K8 ["CaptureFocus"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"active"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["active"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K3 ["textBoxRef"]
       11 JUMPIFNOT                        R0 ; [+14]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["textBoxRef"]
       15 GETTABLEKS                       R0 R1 K4 ["current"]
       17 JUMPIFNOT                        R0 ; [+8]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K3 ["textBoxRef"]
       21 GETTABLEKS                       R0 R1 K4 ["current"]
       23 NAMECALL                         R0 R0 K5 ["ReleaseFocus"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R3 K5 ["publishAsset"]
       12 NEWTABLE                         R7 1 0
       14 LOADN                            R10 3
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R11 R12 K7 ["FONT_SIZE_TITLE"]
       18 ADD                              R9 R10 R11
       19 ADDK                             R8 R9 K6 [3]
       20 LOADN                            R9 0
       21 LOADN                            R10 10
       22 NEWCLOSURE                       R11 P0
       23 CAPTURE                          REF R10
       24 CAPTURE                          VAL R2
       25 CAPTURE                          REF R9
       26 CAPTURE                          VAL R8
       27 LOADN                            R14 1
       28 GETTABLEKS                       R15 R1 K8 ["tags"]
       30 LENGTH                           R12 R15
       31 LOADN                            R13 1
       32 FORNPREP                         R12
       33 GETTABLEKS                       R16 R1 K8 ["tags"]
       35 GETTABLE                         R15 R16 R14
       36 GETUPVAL                         R16 1
       37 GETTABLEKS                       R17 R15 K9 ["localizedDisplayName"]
       39 GETUPVAL                         R19 0
       40 GETTABLEKS                       R18 R19 K7 ["FONT_SIZE_TITLE"]
       42 GETUPVAL                         R20 0
       43 GETTABLEKS                       R19 R20 K10 ["FONT"]
       45 GETIMPORT                        R20 K13 [Vector2.new]
       47 LOADN                            R21 0
       48 LOADN                            R22 0
       49 CALL                             R20 2 -1
       50 CALL                             R16 -1 1
       51 LOADN                            R21 3
       52 GETTABLEKS                       R22 R16 K15 ["X"]
       54 ADD                              R20 R21 R22
       55 ADDK                             R19 R20 K6 [3]
       56 ADDK                             R18 R19 K14 [16]
       57 ADDK                             R17 R18 K6 [3]
       58 LOADN                            R20 3
       59 GETTABLEKS                       R21 R16 K16 ["Y"]
       61 ADD                              R19 R20 R21
       62 ADDK                             R18 R19 K6 [3]
       63 MOVE                             R21 R10
       64 ADD                              R22 R10 R17
       65 GETTABLEKS                       R25 R2 K18 ["textFieldSize"]
       67 GETTABLEKS                       R24 R25 K15 ["X"]
       69 SUBK                             R23 R24 K17 [10]
       70 JUMPIFNOTLT                      R23 R22 ; [+4]
       72 ADDK                             R9 R9 K19 [1]
       73 LOADN                            R10 10
       74 MOVE                             R21 R10
       75 ADD                              R22 R10 R17
       76 ADDK                             R10 R22 K6 [3]
       77 MOVE                             R19 R21
       78 LOADN                            R22 10
       79 LOADN                            R25 10
       80 ADD                              R24 R25 R8
       81 MUL                              R23 R9 R24
       82 ADD                              R20 R22 R23
       83 LOADK                            R22 K20 ["Tag"]
       84 MOVE                             R23 R14
       85 CONCAT                           R21 R22 R23
       86 GETUPVAL                         R23 2
       87 GETTABLEKS                       R22 R23 K21 ["createElement"]
       89 GETUPVAL                         R23 3
       90 DUPTABLE                         R24 K27 [{"Text", "Position", "Size", "textSize", "onClose"}]
       91 GETTABLEKS                       R25 R15 K9 ["localizedDisplayName"]
       93 SETTABLEKS                       R25 R24 K22 ["Text"]
       95 GETIMPORT                        R25 K29 [UDim2.new]
       97 LOADN                            R26 0
       98 MOVE                             R27 R19
       99 LOADN                            R28 0
      100 MOVE                             R29 R20
      101 CALL                             R25 4 1
      102 SETTABLEKS                       R25 R24 K23 ["Position"]
      104 GETIMPORT                        R25 K29 [UDim2.new]
      106 LOADN                            R26 0
      107 MOVE                             R27 R17
      108 LOADN                            R28 0
      109 MOVE                             R29 R18
      110 CALL                             R25 4 1
      111 SETTABLEKS                       R25 R24 K24 ["Size"]
      113 SETTABLEKS                       R16 R24 K25 ["textSize"]
      115 NEWCLOSURE                       R25 P1
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R15
      118 SETTABLEKS                       R25 R24 K26 ["onClose"]
      120 CALL                             R22 2 1
      121 SETTABLE                         R22 R7 R21
      122 FORNLOOP                         R12
      123 MOVE                             R14 R10
      124 ADDK                             R15 R10 K30 [100]
      125 GETTABLEKS                       R18 R2 K18 ["textFieldSize"]
      127 GETTABLEKS                       R17 R18 K15 ["X"]
      129 SUBK                             R16 R17 K17 [10]
      130 JUMPIFNOTLT                      R16 R15 ; [+4]
      132 ADDK                             R9 R9 K19 [1]
      133 LOADN                            R10 10
      134 MOVE                             R14 R10
      135 ADDK                             R15 R10 K30 [100]
      136 ADDK                             R10 R15 K6 [3]
      137 MOVE                             R12 R14
      138 LOADN                            R15 10
      139 LOADN                            R18 10
      140 ADD                              R17 R18 R8
      141 MUL                              R16 R9 R17
      142 ADD                              R13 R15 R16
      143 GETUPVAL                         R15 2
      144 GETTABLEKS                       R14 R15 K21 ["createElement"]
      146 LOADK                            R15 K31 ["TextBox"]
      147 NEWTABLE                         R16 16 0
      149 LOADN                            R17 1
      150 SETTABLEKS                       R17 R16 K32 ["BackgroundTransparency"]
      152 LOADB                            R17 0
      153 SETTABLEKS                       R17 R16 K33 ["ClearTextOnFocus"]
      155 LOADB                            R17 1
      156 SETTABLEKS                       R17 R16 K34 ["ClipsDescendants"]
      158 GETUPVAL                         R18 0
      159 GETTABLEKS                       R17 R18 K10 ["FONT"]
      161 SETTABLEKS                       R17 R16 K35 ["Font"]
      163 GETIMPORT                        R17 K29 [UDim2.new]
      165 LOADN                            R18 0
      166 MOVE                             R19 R12
      167 LOADN                            R20 0
      168 MOVE                             R21 R13
      169 CALL                             R17 4 1
      170 SETTABLEKS                       R17 R16 K23 ["Position"]
      172 GETIMPORT                        R17 K29 [UDim2.new]
      174 LOADN                            R18 0
      175 GETTABLEKS                       R21 R2 K18 ["textFieldSize"]
      177 GETTABLEKS                       R20 R21 K15 ["X"]
      179 SUB                              R19 R20 R12
      180 LOADN                            R20 0
      181 MOVE                             R21 R8
      182 CALL                             R17 4 1
      183 SETTABLEKS                       R17 R16 K24 ["Size"]
      185 GETTABLEKS                       R18 R3 K8 ["tags"]
      187 GETTABLEKS                       R17 R18 K36 ["textColor"]
      189 SETTABLEKS                       R17 R16 K37 ["TextColor3"]
      191 GETUPVAL                         R18 0
      192 GETTABLEKS                       R17 R18 K7 ["FONT_SIZE_TITLE"]
      194 SETTABLEKS                       R17 R16 K38 ["TextSize"]
      196 GETIMPORT                        R17 K42 [Enum.TextXAlignment.Left]
      198 SETTABLEKS                       R17 R16 K40 ["TextXAlignment"]
      200 GETIMPORT                        R17 K45 [Enum.TextYAlignment.Center]
      202 SETTABLEKS                       R17 R16 K43 ["TextYAlignment"]
      204 GETTABLEKS                       R17 R0 K46 ["lastText"]
      206 SETTABLEKS                       R17 R16 K22 ["Text"]
      208 GETUPVAL                         R19 2
      209 GETTABLEKS                       R18 R19 K47 ["Event"]
      211 GETTABLEKS                       R17 R18 K48 ["Focused"]
      213 GETTABLEKS                       R18 R0 K49 ["onTextBoxFocused"]
      215 SETTABLE                         R18 R16 R17
      216 GETUPVAL                         R19 2
      217 GETTABLEKS                       R18 R19 K47 ["Event"]
      219 GETTABLEKS                       R17 R18 K50 ["FocusLost"]
      221 GETTABLEKS                       R18 R0 K51 ["onTextBoxFocusLost"]
      223 SETTABLE                         R18 R16 R17
      224 GETUPVAL                         R19 2
      225 GETTABLEKS                       R18 R19 K52 ["Change"]
      227 GETTABLEKS                       R17 R18 K22 ["Text"]
      229 GETTABLEKS                       R18 R0 K53 ["onTextBoxTextChanged"]
      231 SETTABLE                         R18 R16 R17
      232 GETUPVAL                         R19 2
      233 GETTABLEKS                       R18 R19 K52 ["Change"]
      235 GETTABLEKS                       R17 R18 K54 ["CursorPosition"]
      237 GETTABLEKS                       R18 R0 K55 ["onTextBoxCursorPositionChanged"]
      239 SETTABLE                         R18 R16 R17
      240 GETUPVAL                         R18 2
      241 GETTABLEKS                       R17 R18 K56 ["Ref"]
      243 GETTABLEKS                       R18 R0 K57 ["textBoxRef"]
      245 SETTABLE                         R18 R16 R17
      246 CALL                             R14 2 1
      247 SETTABLEKS                       R14 R7 K31 ["TextBox"]
      249 GETUPVAL                         R14 4
      250 GETTABLEKS                       R15 R0 K46 ["lastText"]
      252 CALL                             R14 1 1
      253 LOADB                            R15 0
      254 LENGTH                           R16 R14
      255 LOADN                            R17 0
      256 JUMPIFNOTLT                      R17 R16 ; [+13]
      258 LOADB                            R15 0
      259 GETTABLEKS                       R17 R1 K58 ["suggestions"]
      261 LENGTH                           R16 R17
      262 JUMPIFNOTEQKN                    R16 K59 [0] ; [+7]
      264 GETTABLEKS                       R16 R1 K60 ["latestTagSearchQuery"]
      266 JUMPIFEQ                         R14 R16 ; [+2]
      268 LOADB                            R15 0 +1
      269 LOADB                            R15 1
      270 LOADNIL                          R16
      271 LOADNIL                          R17
      272 JUMPIFNOT                        R15 ; [+13]
      273 GETTABLEKS                       R18 R3 K61 ["inputFields"]
      275 GETTABLEKS                       R16 R18 K62 ["error"]
      277 GETTABLEKS                       R18 R1 K63 ["Localization"]
      279 LOADK                            R20 K64 ["Tags"]
      280 LOADK                            R21 K65 ["NoTagFound"]
      281 NAMECALL                         R18 R18 K66 ["getText"]
      283 CALL                             R18 3 1
      284 MOVE                             R17 R18
      285 JUMP                             ; [+17]
      286 GETTABLEKS                       R18 R3 K61 ["inputFields"]
      288 GETTABLEKS                       R16 R18 K67 ["toolTip"]
      290 GETTABLEKS                       R18 R1 K63 ["Localization"]
      292 LOADK                            R20 K64 ["Tags"]
      293 LOADK                            R21 K68 ["MaxTagsDescription"]
      294 DUPTABLE                         R22 K70 [{"max"}]
      295 GETTABLEKS                       R23 R1 K71 ["maximumItemTagsPerItem"]
      297 SETTABLEKS                       R23 R22 K69 ["max"]
      299 NAMECALL                         R18 R18 K66 ["getText"]
      301 CALL                             R18 4 1
      302 MOVE                             R17 R18
      303 LOADN                            R22 10
      304 ADD                              R21 R22 R8
      305 LOADN                            R24 10
      306 ADD                              R23 R24 R8
      307 MUL                              R22 R9 R23
      308 ADD                              R20 R21 R22
      309 ADDK                             R19 R20 K17 [10]
      310 GETUPVAL                         R20 5
      311 ADD                              R18 R19 R20
      312 GETUPVAL                         R20 2
      313 GETTABLEKS                       R19 R20 K21 ["createElement"]
      315 LOADK                            R20 K72 ["Frame"]
      316 NEWTABLE                         R21 8 0
      318 LOADB                            R22 1
      319 SETTABLEKS                       R22 R21 K73 ["Active"]
      321 LOADN                            R22 1
      322 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
      324 LOADN                            R22 0
      325 SETTABLEKS                       R22 R21 K74 ["BorderSizePixel"]
      327 SETTABLEKS                       R5 R21 K4 ["LayoutOrder"]
      329 GETIMPORT                        R22 K29 [UDim2.new]
      331 LOADN                            R23 1
      332 LOADN                            R24 0
      333 LOADN                            R25 0
      334 ADDK                             R26 R18 K17 [10]
      335 CALL                             R22 4 1
      336 SETTABLEKS                       R22 R21 K24 ["Size"]
      338 GETUPVAL                         R23 2
      339 GETTABLEKS                       R22 R23 K56 ["Ref"]
      341 GETTABLEKS                       R23 R1 K75 ["ForwardRef"]
      343 SETTABLE                         R23 R21 R22
      344 DUPTABLE                         R22 K79 [{"UIListLayout", "Title", "Content", "Suggestions"}]
      345 GETUPVAL                         R24 2
      346 GETTABLEKS                       R23 R24 K21 ["createElement"]
      348 LOADK                            R24 K76 ["UIListLayout"]
      349 DUPTABLE                         R25 K85 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
      350 GETIMPORT                        R26 K87 [Enum.FillDirection.Horizontal]
      352 SETTABLEKS                       R26 R25 K80 ["FillDirection"]
      354 GETIMPORT                        R26 K88 [Enum.HorizontalAlignment.Left]
      356 SETTABLEKS                       R26 R25 K81 ["HorizontalAlignment"]
      358 GETIMPORT                        R26 K90 [UDim.new]
      360 LOADN                            R27 0
      361 LOADN                            R28 0
      362 CALL                             R26 2 1
      363 SETTABLEKS                       R26 R25 K82 ["Padding"]
      365 GETIMPORT                        R26 K91 [Enum.SortOrder.LayoutOrder]
      367 SETTABLEKS                       R26 R25 K83 ["SortOrder"]
      369 GETIMPORT                        R26 K93 [Enum.VerticalAlignment.Top]
      371 SETTABLEKS                       R26 R25 K84 ["VerticalAlignment"]
      373 CALL                             R23 2 1
      374 SETTABLEKS                       R23 R22 K76 ["UIListLayout"]
      376 GETUPVAL                         R24 2
      377 GETTABLEKS                       R23 R24 K21 ["createElement"]
      379 LOADK                            R24 K94 ["TextLabel"]
      380 DUPTABLE                         R25 K95 [{"BackgroundTransparency", "BorderSizePixel", "Font", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      381 LOADN                            R26 1
      382 SETTABLEKS                       R26 R25 K32 ["BackgroundTransparency"]
      384 LOADN                            R26 0
      385 SETTABLEKS                       R26 R25 K74 ["BorderSizePixel"]
      387 GETUPVAL                         R27 0
      388 GETTABLEKS                       R26 R27 K10 ["FONT"]
      390 SETTABLEKS                       R26 R25 K35 ["Font"]
      392 GETIMPORT                        R26 K29 [UDim2.new]
      394 LOADN                            R27 0
      395 GETUPVAL                         R29 6
      396 GETTABLEKS                       R28 R29 K96 ["TITLE_GUTTER_WIDTH"]
      398 LOADN                            R29 1
      399 LOADN                            R30 0
      400 CALL                             R26 4 1
      401 SETTABLEKS                       R26 R25 K24 ["Size"]
      403 SETTABLEKS                       R4 R25 K22 ["Text"]
      405 GETTABLEKS                       R26 R6 K97 ["titleTextColor"]
      407 SETTABLEKS                       R26 R25 K37 ["TextColor3"]
      409 GETUPVAL                         R27 0
      410 GETTABLEKS                       R26 R27 K7 ["FONT_SIZE_TITLE"]
      412 SETTABLEKS                       R26 R25 K38 ["TextSize"]
      414 GETIMPORT                        R26 K42 [Enum.TextXAlignment.Left]
      416 SETTABLEKS                       R26 R25 K40 ["TextXAlignment"]
      418 GETIMPORT                        R26 K98 [Enum.TextYAlignment.Top]
      420 SETTABLEKS                       R26 R25 K43 ["TextYAlignment"]
      422 LOADN                            R26 1
      423 SETTABLEKS                       R26 R25 K4 ["LayoutOrder"]
      425 CALL                             R23 2 1
      426 SETTABLEKS                       R23 R22 K3 ["Title"]
      428 GETUPVAL                         R24 2
      429 GETTABLEKS                       R23 R24 K21 ["createElement"]
      431 LOADK                            R24 K72 ["Frame"]
      432 DUPTABLE                         R25 K99 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      433 LOADN                            R26 1
      434 SETTABLEKS                       R26 R25 K32 ["BackgroundTransparency"]
      436 LOADN                            R26 2
      437 SETTABLEKS                       R26 R25 K4 ["LayoutOrder"]
      439 GETIMPORT                        R26 K29 [UDim2.new]
      441 LOADN                            R27 1
      442 GETUPVAL                         R30 6
      443 GETTABLEKS                       R29 R30 K96 ["TITLE_GUTTER_WIDTH"]
      445 MINUS                            R28 R29
      446 LOADN                            R29 0
      447 MOVE                             R30 R18
      448 CALL                             R26 4 1
      449 SETTABLEKS                       R26 R25 K24 ["Size"]
      451 DUPTABLE                         R26 K102 [{"Textfield", "Description"}]
      452 GETUPVAL                         R28 2
      453 GETTABLEKS                       R27 R28 K21 ["createElement"]
      455 LOADK                            R28 K72 ["Frame"]
      456 NEWTABLE                         R29 8 0
      458 LOADN                            R30 1
      459 SETTABLEKS                       R30 R29 K32 ["BackgroundTransparency"]
      461 GETIMPORT                        R30 K29 [UDim2.new]
      463 LOADN                            R31 1
      464 LOADN                            R32 0
      465 LOADN                            R33 1
      466 GETUPVAL                         R35 5
      467 MINUS                            R34 R35
      468 CALL                             R30 4 1
      469 SETTABLEKS                       R30 R29 K24 ["Size"]
      471 GETUPVAL                         R32 2
      472 GETTABLEKS                       R31 R32 K52 ["Change"]
      474 GETTABLEKS                       R30 R31 K103 ["AbsoluteSize"]
      476 GETTABLEKS                       R31 R0 K104 ["onTextFieldAbsoluteSizeChanged"]
      478 SETTABLE                         R31 R29 R30
      479 GETUPVAL                         R32 2
      480 GETTABLEKS                       R31 R32 K52 ["Change"]
      482 GETTABLEKS                       R30 R31 K105 ["AbsolutePosition"]
      484 GETTABLEKS                       R31 R0 K106 ["onTextFieldAbsolutePositionChanged"]
      486 SETTABLE                         R31 R29 R30
      487 GETUPVAL                         R31 2
      488 GETTABLEKS                       R30 R31 K56 ["Ref"]
      490 GETTABLEKS                       R31 R0 K107 ["textFieldRef"]
      492 SETTABLE                         R31 R29 R30
      493 DUPTABLE                         R30 K108 [{"Textfield"}]
      494 GETUPVAL                         R32 2
      495 GETTABLEKS                       R31 R32 K21 ["createElement"]
      497 GETUPVAL                         R32 7
      498 DUPTABLE                         R33 K111 [{"Style", "StyleModifier"}]
      499 JUMPIFNOT                        R15 ; [+2]
      500 LOADK                            R34 K112 ["TagsComponentError"]
      501 JUMP                             ; [+1]
      502 LOADK                            R34 K113 ["TagsComponent"]
      503 SETTABLEKS                       R34 R33 K109 ["Style"]
      505 NAMECALL                         R35 R0 K114 ["canAddTags"]
      507 CALL                             R35 1 1
      508 JUMPIF                           R35 ; [+4]
      509 GETUPVAL                         R35 8
      510 GETTABLEKS                       R34 R35 K115 ["Disabled"]
      512 JUMPIF                           R34 ; [+8]
      513 GETTABLEKS                       R35 R2 K116 ["active"]
      515 JUMPIFNOT                        R35 ; [+4]
      516 GETUPVAL                         R35 8
      517 GETTABLEKS                       R34 R35 K117 ["Selected"]
      519 JUMPIF                           R34 ; [+1]
      520 LOADNIL                          R34
      521 SETTABLEKS                       R34 R33 K110 ["StyleModifier"]
      523 MOVE                             R34 R7
      524 CALL                             R31 3 1
      525 SETTABLEKS                       R31 R30 K100 ["Textfield"]
      527 CALL                             R27 3 1
      528 SETTABLEKS                       R27 R26 K100 ["Textfield"]
      530 GETUPVAL                         R28 2
      531 GETTABLEKS                       R27 R28 K21 ["createElement"]
      533 LOADK                            R28 K94 ["TextLabel"]
      534 DUPTABLE                         R29 K118 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder", "Text", "TextColor3", "TextXAlignment"}]
      535 LOADN                            R30 1
      536 SETTABLEKS                       R30 R29 K32 ["BackgroundTransparency"]
      538 GETIMPORT                        R30 K29 [UDim2.new]
      540 LOADN                            R31 1
      541 LOADN                            R32 0
      542 LOADN                            R33 0
      543 GETUPVAL                         R34 5
      544 CALL                             R30 4 1
      545 SETTABLEKS                       R30 R29 K24 ["Size"]
      547 GETIMPORT                        R30 K29 [UDim2.new]
      549 LOADN                            R31 0
      550 LOADN                            R32 0
      551 LOADN                            R33 1
      552 GETUPVAL                         R35 5
      553 MINUS                            R34 R35
      554 CALL                             R30 4 1
      555 SETTABLEKS                       R30 R29 K23 ["Position"]
      557 LOADN                            R30 2
      558 SETTABLEKS                       R30 R29 K4 ["LayoutOrder"]
      560 SETTABLEKS                       R17 R29 K22 ["Text"]
      562 SETTABLEKS                       R16 R29 K37 ["TextColor3"]
      564 GETIMPORT                        R30 K42 [Enum.TextXAlignment.Left]
      566 SETTABLEKS                       R30 R29 K40 ["TextXAlignment"]
      568 CALL                             R27 2 1
      569 SETTABLEKS                       R27 R26 K101 ["Description"]
      571 CALL                             R23 3 1
      572 SETTABLEKS                       R23 R22 K77 ["Content"]
      574 GETTABLEKS                       R23 R2 K116 ["active"]
      576 JUMPIFNOT                        R23 ; [+66]
      577 NAMECALL                         R23 R0 K114 ["canAddTags"]
      579 CALL                             R23 1 1
      580 JUMPIFNOT                        R23 ; [+62]
      581 LOADB                            R23 0
      582 GETTABLEKS                       R25 R1 K58 ["suggestions"]
      584 LENGTH                           R24 R25
      585 LOADN                            R25 0
      586 JUMPIFNOTLT                      R25 R24 ; [+56]
      588 GETUPVAL                         R24 2
      589 GETTABLEKS                       R23 R24 K21 ["createElement"]
      591 GETUPVAL                         R24 9
      592 DUPTABLE                         R25 K128 [{"items", "onItemClicked", "closeDropdown", "dropDownWidth", "top", "left", "windowPosition", "windowSize", "setDropdownHeight"}]
      593 NAMECALL                         R26 R0 K129 ["getDropdownItems"]
      595 CALL                             R26 1 1
      596 SETTABLEKS                       R26 R25 K119 ["items"]
      598 NEWCLOSURE                       R26 P2
      599 CAPTURE                          VAL R0
      600 CAPTURE                          VAL R1
      601 SETTABLEKS                       R26 R25 K120 ["onItemClicked"]
      603 NEWCLOSURE                       R26 P3
      604 CAPTURE                          VAL R0
      605 SETTABLEKS                       R26 R25 K121 ["closeDropdown"]
      607 GETTABLEKS                       R27 R2 K18 ["textFieldSize"]
      609 GETTABLEKS                       R26 R27 K15 ["X"]
      611 SETTABLEKS                       R26 R25 K122 ["dropDownWidth"]
      613 GETTABLEKS                       R28 R2 K130 ["textFieldPosition"]
      615 GETTABLEKS                       R27 R28 K16 ["Y"]
      617 GETTABLEKS                       R29 R2 K18 ["textFieldSize"]
      619 GETTABLEKS                       R28 R29 K16 ["Y"]
      621 ADD                              R26 R27 R28
      622 SETTABLEKS                       R26 R25 K123 ["top"]
      624 GETTABLEKS                       R27 R2 K130 ["textFieldPosition"]
      626 GETTABLEKS                       R26 R27 K15 ["X"]
      628 SETTABLEKS                       R26 R25 K124 ["left"]
      630 GETTABLEKS                       R26 R2 K130 ["textFieldPosition"]
      632 SETTABLEKS                       R26 R25 K125 ["windowPosition"]
      634 GETTABLEKS                       R26 R2 K18 ["textFieldSize"]
      636 SETTABLEKS                       R26 R25 K126 ["windowSize"]
      638 GETTABLEKS                       R26 R1 K127 ["setDropdownHeight"]
      640 SETTABLEKS                       R26 R25 K127 ["setDropdownHeight"]
      642 CALL                             R23 2 1
      643 SETTABLEKS                       R23 R22 K78 ["Suggestions"]
      645 CALL                             R19 3 -1
      646 CLOSEUPVALS                      R9
      647 RETURN                           R19 -1

PROTO_18:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K3 [{"suggestions", "latestTagSuggestionTime", "latestTagSearchQuery"}]
        6 GETTABLEKS                       R3 R0 K4 ["tagSuggestions"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K0 ["suggestions"]
       13 GETTABLEKS                       R4 R0 K1 ["latestTagSuggestionTime"]
       15 ORK                              R3 R4 K5 [0]
       16 SETTABLEKS                       R3 R2 K1 ["latestTagSuggestionTime"]
       18 GETTABLEKS                       R3 R0 K2 ["latestTagSearchQuery"]
       20 SETTABLEKS                       R3 R2 K2 ["latestTagSearchQuery"]
       22 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [tick]
        6 CALL                             R3 0 1
        7 LOADK                            R4 K2 [""]
        8 CALL                             R1 3 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K2 [{"getSuggestions", "clearSuggestions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getSuggestions"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["clearSuggestions"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R5 R0 K5 ["Src"]
       17 GETTABLEKS                       R4 R5 K6 ["Util"]
       19 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       21 GETTABLEKS                       R2 R3 K8 ["getFFlagToolboxFixNullRbxCrashes"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K4 [require]
       26 GETTABLEKS                       R5 R0 K5 ["Src"]
       28 GETTABLEKS                       R4 R5 K9 ["Flags"]
       30 GETTABLEKS                       R3 R4 K10 ["getFFlagRemoveItemTags"]
       32 CALL                             R2 1 1
       33 MOVE                             R3 R2
       34 CALL                             R3 0 1
       35 JUMPIF                           R3 ; [+200]
       36 GETTABLEKS                       R3 R0 K11 ["Packages"]
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R3 K12 ["Roact"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R3 K13 ["RoactRodux"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R3 K14 ["Cryo"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K4 [require]
       55 GETTABLEKS                       R8 R3 K15 ["Framework"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R9 R0 K5 ["Src"]
       60 GETTABLEKS                       R8 R9 K6 ["Util"]
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R10 R8 K16 ["Constants"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R11 R8 K17 ["AssetConfigConstants"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K4 [require]
       74 GETTABLEKS                       R12 R8 K18 ["trimString"]
       76 CALL                             R11 1 1
       77 MOVE                             R13 R2
       78 CALL                             R13 0 1
       79 JUMPIFNOT                        R13 ; [+2]
       80 LOADNIL                          R12
       81 JUMP                             ; [+5]
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R13 R8 K19 ["TagsUtil"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R7 K20 ["ContextServices"]
       89 GETTABLEKS                       R14 R13 K21 ["withContext"]
       91 GETIMPORT                        R15 K4 [require]
       93 GETTABLEKS                       R18 R0 K5 ["Src"]
       95 GETTABLEKS                       R17 R18 K20 ["ContextServices"]
       97 GETTABLEKS                       R16 R17 K22 ["NetworkContext"]
       99 CALL                             R15 1 1
      100 GETTABLEKS                       R17 R7 K6 ["Util"]
      102 GETTABLEKS                       R16 R17 K23 ["StyleModifier"]
      104 GETTABLEKS                       R18 R7 K6 ["Util"]
      106 GETTABLEKS                       R17 R18 K24 ["GetTextSize"]
      108 GETTABLEKS                       R18 R7 K25 ["UI"]
      110 GETTABLEKS                       R19 R18 K26 ["RoundBox"]
      112 GETTABLEKS                       R21 R7 K27 ["Wrappers"]
      114 GETTABLEKS                       R20 R21 K28 ["withForwardRef"]
      116 GETTABLEKS                       R22 R0 K5 ["Src"]
      118 GETTABLEKS                       R21 R22 K29 ["Components"]
      120 GETIMPORT                        R22 K4 [require]
      122 GETTABLEKS                       R23 R21 K30 ["DropdownItemsList"]
      124 CALL                             R22 1 1
      125 GETIMPORT                        R23 K4 [require]
      127 GETTABLEKS                       R26 R21 K31 ["AssetConfiguration"]
      129 GETTABLEKS                       R25 R26 K32 ["CatalogTags"]
      131 GETTABLEKS                       R24 R25 K33 ["CatalogTag"]
      133 CALL                             R23 1 1
      134 GETIMPORT                        R24 K4 [require]
      136 GETTABLEKS                       R28 R0 K5 ["Src"]
      138 GETTABLEKS                       R27 R28 K34 ["Networking"]
      140 GETTABLEKS                       R26 R27 K35 ["Requests"]
      142 GETTABLEKS                       R25 R26 K36 ["GetTagSuggestionsRequest"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K4 [require]
      147 GETTABLEKS                       R28 R0 K5 ["Src"]
      149 GETTABLEKS                       R27 R28 K37 ["Actions"]
      151 GETTABLEKS                       R26 R27 K38 ["SetTagSuggestions"]
      153 CALL                             R25 1 1
      154 LOADN                            R28 5
      155 GETTABLEKS                       R29 R9 K40 ["FONT_SIZE_MEDIUM"]
      157 ADD                              R27 R28 R29
      158 ADDK                             R26 R27 K39 [5]
      159 GETTABLEKS                       R27 R4 K41 ["PureComponent"]
      161 LOADK                            R29 K42 ["TagsComponent"]
      162 NAMECALL                         R27 R27 K43 ["extend"]
      164 CALL                             R27 2 1
      165 DUPCLOSURE                       R28 K44 [PROTO_6]
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R1
      169 SETTABLEKS                       R28 R27 K45 ["init"]
      171 DUPCLOSURE                       R28 K46 [PROTO_7]
      172 SETTABLEKS                       R28 R27 K47 ["canAddTags"]
      174 DUPCLOSURE                       R28 K48 [PROTO_8]
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R6
      177 SETTABLEKS                       R28 R27 K49 ["addTag"]
      179 DUPCLOSURE                       R28 K50 [PROTO_9]
      180 SETTABLEKS                       R28 R27 K51 ["removeTag"]
      182 DUPCLOSURE                       R28 K52 [PROTO_10]
      183 SETTABLEKS                       R28 R27 K53 ["getDropdownItems"]
      185 DUPCLOSURE                       R28 K54 [PROTO_11]
      186 SETTABLEKS                       R28 R27 K55 ["clearSuggestions"]
      188 DUPCLOSURE                       R28 K56 [PROTO_12]
      189 SETTABLEKS                       R28 R27 K57 ["didMount"]
      191 DUPCLOSURE                       R28 K58 [PROTO_17]
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R22
      202 SETTABLEKS                       R28 R27 K59 ["render"]
      204 DUPCLOSURE                       R28 K60 [PROTO_18]
      205 DUPCLOSURE                       R29 K61 [PROTO_21]
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R25
      208 MOVE                             R30 R14
      209 DUPTABLE                         R31 K65 [{"Stylizer", "Localization", "Network"}]
      210 GETTABLEKS                       R32 R13 K62 ["Stylizer"]
      212 SETTABLEKS                       R32 R31 K62 ["Stylizer"]
      214 GETTABLEKS                       R32 R13 K63 ["Localization"]
      216 SETTABLEKS                       R32 R31 K63 ["Localization"]
      218 SETTABLEKS                       R15 R31 K64 ["Network"]
      220 CALL                             R30 1 1
      221 MOVE                             R31 R27
      222 CALL                             R30 1 1
      223 MOVE                             R27 R30
      224 GETTABLEKS                       R30 R5 K66 ["connect"]
      226 MOVE                             R31 R28
      227 MOVE                             R32 R29
      228 CALL                             R30 2 1
      229 MOVE                             R31 R27
      230 CALL                             R30 1 1
      231 MOVE                             R27 R30
      232 MOVE                             R30 R20
      233 MOVE                             R31 R27
      234 CALL                             R30 1 -1
      235 RETURN                           R30 -1
      236 RETURN                           R0 0
