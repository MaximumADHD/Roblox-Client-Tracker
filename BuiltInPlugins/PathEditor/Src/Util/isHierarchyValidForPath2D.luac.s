PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["Parent"]
        6 LOADB                            R2 1
        7 JUMPIFEQKNIL                     R1 ; [+36]
        9 LOADK                            R5 K1 ["ScreenGui"]
       10 NAMECALL                         R3 R1 K2 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIF                           R3 ; [+30]
       14 LOADK                            R5 K3 ["SurfaceGui"]
       15 NAMECALL                         R3 R1 K2 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+25]
       19 JUMPIF                           R2 ; [+13]
       20 LOADK                            R5 K4 ["GuiBase2d"]
       21 NAMECALL                         R3 R1 K2 ["IsA"]
       23 CALL                             R3 2 1
       24 JUMPIF                           R3 ; [+15]
       25 LOADK                            R5 K5 ["Folder"]
       26 NAMECALL                         R3 R1 K2 ["IsA"]
       28 CALL                             R3 2 1
       29 JUMPIF                           R3 ; [+10]
       30 LOADB                            R3 0
       31 RETURN                           R3 1
       32 JUMP                             ; [+7]
       33 LOADK                            R5 K4 ["GuiBase2d"]
       34 NAMECALL                         R3 R1 K2 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIF                           R3 ; [+2]
       38 LOADB                            R3 0
       39 RETURN                           R3 1
       40 LOADB                            R2 0
       41 GETTABLEKS                       R1 R1 K0 ["Parent"]
       43 JUMPBACK                         ; [-37]
       44 JUMPIFNOTEQKNIL                  R1 ; [+3]
       46 LOADB                            R3 0
       47 RETURN                           R3 1
       48 LOADK                            R5 K1 ["ScreenGui"]
       49 NAMECALL                         R3 R1 K2 ["IsA"]
       51 CALL                             R3 2 1
       52 JUMPIFNOT                        R3 ; [+14]
       53 JUMPIFEQKNIL                     R1 ; [+31]
       55 GETIMPORT                        R4 K7 [game]
       57 GETTABLEKS                       R3 R4 K8 ["Workspace"]
       59 JUMPIFNOTEQ                      R1 R3 ; [+3]
       61 LOADB                            R3 0
       62 RETURN                           R3 1
       63 GETTABLEKS                       R1 R1 K0 ["Parent"]
       65 JUMPBACK                         ; [-13]
       66 JUMP                             ; [+18]
       67 LOADK                            R5 K3 ["SurfaceGui"]
       68 NAMECALL                         R3 R1 K2 ["IsA"]
       70 CALL                             R3 2 1
       71 JUMPIFNOT                        R3 ; [+13]
       72 GETTABLEKS                       R3 R1 K9 ["Adornee"]
       74 JUMPIFNOTEQKNIL                  R3 ; [+10]
       76 GETTABLEKS                       R3 R1 K0 ["Parent"]
       78 LOADK                            R5 K10 ["BasePart"]
       79 NAMECALL                         R3 R3 K2 ["IsA"]
       81 CALL                             R3 2 1
       82 JUMPIF                           R3 ; [+2]
       83 LOADB                            R3 0
       84 RETURN                           R3 1
       85 LOADB                            R3 1
       86 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
