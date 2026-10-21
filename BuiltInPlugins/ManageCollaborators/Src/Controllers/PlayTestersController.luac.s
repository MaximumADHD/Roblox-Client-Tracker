PROTO_0:
        0 LOADK                            R2 K0 ["/v1/universes/"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 ["/configuration/playtesters"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"__networking"}]
        1 SETTABLEKS                       R0 R2 K0 ["__networking"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetUserInfosByUserIdsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GetNameFromUserIdAsync"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R4 K1 ["develop"]
        3 LOADK                            R6 K2 ["/v1/universes/"]
        4 MOVE                             R7 R1
        5 LOADK                            R8 K3 ["/configuration/playtesters"]
        6 CONCAT                           R5 R6 R8
        7 NAMECALL                         R2 R2 K4 ["get"]
        9 CALL                             R2 3 1
       10 NAMECALL                         R2 R2 K5 ["await"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K6 ["responseBody"]
       15 GETTABLEKS                       R3 R3 K7 ["playtesters"]
       17 JUMPIF                           R3 ; [+2]
       18 NEWTABLE                         R3 0 0
       20 NEWTABLE                         R4 0 0
       22 GETIMPORT                        R5 K9 [pcall]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R3
       27 CALL                             R5 1 2
       28 JUMPIFNOT                        R5 ; [+18]
       29 MOVE                             R7 R6
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 GETTABLEKS                       R12 R11 K10 ["Id"]
       35 DUPTABLE                         R13 K12 [{"Id", "Name"}]
       36 GETTABLEKS                       R14 R11 K10 ["Id"]
       38 SETTABLEKS                       R14 R13 K10 ["Id"]
       40 GETTABLEKS                       R14 R11 K13 ["Username"]
       42 SETTABLEKS                       R14 R13 K11 ["Name"]
       44 SETTABLE                         R13 R4 R12
       45 FORGLOOP                         R7 2 ; [-13]
       47 MOVE                             R7 R3
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 FORGPREP                         R7
       51 GETTABLE                         R12 R4 R11
       52 JUMPIFNOTEQKNIL                  R12 ; [+20]
       54 FASTCALL1                        TOSTRING R11 ; [+3]
       55 MOVE                             R13 R11
       56 GETIMPORT                        R12 K15 [tostring]
       58 CALL                             R12 1 1
       59 GETIMPORT                        R13 K9 [pcall]
       61 NEWCLOSURE                       R14 P1
       62 CAPTURE                          REF R12
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R11
       65 CALL                             R13 1 0
       66 DUPTABLE                         R13 K12 [{"Id", "Name"}]
       67 SETTABLEKS                       R11 R13 K10 ["Id"]
       69 SETTABLEKS                       R12 R13 K11 ["Name"]
       71 SETTABLE                         R13 R4 R11
       72 CLOSEUPVALS                      R12
       73 FORGLOOP                         R7 2 ; [-23]
       75 RETURN                           R4 1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 1
        3 LENGTH                           R4 R2
        4 LOADN                            R5 50
        5 FORNPREP                         R4
        6 NEWTABLE                         R7 0 0
        8 MOVE                             R10 R6
        9 ADDK                             R13 R6 K1 [50]
       10 SUBK                             R12 R13 K0 [1]
       11 LENGTH                           R13 R2
       12 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       14 GETIMPORT                        R11 K4 [math.min]
       16 CALL                             R11 2 1
       17 MOVE                             R8 R11
       18 LOADN                            R9 1
       19 FORNPREP                         R8
       20 GETTABLE                         R13 R2 R10
       21 FASTCALL2                        TABLE_INSERT R7 R13 ; [+4]
       23 MOVE                             R12 R7
       24 GETIMPORT                        R11 K7 [table.insert]
       26 CALL                             R11 2 0
       27 FORNLOOP                         R8
       28 GETTABLEKS                       R8 R0 K8 ["__networking"]
       30 LOADK                            R10 K9 ["develop"]
       31 LOADK                            R14 K10 ["/v1/universes/"]
       32 MOVE                             R15 R1
       33 LOADK                            R16 K11 ["/configuration/playtesters"]
       34 CONCAT                           R12 R14 R16
       35 LOADK                            R13 K12 ["/eligibility"]
       36 CONCAT                           R11 R12 R13
       37 DUPTABLE                         R12 K14 [{"Body"}]
       38 DUPTABLE                         R13 K16 [{"playtesters"}]
       39 SETTABLEKS                       R7 R13 K15 ["playtesters"]
       41 SETTABLEKS                       R13 R12 K13 ["Body"]
       43 NAMECALL                         R8 R8 K17 ["post"]
       45 CALL                             R8 4 1
       46 NAMECALL                         R8 R8 K18 ["await"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R8 K19 ["responseBody"]
       51 GETTABLEKS                       R9 R9 K15 ["playtesters"]
       53 JUMPIF                           R9 ; [+2]
       54 NEWTABLE                         R9 0 0
       56 LOADNIL                          R10
       57 LOADNIL                          R11
       58 FORGPREP                         R9
       59 GETTABLEKS                       R14 R13 K20 ["userId"]
       61 GETTABLEKS                       R16 R13 K21 ["isEligible"]
       63 JUMPIFEQKB                       R16 TRUE ; [+2]
       65 LOADB                            R15 0 +1
       66 LOADB                            R15 1
       67 SETTABLE                         R15 R3 R14
       68 FORGLOOP                         R9 2 ; [-10]
       70 FORNLOOP                         R4
       71 RETURN                           R3 1

PROTO_6:
        0 LOADN                            R5 1
        1 LENGTH                           R3 R2
        2 LOADN                            R4 10
        3 FORNPREP                         R3
        4 NEWTABLE                         R6 0 0
        6 MOVE                             R9 R5
        7 ADDK                             R12 R5 K1 [10]
        8 SUBK                             R11 R12 K0 [1]
        9 LENGTH                           R12 R2
       10 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       12 GETIMPORT                        R10 K4 [math.min]
       14 CALL                             R10 2 1
       15 MOVE                             R7 R10
       16 LOADN                            R8 1
       17 FORNPREP                         R7
       18 GETTABLE                         R12 R2 R9
       19 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
       21 MOVE                             R11 R6
       22 GETIMPORT                        R10 K7 [table.insert]
       24 CALL                             R10 2 0
       25 FORNLOOP                         R7
       26 GETTABLEKS                       R7 R0 K8 ["__networking"]
       28 LOADK                            R9 K9 ["develop"]
       29 LOADK                            R11 K10 ["/v1/universes/"]
       30 MOVE                             R12 R1
       31 LOADK                            R13 K11 ["/configuration/playtesters"]
       32 CONCAT                           R10 R11 R13
       33 DUPTABLE                         R11 K13 [{"Body"}]
       34 DUPTABLE                         R12 K15 [{"playtesters"}]
       35 SETTABLEKS                       R6 R12 K14 ["playtesters"]
       37 SETTABLEKS                       R12 R11 K12 ["Body"]
       39 NAMECALL                         R7 R7 K16 ["post"]
       41 CALL                             R7 4 1
       42 NAMECALL                         R7 R7 K17 ["await"]
       44 CALL                             R7 1 0
       45 FORNLOOP                         R3
       46 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R5 1
        1 LENGTH                           R3 R2
        2 LOADN                            R4 10
        3 FORNPREP                         R3
        4 NEWTABLE                         R6 0 0
        6 MOVE                             R9 R5
        7 ADDK                             R12 R5 K1 [10]
        8 SUBK                             R11 R12 K0 [1]
        9 LENGTH                           R12 R2
       10 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       12 GETIMPORT                        R10 K4 [math.min]
       14 CALL                             R10 2 1
       15 MOVE                             R7 R10
       16 LOADN                            R8 1
       17 FORNPREP                         R7
       18 GETTABLE                         R12 R2 R9
       19 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
       21 MOVE                             R11 R6
       22 GETIMPORT                        R10 K7 [table.insert]
       24 CALL                             R10 2 0
       25 FORNLOOP                         R7
       26 GETTABLEKS                       R7 R0 K8 ["__networking"]
       28 LOADK                            R9 K9 ["develop"]
       29 LOADK                            R11 K10 ["/v1/universes/"]
       30 MOVE                             R12 R1
       31 LOADK                            R13 K11 ["/configuration/playtesters"]
       32 CONCAT                           R10 R11 R13
       33 DUPTABLE                         R11 K13 [{"Body"}]
       34 DUPTABLE                         R12 K15 [{"playtesters"}]
       35 SETTABLEKS                       R6 R12 K14 ["playtesters"]
       37 SETTABLEKS                       R12 R11 K12 ["Body"]
       39 NAMECALL                         R7 R7 K16 ["delete"]
       41 CALL                             R7 4 1
       42 NAMECALL                         R7 R7 K17 ["await"]
       44 CALL                             R7 1 0
       45 FORNLOOP                         R3
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 8 0
       15 SETTABLEKS                       R2 R2 K5 ["__index"]
       17 DUPCLOSURE                       R3 K6 [PROTO_0]
       18 DUPCLOSURE                       R4 K7 [PROTO_1]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R4 R2 K8 ["new"]
       22 DUPCLOSURE                       R4 K9 [PROTO_4]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R2 K10 ["getPlayTesters"]
       27 DUPCLOSURE                       R4 K11 [PROTO_5]
       28 SETTABLEKS                       R4 R2 K12 ["getEligibility"]
       30 DUPCLOSURE                       R4 K13 [PROTO_6]
       31 SETTABLEKS                       R4 R2 K14 ["addPlayTesters"]
       33 DUPCLOSURE                       R4 K15 [PROTO_7]
       34 SETTABLEKS                       R4 R2 K16 ["removePlayTesters"]
       36 RETURN                           R2 1
