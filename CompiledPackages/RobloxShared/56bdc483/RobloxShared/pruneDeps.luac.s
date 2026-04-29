PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 NEWTABLE                         R1 0 0
        6 LOADK                            R4 K0 ["\n"]
        7 NAMECALL                         R2 R0 K1 ["split"]
        9 CALL                             R2 2 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K2 ["LoadedCode.JestRoblox._Index."]
       12 NAMECALL                         R7 R6 K3 ["find"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+11]
       16 GETUPVAL                         R7 0
       17 MOVE                             R8 R6
       18 CALL                             R7 1 1
       19 MOVE                             R6 R7
       20 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       22 MOVE                             R8 R1
       23 MOVE                             R9 R6
       24 GETIMPORT                        R7 K6 [table.insert]
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-17]
       29 GETIMPORT                        R2 K8 [table.concat]
       31 MOVE                             R3 R1
       32 LOADK                            R4 K0 ["\n"]
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["cleanLoadStringStack"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
