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
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["React"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["useSubmenus"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["createContext"]
       23 LOADNIL                          R4
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 DUPTABLE                         R5 K13 [{"Provider", "use"}]
       29 GETTABLEKS                       R6 R3 K11 ["Provider"]
       31 SETTABLEKS                       R6 R5 K11 ["Provider"]
       33 SETTABLEKS                       R4 R5 K12 ["use"]
       35 RETURN                           R5 1
