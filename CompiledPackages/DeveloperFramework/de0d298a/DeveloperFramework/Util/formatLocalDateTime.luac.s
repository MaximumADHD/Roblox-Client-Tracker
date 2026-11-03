PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["must pass an isoDateTimeString"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       26 LOADK                            R5 K6 ["must pass a formatString"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K1 [type]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       41 LOADK                            R5 K7 ["must pass a localeId"]
       42 GETIMPORT                        R3 K5 [assert]
       44 CALL                             R3 2 0
       45 GETIMPORT                        R3 K10 [DateTime.fromIsoDate]
       47 MOVE                             R4 R0
       48 CALL                             R3 1 1
       49 JUMPIFNOTEQKNIL                  R3 ; [+2]
       51 RETURN                           R0 1
       52 MOVE                             R6 R1
       53 MOVE                             R7 R2
       54 NAMECALL                         R4 R3 K11 ["FormatLocalTime"]
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
