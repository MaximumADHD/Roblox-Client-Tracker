PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["R"]
        2 MULK                             R2 R3 K0 [255]
        3 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        4 GETIMPORT                        R1 K4 [math.floor]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R4 R0 K5 ["G"]
        9 MULK                             R3 R4 K0 [255]
       10 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       11 GETIMPORT                        R2 K4 [math.floor]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R5 R0 K6 ["B"]
       16 MULK                             R4 R5 K0 [255]
       17 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       18 GETIMPORT                        R3 K4 [math.floor]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K9 [string.format]
       23 LOADK                            R5 K10 ["#%02X%02X%02X"]
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 MOVE                             R8 R3
       27 CALL                             R4 4 -1
       28 RETURN                           R4 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Color3.fromHex]
        2 LOADK                            R2 K3 ["#"]
        3 GETUPVAL                         R3 0
        4 CONCAT                           R1 R2 R3
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^#"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETIMPORT                        R1 K6 [string.match]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K7 ["^[0-9A-Fa-f]+$"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+4]
       13 LOADNIL                          R1
       14 LOADK                            R2 K8 ["InvalidHexCharacters"]
       15 CLOSEUPVALS                      R0
       16 RETURN                           R1 2
       17 LENGTH                           R1 R0
       18 JUMPIFEQKN                       R1 K9 [3] ; [+7]
       20 JUMPIFEQKN                       R1 K10 [6] ; [+5]
       22 LOADNIL                          R2
       23 LOADK                            R3 K11 ["HexCharCount"]
       24 CLOSEUPVALS                      R0
       25 RETURN                           R2 2
       26 JUMPIFNOTEQKN                    R1 K9 [3] ; [+54]
       28 GETIMPORT                        R2 K13 [string.format]
       30 LOADK                            R3 K14 ["%s%s%s%s%s%s"]
       31 LOADN                            R6 1
       32 LOADN                            R7 1
       33 FASTCALL3                        STRING_SUB R0 R6 R7
       35 MOVE                             R5 R0
       36 GETIMPORT                        R4 K16 [string.sub]
       38 CALL                             R4 3 1
       39 LOADN                            R7 1
       40 LOADN                            R8 1
       41 FASTCALL3                        STRING_SUB R0 R7 R8
       43 MOVE                             R6 R0
       44 GETIMPORT                        R5 K16 [string.sub]
       46 CALL                             R5 3 1
       47 LOADN                            R8 2
       48 LOADN                            R9 2
       49 FASTCALL3                        STRING_SUB R0 R8 R9
       51 MOVE                             R7 R0
       52 GETIMPORT                        R6 K16 [string.sub]
       54 CALL                             R6 3 1
       55 LOADN                            R9 2
       56 LOADN                            R10 2
       57 FASTCALL3                        STRING_SUB R0 R9 R10
       59 MOVE                             R8 R0
       60 GETIMPORT                        R7 K16 [string.sub]
       62 CALL                             R7 3 1
       63 LOADN                            R10 3
       64 LOADN                            R11 3
       65 FASTCALL3                        STRING_SUB R0 R10 R11
       67 MOVE                             R9 R0
       68 GETIMPORT                        R8 K16 [string.sub]
       70 CALL                             R8 3 1
       71 LOADN                            R11 3
       72 LOADN                            R12 3
       73 FASTCALL3                        STRING_SUB R0 R11 R12
       75 MOVE                             R10 R0
       76 GETIMPORT                        R9 K16 [string.sub]
       78 CALL                             R9 3 1
       79 CALL                             R2 7 1
       80 MOVE                             R0 R2
       81 GETIMPORT                        R2 K18 [pcall]
       83 NEWCLOSURE                       R3 P0
       84 CAPTURE                          REF R0
       85 CALL                             R2 1 2
       86 JUMPIF                           R2 ; [+4]
       87 LOADNIL                          R4
       88 LOADK                            R5 K19 ["FailedToParseHex"]
       89 CLOSEUPVALS                      R0
       90 RETURN                           R4 2
       91 MOVE                             R4 R3
       92 LOADNIL                          R5
       93 CLOSEUPVALS                      R0
       94 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 DUPTABLE                         R2 K4 [{"color3ToHex", "hexToColor3"}]
        4 SETTABLEKS                       R0 R2 K2 ["color3ToHex"]
        6 SETTABLEKS                       R1 R2 K3 ["hexToColor3"]
        8 RETURN                           R2 1
