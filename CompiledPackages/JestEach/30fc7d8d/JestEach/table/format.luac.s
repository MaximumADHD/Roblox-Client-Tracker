PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R2 2
        8 ADDK                             R1 R2 K1 [1]
        9 SETUPVAL                         R1 2
       10 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["%%"] ; [+3]
        2 LOADK                            R1 K1 ["%"]
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 1
        6 JUMPIFNOTLT                      R2 R1 ; [+2]
        8 RETURN                           R0 1
        9 JUMPIFNOTEQKS                    R0 K2 ["%s"] ; [+25]
       11 LOADNIL                          R1
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R3 R4 R5
       15 FASTCALL1                        TYPEOF R3 ; [+2]
       16 GETIMPORT                        R2 K4 [typeof]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K5 ["function"] ; [+3]
       21 LOADK                            R1 K6 ["Function"]
       22 JUMP                             ; [+8]
       23 GETUPVAL                         R4 2
       24 GETUPVAL                         R5 0
       25 GETTABLE                         R3 R4 R5
       26 FASTCALL1                        TOSTRING R3 ; [+2]
       27 GETIMPORT                        R2 K8 [tostring]
       29 CALL                             R2 1 1
       30 MOVE                             R1 R2
       31 GETUPVAL                         R3 0
       32 ADDK                             R2 R3 K9 [1]
       33 SETUPVAL                         R2 0
       34 RETURN                           R1 1
       35 JUMPIFNOTEQKS                    R0 K10 ["%d"] ; [+19]
       37 GETUPVAL                         R3 2
       38 GETUPVAL                         R4 0
       39 GETTABLE                         R2 R3 R4
       40 FASTCALL1                        TONUMBER R2 ; [+2]
       41 GETIMPORT                        R1 K12 [tonumber]
       43 CALL                             R1 1 1
       44 JUMPIF                           R1 ; [+1]
       45 GETUPVAL                         R1 3
       46 GETUPVAL                         R3 0
       47 ADDK                             R2 R3 K9 [1]
       48 SETUPVAL                         R2 0
       49 FASTCALL1                        TOSTRING R1 ; [+3]
       50 MOVE                             R3 R1
       51 GETIMPORT                        R2 K8 [tostring]
       53 CALL                             R2 1 1
       54 RETURN                           R2 1
       55 JUMPIFNOTEQKS                    R0 K13 ["%j"] ; [+15]
       57 GETIMPORT                        R1 K15 [pcall]
       59 NEWCLOSURE                       R2 P0
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U0
       63 CALL                             R1 1 2
       64 JUMPIF                           R1 ; [+5]
       65 GETUPVAL                         R4 0
       66 ADDK                             R3 R4 K9 [1]
       67 SETUPVAL                         R3 0
       68 LOADK                            R3 K16 ["[Circular]"]
       69 RETURN                           R3 1
       70 RETURN                           R2 1
       71 RETURN                           R0 1

PROTO_2:
        0 PREPVARARGS                      0
        1 LOADN                            R0 2
        2 NEWTABLE                         R1 0 0
        4 GETVARARGS                       R2 -1
        5 SETLIST                          R1 R2 -1 [1]
        7 GETTABLEN                        R2 R1 1
        8 LENGTH                           R3 R1
        9 LOADK                            R6 K0 ["%%[sdj%%]"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          REF R0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R4 R2 K1 ["gsub"]
       18 CALL                             R4 3 1
       19 CLOSEUPVALS                      R0
       20 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Number"]
       16 GETTABLEKS                       R3 R2 K7 ["NaN"]
       18 GETIMPORT                        R4 K9 [game]
       20 LOADK                            R6 K10 ["HttpService"]
       21 NAMECALL                         R4 R4 K11 ["GetService"]
       23 CALL                             R4 2 1
       24 DUPCLOSURE                       R5 K12 [PROTO_2]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 RETURN                           R5 1
