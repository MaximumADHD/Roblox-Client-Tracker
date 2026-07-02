PROTO_0:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"showPreview"}]
        3 GETTABLEKS                       R5 R1 K0 ["showPreview"]
        5 SETTABLEKS                       R5 R4 K0 ["showPreview"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"showUploadConfirmation"}]
        3 GETTABLEKS                       R5 R1 K0 ["showUploadConfirmation"]
        5 SETTABLEKS                       R5 R4 K0 ["showUploadConfirmation"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"showUploadWidget"}]
        3 GETTABLEKS                       R5 R1 K0 ["showUploadWidget"]
        5 SETTABLEKS                       R5 R4 K0 ["showUploadWidget"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"showQueue"}]
        3 GETTABLEKS                       R5 R1 K0 ["showQueue"]
        5 SETTABLEKS                       R5 R4 K0 ["showQueue"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"showWarning"}]
        3 GETTABLEKS                       R5 R1 K0 ["showWarning"]
        5 SETTABLEKS                       R5 R4 K0 ["showWarning"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"uploadWidgetItem"}]
        3 GETTABLEKS                       R5 R1 K0 ["uploadWidgetItem"]
        5 SETTABLEKS                       R5 R4 K0 ["uploadWidgetItem"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["join"]
       23 GETTABLEKS                       R4 R0 K10 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Actions"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["ResetQueue"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K13 ["SetShowPreview"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K14 ["SetShowQueue"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R4 K15 ["SetShowUploadConfirmation"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R4 K16 ["SetShowUploadWidget"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R4 K17 ["SetShowWarning"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R4 K18 ["SetUploadWidgetItem"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R0 K10 ["Src"]
       66 GETTABLEKS                       R13 R13 K19 ["Types"]
       68 GETTABLEKS                       R13 R13 K20 ["QueuedSession"]
       70 CALL                             R12 1 1
       71 DUPTABLE                         R13 K27 [{["showPreview"] = False, ["showQueue"] = False, ["showUploadConfirmation"] = False, ["showUploadWidget"] = False, ["uploadWidgetItem"]}]
       72 NEWTABLE                         R14 0 0
       74 SETTABLEKS                       R14 R13 K26 ["uploadWidgetItem"]
       76 GETTABLEKS                       R14 R1 K28 ["createReducer"]
       78 MOVE                             R15 R13
       79 NEWTABLE                         R16 8 0
       81 GETTABLEKS                       R17 R5 K29 ["name"]
       83 DUPCLOSURE                       R18 K30 [PROTO_0]
       84 CAPTURE                          VAL R13
       85 SETTABLE                         R18 R16 R17
       86 GETTABLEKS                       R17 R6 K29 ["name"]
       88 DUPCLOSURE                       R18 K31 [PROTO_1]
       89 CAPTURE                          VAL R3
       90 SETTABLE                         R18 R16 R17
       91 GETTABLEKS                       R17 R8 K29 ["name"]
       93 DUPCLOSURE                       R18 K32 [PROTO_2]
       94 CAPTURE                          VAL R3
       95 SETTABLE                         R18 R16 R17
       96 GETTABLEKS                       R17 R9 K29 ["name"]
       98 DUPCLOSURE                       R18 K33 [PROTO_3]
       99 CAPTURE                          VAL R3
      100 SETTABLE                         R18 R16 R17
      101 GETTABLEKS                       R17 R7 K29 ["name"]
      103 DUPCLOSURE                       R18 K34 [PROTO_4]
      104 CAPTURE                          VAL R3
      105 SETTABLE                         R18 R16 R17
      106 GETTABLEKS                       R17 R10 K29 ["name"]
      108 DUPCLOSURE                       R18 K35 [PROTO_5]
      109 CAPTURE                          VAL R3
      110 SETTABLE                         R18 R16 R17
      111 GETTABLEKS                       R17 R11 K29 ["name"]
      113 DUPCLOSURE                       R18 K36 [PROTO_6]
      114 CAPTURE                          VAL R3
      115 SETTABLE                         R18 R16 R17
      116 CALL                             R14 2 -1
      117 RETURN                           R14 -1
