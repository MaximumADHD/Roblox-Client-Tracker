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
       74 DUPTABLE                         R7 K15 [{"uri", "dmId", "getSize", "onClose", "modal", "toolDialog"}]
       75 GETTABLEKS                       R8 R0 K9 ["uri"]
       77 SETTABLEKS                       R8 R7 K9 ["uri"]
       79 GETTABLEKS                       R8 R0 K10 ["dmId"]
       81 SETTABLEKS                       R8 R7 K10 ["dmId"]
       83 SETTABLEKS                       R2 R7 K11 ["getSize"]
       85 GETTABLEKS                       R9 R1 K16 ["escapeAction"]
       87 JUMPIFNOT                        R9 ; [+5]
       88 GETTABLEKS                       R8 R1 K16 ["escapeAction"]
       90 GETTABLEKS                       R8 R8 K12 ["onClose"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R8
       94 SETTABLEKS                       R8 R7 K12 ["onClose"]
       96 GETTABLEKS                       R8 R0 K13 ["modal"]
       98 SETTABLEKS                       R8 R7 K13 ["modal"]
      100 GETTABLEKS                       R8 R0 K14 ["toolDialog"]
      102 SETTABLEKS                       R8 R7 K14 ["toolDialog"]
      104 DUPTABLE                         R8 K18 [{"DialogView"}]
      105 GETUPVAL                         R9 4
      106 GETUPVAL                         R10 6
      107 DUPTABLE                         R11 K30 [{"type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "width", "isContentFullBleed", "tertiaryActionVariant", "onAbsoluteSizeChanged"}]
      108 GETTABLEKS                       R12 R0 K19 ["type"]
      110 SETTABLEKS                       R12 R11 K19 ["type"]
      112 GETTABLEKS                       R12 R0 K20 ["title"]
      114 SETTABLEKS                       R12 R11 K20 ["title"]
      116 GETTABLEKS                       R12 R0 K21 ["description"]
      118 SETTABLEKS                       R12 R11 K21 ["description"]
      120 GETTABLEKS                       R12 R0 K22 ["image"]
      122 SETTABLEKS                       R12 R11 K22 ["image"]
      124 GETTABLEKS                       R12 R0 K23 ["showIndeterminateProgressIndicator"]
      126 SETTABLEKS                       R12 R11 K23 ["showIndeterminateProgressIndicator"]
      128 GETTABLEKS                       R12 R1 K24 ["primaryAction"]
      130 SETTABLEKS                       R12 R11 K24 ["primaryAction"]
      132 GETTABLEKS                       R12 R1 K25 ["secondaryAction"]
      134 SETTABLEKS                       R12 R11 K25 ["secondaryAction"]
      136 GETTABLEKS                       R12 R1 K26 ["tertiaryAction"]
      138 SETTABLEKS                       R12 R11 K26 ["tertiaryAction"]
      140 GETTABLEKS                       R12 R0 K5 ["width"]
      142 SETTABLEKS                       R12 R11 K5 ["width"]
      144 GETUPVAL                         R13 7
      145 JUMPIFNOT                        R13 ; [+3]
      146 GETTABLEKS                       R12 R0 K27 ["isContentFullBleed"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R12
      150 SETTABLEKS                       R12 R11 K27 ["isContentFullBleed"]
      152 GETUPVAL                         R13 8
      153 JUMPIF                           R13 ; [+2]
      154 GETUPVAL                         R13 7
      155 JUMPIFNOT                        R13 ; [+3]
      156 GETTABLEKS                       R12 R0 K28 ["tertiaryActionVariant"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R12
      160 SETTABLEKS                       R12 R11 K28 ["tertiaryActionVariant"]
      162 SETTABLEKS                       R4 R11 K29 ["onAbsoluteSizeChanged"]
      164 GETTABLEKS                       R12 R0 K31 ["children"]
      166 CALL                             R9 3 1
      167 SETTABLEKS                       R9 R8 K17 ["DialogView"]
      169 CALL                             R5 3 -1
      170 CLOSEUPVALS                      R3
      171 RETURN                           R5 -1

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
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K16 ["SharedFlags"]
       76 GETTABLEKS                       R12 R12 K19 ["getFFlagStudioDialogManagerTertiaryButtonVariant"]
       78 CALL                             R11 1 1
       79 CALL                             R11 0 1
       80 GETTABLEKS                       R12 R5 K20 ["createElement"]
       82 DUPCLOSURE                       R13 K21 [PROTO_4]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 GETTABLEKS                       R14 R5 K22 ["memo"]
       94 MOVE                             R15 R13
       95 CALL                             R14 1 -1
       96 RETURN                           R14 -1
