PROTO_0:
        0 LOADK                            R3 K0 ["[^%w_]"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 LOADB                            R2 0
        3 LOADN                            R5 1
        4 LENGTH                           R3 R0
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 MOVE                             R8 R5
        8 MOVE                             R9 R5
        9 NAMECALL                         R6 R0 K0 ["sub"]
       11 CALL                             R6 3 1
       12 LOADK                            R9 K1 ["[%s%p]"]
       13 NAMECALL                         R7 R6 K2 ["match"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+7]
       17 LENGTH                           R7 R1
       18 LOADN                            R8 0
       19 JUMPIFLT                         R8 R7 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 JUMP                             ; [+19]
       24 JUMPIFNOT                        R2 ; [+4]
       25 NAMECALL                         R9 R6 K3 ["upper"]
       27 CALL                             R9 1 1
       28 JUMP                             ; [+3]
       29 NAMECALL                         R9 R6 K4 ["lower"]
       31 CALL                             R9 1 1
       32 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       34 MOVE                             R8 R1
       35 GETIMPORT                        R7 K7 [table.insert]
       37 CALL                             R7 2 0
       38 LOADB                            R2 0
       39 LENGTH                           R7 R1
       40 LOADN                            R8 20
       41 JUMPIFLE                         R8 R7 ; [+2]
       43 FORNLOOP                         R3
       44 GETIMPORT                        R4 K9 [table.concat]
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 LOADK                            R7 K10 ["[^%w_]"]
       49 LOADK                            R8 K11 [""]
       50 NAMECALL                         R5 R4 K12 ["gsub"]
       52 CALL                             R5 3 1
       53 MOVE                             R3 R5
       54 JUMPIFNOTEQKS                    R3 K11 [""] ; [+3]
       56 LOADK                            R4 K13 ["animation"]
       57 RETURN                           R4 1
       58 MOVE                             R4 R3
       59 RETURN                           R4 1

PROTO_2:
        0 LOADK                            R3 K0 ["_v%d+$"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R5 K0 ["_v%d+$"]
        1 LOADK                            R6 K1 [""]
        2 NAMECALL                         R3 R0 K2 ["gsub"]
        4 CALL                             R3 3 1
        5 LOADK                            R6 K3 ["[^%w_]"]
        6 LOADK                            R7 K1 [""]
        7 NAMECALL                         R4 R3 K2 ["gsub"]
        9 CALL                             R4 3 1
       10 MOVE                             R2 R4
       11 JUMPIFNOTEQKS                    R2 K1 [""] ; [+2]
       13 LOADK                            R2 K4 ["animation"]
       14 LENGTH                           R3 R2
       15 LOADN                            R4 20
       16 JUMPIFNOTLT                      R4 R3 ; [+7]
       18 LOADN                            R5 1
       19 LOADN                            R6 20
       20 NAMECALL                         R3 R2 K5 ["sub"]
       22 CALL                             R3 3 1
       23 MOVE                             R2 R3
       24 LOADK                            R4 K6 ["^"]
       25 MOVE                             R5 R2
       26 LOADK                            R6 K7 ["_v(%d+)$"]
       27 CONCAT                           R3 R4 R6
       28 LOADN                            R4 0
       29 MOVE                             R5 R1
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 FORGPREP                         R5
       33 MOVE                             R12 R3
       34 NAMECALL                         R10 R9 K8 ["match"]
       36 CALL                             R10 2 1
       37 MOVE                             R11 R10
       38 JUMPIFNOT                        R11 ; [+5]
       39 FASTCALL1                        TONUMBER R10 ; [+3]
       40 MOVE                             R12 R10
       41 GETIMPORT                        R11 K10 [tonumber]
       43 CALL                             R11 1 1
       44 JUMPIFEQKNIL                     R11 ; [+4]
       46 JUMPIFNOTLT                      R4 R11 ; [+2]
       48 MOVE                             R4 R11
       49 FORGLOOP                         R5 2 ; [-17]
       51 MOVE                             R6 R2
       52 LOADK                            R7 K11 ["_v"]
       53 ADDK                             R9 R4 K12 [1]
       54 FASTCALL1                        TOSTRING R9 ; [+2]
       55 GETIMPORT                        R8 K14 [tostring]
       57 CALL                             R8 1 1
       58 CONCAT                           R5 R6 R8
       59 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 DUPTABLE                         R4 K8 [{"sanitize", "computeBaseNameFromPrompt", "stripVersionSuffix", "computeNextVersionedName"}]
        6 SETTABLEKS                       R0 R4 K4 ["sanitize"]
        8 SETTABLEKS                       R1 R4 K5 ["computeBaseNameFromPrompt"]
       10 SETTABLEKS                       R2 R4 K6 ["stripVersionSuffix"]
       12 SETTABLEKS                       R3 R4 K7 ["computeNextVersionedName"]
       14 RETURN                           R4 1
