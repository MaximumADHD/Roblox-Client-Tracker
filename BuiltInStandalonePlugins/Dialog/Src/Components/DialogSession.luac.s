PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETIMPORT                        R0 K2 [table.freeze]
        6 DUPTABLE                         R1 K7 [{"uri", "text", "disabled", "onActivated"}]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K8 ["wrap"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K9 ["Uri"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["uri"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K10 ["Text"]
       19 SETTABLEKS                       R2 R1 K4 ["text"]
       21 GETUPVAL                         R3 2
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K11 ["Disabled"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R1 K5 ["disabled"]
       30 GETUPVAL                         R2 3
       31 SETTABLEKS                       R2 R1 K6 ["onActivated"]
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1

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
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 2
       15 MOVE                             R6 R2
       16 MOVE                             R7 R1
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

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
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 GETUPVAL                         R6 1
       27 JUMPIFNOT                        R6 ; [+18]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K3 ["useSignalBinding"]
       31 GETTABLEKS                       R8 R0 K1 ["signals"]
       33 GETTABLEKS                       R7 R8 K6 ["getImageUri"]
       35 CALL                             R6 1 1
       36 MOVE                             R4 R6
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K0 ["useSignalState"]
       40 GETTABLEKS                       R8 R0 K1 ["signals"]
       42 GETTABLEKS                       R7 R8 K7 ["getShowIndeterminateProgressIndicator"]
       44 CALL                             R6 1 1
       45 MOVE                             R5 R6
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R8 R0 K1 ["signals"]
       49 GETTABLEKS                       R7 R8 K8 ["getPrimaryButton"]
       51 GETTABLEKS                       R8 R0 K9 ["onUserInteracted"]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R9 R0 K1 ["signals"]
       57 GETTABLEKS                       R8 R9 K10 ["getSecondaryButton"]
       59 GETTABLEKS                       R9 R0 K9 ["onUserInteracted"]
       61 CALL                             R7 2 1
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R10 R0 K1 ["signals"]
       65 GETTABLEKS                       R9 R10 K11 ["getTertiaryButton"]
       67 GETTABLEKS                       R10 R0 K9 ["onUserInteracted"]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R9 3
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+39]
       73 GETUPVAL                         R9 4
       74 GETUPVAL                         R10 5
       75 DUPTABLE                         R11 K21 [{"uri", "type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "onUserInteracted"}]
       76 GETTABLEKS                       R12 R0 K12 ["uri"]
       78 SETTABLEKS                       R12 R11 K12 ["uri"]
       80 SETTABLEKS                       R1 R11 K13 ["type"]
       82 SETTABLEKS                       R2 R11 K14 ["title"]
       84 SETTABLEKS                       R3 R11 K15 ["description"]
       86 GETUPVAL                         R13 1
       87 JUMPIFNOT                        R13 ; [+2]
       88 MOVE                             R12 R4
       89 JUMP                             ; [+1]
       90 LOADNIL                          R12
       91 SETTABLEKS                       R12 R11 K16 ["image"]
       93 GETUPVAL                         R13 1
       94 JUMPIFNOT                        R13 ; [+2]
       95 MOVE                             R12 R5
       96 JUMP                             ; [+1]
       97 LOADNIL                          R12
       98 SETTABLEKS                       R12 R11 K17 ["showIndeterminateProgressIndicator"]
      100 SETTABLEKS                       R6 R11 K18 ["primaryAction"]
      102 SETTABLEKS                       R7 R11 K19 ["secondaryAction"]
      104 SETTABLEKS                       R8 R11 K20 ["tertiaryAction"]
      106 GETTABLEKS                       R12 R0 K9 ["onUserInteracted"]
      108 SETTABLEKS                       R12 R11 K9 ["onUserInteracted"]
      110 CALL                             R9 2 -1
      111 RETURN                           R9 -1
      112 GETUPVAL                         R10 6
      113 GETTABLEKS                       R9 R10 K22 ["useMemo"]
      115 DUPCLOSURE                       R10 K23 [PROTO_2]
      116 CAPTURE                          UPVAL U7
      117 NEWTABLE                         R11 0 0
      119 CALL                             R9 2 2
      120 GETUPVAL                         R12 6
      121 GETTABLEKS                       R11 R12 K24 ["useCallback"]
      123 NEWCLOSURE                       R12 P1
      124 CAPTURE                          VAL R10
      125 NEWTABLE                         R13 0 1
      127 MOVE                             R14 R10
      128 SETLIST                          R13 R14 1 [1]
      130 CALL                             R11 2 1
      131 GETUPVAL                         R12 4
      132 GETUPVAL                         R13 8
      133 DUPTABLE                         R14 K26 [{"uri", "getSize"}]
      134 GETTABLEKS                       R15 R0 K12 ["uri"]
      136 SETTABLEKS                       R15 R14 K12 ["uri"]
      138 SETTABLEKS                       R9 R14 K25 ["getSize"]
      140 DUPTABLE                         R15 K28 [{"DialogView"}]
      141 GETUPVAL                         R16 4
      142 GETUPVAL                         R17 9
      143 DUPTABLE                         R18 K30 [{"type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "onAbsoluteSizeChanged"}]
      144 SETTABLEKS                       R1 R18 K13 ["type"]
      146 SETTABLEKS                       R2 R18 K14 ["title"]
      148 SETTABLEKS                       R3 R18 K15 ["description"]
      150 GETUPVAL                         R20 1
      151 JUMPIFNOT                        R20 ; [+2]
      152 MOVE                             R19 R4
      153 JUMP                             ; [+1]
      154 LOADNIL                          R19
      155 SETTABLEKS                       R19 R18 K16 ["image"]
      157 GETUPVAL                         R20 1
      158 JUMPIFNOT                        R20 ; [+2]
      159 MOVE                             R19 R5
      160 JUMP                             ; [+1]
      161 LOADNIL                          R19
      162 SETTABLEKS                       R19 R18 K17 ["showIndeterminateProgressIndicator"]
      164 SETTABLEKS                       R6 R18 K18 ["primaryAction"]
      166 SETTABLEKS                       R7 R18 K19 ["secondaryAction"]
      168 SETTABLEKS                       R8 R18 K20 ["tertiaryAction"]
      170 SETTABLEKS                       R11 R18 K29 ["onAbsoluteSizeChanged"]
      172 CALL                             R16 2 1
      173 SETTABLEKS                       R16 R15 K27 ["DialogView"]
      175 CALL                             R12 3 1
      176 RETURN                           R12 1

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
       84 GETTABLEKS                       R11 R12 K19 ["getFFlagDialogManagerUpdateSemantics"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R14 R0 K6 ["Src"]
       91 GETTABLEKS                       R13 R14 K18 ["Flags"]
       93 GETTABLEKS                       R12 R13 K20 ["getFeatureStudioDialogManagerCustomDialogs"]
       95 CALL                             R11 1 1
       96 MOVE                             R12 R10
       97 CALL                             R12 0 1
       98 GETTABLEKS                       R14 R7 K16 ["Util"]
      100 GETTABLEKS                       R13 R14 K21 ["StudioUri"]
      102 GETTABLEKS                       R14 R4 K22 ["createElement"]
      104 DUPCLOSURE                       R15 K23 [PROTO_1]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R12
      109 DUPCLOSURE                       R16 K24 [PROTO_4]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R3
      120 GETTABLEKS                       R17 R4 K25 ["memo"]
      122 MOVE                             R18 R16
      123 CALL                             R17 1 -1
      124 RETURN                           R17 -1
