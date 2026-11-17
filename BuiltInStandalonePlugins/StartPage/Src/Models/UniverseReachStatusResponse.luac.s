PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+11]
        7 LOADK                            R1 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1
       17 NEWTABLE                         R1 0 4
       19 LOADK                            R4 K5 ["chipStatus"]
       20 LOADK                            R5 K6 ["iconName"]
       21 LOADK                            R6 K7 ["translatedStatus"]
       22 LOADK                            R7 K8 ["variant"]
       23 SETLIST                          R1 R4 4 [1]
       25 LOADNIL                          R2
       26 LOADNIL                          R3
       27 FORGPREP                         R1
       28 GETTABLE                         R6 R0 R5
       29 JUMPIFEQKNIL                     R6 ; [+19]
       31 FASTCALL1                        TYPEOF R6 ; [+3]
       32 MOVE                             R8 R6
       33 GETIMPORT                        R7 K1 [typeof]
       35 CALL                             R7 1 1
       36 JUMPIFEQKS                       R7 K9 ["string"] ; [+12]
       38 LOADK                            R7 K10 ["\"%*\" > Expected string or nil, got %*"]
       39 MOVE                             R9 R5
       40 FASTCALL1                        TYPEOF R6 ; [+3]
       41 MOVE                             R11 R6
       42 GETIMPORT                        R10 K1 [typeof]
       44 CALL                             R10 1 1
       45 NAMECALL                         R7 R7 K4 ["format"]
       47 CALL                             R7 3 1
       48 RETURN                           R7 1
       49 FORGLOOP                         R1 2 ; [-22]
       51 LOADNIL                          R1
       52 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
