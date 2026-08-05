PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["up"]
        2 GETTABLEKS                       R3 R1 K0 ["up"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K1 ["low"]
        8 GETTABLEKS                       R4 R1 K1 ["low"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K0 ["up"]
       17 GETTABLEKS                       R4 R1 K0 ["up"]
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 SETTABLE                         R8 R4 R9
        7 FORGLOOP                         R5 2 ; [-2]
        9 NEWTABLE                         R5 0 0
       11 MOVE                             R6 R0
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETTABLE                         R11 R3 R10
       16 GETTABLE                         R12 R2 R10
       17 LOADNIL                          R13
       18 LOADNIL                          R14
       19 FORGPREP                         R12
       20 GETTABLE                         R17 R4 R16
       21 JUMPIFEQKNIL                     R17 ; [+14]
       23 DUPTABLE                         R20 K2 [{"up", "low"}]
       24 SETTABLEKS                       R9 R20 K0 ["up"]
       26 GETTABLE                         R22 R11 R16
       27 ADD                              R21 R17 R22
       28 SETTABLEKS                       R21 R20 K1 ["low"]
       30 FASTCALL2                        TABLE_INSERT R5 R20 ; [+4]
       32 MOVE                             R19 R5
       33 GETIMPORT                        R18 K5 [table.insert]
       35 CALL                             R18 2 0
       36 FORGLOOP                         R12 2 ; [-17]
       38 FORGLOOP                         R6 2 ; [-24]
       40 GETIMPORT                        R6 K7 [table.sort]
       42 MOVE                             R7 R5
       43 DUPCLOSURE                       R8 K8 [PROTO_0]
       44 CALL                             R6 2 0
       45 LOADN                            R6 0
       46 LOADN                            R9 1
       47 LENGTH                           R7 R5
       48 LOADN                            R8 1
       49 FORNPREP                         R7
       50 ADDK                             R12 R9 K9 [1]
       51 LENGTH                           R10 R5
       52 LOADN                            R11 1
       53 FORNPREP                         R10
       54 GETTABLE                         R13 R5 R9
       55 GETTABLEKS                       R13 R13 K1 ["low"]
       57 GETTABLE                         R14 R5 R12
       58 GETTABLEKS                       R14 R14 K1 ["low"]
       60 JUMPIFNOTLT                      R14 R13 ; [+2]
       62 ADDK                             R6 R6 K9 [1]
       63 FORNLOOP                         R10
       64 FORNLOOP                         R7
       65 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Organize"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 RETURN                           R2 1
