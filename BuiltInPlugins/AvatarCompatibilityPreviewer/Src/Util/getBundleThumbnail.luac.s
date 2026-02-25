PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQKNIL                  R2 ; [+16]
        4 LOADB                            R4 0
        5 JUMPIFNOTEQKNIL                  R1 ; [+5]
        7 JUMPIFEQKNIL                     R2 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K0 ; [+4]
       13 LOADK                            R5 K0 ["Neither width nor height can be empty on their own"]
       14 GETIMPORT                        R3 K2 [assert]
       16 CALL                             R3 2 0
       17 LOADN                            R1 150
       18 LOADN                            R2 150
       19 LOADK                            R4 K3 ["rbxthumb://type=BundleThumbnail&id=%*&w=%*&h=%*"]
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 NAMECALL                         R4 R4 K4 ["format"]
       25 CALL                             R4 4 1
       26 MOVE                             R3 R4
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
