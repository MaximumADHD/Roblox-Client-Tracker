PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["Clone"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K1 ["Parent"]
        9 GETIMPORT                        R0 K5 [Enum.FinishRecordingOperation.Commit]
       11 RETURN                           R0 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Clipboard"]
        5 GETTABLEKS                       R3 R4 K2 ["Instance"]
        7 JUMPIF                           R3 ; [+2]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       16 LOADK                            R6 K3 ["expecting valid instance"]
       17 GETIMPORT                        R4 K5 [assert]
       19 CALL                             R4 2 0
       20 LOADNIL                          R4
       21 GETTABLEKS                       R5 R1 K6 ["recordChange"]
       23 DUPTABLE                         R6 K10 [{"Name", "DisplayName", "DoChange"}]
       24 LOADK                            R7 K11 ["StyleEditor/PasteInstanceInto"]
       25 SETTABLEKS                       R7 R6 K7 ["Name"]
       27 LOADK                            R7 K12 ["StyleEditor - Paste Instance"]
       28 SETTABLEKS                       R7 R6 K8 ["DisplayName"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          REF R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U0
       34 SETTABLEKS                       R7 R6 K9 ["DoChange"]
       36 CALL                             R5 1 0
       37 JUMPIFNOT                        R4 ; [+11]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R5 R6 K13 ["createItemId"]
       41 MOVE                             R6 R4
       42 CALL                             R5 1 1
       43 GETUPVAL                         R8 2
       44 MOVE                             R9 R5
       45 CALL                             R8 1 -1
       46 NAMECALL                         R6 R0 K14 ["dispatch"]
       48 CALL                             R6 -1 0
       49 CLOSEUPVALS                      R4
       50 RETURN                           R4 1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["TreeTableHelpers"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R3 K8 ["Actions"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R2 K9 ["Window"]
       28 GETTABLEKS                       R4 R5 K10 ["SelectItem"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R7 R0 K5 ["Src"]
       35 GETTABLEKS                       R6 R7 K11 ["Reducers"]
       37 GETTABLEKS                       R5 R6 K12 ["RootReducer"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["Src"]
       44 GETTABLEKS                       R7 R8 K13 ["Thunks"]
       46 GETTABLEKS                       R6 R7 K14 ["Types"]
       48 CALL                             R5 1 1
       49 DUPCLOSURE                       R6 K15 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 RETURN                           R6 1
