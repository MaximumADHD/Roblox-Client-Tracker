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
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K3 ["Transform"]
        6 SETTABLEKS                       R5 R4 K0 ["editingMode"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K4 ["None"]
       11 SETTABLEKS                       R5 R4 K1 ["statusMessage"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K3 [{"targetObject", "editingMode", "statusMessage"}]
        3 GETTABLEKS                       R5 R1 K0 ["targetObject"]
        5 SETTABLEKS                       R5 R4 K0 ["targetObject"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K4 ["Transform"]
       10 SETTABLEKS                       R5 R4 K1 ["editingMode"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K5 ["None"]
       15 SETTABLEKS                       R5 R4 K2 ["statusMessage"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K3 [{"targetObject", "editingMode", "statusMessage"}]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K4 ["None"]
        6 SETTABLEKS                       R5 R4 K0 ["targetObject"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K4 ["None"]
       11 SETTABLEKS                       R5 R4 K1 ["editingMode"]
       13 GETTABLEKS                       R5 R1 K2 ["statusMessage"]
       15 SETTABLEKS                       R5 R4 K2 ["statusMessage"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Utility"]
       29 GETTABLEKS                       R4 R5 K10 ["EditingMode"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Utility"]
       38 GETTABLEKS                       R5 R6 K11 ["StatusMessage"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K12 ["Actions"]
       47 GETTABLEKS                       R6 R7 K13 ["BeginSelectingPivot"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K12 ["Actions"]
       56 GETTABLEKS                       R7 R8 K14 ["DoneSelectingPivot"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R10 K12 ["Actions"]
       65 GETTABLEKS                       R8 R9 K15 ["SelectObjectForEditing"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K4 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Src"]
       72 GETTABLEKS                       R10 R11 K12 ["Actions"]
       74 GETTABLEKS                       R9 R10 K16 ["SelectInvalidSelection"]
       76 CALL                             R8 1 1
       77 GETTABLEKS                       R9 R1 K17 ["join"]
       79 DUPTABLE                         R10 K21 [{"targetObject", "editingMode", "statusMessage"}]
       80 LOADNIL                          R11
       81 SETTABLEKS                       R11 R10 K18 ["targetObject"]
       83 GETTABLEKS                       R11 R3 K22 ["None"]
       85 SETTABLEKS                       R11 R10 K19 ["editingMode"]
       87 GETTABLEKS                       R11 R4 K22 ["None"]
       89 SETTABLEKS                       R11 R10 K20 ["statusMessage"]
       91 GETTABLEKS                       R11 R2 K23 ["createReducer"]
       93 MOVE                             R12 R10
       94 NEWTABLE                         R13 4 0
       96 GETTABLEKS                       R14 R5 K24 ["name"]
       98 DUPCLOSURE                       R15 K25 [PROTO_0]
       99 CAPTURE                          VAL R9
      100 SETTABLE                         R15 R13 R14
      101 GETTABLEKS                       R14 R6 K24 ["name"]
      103 DUPCLOSURE                       R15 K26 [PROTO_1]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 SETTABLE                         R15 R13 R14
      108 GETTABLEKS                       R14 R7 K24 ["name"]
      110 DUPCLOSURE                       R15 K27 [PROTO_2]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 SETTABLE                         R15 R13 R14
      115 GETTABLEKS                       R14 R8 K24 ["name"]
      117 DUPCLOSURE                       R15 K28 [PROTO_3]
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R3
      121 SETTABLE                         R15 R13 R14
      122 CALL                             R11 2 -1
      123 RETURN                           R11 -1
