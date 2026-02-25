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
       24 GETUPVAL                         R5 1
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+9]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R5 R0 K6 ["uri"]
       30 GETTABLEKS                       R6 R0 K1 ["signals"]
       32 GETTABLEKS                       R7 R0 K7 ["onUserInteracted"]
       34 CALL                             R4 3 1
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R4 R0 K7 ["onUserInteracted"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R7 R0 K1 ["signals"]
       41 GETTABLEKS                       R6 R7 K8 ["getPrimaryButton"]
       43 MOVE                             R7 R4
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R8 R0 K1 ["signals"]
       48 GETTABLEKS                       R7 R8 K9 ["getSecondaryButton"]
       50 MOVE                             R8 R4
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R9 R0 K1 ["signals"]
       55 GETTABLEKS                       R8 R9 K10 ["getTertiaryButton"]
       57 MOVE                             R9 R4
       58 CALL                             R7 2 1
       59 GETUPVAL                         R9 4
       60 GETTABLEKS                       R8 R9 K11 ["useMemo"]
       62 DUPCLOSURE                       R9 K12 [PROTO_2]
       63 CAPTURE                          UPVAL U5
       64 NEWTABLE                         R10 0 0
       66 CALL                             R8 2 2
       67 GETUPVAL                         R11 4
       68 GETTABLEKS                       R10 R11 K13 ["useCallback"]
       70 NEWCLOSURE                       R11 P1
       71 CAPTURE                          VAL R9
       72 NEWTABLE                         R12 0 1
       74 MOVE                             R13 R9
       75 SETLIST                          R12 R13 1 [1]
       77 CALL                             R10 2 1
       78 GETUPVAL                         R11 6
       79 GETUPVAL                         R12 7
       80 DUPTABLE                         R13 K15 [{"uri", "getSize"}]
       81 GETTABLEKS                       R14 R0 K6 ["uri"]
       83 SETTABLEKS                       R14 R13 K6 ["uri"]
       85 SETTABLEKS                       R8 R13 K14 ["getSize"]
       87 DUPTABLE                         R14 K17 [{"DialogView"}]
       88 GETUPVAL                         R15 6
       89 GETUPVAL                         R16 8
       90 DUPTABLE                         R17 K25 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "onAbsoluteSizeChanged"}]
       91 SETTABLEKS                       R1 R17 K18 ["type"]
       93 SETTABLEKS                       R2 R17 K19 ["title"]
       95 SETTABLEKS                       R3 R17 K20 ["description"]
       97 SETTABLEKS                       R5 R17 K21 ["primaryAction"]
       99 SETTABLEKS                       R6 R17 K22 ["secondaryAction"]
      101 SETTABLEKS                       R7 R17 K23 ["tertiaryAction"]
      103 SETTABLEKS                       R10 R17 K24 ["onAbsoluteSizeChanged"]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K16 ["DialogView"]
      108 CALL                             R11 3 -1
      109 RETURN                           R11 -1

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
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K6 ["Src"]
       73 GETTABLEKS                       R11 R12 K18 ["Flags"]
       75 GETTABLEKS                       R10 R11 K19 ["getFFlagStudioDialogSessionTelemetry"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R13 R0 K6 ["Src"]
       82 GETTABLEKS                       R12 R13 K20 ["Hooks"]
       84 GETTABLEKS                       R11 R12 K21 ["useDialogSessionTelemetry"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R12 R6 K16 ["Util"]
       89 GETTABLEKS                       R11 R12 K22 ["StudioUri"]
       91 GETTABLEKS                       R12 R3 K23 ["createElement"]
       93 DUPCLOSURE                       R13 K24 [PROTO_1]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R11
       97 DUPCLOSURE                       R14 K25 [PROTO_4]
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R2
      107 GETTABLEKS                       R15 R3 K26 ["memo"]
      109 MOVE                             R16 R14
      110 CALL                             R15 1 -1
      111 RETURN                           R15 -1
