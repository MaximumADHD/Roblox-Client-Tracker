PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetAsyncFullUrl"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["/v1/avatar"]
        2 CALL                             R0 1 2
        3 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 2
        6 MOVE                             R4 R3
        7 MOVE                             R5 R2
        8 RETURN                           R4 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["HttpGetAsync"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Status"]
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 LOADN                            R6 100
        8 JUMPIFNOTLE                      R6 R5 ; [+11]
       10 FASTCALL1                        TOSTRING R5 ; [+3]
       11 MOVE                             R9 R5
       12 GETIMPORT                        R8 K4 [tostring]
       14 CALL                             R8 1 1
       15 NAMECALL                         R6 R0 K5 ["find"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+1]
       19 RETURN                           R5 1
       20 FORGLOOP                         R1 2 ; [-14]
       22 LOADK                            R3 K6 ["2%d%d"]
       23 NAMECALL                         R1 R0 K5 ["find"]
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K2 ["Status"]
       30 GETTABLEKS                       R1 R1 K7 ["OK"]
       32 RETURN                           R1 1
       33 LOADK                            R3 K8 ["curl_easy_perform"]
       34 NAMECALL                         R1 R0 K5 ["find"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+11]
       38 LOADK                            R3 K9 ["SSL"]
       39 NAMECALL                         R1 R0 K5 ["find"]
       41 CALL                             R1 2 1
       42 JUMPIFNOT                        R1 ; [+6]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K2 ["Status"]
       46 GETTABLEKS                       R1 R1 K10 ["BAD_TLS"]
       48 RETURN                           R1 1
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K2 ["Status"]
       52 GETTABLEKS                       R1 R1 K11 ["UNKNOWN_ERROR"]
       54 RETURN                           R1 1

PROTO_6:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETIMPORT                        R3 K1 [pcall]
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 CALL                             R3 2 2
        9 MOVE                             R1 R3
       10 MOVE                             R2 R4
       11 JUMP                             ; [+7]
       12 GETIMPORT                        R3 K1 [pcall]
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R0
       16 CALL                             R3 2 2
       17 MOVE                             R1 R3
       18 MOVE                             R2 R4
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K2 ["Status"]
       23 GETTABLEKS                       R3 R3 K3 ["OK"]
       25 JUMPIF                           R3 ; [+3]
       26 GETUPVAL                         R3 4
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 JUMPIFNOT                        R1 ; [+16]
       30 GETIMPORT                        R4 K1 [pcall]
       32 GETUPVAL                         R5 5
       33 MOVE                             R6 R2
       34 CALL                             R4 2 2
       35 MOVE                             R1 R4
       36 MOVE                             R2 R5
       37 JUMPIFNOT                        R1 ; [+2]
       38 MOVE                             R4 R3
       39 JUMPIF                           R4 ; [+5]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K2 ["Status"]
       43 GETTABLEKS                       R4 R4 K4 ["INVALID_JSON"]
       45 MOVE                             R3 R4
       46 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ContentProvider"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpRbxApiService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["GameSettingsFixPreviewAvatar"]
       22 LOADB                            R6 0
       23 NAMECALL                         R3 R3 K7 ["DefineFastFlag"]
       25 CALL                             R3 3 1
       26 NEWTABLE                         R4 2 0
       28 GETTABLEKS                       R5 R1 K8 ["BaseUrl"]
       30 GETIMPORT                        R6 K10 [pairs]
       32 NEWTABLE                         R7 0 4
       34 LOADK                            R9 K11 ["/"]
       35 LOADK                            R10 K12 ["www."]
       36 LOADK                            R11 K13 ["https:"]
       37 LOADK                            R12 K14 ["http:"]
       38 SETLIST                          R7 R9 4 [1]
       40 CALL                             R6 1 3
       41 FORGPREP_NEXT                    R6
       42 GETIMPORT                        R11 K17 [string.gsub]
       44 MOVE                             R12 R5
       45 MOVE                             R13 R10
       46 LOADK                            R14 K18 [""]
       47 CALL                             R11 3 1
       48 MOVE                             R5 R11
       49 FORGLOOP                         R6 2 ; [-8]
       51 LOADK                            R7 K19 ["https://avatar."]
       52 MOVE                             R8 R5
       53 CONCAT                           R6 R7 R8
       54 DUPTABLE                         R7 K54 [{["PENDING"] = 0, ["UNKNOWN_ERROR"] = -1, ["NO_CONNECTIVITY"] = -2, ["INVALID_JSON"] = -3, ["BAD_TLS"] = -4, ["MODERATED"] = -5, ["OK"] = 200, ["BAD_REQUEST"] = 400, ["UNAUTHORIZED"] = 401, ["FORBIDDEN"] = 403, ["NOT_FOUND"] = 404, ["REQUEST_TIMEOUT"] = 408, ["INTERNAL_SERVER_ERROR"] = 500, ["NOT_IMPLEMENTED"] = 501, ["BAD_GATEWAY"] = 502, ["SERVICE_UNAVAILABLE"] = 503, ["GATEWAY_TIMEOUT"] = 504}]
       55 SETTABLEKS                       R7 R4 K55 ["Status"]
       57 LOADNIL                          R7
       58 LOADNIL                          R8
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 LOADNIL                          R11
       62 DUPCLOSURE                       R12 K56 [PROTO_0]
       63 CAPTURE                          VAL R2
       64 NEWCLOSURE                       R13 P1
       65 CAPTURE                          REF R11
       66 SETTABLEKS                       R13 R4 K57 ["GetAvatarData"]
       68 NEWCLOSURE                       R11 P2
       69 CAPTURE                          VAL R6
       70 CAPTURE                          REF R10
       71 DUPCLOSURE                       R7 K58 [PROTO_3]
       72 CAPTURE                          VAL R0
       73 DUPCLOSURE                       R8 K59 [PROTO_4]
       74 DUPCLOSURE                       R9 K60 [PROTO_5]
       75 CAPTURE                          VAL R4
       76 NEWCLOSURE                       R10 P6
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R12
       79 CAPTURE                          REF R8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          REF R9
       82 CAPTURE                          REF R7
       83 CLOSEUPVALS                      R7
       84 RETURN                           R4 1
