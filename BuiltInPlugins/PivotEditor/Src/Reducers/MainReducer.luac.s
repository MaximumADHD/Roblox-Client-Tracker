PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"editingMode", "statusMessage"}]
        3 GETTABLEKS                       R5 R1 K0 ["editingMode"]
        5 SETTABLEKS                       R5 R4 K0 ["editingMode"]
        7 GETTABLEKS                       R5 R1 K1 ["statusMessage"]
        9 SETTABLEKS                       R5 R4 K1 ["statusMessage"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"editingMode", "statusMessage"}]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K3 ["Transform"]
        6 SETTABLEKS                       R5 R4 K0 ["editingMode"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K4 ["None"]
       11 SETTABLEKS                       R5 R4 K1 ["statusMessage"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K3 [{"targetObject", "editingMode", "statusMessage"}]
        3 GETTABLEKS                       R5 R1 K0 ["targetObject"]
        5 SETTABLEKS                       R5 R4 K0 ["targetObject"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K4 ["Transform"]
       10 SETTABLEKS                       R5 R4 K1 ["editingMode"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K5 ["None"]
       15 SETTABLEKS                       R5 R4 K2 ["statusMessage"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K3 [{"targetObject", "editingMode", "statusMessage"}]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K4 ["None"]
        6 SETTABLEKS                       R5 R4 K0 ["targetObject"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K4 ["None"]
       11 SETTABLEKS                       R5 R4 K1 ["editingMode"]
       13 GETTABLEKS                       R5 R1 K2 ["statusMessage"]
       15 SETTABLEKS                       R5 R4 K2 ["statusMessage"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Utility"]
       29 GETTABLEKS                       R4 R4 K10 ["EditingMode"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Utility"]
       38 GETTABLEKS                       R5 R5 K11 ["StatusMessage"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Actions"]
       47 GETTABLEKS                       R6 R6 K13 ["BeginSelectingPivot"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K12 ["Actions"]
       56 GETTABLEKS                       R7 R7 K14 ["DoneSelectingPivot"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K12 ["Actions"]
       65 GETTABLEKS                       R8 R8 K15 ["SelectObjectForEditing"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K4 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K12 ["Actions"]
       74 GETTABLEKS                       R9 R9 K16 ["SelectInvalidSelection"]
       76 CALL                             R8 1 1
       77 GETTABLEKS                       R9 R1 K17 ["join"]
       79 DUPTABLE                         R10 K22 [{["targetObject"] = , ["editingMode"], ["statusMessage"]}]
       80 GETTABLEKS                       R11 R3 K23 ["None"]
       82 SETTABLEKS                       R11 R10 K20 ["editingMode"]
       84 GETTABLEKS                       R11 R4 K23 ["None"]
       86 SETTABLEKS                       R11 R10 K21 ["statusMessage"]
       88 GETTABLEKS                       R11 R2 K24 ["createReducer"]
       90 MOVE                             R12 R10
       91 NEWTABLE                         R13 4 0
       93 GETTABLEKS                       R14 R5 K25 ["name"]
       95 DUPCLOSURE                       R15 K26 [PROTO_0]
       96 CAPTURE                          VAL R9
       97 SETTABLE                         R15 R13 R14
       98 GETTABLEKS                       R14 R6 K25 ["name"]
      100 DUPCLOSURE                       R15 K27 [PROTO_1]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 SETTABLE                         R15 R13 R14
      105 GETTABLEKS                       R14 R7 K25 ["name"]
      107 DUPCLOSURE                       R15 K28 [PROTO_2]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R4
      111 SETTABLE                         R15 R13 R14
      112 GETTABLEKS                       R14 R8 K25 ["name"]
      114 DUPCLOSURE                       R15 K29 [PROTO_3]
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R3
      118 SETTABLE                         R15 R13 R14
      119 CALL                             R11 2 -1
      120 RETURN                           R11 -1
