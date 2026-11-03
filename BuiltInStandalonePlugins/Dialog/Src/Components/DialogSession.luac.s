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
      126 LOADNIL                          R14
      127 GETUPVAL                         R15 5
      128 CALL                             R15 0 1
      129 JUMPIFNOT                        R15 ; [+9]
      130 GETUPVAL                         R15 2
      131 GETTABLEKS                       R15 R15 K1 ["useSignalState"]
      133 GETTABLEKS                       R16 R0 K2 ["signals"]
      135 GETTABLEKS                       R16 R16 K16 ["getTertiaryButtonVariant"]
      137 CALL                             R15 1 1
      138 MOVE                             R14 R15
      139 GETUPVAL                         R15 2
      140 GETTABLEKS                       R15 R15 K1 ["useSignalState"]
      142 GETTABLEKS                       R16 R0 K2 ["signals"]
      144 GETTABLEKS                       R16 R16 K17 ["getEscapeButtonUri"]
      146 CALL                             R15 1 1
      147 GETUPVAL                         R16 3
      148 GETTABLEKS                       R16 R16 K18 ["useMemo"]
      150 NEWCLOSURE                       R17 P1
      151 CAPTURE                          VAL R15
      152 CAPTURE                          UPVAL U0
      153 CAPTURE                          REF R10
      154 CAPTURE                          VAL R0
      155 NEWTABLE                         R18 0 2
      157 MOVE                             R19 R15
      158 GETUPVAL                         R21 0
      159 CALL                             R21 0 1
      160 JUMPIFNOT                        R21 ; [+2]
      161 MOVE                             R20 R10
      162 JUMP                             ; [+2]
      163 GETTABLEKS                       R20 R0 K12 ["onUserInteracted"]
      165 SETLIST                          R18 R19 2 [1]
      167 CALL                             R16 2 1
      168 GETUPVAL                         R17 6
      169 GETUPVAL                         R18 7
      170 DUPTABLE                         R19 K31 [{"uri", "dmId", "type", "title", "description", "image", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction", "tertiaryAction", "tertiaryActionVariant", "escapeAction"}]
      171 GETTABLEKS                       R20 R0 K19 ["uri"]
      173 SETTABLEKS                       R20 R19 K19 ["uri"]
      175 GETTABLEKS                       R20 R0 K20 ["dmId"]
      177 SETTABLEKS                       R20 R19 K20 ["dmId"]
      179 SETTABLEKS                       R2 R19 K21 ["type"]
      181 SETTABLEKS                       R3 R19 K22 ["title"]
      183 SETTABLEKS                       R4 R19 K23 ["description"]
      185 SETTABLEKS                       R5 R19 K24 ["image"]
      187 SETTABLEKS                       R6 R19 K25 ["showIndeterminateProgressIndicator"]
      189 SETTABLEKS                       R11 R19 K26 ["primaryAction"]
      191 SETTABLEKS                       R12 R19 K27 ["secondaryAction"]
      193 SETTABLEKS                       R13 R19 K28 ["tertiaryAction"]
      195 GETUPVAL                         R21 5
      196 CALL                             R21 0 1
      197 JUMPIFNOT                        R21 ; [+2]
      198 MOVE                             R20 R14
      199 JUMP                             ; [+1]
      200 LOADNIL                          R20
      201 SETTABLEKS                       R20 R19 K29 ["tertiaryActionVariant"]
      203 SETTABLEKS                       R16 R19 K30 ["escapeAction"]
      205 DUPTABLE                         R20 K33 [{"SuppressionCheckbox"}]
      206 GETUPVAL                         R22 0
      207 CALL                             R22 0 1
      208 JUMPIFNOT                        R22 ; [+22]
      209 JUMPIFNOT                        R7 ; [+21]
      210 GETUPVAL                         R21 6
      211 GETUPVAL                         R22 8
      212 DUPTABLE                         R23 K40 [{["isChecked"], ["label"], ["onActivated"], ["size"], ["testId"] = "--dialog-suppression-checkbox"}]
      213 SETTABLEKS                       R8 R23 K34 ["isChecked"]
      215 LOADK                            R26 K41 ["DialogSuppression"]
      216 LOADK                            R27 K42 ["DontShowAgain"]
      217 NAMECALL                         R24 R1 K43 ["getText"]
      219 CALL                             R24 3 1
      220 SETTABLEKS                       R24 R23 K35 ["label"]
      222 SETTABLEKS                       R9 R23 K36 ["onActivated"]
      224 GETUPVAL                         R24 9
      225 GETTABLEKS                       R24 R24 K44 ["XSmall"]
      227 SETTABLEKS                       R24 R23 K37 ["size"]
      229 CALL                             R21 2 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R21
      232 SETTABLEKS                       R21 R20 K32 ["SuppressionCheckbox"]
      234 CALL                             R17 3 -1
      235 CLOSEUPVALS                      R8
      236 RETURN                           R17 -1

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
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K13 ["Src"]
       78 GETTABLEKS                       R11 R11 K17 ["Flags"]
       80 GETTABLEKS                       R11 R11 K19 ["getFFlagStudioDialogManagerTertiaryButtonVariant"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R1 K20 ["Checkbox"]
       85 GETTABLEKS                       R12 R6 K21 ["Components"]
       87 GETTABLEKS                       R12 R12 K2 ["Dialog"]
       89 GETTABLEKS                       R13 R1 K22 ["Enums"]
       91 GETTABLEKS                       R13 R13 K23 ["InputSize"]
       93 GETTABLEKS                       R14 R2 K24 ["ContextServices"]
       95 GETTABLEKS                       R14 R14 K25 ["Localization"]
       97 GETTABLEKS                       R15 R6 K15 ["Util"]
       99 GETTABLEKS                       R15 R15 K26 ["StudioUri"]
      101 GETTABLEKS                       R16 R3 K27 ["createElement"]
      103 DUPCLOSURE                       R17 K28 [PROTO_1]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R15
      107 DUPCLOSURE                       R18 K29 [PROTO_5]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R13
      118 GETTABLEKS                       R19 R3 K30 ["memo"]
      120 MOVE                             R20 R18
      121 CALL                             R19 1 -1
      122 RETURN                           R19 -1
