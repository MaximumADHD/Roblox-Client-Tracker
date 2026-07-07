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
       21 GETUPVAL                         R3 2
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K11 ["Disabled"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R1 K5 ["disabled"]
       30 GETUPVAL                         R2 3
       31 SETTABLEKS                       R2 R1 K6 ["onActivated"]
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1

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
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 2
       15 MOVE                             R6 R2
       16 MOVE                             R7 R1
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 LOADN                            R2 350
        6 LOADN                            R3 102
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
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
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 GETUPVAL                         R6 1
       27 JUMPIFNOT                        R6 ; [+18]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K3 ["useSignalBinding"]
       31 GETTABLEKS                       R7 R0 K1 ["signals"]
       33 GETTABLEKS                       R7 R7 K6 ["getImageUri"]
       35 CALL                             R6 1 1
       36 MOVE                             R4 R6
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K0 ["useSignalState"]
       40 GETTABLEKS                       R7 R0 K1 ["signals"]
       42 GETTABLEKS                       R7 R7 K7 ["getShowIndeterminateProgressIndicator"]
       44 CALL                             R6 1 1
       45 MOVE                             R5 R6
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R7 R0 K1 ["signals"]
       49 GETTABLEKS                       R7 R7 K8 ["getPrimaryButton"]
       51 GETTABLEKS                       R8 R0 K9 ["onUserInteracted"]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R8 R0 K1 ["signals"]
       57 GETTABLEKS                       R8 R8 K10 ["getSecondaryButton"]
       59 GETTABLEKS                       R9 R0 K9 ["onUserInteracted"]
       61 CALL                             R7 2 1
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R9 R0 K1 ["signals"]
       65 GETTABLEKS                       R9 R9 K11 ["getTertiaryButton"]
       67 GETTABLEKS                       R10 R0 K9 ["onUserInteracted"]
       69 CALL                             R8 2 1
       70 LOADNIL                          R9
       71 GETUPVAL                         R10 3
       72 JUMPIFNOT                        R10 ; [+9]
       73 GETUPVAL                         R10 0
       74 GETTABLEKS                       R10 R10 K0 ["useSignalState"]
       76 GETTABLEKS                       R11 R0 K1 ["signals"]
       78 GETTABLEKS                       R11 R11 K12 ["getEscapeButtonUri"]
       80 CALL                             R10 1 1
       81 MOVE                             R9 R10
       82 LOADNIL                          R10
       83 GETUPVAL                         R11 3
       84 JUMPIFNOT                        R11 ; [+15]
       85 GETUPVAL                         R11 4
       86 GETTABLEKS                       R11 R11 K13 ["useMemo"]
       88 NEWCLOSURE                       R12 P0
       89 CAPTURE                          REF R9
       90 CAPTURE                          VAL R0
       91 NEWTABLE                         R13 0 2
       93 MOVE                             R14 R9
       94 GETTABLEKS                       R15 R0 K9 ["onUserInteracted"]
       96 SETLIST                          R13 R14 2 [1]
       98 CALL                             R11 2 1
       99 MOVE                             R10 R11
      100 GETUPVAL                         R11 5
      101 CALL                             R11 0 1
      102 JUMPIFNOT                        R11 ; [+47]
      103 GETUPVAL                         R11 6
      104 GETUPVAL                         R12 7
      105 DUPTABLE                         R13 K24 [{"uri", "type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "escapeAction", "onUserInteracted"}]
      106 GETTABLEKS                       R14 R0 K14 ["uri"]
      108 SETTABLEKS                       R14 R13 K14 ["uri"]
      110 SETTABLEKS                       R1 R13 K15 ["type"]
      112 SETTABLEKS                       R2 R13 K16 ["title"]
      114 SETTABLEKS                       R3 R13 K17 ["description"]
      116 GETUPVAL                         R15 1
      117 JUMPIFNOT                        R15 ; [+2]
      118 MOVE                             R14 R4
      119 JUMP                             ; [+1]
      120 LOADNIL                          R14
      121 SETTABLEKS                       R14 R13 K18 ["image"]
      123 GETUPVAL                         R15 1
      124 JUMPIFNOT                        R15 ; [+2]
      125 MOVE                             R14 R5
      126 JUMP                             ; [+1]
      127 LOADNIL                          R14
      128 SETTABLEKS                       R14 R13 K19 ["showIndeterminateProgressIndicator"]
      130 SETTABLEKS                       R6 R13 K20 ["primaryAction"]
      132 SETTABLEKS                       R7 R13 K21 ["secondaryAction"]
      134 SETTABLEKS                       R8 R13 K22 ["tertiaryAction"]
      136 GETUPVAL                         R15 3
      137 JUMPIFNOT                        R15 ; [+2]
      138 MOVE                             R14 R10
      139 JUMP                             ; [+1]
      140 LOADNIL                          R14
      141 SETTABLEKS                       R14 R13 K23 ["escapeAction"]
      143 GETTABLEKS                       R14 R0 K9 ["onUserInteracted"]
      145 SETTABLEKS                       R14 R13 K9 ["onUserInteracted"]
      147 CALL                             R11 2 -1
      148 CLOSEUPVALS                      R9
      149 RETURN                           R11 -1
      150 GETUPVAL                         R11 4
      151 GETTABLEKS                       R11 R11 K13 ["useMemo"]
      153 DUPCLOSURE                       R12 K25 [PROTO_4]
      154 CAPTURE                          UPVAL U8
      155 NEWTABLE                         R13 0 0
      157 CALL                             R11 2 2
      158 GETUPVAL                         R13 4
      159 GETTABLEKS                       R13 R13 K26 ["useCallback"]
      161 NEWCLOSURE                       R14 P2
      162 CAPTURE                          VAL R12
      163 NEWTABLE                         R15 0 1
      165 MOVE                             R16 R12
      166 SETLIST                          R15 R16 1 [1]
      168 CALL                             R13 2 1
      169 GETUPVAL                         R14 6
      170 GETUPVAL                         R15 9
      171 DUPTABLE                         R16 K29 [{"uri", "getSize", "onClose"}]
      172 GETTABLEKS                       R17 R0 K14 ["uri"]
      174 SETTABLEKS                       R17 R16 K14 ["uri"]
      176 SETTABLEKS                       R11 R16 K27 ["getSize"]
      178 GETUPVAL                         R18 3
      179 JUMPIFNOT                        R18 ; [+4]
      180 JUMPIFNOT                        R10 ; [+3]
      181 GETTABLEKS                       R17 R10 K28 ["onClose"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R17
      185 SETTABLEKS                       R17 R16 K28 ["onClose"]
      187 DUPTABLE                         R17 K31 [{"DialogView"}]
      188 GETUPVAL                         R18 6
      189 GETUPVAL                         R19 10
      190 DUPTABLE                         R20 K33 [{"type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "onAbsoluteSizeChanged"}]
      191 SETTABLEKS                       R1 R20 K15 ["type"]
      193 SETTABLEKS                       R2 R20 K16 ["title"]
      195 SETTABLEKS                       R3 R20 K17 ["description"]
      197 GETUPVAL                         R22 1
      198 JUMPIFNOT                        R22 ; [+2]
      199 MOVE                             R21 R4
      200 JUMP                             ; [+1]
      201 LOADNIL                          R21
      202 SETTABLEKS                       R21 R20 K18 ["image"]
      204 GETUPVAL                         R22 1
      205 JUMPIFNOT                        R22 ; [+2]
      206 MOVE                             R21 R5
      207 JUMP                             ; [+1]
      208 LOADNIL                          R21
      209 SETTABLEKS                       R21 R20 K19 ["showIndeterminateProgressIndicator"]
      211 SETTABLEKS                       R6 R20 K20 ["primaryAction"]
      213 SETTABLEKS                       R7 R20 K21 ["secondaryAction"]
      215 SETTABLEKS                       R8 R20 K22 ["tertiaryAction"]
      217 SETTABLEKS                       R13 R20 K32 ["onAbsoluteSizeChanged"]
      219 CALL                             R18 2 1
      220 SETTABLEKS                       R18 R17 K30 ["DialogView"]
      222 CALL                             R14 3 1
      223 CLOSEUPVALS                      R9
      224 RETURN                           R14 1

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
       29 GETTABLEKS                       R4 R4 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["Signals"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["SignalsReact"]
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
       64 GETTABLEKS                       R9 R9 K16 ["Util"]
       66 GETTABLEKS                       R9 R9 K17 ["createDialogSignals"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Src"]
       73 GETTABLEKS                       R10 R10 K18 ["Flags"]
       75 GETTABLEKS                       R10 R10 K19 ["getFFlagDialogManagerAddEscapeTitleButton"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Src"]
       82 GETTABLEKS                       R11 R11 K18 ["Flags"]
       84 GETTABLEKS                       R11 R11 K20 ["getFFlagDialogManagerUpdateSemantics"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K6 ["Src"]
       91 GETTABLEKS                       R12 R12 K18 ["Flags"]
       93 GETTABLEKS                       R12 R12 K21 ["getFeatureStudioDialogManagerCustomDialogs"]
       95 CALL                             R11 1 1
       96 GETTABLEKS                       R13 R6 K22 ["SharedFlags"]
       98 GETTABLEKS                       R13 R13 K23 ["getFFlagStudioFoundationDialogComponent"]
      100 CALL                             R13 0 1
      101 JUMPIFNOT                        R13 ; [+5]
      102 GETTABLEKS                       R12 R6 K7 ["Components"]
      104 GETTABLEKS                       R12 R12 K2 ["Dialog"]
      106 JUMP                             ; [+9]
      107 GETIMPORT                        R12 K5 [require]
      109 GETTABLEKS                       R13 R0 K6 ["Src"]
      111 GETTABLEKS                       R13 R13 K7 ["Components"]
      113 GETTABLEKS                       R13 R13 K24 ["DEPRECATED_Dialog"]
      115 CALL                             R12 1 1
      116 MOVE                             R13 R10
      117 CALL                             R13 0 1
      118 MOVE                             R14 R9
      119 CALL                             R14 0 1
      120 GETTABLEKS                       R15 R6 K16 ["Util"]
      122 GETTABLEKS                       R15 R15 K25 ["StudioUri"]
      124 GETTABLEKS                       R16 R3 K26 ["createElement"]
      126 DUPCLOSURE                       R17 K27 [PROTO_1]
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R13
      131 DUPCLOSURE                       R18 K28 [PROTO_6]
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R2
      143 GETTABLEKS                       R19 R3 K29 ["memo"]
      145 MOVE                             R20 R18
      146 CALL                             R19 1 -1
      147 RETURN                           R19 -1
