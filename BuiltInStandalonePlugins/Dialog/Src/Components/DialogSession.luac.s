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
       48 GETUPVAL                         R7 2
       49 CALL                             R7 0 1
       50 JUMPIFNOT                        R7 ; [+25]
       51 GETUPVAL                         R7 3
       52 GETUPVAL                         R8 4
       53 DUPTABLE                         R9 K17 [{"uri", "type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "onUserInteracted"}]
       54 GETTABLEKS                       R10 R0 K10 ["uri"]
       56 SETTABLEKS                       R10 R9 K10 ["uri"]
       58 SETTABLEKS                       R1 R9 K11 ["type"]
       60 SETTABLEKS                       R2 R9 K12 ["title"]
       62 SETTABLEKS                       R3 R9 K13 ["description"]
       64 SETTABLEKS                       R4 R9 K14 ["primaryAction"]
       66 SETTABLEKS                       R5 R9 K15 ["secondaryAction"]
       68 SETTABLEKS                       R6 R9 K16 ["tertiaryAction"]
       70 GETTABLEKS                       R10 R0 K7 ["onUserInteracted"]
       72 SETTABLEKS                       R10 R9 K7 ["onUserInteracted"]
       74 CALL                             R7 2 -1
       75 RETURN                           R7 -1
       76 GETUPVAL                         R8 5
       77 GETTABLEKS                       R7 R8 K18 ["useMemo"]
       79 DUPCLOSURE                       R8 K19 [PROTO_2]
       80 CAPTURE                          UPVAL U6
       81 NEWTABLE                         R9 0 0
       83 CALL                             R7 2 2
       84 GETUPVAL                         R10 5
       85 GETTABLEKS                       R9 R10 K20 ["useCallback"]
       87 NEWCLOSURE                       R10 P1
       88 CAPTURE                          VAL R8
       89 NEWTABLE                         R11 0 1
       91 MOVE                             R12 R8
       92 SETLIST                          R11 R12 1 [1]
       94 CALL                             R9 2 1
       95 GETUPVAL                         R10 3
       96 GETUPVAL                         R11 7
       97 DUPTABLE                         R12 K22 [{"uri", "getSize"}]
       98 GETTABLEKS                       R13 R0 K10 ["uri"]
      100 SETTABLEKS                       R13 R12 K10 ["uri"]
      102 SETTABLEKS                       R7 R12 K21 ["getSize"]
      104 DUPTABLE                         R13 K24 [{"DialogView"}]
      105 GETUPVAL                         R14 3
      106 GETUPVAL                         R15 8
      107 DUPTABLE                         R16 K26 [{"type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "onAbsoluteSizeChanged"}]
      108 SETTABLEKS                       R1 R16 K11 ["type"]
      110 SETTABLEKS                       R2 R16 K12 ["title"]
      112 SETTABLEKS                       R3 R16 K13 ["description"]
      114 SETTABLEKS                       R4 R16 K14 ["primaryAction"]
      116 SETTABLEKS                       R5 R16 K15 ["secondaryAction"]
      118 SETTABLEKS                       R6 R16 K16 ["tertiaryAction"]
      120 SETTABLEKS                       R9 R16 K25 ["onAbsoluteSizeChanged"]
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K23 ["DialogView"]
      125 CALL                             R10 3 1
      126 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K2 ["Dialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Components"]
       22 GETTABLEKS                       R3 R4 K8 ["DialogPanel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Components"]
       31 GETTABLEKS                       R4 R5 K9 ["DialogView"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Packages"]
       38 GETTABLEKS                       R5 R6 K11 ["React"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Packages"]
       45 GETTABLEKS                       R6 R7 K12 ["Signals"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Packages"]
       52 GETTABLEKS                       R7 R8 K13 ["SignalsReact"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K10 ["Packages"]
       59 GETTABLEKS                       R8 R9 K14 ["StudioFoundation"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R10 R0 K6 ["Src"]
       66 GETTABLEKS                       R9 R10 K15 ["Types"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K6 ["Src"]
       73 GETTABLEKS                       R11 R12 K16 ["Util"]
       75 GETTABLEKS                       R10 R11 K17 ["createDialogSignals"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R13 R0 K6 ["Src"]
       82 GETTABLEKS                       R12 R13 K18 ["Flags"]
       84 GETTABLEKS                       R11 R12 K19 ["getFeatureStudioDialogManagerBespokeDialogs"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R12 R7 K16 ["Util"]
       89 GETTABLEKS                       R11 R12 K20 ["StudioUri"]
       91 GETTABLEKS                       R12 R4 K21 ["createElement"]
       93 DUPCLOSURE                       R13 K22 [PROTO_1]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R11
       97 DUPCLOSURE                       R14 K23 [PROTO_4]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 GETTABLEKS                       R15 R4 K24 ["memo"]
      109 MOVE                             R16 R14
      110 CALL                             R15 1 -1
      111 RETURN                           R15 -1
