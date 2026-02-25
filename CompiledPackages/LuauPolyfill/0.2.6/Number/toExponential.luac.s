PROTO_0:
        0 MOVE                             R2 R0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+7]
        8 FASTCALL1                        TONUMBER R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K4 [tonumber]
       12 CALL                             R3 1 1
       13 MOVE                             R2 R3
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K1 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFEQKS                       R3 K5 ["number"] ; [+3]
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 JUMPIFEQKNIL                     R1 ; [+22]
       25 FASTCALL1                        TYPEOF R1 ; [+3]
       26 MOVE                             R4 R1
       27 GETIMPORT                        R3 K1 [typeof]
       29 CALL                             R3 1 1
       30 JUMPIFEQKS                       R3 K5 ["number"] ; [+5]
       32 GETIMPORT                        R3 K7 [error]
       34 LOADK                            R4 K8 ["TypeError: fractionDigits must be a number between 0 and 100"]
       35 CALL                             R3 1 0
       36 LOADN                            R3 0
       37 JUMPIFLT                         R1 R3 ; [+4]
       39 LOADN                            R3 100
       40 JUMPIFNOTLT                      R3 R1 ; [+5]
       42 GETIMPORT                        R3 K7 [error]
       44 LOADK                            R4 K9 ["RangeError: fractionDigits must be between 0 and 100"]
       45 CALL                             R3 1 0
       46 LOADNIL                          R3
       47 JUMPIFNOTEQKNIL                  R1 ; [+3]
       49 LOADK                            R3 K10 ["%e"]
       50 JUMP                             ; [+9]
       51 LOADK                            R4 K11 ["%."]
       52 FASTCALL1                        TOSTRING R1 ; [+3]
       53 MOVE                             R8 R1
       54 GETIMPORT                        R7 K13 [tostring]
       56 CALL                             R7 1 1
       57 MOVE                             R5 R7
       58 LOADK                            R6 K14 ["e"]
       59 CONCAT                           R3 R4 R6
       60 GETIMPORT                        R4 K16 [string.format]
       62 MOVE                             R5 R3
       63 MOVE                             R6 R2
       64 CALL                             R4 2 1
       65 LOADK                            R6 K17 ["%+0"]
       66 LOADK                            R7 K18 ["+"]
       67 NAMECALL                         R4 R4 K19 ["gsub"]
       69 CALL                             R4 3 1
       70 LOADK                            R6 K20 ["%-0"]
       71 LOADK                            R7 K21 ["-"]
       72 NAMECALL                         R4 R4 K19 ["gsub"]
       74 CALL                             R4 3 1
       75 LOADK                            R6 K22 ["0*e"]
       76 LOADK                            R7 K14 ["e"]
       77 NAMECALL                         R4 R4 K19 ["gsub"]
       79 CALL                             R4 3 1
       80 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
