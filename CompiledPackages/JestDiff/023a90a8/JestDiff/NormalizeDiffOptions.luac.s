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
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["compareKeys"]
       13 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+11]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["isSafeInteger"]
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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["assign"]
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
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K1 ["compareKeys"]
       28 SETTABLEKS                       R7 R6 K1 ["compareKeys"]
       30 GETTABLEKS                       R8 R1 K2 ["contextLines"]
       32 FASTCALL1                        TYPEOF R8 ; [+3]
       33 MOVE                             R10 R8
       34 GETIMPORT                        R9 K5 [typeof]
       36 CALL                             R9 1 1
       37 JUMPIFNOTEQKS                    R9 K7 ["number"] ; [+12]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K8 ["isSafeInteger"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       27 DUPTABLE                         R8 K38 [{["aAnnotation"] = "Expected", ["aColor"], ["aIndicator"] = "-", ["bAnnotation"] = "Received", ["bColor"], ["bIndicator"] = "+", ["changeColor"], ["changeLineTrailingSpaceColor"], ["commonColor"], ["commonIndicator"] = " ", ["commonLineTrailingSpaceColor"], ["compareKeys"], ["contextLines"] = 5, ["emptyFirstOrLastLinePlaceholder"] = "", ["expand"] = True, ["includeChangeCounts"] = False, ["omitAnnotationLines"] = False, ["patchColor"]}]
       28 GETTABLEKS                       R9 R5 K39 ["green"]
       30 SETTABLEKS                       R9 R8 K13 ["aColor"]
       32 GETTABLEKS                       R9 R5 K40 ["red"]
       34 SETTABLEKS                       R9 R8 K18 ["bColor"]
       36 GETTABLEKS                       R9 R5 K41 ["inverse"]
       38 SETTABLEKS                       R9 R8 K21 ["changeColor"]
       40 SETTABLEKS                       R7 R8 K22 ["changeLineTrailingSpaceColor"]
       42 GETTABLEKS                       R9 R5 K42 ["dim"]
       44 SETTABLEKS                       R9 R8 K23 ["commonColor"]
       46 SETTABLEKS                       R7 R8 K26 ["commonLineTrailingSpaceColor"]
       48 GETTABLEKS                       R9 R4 K43 ["None"]
       50 SETTABLEKS                       R9 R8 K27 ["compareKeys"]
       52 GETTABLEKS                       R9 R5 K44 ["yellow"]
       54 SETTABLEKS                       R9 R8 K37 ["patchColor"]
       56 DUPCLOSURE                       R9 K45 [PROTO_1]
       57 CAPTURE                          VAL R8
       58 DUPCLOSURE                       R10 K46 [PROTO_2]
       59 CAPTURE                          VAL R3
       60 DUPCLOSURE                       R11 K47 [PROTO_3]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R3
       64 DUPTABLE                         R12 K50 [{"noColor", "normalizeDiffOptions"}]
       65 SETTABLEKS                       R7 R12 K48 ["noColor"]
       67 SETTABLEKS                       R11 R12 K49 ["normalizeDiffOptions"]
       69 RETURN                           R12 1
