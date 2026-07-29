PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETIMPORT                        R0 K2 [table.freeze]
        6 DUPTABLE                         R1 K7 [{"uri", "text", "disabled", "onActivated"}]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K8 ["wrap"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K9 ["Uri"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["uri"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K10 ["Text"]
       19 SETTABLEKS                       R2 R1 K4 ["text"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K11 ["Disabled"]
       24 SETTABLEKS                       R2 R1 K5 ["disabled"]
       26 GETUPVAL                         R2 2
       27 SETTABLEKS                       R2 R1 K6 ["onActivated"]
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useSignalState"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["useMemo"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onUserInteracted"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETIMPORT                        R0 K2 [table.freeze]
        6 DUPTABLE                         R1 K5 [{"uri", "onClose"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K3 ["uri"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R2 R1 K4 ["onClose"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["signals"]
        5 GETTABLEKS                       R2 R2 K2 ["getType"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["useSignalBinding"]
       11 GETTABLEKS                       R3 R0 K1 ["signals"]
       13 GETTABLEKS                       R3 R3 K4 ["getTitle"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useSignalBinding"]
       19 GETTABLEKS                       R4 R0 K1 ["signals"]
       21 GETTABLEKS                       R4 R4 K5 ["getDescription"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K3 ["useSignalBinding"]
       27 GETTABLEKS                       R5 R0 K1 ["signals"]
       29 GETTABLEKS                       R5 R5 K6 ["getImageUri"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["useSignalState"]
       35 GETTABLEKS                       R6 R0 K1 ["signals"]
       37 GETTABLEKS                       R6 R6 K7 ["getShowIndeterminateProgressIndicator"]
       39 CALL                             R5 1 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R7 R0 K1 ["signals"]
       43 GETTABLEKS                       R7 R7 K8 ["getPrimaryButton"]
       45 GETTABLEKS                       R8 R0 K9 ["onUserInteracted"]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R8 R0 K1 ["signals"]
       51 GETTABLEKS                       R8 R8 K10 ["getSecondaryButton"]
       53 GETTABLEKS                       R9 R0 K9 ["onUserInteracted"]
       55 CALL                             R7 2 1
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R9 R0 K1 ["signals"]
       59 GETTABLEKS                       R9 R9 K11 ["getTertiaryButton"]
       61 GETTABLEKS                       R10 R0 K9 ["onUserInteracted"]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K0 ["useSignalState"]
       67 GETTABLEKS                       R10 R0 K1 ["signals"]
       69 GETTABLEKS                       R10 R10 K12 ["getEscapeButtonUri"]
       71 CALL                             R9 1 1
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R10 R10 K13 ["useMemo"]
       75 NEWCLOSURE                       R11 P0
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R0
       78 NEWTABLE                         R12 0 2
       80 MOVE                             R13 R9
       81 GETTABLEKS                       R14 R0 K9 ["onUserInteracted"]
       83 SETLIST                          R12 R13 2 [1]
       85 CALL                             R10 2 1
       86 GETUPVAL                         R11 3
       87 GETUPVAL                         R12 4
       88 DUPTABLE                         R13 K24 [{"uri", "type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "escapeAction", "onUserInteracted"}]
       89 GETTABLEKS                       R14 R0 K14 ["uri"]
       91 SETTABLEKS                       R14 R13 K14 ["uri"]
       93 SETTABLEKS                       R1 R13 K15 ["type"]
       95 SETTABLEKS                       R2 R13 K16 ["title"]
       97 SETTABLEKS                       R3 R13 K17 ["description"]
       99 SETTABLEKS                       R4 R13 K18 ["image"]
      101 SETTABLEKS                       R5 R13 K19 ["showIndeterminateProgressIndicator"]
      103 SETTABLEKS                       R6 R13 K20 ["primaryAction"]
      105 SETTABLEKS                       R7 R13 K21 ["secondaryAction"]
      107 SETTABLEKS                       R8 R13 K22 ["tertiaryAction"]
      109 SETTABLEKS                       R10 R13 K23 ["escapeAction"]
      111 GETTABLEKS                       R14 R0 K9 ["onUserInteracted"]
      113 SETTABLEKS                       R14 R13 K9 ["onUserInteracted"]
      115 CALL                             R11 2 -1
      116 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["SignalsReact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Util"]
       48 GETTABLEKS                       R7 R7 K14 ["createDialogSignals"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R8 R4 K15 ["SharedFlags"]
       53 GETTABLEKS                       R8 R8 K16 ["getFFlagStudioFoundationDialogComponent"]
       55 CALL                             R8 0 1
       56 JUMPIFNOT                        R8 ; [+5]
       57 GETTABLEKS                       R7 R4 K17 ["Components"]
       59 GETTABLEKS                       R7 R7 K2 ["Dialog"]
       61 JUMP                             ; [+9]
       62 GETIMPORT                        R7 K5 [require]
       64 GETTABLEKS                       R8 R0 K11 ["Src"]
       66 GETTABLEKS                       R8 R8 K17 ["Components"]
       68 GETTABLEKS                       R8 R8 K18 ["DEPRECATED_Dialog"]
       70 CALL                             R7 1 1
       71 GETTABLEKS                       R8 R4 K13 ["Util"]
       73 GETTABLEKS                       R8 R8 K19 ["StudioUri"]
       75 GETTABLEKS                       R9 R1 K20 ["createElement"]
       77 DUPCLOSURE                       R10 K21 [PROTO_1]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 DUPCLOSURE                       R11 K22 [PROTO_4]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R7
       87 GETTABLEKS                       R12 R1 K23 ["memo"]
       89 MOVE                             R13 R11
       90 CALL                             R12 1 -1
       91 RETURN                           R12 -1
