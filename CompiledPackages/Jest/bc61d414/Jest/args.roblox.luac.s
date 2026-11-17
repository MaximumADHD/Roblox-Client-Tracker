PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 NEWTABLE                         R2 0 0
        8 JUMPIFNOT                        R0 ; [+21]
        9 NAMECALL                         R3 R1 K3 ["GetCommandLineArgs"]
       11 CALL                             R3 1 3
       12 FORGPREP                         R3
       13 LOADK                            R10 K4 ["="]
       14 NAMECALL                         R8 R7 K5 ["split"]
       16 CALL                             R8 2 1
       17 GETTABLEN                        R9 R8 1
       18 LOADK                            R11 K6 ["^%-%-"]
       19 LOADK                            R12 K7 [""]
       20 NAMECALL                         R9 R9 K8 ["gsub"]
       22 CALL                             R9 3 1
       23 SETTABLEN                        R9 R8 1
       24 GETTABLEN                        R9 R8 1
       25 GETTABLEN                        R11 R8 2
       26 ORK                              R10 R11 K9 [True]
       27 SETTABLE                         R10 R2 R9
       28 FORGLOOP                         R3 2 ; [-16]
       30 RETURN                           R2 1
