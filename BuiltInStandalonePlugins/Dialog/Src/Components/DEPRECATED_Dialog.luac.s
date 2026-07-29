PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SharedFlags"]
        3 GETTABLEKS                       R3 R3 K1 ["getFFlagStudioFoundationDialogComponent"]
        5 CALL                             R3 0 1
        6 NOT                              R2 R3
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["This version of the Dialog component is deprecated. Use the version from StudioFoundation"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K5 ["useMemo"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R4 0 1
       24 GETTABLEKS                       R5 R0 K6 ["width"]
       26 SETLIST                          R4 R5 1 [1]
       28 CALL                             R2 2 2
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K7 ["useCallback"]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R6 0 1
       36 MOVE                             R7 R3
       37 SETLIST                          R6 R7 1 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 4
       41 GETUPVAL                         R6 5
       42 DUPTABLE                         R7 K11 [{"uri", "getSize", "onClose"}]
       43 GETTABLEKS                       R8 R0 K8 ["uri"]
       45 SETTABLEKS                       R8 R7 K8 ["uri"]
       47 SETTABLEKS                       R2 R7 K9 ["getSize"]
       49 GETTABLEKS                       R9 R1 K12 ["escapeAction"]
       51 JUMPIFNOT                        R9 ; [+5]
       52 GETTABLEKS                       R8 R1 K12 ["escapeAction"]
       54 GETTABLEKS                       R8 R8 K10 ["onClose"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R8
       58 SETTABLEKS                       R8 R7 K10 ["onClose"]
       60 DUPTABLE                         R8 K14 [{"DialogView"}]
       61 GETUPVAL                         R9 4
       62 GETUPVAL                         R10 6
       63 DUPTABLE                         R11 K24 [{"type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "width", "onAbsoluteSizeChanged"}]
       64 GETTABLEKS                       R12 R0 K15 ["type"]
       66 SETTABLEKS                       R12 R11 K15 ["type"]
       68 GETTABLEKS                       R12 R0 K16 ["title"]
       70 SETTABLEKS                       R12 R11 K16 ["title"]
       72 GETTABLEKS                       R12 R0 K17 ["description"]
       74 SETTABLEKS                       R12 R11 K17 ["description"]
       76 GETTABLEKS                       R12 R0 K18 ["image"]
       78 SETTABLEKS                       R12 R11 K18 ["image"]
       80 GETTABLEKS                       R12 R0 K19 ["showIndeterminateProgressIndicator"]
       82 SETTABLEKS                       R12 R11 K19 ["showIndeterminateProgressIndicator"]
       84 GETTABLEKS                       R12 R1 K20 ["primaryAction"]
       86 SETTABLEKS                       R12 R11 K20 ["primaryAction"]
       88 GETTABLEKS                       R12 R1 K21 ["secondaryAction"]
       90 SETTABLEKS                       R12 R11 K21 ["secondaryAction"]
       92 GETTABLEKS                       R12 R1 K22 ["tertiaryAction"]
       94 SETTABLEKS                       R12 R11 K22 ["tertiaryAction"]
       96 GETTABLEKS                       R12 R0 K6 ["width"]
       98 SETTABLEKS                       R12 R11 K6 ["width"]
      100 SETTABLEKS                       R4 R11 K23 ["onAbsoluteSizeChanged"]
      102 GETTABLEKS                       R12 R0 K25 ["children"]
      104 CALL                             R9 3 1
      105 SETTABLEKS                       R9 R8 K13 ["DialogView"]
      107 CALL                             R5 3 -1
      108 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["DEPRECATED_DialogPanel"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_DialogView"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["Signals"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Packages"]
       50 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Types"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Src"]
       64 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       66 GETTABLEKS                       R9 R9 K17 ["DEPRECATED_useDialogTelemetry"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R4 K18 ["createElement"]
       71 DUPCLOSURE                       R10 K19 [PROTO_2]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 GETTABLEKS                       R11 R4 K20 ["memo"]
       81 MOVE                             R12 R10
       82 CALL                             R11 1 -1
       83 RETURN                           R11 -1
