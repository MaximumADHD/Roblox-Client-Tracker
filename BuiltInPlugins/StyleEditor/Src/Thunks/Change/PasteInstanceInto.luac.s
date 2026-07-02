PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Clone"]
        6 CALL                             R5 1 1
        7 GETUPVAL                         R6 1
        8 SETTABLEKS                       R6 R5 K1 ["Parent"]
       10 JUMPIFNOTEQKN                    R3 K2 [1] ; [+2]
       12 SETUPVAL                         R5 2
       13 FORGLOOP                         R0 2 ; [-10]
       15 GETIMPORT                        R0 K6 [Enum.FinishRecordingOperation.Commit]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["Clone"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K1 ["Parent"]
        9 GETIMPORT                        R0 K5 [Enum.FinishRecordingOperation.Commit]
       11 RETURN                           R0 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Clipboard"]
        5 GETUPVAL                         R4 0
        6 JUMPIFNOT                        R4 ; [+42]
        7 GETTABLEKS                       R4 R3 K2 ["Instances"]
        9 LENGTH                           R5 R4
       10 JUMPIFNOTEQKN                    R5 K3 [0] ; [+3]
       12 LOADNIL                          R5
       13 RETURN                           R5 1
       14 LOADNIL                          R5
       15 GETTABLEKS                       R6 R1 K4 ["recordChange"]
       17 DUPTABLE                         R7 K9 [{["Name"] = "StyleEditor/PasteInstanceInto", ["DisplayName"], ["DoChange"]}]
       18 LENGTH                           R9 R4
       19 LOADN                            R10 1
       20 JUMPIFNOTLT                      R10 R9 ; [+3]
       22 LOADK                            R8 K10 ["StyleEditor - Paste Instances"]
       23 JUMP                             ; [+1]
       24 LOADK                            R8 K11 ["StyleEditor - Paste Instance"]
       25 SETTABLEKS                       R8 R7 K7 ["DisplayName"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          REF R5
       31 SETTABLEKS                       R8 R7 K8 ["DoChange"]
       33 CALL                             R6 1 0
       34 JUMPIFNOT                        R5 ; [+11]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K12 ["createItemId"]
       38 MOVE                             R7 R5
       39 CALL                             R6 1 1
       40 GETUPVAL                         R9 3
       41 MOVE                             R10 R6
       42 CALL                             R9 1 -1
       43 NAMECALL                         R7 R0 K13 ["dispatch"]
       45 CALL                             R7 -1 0
       46 CLOSEUPVALS                      R5
       47 RETURN                           R5 1
       48 CLOSEUPVALS                      R5
       49 GETTABLEKS                       R4 R3 K14 ["DEPRECATED_Instance"]
       51 JUMPIF                           R4 ; [+2]
       52 LOADNIL                          R5
       53 RETURN                           R5 1
       54 JUMPIFNOTEQKNIL                  R4 ; [+2]
       56 LOADB                            R6 0 +1
       57 LOADB                            R6 1
       58 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       60 LOADK                            R7 K15 ["expecting valid instance"]
       61 GETIMPORT                        R5 K17 [assert]
       63 CALL                             R5 2 0
       64 LOADNIL                          R5
       65 GETTABLEKS                       R6 R1 K4 ["recordChange"]
       67 DUPTABLE                         R7 K18 [{["Name"] = "StyleEditor/PasteInstanceInto", ["DisplayName"] = "StyleEditor - Paste Instance", ["DoChange"]}]
       68 NEWCLOSURE                       R8 P1
       69 CAPTURE                          REF R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          UPVAL U1
       72 SETTABLEKS                       R8 R7 K8 ["DoChange"]
       74 CALL                             R6 1 0
       75 JUMPIFNOT                        R5 ; [+11]
       76 GETUPVAL                         R6 2
       77 GETTABLEKS                       R6 R6 K12 ["createItemId"]
       79 MOVE                             R7 R5
       80 CALL                             R6 1 1
       81 GETUPVAL                         R9 3
       82 MOVE                             R10 R6
       83 CALL                             R9 1 -1
       84 NAMECALL                         R7 R0 K13 ["dispatch"]
       86 CALL                             R7 -1 0
       87 CLOSEUPVALS                      R5
       88 RETURN                           R5 1
       89 CLOSEUPVALS                      R5

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["TreeTableHelpers"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R2 K8 ["Actions"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K9 ["Window"]
       28 GETTABLEKS                       R4 R4 K10 ["SelectItem"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K5 ["Src"]
       35 GETTABLEKS                       R5 R5 K11 ["Reducers"]
       37 GETTABLEKS                       R5 R5 K12 ["RootReducer"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R0 K5 ["Src"]
       44 GETTABLEKS                       R6 R6 K13 ["Thunks"]
       46 GETTABLEKS                       R6 R6 K14 ["Types"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K5 ["Src"]
       53 GETTABLEKS                       R7 R7 K15 ["Flags"]
       55 GETTABLEKS                       R7 R7 K16 ["getFFlagStyleQuery"]
       57 CALL                             R6 1 1
       58 CALL                             R6 0 1
       59 DUPCLOSURE                       R7 K17 [PROTO_3]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 RETURN                           R7 1
