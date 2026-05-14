PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Params"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K0 ["Params"]
        5 JUMPIFNOT                        R1 ; [+39]
        6 NEWTABLE                         R2 0 0
        8 MOVE                             R3 R1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETUPVAL                         R12 0
       13 MOVE                             R14 R6
       14 NAMECALL                         R12 R12 K1 ["UrlEncode"]
       16 CALL                             R12 2 1
       17 MOVE                             R9 R12
       18 LOADK                            R10 K2 ["="]
       19 GETUPVAL                         R11 0
       20 MOVE                             R13 R7
       21 NAMECALL                         R11 R11 K1 ["UrlEncode"]
       23 CALL                             R11 2 1
       24 CONCAT                           R8 R9 R11
       25 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       27 MOVE                             R10 R2
       28 MOVE                             R11 R8
       29 GETIMPORT                        R9 K5 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R3 2 ; [-21]
       34 GETTABLEKS                       R4 R0 K6 ["Url"]
       36 LOADK                            R5 K7 ["?"]
       37 GETIMPORT                        R6 K9 [table.concat]
       39 MOVE                             R7 R2
       40 LOADK                            R8 K10 ["&"]
       41 CALL                             R6 2 1
       42 CONCAT                           R3 R4 R6
       43 SETTABLEKS                       R3 R0 K6 ["Url"]
       45 RETURN                           R0 0

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
        3 LOADN                            R3 144
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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["HttpRbxApiService"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["HttpService"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K9 ["GetService"]
       26 LOADK                            R5 K12 ["ContentProvider"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R0 K13 ["Packages"]
       32 GETTABLEKS                       R6 R6 K14 ["Promise"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R4 K15 ["BaseUrl"]
       37 LOADK                            R9 K16 ["https://www."]
       38 NAMECALL                         R7 R6 K17 ["find"]
       40 CALL                             R7 2 1
       41 JUMPIFNOTEQKN                    R7 K18 [1] ; [+7]
       43 LOADN                            R9 13
       44 NAMECALL                         R7 R6 K19 ["sub"]
       46 CALL                             R7 2 1
       47 MOVE                             R6 R7
       48 JUMP                             ; [+11]
       49 LOADK                            R9 K20 ["http://www."]
       50 NAMECALL                         R7 R6 K17 ["find"]
       52 CALL                             R7 2 1
       53 JUMPIFNOTEQKN                    R7 K18 [1] ; [+6]
       55 LOADN                            R9 12
       56 NAMECALL                         R7 R6 K19 ["sub"]
       58 CALL                             R7 2 1
       59 MOVE                             R6 R7
       60 DUPCLOSURE                       R7 K21 [PROTO_0]
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R8 4 0
       64 NEWCLOSURE                       R9 P1
       65 CAPTURE                          REF R6
       66 SETTABLEKS                       R9 R8 K22 ["BuildRobloxUrl"]
       68 DUPCLOSURE                       R9 K23 [PROTO_4]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R9 R8 K24 ["Request"]
       74 DUPCLOSURE                       R9 K25 [PROTO_8]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R9 R8 K26 ["RequestInternal"]
       80 CLOSEUPVALS                      R6
       81 RETURN                           R8 1
