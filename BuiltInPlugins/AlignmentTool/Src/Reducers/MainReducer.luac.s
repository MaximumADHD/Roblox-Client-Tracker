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
       52 DUPTABLE                         R7 K23 [{"toolEnabled", "alignEnabled", "disabledReason", "alignableObjects", "alignmentMode", "alignmentSpace", "enabledAxes", "relativeTo", "previewVisible"}]
       53 LOADB                            R8 0
       54 SETTABLEKS                       R8 R7 K14 ["toolEnabled"]
       56 LOADB                            R8 0
       57 SETTABLEKS                       R8 R7 K15 ["alignEnabled"]
       59 NEWTABLE                         R8 0 0
       61 SETTABLEKS                       R8 R7 K16 ["disabledReason"]
       63 NEWTABLE                         R8 0 0
       65 SETTABLEKS                       R8 R7 K17 ["alignableObjects"]
       67 GETTABLEKS                       R8 R3 K24 ["Center"]
       69 SETTABLEKS                       R8 R7 K18 ["alignmentMode"]
       71 GETTABLEKS                       R8 R4 K25 ["World"]
       73 SETTABLEKS                       R8 R7 K19 ["alignmentSpace"]
       75 DUPTABLE                         R8 K29 [{"X", "Y", "Z"}]
       76 LOADB                            R9 0
       77 SETTABLEKS                       R9 R8 K26 ["X"]
       79 LOADB                            R9 0
       80 SETTABLEKS                       R9 R8 K27 ["Y"]
       82 LOADB                            R9 0
       83 SETTABLEKS                       R9 R8 K28 ["Z"]
       85 SETTABLEKS                       R8 R7 K20 ["enabledAxes"]
       87 GETTABLEKS                       R8 R5 K30 ["Selection"]
       89 SETTABLEKS                       R8 R7 K21 ["relativeTo"]
       91 LOADB                            R8 0
       92 SETTABLEKS                       R8 R7 K22 ["previewVisible"]
       94 GETTABLEKS                       R8 R2 K31 ["createReducer"]
       96 MOVE                             R9 R7
       97 DUPTABLE                         R10 K40 [{"SetToolEnabled", "SetAlignEnabled", "SetAlignableObjects", "SetAlignmentMode", "SetAlignmentSpace", "SetEnabledAxes", "SetRelativeTo", "SetPreviewVisible"}]
       98 DUPCLOSURE                       R11 K41 [PROTO_0]
       99 CAPTURE                          VAL R6
      100 SETTABLEKS                       R11 R10 K32 ["SetToolEnabled"]
      102 DUPCLOSURE                       R11 K42 [PROTO_1]
      103 CAPTURE                          VAL R6
      104 SETTABLEKS                       R11 R10 K33 ["SetAlignEnabled"]
      106 DUPCLOSURE                       R11 K43 [PROTO_2]
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R11 R10 K34 ["SetAlignableObjects"]
      110 DUPCLOSURE                       R11 K44 [PROTO_3]
      111 CAPTURE                          VAL R6
      112 SETTABLEKS                       R11 R10 K35 ["SetAlignmentMode"]
      114 DUPCLOSURE                       R11 K45 [PROTO_4]
      115 CAPTURE                          VAL R6
      116 SETTABLEKS                       R11 R10 K36 ["SetAlignmentSpace"]
      118 DUPCLOSURE                       R11 K46 [PROTO_5]
      119 CAPTURE                          VAL R6
      120 SETTABLEKS                       R11 R10 K37 ["SetEnabledAxes"]
      122 DUPCLOSURE                       R11 K47 [PROTO_6]
      123 CAPTURE                          VAL R6
      124 SETTABLEKS                       R11 R10 K38 ["SetRelativeTo"]
      126 DUPCLOSURE                       R11 K48 [PROTO_7]
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R11 R10 K39 ["SetPreviewVisible"]
      130 CALL                             R8 2 1
      131 RETURN                           R8 1
