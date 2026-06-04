PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R0 R1
        5 LOADN                            R1 0
        6 JUMPIFNOTLT                      R1 R0 ; [+7]
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K0 ["Get"]
       11 CALL                             R1 1 1
       12 GETTABLEN                        R0 R1 1
       13 RETURN                           R0 1
       14 LOADNIL                          R0
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getDefaultPropertiesValues"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K3 [{"sliderValues", "setSliderValuesAsync"}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K4 ["useReplicatedStateListener"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K5 ["SLIDER_VALUES"]
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["sliderValues"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K6 ["useBoundAction"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K7 ["SET_SLIDER_VALUES_ASYNC"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K2 ["setSliderValuesAsync"]
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K8 ["createElement"]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K9 ["Provider"]
       30 DUPTABLE                         R5 K11 [{"value"}]
       31 SETTABLEKS                       R2 R5 K10 ["value"]
       33 GETTABLEKS                       R6 R0 K12 ["children"]
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["FaceControls"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 1
        9 LOADK                            R3 K2 ["MeshPart"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+15]
       14 GETTABLEKS                       R1 R0 K3 ["Name"]
       16 JUMPIFNOTEQKS                    R1 K4 ["Head"] ; [+12]
       18 LOADK                            R3 K0 ["FaceControls"]
       19 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+6]
       23 LOADK                            R4 K0 ["FaceControls"]
       24 NAMECALL                         R2 R1 K1 ["IsA"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R1 1
       29 LOADK                            R3 K6 ["Model"]
       30 NAMECALL                         R1 R0 K1 ["IsA"]
       32 CALL                             R1 2 1
       33 JUMPIFNOT                        R1 ; [+21]
       34 LOADK                            R3 K4 ["Head"]
       35 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+16]
       39 LOADK                            R4 K2 ["MeshPart"]
       40 NAMECALL                         R2 R1 K1 ["IsA"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+11]
       44 LOADK                            R4 K0 ["FaceControls"]
       45 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       47 CALL                             R2 2 1
       48 JUMPIFNOT                        R2 ; [+6]
       49 LOADK                            R5 K0 ["FaceControls"]
       50 NAMECALL                         R3 R2 K1 ["IsA"]
       52 CALL                             R3 2 1
       53 JUMPIFNOT                        R3 ; [+1]
       54 RETURN                           R2 1
       55 LOADNIL                          R1
       56 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+23]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K0 ["Get"]
        6 CALL                             R2 1 1
        7 LENGTH                           R1 R2
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+7]
       11 GETUPVAL                         R1 1
       12 NAMECALL                         R1 R1 K0 ["Get"]
       14 CALL                             R1 1 1
       15 GETTABLEN                        R0 R1 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R0
       18 GETUPVAL                         R1 2
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 4
       22 MOVE                             R2 R0
       23 CALL                             R1 1 1
       24 SETUPVAL                         R1 3
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 2
       27 GETUPVAL                         R1 5
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SelectionChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["FaceControls"]
        4 NAMECALL                         R0 R0 K1 ["IsA"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 GETUPVAL                         R0 0
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R7 0
       11 GETTABLE                         R6 R7 R4
       12 SETTABLE                         R6 R0 R4
       13 FORGLOOP                         R1 1 ; [-4]
       15 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R3 R4 R5
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 0
       10 MOVE                             R8 R4
       11 NAMECALL                         R6 R6 K0 ["GetPropertyChangedSignal"]
       13 CALL                             R6 2 1
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U0
       18 MOVE                             R10 R7
       19 NAMECALL                         R8 R6 K1 ["Connect"]
       21 CALL                             R8 2 1
       22 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       24 MOVE                             R10 R0
       25 MOVE                             R11 R8
       26 GETIMPORT                        R9 K4 [table.insert]
       28 CALL                             R9 2 0
       29 FORGLOOP                         R1 1 ; [-21]
       31 NEWCLOSURE                       R1 P1
       32 CAPTURE                          VAL R0
       33 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 JUMPIFNOT                        R4 ; [+13]
        8 JUMPIFNOT                        R5 ; [+12]
        9 GETUPVAL                         R6 0
       10 SETTABLE                         R5 R6 R4
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K0 ["updateContextFunction"]
       14 JUMPIFNOT                        R6 ; [+6]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K0 ["updateContextFunction"]
       18 MOVE                             R7 R4
       19 MOVE                             R8 R5
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 ; [-15]
       23 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["selectedInstance"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R2 R0 K0 ["selectedInstance"]
        6 SETUPVAL                         R2 0
        7 GETUPVAL                         R2 0
        8 JUMPIF                           R2 ; [+15]
        9 GETUPVAL                         R4 1
       10 NAMECALL                         R4 R4 K1 ["Get"]
       12 CALL                             R4 1 1
       13 LENGTH                           R3 R4
       14 LOADN                            R4 0
       15 JUMPIFNOTLT                      R4 R3 ; [+7]
       17 GETUPVAL                         R3 1
       18 NAMECALL                         R3 R3 K1 ["Get"]
       20 CALL                             R3 1 1
       21 GETTABLEN                        R2 R3 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 MOVE                             R1 R2
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K2 ["useState"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 2
       30 GETUPVAL                         R4 3
       31 MOVE                             R5 R2
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K3 ["getDefaultPropertiesValues"]
       36 CALL                             R5 0 1
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R3
       44 CAPTURE                          REF R4
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          REF R1
       47 NEWTABLE                         R8 0 1
       49 MOVE                             R9 R1
       50 SETLIST                          R8 R9 1 [1]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       56 NEWCLOSURE                       R7 P1
       57 CAPTURE                          REF R4
       58 NEWTABLE                         R8 0 1
       60 MOVE                             R9 R4
       61 SETLIST                          R8 R9 1 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       67 NEWCLOSURE                       R8 P2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R9 0 1
       72 MOVE                             R10 R6
       73 SETLIST                          R9 R10 1 [1]
       75 CALL                             R7 2 1
       76 GETUPVAL                         R8 2
       77 GETTABLEKS                       R8 R8 K2 ["useState"]
       79 MOVE                             R9 R7
       80 CALL                             R8 1 2
       81 GETUPVAL                         R10 5
       82 CALL                             R10 0 1
       83 JUMPIFNOT                        R10 ; [+12]
       84 GETUPVAL                         R10 2
       85 GETTABLEKS                       R10 R10 K4 ["useEffect"]
       87 NEWCLOSURE                       R11 P3
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R7
       90 NEWTABLE                         R12 0 1
       92 MOVE                             R13 R6
       93 SETLIST                          R12 R13 1 [1]
       95 CALL                             R10 2 0
       96 GETUPVAL                         R10 2
       97 GETTABLEKS                       R10 R10 K4 ["useEffect"]
       99 NEWCLOSURE                       R11 P4
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R9
      103 NEWTABLE                         R12 0 2
      105 MOVE                             R13 R6
      106 MOVE                             R14 R9
      107 SETLIST                          R12 R13 2 [1]
      109 CALL                             R10 2 0
      110 GETUPVAL                         R10 2
      111 GETTABLEKS                       R10 R10 K6 ["useCallback"]
      113 NEWCLOSURE                       R11 P5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R0
      116 NEWTABLE                         R12 0 2
      118 MOVE                             R13 R6
      119 GETTABLEKS                       R14 R0 K7 ["updateContextFunction"]
      121 SETLIST                          R12 R13 2 [1]
      123 CALL                             R10 2 1
      124 GETUPVAL                         R11 6
      125 GETTABLEKS                       R11 R11 K8 ["useReplicatedState"]
      127 GETUPVAL                         R12 7
      128 GETTABLEKS                       R12 R12 K9 ["SLIDER_VALUES"]
      130 MOVE                             R13 R8
      131 CALL                             R11 2 0
      132 DUPTABLE                         R11 K12 [{"sliderValues", "setSliderValuesAsync"}]
      133 SETTABLEKS                       R8 R11 K10 ["sliderValues"]
      135 GETUPVAL                         R12 6
      136 GETTABLEKS                       R12 R12 K13 ["useBoundAction"]
      138 GETUPVAL                         R13 8
      139 GETTABLEKS                       R13 R13 K14 ["SET_SLIDER_VALUES_ASYNC"]
      141 MOVE                             R14 R10
      142 CALL                             R12 2 1
      143 SETTABLEKS                       R12 R11 K11 ["setSliderValuesAsync"]
      145 GETUPVAL                         R12 2
      146 GETTABLEKS                       R12 R12 K15 ["createElement"]
      148 GETUPVAL                         R13 9
      149 GETTABLEKS                       R13 R13 K16 ["Provider"]
      151 DUPTABLE                         R14 K18 [{"value"}]
      152 SETTABLEKS                       R11 R14 K17 ["value"]
      154 GETTABLEKS                       R15 R0 K19 ["children"]
      156 CALL                             R12 3 -1
      157 CLOSEUPVALS                      R1
      158 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["FaceControlEditor"]
       15 GETTABLEKS                       R3 R3 K9 ["FaceControlsHandler"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Hooks"]
       22 GETTABLEKS                       R4 R4 K11 ["Networking"]
       24 GETTABLEKS                       R4 R4 K12 ["NetworkingUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K13 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K14 ["ReactUtils"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Flags"]
       41 GETTABLEKS                       R7 R7 K16 ["getFFlagAnimateEverythingGetSelectionOverride"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K18 [game]
       46 LOADK                            R9 K19 ["Selection"]
       47 NAMECALL                         R7 R7 K20 ["GetService"]
       49 CALL                             R7 2 1
       50 LOADNIL                          R8
       51 DUPTABLE                         R9 K22 [{"SLIDER_VALUES"}]
       52 LOADK                            R10 K23 ["FaceControlEditorContext_SliderValues"]
       53 SETTABLEKS                       R10 R9 K21 ["SLIDER_VALUES"]
       55 DUPTABLE                         R10 K25 [{"SET_SLIDER_VALUES_ASYNC"}]
       56 LOADK                            R11 K26 ["FaceControlEditorContext_SetSliderValuesAsync"]
       57 SETTABLEKS                       R11 R10 K24 ["SET_SLIDER_VALUES_ASYNC"]
       59 DUPTABLE                         R11 K29 [{"sliderValues", "setSliderValuesAsync"}]
       60 NEWTABLE                         R12 0 0
       62 SETTABLEKS                       R12 R11 K27 ["sliderValues"]
       64 GETTABLEKS                       R12 R5 K30 ["createUnimplemented"]
       66 LOADK                            R13 K28 ["setSliderValuesAsync"]
       67 CALL                             R12 1 1
       68 SETTABLEKS                       R12 R11 K28 ["setSliderValuesAsync"]
       70 GETTABLEKS                       R12 R4 K31 ["createContext"]
       72 MOVE                             R13 R11
       73 CALL                             R12 1 1
       74 DUPCLOSURE                       R13 K32 [PROTO_0]
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R14 K33 [PROTO_1]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R12
       83 DUPCLOSURE                       R15 K34 [PROTO_2]
       84 NEWCLOSURE                       R16 P3
       85 CAPTURE                          REF R8
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R12
       95 DUPTABLE                         R17 K40 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "getSelectedInstance", "findFaceControls"}]
       96 SETTABLEKS                       R12 R17 K35 ["Context"]
       98 SETTABLEKS                       R16 R17 K36 ["EditableDataModelProvider"]
      100 SETTABLEKS                       R14 R17 K37 ["UIDataModelProvider"]
      102 SETTABLEKS                       R13 R17 K38 ["getSelectedInstance"]
      104 SETTABLEKS                       R15 R17 K39 ["findFaceControls"]
      106 CLOSEUPVALS                      R8
      107 RETURN                           R17 1
