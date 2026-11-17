PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["TextLabel"]
        4 DUPTABLE                         R4 K10 [{["Text"], ["Size"], ["TextSize"] = 18, ["TextWrapped"] = True, ["BackgroundTransparency"] = 1}]
        5 GETIMPORT                        R5 K13 [string.format]
        7 LOADK                            R6 K14 ["You must set %s to %s to view this story"]
        8 MOVE                             R7 R0
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R9 R1
       11 GETIMPORT                        R8 K16 [tostring]
       13 CALL                             R8 1 1
       14 CALL                             R5 3 1
       15 SETTABLEKS                       R5 R4 K2 ["Text"]
       17 GETIMPORT                        R5 K19 [UDim2.new]
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 LOADN                            R8 0
       22 LOADN                            R9 100
       23 CALL                             R5 4 1
       24 SETTABLEKS                       R5 R4 K3 ["Size"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_1:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Instances must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETIMPORT                        R2 K7 [ipairs]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 3
       19 FORGPREP_INEXT                   R2
       20 LOADK                            R10 K8 ["Instance"]
       21 NAMECALL                         R8 R6 K9 ["IsA"]
       23 CALL                             R8 2 -1
       24 FASTCALL                         ASSERT ; [+2]
       25 GETIMPORT                        R7 K5 [assert]
       27 CALL                             R7 -1 0
       28 FORGLOOP                         R2 2 [inext] ; [-9]
       30 LOADK                            R2 K10 ["TEST"]
       31 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 1 0
        2 DUPCLOSURE                       R1 K0 [PROTO_1]
        3 SETTABLEKS                       R1 R0 K1 ["SerializeInstances"]
        5 NEWTABLE                         R1 0 1
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R3 K3 [{"StudioAssetService"}]
        9 SETTABLEKS                       R0 R3 K2 ["StudioAssetService"]
       11 CALL                             R2 1 -1
       12 SETLIST                          R1 R2 -1 [1]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R1 K7 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K8 ["Util"]
       21 GETTABLEKS                       R4 R4 K9 ["ThunkWithArgsMiddleware"]
       23 DUPCLOSURE                       R5 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 DUPCLOSURE                       R6 K11 [PROTO_2]
       26 CAPTURE                          VAL R4
       27 DUPTABLE                         R7 K14 [{"createThunkMiddleware", "mustSetFlag"}]
       28 SETTABLEKS                       R6 R7 K12 ["createThunkMiddleware"]
       30 SETTABLEKS                       R5 R7 K13 ["mustSetFlag"]
       32 RETURN                           R7 1
