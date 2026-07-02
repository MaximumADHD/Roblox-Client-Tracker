PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Params"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K0 ["Params"]
        5 JUMPIFNOT                        R1 ; [+40]
        6 NEWTABLE                         R2 0 0
        8 GETIMPORT                        R3 K2 [pairs]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 GETUPVAL                         R12 0
       14 MOVE                             R14 R6
       15 NAMECALL                         R12 R12 K3 ["UrlEncode"]
       17 CALL                             R12 2 1
       18 MOVE                             R9 R12
       19 LOADK                            R10 K4 ["="]
       20 GETUPVAL                         R11 0
       21 MOVE                             R13 R7
       22 NAMECALL                         R11 R11 K3 ["UrlEncode"]
       24 CALL                             R11 2 1
       25 CONCAT                           R8 R9 R11
       26 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       28 MOVE                             R10 R2
       29 MOVE                             R11 R8
       30 GETIMPORT                        R9 K7 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R3 2 ; [-21]
       35 GETTABLEKS                       R4 R0 K8 ["Url"]
       37 LOADK                            R5 K9 ["?"]
       38 GETIMPORT                        R6 K11 [table.concat]
       40 MOVE                             R7 R2
       41 LOADK                            R8 K12 ["&"]
       42 CALL                             R6 2 1
       43 CONCAT                           R3 R4 R6
       44 SETTABLEKS                       R3 R0 K8 ["Url"]
       46 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      2
        1 LOADK                            R3 K0 ["https://"]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K1 ["."]
        4 GETUPVAL                         R6 0
        5 GETIMPORT                        R8 K5 [string.format]
        7 MOVE                             R9 R1
        8 GETVARARGS                       R10 -1
        9 CALL                             R8 -1 1
       10 ORK                              R7 R8 K2 [""]
       11 CONCAT                           R2 R3 R7
       12 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["RequestAsync"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 CALL                             R0 3 2
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["new"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+21]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 LOADN                            R3 400
        4 JUMPIFNOTLE                      R3 R2 ; [+12]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K1 ["HTTP error: "]
        8 GETTABLEKS                       R6 R1 K0 ["StatusCode"]
       10 FASTCALL1                        TOSTRING R6 ; [+2]
       11 GETIMPORT                        R5 K3 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R3 R1 K4 ["Body"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 0
       23 LOADK                            R4 K1 ["HTTP error: "]
       24 GETTABLEKS                       R6 R1 K5 ["HttpError"]
       26 FASTCALL1                        TOSTRING R6 ; [+2]
       27 GETIMPORT                        R5 K3 [tostring]
       29 CALL                             R5 1 1
       30 CONCAT                           R3 R4 R5
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RequestInternal"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NAMECALL                         R0 R0 K1 ["Start"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["new"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpRbxApiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ContentProvider"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R4 R4 K13 ["Util"]
       36 GETTABLEKS                       R4 R4 K14 ["Promise"]
       38 GETTABLEKS                       R5 R2 K15 ["BaseUrl"]
       40 LOADK                            R8 K16 ["https://www."]
       41 NAMECALL                         R6 R5 K17 ["find"]
       43 CALL                             R6 2 1
       44 JUMPIFNOTEQKN                    R6 K18 [1] ; [+7]
       46 LOADN                            R8 13
       47 NAMECALL                         R6 R5 K19 ["sub"]
       49 CALL                             R6 2 1
       50 MOVE                             R5 R6
       51 JUMP                             ; [+11]
       52 LOADK                            R8 K20 ["http://www."]
       53 NAMECALL                         R6 R5 K17 ["find"]
       55 CALL                             R6 2 1
       56 JUMPIFNOTEQKN                    R6 K18 [1] ; [+6]
       58 LOADN                            R8 12
       59 NAMECALL                         R6 R5 K19 ["sub"]
       61 CALL                             R6 2 1
       62 MOVE                             R5 R6
       63 DUPCLOSURE                       R6 K21 [PROTO_0]
       64 CAPTURE                          VAL R1
       65 NEWTABLE                         R7 4 0
       67 NEWCLOSURE                       R8 P1
       68 CAPTURE                          REF R5
       69 SETTABLEKS                       R8 R7 K22 ["BuildRobloxUrl"]
       71 DUPCLOSURE                       R8 K23 [PROTO_4]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R8 R7 K24 ["Request"]
       77 DUPCLOSURE                       R8 K25 [PROTO_8]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R8 R7 K26 ["RequestInternal"]
       83 CLOSEUPVALS                      R5
       84 RETURN                           R7 1
