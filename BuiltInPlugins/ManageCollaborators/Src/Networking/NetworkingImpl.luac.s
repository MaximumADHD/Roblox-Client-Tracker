PROTO_0:
        0 LENGTH                           R3 R0
        1 NAMECALL                         R1 R0 K0 ["sub"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKS                       R1 K1 ["/"] ; [+4]
        6 MOVE                             R1 R0
        7 LOADK                            R2 K1 ["/"]
        8 CONCAT                           R0 R1 R2
        9 LOADK                            R3 K2 ["://"]
       10 NAMECALL                         R1 R0 K3 ["find"]
       12 CALL                             R1 2 2
       13 LOADK                            R5 K4 ["%."]
       14 ADDK                             R6 R2 K5 [1]
       15 NAMECALL                         R3 R0 K3 ["find"]
       17 CALL                             R3 3 2
       18 ADDK                             R7 R2 K5 [1]
       19 SUBK                             R8 R3 K5 [1]
       20 NAMECALL                         R5 R0 K0 ["sub"]
       22 CALL                             R5 3 1
       23 ADDK                             R8 R4 K5 [1]
       24 NAMECALL                         R6 R0 K0 ["sub"]
       26 CALL                             R6 2 1
       27 LENGTH                           R8 R6
       28 GETTABLE                         R7 R6 R8
       29 JUMPIFNOTEQKS                    R7 K1 ["/"] ; [+8]
       31 LOADN                            R9 1
       32 LENGTH                           R11 R6
       33 SUBK                             R10 R11 K5 [1]
       34 NAMECALL                         R7 R6 K0 ["sub"]
       36 CALL                             R7 3 1
       37 MOVE                             R6 R7
       38 MOVE                             R7 R0
       39 MOVE                             R8 R5
       40 MOVE                             R9 R6
       41 RETURN                           R7 3

PROTO_1:
        0 LOADN                            R7 1
        1 LOADN                            R8 1
        2 NAMECALL                         R5 R1 K0 ["sub"]
        4 CALL                             R5 3 1
        5 JUMPIFEQKS                       R5 K1 ["/"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       11 LOADK                            R5 K2 ["Path must begin with '/'"]
       12 GETIMPORT                        R3 K4 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["composeUrl"]
       18 LOADK                            R5 K6 ["https://"]
       19 MOVE                             R6 R0
       20 LOADK                            R7 K7 ["."]
       21 GETUPVAL                         R8 1
       22 CONCAT                           R4 R5 R8
       23 LOADN                            R7 2
       24 LOADN                            R8 255
       25 NAMECALL                         R5 R1 K0 ["sub"]
       27 CALL                             R5 3 1
       28 MOVE                             R6 R2
       29 CALL                             R3 3 1
       30 RETURN                           R3 1

PROTO_2:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["GET"] ; [+5]
        3 JUMPIFEQKS                       R0 K1 ["PATCH"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 FASTCALL1                        TYPEOF R7 ; [+3]
        8 MOVE                             R9 R7
        9 GETIMPORT                        R8 K3 [typeof]
       11 CALL                             R8 1 1
       12 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+14]
       14 GETTABLE                         R9 R0 R6
       15 FASTCALL1                        TYPEOF R9 ; [+2]
       16 GETIMPORT                        R8 K3 [typeof]
       18 CALL                             R8 1 1
       19 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+7]
       21 GETUPVAL                         R8 0
       22 GETTABLE                         R9 R0 R6
       23 MOVE                             R10 R7
       24 CALL                             R8 2 1
       25 SETTABLE                         R8 R2 R6
       26 JUMP                             ; [+1]
       27 SETTABLE                         R7 R2 R6
       28 FORGLOOP                         R3 2 ; [-22]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       33 GETTABLEKS                       R3 R4 K6 ["join"]
       35 MOVE                             R4 R0
       36 MOVE                             R5 R2
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 DUPTABLE                         R2 K4 [{"isInternal", "retryAmount"}]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["isInternal"]
        9 LOADN                            R3 3
       10 SETTABLEKS                       R3 R2 K3 ["retryAmount"]
       12 MOVE                             R3 R0
       13 JUMPIF                           R3 ; [+2]
       14 NEWTABLE                         R3 0 0
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 DUPTABLE                         R1 K8 [{"__retryAmount", "__baseImpl", "__coalescedRequests"}]
       19 GETTABLEKS                       R2 R0 K3 ["retryAmount"]
       21 SETTABLEKS                       R2 R1 K5 ["__retryAmount"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K9 ["Networking"]
       26 GETTABLEKS                       R2 R3 K10 ["new"]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 1
       30 SETTABLEKS                       R2 R1 K6 ["__baseImpl"]
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R1 K7 ["__coalescedRequests"]
       36 GETIMPORT                        R2 K12 [ipairs]
       38 GETUPVAL                         R3 2
       39 CALL                             R2 1 3
       40 FORGPREP_INEXT                   R2
       41 GETTABLEKS                       R7 R1 K7 ["__coalescedRequests"]
       43 NEWTABLE                         R8 0 0
       45 SETTABLE                         R8 R7 R6
       46 FORGLOOP                         R2 2 [inext] ; [-6]
       48 GETUPVAL                         R4 3
       49 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       51 MOVE                             R3 R1
       52 GETIMPORT                        R2 K14 [setmetatable]
       54 CALL                             R2 2 1
       55 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R5 R3 K0 ["Params"]
        2 LOADN                            R10 1
        3 LOADN                            R11 1
        4 NAMECALL                         R8 R2 K1 ["sub"]
        6 CALL                             R8 3 1
        7 JUMPIFEQKS                       R8 K2 ["/"] ; [+2]
        9 LOADB                            R7 0 +1
       10 LOADB                            R7 1
       11 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       13 LOADK                            R8 K3 ["Path must begin with '/'"]
       14 GETIMPORT                        R6 K5 [assert]
       16 CALL                             R6 2 0
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K6 ["composeUrl"]
       20 LOADK                            R8 K7 ["https://"]
       21 MOVE                             R9 R1
       22 LOADK                            R10 K8 ["."]
       23 GETUPVAL                         R11 1
       24 CONCAT                           R7 R8 R11
       25 LOADN                            R10 2
       26 LOADN                            R11 255
       27 NAMECALL                         R8 R2 K1 ["sub"]
       29 CALL                             R8 3 1
       30 MOVE                             R9 R5
       31 CALL                             R6 3 1
       32 MOVE                             R4 R6
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K9 ["Dictionary"]
       36 GETTABLEKS                       R5 R6 K10 ["join"]
       38 MOVE                             R6 R3
       39 DUPTABLE                         R7 K12 [{"Params", "Url"}]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K13 ["None"]
       43 SETTABLEKS                       R8 R7 K0 ["Params"]
       45 SETTABLEKS                       R4 R7 K11 ["Url"]
       47 CALL                             R5 2 1
       48 MOVE                             R3 R5
       49 GETTABLEKS                       R5 R3 K14 ["Method"]
       51 LOADB                            R6 1
       52 JUMPIFEQKS                       R5 K15 ["GET"] ; [+5]
       54 JUMPIFEQKS                       R5 K16 ["PATCH"] ; [+2]
       56 LOADB                            R6 0 +1
       57 LOADB                            R6 1
       58 JUMPIFNOT                        R6 ; [+5]
       59 MOVE                             R8 R3
       60 NAMECALL                         R6 R0 K17 ["__requestWithCoalesce"]
       62 CALL                             R6 2 -1
       63 RETURN                           R6 -1
       64 MOVE                             R8 R3
       65 NAMECALL                         R6 R0 K18 ["__requestWithoutCoalesce"]
       67 CALL                             R6 2 -1
       68 RETURN                           R6 -1

PROTO_6:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 GETUPVAL                         R10 0
        3 GETTABLEKS                       R9 R10 K0 ["Dictionary"]
        5 GETTABLEKS                       R8 R9 K1 ["join"]
        7 MOVE                             R9 R3
        8 JUMPIF                           R9 ; [+2]
        9 NEWTABLE                         R9 0 0
       11 DUPTABLE                         R10 K3 [{"Method"}]
       12 GETUPVAL                         R11 1
       13 SETTABLEKS                       R11 R10 K2 ["Method"]
       15 CALL                             R8 2 -1
       16 NAMECALL                         R4 R0 K4 ["request"]
       18 CALL                             R4 -1 -1
       19 RETURN                           R4 -1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["expectEmptyResponse"]
        2 LOADNIL                          R3
        3 SETTABLEKS                       R3 R1 K0 ["expectEmptyResponse"]
        5 GETTABLEKS                       R3 R1 K1 ["Body"]
        7 JUMPIFEQKNIL                     R3 ; [+62]
        9 LOADNIL                          R3
       10 LOADB                            R4 1
       11 GETTABLEKS                       R5 R1 K2 ["Headers"]
       13 FASTCALL1                        TYPEOF R5 ; [+3]
       14 MOVE                             R7 R5
       15 GETIMPORT                        R6 K4 [typeof]
       17 CALL                             R6 1 1
       18 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+11]
       20 GETTABLEKS                       R6 R5 K6 ["Content-Type"]
       22 JUMPIFNOT                        R6 ; [+7]
       23 GETIMPORT                        R7 K9 [string.find]
       25 MOVE                             R8 R6
       26 LOADK                            R9 K10 ["multipart/form"]
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R7 ; [+1]
       29 LOADB                            R4 0
       30 JUMPIFNOT                        R4 ; [+7]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R8 R1 K1 ["Body"]
       34 NAMECALL                         R6 R6 K11 ["JSONEncode"]
       36 CALL                             R6 2 1
       37 JUMPIF                           R6 ; [+2]
       38 GETTABLEKS                       R6 R1 K1 ["Body"]
       40 MOVE                             R3 R6
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R7 R8 K12 ["Dictionary"]
       44 GETTABLEKS                       R6 R7 K13 ["join"]
       46 MOVE                             R7 R1
       47 DUPTABLE                         R8 K14 [{"Body", "Headers"}]
       48 SETTABLEKS                       R3 R8 K1 ["Body"]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R10 R11 K12 ["Dictionary"]
       53 GETTABLEKS                       R9 R10 K13 ["join"]
       55 NEWTABLE                         R10 1 0
       57 LOADK                            R11 K15 ["application/json"]
       58 SETTABLEKS                       R11 R10 K6 ["Content-Type"]
       60 GETTABLEKS                       R11 R1 K2 ["Headers"]
       62 JUMPIF                           R11 ; [+2]
       63 NEWTABLE                         R11 0 0
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K2 ["Headers"]
       68 CALL                             R6 2 1
       69 MOVE                             R1 R6
       70 GETTABLEKS                       R3 R0 K16 ["__baseImpl"]
       72 MOVE                             R5 R1
       73 NAMECALL                         R3 R3 K17 ["request"]
       75 CALL                             R3 2 1
       76 JUMPIFNOT                        R2 ; [+9]
       77 GETTABLEKS                       R4 R0 K16 ["__baseImpl"]
       79 MOVE                             R6 R3
       80 GETTABLEKS                       R7 R0 K18 ["__retryAmount"]
       82 NAMECALL                         R4 R4 K19 ["handleRetry"]
       84 CALL                             R4 3 -1
       85 RETURN                           R4 -1
       86 GETTABLEKS                       R4 R0 K16 ["__baseImpl"]
       88 GETTABLEKS                       R6 R0 K16 ["__baseImpl"]
       90 MOVE                             R8 R3
       91 GETTABLEKS                       R9 R0 K18 ["__retryAmount"]
       93 NAMECALL                         R6 R6 K19 ["handleRetry"]
       95 CALL                             R6 3 -1
       96 NAMECALL                         R4 R4 K20 ["parseJson"]
       98 CALL                             R4 -1 -1
       99 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__coalescedRequests"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 2
        6 GETTABLE                         R0 R1 R2
        7 GETUPVAL                         R1 3
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["__coalescedRequests"]
        3 GETUPVAL                         R6 1
        4 GETTABLE                         R4 R5 R6
        5 GETUPVAL                         R5 2
        6 GETTABLE                         R3 R4 R5
        7 GETUPVAL                         R4 3
        8 GETTABLE                         R2 R3 R4
        9 GETTABLEKS                       R1 R2 K1 ["options"]
       11 GETTABLEKS                       R0 R1 K2 ["Body"]
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R4 R5 K3 ["Dictionary"]
       17 GETTABLEKS                       R3 R4 K4 ["join"]
       19 GETUPVAL                         R4 5
       20 DUPTABLE                         R5 K5 [{"Body"}]
       21 SETTABLEKS                       R0 R5 K2 ["Body"]
       23 CALL                             R3 2 -1
       24 NAMECALL                         R1 R1 K6 ["__requestWithoutCoalesce"]
       26 CALL                             R1 -1 1
       27 GETUPVAL                         R3 6
       28 GETUPVAL                         R4 7
       29 NAMECALL                         R1 R1 K7 ["andThen"]
       31 CALL                             R1 3 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K0 ["__coalescedRequests"]
       35 GETUPVAL                         R4 1
       36 GETTABLE                         R2 R3 R4
       37 GETUPVAL                         R3 2
       38 GETTABLE                         R1 R2 R3
       39 GETUPVAL                         R2 3
       40 LOADNIL                          R3
       41 SETTABLE                         R3 R1 R2
       42 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["Method"]
        2 GETTABLEKS                       R3 R1 K1 ["Url"]
        4 MOVE                             R6 R1
        5 NAMECALL                         R4 R0 K2 ["__getExistingRequest"]
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+16]
        9 JUMPIFNOTEQKS                    R2 K3 ["PATCH"] ; [+12]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R6 R4 K4 ["options"]
       14 DUPTABLE                         R7 K6 [{"Body"}]
       15 GETTABLEKS                       R8 R1 K5 ["Body"]
       17 SETTABLEKS                       R8 R7 K5 ["Body"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K4 ["options"]
       22 GETTABLEKS                       R5 R4 K7 ["promise"]
       24 RETURN                           R5 1
       25 GETUPVAL                         R5 1
       26 NAMECALL                         R5 R5 K8 ["GenerateGUID"]
       28 CALL                             R5 1 1
       29 LOADNIL                          R6
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 JUMPIFNOTEQKS                    R2 K9 ["GET"] ; [+12]
       37 MOVE                             R10 R1
       38 NAMECALL                         R8 R0 K10 ["__requestWithoutCoalesce"]
       40 CALL                             R8 2 1
       41 MOVE                             R6 R8
       42 MOVE                             R10 R7
       43 MOVE                             R11 R7
       44 NAMECALL                         R8 R6 K11 ["andThen"]
       46 CALL                             R8 3 0
       47 JUMP                             ; [+20]
       48 JUMPIFNOTEQKS                    R2 K3 ["PATCH"] ; [+14]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R8 R9 K12 ["new"]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R1
       60 CALL                             R8 1 1
       61 MOVE                             R6 R8
       62 JUMP                             ; [+5]
       63 LOADB                            R9 0
       64 FASTCALL1                        ASSERT R9 ; [+2]
       65 GETIMPORT                        R8 K14 [assert]
       67 CALL                             R8 1 0
       68 GETTABLEKS                       R9 R0 K15 ["__coalescedRequests"]
       70 GETTABLE                         R8 R9 R2
       71 GETTABLEKS                       R11 R0 K15 ["__coalescedRequests"]
       73 GETTABLE                         R10 R11 R2
       74 GETTABLE                         R9 R10 R3
       75 JUMPIF                           R9 ; [+2]
       76 NEWTABLE                         R9 0 0
       78 SETTABLE                         R9 R8 R3
       79 GETTABLEKS                       R10 R0 K15 ["__coalescedRequests"]
       81 GETTABLE                         R9 R10 R2
       82 GETTABLE                         R8 R9 R3
       83 DUPTABLE                         R9 K16 [{"promise", "options"}]
       84 SETTABLEKS                       R6 R9 K7 ["promise"]
       86 SETTABLEKS                       R1 R9 K4 ["options"]
       88 SETTABLE                         R9 R8 R5
       89 RETURN                           R6 1

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["Method"]
        2 GETTABLEKS                       R3 R1 K1 ["Url"]
        4 GETTABLEKS                       R6 R0 K2 ["__coalescedRequests"]
        6 GETTABLE                         R5 R6 R2
        7 GETTABLE                         R4 R5 R3
        8 JUMPIF                           R4 ; [+2]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["Dictionary"]
       14 GETTABLEKS                       R5 R6 K4 ["join"]
       16 MOVE                             R6 R1
       17 DUPTABLE                         R7 K6 [{"Body"}]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R8 R9 K7 ["None"]
       21 SETTABLEKS                       R8 R7 K5 ["Body"]
       23 CALL                             R5 2 1
       24 LOADNIL                          R6
       25 GETIMPORT                        R7 K9 [pairs]
       27 MOVE                             R8 R4
       28 CALL                             R7 1 3
       29 FORGPREP_NEXT                    R7
       30 GETUPVAL                         R14 0
       31 GETTABLEKS                       R13 R14 K3 ["Dictionary"]
       33 GETTABLEKS                       R12 R13 K4 ["join"]
       35 GETTABLEKS                       R13 R11 K10 ["options"]
       37 DUPTABLE                         R14 K6 [{"Body"}]
       38 GETUPVAL                         R16 0
       39 GETTABLEKS                       R15 R16 K7 ["None"]
       41 SETTABLEKS                       R15 R14 K5 ["Body"]
       43 CALL                             R12 2 1
       44 GETUPVAL                         R13 1
       45 MOVE                             R14 R5
       46 MOVE                             R15 R12
       47 CALL                             R13 2 1
       48 JUMPIFNOT                        R13 ; [+2]
       49 MOVE                             R6 R11
       50 JUMP                             ; [+2]
       51 FORGLOOP                         R7 2 ; [-22]
       53 JUMPIF                           R6 ; [+2]
       54 LOADNIL                          R7
       55 RETURN                           R7 1
       56 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R5 R0 K5 ["Packages"]
       20 GETTABLEKS                       R4 R5 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R2 R3 K8 ["Http"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R6 R0 K5 ["Packages"]
       29 GETTABLEKS                       R5 R6 K7 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R3 R4 K9 ["Util"]
       34 GETTABLEKS                       R4 R3 K10 ["Promise"]
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R9 R0 K5 ["Packages"]
       40 GETTABLEKS                       R8 R9 K7 ["Framework"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R6 R7 K11 ["RobloxAPI"]
       45 GETTABLEKS                       R5 R6 K12 ["Url"]
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Src"]
       51 GETTABLEKS                       R8 R9 K9 ["Util"]
       53 GETTABLEKS                       R7 R8 K14 ["tablesDeepEqual"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K16 [game]
       58 LOADK                            R9 K17 ["ContentProvider"]
       59 NAMECALL                         R7 R7 K18 ["GetService"]
       61 CALL                             R7 2 1
       62 GETIMPORT                        R8 K16 [game]
       64 LOADK                            R10 K19 ["HttpService"]
       65 NAMECALL                         R8 R8 K18 ["GetService"]
       67 CALL                             R8 2 1
       68 NEWTABLE                         R9 0 5
       70 LOADK                            R10 K20 ["GET"]
       71 LOADK                            R11 K21 ["POST"]
       72 LOADK                            R12 K22 ["PUT"]
       73 LOADK                            R13 K23 ["PATCH"]
       74 LOADK                            R14 K24 ["DELETE"]
       75 SETLIST                          R9 R10 5 [1]
       77 DUPCLOSURE                       R10 K25 [PROTO_0]
       78 MOVE                             R11 R10
       79 GETTABLEKS                       R12 R7 K26 ["BaseUrl"]
       81 CALL                             R11 1 3
       82 DUPCLOSURE                       R14 K27 [PROTO_1]
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R13
       85 DUPCLOSURE                       R15 K28 [PROTO_2]
       86 DUPCLOSURE                       R16 K29 [PROTO_3]
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R1
       89 NEWTABLE                         R17 8 0
       91 SETTABLEKS                       R17 R17 K30 ["__index"]
       93 DUPCLOSURE                       R18 K31 [PROTO_4]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R17
       98 SETTABLEKS                       R18 R17 K32 ["new"]
      100 DUPCLOSURE                       R18 K33 [PROTO_5]
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R18 R17 K34 ["request"]
      106 GETIMPORT                        R18 K36 [pairs]
      108 MOVE                             R19 R9
      109 CALL                             R18 1 3
      110 FORGPREP_NEXT                    R18
      111 NAMECALL                         R23 R22 K37 ["lower"]
      113 CALL                             R23 1 1
      114 NEWCLOSURE                       R24 P6
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R22
      117 SETTABLE                         R24 R17 R23
      118 FORGLOOP                         R18 2 ; [-8]
      120 DUPCLOSURE                       R18 K38 [PROTO_7]
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R1
      123 SETTABLEKS                       R18 R17 K39 ["__requestWithoutCoalesce"]
      125 DUPCLOSURE                       R18 K40 [PROTO_11]
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R1
      130 SETTABLEKS                       R18 R17 K41 ["__requestWithCoalesce"]
      132 DUPCLOSURE                       R18 K42 [PROTO_12]
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R6
      135 SETTABLEKS                       R18 R17 K43 ["__getExistingRequest"]
      137 RETURN                           R17 1
