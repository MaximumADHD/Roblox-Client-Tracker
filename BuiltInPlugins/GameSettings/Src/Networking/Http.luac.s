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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["RequestAsync"]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["new"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+23]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["BAD_REQUEST"]
        6 JUMPIFNOTLE                      R3 R2 ; [+12]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["HTTP error: "]
       10 GETTABLEKS                       R6 R1 K0 ["StatusCode"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K4 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R3 R1 K5 ["Body"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 1
       25 LOADK                            R4 K2 ["HTTP error: "]
       26 GETTABLEKS                       R6 R1 K6 ["HttpError"]
       28 FASTCALL1                        TOSTRING R6 ; [+2]
       29 GETIMPORT                        R5 K4 [tostring]
       31 CALL                             R5 1 1
       32 CONCAT                           R3 R4 R5
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RequestInternal"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R0 R0 K1 ["Start"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["new"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

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
       19 GETIMPORT                        R6 K7 [script]
       21 GETTABLEKS                       R5 R6 K8 ["Parent"]
       23 GETTABLEKS                       R4 R5 K8 ["Parent"]
       25 GETTABLEKS                       R3 R4 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R6 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R6 K12 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["Util"]
       36 GETTABLEKS                       R6 R5 K14 ["Promise"]
       38 GETIMPORT                        R7 K10 [require]
       40 GETTABLEKS                       R10 R3 K15 ["Src"]
       42 GETTABLEKS                       R9 R10 K13 ["Util"]
       44 GETTABLEKS                       R8 R9 K16 ["DEPRECATED_Constants"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R2 K17 ["BaseUrl"]
       49 LOADK                            R11 K18 ["https://www."]
       50 NAMECALL                         R9 R8 K19 ["find"]
       52 CALL                             R9 2 1
       53 JUMPIFNOT                        R9 ; [+6]
       54 LOADN                            R11 13
       55 NAMECALL                         R9 R8 K20 ["sub"]
       57 CALL                             R9 2 1
       58 MOVE                             R8 R9
       59 JUMP                             ; [+10]
       60 LOADK                            R11 K21 ["http://www."]
       61 NAMECALL                         R9 R8 K19 ["find"]
       63 CALL                             R9 2 1
       64 JUMPIFNOT                        R9 ; [+5]
       65 LOADN                            R11 12
       66 NAMECALL                         R9 R8 K20 ["sub"]
       68 CALL                             R9 2 1
       69 MOVE                             R8 R9
       70 DUPCLOSURE                       R9 K22 [PROTO_0]
       71 CAPTURE                          VAL R1
       72 NEWTABLE                         R10 4 0
       74 NEWCLOSURE                       R11 P1
       75 CAPTURE                          REF R8
       76 SETTABLEKS                       R11 R10 K23 ["BuildRobloxUrl"]
       78 DUPCLOSURE                       R11 K24 [PROTO_4]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R11 R10 K25 ["Request"]
       84 DUPCLOSURE                       R11 K26 [PROTO_8]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R11 R10 K27 ["RequestInternal"]
       91 CLOSEUPVALS                      R8
       92 RETURN                           R10 1
