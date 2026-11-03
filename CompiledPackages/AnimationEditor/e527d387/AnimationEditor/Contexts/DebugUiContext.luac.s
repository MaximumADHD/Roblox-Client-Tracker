PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["ScreenGui"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K7 [Enum.ZIndexBehavior.Sibling]
        6 SETTABLEKS                       R2 R1 K5 ["ZIndexBehavior"]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 MOVE                             R6 R0
       11 NAMECALL                         R4 R4 K8 ["JSONDecode"]
       13 CALL                             R4 2 -1
       14 NAMECALL                         R2 R2 K9 ["DeserializeInstancesAsync"]
       16 CALL                             R2 -1 3
       17 FORGPREP                         R2
       18 SETTABLEKS                       R1 R6 K10 ["Parent"]
       20 FORGLOOP                         R2 2 ; [-3]
       22 GETUPVAL                         R2 2
       23 SETTABLEKS                       R2 R1 K10 ["Parent"]
       25 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["EditableDataModel should not call copyUi"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"copyUi"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_1]
        2 SETTABLEKS                       R1 R0 K0 ["copyUi"]
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useProducer"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        6 DUPCLOSURE                       R3 K2 [PROTO_0]
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["useMemo"]
       17 DUPCLOSURE                       R2 K4 [PROTO_2]
       18 NEWTABLE                         R3 0 0
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["createElement"]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K6 ["Provider"]
       27 DUPTABLE                         R4 K8 [{"value"}]
       28 SETTABLEKS                       R1 R4 K7 ["value"]
       30 GETTABLEKS                       R5 R0 K9 ["children"]
       32 CALL                             R2 3 -1
       33 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R5 3
        4 NAMECALL                         R5 R5 K0 ["GetChildren"]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R3 K1 ["SerializeInstancesAsync"]
        9 CALL                             R3 -1 -1
       10 NAMECALL                         R1 R1 K2 ["JSONEncode"]
       12 CALL                             R1 -1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 LOADK                            R2 K1 ["LayerCollector"]
        8 NAMECALL                         R0 R0 K2 ["FindFirstAncestorWhichIsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOTEQKNIL                  R0 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       17 LOADK                            R3 K3 ["Couldn't find LayerCollector"]
       18 GETIMPORT                        R1 K5 [assert]
       20 CALL                             R1 2 0
       21 GETIMPORT                        R1 K8 [task.spawn]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"copyUi"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["copyUi"]
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useConsumer"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 NEWTABLE                         R5 0 1
       19 MOVE                             R6 R2
       20 SETLIST                          R5 R6 1 [1]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R6 0 1
       30 MOVE                             R7 R3
       31 SETLIST                          R6 R7 1 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K4 ["createElement"]
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K5 ["Provider"]
       40 DUPTABLE                         R7 K7 [{"value"}]
       41 SETTABLEKS                       R4 R7 K6 ["value"]
       43 GETTABLEKS                       R8 R0 K8 ["children"]
       45 DUPTABLE                         R9 K10 [{"Ref"}]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K4 ["createElement"]
       49 LOADK                            R11 K11 ["Folder"]
       50 DUPTABLE                         R12 K13 [{"ref"}]
       51 SETTABLEKS                       R1 R12 K12 ["ref"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K9 ["Ref"]
       56 CALL                             R5 4 -1
       57 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["SerializationService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StarterGui"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AnimationEditor"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Util"]
       29 GETTABLEKS                       R5 R5 K13 ["Networking"]
       31 GETTABLEKS                       R5 R5 K14 ["NetworkUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K11 [require]
       36 GETTABLEKS                       R6 R3 K15 ["Parent"]
       38 GETTABLEKS                       R6 R6 K16 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K11 [require]
       43 GETTABLEKS                       R7 R3 K15 ["Parent"]
       45 GETTABLEKS                       R7 R7 K17 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R5 K18 ["createContext"]
       50 DUPTABLE                         R8 K20 [{"copyUi"}]
       51 GETTABLEKS                       R9 R6 K21 ["createUnimplemented"]
       53 LOADK                            R10 K19 ["copyUi"]
       54 CALL                             R9 1 1
       55 SETTABLEKS                       R9 R8 K19 ["copyUi"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R4 K22 ["createBoundAction"]
       60 LOADK                            R9 K23 ["DebugUiContext_recreateUi"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K24 [PROTO_3]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 DUPCLOSURE                       R10 K25 [PROTO_7]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R7
       75 DUPTABLE                         R11 K29 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       76 SETTABLEKS                       R7 R11 K26 ["Context"]
       78 SETTABLEKS                       R9 R11 K27 ["EditableDataModelProvider"]
       80 SETTABLEKS                       R10 R11 K28 ["UIDataModelProvider"]
       82 RETURN                           R11 1
