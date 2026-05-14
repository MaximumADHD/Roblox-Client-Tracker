PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Name"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Value"]
        7 NAMECALL                         R0 R0 K2 ["SetAttribute"]
        9 CALL                             R0 3 0
       10 GETIMPORT                        R0 K6 [Enum.FinishRecordingOperation.Commit]
       12 RETURN                           R0 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Clipboard"]
        5 GETTABLEKS                       R3 R3 K2 ["Attribute"]
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       15 LOADK                            R6 K3 ["expecting valid attribute"]
       16 GETIMPORT                        R4 K5 [assert]
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R4 R1 K6 ["recordChange"]
       21 DUPTABLE                         R5 K10 [{"Name", "DisplayName", "DoChange"}]
       22 LOADK                            R6 K11 ["StyleEditor/PasteStyleInstanceAttribute"]
       23 SETTABLEKS                       R6 R5 K7 ["Name"]
       25 LOADK                            R6 K12 ["StyleEditor - Paste StyleInstance Token"]
       26 SETTABLEKS                       R6 R5 K8 ["DisplayName"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R6 R5 K9 ["DoChange"]
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       26 GETTABLEKS                       R3 R3 K9 ["Types"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K10 [PROTO_2]
       30 RETURN                           R3 1
