PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K5 ["width"]
        8 ORK                              R2 R3 K4 [350]
        9 LOADN                            R3 102
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 -1
       12 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 1
        6 JUMPIFNOT                        R4 ; [+39]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["useState"]
       10 GETIMPORT                        R5 K3 [Vector2.new]
       12 GETTABLEKS                       R7 R0 K5 ["width"]
       14 ORK                              R6 R7 K4 [350]
       15 LOADN                            R7 102
       16 CALL                             R5 2 -1
       17 CALL                             R4 -1 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R4
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 2
       30 MOVE                             R2 R5
       31 MOVE                             R3 R6
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          REF R3
       37 CAPTURE                          VAL R4
       38 NEWTABLE                         R7 0 2
       40 MOVE                             R8 R4
       41 MOVE                             R9 R3
       42 SETLIST                          R7 R8 2 [1]
       44 CALL                             R5 2 0
       45 JUMP                             ; [+15]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       49 NEWCLOSURE                       R5 P2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R6 0 1
       54 GETTABLEKS                       R7 R0 K5 ["width"]
       56 SETLIST                          R6 R7 1 [1]
       58 CALL                             R4 2 2
       59 MOVE                             R2 R4
       60 MOVE                             R3 R5
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       64 NEWCLOSURE                       R5 P3
       65 CAPTURE                          REF R3
       66 NEWTABLE                         R6 0 1
       68 MOVE                             R7 R3
       69 SETLIST                          R6 R7 1 [1]
       71 CALL                             R4 2 1
       72 GETUPVAL                         R5 4
       73 GETUPVAL                         R6 5
       74 DUPTABLE                         R7 K12 [{"uri", "getSize", "onClose"}]
       75 GETTABLEKS                       R8 R0 K9 ["uri"]
       77 SETTABLEKS                       R8 R7 K9 ["uri"]
       79 SETTABLEKS                       R2 R7 K10 ["getSize"]
       81 GETTABLEKS                       R9 R1 K13 ["escapeAction"]
       83 JUMPIFNOT                        R9 ; [+5]
       84 GETTABLEKS                       R8 R1 K13 ["escapeAction"]
       86 GETTABLEKS                       R8 R8 K11 ["onClose"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R8
       90 SETTABLEKS                       R8 R7 K11 ["onClose"]
       92 DUPTABLE                         R8 K15 [{"DialogView"}]
       93 GETUPVAL                         R9 4
       94 GETUPVAL                         R10 6
       95 DUPTABLE                         R11 K27 [{"type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "width", "isContentFullBleed", "tertiaryActionVariant", "onAbsoluteSizeChanged"}]
       96 GETTABLEKS                       R12 R0 K16 ["type"]
       98 SETTABLEKS                       R12 R11 K16 ["type"]
      100 GETTABLEKS                       R12 R0 K17 ["title"]
      102 SETTABLEKS                       R12 R11 K17 ["title"]
      104 GETTABLEKS                       R12 R0 K18 ["description"]
      106 SETTABLEKS                       R12 R11 K18 ["description"]
      108 GETTABLEKS                       R12 R0 K19 ["image"]
      110 SETTABLEKS                       R12 R11 K19 ["image"]
      112 GETTABLEKS                       R12 R0 K20 ["showIndeterminateProgressIndicator"]
      114 SETTABLEKS                       R12 R11 K20 ["showIndeterminateProgressIndicator"]
      116 GETTABLEKS                       R12 R1 K21 ["primaryAction"]
      118 SETTABLEKS                       R12 R11 K21 ["primaryAction"]
      120 GETTABLEKS                       R12 R1 K22 ["secondaryAction"]
      122 SETTABLEKS                       R12 R11 K22 ["secondaryAction"]
      124 GETTABLEKS                       R12 R1 K23 ["tertiaryAction"]
      126 SETTABLEKS                       R12 R11 K23 ["tertiaryAction"]
      128 GETTABLEKS                       R12 R0 K5 ["width"]
      130 SETTABLEKS                       R12 R11 K5 ["width"]
      132 GETUPVAL                         R13 7
      133 JUMPIFNOT                        R13 ; [+3]
      134 GETTABLEKS                       R12 R0 K24 ["isContentFullBleed"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R12
      138 SETTABLEKS                       R12 R11 K24 ["isContentFullBleed"]
      140 GETUPVAL                         R13 7
      141 JUMPIFNOT                        R13 ; [+3]
      142 GETTABLEKS                       R12 R0 K25 ["tertiaryActionVariant"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R12
      146 SETTABLEKS                       R12 R11 K25 ["tertiaryActionVariant"]
      148 SETTABLEKS                       R4 R11 K26 ["onAbsoluteSizeChanged"]
      150 GETTABLEKS                       R12 R0 K28 ["children"]
      152 CALL                             R9 3 1
      153 SETTABLEKS                       R9 R8 K14 ["DialogView"]
      155 CALL                             R5 3 -1
      156 CLOSEUPVALS                      R3
      157 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Dialog"]
       15 GETTABLEKS                       R3 R3 K9 ["DialogPanel"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K8 ["Dialog"]
       24 GETTABLEKS                       R4 R4 K10 ["DialogView"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K11 ["Foundation"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K13 ["Signals"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Types"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K7 ["Components"]
       51 GETTABLEKS                       R9 R9 K8 ["Dialog"]
       53 GETTABLEKS                       R9 R9 K15 ["useDialogTelemetry"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["SharedFlags"]
       60 GETTABLEKS                       R10 R10 K17 ["getFFlagStudioFoundationDialogWidthRenderFix"]
       62 CALL                             R9 1 1
       63 CALL                             R9 0 1
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R11 R0 K16 ["SharedFlags"]
       68 GETTABLEKS                       R11 R11 K18 ["getFFlagStudioFoundationDialogDeviceSimFixes"]
       70 CALL                             R10 1 1
       71 CALL                             R10 0 1
       72 GETTABLEKS                       R11 R5 K19 ["createElement"]
       74 DUPCLOSURE                       R12 K20 [PROTO_4]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R10
       83 GETTABLEKS                       R13 R5 K21 ["memo"]
       85 MOVE                             R14 R12
       86 CALL                             R13 1 -1
       87 RETURN                           R13 -1
