PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plugin"]
        3 LOADK                            R2 K1 ["InstancePasteHooks"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 LOADN                            R2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K3 ["AddPasteHookAsync"]
       12 CALL                             R0 3 1
       13 GETUPVAL                         R1 2
       14 JUMPIFNOT                        R1 ; [+4]
       15 NAMECALL                         R1 R0 K4 ["Disconnect"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 SETUPVAL                         R0 3
       20 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["Disconnect"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["InstancePasteHooks"]
        3 NAMECALL                         R1 R1 K3 ["GetEngineFeature"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+2]
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 RETURN                           R1 1
        9 LOADB                            R1 0
       10 LOADNIL                          R2
       11 GETIMPORT                        R3 K7 [task.spawn]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          REF R1
       17 CAPTURE                          REF R2
       18 CALL                             R3 1 0
       19 NEWCLOSURE                       R3 P2
       20 CAPTURE                          REF R1
       21 CAPTURE                          REF R2
       22 CLOSEUPVALS                      R1
       23 RETURN                           R3 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"registerHook"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["registerHook"]
        4 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["plugin"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 1
       19 MOVE                             R5 R1
       20 SETLIST                          R4 R5 1 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K3 ["createElement"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K4 ["Provider"]
       29 DUPTABLE                         R5 K6 [{"value"}]
       30 SETTABLEKS                       R2 R5 K5 ["value"]
       32 GETTABLEKS                       R6 R0 K7 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["pasteSignal"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 1
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_12:
        0 DUPTABLE                         R0 K1 [{"registerHook"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["registerHook"]
        4 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["pasteSignal"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 1
       19 MOVE                             R5 R1
       20 SETLIST                          R4 R5 1 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K3 ["createElement"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K4 ["Provider"]
       29 DUPTABLE                         R5 K6 [{"value"}]
       30 SETTABLEKS                       R2 R5 K5 ["value"]
       32 GETTABLEKS                       R6 R0 K7 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 LOADK                            R9 K0 ["AnimationNodeDefinition"]
       11 NAMECALL                         R7 R6 K1 ["IsA"]
       13 CALL                             R7 2 1
       14 JUMPIFNOT                        R7 ; [+27]
       15 GETTABLEKS                       R7 R6 K2 ["NodeType"]
       17 GETIMPORT                        R8 K6 [Enum.AnimationNodeType.GraphOutput]
       19 JUMPIFEQ                         R7 R8 ; [+22]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K7 ["setNodePosition"]
       24 MOVE                             R8 R6
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R10 R11 K8 ["getNodePosition"]
       28 MOVE                             R11 R6
       29 CALL                             R10 1 1
       30 JUMPIF                           R10 ; [+2]
       31 GETIMPORT                        R10 K11 [Vector2.zero]
       33 GETIMPORT                        R11 K13 [Vector2.new]
       35 LOADN                            R12 10
       36 LOADN                            R13 10
       37 CALL                             R11 2 1
       38 ADD                              R9 R10 R11
       39 CALL                             R7 2 0
       40 SETTABLEKS                       R1 R6 K14 ["Parent"]
       42 FORGLOOP                         R2 2 ; [-33]
       44 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["registerHook"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R3 R4 K7 ["NativeGraphContext"]
       13 GETTABLEKS                       R2 R3 K8 ["NativeGraphUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["Signal"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R6 K12 ["Signals"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["createContext"]
       39 DUPTABLE                         R6 K15 [{"registerHook"}]
       40 DUPCLOSURE                       R7 K16 [PROTO_1]
       41 SETTABLEKS                       R7 R6 K14 ["registerHook"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K17 [PROTO_8]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 DUPCLOSURE                       R7 K18 [PROTO_13]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R8 K19 [PROTO_16]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 DUPTABLE                         R9 K23 [{"Provider", "MockProvider", "usePasteHooks"}]
       55 SETTABLEKS                       R6 R9 K20 ["Provider"]
       57 SETTABLEKS                       R7 R9 K21 ["MockProvider"]
       59 SETTABLEKS                       R8 R9 K22 ["usePasteHooks"]
       61 RETURN                           R9 1
