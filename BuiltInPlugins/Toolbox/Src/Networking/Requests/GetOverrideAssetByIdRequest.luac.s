PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        7 GETTABLEKS                       R1 R1 K1 ["item"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R1 K2 ["id"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 NAMECALL                         R3 R3 K3 ["getState"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R3 R3 K4 ["resultsArray"]
       22 JUMPIF                           R3 ; [+2]
       23 NEWTABLE                         R3 0 0
       25 GETIMPORT                        R4 K6 [ipairs]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 3
       29 FORGPREP_INEXT                   R4
       30 GETTABLEKS                       R9 R8 K7 ["Asset"]
       32 JUMPIFNOT                        R9 ; [+16]
       33 GETTABLEKS                       R10 R8 K7 ["Asset"]
       35 GETTABLEKS                       R10 R10 K8 ["Id"]
       37 FASTCALL1                        TOSTRING R10 ; [+2]
       38 GETIMPORT                        R9 K10 [tostring]
       40 CALL                             R9 1 1
       41 FASTCALL1                        TOSTRING R2 ; [+3]
       42 MOVE                             R11 R2
       43 GETIMPORT                        R10 K10 [tostring]
       45 CALL                             R10 1 1
       46 JUMPIFNOTEQ                      R9 R10 ; [+2]
       48 RETURN                           R0 0
       49 FORGLOOP                         R4 2 [inext] ; [-20]
       51 DUPTABLE                         R4 K11 [{"Asset"}]
       52 DUPTABLE                         R5 K13 [{"Id", "Name"}]
       53 SETTABLEKS                       R2 R5 K8 ["Id"]
       55 GETTABLEKS                       R7 R1 K15 ["name"]
       57 ORK                              R6 R7 K14 [""]
       58 SETTABLEKS                       R6 R5 K12 ["Name"]
       60 SETTABLEKS                       R5 R4 K7 ["Asset"]
       62 GETUPVAL                         R5 0
       63 GETUPVAL                         R7 1
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R8 R8 K16 ["List"]
       67 GETTABLEKS                       R8 R8 K17 ["join"]
       69 NEWTABLE                         R9 0 1
       71 MOVE                             R10 R4
       72 SETLIST                          R9 R10 1 [1]
       74 MOVE                             R10 R3
       75 CALL                             R8 2 -1
       76 CALL                             R7 -1 -1
       77 NAMECALL                         R5 R5 K18 ["dispatch"]
       79 CALL                             R5 -1 0
       80 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldDebugOverrideAssetLoading"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+10]
        5 GETIMPORT                        R0 K2 [print]
        7 LOADK                            R2 K3 ["GetOverrideAssetByIdRequest: lookup failed for id "]
        8 GETUPVAL                         R4 1
        9 FASTCALL1                        TOSTRING R4 ; [+2]
       10 GETIMPORT                        R3 K5 [tostring]
       12 CALL                             R3 1 1
       13 CONCAT                           R1 R2 R3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 JUMPIFNOTEQKS                    R1 K0 [""] ; [+2]
        6 RETURN                           R0 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U0
       14 GETUPVAL                         R3 4
       15 GETUPVAL                         R5 5
       16 GETTABLEKS                       R5 R5 K1 ["TARGET_TYPE_ASSET"]
       18 GETUPVAL                         R6 0
       19 NAMECALL                         R3 R3 K2 ["getItem"]
       21 CALL                             R3 3 1
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 NAMECALL                         R3 R3 K3 ["andThen"]
       26 CALL                             R3 3 -1
       27 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K9 ["DebugFlags"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K7 ["Src"]
       31 GETTABLEKS                       R6 R6 K10 ["Types"]
       33 GETTABLEKS                       R6 R6 K11 ["TargetTypes"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R0 K7 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Actions"]
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R6 K13 ["SetOverrideAssets"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K14 [PROTO_3]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 RETURN                           R8 1
