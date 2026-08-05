PROTO_0:
        0 LOADK                            R3 K0 ["^%s*(%d+)%s*,%s*(%d+)%s*,%s*(%d+)%s*%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R3 K0 ["^%s*%#?(%x%x)(%x%x)(%x%x)%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R3 K0 ["^%s*(%d+)%s*,%s*(%d+)%s*,%s*(%d+)%s*%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_3:
        0 LOADK                            R4 K0 ["^%s*%#?(%x%x%x%x%x%x)%s*$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R3 K0 ["^%s*(%d?%d?%d)%s*,%s*(%d?%d?%d)%s*,%s*(%d?%d?%d)%s*%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 3
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 JUMPIFEQKNIL                     R2 ; [+3]
        8 JUMPIFNOTEQKNIL                  R3 ; [+3]
       10 LOADB                            R4 0
       11 RETURN                           R4 1
       12 FASTCALL1                        TONUMBER R1 ; [+3]
       13 MOVE                             R5 R1
       14 GETIMPORT                        R4 K3 [tonumber]
       16 CALL                             R4 1 1
       17 LOADN                            R5 255
       18 JUMPIFLT                         R5 R4 ; [+17]
       20 FASTCALL1                        TONUMBER R2 ; [+3]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R4 K3 [tonumber]
       24 CALL                             R4 1 1
       25 LOADN                            R5 255
       26 JUMPIFLT                         R5 R4 ; [+9]
       28 FASTCALL1                        TONUMBER R3 ; [+3]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R4 K3 [tonumber]
       32 CALL                             R4 1 1
       33 LOADN                            R5 255
       34 JUMPIFNOTLT                      R5 R4 ; [+3]
       36 LOADB                            R4 0
       37 RETURN                           R4 1
       38 LOADB                            R4 1
       39 RETURN                           R4 1

PROTO_5:
        0 LOADK                            R3 K0 ["^%s*(%d?%d?%d)%s*,%s*(%d?%d?%d)%s*,%s*(%d?%d?%d)%s*%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 3
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 JUMPIFEQKNIL                     R2 ; [+3]
        8 JUMPIFNOTEQKNIL                  R3 ; [+3]
       10 LOADB                            R4 0
       11 RETURN                           R4 1
       12 FASTCALL1                        TONUMBER R1 ; [+3]
       13 MOVE                             R5 R1
       14 GETIMPORT                        R4 K3 [tonumber]
       16 CALL                             R4 1 1
       17 LOADN                            R5 360
       18 JUMPIFNOTLT                      R5 R4 ; [+3]
       20 LOADB                            R4 0
       21 RETURN                           R4 1
       22 FASTCALL1                        TONUMBER R2 ; [+3]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R4 K3 [tonumber]
       26 CALL                             R4 1 1
       27 LOADN                            R5 100
       28 JUMPIFLT                         R5 R4 ; [+9]
       30 FASTCALL1                        TONUMBER R3 ; [+3]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R4 K3 [tonumber]
       34 CALL                             R4 1 1
       35 LOADN                            R5 100
       36 JUMPIFNOTLT                      R5 R4 ; [+3]
       38 LOADB                            R4 0
       39 RETURN                           R4 1
       40 LOADB                            R4 1
       41 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"RGBFromRGBString", "RGBFromHexString", "HSVFromHSVString", "validateHex", "validateRGB", "validateHSV"}]
        2 DUPCLOSURE                       R1 K7 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["RGBFromRGBString"]
        5 DUPCLOSURE                       R1 K8 [PROTO_1]
        6 SETTABLEKS                       R1 R0 K1 ["RGBFromHexString"]
        8 DUPCLOSURE                       R1 K9 [PROTO_2]
        9 SETTABLEKS                       R1 R0 K2 ["HSVFromHSVString"]
       11 DUPCLOSURE                       R1 K10 [PROTO_3]
       12 SETTABLEKS                       R1 R0 K3 ["validateHex"]
       14 DUPCLOSURE                       R1 K11 [PROTO_4]
       15 SETTABLEKS                       R1 R0 K4 ["validateRGB"]
       17 DUPCLOSURE                       R1 K12 [PROTO_5]
       18 SETTABLEKS                       R1 R0 K5 ["validateHSV"]
       20 RETURN                           R0 1
