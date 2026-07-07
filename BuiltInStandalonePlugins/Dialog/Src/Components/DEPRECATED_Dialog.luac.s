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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Dialog should not be used when StudioDialogManagerCustomDialogs feature is disabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["SharedFlags"]
       11 GETTABLEKS                       R3 R3 K4 ["getFFlagStudioFoundationDialogComponent"]
       13 CALL                             R3 0 1
       14 NOT                              R2 R3
       15 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       17 LOADK                            R3 K5 ["This version of the Dialog component is deprecated. Use the version from StudioFoundation"]
       18 GETIMPORT                        R1 K2 [assert]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R2 2
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETUPVAL                         R1 3
       25 MOVE                             R2 R0
       26 CALL                             R1 1 1
       27 JUMP                             ; [+1]
       28 MOVE                             R1 R0
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R4 0 1
       37 GETTABLEKS                       R5 R0 K7 ["width"]
       39 SETLIST                          R4 R5 1 [1]
       41 CALL                             R2 2 2
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       45 NEWCLOSURE                       R5 P1
       46 CAPTURE                          VAL R3
       47 NEWTABLE                         R6 0 1
       49 MOVE                             R7 R3
       50 SETLIST                          R6 R7 1 [1]
       52 CALL                             R4 2 1
       53 GETUPVAL                         R5 6
       54 GETUPVAL                         R6 7
       55 DUPTABLE                         R7 K12 [{"uri", "getSize", "onClose"}]
       56 GETTABLEKS                       R8 R0 K9 ["uri"]
       58 SETTABLEKS                       R8 R7 K9 ["uri"]
       60 SETTABLEKS                       R2 R7 K10 ["getSize"]
       62 GETUPVAL                         R9 8
       63 JUMPIFNOT                        R9 ; [+8]
       64 GETTABLEKS                       R9 R1 K13 ["escapeAction"]
       66 JUMPIFNOT                        R9 ; [+5]
       67 GETTABLEKS                       R8 R1 K13 ["escapeAction"]
       69 GETTABLEKS                       R8 R8 K11 ["onClose"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R8
       73 SETTABLEKS                       R8 R7 K11 ["onClose"]
       75 DUPTABLE                         R8 K15 [{"DialogView"}]
       76 GETUPVAL                         R9 6
       77 GETUPVAL                         R10 9
       78 DUPTABLE                         R11 K25 [{"type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "width", "onAbsoluteSizeChanged"}]
       79 GETTABLEKS                       R12 R0 K16 ["type"]
       81 SETTABLEKS                       R12 R11 K16 ["type"]
       83 GETTABLEKS                       R12 R0 K17 ["title"]
       85 SETTABLEKS                       R12 R11 K17 ["title"]
       87 GETTABLEKS                       R12 R0 K18 ["description"]
       89 SETTABLEKS                       R12 R11 K18 ["description"]
       91 GETTABLEKS                       R12 R0 K19 ["image"]
       93 SETTABLEKS                       R12 R11 K19 ["image"]
       95 GETTABLEKS                       R12 R0 K20 ["showIndeterminateProgressIndicator"]
       97 SETTABLEKS                       R12 R11 K20 ["showIndeterminateProgressIndicator"]
       99 GETTABLEKS                       R12 R1 K21 ["primaryAction"]
      101 SETTABLEKS                       R12 R11 K21 ["primaryAction"]
      103 GETTABLEKS                       R12 R1 K22 ["secondaryAction"]
      105 SETTABLEKS                       R12 R11 K22 ["secondaryAction"]
      107 GETTABLEKS                       R12 R1 K23 ["tertiaryAction"]
      109 SETTABLEKS                       R12 R11 K23 ["tertiaryAction"]
      111 GETTABLEKS                       R12 R0 K7 ["width"]
      113 SETTABLEKS                       R12 R11 K7 ["width"]
      115 SETTABLEKS                       R4 R11 K24 ["onAbsoluteSizeChanged"]
      117 GETTABLEKS                       R12 R0 K26 ["children"]
      119 CALL                             R9 3 1
      120 SETTABLEKS                       R9 R8 K14 ["DialogView"]
      122 CALL                             R5 3 -1
      123 RETURN                           R5 -1

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
       64 GETTABLEKS                       R9 R9 K16 ["Flags"]
       66 GETTABLEKS                       R9 R9 K17 ["getFFlagStudioDialogTelemetry"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Src"]
       73 GETTABLEKS                       R10 R10 K16 ["Flags"]
       75 GETTABLEKS                       R10 R10 K18 ["getFeatureStudioDialogManagerCustomDialogs"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Src"]
       82 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       84 GETTABLEKS                       R11 R11 K20 ["DEPRECATED_useDialogTelemetry"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K6 ["Src"]
       91 GETTABLEKS                       R12 R12 K16 ["Flags"]
       93 GETTABLEKS                       R12 R12 K21 ["getFFlagDialogManagerAddEscapeTitleButton"]
       95 CALL                             R11 1 1
       96 CALL                             R11 0 1
       97 GETTABLEKS                       R12 R4 K22 ["createElement"]
       99 DUPCLOSURE                       R13 K23 [PROTO_2]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R2
      110 GETTABLEKS                       R14 R4 K24 ["memo"]
      112 MOVE                             R15 R13
      113 CALL                             R14 1 -1
      114 RETURN                           R14 -1
