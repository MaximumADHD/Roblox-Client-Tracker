PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+6]
        3 GETIMPORT                        R0 K1 [error]
        5 LOADK                            R1 K2 ["assetIdNumber is nil"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R0 R0 K3 ["GetProductInfoAsync"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 1
       14 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+33]
        8 LOADN                            R4 1
        9 LOADN                            R5 13
       10 FASTCALL3                        STRING_SUB R0 R4 R5
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K4 [string.sub]
       15 CALL                             R2 3 1
       16 JUMPIFEQKS                       R2 K5 ["rbxassetid://"] ; [+5]
       18 LOADNIL                          R2
       19 LOADK                            R3 K6 ["Invalid assetId format"]
       20 CLOSEUPVALS                      R1
       21 RETURN                           R2 2
       22 FASTCALL2K                       STRING_SUB R0 K7 ; [+5]
       24 MOVE                             R4 R0
       25 LOADK                            R5 K7 [14]
       26 GETIMPORT                        R3 K4 [string.sub]
       28 CALL                             R3 2 1
       29 FASTCALL1                        TONUMBER R3 ; [+2]
       30 GETIMPORT                        R2 K9 [tonumber]
       32 CALL                             R2 1 1
       33 MOVE                             R1 R2
       34 JUMPIF                           R1 ; [+6]
       35 LOADNIL                          R2
       36 LOADK                            R3 K6 ["Invalid assetId format"]
       37 CLOSEUPVALS                      R1
       38 RETURN                           R2 2
       39 JUMP                             ; [+1]
       40 MOVE                             R1 R0
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R2 R3 K10 ["isCli"]
       44 CALL                             R2 0 1
       45 JUMPIF                           R2 ; [+5]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K11 ["isFTF"]
       49 CALL                             R2 0 1
       50 JUMPIFNOT                        R2 ; [+4]
       51 LOADNIL                          R2
       52 LOADNIL                          R3
       53 CLOSEUPVALS                      R1
       54 RETURN                           R2 2
       55 LOADNIL                          R2
       56 GETIMPORT                        R3 K13 [pcall]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          REF R1
       60 CAPTURE                          REF R2
       61 CAPTURE                          UPVAL U1
       62 CALL                             R3 1 2
       63 JUMPIFNOT                        R3 ; [+4]
       64 MOVE                             R5 R2
       65 LOADNIL                          R6
       66 CLOSEUPVALS                      R1
       67 RETURN                           R5 2
       68 LOADNIL                          R5
       69 MOVE                             R6 R4
       70 CLOSEUPVALS                      R1
       71 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["MarketplaceService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 1 0
       22 DUPCLOSURE                       R4 K12 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K13 ["safeGetProductInfoAsync"]
       27 RETURN                           R3 1
