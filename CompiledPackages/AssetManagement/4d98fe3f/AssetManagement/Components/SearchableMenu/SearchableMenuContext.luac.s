PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       11 LOADK                            R3 K1 ["SearchableMenu components must be inside a SearchableMenuContext provider"]
       12 GETIMPORT                        R1 K3 [assert]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["useSubmenus"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K9 ["createContext"]
       25 LOADNIL                          R5
       26 CALL                             R4 1 1
       27 DUPCLOSURE                       R5 K10 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 DUPTABLE                         R6 K13 [{"Provider", "use"}]
       31 GETTABLEKS                       R7 R4 K11 ["Provider"]
       33 SETTABLEKS                       R7 R6 K11 ["Provider"]
       35 SETTABLEKS                       R5 R6 K12 ["use"]
       37 RETURN                           R6 1
