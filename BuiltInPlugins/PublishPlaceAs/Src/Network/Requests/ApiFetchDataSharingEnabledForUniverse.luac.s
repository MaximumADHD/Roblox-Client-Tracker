PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R1 K1 ["configurations"]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETTABLEKS                       R3 R1 K1 ["configurations"]
       10 LENGTH                           R2 R3
       11 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
       13 LOADB                            R2 0
       14 RETURN                           R2 1
       15 GETTABLEKS                       R5 R1 K1 ["configurations"]
       17 LENGTH                           R4 R5
       18 JUMPIFEQKN                       R4 K3 [1] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 LOADK                            R5 K4 ["Expected exactly one configuration for universe "]
       23 GETUPVAL                         R6 1
       24 CONCAT                           R4 R5 R6
       25 FASTCALL2                        ASSERT R3 R4 ; [+3]
       27 GETIMPORT                        R2 K6 [assert]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R3 R1 K1 ["configurations"]
       32 GETTABLEN                        R2 R3 1
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R5 R6 K7 ["List"]
       36 GETTABLEKS                       R4 R5 K8 ["find"]
       38 GETTABLEKS                       R5 R2 K9 ["dataSharingLicenseTypes"]
       40 LOADK                            R6 K10 ["RobloxGlobal"]
       41 CALL                             R4 2 1
       42 JUMPIFNOTEQKNIL                  R4 ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["The universe must exist to fetch its data sharing setting"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 DUPTABLE                         R1 K6 [{"Url", "Method"}]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K7 ["BuildRobloxUrl"]
       14 LOADK                            R3 K8 ["apis"]
       15 LOADK                            R4 K9 ["resource-settings/v1/universes:batchGet?universeIds=%d"]
       16 MOVE                             R5 R0
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R1 K4 ["Url"]
       20 LOADK                            R2 K10 ["GET"]
       21 SETTABLEKS                       R2 R1 K5 ["Method"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K11 ["RequestInternal"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 NAMECALL                         R2 R2 K12 ["andThen"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R1 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Network"]
       23 GETTABLEKS                       R3 R4 K11 ["Http"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R5 R1 K12 ["Packages"]
       30 GETTABLEKS                       R4 R5 K13 ["Cryo"]
       32 CALL                             R3 1 1
       33 DUPCLOSURE                       R4 K14 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 RETURN                           R4 1
