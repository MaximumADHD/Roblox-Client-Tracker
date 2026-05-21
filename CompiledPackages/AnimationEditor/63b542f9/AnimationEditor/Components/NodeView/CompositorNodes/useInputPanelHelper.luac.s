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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputPinNodePropertyAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputPinNodePropertyAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputPinNodePropertyAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 LOADNIL                          R3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_4:
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
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R11 R11 K9 ["TRANSITION_OVERRIDE_PREFIX"]
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
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K10 ["TransitionFields"]
       77 JUMPIFEQKNIL                     R5 ; [+21]
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R5 R5 K10 ["TransitionFields"]
       82 LOADNIL                          R6
       83 LOADNIL                          R7
       84 FORGPREP                         R5
       85 GETUPVAL                         R11 2
       86 GETTABLEKS                       R11 R11 K9 ["TRANSITION_OVERRIDE_PREFIX"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reorderPinsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U5
       23 NEWTABLE                         R5 0 4
       25 GETTABLEKS                       R6 R0 K3 ["GraphPayload"]
       27 GETTABLEKS                       R7 R0 K4 ["Default"]
       29 GETTABLEKS                       R8 R0 K5 ["TransitionFields"]
       31 GETTABLEKS                       R9 R2 K6 ["animationParameters"]
       33 SETLIST                          R5 R6 4 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K7 ["useCallback"]
       39 NEWCLOSURE                       R5 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U5
       43 NEWTABLE                         R6 0 2
       45 GETTABLEKS                       R7 R0 K3 ["GraphPayload"]
       47 GETTABLEKS                       R8 R0 K5 ["TransitionFields"]
       49 SETLIST                          R6 R7 2 [1]
       51 CALL                             R4 2 1
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       55 NEWCLOSURE                       R6 P2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R1
       58 NEWTABLE                         R7 0 3
       60 GETTABLEKS                       R8 R0 K3 ["GraphPayload"]
       62 MOVE                             R9 R3
       63 GETTABLEKS                       R10 R1 K8 ["reorderPinsAsync"]
       65 SETLIST                          R7 R8 3 [1]
       67 CALL                             R5 2 1
       68 DUPTABLE                         R6 K13 [{"inputs", "onInputChanged", "onInputReordered", "newInputDefaultValue"}]
       69 SETTABLEKS                       R3 R6 K9 ["inputs"]
       71 SETTABLEKS                       R4 R6 K10 ["onInputChanged"]
       73 SETTABLEKS                       R5 R6 K11 ["onInputReordered"]
       75 GETTABLEKS                       R7 R0 K4 ["Default"]
       77 SETTABLEKS                       R7 R6 K12 ["newInputDefaultValue"]
       79 RETURN                           R6 1

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
       29 GETTABLEKS                       R4 R4 K13 ["InputPanelTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K14 ["NativeGraphContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K14 ["NativeGraphContext"]
       45 GETTABLEKS                       R6 R6 K15 ["NativeGraphUtils"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K16 ["NodeViewTypes"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K17 ["Parent"]
       57 GETTABLEKS                       R8 R8 K18 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Flags"]
       64 GETTABLEKS                       R9 R9 K20 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       66 CALL                             R8 1 1
       67 DUPCLOSURE                       R9 K21 [PROTO_7]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 RETURN                           R9 1
