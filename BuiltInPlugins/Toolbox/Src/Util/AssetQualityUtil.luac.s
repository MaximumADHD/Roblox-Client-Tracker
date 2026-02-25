PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+23]
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [pairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 JUMPIFNOT                        R7 ; [+7]
       10 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R6
       14 GETIMPORT                        R8 K4 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-9]
       19 GETIMPORT                        R3 K6 [table.concat]
       21 MOVE                             R4 R2
       22 LOADK                            R5 K7 [","]
       23 CALL                             R3 2 1
       24 MOVE                             R1 R3
       25 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+61]
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [pairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 JUMPIFNOT                        R7 ; [+7]
       10 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R6
       14 GETIMPORT                        R8 K4 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-9]
       19 LOADN                            R3 0
       20 GETIMPORT                        R4 K6 [ipairs]
       22 MOVE                             R5 R2
       23 CALL                             R4 1 3
       24 FORGPREP_INEXT                   R4
       25 NEWTABLE                         R9 0 0
       27 GETIMPORT                        R10 K9 [string.gmatch]
       29 MOVE                             R11 R8
       30 LOADK                            R12 K10 ["[^.]+"]
       31 CALL                             R10 2 3
       32 FORGPREP                         R10
       33 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
       35 MOVE                             R16 R9
       36 MOVE                             R17 R13
       37 GETIMPORT                        R15 K4 [table.insert]
       39 CALL                             R15 2 0
       40 FORGLOOP                         R10 1 ; [-8]
       42 LENGTH                           R10 R9
       43 JUMPIFNOTEQKN                    R10 K11 [2] ; [+17]
       45 JUMPIF                           R1 ; [+2]
       46 NEWTABLE                         R1 0 0
       48 LOADK                            R11 K12 ["qualityFilter["]
       49 MOVE                             R12 R3
       50 LOADK                            R13 K13 ["].category"]
       51 CONCAT                           R10 R11 R13
       52 GETTABLEN                        R11 R9 1
       53 SETTABLE                         R11 R1 R10
       54 LOADK                            R11 K12 ["qualityFilter["]
       55 MOVE                             R12 R3
       56 LOADK                            R13 K14 ["].value"]
       57 CONCAT                           R10 R11 R13
       58 GETTABLEN                        R11 R9 2
       59 SETTABLE                         R11 R1 R10
       60 ADDK                             R3 R3 K15 [1]
       61 FORGLOOP                         R4 2 [inext] ; [-37]
       63 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["convertQualityFilterDataToTagsCSV"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["convertQualityFilterDataToQueryStrings"]
        9 RETURN                           R0 1
