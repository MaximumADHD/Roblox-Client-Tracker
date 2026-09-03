PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R4 R1 1
        2 GETTABLEKS                       R4 R4 K0 ["name"]
        4 GETTABLE                         R3 R0 R4
        5 GETTABLEKS                       R3 R3 K1 ["value"]
        7 CALL                             R2 1 1
        8 LOADN                            R5 2
        9 LENGTH                           R3 R1
       10 LOADN                            R4 1
       11 FORNPREP                         R3
       12 MOVE                             R6 R2
       13 LOADK                            R7 K2 [", "]
       14 GETUPVAL                         R8 0
       15 GETTABLE                         R10 R1 R5
       16 GETTABLEKS                       R10 R10 K0 ["name"]
       18 GETTABLE                         R9 R0 R10
       19 GETTABLEKS                       R9 R9 K1 ["value"]
       21 CALL                             R8 1 1
       22 CONCAT                           R2 R6 R8
       23 FORNLOOP                         R3
       24 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["Visible"]
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 NAMECALL                         R0 R0 K2 ["focus"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["current"]
       19 NAMECALL                         R0 R0 K3 ["releaseFocus"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["finishCombinedEdit"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+72]
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+45]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["beginEditingAsync"]
       13 CALL                             R1 0 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K2 ["predictOrCreateExpression"]
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["predictFromExpressionResults"]
       21 CALL                             R1 2 1
       22 GETTABLEKS                       R2 R1 K4 ["type"]
       24 JUMPIFNOTEQKS                    R2 K5 ["error"] ; [+8]
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K6 ["warn"]
       29 GETTABLEKS                       R3 R1 K7 ["warning"]
       31 CALL                             R2 1 0
       32 JUMP                             ; [+11]
       33 GETTABLEKS                       R2 R1 K8 ["value"]
       35 JUMPIFEQKNIL                     R2 ; [+8]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K9 ["setPart"]
       40 LOADK                            R3 K8 ["value"]
       41 GETTABLEKS                       R4 R1 K8 ["value"]
       43 CALL                             R2 2 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K10 ["finishEditing"]
       47 GETIMPORT                        R3 K14 [Enum.FinishRecordingOperation.Commit]
       49 CALL                             R2 1 0
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K0 ["finishCombinedEdit"]
       53 CALL                             R2 0 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K1 ["beginEditingAsync"]
       58 CALL                             R1 0 0
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K9 ["setPart"]
       62 LOADK                            R2 K8 ["value"]
       63 GETUPVAL                         R3 3
       64 GETTABLEKS                       R3 R3 K15 ["createExpressionFromText"]
       66 MOVE                             R4 R0
       67 CALL                             R3 1 -1
       68 CALL                             R1 -1 0
       69 GETUPVAL                         R1 0
       70 GETTABLEKS                       R1 R1 K10 ["finishEditing"]
       72 GETIMPORT                        R2 K14 [Enum.FinishRecordingOperation.Commit]
       74 CALL                             R1 1 0
       75 GETUPVAL                         R1 0
       76 GETTABLEKS                       R1 R1 K0 ["finishCombinedEdit"]
       78 CALL                             R1 0 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R1 5
       81 ORK                              R2 R0 K16 [""]
       82 CALL                             R1 1 1
       83 GETUPVAL                         R2 0
       84 GETTABLEKS                       R2 R2 K1 ["beginEditingAsync"]
       86 CALL                             R2 0 0
       87 GETTABLEN                        R3 R1 1
       88 FASTCALL1                        TONUMBER R3 ; [+2]
       89 GETIMPORT                        R2 K18 [tonumber]
       91 CALL                             R2 1 1
       92 GETUPVAL                         R3 6
       93 MOVE                             R4 R1
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R6 R6 K19 ["partConfigs"]
       97 LENGTH                           R5 R6
       98 CALL                             R3 2 1
       99 LENGTH                           R4 R1
      100 JUMPIFNOTEQKN                    R4 K20 [1] ; [+20]
      102 JUMPIFEQKNIL                     R2 ; [+18]
      104 JUMPIFNOT                        R3 ; [+16]
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K19 ["partConfigs"]
      108 LOADNIL                          R5
      109 LOADNIL                          R6
      110 FORGPREP                         R4
      111 GETUPVAL                         R9 0
      112 GETTABLEKS                       R9 R9 K9 ["setPart"]
      114 GETTABLEKS                       R10 R8 K21 ["name"]
      116 MOVE                             R11 R2
      117 CALL                             R9 2 0
      118 FORGLOOP                         R4 2 ; [-8]
      120 JUMP                             ; [+21]
      121 JUMPIFNOT                        R3 ; [+20]
      122 GETUPVAL                         R4 0
      123 GETTABLEKS                       R4 R4 K19 ["partConfigs"]
      125 LOADNIL                          R5
      126 LOADNIL                          R6
      127 FORGPREP                         R4
      128 GETTABLE                         R10 R1 R7
      129 FASTCALL1                        TONUMBER R10 ; [+2]
      130 GETIMPORT                        R9 K18 [tonumber]
      132 CALL                             R9 1 1
      133 GETUPVAL                         R10 0
      134 GETTABLEKS                       R10 R10 K9 ["setPart"]
      136 GETTABLEKS                       R11 R8 K21 ["name"]
      138 ORK                              R12 R9 K22 [0]
      139 CALL                             R10 2 0
      140 FORGLOOP                         R4 2 ; [-13]
      142 GETUPVAL                         R4 0
      143 GETTABLEKS                       R4 R4 K10 ["finishEditing"]
      145 GETIMPORT                        R5 K14 [Enum.FinishRecordingOperation.Commit]
      147 CALL                             R4 1 0
      148 GETUPVAL                         R4 0
      149 GETTABLEKS                       R4 R4 K0 ["finishCombinedEdit"]
      151 CALL                             R4 0 0
      152 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["parts"]
        2 GETTABLEKS                       R2 R2 K1 ["value"]
        4 GETTABLEKS                       R2 R2 K2 ["multiple"]
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADK                            R1 K3 [""]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R2 R0 K0 ["parts"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["partConfigs"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalBinding"]
       10 GETTABLEKS                       R3 R0 K3 ["getInfo"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["useSignalState"]
       16 GETTABLEKS                       R4 R0 K3 ["getInfo"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K5 ["readonly"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["useRef"]
       24 LOADNIL                          R5
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R7 0 1
       34 GETTABLEKS                       R8 R0 K8 ["Visible"]
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K9 ["useCallback"]
       42 DUPCLOSURE                       R6 K10 [PROTO_2]
       43 NEWTABLE                         R7 0 0
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K11 ["useEventCallback"]
       49 NEWCLOSURE                       R7 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CALL                             R6 1 1
       58 GETUPVAL                         R7 9
       59 GETUPVAL                         R8 10
       60 DUPTABLE                         R9 K16 [{"text", "readonly", "beginEditingAsync", "finishEditing", "textBoxRef", "Visible"}]
       61 NEWCLOSURE                       R12 P3
       62 CAPTURE                          UPVAL U11
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R10 R2 K17 ["map"]
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K12 ["text"]
       69 SETTABLEKS                       R3 R9 K5 ["readonly"]
       71 SETTABLEKS                       R5 R9 K13 ["beginEditingAsync"]
       73 SETTABLEKS                       R6 R9 K14 ["finishEditing"]
       75 SETTABLEKS                       R4 R9 K15 ["textBoxRef"]
       77 GETTABLEKS                       R10 R0 K8 ["Visible"]
       79 SETTABLEKS                       R10 R9 K8 ["Visible"]
       81 CALL                             R7 2 -1
       82 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Guest"]
       13 GETTABLEKS                       R3 R3 K8 ["CapturableWarnings"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["NumberDisplay"]
       22 GETTABLEKS                       R4 R4 K11 ["Parsing"]
       24 GETTABLEKS                       R4 R4 K12 ["MultiInput"]
       26 GETTABLEKS                       R4 R4 K13 ["DEPRECATED_stringsFromMultiInputString"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K14 ["Components"]
       33 GETTABLEKS                       R5 R5 K15 ["EditorTextbox"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K16 ["Flags"]
       40 GETTABLEKS                       R6 R6 K17 ["EngineFeatureLuauExpressionReferencesMethod"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K9 ["Util"]
       47 GETTABLEKS                       R7 R7 K18 ["Expressions"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K16 ["Flags"]
       54 GETTABLEKS                       R8 R8 K19 ["LuauExpressionsEnabled"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K14 ["Components"]
       61 GETTABLEKS                       R9 R9 K9 ["Util"]
       63 GETTABLEKS                       R9 R9 K20 ["Number"]
       65 GETTABLEKS                       R9 R9 K21 ["MultiNumberInput"]
       67 GETTABLEKS                       R9 R9 K22 ["NumberPartInput"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R10 R0 K23 ["PropertyEditorTypes"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R11 R1 K24 ["React"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R1 K25 ["ReactUtils"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R1 K26 ["SignalsReact"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K9 ["Util"]
       94 GETTABLEKS                       R14 R14 K10 ["NumberDisplay"]
       96 GETTABLEKS                       R14 R14 K11 ["Parsing"]
       98 GETTABLEKS                       R14 R14 K12 ["MultiInput"]
      100 GETTABLEKS                       R14 R14 K27 ["anyValidNumbers"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K9 ["Util"]
      107 GETTABLEKS                       R15 R15 K10 ["NumberDisplay"]
      109 GETTABLEKS                       R15 R15 K28 ["Formatting"]
      111 GETTABLEKS                       R15 R15 K29 ["formatForMultiInput"]
      113 CALL                             R14 1 1
      114 GETTABLEKS                       R15 R10 K30 ["createElement"]
      116 DUPCLOSURE                       R16 K31 [PROTO_0]
      117 CAPTURE                          VAL R14
      118 DUPCLOSURE                       R17 K32 [PROTO_5]
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R16
      131 GETTABLEKS                       R18 R10 K33 ["memo"]
      133 MOVE                             R19 R17
      134 CALL                             R18 1 -1
      135 RETURN                           R18 -1
