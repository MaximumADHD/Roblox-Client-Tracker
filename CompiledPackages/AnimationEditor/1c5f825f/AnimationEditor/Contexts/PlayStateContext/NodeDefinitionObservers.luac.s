PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 0
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 MOVE                             R10 R3
       11 GETUPVAL                         R11 1
       12 MOVE                             R13 R8
       13 NAMECALL                         R11 R11 K0 ["GetPropertyChangedSignal"]
       15 CALL                             R11 2 1
       16 MOVE                             R13 R2
       17 NAMECALL                         R11 R11 K1 ["Connect"]
       19 CALL                             R11 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R9 K4 [table.insert]
       23 CALL                             R9 -1 0
       24 FORGLOOP                         R4 2 ; [-15]
       26 GETUPVAL                         R4 2
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 MOVE                             R10 R3
       31 GETUPVAL                         R11 1
       32 MOVE                             R13 R8
       33 NAMECALL                         R11 R11 K5 ["GetAttributeChangedSignal"]
       35 CALL                             R11 2 1
       36 MOVE                             R13 R2
       37 NAMECALL                         R11 R11 K1 ["Connect"]
       39 CALL                             R11 2 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R9 K4 [table.insert]
       43 CALL                             R9 -1 0
       44 FORGLOOP                         R4 2 ; [-15]
       46 NEWCLOSURE                       R4 P1
       47 CAPTURE                          VAL R3
       48 CLOSEUPVALS                      R1
       49 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["provide"]
        3 LOADN                            R4 0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R2
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["forEach"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["observeChildrenWhichIsA"]
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R5 2 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R3
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 DUPTABLE                         R2 K6 [{"entry", "states", "transitions"}]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K3 ["entry"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R2 K4 ["states"]
       13 GETUPVAL                         R3 2
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K5 ["transitions"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["STATE_MACHINE"]
        3 NEWTABLE                         R3 0 0
        5 DUPTABLE                         R4 K2 [{"EntryState"}]
        6 GETTABLEKS                       R5 R1 K3 ["EntryStateAttribute"]
        8 SETTABLEKS                       R5 R4 K1 ["EntryState"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["provide"]
       13 LOADN                            R6 0
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R4
       18 CALL                             R5 2 1
       19 MOVE                             R2 R5
       20 DUPTABLE                         R4 K7 [{["Name"] = "Name", ["Value"] = "Value"}]
       21 DUPTABLE                         R5 K9 [{"StateId"}]
       22 GETTABLEKS                       R6 R1 K10 ["StateIdAttribute"]
       24 SETTABLEKS                       R6 R5 K8 ["StateId"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K11 ["forEach"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K12 ["observeChildrenWhichIsA"]
       32 MOVE                             R8 R0
       33 LOADK                            R9 K13 ["ObjectValue"]
       34 CALL                             R7 2 1
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 CALL                             R6 2 1
       40 MOVE                             R3 R6
       41 GETTABLEKS                       R5 R1 K14 ["TransitionClassName"]
       43 GETTABLEKS                       R6 R1 K15 ["TransitionProperties"]
       45 GETTABLEKS                       R7 R1 K16 ["TransitionAttributes"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K11 ["forEach"]
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K12 ["observeChildrenWhichIsA"]
       53 MOVE                             R10 R0
       54 MOVE                             R11 R5
       55 CALL                             R9 2 1
       56 NEWCLOSURE                       R10 P1
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CALL                             R8 2 1
       61 MOVE                             R4 R8
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R5 R5 K17 ["createComputed"]
       65 NEWCLOSURE                       R6 P2
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 CALL                             R5 1 -1
       70 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 GETTABLEKS                       R3 R3 K9 ["Experimental"]
       22 GETTABLEKS                       R3 R3 K10 ["SignalExperimentalUtils"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K8 ["Signals"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Util"]
       36 GETTABLEKS                       R5 R5 K8 ["Signals"]
       38 GETTABLEKS                       R5 R5 K12 ["SignalsInstanceUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K13 ["Components"]
       45 GETTABLEKS                       R6 R6 K14 ["NodeView"]
       47 GETTABLEKS                       R6 R6 K15 ["StateMachine"]
       49 GETTABLEKS                       R6 R6 K16 ["supportsStateMachineNode"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K17 [PROTO_3]
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R7 K18 [PROTO_5]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 DUPCLOSURE                       R8 K19 [PROTO_7]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 NEWTABLE                         R9 0 0
       64 JUMPIFNOT                        R5 ; [+3]
       65 GETIMPORT                        R10 K23 [Enum.AnimationNodeType.StateMachineNode]
       67 SETTABLE                         R8 R9 R10
       68 GETIMPORT                        R10 K26 [table.freeze]
       70 MOVE                             R11 R9
       71 CALL                             R10 1 -1
       72 RETURN                           R10 -1
