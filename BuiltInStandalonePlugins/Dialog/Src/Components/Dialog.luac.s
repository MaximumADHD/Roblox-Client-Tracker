PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 LOADN                            R2 94
        6 LOADN                            R3 102
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Dialog should not be used when StudioDialogManagerBespokeDialogs feature is disabled"]
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
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R2 R3 K3 ["useMemo"]
       19 DUPCLOSURE                       R3 K4 [PROTO_0]
       20 CAPTURE                          UPVAL U4
       21 NEWTABLE                         R4 0 0
       23 CALL                             R2 2 2
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R4 R5 K5 ["useCallback"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 1
       31 MOVE                             R7 R3
       32 SETLIST                          R6 R7 1 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 5
       36 GETUPVAL                         R6 6
       37 DUPTABLE                         R7 K8 [{"uri", "getSize"}]
       38 GETTABLEKS                       R8 R0 K6 ["uri"]
       40 SETTABLEKS                       R8 R7 K6 ["uri"]
       42 SETTABLEKS                       R2 R7 K7 ["getSize"]
       44 DUPTABLE                         R8 K10 [{"DialogView"}]
       45 GETUPVAL                         R9 5
       46 GETUPVAL                         R10 7
       47 DUPTABLE                         R11 K18 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "onAbsoluteSizeChanged"}]
       48 GETTABLEKS                       R12 R0 K11 ["type"]
       50 SETTABLEKS                       R12 R11 K11 ["type"]
       52 GETTABLEKS                       R12 R0 K12 ["title"]
       54 SETTABLEKS                       R12 R11 K12 ["title"]
       56 GETTABLEKS                       R12 R0 K13 ["description"]
       58 SETTABLEKS                       R12 R11 K13 ["description"]
       60 GETTABLEKS                       R12 R1 K14 ["primaryAction"]
       62 SETTABLEKS                       R12 R11 K14 ["primaryAction"]
       64 GETTABLEKS                       R12 R1 K15 ["secondaryAction"]
       66 SETTABLEKS                       R12 R11 K15 ["secondaryAction"]
       68 GETTABLEKS                       R12 R1 K16 ["tertiaryAction"]
       70 SETTABLEKS                       R12 R11 K16 ["tertiaryAction"]
       72 SETTABLEKS                       R4 R11 K17 ["onAbsoluteSizeChanged"]
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K9 ["DialogView"]
       77 CALL                             R5 3 -1
       78 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["DialogPanel"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["DialogView"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R6 K12 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Packages"]
       43 GETTABLEKS                       R6 R7 K13 ["Signals"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R8 K14 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R9 R10 K15 ["Flags"]
       59 GETTABLEKS                       R8 R9 K16 ["getFFlagStudioDialogTelemetry"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K6 ["Src"]
       66 GETTABLEKS                       R10 R11 K15 ["Flags"]
       68 GETTABLEKS                       R9 R10 K17 ["getFeatureStudioDialogManagerBespokeDialogs"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R12 R0 K6 ["Src"]
       75 GETTABLEKS                       R11 R12 K18 ["Hooks"]
       77 GETTABLEKS                       R10 R11 K19 ["useDialogTelemetry"]
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
