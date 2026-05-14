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
        6 JUMPIFNOT                        R4 ; [+45]
        7 GETTABLEKS                       R4 R3 K2 ["Instances"]
        9 LENGTH                           R5 R4
       10 JUMPIFNOTEQKN                    R5 K3 [0] ; [+3]
       12 LOADNIL                          R5
       13 RETURN                           R5 1
       14 LOADNIL                          R5
       15 GETTABLEKS                       R6 R1 K4 ["recordChange"]
       17 DUPTABLE                         R7 K8 [{"Name", "DisplayName", "DoChange"}]
       18 LOADK                            R8 K9 ["StyleEditor/PasteInstanceInto"]
       19 SETTABLEKS                       R8 R7 K5 ["Name"]
       21 LENGTH                           R9 R4
       22 LOADN                            R10 1
       23 JUMPIFNOTLT                      R10 R9 ; [+3]
       25 LOADK                            R8 K10 ["StyleEditor - Paste Instances"]
       26 JUMP                             ; [+1]
       27 LOADK                            R8 K11 ["StyleEditor - Paste Instance"]
       28 SETTABLEKS                       R8 R7 K6 ["DisplayName"]
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          REF R5
       34 SETTABLEKS                       R8 R7 K7 ["DoChange"]
       36 CALL                             R6 1 0
       37 JUMPIFNOT                        R5 ; [+11]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K12 ["createItemId"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 GETUPVAL                         R9 3
       44 MOVE                             R10 R6
       45 CALL                             R9 1 -1
       46 NAMECALL                         R7 R0 K13 ["dispatch"]
       48 CALL                             R7 -1 0
       49 CLOSEUPVALS                      R5
       50 RETURN                           R5 1
       51 CLOSEUPVALS                      R5
       52 GETTABLEKS                       R4 R3 K14 ["DEPRECATED_Instance"]
       54 JUMPIF                           R4 ; [+2]
       55 LOADNIL                          R5
       56 RETURN                           R5 1
       57 JUMPIFNOTEQKNIL                  R4 ; [+2]
       59 LOADB                            R6 0 +1
       60 LOADB                            R6 1
       61 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       63 LOADK                            R7 K15 ["expecting valid instance"]
       64 GETIMPORT                        R5 K17 [assert]
       66 CALL                             R5 2 0
       67 LOADNIL                          R5
       68 GETTABLEKS                       R6 R1 K4 ["recordChange"]
       70 DUPTABLE                         R7 K8 [{"Name", "DisplayName", "DoChange"}]
       71 LOADK                            R8 K9 ["StyleEditor/PasteInstanceInto"]
       72 SETTABLEKS                       R8 R7 K5 ["Name"]
       74 LOADK                            R8 K11 ["StyleEditor - Paste Instance"]
       75 SETTABLEKS                       R8 R7 K6 ["DisplayName"]
       77 NEWCLOSURE                       R8 P1
       78 CAPTURE                          REF R5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          UPVAL U1
       81 SETTABLEKS                       R8 R7 K7 ["DoChange"]
       83 CALL                             R6 1 0
       84 JUMPIFNOT                        R5 ; [+11]
       85 GETUPVAL                         R6 2
       86 GETTABLEKS                       R6 R6 K12 ["createItemId"]
       88 MOVE                             R7 R5
       89 CALL                             R6 1 1
       90 GETUPVAL                         R9 3
       91 MOVE                             R10 R6
       92 CALL                             R9 1 -1
       93 NAMECALL                         R7 R0 K13 ["dispatch"]
       95 CALL                             R7 -1 0
       96 CLOSEUPVALS                      R5
       97 RETURN                           R5 1
       98 CLOSEUPVALS                      R5

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
