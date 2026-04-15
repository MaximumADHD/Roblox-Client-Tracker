PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R3 R0 K0 ["Name"]
        4 JUMPIF                           R3 ; [+4]
        5 GETTABLEKS                       R3 R0 K1 ["name"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K2 ["Unknown"]
        9 GETTABLEKS                       R5 R0 K4 ["_UniqueNameSuffix"]
       11 ORK                              R4 R5 K3 [""]
       12 CONCAT                           R2 R3 R4
       13 JUMPIFNOT                        R1 ; [+5]
       14 MOVE                             R4 R1
       15 LOADK                            R5 K5 ["+"]
       16 MOVE                             R6 R2
       17 CONCAT                           R3 R4 R6
       18 JUMPIF                           R3 ; [+1]
       19 MOVE                             R3 R2
       20 SETTABLEKS                       R3 R0 K6 ["Id"]
       22 GETTABLEKS                       R5 R0 K7 ["Children"]
       24 FASTCALL1                        TYPE R5 ; [+2]
       25 GETIMPORT                        R4 K9 [type]
       27 CALL                             R4 1 1
       28 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+61]
       30 NEWTABLE                         R4 0 0
       32 GETIMPORT                        R5 K12 [pairs]
       34 GETTABLEKS                       R6 R0 K7 ["Children"]
       36 CALL                             R5 1 3
       37 FORGPREP_NEXT                    R5
       38 GETTABLEKS                       R10 R9 K0 ["Name"]
       40 JUMPIF                           R10 ; [+4]
       41 GETTABLEKS                       R10 R9 K1 ["name"]
       43 JUMPIF                           R10 ; [+1]
       44 LOADK                            R10 K2 ["Unknown"]
       45 GETTABLEKS                       R11 R9 K13 ["AssetId"]
       47 JUMPIF                           R11 ; [+2]
       48 GETTABLEKS                       R11 R9 K14 ["assetId"]
       50 JUMPIFNOT                        R11 ; [+8]
       51 LOADK                            R13 K15 ["_"]
       52 FASTCALL1                        TOSTRING R11 ; [+3]
       53 MOVE                             R15 R11
       54 GETIMPORT                        R14 K17 [tostring]
       56 CALL                             R14 1 1
       57 CONCAT                           R12 R13 R14
       58 JUMPIF                           R12 ; [+1]
       59 LOADK                            R12 K3 [""]
       60 MOVE                             R14 R10
       61 MOVE                             R15 R12
       62 CONCAT                           R13 R14 R15
       63 GETTABLE                         R16 R4 R13
       64 ORK                              R15 R16 K19 [0]
       65 ADDK                             R14 R15 K18 [1]
       66 SETTABLE                         R14 R4 R13
       67 GETTABLE                         R14 R4 R13
       68 LOADN                            R15 1
       69 JUMPIFNOTLT                      R15 R14 ; [+12]
       71 MOVE                             R15 R12
       72 LOADK                            R16 K15 ["_"]
       73 GETTABLE                         R18 R4 R13
       74 FASTCALL1                        TOSTRING R18 ; [+2]
       75 GETIMPORT                        R17 K17 [tostring]
       77 CALL                             R17 1 1
       78 CONCAT                           R14 R15 R17
       79 SETTABLEKS                       R14 R9 K4 ["_UniqueNameSuffix"]
       81 JUMP                             ; [+2]
       82 SETTABLEKS                       R12 R9 K4 ["_UniqueNameSuffix"]
       84 GETUPVAL                         R14 0
       85 MOVE                             R15 R9
       86 MOVE                             R16 R3
       87 CALL                             R14 2 0
       88 FORGLOOP                         R5 2 ; [-51]
       90 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
