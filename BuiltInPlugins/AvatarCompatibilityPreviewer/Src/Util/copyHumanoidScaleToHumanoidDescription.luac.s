PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+6]
        7 LOADK                            R5 K1 ["NumberValue"]
        8 NAMECALL                         R3 R2 K2 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R4 R2 K3 ["Value"]
       16 SETTABLE                         R4 R3 R1
       17 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 LOADK                            R5 K0 ["BodyDepthScale"]
        4 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
        6 CALL                             R3 2 1
        7 JUMPIFEQKNIL                     R3 ; [+11]
        9 LOADK                            R6 K2 ["NumberValue"]
       10 NAMECALL                         R4 R3 K3 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIF                           R4 ; [+1]
       14 JUMP                             ; [+4]
       15 GETTABLEKS                       R4 R3 K4 ["Value"]
       17 SETTABLEKS                       R4 R0 K5 ["DepthScale"]
       19 LOADK                            R5 K6 ["BodyHeightScale"]
       20 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       22 CALL                             R3 2 1
       23 JUMPIFEQKNIL                     R3 ; [+11]
       25 LOADK                            R6 K2 ["NumberValue"]
       26 NAMECALL                         R4 R3 K3 ["IsA"]
       28 CALL                             R4 2 1
       29 JUMPIF                           R4 ; [+1]
       30 JUMP                             ; [+4]
       31 GETTABLEKS                       R4 R3 K4 ["Value"]
       33 SETTABLEKS                       R4 R0 K7 ["HeightScale"]
       35 LOADK                            R5 K8 ["BodyProportionScale"]
       36 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       38 CALL                             R3 2 1
       39 JUMPIFEQKNIL                     R3 ; [+11]
       41 LOADK                            R6 K2 ["NumberValue"]
       42 NAMECALL                         R4 R3 K3 ["IsA"]
       44 CALL                             R4 2 1
       45 JUMPIF                           R4 ; [+1]
       46 JUMP                             ; [+4]
       47 GETTABLEKS                       R4 R3 K4 ["Value"]
       49 SETTABLEKS                       R4 R0 K9 ["ProportionScale"]
       51 LOADK                            R5 K10 ["BodyWidthScale"]
       52 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       54 CALL                             R3 2 1
       55 JUMPIFEQKNIL                     R3 ; [+11]
       57 LOADK                            R6 K2 ["NumberValue"]
       58 NAMECALL                         R4 R3 K3 ["IsA"]
       60 CALL                             R4 2 1
       61 JUMPIF                           R4 ; [+1]
       62 JUMP                             ; [+4]
       63 GETTABLEKS                       R4 R3 K4 ["Value"]
       65 SETTABLEKS                       R4 R0 K11 ["WidthScale"]
       67 LOADK                            R5 K12 ["BodyTypeScale"]
       68 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       70 CALL                             R3 2 1
       71 JUMPIFEQKNIL                     R3 ; [+11]
       73 LOADK                            R6 K2 ["NumberValue"]
       74 NAMECALL                         R4 R3 K3 ["IsA"]
       76 CALL                             R4 2 1
       77 JUMPIF                           R4 ; [+1]
       78 JUMP                             ; [+4]
       79 GETTABLEKS                       R4 R3 K4 ["Value"]
       81 SETTABLEKS                       R4 R0 K12 ["BodyTypeScale"]
       83 LOADK                            R5 K13 ["HeadScale"]
       84 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       86 CALL                             R3 2 1
       87 JUMPIFEQKNIL                     R3 ; [+11]
       89 LOADK                            R6 K2 ["NumberValue"]
       90 NAMECALL                         R4 R3 K3 ["IsA"]
       92 CALL                             R4 2 1
       93 JUMPIF                           R4 ; [+1]
       94 RETURN                           R0 0
       95 GETTABLEKS                       R4 R3 K4 ["Value"]
       97 SETTABLEKS                       R4 R0 K13 ["HeadScale"]
       99 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
