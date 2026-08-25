PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["definition"]
        2 GETTABLEKS                       R1 R1 K0 ["definition"]
        4 GETTABLEKS                       R1 R1 K1 ["name"]
        6 LOADB                            R3 0
        7 JUMPIFEQKNIL                     R1 ; [+5]
        9 JUMPIFNOTEQKS                    R1 K2 [""] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       15 LOADK                            R4 K3 ["Tool name is required"]
       16 GETIMPORT                        R2 K5 [assert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R5 0
       20 GETTABLE                         R4 R5 R1
       21 JUMPIFEQKNIL                     R4 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 LOADK                            R5 K6 ["Tool already registered: %*"]
       26 MOVE                             R7 R1
       27 NAMECALL                         R5 R5 K7 ["format"]
       29 CALL                             R5 2 1
       30 MOVE                             R4 R5
       31 FASTCALL2                        ASSERT R3 R4 ; [+3]
       33 GETIMPORT                        R2 K5 [assert]
       35 CALL                             R2 2 0
       36 GETUPVAL                         R2 0
       37 SETTABLE                         R0 R2 R1
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 GETIMPORT                        R1 K4 [table.sort]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 NEWTABLE                         R1 0 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          REF R1
        7 SETTABLEKS                       R2 R0 K0 ["register"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          REF R1
       11 SETTABLEKS                       R2 R0 K1 ["get"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          REF R1
       15 SETTABLEKS                       R2 R0 K2 ["getToolNames"]
       17 NEWCLOSURE                       R2 P3
       18 CAPTURE                          REF R1
       19 SETTABLEKS                       R2 R0 K3 ["clear"]
       21 CLOSEUPVALS                      R1
       22 RETURN                           R0 1
