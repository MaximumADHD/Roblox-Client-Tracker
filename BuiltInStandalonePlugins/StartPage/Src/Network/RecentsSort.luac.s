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
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R2 R0 K2 ["LastViewed"]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETIMPORT                        R3 K5 [DateTime.fromIsoDate]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIF                           R3 ; [+2]
       15 LOADNIL                          R1
       16 JUMP                             ; [+23]
       17 NAMECALL                         R4 R3 K6 ["ToUniversalTime"]
       19 CALL                             R4 1 1
       20 GETIMPORT                        R5 K8 [DateTime.fromLocalTime]
       22 GETTABLEKS                       R6 R4 K9 ["Year"]
       24 GETTABLEKS                       R7 R4 K10 ["Month"]
       26 GETTABLEKS                       R8 R4 K11 ["Day"]
       28 GETTABLEKS                       R9 R4 K12 ["Hour"]
       30 GETTABLEKS                       R10 R4 K13 ["Minute"]
       32 GETTABLEKS                       R11 R4 K14 ["Second"]
       34 GETTABLEKS                       R12 R4 K15 ["Millisecond"]
       36 CALL                             R5 7 1
       37 MOVE                             R1 R5
       38 GETTABLEKS                       R1 R1 K16 ["UnixTimestampMillis"]
       40 JUMPIF                           R1 ; [+14]
       41 GETTABLEKS                       R2 R0 K17 ["Updated"]
       43 JUMPIFNOT                        R2 ; [+5]
       44 GETIMPORT                        R3 K5 [DateTime.fromIsoDate]
       46 MOVE                             R4 R2
       47 CALL                             R3 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R3
       50 JUMPIFNOT                        R3 ; [+3]
       51 GETTABLEKS                       R1 R3 K16 ["UnixTimestampMillis"]
       53 RETURN                           R1 1
       54 LOADNIL                          R1
       55 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R4 0
        6 FASTCALL1                        ASSERT R4 ; [+2]
        7 GETIMPORT                        R3 K1 [assert]
        9 CALL                             R3 1 0
       10 GETTABLEKS                       R3 R0 K2 ["LastViewed"]
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETIMPORT                        R4 K5 [DateTime.fromIsoDate]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 JUMPIF                           R4 ; [+2]
       20 LOADNIL                          R2
       21 JUMP                             ; [+23]
       22 NAMECALL                         R5 R4 K6 ["ToUniversalTime"]
       24 CALL                             R5 1 1
       25 GETIMPORT                        R6 K8 [DateTime.fromLocalTime]
       27 GETTABLEKS                       R7 R5 K9 ["Year"]
       29 GETTABLEKS                       R8 R5 K10 ["Month"]
       31 GETTABLEKS                       R9 R5 K11 ["Day"]
       33 GETTABLEKS                       R10 R5 K12 ["Hour"]
       35 GETTABLEKS                       R11 R5 K13 ["Minute"]
       37 GETTABLEKS                       R12 R5 K14 ["Second"]
       39 GETTABLEKS                       R13 R5 K15 ["Millisecond"]
       41 CALL                             R6 7 1
       42 MOVE                             R2 R6
       43 GETTABLEKS                       R2 R2 K16 ["UnixTimestampMillis"]
       45 JUMPIF                           R2 ; [+14]
       46 GETTABLEKS                       R3 R0 K17 ["Updated"]
       48 JUMPIFNOT                        R3 ; [+5]
       49 GETIMPORT                        R4 K5 [DateTime.fromIsoDate]
       51 MOVE                             R5 R3
       52 CALL                             R4 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R4
       55 JUMPIFNOT                        R4 ; [+3]
       56 GETTABLEKS                       R2 R4 K16 ["UnixTimestampMillis"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R2
       60 GETUPVAL                         R5 0
       61 FASTCALL1                        ASSERT R5 ; [+2]
       62 GETIMPORT                        R4 K1 [assert]
       64 CALL                             R4 1 0
       65 GETTABLEKS                       R4 R1 K2 ["LastViewed"]
       67 JUMPIFNOT                        R4 ; [+5]
       68 GETIMPORT                        R5 K5 [DateTime.fromIsoDate]
       70 MOVE                             R6 R4
       71 CALL                             R5 1 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R5
       74 JUMPIF                           R5 ; [+2]
       75 LOADNIL                          R3
       76 JUMP                             ; [+23]
       77 NAMECALL                         R6 R5 K6 ["ToUniversalTime"]
       79 CALL                             R6 1 1
       80 GETIMPORT                        R7 K8 [DateTime.fromLocalTime]
       82 GETTABLEKS                       R8 R6 K9 ["Year"]
       84 GETTABLEKS                       R9 R6 K10 ["Month"]
       86 GETTABLEKS                       R10 R6 K11 ["Day"]
       88 GETTABLEKS                       R11 R6 K12 ["Hour"]
       90 GETTABLEKS                       R12 R6 K13 ["Minute"]
       92 GETTABLEKS                       R13 R6 K14 ["Second"]
       94 GETTABLEKS                       R14 R6 K15 ["Millisecond"]
       96 CALL                             R7 7 1
       97 MOVE                             R3 R7
       98 GETTABLEKS                       R3 R3 K16 ["UnixTimestampMillis"]
      100 JUMPIF                           R3 ; [+14]
      101 GETTABLEKS                       R4 R1 K17 ["Updated"]
      103 JUMPIFNOT                        R4 ; [+5]
      104 GETIMPORT                        R5 K5 [DateTime.fromIsoDate]
      106 MOVE                             R6 R4
      107 CALL                             R5 1 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R5
      110 JUMPIFNOT                        R5 ; [+3]
      111 GETTABLEKS                       R3 R5 K16 ["UnixTimestampMillis"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R3
      115 JUMPIF                           R2 ; [+2]
      116 LOADB                            R4 0
      117 RETURN                           R4 1
      118 JUMPIF                           R3 ; [+2]
      119 LOADB                            R4 1
      120 RETURN                           R4 1
      121 JUMPIFLT                         R3 R2 ; [+2]
      123 LOADB                            R4 0 +1
      124 LOADB                            R4 1
      125 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStartPageBackfillRecentsFromCloud"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K9 ["Types"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K10 [PROTO_0]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 DUPCLOSURE                       R5 K12 [PROTO_2]
       27 CAPTURE                          VAL R1
       28 DUPCLOSURE                       R6 K13 [PROTO_3]
       29 CAPTURE                          VAL R1
       30 DUPTABLE                         R7 K16 [{"recencyMillis", "recencySortFn"}]
       31 SETTABLEKS                       R5 R7 K14 ["recencyMillis"]
       33 SETTABLEKS                       R6 R7 K15 ["recencySortFn"]
       35 RETURN                           R7 1
