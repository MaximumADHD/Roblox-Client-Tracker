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
       37 JUMPIFNOT                        R6 ; [+4]
       38 GETTABLEKS                       R15 R6 K4 ["properties"]
       40 GETTABLE                         R14 R15 R11
       41 JUMP                             ; [+1]
       42 LOADNIL                          R14
       43 JUMPIFEQKNIL                     R14 ; [+22]
       45 FASTCALL1                        TYPE R14 ; [+3]
       46 MOVE                             R17 R14
       47 GETIMPORT                        R16 K6 [type]
       49 CALL                             R16 1 1
       50 JUMPIFNOTEQKS                    R16 K7 ["string"] ; [+7]
       52 GETUPVAL                         R15 1
       53 GETTABLEKS                       R15 R15 K8 ["matchParameterBinding"]
       55 MOVE                             R16 R14
       56 CALL                             R15 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R15
       59 JUMPIFNOT                        R15 ; [+5]
       60 GETUPVAL                         R16 2
       61 GETTABLEKS                       R16 R16 K9 ["animationParameters"]
       63 GETTABLE                         R13 R16 R15
       64 JUMP                             ; [+1]
       65 MOVE                             R13 R14
       66 JUMPIFEQKNIL                     R13 ; [+3]
       68 SETTABLE                         R13 R7 R11
       69 JUMP                             ; [+1]
       70 SETTABLE                         R12 R7 R11
       71 FORGLOOP                         R8 2 ; [-36]
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R8 R8 K10 ["TransitionFields"]
       76 JUMPIFEQKNIL                     R8 ; [+32]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K10 ["TransitionFields"]
       81 LOADNIL                          R9
       82 LOADNIL                          R10
       83 FORGPREP                         R8
       84 GETUPVAL                         R14 3
       85 GETTABLEKS                       R14 R14 K11 ["TRANSITION_OVERRIDE_PREFIX"]
       87 MOVE                             R15 R12
       88 CONCAT                           R13 R14 R15
       89 JUMPIFNOT                        R6 ; [+4]
       90 GETTABLEKS                       R15 R6 K4 ["properties"]
       92 GETTABLE                         R14 R15 R13
       93 JUMP                             ; [+1]
       94 LOADNIL                          R14
       95 JUMPIFEQKNIL                     R14 ; [+11]
       97 GETTABLEKS                       R15 R7 K12 ["Transition"]
       99 JUMPIF                           R15 ; [+2]
      100 NEWTABLE                         R15 0 0
      102 SETTABLEKS                       R15 R7 K12 ["Transition"]
      104 GETTABLEKS                       R15 R7 K12 ["Transition"]
      106 SETTABLE                         R14 R15 R12
      107 FORGLOOP                         R8 2 ; [-24]
      109 JUMPIFNOT                        R6 ; [+3]
      110 GETTABLEKS                       R8 R6 K13 ["outputNodeId"]
      112 JUMPIF                           R8 ; [+1]
      113 LOADNIL                          R8
      114 GETUPVAL                         R10 4
      115 JUMPIFNOT                        R10 ; [+2]
      116 GETUPVAL                         R9 5
      117 JUMP                             ; [+5]
      118 GETUPVAL                         R9 6
      119 GETTABLEKS                       R9 R9 K14 ["observeGraphNodeMap"]
      121 LOADB                            R10 0
      122 CALL                             R9 1 1
      123 JUMPIFNOT                        R8 ; [+3]
      124 JUMPIFNOT                        R9 ; [+2]
      125 GETTABLE                         R10 R9 R8
      126 JUMP                             ; [+1]
      127 LOADNIL                          R10
      128 DUPTABLE                         R11 K19 [{"Name", "ConnectedNodeId", "ConnectedNodeName", "Value"}]
      129 SETTABLEKS                       R5 R11 K15 ["Name"]
      131 SETTABLEKS                       R8 R11 K16 ["ConnectedNodeId"]
      133 JUMPIFNOT                        R10 ; [+10]
      134 GETUPVAL                         R12 7
      135 GETTABLEKS                       R12 R12 K20 ["getDisplayName"]
      137 GETTABLEKS                       R13 R10 K21 ["name"]
      139 JUMPIF                           R13 ; [+2]
      140 GETTABLEKS                       R13 R10 K22 ["className"]
      142 CALL                             R12 1 1
      143 JUMP                             ; [+3]
      144 GETUPVAL                         R12 8
      145 GETTABLEKS                       R12 R12 K23 ["DISCONNECTED_INPUT"]
      147 SETTABLEKS                       R12 R11 K17 ["ConnectedNodeName"]
      149 SETTABLEKS                       R7 R11 K18 ["Value"]
      151 FASTCALL2                        TABLE_INSERT R0 R11 ; [+5]
      153 MOVE                             R13 R0
      154 MOVE                             R14 R11
      155 GETIMPORT                        R12 K26 [table.insert]
      157 CALL                             R12 2 0
      158 FORGLOOP                         R1 2 ; [-141]
      160 RETURN                           R0 1

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
        1 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
        9 GETTABLEKS                       R2 R2 K1 ["inputPinIds"]
       11 GETTABLE                         R1 R2 R0
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       17 GETTABLEKS                       R3 R3 K2 ["inputPinToConnectionMap"]
       19 GETTABLE                         R2 R3 R1
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K3 ["deleteNodeInput"]
       25 GETTABLEKS                       R4 R2 K4 ["inputNodeId"]
       27 MOVE                             R5 R1
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

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
       17 GETTABLEKS                       R3 R3 K0 ["useContext"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R5 4
       24 JUMPIFNOT                        R5 ; [+7]
       25 GETUPVAL                         R4 5
       26 GETTABLEKS                       R4 R4 K3 ["useSignalState"]
       28 GETTABLEKS                       R5 R3 K4 ["observeGraphNodeMap"]
       30 CALL                             R4 1 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U9
       46 NEWTABLE                         R7 0 5
       48 GETTABLEKS                       R8 R0 K6 ["GraphPayload"]
       50 GETTABLEKS                       R9 R0 K7 ["Default"]
       52 GETTABLEKS                       R10 R0 K8 ["TransitionFields"]
       54 GETTABLEKS                       R11 R2 K9 ["animationParameters"]
       56 MOVE                             R12 R4
       57 SETLIST                          R7 R8 5 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K10 ["useCallback"]
       63 NEWCLOSURE                       R7 P1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U7
       67 NEWTABLE                         R8 0 2
       69 GETTABLEKS                       R9 R0 K6 ["GraphPayload"]
       71 GETTABLEKS                       R10 R0 K8 ["TransitionFields"]
       73 SETLIST                          R8 R9 2 [1]
       75 CALL                             R6 2 1
       76 GETUPVAL                         R7 10
       77 GETTABLEKS                       R7 R7 K11 ["useEventCallback"]
       79 NEWCLOSURE                       R8 P2
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R1
       82 CALL                             R7 1 1
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       86 NEWCLOSURE                       R9 P3
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R1
       89 NEWTABLE                         R10 0 3
       91 GETTABLEKS                       R11 R0 K6 ["GraphPayload"]
       93 MOVE                             R12 R5
       94 GETTABLEKS                       R13 R1 K12 ["reorderPins"]
       96 SETLIST                          R10 R11 3 [1]
       98 CALL                             R8 2 1
       99 NEWCLOSURE                       R9 P4
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 DUPTABLE                         R10 K19 [{"inputs", "onInputChanged", "onInputDeleted", "onInputReordered", "newInputDefaultValue", "makePropertyChild"}]
      108 SETTABLEKS                       R5 R10 K13 ["inputs"]
      110 SETTABLEKS                       R6 R10 K14 ["onInputChanged"]
      112 SETTABLEKS                       R7 R10 K15 ["onInputDeleted"]
      114 SETTABLEKS                       R8 R10 K16 ["onInputReordered"]
      116 GETTABLEKS                       R11 R0 K7 ["Default"]
      118 SETTABLEKS                       R11 R10 K17 ["newInputDefaultValue"]
      120 SETTABLEKS                       R9 R10 K18 ["makePropertyChild"]
      122 RETURN                           R10 1

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
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K15 ["NativeGraphContext"]
       56 GETTABLEKS                       R7 R7 K16 ["NativeGraphUtils"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K17 ["Parent"]
       63 GETTABLEKS                       R8 R8 K18 ["NodeGraphing"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K8 ["Util"]
       70 GETTABLEKS                       R9 R9 K19 ["Nodes"]
       72 GETTABLEKS                       R9 R9 K20 ["NodeNameFormattingUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K17 ["Parent"]
       79 GETTABLEKS                       R10 R10 K21 ["React"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K17 ["Parent"]
       86 GETTABLEKS                       R11 R11 K22 ["ReactUtils"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K17 ["Parent"]
       93 GETTABLEKS                       R12 R12 K23 ["SignalsReact"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K24 ["Flags"]
      100 GETTABLEKS                       R13 R13 K25 ["FFlagAnimGraphUIRenameDuplicateInput"]
      102 CALL                             R12 1 1
      103 DUPCLOSURE                       R13 K26 [PROTO_5]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R3
      116 RETURN                           R13 1
