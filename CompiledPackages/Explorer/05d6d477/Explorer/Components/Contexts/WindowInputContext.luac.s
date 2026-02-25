PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputState"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputState.Begin]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["inputBeganSignal"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K5 ["Fire"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K5 ["Fire"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["new"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R0 K2 ["inputChangedSignal"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 2
       15 GETTABLEKS                       R6 R0 K3 ["inputBeganSignal"]
       17 MOVE                             R7 R1
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R2 3 0
       21 DUPTABLE                         R2 K5 [{"inputBeganSignal", "inputChangedSignal", "inputEndedSignal"}]
       22 GETTABLEKS                       R3 R0 K3 ["inputBeganSignal"]
       24 SETTABLEKS                       R3 R2 K3 ["inputBeganSignal"]
       26 SETTABLEKS                       R1 R2 K2 ["inputChangedSignal"]
       28 GETTABLEKS                       R3 R0 K4 ["inputEndedSignal"]
       30 SETTABLEKS                       R3 R2 K4 ["inputEndedSignal"]
       32 GETUPVAL                         R3 3
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R4 R5 K6 ["Provider"]
       36 DUPTABLE                         R5 K8 [{"value"}]
       37 SETTABLEKS                       R2 R5 K7 ["value"]
       39 GETTABLEKS                       R6 R0 K9 ["children"]
       41 CALL                             R3 3 -1
       42 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["Fire"]
        5 CALL                             R3 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["Fire"]
        5 CALL                             R3 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["Fire"]
        5 CALL                             R3 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["new"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useState"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["new"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useState"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K1 ["new"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R1
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R7 0 1
       39 MOVE                             R8 R2
       40 SETLIST                          R7 R8 1 [1]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       46 NEWCLOSURE                       R7 P2
       47 CAPTURE                          VAL R3
       48 NEWTABLE                         R8 0 1
       50 MOVE                             R9 R3
       51 SETLIST                          R8 R9 1 [1]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 2
       55 GETUPVAL                         R8 3
       56 DUPTABLE                         R9 K6 [{"inputBeganSignal", "inputChangedSignal", "inputEndedSignal"}]
       57 SETTABLEKS                       R1 R9 K3 ["inputBeganSignal"]
       59 SETTABLEKS                       R2 R9 K4 ["inputChangedSignal"]
       61 SETTABLEKS                       R3 R9 K5 ["inputEndedSignal"]
       63 DUPTABLE                         R10 K8 [{"WindowHoverCatcher"}]
       64 GETUPVAL                         R11 2
       65 LOADK                            R12 K9 ["Frame"]
       66 NEWTABLE                         R13 8 0
       68 LOADN                            R14 1
       69 SETTABLEKS                       R14 R13 K10 ["BackgroundTransparency"]
       71 GETIMPORT                        R14 K13 [UDim2.fromScale]
       73 LOADN                            R15 1
       74 LOADN                            R16 1
       75 CALL                             R14 2 1
       76 SETTABLEKS                       R14 R13 K14 ["Size"]
       78 GETUPVAL                         R16 0
       79 GETTABLEKS                       R15 R16 K15 ["Event"]
       81 GETTABLEKS                       R14 R15 K16 ["InputBegan"]
       83 SETTABLE                         R4 R13 R14
       84 GETUPVAL                         R16 0
       85 GETTABLEKS                       R15 R16 K15 ["Event"]
       87 GETTABLEKS                       R14 R15 K17 ["InputChanged"]
       89 SETTABLE                         R5 R13 R14
       90 GETUPVAL                         R16 0
       91 GETTABLEKS                       R15 R16 K15 ["Event"]
       93 GETTABLEKS                       R14 R15 K18 ["InputEnded"]
       95 SETTABLE                         R6 R13 R14
       96 GETTABLEKS                       R14 R0 K19 ["children"]
       98 CALL                             R11 3 1
       99 SETTABLEKS                       R11 R10 K7 ["WindowHoverCatcher"]
      101 CALL                             R7 3 -1
      102 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K10 ["useEventConnection"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["createElement"]
       30 DUPTABLE                         R5 K15 [{"inputBeganSignal", "inputChangedSignal", "inputEndedSignal"}]
       31 GETTABLEKS                       R6 R2 K16 ["new"]
       33 CALL                             R6 0 1
       34 SETTABLEKS                       R6 R5 K12 ["inputBeganSignal"]
       36 GETTABLEKS                       R6 R2 K16 ["new"]
       38 CALL                             R6 0 1
       39 SETTABLEKS                       R6 R5 K13 ["inputChangedSignal"]
       41 GETTABLEKS                       R6 R2 K16 ["new"]
       43 CALL                             R6 0 1
       44 SETTABLEKS                       R6 R5 K14 ["inputEndedSignal"]
       46 GETTABLEKS                       R6 R1 K17 ["createContext"]
       48 MOVE                             R7 R5
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K18 [PROTO_1]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 DUPCLOSURE                       R8 K19 [PROTO_5]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 DUPTABLE                         R9 K23 [{"Context", "Provider", "StandardProvider"}]
       62 SETTABLEKS                       R6 R9 K20 ["Context"]
       64 SETTABLEKS                       R7 R9 K21 ["Provider"]
       66 SETTABLEKS                       R8 R9 K22 ["StandardProvider"]
       68 RETURN                           R9 1
