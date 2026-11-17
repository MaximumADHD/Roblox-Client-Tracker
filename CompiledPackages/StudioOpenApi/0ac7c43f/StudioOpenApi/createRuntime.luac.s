PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["HttpError"]
        2 GETTABLEKS                       R1 R1 K1 ["Name"]
        4 GETTABLEKS                       R2 R0 K2 ["ErrorMessage"]
        6 JUMPIFNOTEQKS                    R2 K3 [""] ; [+2]
        8 RETURN                           R1 1
        9 LOADK                            R2 K4 ["%*: %*"]
       10 MOVE                             R4 R1
       11 GETTABLEKS                       R5 R0 K2 ["ErrorMessage"]
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 3 1
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R2 1
        4 SETUPVAL                         R2 0
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K6 [{[1] = True, ["statusCode"], ["statusMessage"], ["headers"], ["body"]}]
        8 GETTABLEKS                       R4 R1 K7 ["StatusCode"]
       10 SETTABLEKS                       R4 R3 K2 ["statusCode"]
       12 GETTABLEKS                       R4 R1 K8 ["StatusMessage"]
       14 SETTABLEKS                       R4 R3 K3 ["statusMessage"]
       16 GETTABLEKS                       R4 R1 K9 ["Headers"]
       18 SETTABLEKS                       R4 R3 K4 ["headers"]
       20 GETTABLEKS                       R4 R1 K10 ["Body"]
       22 SETTABLEKS                       R4 R3 K5 ["body"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 1
       27 DUPTABLE                         R3 K13 [{[1] = False, ["errorMessage"]}]
       28 GETTABLEKS                       R5 R1 K14 ["HttpError"]
       30 GETTABLEKS                       R5 R5 K15 ["Name"]
       32 GETTABLEKS                       R6 R1 K16 ["ErrorMessage"]
       34 JUMPIFNOTEQKS                    R6 K17 [""] ; [+3]
       36 MOVE                             R4 R5
       37 JUMP                             ; [+8]
       38 LOADK                            R6 K18 ["%*: %*"]
       39 MOVE                             R8 R5
       40 GETTABLEKS                       R9 R1 K16 ["ErrorMessage"]
       42 NAMECALL                         R6 R6 K19 ["format"]
       44 CALL                             R6 3 1
       45 MOVE                             R4 R6
       46 SETTABLEKS                       R4 R3 K12 ["errorMessage"]
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["Cancel"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 0
        1 GETUPVAL                         R4 0
        2 JUMPIFNOT                        R4 ; [+5]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R0 K0 ["url"]
        6 CALL                             R3 1 1
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R3 R0 K0 ["url"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R6 K5 [{"Url", "Method", "Headers", "Body"}]
       12 SETTABLEKS                       R3 R6 K1 ["Url"]
       14 GETTABLEKS                       R7 R0 K6 ["method"]
       16 SETTABLEKS                       R7 R6 K2 ["Method"]
       18 GETTABLEKS                       R7 R0 K7 ["headers"]
       20 SETTABLEKS                       R7 R6 K3 ["Headers"]
       22 GETTABLEKS                       R7 R0 K8 ["body"]
       24 SETTABLEKS                       R7 R6 K4 ["Body"]
       26 NAMECALL                         R4 R4 K9 ["RequestInternal"]
       28 CALL                             R4 2 1
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          REF R2
       31 CAPTURE                          VAL R1
       32 NAMECALL                         R5 R4 K10 ["Start"]
       34 CALL                             R5 2 0
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          REF R2
       37 CAPTURE                          VAL R4
       38 CLOSEUPVALS                      R2
       39 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONEncode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [task.defer]
        3 MOVE                             R2 R0
        4 GETVARARGS                       R3 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["json"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETTABLEKS                       R4 R0 K1 ["resolveEnvironment"]
       10 JUMPIFEQKNIL                     R4 ; [+4]
       12 GETTABLEKS                       R3 R0 K1 ["resolveEnvironment"]
       14 JUMP                             ; [+1]
       15 LOADB                            R3 1
       16 DUPTABLE                         R4 K4 [{"request", "json", "defer"}]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R5 R4 K2 ["request"]
       23 MOVE                             R5 R2
       24 JUMPIF                           R5 ; [+9]
       25 DUPTABLE                         R5 K7 [{"encode", "decode"}]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R6 R5 K5 ["encode"]
       30 NEWCLOSURE                       R6 P2
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K6 ["decode"]
       34 SETTABLEKS                       R5 R4 K0 ["json"]
       36 DUPCLOSURE                       R5 K8 [PROTO_6]
       37 SETTABLEKS                       R5 R4 K3 ["defer"]
       39 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioOpenApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["OpenApi"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["getHttpService"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["resolveEnvironmentUrl"]
       28 CALL                             R5 1 1
       29 DUPCLOSURE                       R6 K11 [PROTO_0]
       30 DUPCLOSURE                       R7 K12 [PROTO_7]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 RETURN                           R7 1
