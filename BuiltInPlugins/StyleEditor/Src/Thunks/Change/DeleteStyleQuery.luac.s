PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Remove"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 NAMECALL                         R5 R4 K0 ["Remove"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-4]
       13 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K2 ["getQueryStyleRulesForPseudo"]
       11 GETUPVAL                         R3 1
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R1 K3 ["recordChange"]
       15 DUPTABLE                         R4 K7 [{"Name", "DisplayName", "DoChange"}]
       16 LOADK                            R5 K8 ["StyleEditor/DeleteStyleQuery"]
       17 SETTABLEKS                       R5 R4 K4 ["Name"]
       19 LOADK                            R5 K9 ["StyleEditor - Delete Style Query"]
       20 SETTABLEKS                       R5 R4 K5 ["DisplayName"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R5 R4 K6 ["DoChange"]
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
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
       17 GETTABLEKS                       R2 R3 K7 ["StyleQueryHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Flags"]
       26 GETTABLEKS                       R3 R4 K9 ["getFFlagStyleQuery"]
       28 CALL                             R2 1 1
       29 CALL                             R2 0 1
       30 GETIMPORT                        R3 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Src"]
       34 GETTABLEKS                       R5 R6 K10 ["Thunks"]
       36 GETTABLEKS                       R4 R5 K11 ["Types"]
       38 CALL                             R3 1 1
       39 DUPCLOSURE                       R4 K12 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 RETURN                           R4 1
