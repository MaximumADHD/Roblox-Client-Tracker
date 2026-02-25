PROTO_0:
        0 LOADN                            R4 0
        1 LOADN                            R2 2
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 MULK                             R5 R4 K0 [1000]
        5 LOADN                            R8 0
        6 LOADN                            R6 99
        7 LOADN                            R7 1
        8 FORNPREP                         R6
        9 ADDK                             R11 R5 K1 [2]
       10 ADD                              R10 R11 R8
       11 FASTCALL1                        TOSTRING R10 ; [+2]
       12 GETIMPORT                        R9 K3 [tostring]
       14 CALL                             R9 1 1
       15 LOADK                            R11 K4 ["%*_%*"]
       16 MOVE                             R13 R1
       17 MOVE                             R14 R9
       18 NAMECALL                         R11 R11 K5 ["format"]
       20 CALL                             R11 3 1
       21 MOVE                             R10 R11
       22 MOVE                             R13 R10
       23 NAMECALL                         R11 R0 K6 ["GetAttribute"]
       25 CALL                             R11 2 1
       26 JUMPIFNOTEQKNIL                  R11 ; [+2]
       28 RETURN                           R10 1
       29 FORNLOOP                         R6
       30 FORNLOOP                         R2
       31 LOADNIL                          R2
       32 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetAttribute"]
        5 CALL                             R0 3 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R2 R2 K0 ["GetAttribute"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R5 1
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 FASTCALL2K                       ASSERT R5 K1 ; [+4]
       20 LOADK                            R6 K1 ["expecing valid attribute name"]
       21 GETIMPORT                        R4 K3 [assert]
       23 CALL                             R4 2 0
       24 GETTABLEKS                       R4 R1 K4 ["recordChange"]
       26 DUPTABLE                         R5 K8 [{"Name", "DisplayName", "DoChange"}]
       27 LOADK                            R6 K9 ["StyleEditor/DuplicateAttribute"]
       28 SETTABLEKS                       R6 R5 K5 ["Name"]
       30 LOADK                            R6 K10 ["StyleEditor - Duplicate Attribute"]
       31 SETTABLEKS                       R6 R5 K6 ["DisplayName"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R6 R5 K7 ["DoChange"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R4 K8 ["Types"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Src"]
       31 GETTABLEKS                       R5 R6 K9 ["Thunks"]
       33 GETTABLEKS                       R4 R5 K8 ["Types"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K10 [PROTO_0]
       37 DUPCLOSURE                       R5 K11 [PROTO_3]
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
