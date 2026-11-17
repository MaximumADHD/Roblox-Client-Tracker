PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R7
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 GETTABLE                         R13 R0 R6
       11 JUMPIFEQKNIL                     R13 ; [+35]
       13 GETTABLE                         R14 R0 R6
       14 GETTABLE                         R13 R14 R11
       15 JUMPIFEQKNIL                     R13 ; [+31]
       17 MOVE                             R14 R13
       18 LOADNIL                          R15
       19 LOADNIL                          R16
       20 FORGPREP                         R14
       21 GETTABLEKS                       R20 R18 K0 ["targetName"]
       23 GETTABLE                         R19 R2 R20
       24 JUMPIFNOTEQKNIL                  R19 ; [+6]
       26 GETTABLEKS                       R19 R18 K0 ["targetName"]
       28 NEWTABLE                         R20 0 0
       30 SETTABLE                         R20 R2 R19
       31 GETTABLEKS                       R21 R18 K0 ["targetName"]
       33 GETTABLE                         R20 R2 R21
       34 GETTABLEKS                       R21 R18 K1 ["vertex"]
       36 GETTABLE                         R19 R20 R21
       37 JUMPIFNOTEQKNIL                  R19 ; [+7]
       39 GETTABLEKS                       R20 R18 K0 ["targetName"]
       41 GETTABLE                         R19 R2 R20
       42 GETTABLEKS                       R20 R18 K1 ["vertex"]
       44 SETTABLE                         R12 R19 R20
       45 FORGLOOP                         R14 2 ; [-25]
       47 FORGLOOP                         R8 2 ; [-38]
       49 FORGLOOP                         R3 2 ; [-44]
       51 MOVE                             R3 R2
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 FORGPREP                         R3
       55 GETTABLE                         R8 R1 R6
       56 JUMPIFNOTEQKNIL                  R8 ; [+4]
       58 NEWTABLE                         R8 0 0
       60 SETTABLE                         R8 R1 R6
       61 MOVE                             R8 R7
       62 LOADNIL                          R9
       63 LOADNIL                          R10
       64 FORGPREP                         R8
       65 GETTABLE                         R13 R1 R6
       66 JUMPIFEQKNIL                     R13 ; [+5]
       68 GETTABLE                         R14 R1 R6
       69 GETTABLE                         R13 R14 R11
       70 JUMPIFNOTEQKNIL                  R13 ; [+4]
       72 GETTABLE                         R13 R1 R6
       73 MINUS                            R14 R12
       74 SETTABLE                         R14 R13 R11
       75 FORGLOOP                         R8 2 ; [-11]
       77 FORGLOOP                         R3 2 ; [-23]
       79 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
