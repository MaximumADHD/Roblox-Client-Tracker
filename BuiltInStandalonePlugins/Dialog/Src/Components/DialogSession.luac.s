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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onUserInteracted"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["onUserInteracted"]
       10 GETUPVAL                         R1 2
       11 LOADNIL                          R2
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_4:
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
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K4 ["onClose"]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_5:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 MOVE                             R1 R2
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["useSignalState"]
       12 GETTABLEKS                       R3 R0 K2 ["signals"]
       14 GETTABLEKS                       R3 R3 K3 ["getType"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K4 ["useSignalBinding"]
       20 GETTABLEKS                       R4 R0 K2 ["signals"]
       22 GETTABLEKS                       R4 R4 K5 ["getTitle"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K4 ["useSignalBinding"]
       28 GETTABLEKS                       R5 R0 K2 ["signals"]
       30 GETTABLEKS                       R5 R5 K6 ["getDescription"]
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K4 ["useSignalBinding"]
       36 GETTABLEKS                       R6 R0 K2 ["signals"]
       38 GETTABLEKS                       R6 R6 K7 ["getImageUri"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K1 ["useSignalState"]
       44 GETTABLEKS                       R7 R0 K2 ["signals"]
       46 GETTABLEKS                       R7 R7 K8 ["getShowIndeterminateProgressIndicator"]
       48 CALL                             R6 1 1
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 GETUPVAL                         R11 0
       54 CALL                             R11 0 1
       55 JUMPIFNOT                        R11 ; [+31]
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R11 R11 K1 ["useSignalState"]
       59 GETTABLEKS                       R12 R0 K2 ["signals"]
       61 GETTABLEKS                       R12 R12 K9 ["getSuppressible"]
       63 CALL                             R11 1 1
       64 MOVE                             R7 R11
       65 GETUPVAL                         R11 3
       66 GETTABLEKS                       R11 R11 K10 ["useState"]
       68 LOADB                            R12 0
       69 CALL                             R11 1 2
       70 MOVE                             R8 R11
       71 MOVE                             R9 R12
       72 GETUPVAL                         R11 3
       73 GETTABLEKS                       R11 R11 K11 ["useCallback"]
       75 NEWCLOSURE                       R12 P0
       76 CAPTURE                          VAL R0
       77 CAPTURE                          REF R8
       78 NEWTABLE                         R13 0 2
       80 GETTABLEKS                       R14 R0 K12 ["onUserInteracted"]
       82 MOVE                             R15 R8
       83 SETLIST                          R13 R14 2 [1]
       85 CALL                             R11 2 1
       86 MOVE                             R10 R11
       87 GETUPVAL                         R11 4
       88 GETTABLEKS                       R12 R0 K2 ["signals"]
       90 GETTABLEKS                       R12 R12 K13 ["getPrimaryButton"]
       92 GETUPVAL                         R14 0
       93 CALL                             R14 0 1
       94 JUMPIFNOT                        R14 ; [+2]
       95 MOVE                             R13 R10
       96 JUMP                             ; [+2]
       97 GETTABLEKS                       R13 R0 K12 ["onUserInteracted"]
       99 CALL                             R11 2 1
      100 GETUPVAL                         R12 4
      101 GETTABLEKS                       R13 R0 K2 ["signals"]
      103 GETTABLEKS                       R13 R13 K14 ["getSecondaryButton"]
      105 GETUPVAL                         R15 0
      106 CALL                             R15 0 1
      107 JUMPIFNOT                        R15 ; [+2]
      108 MOVE                             R14 R10
      109 JUMP                             ; [+2]
      110 GETTABLEKS                       R14 R0 K12 ["onUserInteracted"]
      112 CALL                             R12 2 1
      113 GETUPVAL                         R13 4
      114 GETTABLEKS                       R14 R0 K2 ["signals"]
      116 GETTABLEKS                       R14 R14 K15 ["getTertiaryButton"]
      118 GETUPVAL                         R16 0
      119 CALL                             R16 0 1
      120 JUMPIFNOT                        R16 ; [+2]
      121 MOVE                             R15 R10
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R15 R0 K12 ["onUserInteracted"]
      125 CALL                             R13 2 1
      126 GETUPVAL                         R14 2
      127 GETTABLEKS                       R14 R14 K1 ["useSignalState"]
      129 GETTABLEKS                       R15 R0 K2 ["signals"]
      131 GETTABLEKS                       R15 R15 K16 ["getEscapeButtonUri"]
      133 CALL                             R14 1 1
      134 GETUPVAL                         R15 3
      135 GETTABLEKS                       R15 R15 K17 ["useMemo"]
      137 NEWCLOSURE                       R16 P1
      138 CAPTURE                          VAL R14
      139 CAPTURE                          UPVAL U0
      140 CAPTURE                          REF R10
      141 CAPTURE                          VAL R0
      142 NEWTABLE                         R17 0 2
      144 MOVE                             R18 R14
      145 GETUPVAL                         R20 0
      146 CALL                             R20 0 1
      147 JUMPIFNOT                        R20 ; [+2]
      148 MOVE                             R19 R10
      149 JUMP                             ; [+2]
      150 GETTABLEKS                       R19 R0 K12 ["onUserInteracted"]
      152 SETLIST                          R17 R18 2 [1]
      154 CALL                             R15 2 1
      155 GETUPVAL                         R16 5
      156 GETUPVAL                         R17 6
      157 DUPTABLE                         R18 K28 [{"uri", "type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "escapeAction"}]
      158 GETTABLEKS                       R19 R0 K18 ["uri"]
      160 SETTABLEKS                       R19 R18 K18 ["uri"]
      162 SETTABLEKS                       R2 R18 K19 ["type"]
      164 SETTABLEKS                       R3 R18 K20 ["title"]
      166 SETTABLEKS                       R4 R18 K21 ["description"]
      168 SETTABLEKS                       R5 R18 K22 ["image"]
      170 SETTABLEKS                       R6 R18 K23 ["showIndeterminateProgressIndicator"]
      172 SETTABLEKS                       R11 R18 K24 ["primaryAction"]
      174 SETTABLEKS                       R12 R18 K25 ["secondaryAction"]
      176 SETTABLEKS                       R13 R18 K26 ["tertiaryAction"]
      178 SETTABLEKS                       R15 R18 K27 ["escapeAction"]
      180 DUPTABLE                         R19 K30 [{"SuppressionCheckbox"}]
      181 GETUPVAL                         R21 0
      182 CALL                             R21 0 1
      183 JUMPIFNOT                        R21 ; [+22]
      184 JUMPIFNOT                        R7 ; [+21]
      185 GETUPVAL                         R20 5
      186 GETUPVAL                         R21 7
      187 DUPTABLE                         R22 K37 [{["isChecked"], ["label"], ["onActivated"], ["size"], ["testId"] = "--dialog-suppression-checkbox"}]
      188 SETTABLEKS                       R8 R22 K31 ["isChecked"]
      190 LOADK                            R25 K38 ["DialogSuppression"]
      191 LOADK                            R26 K39 ["DontShowAgain"]
      192 NAMECALL                         R23 R1 K40 ["getText"]
      194 CALL                             R23 3 1
      195 SETTABLEKS                       R23 R22 K32 ["label"]
      197 SETTABLEKS                       R9 R22 K33 ["onActivated"]
      199 GETUPVAL                         R23 8
      200 GETTABLEKS                       R23 R23 K41 ["XSmall"]
      202 SETTABLEKS                       R23 R22 K34 ["size"]
      204 CALL                             R20 2 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R20
      207 SETTABLEKS                       R20 R19 K29 ["SuppressionCheckbox"]
      209 CALL                             R16 3 -1
      210 CLOSEUPVALS                      R8
      211 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Signals"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["SignalsReact"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R7 K12 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Src"]
       53 GETTABLEKS                       R8 R8 K14 ["Types"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K13 ["Src"]
       60 GETTABLEKS                       R9 R9 K15 ["Util"]
       62 GETTABLEKS                       R9 R9 K16 ["createDialogSignals"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K13 ["Src"]
       69 GETTABLEKS                       R10 R10 K17 ["Flags"]
       71 GETTABLEKS                       R10 R10 K18 ["getFFlagStudioDialogManagerSuppression"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R1 K19 ["Checkbox"]
       76 GETTABLEKS                       R11 R6 K20 ["Components"]
       78 GETTABLEKS                       R11 R11 K2 ["Dialog"]
       80 GETTABLEKS                       R12 R1 K21 ["Enums"]
       82 GETTABLEKS                       R12 R12 K22 ["InputSize"]
       84 GETTABLEKS                       R13 R2 K23 ["ContextServices"]
       86 GETTABLEKS                       R13 R13 K24 ["Localization"]
       88 GETTABLEKS                       R14 R6 K15 ["Util"]
       90 GETTABLEKS                       R14 R14 K25 ["StudioUri"]
       92 GETTABLEKS                       R15 R3 K26 ["createElement"]
       94 DUPCLOSURE                       R16 K27 [PROTO_1]
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R14
       98 DUPCLOSURE                       R17 K28 [PROTO_5]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R12
      108 GETTABLEKS                       R18 R3 K29 ["memo"]
      110 MOVE                             R19 R17
      111 CALL                             R18 1 -1
      112 RETURN                           R18 -1
