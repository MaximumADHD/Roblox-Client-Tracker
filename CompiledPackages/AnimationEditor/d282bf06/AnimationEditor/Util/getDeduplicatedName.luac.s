PROTO_0:
        0 LOADNIL                          R2
        1 NAMECALL                         R3 R0 K0 ["GetChildren"]
        3 CALL                             R3 1 3
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R7 K1 ["Name"]
        7 JUMPIFNOTEQ                      R8 R1 ; [+5]
        9 JUMPIFNOTEQKNIL                  R2 ; [+48]
       11 LOADN                            R2 1
       12 JUMP                             ; [+45]
       13 GETTABLEKS                       R8 R7 K1 ["Name"]
       15 LOADN                            R10 1
       16 LENGTH                           R12 R1
       17 ADDK                             R11 R12 K2 [1]
       18 NAMECALL                         R8 R8 K3 ["sub"]
       20 CALL                             R8 3 1
       21 MOVE                             R10 R1
       22 LOADK                            R11 K4 [" "]
       23 CONCAT                           R9 R10 R11
       24 JUMPIFNOTEQ                      R8 R9 ; [+33]
       26 GETTABLEKS                       R8 R7 K1 ["Name"]
       28 LENGTH                           R11 R1
       29 ADDK                             R10 R11 K5 [2]
       30 NAMECALL                         R8 R8 K3 ["sub"]
       32 CALL                             R8 2 1
       33 LOADK                            R10 K6 ["([0-9]+)$"]
       34 NAMECALL                         R8 R8 K7 ["match"]
       36 CALL                             R8 2 1
       37 JUMPIFEQKNIL                     R8 ; [+20]
       39 FASTCALL1                        TONUMBER R8 ; [+3]
       40 MOVE                             R10 R8
       41 GETIMPORT                        R9 K9 [tonumber]
       43 CALL                             R9 1 1
       44 JUMPIFEQKNIL                     R9 ; [+13]
       46 JUMPIFNOTEQKNIL                  R2 ; [+3]
       48 MOVE                             R2 R9
       49 JUMP                             ; [+8]
       50 FASTCALL2                        MATH_MAX R2 R9 ; [+5]
       52 MOVE                             R11 R2
       53 MOVE                             R12 R9
       54 GETIMPORT                        R10 K12 [math.max]
       56 CALL                             R10 2 1
       57 MOVE                             R2 R10
       58 FORGLOOP                         R3 2 ; [-54]
       60 JUMPIFNOTEQKNIL                  R2 ; [+3]
       62 MOVE                             R3 R1
       63 RETURN                           R3 1
       64 LOADK                            R4 K13 ["%* %*"]
       65 MOVE                             R6 R1
       66 ADDK                             R7 R2 K2 [1]
       67 NAMECALL                         R4 R4 K14 ["format"]
       69 CALL                             R4 3 1
       70 MOVE                             R3 R4
       71 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
