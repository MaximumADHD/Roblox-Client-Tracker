PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 DUPCLOSURE                       R1 K2 [PROTO_0]
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 0
        7 JUMPIFNOT                        R0 ; [+21]
        8 NAMECALL                         R3 R1 K3 ["GetCommandLineArgs"]
       10 CALL                             R3 1 3
       11 FORGPREP                         R3
       12 LOADK                            R10 K4 ["="]
       13 NAMECALL                         R8 R7 K5 ["split"]
       15 CALL                             R8 2 1
       16 GETTABLEN                        R9 R8 1
       17 LOADK                            R11 K6 ["^%-%-"]
       18 LOADK                            R12 K7 [""]
       19 NAMECALL                         R9 R9 K8 ["gsub"]
       21 CALL                             R9 3 1
       22 SETTABLEN                        R9 R8 1
       23 GETTABLEN                        R9 R8 1
       24 GETTABLEN                        R11 R8 2
       25 ORK                              R10 R11 K9 [True]
       26 SETTABLE                         R10 R2 R9
       27 FORGLOOP                         R3 2 ; [-16]
       29 RETURN                           R2 1
