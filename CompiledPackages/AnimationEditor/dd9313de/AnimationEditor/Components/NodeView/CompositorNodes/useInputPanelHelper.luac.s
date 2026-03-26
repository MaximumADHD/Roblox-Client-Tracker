PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["GraphPayload"]
       13 GETTABLEKS                       R1 R4 K1 ["inputPinIds"]
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K0 ["GraphPayload"]
       21 JUMPIFNOT                        R6 ; [+6]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K0 ["GraphPayload"]
       25 GETTABLEKS                       R7 R8 K2 ["inputPinToConnectionMap"]
       27 GETTABLE                         R6 R7 R5
       28 NEWTABLE                         R7 1 0
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R8 R11 K3 ["Default"]
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 JUMPIFNOT                        R6 ; [+4]
       37 GETTABLEKS                       R14 R6 K4 ["properties"]
       39 GETTABLE                         R13 R14 R11
       40 JUMP                             ; [+1]
       41 LOADNIL                          R13
       42 JUMPIFEQKNIL                     R13 ; [+3]
       44 SETTABLE                         R13 R7 R11
       45 JUMP                             ; [+1]
       46 SETTABLE                         R12 R7 R11
       47 FORGLOOP                         R8 2 ; [-12]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R8 R9 K5 ["TransitionFields"]
       52 JUMPIFEQKNIL                     R8 ; [+32]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R8 R11 K5 ["TransitionFields"]
       57 LOADNIL                          R9
       58 LOADNIL                          R10
       59 FORGPREP                         R8
       60 GETUPVAL                         R16 1
       61 GETTABLEKS                       R14 R16 K6 ["TRANSITION_OVERRIDE_PREFIX"]
       63 MOVE                             R15 R12
       64 CONCAT                           R13 R14 R15
       65 JUMPIFNOT                        R6 ; [+4]
       66 GETTABLEKS                       R15 R6 K4 ["properties"]
       68 GETTABLE                         R14 R15 R13
       69 JUMP                             ; [+1]
       70 LOADNIL                          R14
       71 JUMPIFEQKNIL                     R14 ; [+11]
       73 GETTABLEKS                       R15 R7 K7 ["Transition"]
       75 JUMPIF                           R15 ; [+2]
       76 NEWTABLE                         R15 0 0
       78 SETTABLEKS                       R15 R7 K7 ["Transition"]
       80 GETTABLEKS                       R15 R7 K7 ["Transition"]
       82 SETTABLE                         R14 R15 R12
       83 FORGLOOP                         R8 2 ; [-24]
       85 DUPTABLE                         R8 K11 [{"Name", "ConnectedNodeId", "Value"}]
       86 SETTABLEKS                       R5 R8 K8 ["Name"]
       88 JUMPIFNOT                        R6 ; [+3]
       89 GETTABLEKS                       R9 R6 K12 ["outputNodeId"]
       91 JUMPIF                           R9 ; [+1]
       92 LOADNIL                          R9
       93 SETTABLEKS                       R9 R8 K9 ["ConnectedNodeId"]
       95 SETTABLEKS                       R7 R8 K10 ["Value"]
       97 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       99 MOVE                             R10 R0
      100 MOVE                             R11 R8
      101 GETIMPORT                        R9 K15 [table.insert]
      103 CALL                             R9 2 0
      104 FORGLOOP                         R1 2 ; [-87]
      106 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setInputPinNodePropertyAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setInputPinNodePropertyAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setInputPinNodePropertyAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 LOADNIL                          R3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["GraphPayload"]
        9 GETTABLEKS                       R3 R4 K1 ["inputPinIds"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K0 ["GraphPayload"]
       17 GETTABLEKS                       R4 R5 K2 ["inputPinToConnectionMap"]
       19 GETTABLE                         R3 R4 R2
       20 JUMPIF                           R3 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R4 R7 K3 ["Default"]
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 GETTABLE                         R9 R1 R7
       29 GETTABLEKS                       R11 R3 K4 ["properties"]
       31 GETTABLE                         R10 R11 R7
       32 JUMPIFEQ                         R10 R9 ; [+9]
       34 GETIMPORT                        R10 K7 [task.spawn]
       36 NEWCLOSURE                       R11 P0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R9
       41 CALL                             R10 1 0
       42 FORGLOOP                         R4 2 ; [-15]
       44 GETTABLEKS                       R4 R1 K8 ["Transition"]
       46 JUMPIFEQKNIL                     R4 ; [+27]
       48 MOVE                             R5 R4
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 GETUPVAL                         R13 2
       53 GETTABLEKS                       R11 R13 K9 ["TRANSITION_OVERRIDE_PREFIX"]
       55 MOVE                             R12 R8
       56 CONCAT                           R10 R11 R12
       57 GETTABLE                         R11 R4 R8
       58 GETTABLEKS                       R13 R3 K4 ["properties"]
       60 GETTABLE                         R12 R13 R10
       61 JUMPIFEQ                         R12 R11 ; [+9]
       63 GETIMPORT                        R12 K7 [task.spawn]
       65 NEWCLOSURE                       R13 P1
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R11
       70 CALL                             R12 1 0
       71 FORGLOOP                         R5 2 ; [-20]
       73 RETURN                           R0 0
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R5 R6 K10 ["TransitionFields"]
       77 JUMPIFEQKNIL                     R5 ; [+21]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R5 R8 K10 ["TransitionFields"]
       82 LOADNIL                          R6
       83 LOADNIL                          R7
       84 FORGPREP                         R5
       85 GETUPVAL                         R13 2
       86 GETTABLEKS                       R11 R13 K9 ["TRANSITION_OVERRIDE_PREFIX"]
       88 MOVE                             R12 R9
       89 CONCAT                           R10 R11 R12
       90 GETIMPORT                        R11 K7 [task.spawn]
       92 NEWCLOSURE                       R12 P2
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R10
       96 CALL                             R11 1 0
       97 FORGLOOP                         R5 2 ; [-13]
       99 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reorderPinsAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["GraphPayload"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K3 [task.spawn]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R4 0 3
       15 GETTABLEKS                       R5 R0 K3 ["GraphPayload"]
       17 GETTABLEKS                       R6 R0 K4 ["Default"]
       19 GETTABLEKS                       R7 R0 K5 ["TransitionFields"]
       21 SETLIST                          R4 R5 3 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K6 ["useCallback"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U2
       31 NEWTABLE                         R5 0 2
       33 GETTABLEKS                       R6 R0 K3 ["GraphPayload"]
       35 GETTABLEKS                       R7 R0 K5 ["TransitionFields"]
       37 SETLIST                          R5 R6 2 [1]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K6 ["useCallback"]
       43 NEWCLOSURE                       R5 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 NEWTABLE                         R6 0 3
       48 GETTABLEKS                       R7 R0 K3 ["GraphPayload"]
       50 MOVE                             R8 R2
       51 GETTABLEKS                       R9 R1 K7 ["reorderPinsAsync"]
       53 SETLIST                          R6 R7 3 [1]
       55 CALL                             R4 2 1
       56 DUPTABLE                         R5 K12 [{"inputs", "onInputChanged", "onInputReordered", "newInputDefaultValue"}]
       57 SETTABLEKS                       R2 R5 K8 ["inputs"]
       59 SETTABLEKS                       R3 R5 K9 ["onInputChanged"]
       61 SETTABLEKS                       R4 R5 K10 ["onInputReordered"]
       63 GETTABLEKS                       R6 R0 K4 ["Default"]
       65 SETTABLEKS                       R6 R5 K11 ["newInputDefaultValue"]
       67 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R4 K11 ["InputPanelTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K13 ["NativeGraphContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["NodeViewTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Parent"]
       41 GETTABLEKS                       R6 R7 K16 ["React"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K17 [PROTO_7]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 RETURN                           R6 1
