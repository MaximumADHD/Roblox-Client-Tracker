PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R6 R1 1
        2 GETTABLEKS                       R5 R6 K0 ["name"]
        4 GETTABLE                         R4 R0 R5
        5 GETTABLEKS                       R3 R4 K1 ["value"]
        7 CALL                             R2 1 1
        8 LOADN                            R5 2
        9 LENGTH                           R3 R1
       10 LOADN                            R4 1
       11 FORNPREP                         R3
       12 MOVE                             R6 R2
       13 LOADK                            R7 K2 [", "]
       14 GETUPVAL                         R8 0
       15 GETTABLE                         R12 R1 R5
       16 GETTABLEKS                       R11 R12 K0 ["name"]
       18 GETTABLE                         R10 R0 R11
       19 GETTABLEKS                       R9 R10 K1 ["value"]
       21 CALL                             R8 1 1
       22 CONCAT                           R2 R6 R8
       23 FORNLOOP                         R3
       24 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["Visible"]
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["current"]
       12 NAMECALL                         R0 R0 K2 ["focus"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K0 ["current"]
       19 NAMECALL                         R0 R0 K3 ["releaseFocus"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADK                            R0 K1 [""]
        9 JUMP                             ; [+1]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["current"]
       17 GETTABLEKS                       R1 R2 K2 ["setSelectionStart"]
       19 LOADN                            R2 0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K0 ["current"]
       24 GETTABLEKS                       R1 R2 K3 ["setCursorPosition"]
       26 LENGTH                           R3 R0
       27 ADDK                             R2 R3 K4 [1]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ORK                              R1 R2 K0 [""]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K1 ["beginEditingAsync"]
        7 CALL                             R1 0 0
        8 GETTABLEN                        R2 R0 1
        9 FASTCALL1                        TONUMBER R2 ; [+2]
       10 GETIMPORT                        R1 K3 [tonumber]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K4 ["partConfigs"]
       18 LENGTH                           R4 R5
       19 CALL                             R2 2 1
       20 LENGTH                           R3 R0
       21 JUMPIFNOTEQKN                    R3 K5 [1] ; [+20]
       23 JUMPIFEQKNIL                     R1 ; [+18]
       25 JUMPIFNOT                        R2 ; [+16]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R3 R6 K4 ["partConfigs"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R8 R9 K6 ["setPart"]
       35 GETTABLEKS                       R9 R7 K7 ["name"]
       37 MOVE                             R10 R1
       38 CALL                             R8 2 0
       39 FORGLOOP                         R3 2 ; [-8]
       41 JUMP                             ; [+21]
       42 JUMPIFNOT                        R2 ; [+20]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R3 R6 K4 ["partConfigs"]
       46 LOADNIL                          R4
       47 LOADNIL                          R5
       48 FORGPREP                         R3
       49 GETTABLE                         R9 R0 R6
       50 FASTCALL1                        TONUMBER R9 ; [+2]
       51 GETIMPORT                        R8 K3 [tonumber]
       53 CALL                             R8 1 1
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R9 R10 K6 ["setPart"]
       57 GETTABLEKS                       R10 R7 K7 ["name"]
       59 ORK                              R11 R8 K8 [0]
       60 CALL                             R9 2 0
       61 FORGLOOP                         R3 2 ; [-13]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R3 R4 K9 ["finishEditing"]
       66 GETIMPORT                        R4 K13 [Enum.FinishRecordingOperation.Commit]
       68 CALL                             R3 1 0
       69 GETUPVAL                         R3 4
       70 LOADNIL                          R4
       71 CALL                             R3 1 0
       72 GETUPVAL                         R4 2
       73 GETTABLEKS                       R3 R4 K14 ["finishCombinedEdit"]
       75 CALL                             R3 0 0
       76 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["info"]
        3 GETTABLEKS                       R2 R3 K1 ["parts"]
        5 GETTABLEKS                       R3 R0 K2 ["partConfigs"]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R5 R0 K0 ["info"]
       10 GETTABLEKS                       R4 R5 K1 ["parts"]
       12 GETTABLEKS                       R3 R4 K3 ["value"]
       14 GETTABLEKS                       R2 R3 K4 ["multiple"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K5 ["useState"]
       19 LOADNIL                          R4
       20 CALL                             R3 1 2
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K6 ["useRef"]
       24 LOADNIL                          R6
       25 CALL                             R5 1 1
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K7 ["useEffect"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R8 0 1
       34 GETTABLEKS                       R9 R0 K8 ["Visible"]
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 0
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K9 ["useCallback"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R8 0 2
       49 MOVE                             R9 R1
       50 MOVE                             R10 R2
       51 SETLIST                          R8 R9 2 [1]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R7 R8 K9 ["useCallback"]
       57 NEWCLOSURE                       R8 P2
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R9 0 0
       61 CALL                             R7 2 1
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R8 R9 K9 ["useCallback"]
       65 NEWCLOSURE                       R9 P3
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R4
       71 NEWTABLE                         R10 0 5
       73 MOVE                             R11 R3
       74 GETTABLEKS                       R12 R0 K10 ["beginEditingAsync"]
       76 GETTABLEKS                       R13 R0 K11 ["setPart"]
       78 GETTABLEKS                       R14 R0 K12 ["finishEditing"]
       80 GETTABLEKS                       R15 R0 K13 ["finishCombinedEdit"]
       82 SETLIST                          R10 R11 5 [1]
       84 CALL                             R8 2 1
       85 GETUPVAL                         R9 4
       86 GETUPVAL                         R10 5
       87 DUPTABLE                         R11 K23 [{"text", "textBoxRef", "isDisabled", "width", "onFocusGained", "onChanged", "onFocusLost", "size", "label", "Visible"}]
       88 OR                               R12 R3 R1
       89 SETTABLEKS                       R12 R11 K14 ["text"]
       91 SETTABLEKS                       R5 R11 K15 ["textBoxRef"]
       93 GETTABLEKS                       R13 R0 K0 ["info"]
       95 GETTABLEKS                       R12 R13 K24 ["readonly"]
       97 SETTABLEKS                       R12 R11 K16 ["isDisabled"]
       99 GETIMPORT                        R12 K27 [UDim.new]
      101 LOADN                            R13 1
      102 LOADN                            R14 0
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K17 ["width"]
      106 SETTABLEKS                       R6 R11 K18 ["onFocusGained"]
      108 SETTABLEKS                       R7 R11 K19 ["onChanged"]
      110 SETTABLEKS                       R8 R11 K20 ["onFocusLost"]
      112 GETUPVAL                         R13 6
      113 GETTABLEKS                       R12 R13 K28 ["XSmall"]
      115 SETTABLEKS                       R12 R11 K21 ["size"]
      117 LOADK                            R12 K29 [""]
      118 SETTABLEKS                       R12 R11 K22 ["label"]
      120 GETTABLEKS                       R12 R0 K8 ["Visible"]
      122 SETTABLEKS                       R12 R11 K8 ["Visible"]
      124 CALL                             R9 2 -1
      125 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R8 R0 K8 ["Components"]
       18 GETTABLEKS                       R7 R8 K9 ["Util"]
       20 GETTABLEKS                       R6 R7 K10 ["Number"]
       22 GETTABLEKS                       R5 R6 K11 ["MultiNumberInput"]
       24 GETTABLEKS                       R4 R5 K12 ["NumberPartInput"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K13 ["PropertyEditorTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K14 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R11 R0 K9 ["Util"]
       41 GETTABLEKS                       R10 R11 K15 ["NumberDisplay"]
       43 GETTABLEKS                       R9 R10 K16 ["Parsing"]
       45 GETTABLEKS                       R8 R9 K17 ["MultiInput"]
       47 GETTABLEKS                       R7 R8 K18 ["anyValidNumbers"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R11 R0 K9 ["Util"]
       54 GETTABLEKS                       R10 R11 K15 ["NumberDisplay"]
       56 GETTABLEKS                       R9 R10 K19 ["Formatting"]
       58 GETTABLEKS                       R8 R9 K20 ["formatForMultiInput"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R13 R0 K9 ["Util"]
       65 GETTABLEKS                       R12 R13 K15 ["NumberDisplay"]
       67 GETTABLEKS                       R11 R12 K16 ["Parsing"]
       69 GETTABLEKS                       R10 R11 K17 ["MultiInput"]
       71 GETTABLEKS                       R9 R10 K21 ["stringsFromMultiInputString"]
       73 CALL                             R8 1 1
       74 GETTABLEKS                       R9 R5 K22 ["createElement"]
       76 GETTABLEKS                       R10 R2 K23 ["TextInput"]
       78 GETTABLEKS                       R12 R2 K24 ["Enums"]
       80 GETTABLEKS                       R11 R12 K25 ["InputSize"]
       82 DUPCLOSURE                       R12 K26 [PROTO_0]
       83 CAPTURE                          VAL R7
       84 DUPCLOSURE                       R13 K27 [PROTO_5]
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 RETURN                           R13 1
