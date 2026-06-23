PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
       13 GETTABLEKS                       R1 R1 K1 ["inputPinIds"]
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K0 ["GraphPayload"]
       21 JUMPIFNOT                        R6 ; [+6]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K0 ["GraphPayload"]
       25 GETTABLEKS                       R7 R7 K2 ["inputPinToConnectionMap"]
       27 GETTABLE                         R6 R7 R5
       28 NEWTABLE                         R7 1 0
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["Default"]
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 LOADNIL                          R13
       37 GETUPVAL                         R14 1
       38 CALL                             R14 0 1
       39 JUMPIFNOT                        R14 ; [+30]
       40 JUMPIFNOT                        R6 ; [+4]
       41 GETTABLEKS                       R15 R6 K4 ["properties"]
       43 GETTABLE                         R14 R15 R11
       44 JUMP                             ; [+1]
       45 LOADNIL                          R14
       46 JUMPIFEQKNIL                     R14 ; [+29]
       48 FASTCALL1                        TYPE R14 ; [+3]
       49 MOVE                             R17 R14
       50 GETIMPORT                        R16 K6 [type]
       52 CALL                             R16 1 1
       53 JUMPIFNOTEQKS                    R16 K7 ["string"] ; [+7]
       55 GETUPVAL                         R15 2
       56 GETTABLEKS                       R15 R15 K8 ["matchParameterBinding"]
       58 MOVE                             R16 R14
       59 CALL                             R15 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R15
       62 JUMPIFNOT                        R15 ; [+5]
       63 GETUPVAL                         R16 3
       64 GETTABLEKS                       R16 R16 K9 ["animationParameters"]
       66 GETTABLE                         R13 R16 R15
       67 JUMP                             ; [+8]
       68 MOVE                             R13 R14
       69 JUMP                             ; [+6]
       70 JUMPIFNOT                        R6 ; [+4]
       71 GETTABLEKS                       R14 R6 K4 ["properties"]
       73 GETTABLE                         R13 R14 R11
       74 JUMP                             ; [+1]
       75 LOADNIL                          R13
       76 JUMPIFEQKNIL                     R13 ; [+3]
       78 SETTABLE                         R13 R7 R11
       79 JUMP                             ; [+1]
       80 SETTABLE                         R12 R7 R11
       81 FORGLOOP                         R8 2 ; [-46]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K10 ["TransitionFields"]
       86 JUMPIFEQKNIL                     R8 ; [+32]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K10 ["TransitionFields"]
       91 LOADNIL                          R9
       92 LOADNIL                          R10
       93 FORGPREP                         R8
       94 GETUPVAL                         R14 4
       95 GETTABLEKS                       R14 R14 K11 ["TRANSITION_OVERRIDE_PREFIX"]
       97 MOVE                             R15 R12
       98 CONCAT                           R13 R14 R15
       99 JUMPIFNOT                        R6 ; [+4]
      100 GETTABLEKS                       R15 R6 K4 ["properties"]
      102 GETTABLE                         R14 R15 R13
      103 JUMP                             ; [+1]
      104 LOADNIL                          R14
      105 JUMPIFEQKNIL                     R14 ; [+11]
      107 GETTABLEKS                       R15 R7 K12 ["Transition"]
      109 JUMPIF                           R15 ; [+2]
      110 NEWTABLE                         R15 0 0
      112 SETTABLEKS                       R15 R7 K12 ["Transition"]
      114 GETTABLEKS                       R15 R7 K12 ["Transition"]
      116 SETTABLE                         R14 R15 R12
      117 FORGLOOP                         R8 2 ; [-24]
      119 DUPTABLE                         R8 K16 [{"Name", "ConnectedNodeId", "Value"}]
      120 SETTABLEKS                       R5 R8 K13 ["Name"]
      122 JUMPIFNOT                        R6 ; [+3]
      123 GETTABLEKS                       R9 R6 K17 ["outputNodeId"]
      125 JUMPIF                           R9 ; [+1]
      126 LOADNIL                          R9
      127 SETTABLEKS                       R9 R8 K14 ["ConnectedNodeId"]
      129 SETTABLEKS                       R7 R8 K15 ["Value"]
      131 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
      133 MOVE                             R10 R0
      134 MOVE                             R11 R8
      135 GETIMPORT                        R9 K20 [table.insert]
      137 CALL                             R9 2 0
      138 FORGLOOP                         R1 2 ; [-121]
      140 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
        9 GETTABLEKS                       R3 R3 K1 ["inputPinIds"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["GraphPayload"]
       17 GETTABLEKS                       R4 R4 K2 ["inputPinToConnectionMap"]
       19 GETTABLE                         R3 R4 R2
       20 JUMPIF                           R3 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K3 ["Default"]
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 GETTABLE                         R9 R1 R7
       29 GETTABLEKS                       R11 R3 K4 ["properties"]
       31 GETTABLE                         R10 R11 R7
       32 JUMPIFEQ                         R10 R9 ; [+8]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K5 ["setInputPinNodeProperty"]
       37 MOVE                             R11 R3
       38 MOVE                             R12 R7
       39 MOVE                             R13 R9
       40 CALL                             R10 3 0
       41 FORGLOOP                         R4 2 ; [-14]
       43 GETTABLEKS                       R4 R1 K6 ["Transition"]
       45 JUMPIFEQKNIL                     R4 ; [+26]
       47 MOVE                             R5 R4
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 GETUPVAL                         R11 2
       52 GETTABLEKS                       R11 R11 K7 ["TRANSITION_OVERRIDE_PREFIX"]
       54 MOVE                             R12 R8
       55 CONCAT                           R10 R11 R12
       56 GETTABLE                         R11 R4 R8
       57 GETTABLEKS                       R13 R3 K4 ["properties"]
       59 GETTABLE                         R12 R13 R10
       60 JUMPIFEQ                         R12 R11 ; [+8]
       62 GETUPVAL                         R12 1
       63 GETTABLEKS                       R12 R12 K5 ["setInputPinNodeProperty"]
       65 MOVE                             R13 R3
       66 MOVE                             R14 R10
       67 MOVE                             R15 R11
       68 CALL                             R12 3 0
       69 FORGLOOP                         R5 2 ; [-19]
       71 RETURN                           R0 0
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R5 R5 K8 ["TransitionFields"]
       75 JUMPIFEQKNIL                     R5 ; [+21]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K8 ["TransitionFields"]
       80 LOADNIL                          R6
       81 LOADNIL                          R7
       82 FORGPREP                         R5
       83 GETUPVAL                         R11 2
       84 GETTABLEKS                       R11 R11 K7 ["TRANSITION_OVERRIDE_PREFIX"]
       86 MOVE                             R12 R9
       87 CONCAT                           R10 R11 R12
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K5 ["setInputPinNodeProperty"]
       91 MOVE                             R12 R3
       92 MOVE                             R13 R10
       93 LOADNIL                          R14
       94 CALL                             R11 3 0
       95 FORGLOOP                         R5 2 ; [-13]
       97 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
       13 GETTABLEKS                       R2 R2 K1 ["inputPinIds"]
       15 GETTABLE                         R1 R2 R0
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       21 GETTABLEKS                       R3 R3 K2 ["inputPinToConnectionMap"]
       23 GETTABLE                         R2 R3 R1
       24 JUMPIF                           R2 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K3 ["deleteNodeInput"]
       29 GETTABLEKS                       R4 R2 K4 ["inputNodeId"]
       31 MOVE                             R5 R1
       32 CALL                             R3 2 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["reorderPins"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       11 GETTABLEKS                       R3 R3 K2 ["id"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Collapsed"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K18 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputDeleted", "OnInputReordered", "Position", "PropertyLookup", "Size", "StateLookup", "text", "editName", "GraphPayload"}]
       10 GETTABLEKS                       R6 R1 K19 ["nextOrder"]
       12 CALL                             R6 0 1
       13 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       15 GETTABLEKS                       R6 R2 K20 ["inputBuilder"]
       17 SETTABLEKS                       R6 R5 K3 ["InputBuilder"]
       19 GETTABLEKS                       R6 R2 K21 ["inputBuilderProps"]
       21 SETTABLEKS                       R6 R5 K4 ["InputBuilderProps"]
       23 GETTABLEKS                       R6 R0 K17 ["GraphPayload"]
       25 GETTABLEKS                       R6 R6 K22 ["id"]
       27 SETTABLEKS                       R6 R5 K5 ["NodeId"]
       29 GETUPVAL                         R6 2
       30 SETTABLEKS                       R6 R5 K6 ["Inputs"]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K23 ["Default"]
       35 SETTABLEKS                       R6 R5 K7 ["NewInputDefaultValue"]
       37 GETUPVAL                         R6 4
       38 SETTABLEKS                       R6 R5 K8 ["OnInputChanged"]
       40 GETUPVAL                         R6 5
       41 SETTABLEKS                       R6 R5 K9 ["OnInputDeleted"]
       43 GETUPVAL                         R6 6
       44 SETTABLEKS                       R6 R5 K10 ["OnInputReordered"]
       46 GETTABLEKS                       R6 R0 K11 ["Position"]
       48 SETTABLEKS                       R6 R5 K11 ["Position"]
       50 GETTABLEKS                       R6 R0 K12 ["PropertyLookup"]
       52 SETTABLEKS                       R6 R5 K12 ["PropertyLookup"]
       54 GETTABLEKS                       R6 R0 K13 ["Size"]
       56 SETTABLEKS                       R6 R5 K13 ["Size"]
       58 GETTABLEKS                       R6 R0 K14 ["StateLookup"]
       60 SETTABLEKS                       R6 R5 K14 ["StateLookup"]
       62 GETTABLEKS                       R6 R0 K15 ["text"]
       64 SETTABLEKS                       R6 R5 K15 ["text"]
       66 GETTABLEKS                       R6 R0 K16 ["editName"]
       68 SETTABLEKS                       R6 R5 K16 ["editName"]
       70 GETTABLEKS                       R6 R0 K17 ["GraphPayload"]
       72 SETTABLEKS                       R6 R5 K17 ["GraphPayload"]
       74 CALL                             R3 2 -1
       75 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U5
       25 NEWTABLE                         R5 0 4
       27 GETTABLEKS                       R6 R0 K4 ["GraphPayload"]
       29 GETTABLEKS                       R7 R0 K5 ["Default"]
       31 GETTABLEKS                       R8 R0 K6 ["TransitionFields"]
       33 GETTABLEKS                       R9 R2 K7 ["animationParameters"]
       35 SETLIST                          R5 R6 4 [1]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       41 NEWCLOSURE                       R5 P1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U5
       45 NEWTABLE                         R6 0 2
       47 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       49 GETTABLEKS                       R8 R0 K6 ["TransitionFields"]
       51 SETLIST                          R6 R7 2 [1]
       53 CALL                             R4 2 1
       54 GETUPVAL                         R5 6
       55 GETTABLEKS                       R5 R5 K9 ["useEventCallback"]
       57 NEWCLOSURE                       R6 P2
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R1
       61 CALL                             R5 1 1
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       65 NEWCLOSURE                       R7 P3
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 NEWTABLE                         R8 0 3
       70 GETTABLEKS                       R9 R0 K4 ["GraphPayload"]
       72 MOVE                             R10 R3
       73 GETTABLEKS                       R11 R1 K10 ["reorderPins"]
       75 SETLIST                          R8 R9 3 [1]
       77 CALL                             R6 2 1
       78 NEWCLOSURE                       R7 P4
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 DUPTABLE                         R8 K17 [{"inputs", "onInputChanged", "onInputDeleted", "onInputReordered", "newInputDefaultValue", "makePropertyChild"}]
       87 SETTABLEKS                       R3 R8 K11 ["inputs"]
       89 SETTABLEKS                       R4 R8 K12 ["onInputChanged"]
       91 SETTABLEKS                       R5 R8 K13 ["onInputDeleted"]
       93 SETTABLEKS                       R6 R8 K14 ["onInputReordered"]
       95 GETTABLEKS                       R9 R0 K5 ["Default"]
       97 SETTABLEKS                       R9 R8 K15 ["newInputDefaultValue"]
       99 SETTABLEKS                       R7 R8 K16 ["makePropertyChild"]
      101 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationParameterContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K12 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R4 K13 ["InputPanel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K11 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K12 ["CompositorNodeInput"]
       40 GETTABLEKS                       R5 R5 K14 ["InputPanelTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       47 GETTABLEKS                       R6 R6 K15 ["NativeGraphContext"]
       49 GETTABLEKS                       R6 R6 K16 ["NativeGraphUtils"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K17 ["Parent"]
       56 GETTABLEKS                       R7 R7 K18 ["NodeGraphing"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K17 ["Parent"]
       63 GETTABLEKS                       R8 R8 K19 ["React"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K17 ["Parent"]
       70 GETTABLEKS                       R9 R9 K20 ["ReactUtils"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K21 ["Flags"]
       77 GETTABLEKS                       R10 R10 K22 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R6 K23 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
       82 DUPCLOSURE                       R11 K24 [PROTO_5]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R3
       92 RETURN                           R11 1
