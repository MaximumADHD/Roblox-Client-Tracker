PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"toolEnabled"}]
        3 GETTABLEKS                       R5 R1 K0 ["toolEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["toolEnabled"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"alignEnabled", "disabledReason"}]
        3 GETTABLEKS                       R5 R1 K0 ["alignEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["alignEnabled"]
        7 GETTABLEKS                       R5 R1 K1 ["disabledReason"]
        9 SETTABLEKS                       R5 R4 K1 ["disabledReason"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"alignableObjects"}]
        3 GETTABLEKS                       R5 R1 K0 ["alignableObjects"]
        5 SETTABLEKS                       R5 R4 K0 ["alignableObjects"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"alignmentMode"}]
        3 GETTABLEKS                       R5 R1 K0 ["alignmentMode"]
        5 SETTABLEKS                       R5 R4 K0 ["alignmentMode"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"alignmentSpace"}]
        3 GETTABLEKS                       R5 R1 K0 ["alignmentSpace"]
        5 SETTABLEKS                       R5 R4 K0 ["alignmentSpace"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"enabledAxes"}]
        3 GETTABLEKS                       R5 R1 K0 ["enabledAxes"]
        5 SETTABLEKS                       R5 R4 K0 ["enabledAxes"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"relativeTo"}]
        3 GETTABLEKS                       R5 R1 K0 ["relativeTo"]
        5 SETTABLEKS                       R5 R4 K0 ["relativeTo"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"previewVisible"}]
        3 GETTABLEKS                       R5 R1 K2 ["visible"]
        5 SETTABLEKS                       R5 R4 K0 ["previewVisible"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

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
       29 GETTABLEKS                       R4 R4 K10 ["AlignmentMode"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Utility"]
       38 GETTABLEKS                       R5 R5 K11 ["AlignmentSpace"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Utility"]
       47 GETTABLEKS                       R6 R6 K12 ["RelativeTo"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K13 ["join"]
       52 DUPTABLE                         R7 K24 [{["toolEnabled"] = False, ["alignEnabled"] = False, ["disabledReason"], ["alignableObjects"], ["alignmentMode"], ["alignmentSpace"], ["enabledAxes"], ["relativeTo"], ["previewVisible"] = False}]
       53 NEWTABLE                         R8 0 0
       55 SETTABLEKS                       R8 R7 K17 ["disabledReason"]
       57 NEWTABLE                         R8 0 0
       59 SETTABLEKS                       R8 R7 K18 ["alignableObjects"]
       61 GETTABLEKS                       R8 R3 K25 ["Center"]
       63 SETTABLEKS                       R8 R7 K19 ["alignmentMode"]
       65 GETTABLEKS                       R8 R4 K26 ["World"]
       67 SETTABLEKS                       R8 R7 K20 ["alignmentSpace"]
       69 DUPTABLE                         R8 K30 [{["X"] = False, ["Y"] = False, ["Z"] = False}]
       70 SETTABLEKS                       R8 R7 K21 ["enabledAxes"]
       72 GETTABLEKS                       R8 R5 K31 ["Selection"]
       74 SETTABLEKS                       R8 R7 K22 ["relativeTo"]
       76 GETTABLEKS                       R8 R2 K32 ["createReducer"]
       78 MOVE                             R9 R7
       79 DUPTABLE                         R10 K41 [{"SetToolEnabled", "SetAlignEnabled", "SetAlignableObjects", "SetAlignmentMode", "SetAlignmentSpace", "SetEnabledAxes", "SetRelativeTo", "SetPreviewVisible"}]
       80 DUPCLOSURE                       R11 K42 [PROTO_0]
       81 CAPTURE                          VAL R6
       82 SETTABLEKS                       R11 R10 K33 ["SetToolEnabled"]
       84 DUPCLOSURE                       R11 K43 [PROTO_1]
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R11 R10 K34 ["SetAlignEnabled"]
       88 DUPCLOSURE                       R11 K44 [PROTO_2]
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R11 R10 K35 ["SetAlignableObjects"]
       92 DUPCLOSURE                       R11 K45 [PROTO_3]
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R11 R10 K36 ["SetAlignmentMode"]
       96 DUPCLOSURE                       R11 K46 [PROTO_4]
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R11 R10 K37 ["SetAlignmentSpace"]
      100 DUPCLOSURE                       R11 K47 [PROTO_5]
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R11 R10 K38 ["SetEnabledAxes"]
      104 DUPCLOSURE                       R11 K48 [PROTO_6]
      105 CAPTURE                          VAL R6
      106 SETTABLEKS                       R11 R10 K39 ["SetRelativeTo"]
      108 DUPCLOSURE                       R11 K49 [PROTO_7]
      109 CAPTURE                          VAL R6
      110 SETTABLEKS                       R11 R10 K40 ["SetPreviewVisible"]
      112 CALL                             R8 2 1
      113 RETURN                           R8 1
