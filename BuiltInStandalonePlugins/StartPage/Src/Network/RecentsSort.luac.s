PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R1 K2 [DateTime.fromIsoDate]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K3 ["UnixTimestampMillis"]
       10 RETURN                           R2 1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R1 K2 [DateTime.fromIsoDate]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NAMECALL                         R2 R1 K3 ["ToUniversalTime"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K5 [DateTime.fromLocalTime]
       15 GETTABLEKS                       R4 R2 K6 ["Year"]
       17 GETTABLEKS                       R5 R2 K7 ["Month"]
       19 GETTABLEKS                       R6 R2 K8 ["Day"]
       21 GETTABLEKS                       R7 R2 K9 ["Hour"]
       23 GETTABLEKS                       R8 R2 K10 ["Minute"]
       25 GETTABLEKS                       R9 R2 K11 ["Second"]
       27 GETTABLEKS                       R10 R2 K12 ["Millisecond"]
       29 CALL                             R3 7 1
       30 GETTABLEKS                       R3 R3 K13 ["UnixTimestampMillis"]
       32 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["LastViewed"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETIMPORT                        R3 K3 [DateTime.fromIsoDate]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R1
       11 JUMP                             ; [+23]
       12 NAMECALL                         R4 R3 K4 ["ToUniversalTime"]
       14 CALL                             R4 1 1
       15 GETIMPORT                        R5 K6 [DateTime.fromLocalTime]
       17 GETTABLEKS                       R6 R4 K7 ["Year"]
       19 GETTABLEKS                       R7 R4 K8 ["Month"]
       21 GETTABLEKS                       R8 R4 K9 ["Day"]
       23 GETTABLEKS                       R9 R4 K10 ["Hour"]
       25 GETTABLEKS                       R10 R4 K11 ["Minute"]
       27 GETTABLEKS                       R11 R4 K12 ["Second"]
       29 GETTABLEKS                       R12 R4 K13 ["Millisecond"]
       31 CALL                             R5 7 1
       32 MOVE                             R1 R5
       33 GETTABLEKS                       R1 R1 K14 ["UnixTimestampMillis"]
       35 JUMPIF                           R1 ; [+14]
       36 GETTABLEKS                       R2 R0 K15 ["Updated"]
       38 JUMPIFNOT                        R2 ; [+5]
       39 GETIMPORT                        R3 K3 [DateTime.fromIsoDate]
       41 MOVE                             R4 R2
       42 CALL                             R3 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R3
       45 JUMPIFNOT                        R3 ; [+3]
       46 GETTABLEKS                       R1 R3 K14 ["UnixTimestampMillis"]
       48 RETURN                           R1 1
       49 LOADNIL                          R1
       50 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["LastViewed"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETIMPORT                        R4 K3 [DateTime.fromIsoDate]
        5 MOVE                             R5 R3
        6 CALL                             R4 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 JUMPIF                           R4 ; [+2]
       10 LOADNIL                          R2
       11 JUMP                             ; [+23]
       12 NAMECALL                         R5 R4 K4 ["ToUniversalTime"]
       14 CALL                             R5 1 1
       15 GETIMPORT                        R6 K6 [DateTime.fromLocalTime]
       17 GETTABLEKS                       R7 R5 K7 ["Year"]
       19 GETTABLEKS                       R8 R5 K8 ["Month"]
       21 GETTABLEKS                       R9 R5 K9 ["Day"]
       23 GETTABLEKS                       R10 R5 K10 ["Hour"]
       25 GETTABLEKS                       R11 R5 K11 ["Minute"]
       27 GETTABLEKS                       R12 R5 K12 ["Second"]
       29 GETTABLEKS                       R13 R5 K13 ["Millisecond"]
       31 CALL                             R6 7 1
       32 MOVE                             R2 R6
       33 GETTABLEKS                       R2 R2 K14 ["UnixTimestampMillis"]
       35 JUMPIF                           R2 ; [+14]
       36 GETTABLEKS                       R3 R0 K15 ["Updated"]
       38 JUMPIFNOT                        R3 ; [+5]
       39 GETIMPORT                        R4 K3 [DateTime.fromIsoDate]
       41 MOVE                             R5 R3
       42 CALL                             R4 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R4
       45 JUMPIFNOT                        R4 ; [+3]
       46 GETTABLEKS                       R2 R4 K14 ["UnixTimestampMillis"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R2
       50 GETTABLEKS                       R4 R1 K0 ["LastViewed"]
       52 JUMPIFNOT                        R4 ; [+5]
       53 GETIMPORT                        R5 K3 [DateTime.fromIsoDate]
       55 MOVE                             R6 R4
       56 CALL                             R5 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 JUMPIF                           R5 ; [+2]
       60 LOADNIL                          R3
       61 JUMP                             ; [+23]
       62 NAMECALL                         R6 R5 K4 ["ToUniversalTime"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K6 [DateTime.fromLocalTime]
       67 GETTABLEKS                       R8 R6 K7 ["Year"]
       69 GETTABLEKS                       R9 R6 K8 ["Month"]
       71 GETTABLEKS                       R10 R6 K9 ["Day"]
       73 GETTABLEKS                       R11 R6 K10 ["Hour"]
       75 GETTABLEKS                       R12 R6 K11 ["Minute"]
       77 GETTABLEKS                       R13 R6 K12 ["Second"]
       79 GETTABLEKS                       R14 R6 K13 ["Millisecond"]
       81 CALL                             R7 7 1
       82 MOVE                             R3 R7
       83 GETTABLEKS                       R3 R3 K14 ["UnixTimestampMillis"]
       85 JUMPIF                           R3 ; [+14]
       86 GETTABLEKS                       R4 R1 K15 ["Updated"]
       88 JUMPIFNOT                        R4 ; [+5]
       89 GETIMPORT                        R5 K3 [DateTime.fromIsoDate]
       91 MOVE                             R6 R4
       92 CALL                             R5 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R5
       95 JUMPIFNOT                        R5 ; [+3]
       96 GETTABLEKS                       R3 R5 K14 ["UnixTimestampMillis"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R3
      100 JUMPIF                           R2 ; [+2]
      101 LOADB                            R4 0
      102 RETURN                           R4 1
      103 JUMPIF                           R3 ; [+2]
      104 LOADB                            R4 1
      105 RETURN                           R4 1
      106 JUMPIFLT                         R3 R2 ; [+2]
      108 LOADB                            R4 0 +1
      109 LOADB                            R4 1
      110 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 DUPCLOSURE                       R4 K10 [PROTO_2]
       17 DUPCLOSURE                       R5 K11 [PROTO_3]
       18 DUPTABLE                         R6 K14 [{"recencyMillis", "recencySortFn"}]
       19 SETTABLEKS                       R4 R6 K12 ["recencyMillis"]
       21 SETTABLEKS                       R5 R6 K13 ["recencySortFn"]
       23 RETURN                           R6 1
