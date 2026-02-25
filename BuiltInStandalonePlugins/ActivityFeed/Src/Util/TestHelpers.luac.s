PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K1 [ipairs]
        6 NAMECALL                         R3 R0 K2 ["GetDescendants"]
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 3
       10 FORGPREP_INEXT                   R2
       11 LOADK                            R9 K3 ["TextLabel"]
       12 NAMECALL                         R7 R6 K4 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+10]
       16 LOADK                            R9 K5 ["TextButton"]
       17 NAMECALL                         R7 R6 K4 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIF                           R7 ; [+5]
       21 LOADK                            R9 K6 ["TextBox"]
       22 NAMECALL                         R7 R6 K4 ["IsA"]
       24 CALL                             R7 2 1
       25 JUMPIFNOT                        R7 ; [+8]
       26 GETIMPORT                        R7 K9 [string.find]
       28 GETTABLEKS                       R8 R6 K10 ["Text"]
       30 MOVE                             R9 R1
       31 CALL                             R7 2 1
       32 JUMPIFNOT                        R7 ; [+1]
       33 RETURN                           R6 1
       34 FORGLOOP                         R2 2 [inext] ; [-24]
       36 LOADNIL                          R2
       37 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+22]
        5 GETTABLEKS                       R1 R0 K2 ["Visible"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K3 ["Parent"]
       12 JUMPIFNOT                        R1 ; [+12]
       13 GETTABLEKS                       R1 R0 K3 ["Parent"]
       15 LOADK                            R3 K0 ["GuiObject"]
       16 NAMECALL                         R1 R1 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R2 R0 K3 ["Parent"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1
       25 LOADB                            R1 1
       26 RETURN                           R1 1
       27 LOADB                            R1 0
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R1
        4 DUPTABLE                         R2 K4 [{"findFirstChildWithText", "isVisible"}]
        5 SETTABLEKS                       R0 R2 K2 ["findFirstChildWithText"]
        7 SETTABLEKS                       R1 R2 K3 ["isVisible"]
        9 RETURN                           R2 1
