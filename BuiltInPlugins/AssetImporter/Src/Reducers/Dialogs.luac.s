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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["join"]
       23 GETTABLEKS                       R5 R0 K10 ["Src"]
       25 GETTABLEKS                       R4 R5 K11 ["Actions"]
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
       64 GETTABLEKS                       R15 R0 K10 ["Src"]
       66 GETTABLEKS                       R14 R15 K19 ["Types"]
       68 GETTABLEKS                       R13 R14 K20 ["QueuedSession"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K5 [require]
       73 GETTABLEKS                       R16 R0 K10 ["Src"]
       75 GETTABLEKS                       R15 R16 K21 ["Flags"]
       77 GETTABLEKS                       R14 R15 K22 ["getEFCinUnifiedImportQueue"]
       79 CALL                             R13 1 1
       80 DUPTABLE                         R14 K28 [{"showPreview", "showQueue", "showUploadConfirmation", "showUploadWidget", "uploadWidgetItem"}]
       81 LOADB                            R15 0
       82 SETTABLEKS                       R15 R14 K23 ["showPreview"]
       84 LOADB                            R15 0
       85 SETTABLEKS                       R15 R14 K24 ["showQueue"]
       87 LOADB                            R15 0
       88 SETTABLEKS                       R15 R14 K25 ["showUploadConfirmation"]
       90 LOADB                            R15 0
       91 SETTABLEKS                       R15 R14 K26 ["showUploadWidget"]
       93 NEWTABLE                         R15 0 0
       95 SETTABLEKS                       R15 R14 K27 ["uploadWidgetItem"]
       97 GETTABLEKS                       R15 R1 K29 ["createReducer"]
       99 MOVE                             R16 R14
      100 NEWTABLE                         R17 8 0
      102 GETTABLEKS                       R18 R5 K30 ["name"]
      104 DUPCLOSURE                       R19 K31 [PROTO_0]
      105 CAPTURE                          VAL R14
      106 SETTABLE                         R19 R17 R18
      107 GETTABLEKS                       R18 R6 K30 ["name"]
      109 DUPCLOSURE                       R19 K32 [PROTO_1]
      110 CAPTURE                          VAL R3
      111 SETTABLE                         R19 R17 R18
      112 GETTABLEKS                       R18 R8 K30 ["name"]
      114 MOVE                             R20 R13
      115 CALL                             R20 0 1
      116 JUMPIFNOT                        R20 ; [+3]
      117 DUPCLOSURE                       R19 K33 [PROTO_2]
      118 CAPTURE                          VAL R3
      119 JUMP                             ; [+1]
      120 LOADNIL                          R19
      121 SETTABLE                         R19 R17 R18
      122 GETTABLEKS                       R18 R9 K30 ["name"]
      124 DUPCLOSURE                       R19 K34 [PROTO_3]
      125 CAPTURE                          VAL R3
      126 SETTABLE                         R19 R17 R18
      127 GETTABLEKS                       R18 R7 K30 ["name"]
      129 DUPCLOSURE                       R19 K35 [PROTO_4]
      130 CAPTURE                          VAL R3
      131 SETTABLE                         R19 R17 R18
      132 GETTABLEKS                       R18 R10 K30 ["name"]
      134 DUPCLOSURE                       R19 K36 [PROTO_5]
      135 CAPTURE                          VAL R3
      136 SETTABLE                         R19 R17 R18
      137 GETTABLEKS                       R18 R11 K30 ["name"]
      139 DUPCLOSURE                       R19 K37 [PROTO_6]
      140 CAPTURE                          VAL R3
      141 SETTABLE                         R19 R17 R18
      142 CALL                             R15 2 -1
      143 RETURN                           R15 -1
