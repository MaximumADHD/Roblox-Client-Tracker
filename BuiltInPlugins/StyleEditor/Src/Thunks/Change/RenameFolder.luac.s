PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETUPVAL                         R3 0
        3 LOADK                            R5 K0 ["Folder"]
        4 NAMECALL                         R3 R3 K1 ["IsA"]
        6 CALL                             R3 2 1
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["expecting valid Folder"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R1 K5 ["recordChange"]
       15 DUPTABLE                         R3 K11 [{["Name"] = "StyleEditor/RenameFolder", ["DisplayName"] = "StyleEditor - Rename Folder", ["DoChange"]}]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R4 R3 K10 ["DoChange"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Thunks"]
       17 GETTABLEKS                       R2 R2 K7 ["Types"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K8 [PROTO_2]
       21 RETURN                           R2 1
