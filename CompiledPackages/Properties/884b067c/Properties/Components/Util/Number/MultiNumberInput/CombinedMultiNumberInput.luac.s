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
        7 JUMPIFNOT                        R1 ; [+25]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["beginEditingAsync"]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["setPart"]
       15 LOADK                            R2 K3 ["value"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K4 ["createExpressionFromText"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 -1
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K5 ["finishEditing"]
       25 GETIMPORT                        R2 K9 [Enum.FinishRecordingOperation.Commit]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K0 ["finishCombinedEdit"]
       31 CALL                             R1 0 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 3
       34 ORK                              R2 R0 K10 [""]
       35 CALL                             R1 1 1
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K1 ["beginEditingAsync"]
       39 CALL                             R2 0 0
       40 GETTABLEN                        R3 R1 1
       41 FASTCALL1                        TONUMBER R3 ; [+2]
       42 GETIMPORT                        R2 K12 [tonumber]
       44 CALL                             R2 1 1
       45 GETUPVAL                         R3 4
       46 MOVE                             R4 R1
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K13 ["partConfigs"]
       50 LENGTH                           R5 R6
       51 CALL                             R3 2 1
       52 LENGTH                           R4 R1
       53 JUMPIFNOTEQKN                    R4 K14 [1] ; [+20]
       55 JUMPIFEQKNIL                     R2 ; [+18]
       57 JUMPIFNOT                        R3 ; [+16]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K13 ["partConfigs"]
       61 LOADNIL                          R5
       62 LOADNIL                          R6
       63 FORGPREP                         R4
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K2 ["setPart"]
       67 GETTABLEKS                       R10 R8 K15 ["name"]
       69 MOVE                             R11 R2
       70 CALL                             R9 2 0
       71 FORGLOOP                         R4 2 ; [-8]
       73 JUMP                             ; [+21]
       74 JUMPIFNOT                        R3 ; [+20]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K13 ["partConfigs"]
       78 LOADNIL                          R5
       79 LOADNIL                          R6
       80 FORGPREP                         R4
       81 GETTABLE                         R10 R1 R7
       82 FASTCALL1                        TONUMBER R10 ; [+2]
       83 GETIMPORT                        R9 K12 [tonumber]
       85 CALL                             R9 1 1
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K2 ["setPart"]
       89 GETTABLEKS                       R11 R8 K15 ["name"]
       91 ORK                              R12 R9 K16 [0]
       92 CALL                             R10 2 0
       93 FORGLOOP                         R4 2 ; [-13]
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R4 R4 K5 ["finishEditing"]
       98 GETIMPORT                        R5 K9 [Enum.FinishRecordingOperation.Commit]
      100 CALL                             R4 1 0
      101 GETUPVAL                         R4 0
      102 GETTABLEKS                       R4 R4 K0 ["finishCombinedEdit"]
      104 CALL                             R4 0 0
      105 RETURN                           R0 0

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
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
        9 GETTABLEKS                       R3 R0 K1 ["getInfo"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K3 ["readonly"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["useRef"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["useEffect"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R6 0 1
       27 GETTABLEKS                       R7 R0 K6 ["Visible"]
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 0
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K7 ["useCallback"]
       35 DUPCLOSURE                       R5 K8 [PROTO_2]
       36 NEWTABLE                         R6 0 0
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K9 ["useEventCallback"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CALL                             R5 1 1
       49 GETUPVAL                         R6 7
       50 GETUPVAL                         R7 8
       51 DUPTABLE                         R8 K14 [{"text", "readonly", "beginEditingAsync", "finishEditing", "textBoxRef", "Visible"}]
       52 NEWCLOSURE                       R11 P3
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          VAL R0
       55 NAMECALL                         R9 R1 K15 ["map"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K10 ["text"]
       60 SETTABLEKS                       R2 R8 K3 ["readonly"]
       62 SETTABLEKS                       R4 R8 K11 ["beginEditingAsync"]
       64 SETTABLEKS                       R5 R8 K12 ["finishEditing"]
       66 SETTABLEKS                       R3 R8 K13 ["textBoxRef"]
       68 GETTABLEKS                       R9 R0 K6 ["Visible"]
       70 SETTABLEKS                       R9 R8 K6 ["Visible"]
       72 CALL                             R6 2 -1
       73 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["NumberDisplay"]
       15 GETTABLEKS                       R3 R3 K9 ["Parsing"]
       17 GETTABLEKS                       R3 R3 K10 ["MultiInput"]
       19 GETTABLEKS                       R3 R3 K11 ["DEPRECATED_stringsFromMultiInputString"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R0 K12 ["Components"]
       26 GETTABLEKS                       R4 R4 K13 ["EditorTextbox"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K7 ["Util"]
       33 GETTABLEKS                       R5 R5 K14 ["Expressions"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K15 ["Flags"]
       40 GETTABLEKS                       R6 R6 K16 ["LuauExpressionsEnabled"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K7 ["Util"]
       49 GETTABLEKS                       R7 R7 K17 ["Number"]
       51 GETTABLEKS                       R7 R7 K18 ["MultiNumberInput"]
       53 GETTABLEKS                       R7 R7 K19 ["NumberPartInput"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K6 [require]
       58 GETTABLEKS                       R8 R0 K20 ["PropertyEditorTypes"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R1 K21 ["React"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R10 R1 K22 ["ReactUtils"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R1 K23 ["SignalsReact"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R12 R0 K7 ["Util"]
       80 GETTABLEKS                       R12 R12 K8 ["NumberDisplay"]
       82 GETTABLEKS                       R12 R12 K9 ["Parsing"]
       84 GETTABLEKS                       R12 R12 K10 ["MultiInput"]
       86 GETTABLEKS                       R12 R12 K24 ["anyValidNumbers"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K7 ["Util"]
       93 GETTABLEKS                       R13 R13 K8 ["NumberDisplay"]
       95 GETTABLEKS                       R13 R13 K25 ["Formatting"]
       97 GETTABLEKS                       R13 R13 K26 ["formatForMultiInput"]
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R13 R8 K27 ["createElement"]
      102 DUPCLOSURE                       R14 K28 [PROTO_0]
      103 CAPTURE                          VAL R12
      104 DUPCLOSURE                       R15 K29 [PROTO_5]
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R14
      115 GETTABLEKS                       R16 R8 K30 ["memo"]
      117 MOVE                             R17 R15
      118 CALL                             R16 1 -1
      119 RETURN                           R16 -1
