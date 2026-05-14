PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+5]
        7 GETIMPORT                        R1 K2 [error]
        9 LOADK                            R2 K3 ["Wrap the component or one of its ancestors with ContextMenuActions.Provider"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createContext"]
       16 MOVE                             R3 R2
       17 NEWTABLE                         R4 0 0
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K9 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 SETGLOBAL                        R4 K10 ["useContextMenuActions"]
       25 DUPTABLE                         R4 K12 [{"Provider", "useContextMenuActions"}]
       26 GETTABLEKS                       R5 R3 K11 ["Provider"]
       28 SETTABLEKS                       R5 R4 K11 ["Provider"]
       30 GETGLOBAL                        R5 K10 ["useContextMenuActions"]
       32 SETTABLEKS                       R5 R4 K10 ["useContextMenuActions"]
       34 RETURN                           R4 1
