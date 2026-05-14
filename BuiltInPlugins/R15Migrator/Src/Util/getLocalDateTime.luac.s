PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R1 12
        3 RETURN                           R1 1
        4 LOADN                            R1 12
        5 JUMPIFNOTLT                      R1 R0 ; [+3]
        7 SUBK                             R1 R0 K1 [12]
        8 RETURN                           R1 1
        9 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 NAMECALL                         R2 R0 K1 ["ToLocalTime"]
        3 CALL                             R2 1 1
        4 DUPTABLE                         R3 K8 [{"year", "month", "day", "hour", "isPm", "minute"}]
        5 GETTABLEKS                       R5 R2 K9 ["Year"]
        7 FASTCALL1                        TOSTRING R5 ; [+2]
        8 GETIMPORT                        R4 K11 [tostring]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K2 ["year"]
       13 GETTABLEKS                       R5 R2 K12 ["Month"]
       15 FASTCALL1                        TOSTRING R5 ; [+2]
       16 GETIMPORT                        R4 K11 [tostring]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K3 ["month"]
       21 GETTABLEKS                       R5 R2 K13 ["Day"]
       23 FASTCALL1                        TOSTRING R5 ; [+2]
       24 GETIMPORT                        R4 K11 [tostring]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K4 ["day"]
       29 GETTABLEKS                       R6 R2 K14 ["Hour"]
       31 JUMPIFNOTEQKN                    R6 K15 [0] ; [+3]
       33 LOADN                            R5 12
       34 JUMP                             ; [+6]
       35 LOADN                            R7 12
       36 JUMPIFNOTLT                      R7 R6 ; [+3]
       38 SUBK                             R5 R6 K16 [12]
       39 JUMP                             ; [+1]
       40 MOVE                             R5 R6
       41 FASTCALL1                        TOSTRING R5 ; [+2]
       42 GETIMPORT                        R4 K11 [tostring]
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K5 ["hour"]
       47 GETTABLEKS                       R5 R2 K14 ["Hour"]
       49 LOADN                            R6 12
       50 JUMPIFLE                         R6 R5 ; [+2]
       52 LOADB                            R4 0 +1
       53 LOADB                            R4 1
       54 SETTABLEKS                       R4 R3 K6 ["isPm"]
       56 GETTABLEKS                       R5 R2 K17 ["Minute"]
       58 LOADN                            R6 10
       59 JUMPIFNOTLT                      R5 R6 ; [+10]
       61 LOADK                            R5 K18 ["0"]
       62 GETTABLEKS                       R7 R2 K17 ["Minute"]
       64 FASTCALL1                        TOSTRING R7 ; [+2]
       65 GETIMPORT                        R6 K11 [tostring]
       67 CALL                             R6 1 1
       68 CONCAT                           R4 R5 R6
       69 JUMP                             ; [+6]
       70 GETTABLEKS                       R5 R2 K17 ["Minute"]
       72 FASTCALL1                        TOSTRING R5 ; [+2]
       73 GETIMPORT                        R4 K11 [tostring]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K7 ["minute"]
       78 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 RETURN                           R2 1
