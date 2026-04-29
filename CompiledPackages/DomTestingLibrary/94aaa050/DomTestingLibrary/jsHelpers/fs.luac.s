PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FileSystemService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Exists"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R0 R0 K1 ["CreateDirectories"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["/"]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 GETIMPORT                        R2 K4 [table.pack]
        6 LOADN                            R5 1
        7 LENGTH                           R7 R1
        8 SUBK                             R6 R7 K5 [1]
        9 FASTCALL3                        TABLE_UNPACK R1 R5 R6
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K7 [table.unpack]
       14 CALL                             R3 3 -1
       15 CALL                             R2 -1 1
       16 MOVE                             R1 R2
       17 GETIMPORT                        R2 K9 [table.concat]
       19 MOVE                             R3 R1
       20 LOADK                            R4 K0 ["/"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K11 [pcall]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R2
       27 CALL                             R3 1 2
       28 JUMPIF                           R3 ; [+9]
       29 LOADK                            R7 K12 ["Error%(13%): Access Denied%. Path is outside of sandbox%."]
       30 NAMECALL                         R5 R4 K13 ["find"]
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+4]
       34 GETIMPORT                        R5 K15 [error]
       36 LOADK                            R6 K16 ["Provided path is invalid: you likely need to provide a different argument to --fs.read.\nYou may need to pass in `--fs.read=$PWD`"]
       37 CALL                             R5 1 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+10]
        3 GETIMPORT                        R2 K1 [pcall]
        5 DUPCLOSURE                       R3 K2 [PROTO_0]
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+2]
        8 MOVE                             R1 R3
        9 JUMPIF                           R1 ; [+1]
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R1 0
       13 JUMPIF                           R1 ; [+8]
       14 GETIMPORT                        R1 K4 [error]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K5 ["new"]
       19 LOADK                            R3 K6 ["Attempting to read file in an environment where FileSystemService is inaccessible."]
       20 CALL                             R2 1 -1
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R1 2
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 0
       26 MOVE                             R3 R0
       27 NAMECALL                         R1 R1 K7 ["ReadFile"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Error"]
       16 LOADNIL                          R3
       17 DUPCLOSURE                       R4 K7 [PROTO_1]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          REF R3
       20 DUPTABLE                         R6 K9 [{"readFileSync"}]
       21 NEWCLOSURE                       R7 P2
       22 CAPTURE                          REF R3
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R5
       25 SETTABLEKS                       R7 R6 K8 ["readFileSync"]
       27 CLOSEUPVALS                      R3
       28 RETURN                           R6 1
