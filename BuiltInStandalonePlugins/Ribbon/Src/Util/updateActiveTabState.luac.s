PROTO_0:
        0 LOADNIL                          R2
        1 NEWTABLE                         R3 0 0
        3 MOVE                             R4 R0
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEKS                       R9 R8 K0 ["Visible"]
        9 JUMPIFNOT                        R9 ; [+30]
       10 GETTABLEKS                       R11 R8 K1 ["Identifier"]
       12 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       14 MOVE                             R10 R3
       15 GETIMPORT                        R9 K4 [table.insert]
       17 CALL                             R9 2 0
       18 JUMPIFNOT                        R1 ; [+21]
       19 GETTABLEKS                       R10 R8 K1 ["Identifier"]
       21 GETTABLEKS                       R9 R10 K5 ["Type"]
       23 GETTABLEKS                       R11 R1 K1 ["Identifier"]
       25 GETTABLEKS                       R10 R11 K5 ["Type"]
       27 JUMPIFNOTEQ                      R9 R10 ; [+12]
       29 GETTABLEKS                       R10 R8 K1 ["Identifier"]
       31 GETTABLEKS                       R9 R10 K6 ["Filename"]
       33 GETTABLEKS                       R11 R1 K1 ["Identifier"]
       35 GETTABLEKS                       R10 R11 K6 ["Filename"]
       37 JUMPIFNOTEQ                      R9 R10 ; [+2]
       39 LENGTH                           R2 R3
       40 FORGLOOP                         R4 2 ; [-34]
       42 LENGTH                           R4 R3
       43 JUMPIFNOTEQKN                    R4 K7 [0] ; [+3]
       45 LOADNIL                          R4
       46 RETURN                           R4 1
       47 JUMPIF                           R1 ; [+8]
       48 DUPTABLE                         R4 K9 [{"Identifier", "VisibleTabIndex"}]
       49 GETTABLEN                        R5 R3 1
       50 SETTABLEKS                       R5 R4 K1 ["Identifier"]
       52 LOADN                            R5 1
       53 SETTABLEKS                       R5 R4 K8 ["VisibleTabIndex"]
       55 RETURN                           R4 1
       56 JUMPIFNOT                        R2 ; [+8]
       57 DUPTABLE                         R4 K9 [{"Identifier", "VisibleTabIndex"}]
       58 GETTABLEKS                       R5 R1 K1 ["Identifier"]
       60 SETTABLEKS                       R5 R4 K1 ["Identifier"]
       62 SETTABLEKS                       R2 R4 K8 ["VisibleTabIndex"]
       64 RETURN                           R4 1
       65 GETTABLEKS                       R5 R1 K8 ["VisibleTabIndex"]
       67 LENGTH                           R6 R3
       68 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       70 GETIMPORT                        R4 K12 [math.min]
       72 CALL                             R4 2 1
       73 GETTABLE                         R5 R3 R4
       74 DUPTABLE                         R6 K9 [{"Identifier", "VisibleTabIndex"}]
       75 SETTABLEKS                       R5 R6 K1 ["Identifier"]
       77 SETTABLEKS                       R4 R6 K8 ["VisibleTabIndex"]
       79 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
