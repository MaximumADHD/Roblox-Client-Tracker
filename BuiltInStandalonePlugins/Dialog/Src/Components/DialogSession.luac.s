PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETIMPORT                        R0 K2 [table.freeze]
        6 DUPTABLE                         R1 K6 [{"uri", "text", "onActivated"}]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K7 ["wrap"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K8 ["Uri"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["uri"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K9 ["Text"]
       19 SETTABLEKS                       R2 R1 K4 ["text"]
       21 GETUPVAL                         R2 2
       22 SETTABLEKS                       R2 R1 K5 ["onActivated"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useSignalState"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R5 0 2
       14 MOVE                             R6 R2
       15 MOVE                             R7 R1
       16 SETLIST                          R5 R6 2 [1]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 LOADN                            R2 94
        6 LOADN                            R3 102
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useSignalState"]
        3 GETTABLEKS                       R3 R0 K1 ["signals"]
        5 GETTABLEKS                       R2 R3 K2 ["getType"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["useSignalBinding"]
       11 GETTABLEKS                       R4 R0 K1 ["signals"]
       13 GETTABLEKS                       R3 R4 K4 ["getTitle"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K3 ["useSignalBinding"]
       19 GETTABLEKS                       R5 R0 K1 ["signals"]
       21 GETTABLEKS                       R4 R5 K5 ["getDescription"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R6 R0 K1 ["signals"]
       27 GETTABLEKS                       R5 R6 K6 ["getPrimaryButton"]
       29 GETTABLEKS                       R6 R0 K7 ["onUserInteracted"]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R7 R0 K1 ["signals"]
       35 GETTABLEKS                       R6 R7 K8 ["getSecondaryButton"]
       37 GETTABLEKS                       R7 R0 K7 ["onUserInteracted"]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R8 R0 K1 ["signals"]
       43 GETTABLEKS                       R7 R8 K9 ["getTertiaryButton"]
       45 GETTABLEKS                       R8 R0 K7 ["onUserInteracted"]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R7 R8 K10 ["useMemo"]
       51 DUPCLOSURE                       R8 K11 [PROTO_2]
       52 CAPTURE                          UPVAL U3
       53 NEWTABLE                         R9 0 0
       55 CALL                             R7 2 2
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R9 R10 K12 ["useCallback"]
       59 NEWCLOSURE                       R10 P1
       60 CAPTURE                          VAL R8
       61 NEWTABLE                         R11 0 1
       63 MOVE                             R12 R8
       64 SETLIST                          R11 R12 1 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R10 4
       68 GETUPVAL                         R11 5
       69 DUPTABLE                         R12 K15 [{"uri", "getSize"}]
       70 GETTABLEKS                       R13 R0 K13 ["uri"]
       72 SETTABLEKS                       R13 R12 K13 ["uri"]
       74 SETTABLEKS                       R7 R12 K14 ["getSize"]
       76 DUPTABLE                         R13 K17 [{"DialogView"}]
       77 GETUPVAL                         R14 4
       78 GETUPVAL                         R15 6
       79 DUPTABLE                         R16 K25 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "onAbsoluteSizeChanged"}]
       80 SETTABLEKS                       R1 R16 K18 ["type"]
       82 SETTABLEKS                       R2 R16 K19 ["title"]
       84 SETTABLEKS                       R3 R16 K20 ["description"]
       86 SETTABLEKS                       R4 R16 K21 ["primaryAction"]
       88 SETTABLEKS                       R5 R16 K22 ["secondaryAction"]
       90 SETTABLEKS                       R6 R16 K23 ["tertiaryAction"]
       92 SETTABLEKS                       R9 R16 K24 ["onAbsoluteSizeChanged"]
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K16 ["DialogView"]
       97 CALL                             R10 3 -1
       98 RETURN                           R10 -1

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
       29 GETTABLEKS                       R4 R5 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R6 K12 ["Signals"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Packages"]
       43 GETTABLEKS                       R6 R7 K13 ["SignalsReact"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Packages"]
       50 GETTABLEKS                       R7 R8 K14 ["StudioFoundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R9 K15 ["Types"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K6 ["Src"]
       64 GETTABLEKS                       R10 R11 K16 ["Util"]
       66 GETTABLEKS                       R9 R10 K17 ["createDialogSignals"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R10 R6 K16 ["Util"]
       71 GETTABLEKS                       R9 R10 K18 ["StudioUri"]
       73 GETTABLEKS                       R10 R3 K19 ["createElement"]
       75 DUPCLOSURE                       R11 K20 [PROTO_1]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R9
       79 DUPCLOSURE                       R12 K21 [PROTO_4]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 GETTABLEKS                       R13 R3 K22 ["memo"]
       89 MOVE                             R14 R12
       90 CALL                             R13 1 -1
       91 RETURN                           R13 -1
