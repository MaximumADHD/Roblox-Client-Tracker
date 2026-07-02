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
        7 ORK                              R2 R0 K1 [""]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["beginEditingAsync"]
       12 CALL                             R2 0 0
       13 GETTABLEN                        R3 R1 1
       14 FASTCALL1                        TONUMBER R3 ; [+2]
       15 GETIMPORT                        R2 K4 [tonumber]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 2
       19 MOVE                             R4 R1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K5 ["partConfigs"]
       23 LENGTH                           R5 R6
       24 CALL                             R3 2 1
       25 LENGTH                           R4 R1
       26 JUMPIFNOTEQKN                    R4 K6 [1] ; [+20]
       28 JUMPIFEQKNIL                     R2 ; [+18]
       30 JUMPIFNOT                        R3 ; [+16]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K5 ["partConfigs"]
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K7 ["setPart"]
       40 GETTABLEKS                       R10 R8 K8 ["name"]
       42 MOVE                             R11 R2
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-8]
       46 JUMP                             ; [+21]
       47 JUMPIFNOT                        R3 ; [+20]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K5 ["partConfigs"]
       51 LOADNIL                          R5
       52 LOADNIL                          R6
       53 FORGPREP                         R4
       54 GETTABLE                         R10 R1 R7
       55 FASTCALL1                        TONUMBER R10 ; [+2]
       56 GETIMPORT                        R9 K4 [tonumber]
       58 CALL                             R9 1 1
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K7 ["setPart"]
       62 GETTABLEKS                       R11 R8 K8 ["name"]
       64 ORK                              R12 R9 K9 [0]
       65 CALL                             R10 2 0
       66 FORGLOOP                         R4 2 ; [-13]
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R4 R4 K10 ["finishEditing"]
       71 GETIMPORT                        R5 K14 [Enum.FinishRecordingOperation.Commit]
       73 CALL                             R4 1 0
       74 GETUPVAL                         R4 0
       75 GETTABLEKS                       R4 R4 K0 ["finishCombinedEdit"]
       77 CALL                             R4 0 0
       78 RETURN                           R0 0

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
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 NEWTABLE                         R7 0 4
       48 GETTABLEKS                       R8 R0 K9 ["beginEditingAsync"]
       50 GETTABLEKS                       R9 R0 K10 ["setPart"]
       52 GETTABLEKS                       R10 R0 K11 ["finishEditing"]
       54 GETTABLEKS                       R11 R0 K12 ["finishCombinedEdit"]
       56 SETLIST                          R7 R8 4 [1]
       58 CALL                             R5 2 1
       59 GETUPVAL                         R6 4
       60 GETUPVAL                         R7 5
       61 DUPTABLE                         R8 K15 [{"text", "readonly", "beginEditingAsync", "finishEditing", "textBoxRef", "Visible"}]
       62 NEWCLOSURE                       R11 P3
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R0
       65 NAMECALL                         R9 R1 K16 ["map"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K13 ["text"]
       70 SETTABLEKS                       R2 R8 K3 ["readonly"]
       72 SETTABLEKS                       R4 R8 K9 ["beginEditingAsync"]
       74 SETTABLEKS                       R5 R8 K11 ["finishEditing"]
       76 SETTABLEKS                       R3 R8 K14 ["textBoxRef"]
       78 GETTABLEKS                       R9 R0 K6 ["Visible"]
       80 SETTABLEKS                       R9 R8 K6 ["Visible"]
       82 CALL                             R6 2 -1
       83 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K4 ["Parent"]
       15 GETTABLEKS                       R3 R3 K4 ["Parent"]
       17 GETTABLEKS                       R3 R3 K4 ["Parent"]
       19 GETTABLEKS                       R3 R3 K4 ["Parent"]
       21 GETTABLEKS                       R3 R3 K7 ["EditorTextbox"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K6 [require]
       26 GETTABLEKS                       R4 R0 K8 ["Components"]
       28 GETTABLEKS                       R4 R4 K9 ["Util"]
       30 GETTABLEKS                       R4 R4 K10 ["Number"]
       32 GETTABLEKS                       R4 R4 K11 ["MultiNumberInput"]
       34 GETTABLEKS                       R4 R4 K12 ["NumberPartInput"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K6 [require]
       39 GETTABLEKS                       R5 R0 K13 ["PropertyEditorTypes"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K6 [require]
       44 GETTABLEKS                       R6 R1 K14 ["React"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R1 K15 ["SignalsReact"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R0 K9 ["Util"]
       56 GETTABLEKS                       R8 R8 K16 ["NumberDisplay"]
       58 GETTABLEKS                       R8 R8 K17 ["Parsing"]
       60 GETTABLEKS                       R8 R8 K18 ["MultiInput"]
       62 GETTABLEKS                       R8 R8 K19 ["anyValidNumbers"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K6 [require]
       67 GETTABLEKS                       R9 R0 K9 ["Util"]
       69 GETTABLEKS                       R9 R9 K16 ["NumberDisplay"]
       71 GETTABLEKS                       R9 R9 K20 ["Formatting"]
       73 GETTABLEKS                       R9 R9 K21 ["formatForMultiInput"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K6 [require]
       78 GETTABLEKS                       R10 R0 K9 ["Util"]
       80 GETTABLEKS                       R10 R10 K16 ["NumberDisplay"]
       82 GETTABLEKS                       R10 R10 K17 ["Parsing"]
       84 GETTABLEKS                       R10 R10 K18 ["MultiInput"]
       86 GETTABLEKS                       R10 R10 K22 ["stringsFromMultiInputString"]
       88 CALL                             R9 1 1
       89 GETTABLEKS                       R10 R5 K23 ["createElement"]
       91 DUPCLOSURE                       R11 K24 [PROTO_0]
       92 CAPTURE                          VAL R8
       93 DUPCLOSURE                       R12 K25 [PROTO_5]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R11
      101 GETTABLEKS                       R13 R5 K26 ["memo"]
      103 MOVE                             R14 R12
      104 CALL                             R13 1 -1
      105 RETURN                           R13 -1
