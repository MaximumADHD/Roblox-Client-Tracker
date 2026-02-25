PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 GETTABLEKS                       R3 R1 K1 ["data"]
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R7 K2 ["UniverseId"]
       14 GETTABLEKS                       R10 R7 K3 ["CanPublish"]
       16 JUMPIFEQKB                       R10 TRUE ; [+2]
       18 LOADB                            R9 0 +1
       19 LOADB                            R9 1
       20 SETTABLE                         R9 R2 R8
       21 FORGLOOP                         R3 2 ; [-10]
       23 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R10 K0 ["universeIds="]
        7 FASTCALL1                        TOSTRING R6 ; [+3]
        8 MOVE                             R12 R6
        9 GETIMPORT                        R11 K2 [tostring]
       11 CALL                             R11 1 1
       12 CONCAT                           R9 R10 R11
       13 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K5 [table.insert]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 ; [-14]
       21 DUPTABLE                         R2 K8 [{"Url", "Method"}]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K9 ["BuildRobloxUrl"]
       25 LOADK                            R8 K10 ["develop"]
       26 LOADK                            R9 K11 ["v2/universes/canUserPublish"]
       27 CALL                             R7 2 1
       28 MOVE                             R4 R7
       29 LOADK                            R5 K12 ["?"]
       30 GETIMPORT                        R6 K14 [table.concat]
       32 MOVE                             R7 R1
       33 LOADK                            R8 K15 ["&"]
       34 CALL                             R6 2 1
       35 CONCAT                           R3 R4 R6
       36 SETTABLEKS                       R3 R2 K6 ["Url"]
       38 LOADK                            R3 K16 ["GET"]
       39 SETTABLEKS                       R3 R2 K7 ["Method"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K17 ["RequestInternal"]
       44 MOVE                             R4 R2
       45 CALL                             R3 1 1
       46 DUPCLOSURE                       R5 K18 [PROTO_0]
       47 CAPTURE                          UPVAL U1
       48 NAMECALL                         R3 R3 K19 ["andThen"]
       50 CALL                             R3 2 -1
       51 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Network"]
       17 GETTABLEKS                       R2 R3 K7 ["Http"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K9 [game]
       22 LOADK                            R4 K10 ["HttpService"]
       23 NAMECALL                         R2 R2 K11 ["GetService"]
       25 CALL                             R2 2 1
       26 DUPCLOSURE                       R3 K12 [PROTO_1]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R3 1
