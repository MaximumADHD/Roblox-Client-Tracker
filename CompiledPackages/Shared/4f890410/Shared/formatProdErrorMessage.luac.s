PROTO_0:
        0 PREPVARARGS                      1
        1 LOADK                            R2 K0 ["https://reactjs.org/docs/error-decoder.html?invariant="]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K2 [tostring]
        6 CALL                             R3 1 1
        7 CONCAT                           R1 R2 R3
        8 LOADK                            R3 K3 ["#"]
        9 FASTCALL1                        SELECT_VARARG R3 ; [+3]
       10 GETIMPORT                        R2 K5 [select]
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 1
       14 LOADN                            R5 1
       15 MOVE                             R3 R2
       16 LOADN                            R4 1
       17 FORNPREP                         R3
       18 MOVE                             R6 R1
       19 LOADK                            R7 K6 ["&args[]="]
       20 GETUPVAL                         R8 0
       21 GETIMPORT                        R10 K5 [select]
       23 MOVE                             R11 R5
       24 GETVARARGS                       R12 -1
       25 CALL                             R10 -1 -1
       26 NAMECALL                         R8 R8 K7 ["UrlEncode"]
       28 CALL                             R8 -1 1
       29 CONCAT                           R1 R6 R8
       30 FORNLOOP                         R3
       31 GETIMPORT                        R3 K10 [string.format]
       33 LOADK                            R4 K11 ["Minified React error #%d; visit %s for the full message or use the non-minified dev environment for full errors and additional helpful warnings."]
       34 MOVE                             R5 R0
       35 MOVE                             R6 R1
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
