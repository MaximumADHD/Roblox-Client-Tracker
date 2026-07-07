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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K1 ["width"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 2
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R6 0 1
       23 MOVE                             R7 R3
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 3
       28 GETUPVAL                         R6 4
       29 DUPTABLE                         R7 K6 [{"uri", "getSize", "onClose"}]
       30 GETTABLEKS                       R8 R0 K3 ["uri"]
       32 SETTABLEKS                       R8 R7 K3 ["uri"]
       34 SETTABLEKS                       R2 R7 K4 ["getSize"]
       36 GETTABLEKS                       R9 R1 K7 ["escapeAction"]
       38 JUMPIFNOT                        R9 ; [+5]
       39 GETTABLEKS                       R8 R1 K7 ["escapeAction"]
       41 GETTABLEKS                       R8 R8 K5 ["onClose"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K5 ["onClose"]
       47 DUPTABLE                         R8 K9 [{"DialogView"}]
       48 GETUPVAL                         R9 3
       49 GETUPVAL                         R10 5
       50 DUPTABLE                         R11 K19 [{"type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "width", "onAbsoluteSizeChanged"}]
       51 GETTABLEKS                       R12 R0 K10 ["type"]
       53 SETTABLEKS                       R12 R11 K10 ["type"]
       55 GETTABLEKS                       R12 R0 K11 ["title"]
       57 SETTABLEKS                       R12 R11 K11 ["title"]
       59 GETTABLEKS                       R12 R0 K12 ["description"]
       61 SETTABLEKS                       R12 R11 K12 ["description"]
       63 GETTABLEKS                       R12 R0 K13 ["image"]
       65 SETTABLEKS                       R12 R11 K13 ["image"]
       67 GETTABLEKS                       R12 R0 K14 ["showIndeterminateProgressIndicator"]
       69 SETTABLEKS                       R12 R11 K14 ["showIndeterminateProgressIndicator"]
       71 GETTABLEKS                       R12 R1 K15 ["primaryAction"]
       73 SETTABLEKS                       R12 R11 K15 ["primaryAction"]
       75 GETTABLEKS                       R12 R1 K16 ["secondaryAction"]
       77 SETTABLEKS                       R12 R11 K16 ["secondaryAction"]
       79 GETTABLEKS                       R12 R1 K17 ["tertiaryAction"]
       81 SETTABLEKS                       R12 R11 K17 ["tertiaryAction"]
       83 GETTABLEKS                       R12 R0 K1 ["width"]
       85 SETTABLEKS                       R12 R11 K1 ["width"]
       87 SETTABLEKS                       R4 R11 K18 ["onAbsoluteSizeChanged"]
       89 GETTABLEKS                       R12 R0 K20 ["children"]
       91 CALL                             R9 3 1
       92 SETTABLEKS                       R9 R8 K8 ["DialogView"]
       94 CALL                             R5 3 -1
       95 RETURN                           R5 -1

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
       56 GETTABLEKS                       R9 R5 K16 ["createElement"]
       58 DUPCLOSURE                       R10 K17 [PROTO_2]
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 GETTABLEKS                       R11 R5 K18 ["memo"]
       67 MOVE                             R12 R10
       68 CALL                             R11 1 -1
       69 RETURN                           R11 -1
