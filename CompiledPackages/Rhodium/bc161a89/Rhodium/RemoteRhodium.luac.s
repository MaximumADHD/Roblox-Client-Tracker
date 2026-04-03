PROTO_0:
        0 LOADK                            R3 K0 ["("]
        1 LOADN                            R4 1
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 1
        6 NAMECALL                         R2 R0 K2 ["reverse"]
        8 CALL                             R2 1 1
        9 LOADK                            R4 K3 [")"]
       10 LOADN                            R5 1
       11 LOADB                            R6 1
       12 NAMECALL                         R2 R2 K1 ["find"]
       14 CALL                             R2 4 1
       15 JUMPIFEQKNIL                     R2 ; [+4]
       17 LENGTH                           R4 R0
       18 SUB                              R3 R4 R2
       19 ADDK                             R2 R3 K4 [1]
       20 NEWTABLE                         R3 0 0
       22 JUMPIFNOT                        R1 ; [+31]
       23 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       25 MOVE                             R5 R2
       26 LOADK                            R6 K5 ["invalid syntex, expecting \")\""]
       27 GETIMPORT                        R4 K7 [assert]
       29 CALL                             R4 2 0
       30 ADDK                             R6 R1 K4 [1]
       31 SUBK                             R7 R2 K4 [1]
       32 NAMECALL                         R4 R0 K8 ["sub"]
       34 CALL                             R4 3 1
       35 LENGTH                           R5 R4
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R5 ; [+10]
       39 GETUPVAL                         R5 0
       40 LOADK                            R8 K9 ["["]
       41 MOVE                             R9 R4
       42 LOADK                            R10 K10 ["]"]
       43 CONCAT                           R7 R8 R10
       44 NAMECALL                         R5 R5 K11 ["JSONDecode"]
       46 CALL                             R5 2 1
       47 MOVE                             R3 R5
       48 LOADN                            R7 1
       49 SUBK                             R8 R1 K4 [1]
       50 NAMECALL                         R5 R0 K8 ["sub"]
       52 CALL                             R5 3 1
       53 MOVE                             R0 R5
       54 LOADK                            R6 K12 ["."]
       55 NAMECALL                         R4 R0 K13 ["split"]
       57 CALL                             R4 2 1
       58 GETUPVAL                         R5 1
       59 LOADN                            R8 1
       60 LENGTH                           R6 R4
       61 LOADN                            R7 1
       62 FORNPREP                         R6
       63 GETTABLE                         R9 R4 R8
       64 MOVE                             R12 R9
       65 NAMECALL                         R10 R5 K14 ["FindFirstChild"]
       67 CALL                             R10 2 1
       68 MOVE                             R5 R10
       69 LOADK                            R13 K15 ["can not find "]
       70 MOVE                             R14 R9
       71 CONCAT                           R12 R13 R14
       72 FASTCALL2                        ASSERT R5 R12 ; [+4]
       74 MOVE                             R11 R5
       75 GETIMPORT                        R10 K7 [assert]
       77 CALL                             R10 2 0
       78 JUMPIFNOT                        R5 ; [+32]
       79 LOADK                            R12 K16 ["ModuleScript"]
       80 NAMECALL                         R10 R5 K17 ["IsA"]
       82 CALL                             R10 2 1
       83 JUMPIFNOT                        R10 ; [+27]
       84 GETIMPORT                        R10 K19 [require]
       86 MOVE                             R11 R5
       87 CALL                             R10 1 1
       88 FASTCALL1                        TYPEOF R10 ; [+3]
       89 MOVE                             R14 R10
       90 GETIMPORT                        R13 K21 [typeof]
       92 CALL                             R13 1 1
       93 JUMPIFEQKS                       R13 K22 ["function"] ; [+2]
       95 LOADB                            R12 0 +1
       96 LOADB                            R12 1
       97 FASTCALL2K                       ASSERT R12 K23 ; [+4]
       99 LOADK                            R13 K23 ["target is not a function"]
      100 GETIMPORT                        R11 K7 [assert]
      102 CALL                             R11 2 0
      103 MOVE                             R11 R10
      104 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
      105 MOVE                             R13 R3
      106 GETIMPORT                        R12 K25 [unpack]
      108 CALL                             R12 1 -1
      109 CALL                             R11 -1 -1
      110 RETURN                           R11 -1
      111 FORNLOOP                         R6
      112 LOADNIL                          R6
      113 RETURN                           R6 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RhodiumService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADNIL                          R1
        8 NEWTABLE                         R2 1 0
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R1
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          REF R1
       15 SETTABLEKS                       R4 R2 K4 ["setCommandPath"]
       17 GETIMPORT                        R4 K6 [pcall]
       19 DUPCLOSURE                       R5 K7 [PROTO_2]
       20 CALL                             R4 1 2
       21 JUMPIFNOT                        R4 ; [+2]
       22 SETTABLEKS                       R3 R5 K8 ["onCommand"]
       24 CLOSEUPVALS                      R1
       25 RETURN                           R2 1
