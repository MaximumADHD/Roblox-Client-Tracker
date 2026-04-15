PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+9]
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+3]
        8 MOVE                             R1 R0
        9 RETURN                           R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["compareKeys"]
       13 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+11]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["isSafeInteger"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 LOADN                            R1 0
       14 JUMPIFNOTLE                      R1 R0 ; [+2]
       16 RETURN                           R0 1
       17 LOADN                            R1 5
       18 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+2]
        1 MOVE                             R1 R0
        2 JUMP                             ; [+2]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["assign"]
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R1
       12 DUPTABLE                         R6 K3 [{"compareKeys", "contextLines"}]
       13 GETTABLEKS                       R8 R1 K1 ["compareKeys"]
       15 JUMPIFNOT                        R8 ; [+9]
       16 FASTCALL1                        TYPEOF R8 ; [+3]
       17 MOVE                             R10 R8
       18 GETIMPORT                        R9 K5 [typeof]
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKS                    R9 K6 ["function"] ; [+3]
       23 MOVE                             R7 R8
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R7 R9 K1 ["compareKeys"]
       28 SETTABLEKS                       R7 R6 K1 ["compareKeys"]
       30 GETTABLEKS                       R8 R1 K2 ["contextLines"]
       32 FASTCALL1                        TYPEOF R8 ; [+3]
       33 MOVE                             R10 R8
       34 GETIMPORT                        R9 K5 [typeof]
       36 CALL                             R9 1 1
       37 JUMPIFNOTEQKS                    R9 K7 ["number"] ; [+12]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R9 R10 K8 ["isSafeInteger"]
       42 MOVE                             R10 R8
       43 CALL                             R9 1 1
       44 JUMPIFNOT                        R9 ; [+5]
       45 LOADN                            R9 0
       46 JUMPIFNOTLE                      R9 R8 ; [+3]
       48 MOVE                             R7 R8
       49 JUMP                             ; [+1]
       50 LOADN                            R7 5
       51 SETTABLEKS                       R7 R6 K2 ["contextLines"]
       53 CALL                             R2 4 1
       54 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Number"]
       14 GETTABLEKS                       R4 R2 K7 ["Object"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R1 K8 ["ChalkLua"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R0 K9 ["types"]
       25 CALL                             R6 1 1
       26 DUPCLOSURE                       R7 K10 [PROTO_0]
       27 DUPTABLE                         R8 K29 [{"aAnnotation", "aColor", "aIndicator", "bAnnotation", "bColor", "bIndicator", "changeColor", "changeLineTrailingSpaceColor", "commonColor", "commonIndicator", "commonLineTrailingSpaceColor", "compareKeys", "contextLines", "emptyFirstOrLastLinePlaceholder", "expand", "includeChangeCounts", "omitAnnotationLines", "patchColor"}]
       28 LOADK                            R9 K30 ["Expected"]
       29 SETTABLEKS                       R9 R8 K11 ["aAnnotation"]
       31 GETTABLEKS                       R9 R5 K31 ["green"]
       33 SETTABLEKS                       R9 R8 K12 ["aColor"]
       35 LOADK                            R9 K32 ["-"]
       36 SETTABLEKS                       R9 R8 K13 ["aIndicator"]
       38 LOADK                            R9 K33 ["Received"]
       39 SETTABLEKS                       R9 R8 K14 ["bAnnotation"]
       41 GETTABLEKS                       R9 R5 K34 ["red"]
       43 SETTABLEKS                       R9 R8 K15 ["bColor"]
       45 LOADK                            R9 K35 ["+"]
       46 SETTABLEKS                       R9 R8 K16 ["bIndicator"]
       48 GETTABLEKS                       R9 R5 K36 ["inverse"]
       50 SETTABLEKS                       R9 R8 K17 ["changeColor"]
       52 SETTABLEKS                       R7 R8 K18 ["changeLineTrailingSpaceColor"]
       54 GETTABLEKS                       R9 R5 K37 ["dim"]
       56 SETTABLEKS                       R9 R8 K19 ["commonColor"]
       58 LOADK                            R9 K38 [" "]
       59 SETTABLEKS                       R9 R8 K20 ["commonIndicator"]
       61 SETTABLEKS                       R7 R8 K21 ["commonLineTrailingSpaceColor"]
       63 GETTABLEKS                       R9 R4 K39 ["None"]
       65 SETTABLEKS                       R9 R8 K22 ["compareKeys"]
       67 LOADN                            R9 5
       68 SETTABLEKS                       R9 R8 K23 ["contextLines"]
       70 LOADK                            R9 K40 [""]
       71 SETTABLEKS                       R9 R8 K24 ["emptyFirstOrLastLinePlaceholder"]
       73 LOADB                            R9 1
       74 SETTABLEKS                       R9 R8 K25 ["expand"]
       76 LOADB                            R9 0
       77 SETTABLEKS                       R9 R8 K26 ["includeChangeCounts"]
       79 LOADB                            R9 0
       80 SETTABLEKS                       R9 R8 K27 ["omitAnnotationLines"]
       82 GETTABLEKS                       R9 R5 K41 ["yellow"]
       84 SETTABLEKS                       R9 R8 K28 ["patchColor"]
       86 DUPCLOSURE                       R9 K42 [PROTO_1]
       87 CAPTURE                          VAL R8
       88 DUPCLOSURE                       R10 K43 [PROTO_2]
       89 CAPTURE                          VAL R3
       90 DUPCLOSURE                       R11 K44 [PROTO_3]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R3
       94 DUPTABLE                         R12 K47 [{"noColor", "normalizeDiffOptions"}]
       95 SETTABLEKS                       R7 R12 K45 ["noColor"]
       97 SETTABLEKS                       R11 R12 K46 ["normalizeDiffOptions"]
       99 RETURN                           R12 1
