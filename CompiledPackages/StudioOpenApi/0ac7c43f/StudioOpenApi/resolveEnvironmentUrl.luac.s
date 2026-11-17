PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^[hH][tT][tT][pP][sS]://([^./]+)%.[rR][oO][bB][lL][oO][xX]%.[cC][oO][mM](.*)$"]
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 1
        8 JUMPIFEQKS                       R2 K4 [""] ; [+8]
       10 GETIMPORT                        R3 K6 [string.find]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K7 ["^[/:?#]"]
       14 CALL                             R3 2 1
       15 JUMPIF                           R3 ; [+1]
       16 RETURN                           R0 1
       17 GETUPVAL                         R3 0
       18 CALL                             R3 0 1
       19 GETTABLEKS                       R3 R3 K8 ["BaseUrl"]
       21 GETIMPORT                        R4 K2 [string.match]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K9 ["^(%a+)://(.-)/?$"]
       25 CALL                             R4 2 2
       26 AND                              R7 R4 R5
       27 LOADK                            R8 K10 ["ContentProvider.BaseUrl is malformed: %*"]
       28 MOVE                             R10 R3
       29 NAMECALL                         R8 R8 K11 ["format"]
       31 CALL                             R8 2 1
       32 FASTCALL2                        ASSERT R7 R8 ; [+3]
       34 GETIMPORT                        R6 K13 [assert]
       36 CALL                             R6 2 0
       37 GETIMPORT                        R6 K15 [string.gsub]
       39 MOVE                             R7 R5
       40 LOADK                            R8 K16 ["^[wW][wW][wW]%."]
       41 LOADK                            R9 K4 [""]
       42 CALL                             R6 3 1
       43 MOVE                             R5 R6
       44 LOADK                            R6 K17 ["%*://%*.%*%*"]
       45 GETIMPORT                        R8 K19 [string.lower]
       47 MOVE                             R9 R4
       48 CALL                             R8 1 1
       49 MOVE                             R9 R1
       50 MOVE                             R10 R5
       51 MOVE                             R11 R2
       52 NAMECALL                         R6 R6 K11 ["format"]
       54 CALL                             R6 5 1
       55 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioOpenApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["getContentProvider"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1
