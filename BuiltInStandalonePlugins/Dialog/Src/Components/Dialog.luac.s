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
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R1 2
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 JUMP                             ; [+1]
       15 MOVE                             R1 R0
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R4 0 1
       24 GETTABLEKS                       R5 R0 K4 ["width"]
       26 SETLIST                          R4 R5 1 [1]
       28 CALL                             R2 2 2
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R6 0 1
       36 MOVE                             R7 R3
       37 SETLIST                          R6 R7 1 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 5
       41 GETUPVAL                         R6 6
       42 DUPTABLE                         R7 K8 [{"uri", "getSize"}]
       43 GETTABLEKS                       R8 R0 K6 ["uri"]
       45 SETTABLEKS                       R8 R7 K6 ["uri"]
       47 SETTABLEKS                       R2 R7 K7 ["getSize"]
       49 DUPTABLE                         R8 K10 [{"DialogView"}]
       50 GETUPVAL                         R9 5
       51 GETUPVAL                         R10 7
       52 DUPTABLE                         R11 K20 [{"type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "width", "onAbsoluteSizeChanged"}]
       53 GETTABLEKS                       R12 R0 K11 ["type"]
       55 SETTABLEKS                       R12 R11 K11 ["type"]
       57 GETTABLEKS                       R12 R0 K12 ["title"]
       59 SETTABLEKS                       R12 R11 K12 ["title"]
       61 GETTABLEKS                       R12 R0 K13 ["description"]
       63 SETTABLEKS                       R12 R11 K13 ["description"]
       65 GETTABLEKS                       R12 R0 K14 ["image"]
       67 SETTABLEKS                       R12 R11 K14 ["image"]
       69 GETTABLEKS                       R12 R0 K15 ["showIndeterminateProgressIndicator"]
       71 SETTABLEKS                       R12 R11 K15 ["showIndeterminateProgressIndicator"]
       73 GETTABLEKS                       R12 R1 K16 ["primaryAction"]
       75 SETTABLEKS                       R12 R11 K16 ["primaryAction"]
       77 GETTABLEKS                       R12 R1 K17 ["secondaryAction"]
       79 SETTABLEKS                       R12 R11 K17 ["secondaryAction"]
       81 GETTABLEKS                       R12 R1 K18 ["tertiaryAction"]
       83 SETTABLEKS                       R12 R11 K18 ["tertiaryAction"]
       85 GETTABLEKS                       R12 R0 K4 ["width"]
       87 SETTABLEKS                       R12 R11 K4 ["width"]
       89 SETTABLEKS                       R4 R11 K19 ["onAbsoluteSizeChanged"]
       91 GETTABLEKS                       R12 R0 K21 ["children"]
       93 CALL                             R9 3 1
       94 SETTABLEKS                       R9 R8 K9 ["DialogView"]
       96 CALL                             R5 3 -1
       97 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["DialogPanel"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["DialogView"]
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
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Flags"]
       59 GETTABLEKS                       R8 R8 K16 ["getFFlagStudioDialogTelemetry"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Src"]
       66 GETTABLEKS                       R9 R9 K15 ["Flags"]
       68 GETTABLEKS                       R9 R9 K17 ["getFeatureStudioDialogManagerCustomDialogs"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       77 GETTABLEKS                       R10 R10 K19 ["useDialogTelemetry"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R4 K20 ["createElement"]
       82 DUPCLOSURE                       R11 K21 [PROTO_2]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R2
       91 GETTABLEKS                       R12 R4 K22 ["memo"]
       93 MOVE                             R13 R11
       94 CALL                             R12 1 -1
       95 RETURN                           R12 -1
