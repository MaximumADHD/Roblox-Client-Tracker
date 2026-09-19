PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 NEWTABLE                         R1 0 0
        6 LOADK                            R4 K0 ["\n"]
        7 NAMECALL                         R2 R0 K1 ["split"]
        9 CALL                             R2 2 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K2 ["_Index."]
       12 NAMECALL                         R7 R6 K3 ["find"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+13]
       16 GETUPVAL                         R7 0
       17 JUMPIF                           R7 ; [+4]
       18 GETUPVAL                         R7 1
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 MOVE                             R6 R7
       22 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       24 MOVE                             R8 R1
       25 MOVE                             R9 R6
       26 GETIMPORT                        R7 K6 [table.insert]
       28 CALL                             R7 2 0
       29 FORGLOOP                         R2 2 ; [-19]
       31 GETIMPORT                        R2 K8 [table.concat]
       33 MOVE                             R3 R1
       34 LOADK                            R4 K0 ["\n"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 GETIMPORT                        R1 K3 [debug]
        5 GETTABLEKS                       R1 R1 K4 ["loadmodule"]
        7 GETIMPORT                        R2 K7 [Instance.new]
        9 LOADK                            R3 K8 ["ModuleScript"]
       10 CALL                             R2 1 -1
       11 CALL                             R0 -1 1
       12 GETIMPORT                        R1 K10 [require]
       14 GETIMPORT                        R2 K12 [script]
       16 GETTABLEKS                       R2 R2 K13 ["Parent"]
       18 GETTABLEKS                       R2 R2 K14 ["cleanLoadStringStack"]
       20 CALL                             R1 1 1
       21 DUPCLOSURE                       R2 K15 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1
