PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
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

PROTO_7:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["Disconnect"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["InstancePasteHooks"]
        3 NAMECALL                         R1 R1 K3 ["GetEngineFeature"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+2]
        7 DUPCLOSURE                       R1 K4 [PROTO_4]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CopyInstancesToClipboardAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["InstanceClipboardReader"]
        3 NAMECALL                         R1 R1 K3 ["GetEngineFeature"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K4 ["plugin"]
       11 LOADK                            R3 K2 ["InstanceClipboardReader"]
       12 NAMECALL                         R1 R1 K5 ["GetPluginComponent"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K7 [pcall]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetInstancesOnClipboardAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["InstanceClipboardReader"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+3]
        7 NEWTABLE                         R0 0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["plugin"]
       13 LOADK                            R2 K2 ["InstanceClipboardReader"]
       14 NAMECALL                         R0 R0 K5 ["GetPluginComponent"]
       16 CALL                             R0 2 1
       17 GETIMPORT                        R1 K7 [pcall]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          VAL R0
       21 CALL                             R1 1 2
       22 JUMPIFNOT                        R1 ; [+3]
       23 JUMPIFNOT                        R2 ; [+2]
       24 MOVE                             R3 R2
       25 RETURN                           R3 1
       26 NEWTABLE                         R3 0 0
       28 RETURN                           R3 1

PROTO_13:
        0 DUPTABLE                         R0 K3 [{"registerHook", "copyInstancesToClipboardAsync", "getInstancesOnClipboardAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["registerHook"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["copyInstancesToClipboardAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["getInstancesOnClipboardAsync"]
       10 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["plugin"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["useCallback"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R4 0 1
       19 GETTABLEKS                       R5 R0 K1 ["plugin"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["useCallback"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R5 0 1
       31 GETTABLEKS                       R6 R0 K1 ["plugin"]
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       39 NEWCLOSURE                       R5 P3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 NEWTABLE                         R6 0 3
       45 MOVE                             R7 R1
       46 MOVE                             R8 R2
       47 MOVE                             R9 R3
       48 SETLIST                          R6 R7 3 [1]
       50 CALL                             R4 2 1
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K3 ["createElement"]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K4 ["Provider"]
       57 DUPTABLE                         R7 K6 [{"value"}]
       58 SETTABLEKS                       R4 R7 K5 ["value"]
       60 GETTABLEKS                       R8 R0 K7 ["children"]
       62 CALL                             R5 3 -1
       63 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pasteSignal"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 1
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_18:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R8 R1
        7 NAMECALL                         R9 R6 K0 ["Clone"]
        9 CALL                             R9 1 -1
       10 FASTCALL                         TABLE_INSERT ; [+2]
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 -1 0
       14 FORGLOOP                         R2 2 ; [-9]
       16 GETUPVAL                         R2 0
       17 SETTABLEKS                       R1 R2 K4 ["current"]
       19 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R7 R0
        9 NAMECALL                         R8 R5 K1 ["Clone"]
       11 CALL                             R8 1 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R6 K4 [table.insert]
       15 CALL                             R6 -1 0
       16 FORGLOOP                         R1 2 ; [-9]
       18 RETURN                           R0 1

PROTO_20:
        0 DUPTABLE                         R0 K3 [{"registerHook", "copyInstancesToClipboardAsync", "getInstancesOnClipboardAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["registerHook"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["copyInstancesToClipboardAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["getInstancesOnClipboardAsync"]
       10 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["pasteSignal"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 0 0
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       29 NEWCLOSURE                       R5 P2
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R6 0 0
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       37 NEWCLOSURE                       R6 P3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R7 0 3
       43 MOVE                             R8 R2
       44 MOVE                             R9 R3
       45 MOVE                             R10 R4
       46 SETLIST                          R7 R8 3 [1]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K4 ["createElement"]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K5 ["Provider"]
       55 DUPTABLE                         R8 K7 [{"value"}]
       56 SETTABLEKS                       R5 R8 K6 ["value"]
       58 GETTABLEKS                       R9 R0 K8 ["children"]
       60 CALL                             R6 3 -1
       61 RETURN                           R6 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["pasteInstancesIntoGraph"]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["registerHook"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["NativeGraphContext"]
       13 GETTABLEKS                       R2 R2 K8 ["NativeGraphUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Signal"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Signals"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["createContext"]
       39 DUPTABLE                         R6 K17 [{"registerHook", "copyInstancesToClipboardAsync", "getInstancesOnClipboardAsync"}]
       40 DUPCLOSURE                       R7 K18 [PROTO_1]
       41 SETTABLEKS                       R7 R6 K14 ["registerHook"]
       43 DUPCLOSURE                       R7 K19 [PROTO_2]
       44 SETTABLEKS                       R7 R6 K15 ["copyInstancesToClipboardAsync"]
       46 DUPCLOSURE                       R7 K20 [PROTO_3]
       47 SETTABLEKS                       R7 R6 K16 ["getInstancesOnClipboardAsync"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K21 [PROTO_14]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R7 K22 [PROTO_21]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 DUPCLOSURE                       R8 K23 [PROTO_24]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 DUPTABLE                         R9 K28 [{"Context", "Provider", "MockProvider", "usePasteHooks"}]
       61 SETTABLEKS                       R5 R9 K24 ["Context"]
       63 SETTABLEKS                       R6 R9 K25 ["Provider"]
       65 SETTABLEKS                       R7 R9 K26 ["MockProvider"]
       67 SETTABLEKS                       R8 R9 K27 ["usePasteHooks"]
       69 RETURN                           R9 1
