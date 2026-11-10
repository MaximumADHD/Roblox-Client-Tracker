PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["liveChannel"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useChannel"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["scope"]
        8 JUMP                             ; [+1]
        9 LOADK                            R3 K3 [""]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K4 ["channelId"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R5 R1 K5 ["field"]
       18 JUMP                             ; [+1]
       19 LOADK                            R5 K3 [""]
       20 CALL                             R2 3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K6 ["createElement"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K7 ["AxisInput"]
       27 DUPTABLE                         R5 K18 [{"axis", "value", "liveValue", "onChanged", "onLiveChanged", "onCommit", "roundToWholeStud", "interactable", "LayoutOrder", "markerTestId"}]
       28 GETTABLEKS                       R6 R0 K8 ["axis"]
       30 SETTABLEKS                       R6 R5 K8 ["axis"]
       32 GETTABLEKS                       R6 R0 K9 ["value"]
       34 SETTABLEKS                       R6 R5 K9 ["value"]
       36 FASTCALL1                        TYPEOF R2 ; [+3]
       37 MOVE                             R8 R2
       38 GETIMPORT                        R7 K20 [typeof]
       40 CALL                             R7 1 1
       41 JUMPIFNOTEQKS                    R7 K21 ["number"] ; [+3]
       43 MOVE                             R6 R2
       44 JUMP                             ; [+1]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K10 ["liveValue"]
       48 GETTABLEKS                       R6 R0 K11 ["onChanged"]
       50 SETTABLEKS                       R6 R5 K11 ["onChanged"]
       52 GETTABLEKS                       R6 R0 K11 ["onChanged"]
       54 SETTABLEKS                       R6 R5 K12 ["onLiveChanged"]
       56 JUMPIFNOT                        R1 ; [+3]
       57 GETTABLEKS                       R6 R1 K13 ["onCommit"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R6
       61 SETTABLEKS                       R6 R5 K13 ["onCommit"]
       63 GETTABLEKS                       R6 R0 K14 ["roundToWholeStud"]
       65 SETTABLEKS                       R6 R5 K14 ["roundToWholeStud"]
       67 GETTABLEKS                       R6 R0 K15 ["interactable"]
       69 SETTABLEKS                       R6 R5 K15 ["interactable"]
       71 GETTABLEKS                       R6 R0 K16 ["LayoutOrder"]
       73 SETTABLEKS                       R6 R5 K16 ["LayoutOrder"]
       75 GETUPVAL                         R6 3
       76 GETTABLEKS                       R6 R6 K22 ["PropertyRow"]
       78 GETTABLEKS                       R6 R6 K23 ["AxisMarker"]
       80 GETTABLEKS                       R7 R0 K8 ["axis"]
       82 CALL                             R6 1 1
       83 SETTABLEKS                       R6 R5 K17 ["markerTestId"]
       85 CALL                             R3 2 -1
       86 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 DUPTABLE                         R3 K4 [{"x", "y", "z"}]
        4 JUMPIFNOTEQKS                    R0 K1 ["x"] ; [+3]
        6 MOVE                             R4 R1
        7 JUMP                             ; [+4]
        8 MOVE                             R4 R2
        9 JUMPIFNOT                        R4 ; [+2]
       10 GETTABLEKS                       R4 R2 K1 ["x"]
       12 SETTABLEKS                       R4 R3 K1 ["x"]
       14 JUMPIFNOTEQKS                    R0 K2 ["y"] ; [+3]
       16 MOVE                             R4 R1
       17 JUMP                             ; [+4]
       18 MOVE                             R4 R2
       19 JUMPIFNOT                        R4 ; [+2]
       20 GETTABLEKS                       R4 R2 K2 ["y"]
       22 SETTABLEKS                       R4 R3 K2 ["y"]
       24 JUMPIFNOTEQKS                    R0 K3 ["z"] ; [+3]
       26 MOVE                             R4 R1
       27 JUMP                             ; [+4]
       28 MOVE                             R4 R2
       29 JUMPIFNOT                        R4 ; [+2]
       30 GETTABLEKS                       R4 R2 K3 ["z"]
       32 SETTABLEKS                       R4 R3 K3 ["z"]
       34 GETUPVAL                         R4 0
       35 SETTABLEKS                       R3 R4 K0 ["current"]
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useRef"]
        7 GETTABLEKS                       R3 R0 K2 ["value"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K2 ["value"]
       12 SETTABLEKS                       R3 R2 K3 ["current"]
       14 GETTABLEKS                       R3 R0 K4 ["setValue"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R3
       25 SETLIST                          R6 R7 1 [1]
       27 CALL                             R4 2 1
       28 NEWTABLE                         R5 0 0
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K6 ["Axes"]
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 DUPTABLE                         R11 K13 [{"axis", "value", "liveChannel", "onChanged", "roundToWholeStud", "interactable", "LayoutOrder"}]
       37 SETTABLEKS                       R10 R11 K7 ["axis"]
       39 GETTABLEKS                       R13 R0 K2 ["value"]
       41 JUMPIFNOT                        R13 ; [+4]
       42 GETTABLEKS                       R13 R0 K2 ["value"]
       44 GETTABLE                         R12 R13 R10
       45 JUMP                             ; [+1]
       46 LOADNIL                          R12
       47 SETTABLEKS                       R12 R11 K2 ["value"]
       49 GETTABLEKS                       R13 R0 K14 ["definition"]
       51 GETTABLEKS                       R13 R13 K8 ["liveChannel"]
       53 JUMPIFNOT                        R13 ; [+6]
       54 GETTABLEKS                       R13 R0 K14 ["definition"]
       56 GETTABLEKS                       R13 R13 K8 ["liveChannel"]
       58 GETTABLE                         R12 R13 R10
       59 JUMP                             ; [+1]
       60 LOADNIL                          R12
       61 SETTABLEKS                       R12 R11 K8 ["liveChannel"]
       63 SETTABLEKS                       R4 R11 K9 ["onChanged"]
       65 GETTABLEKS                       R12 R0 K14 ["definition"]
       67 GETTABLEKS                       R12 R12 K10 ["roundToWholeStud"]
       69 SETTABLEKS                       R12 R11 K10 ["roundToWholeStud"]
       71 GETTABLEKS                       R12 R0 K11 ["interactable"]
       73 SETTABLEKS                       R12 R11 K11 ["interactable"]
       75 MOVE                             R12 R1
       76 CALL                             R12 0 1
       77 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       79 GETUPVAL                         R12 1
       80 GETTABLEKS                       R12 R12 K15 ["createElement"]
       82 GETUPVAL                         R13 3
       83 MOVE                             R14 R11
       84 CALL                             R12 2 1
       85 SETTABLE                         R12 R5 R10
       86 FORGLOOP                         R6 2 ; [-51]
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K15 ["createElement"]
       91 GETUPVAL                         R7 4
       92 GETTABLEKS                       R7 R7 K16 ["View"]
       94 DUPTABLE                         R8 K19 [{["tag"] = "row align-y-center gap-xsmall size-full-600", ["LayoutOrder"]}]
       95 GETTABLEKS                       R9 R0 K12 ["LayoutOrder"]
       97 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       99 MOVE                             R9 R5
      100 CALL                             R6 3 -1
      101 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantSharedVector3Input"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 GETUPVAL                         R2 2
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Gen3dCore"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       35 GETTABLEKS                       R7 R7 K13 ["Actions"]
       37 GETTABLEKS                       R7 R7 K14 ["ChannelActionsContext"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K4 ["Parent"]
       46 GETTABLEKS                       R8 R8 K15 ["DEPRECATED_Vector3PropertyRow"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Flags"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETIMPORT                        R10 K1 [script]
       58 GETTABLEKS                       R10 R10 K4 ["Parent"]
       60 GETTABLEKS                       R10 R10 K4 ["Parent"]
       62 GETTABLEKS                       R10 R10 K17 ["PropertyRowTypes"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K18 ["Util"]
       69 GETTABLEKS                       R11 R11 K19 ["TestIds"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R3 K11 ["Components"]
       74 GETTABLEKS                       R11 R11 K20 ["Vector3Input"]
       76 DUPCLOSURE                       R12 K21 [PROTO_0]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 DUPCLOSURE                       R13 K22 [PROTO_2]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R2
       87 DUPCLOSURE                       R14 K23 [PROTO_3]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R7
       92 RETURN                           R14 1
