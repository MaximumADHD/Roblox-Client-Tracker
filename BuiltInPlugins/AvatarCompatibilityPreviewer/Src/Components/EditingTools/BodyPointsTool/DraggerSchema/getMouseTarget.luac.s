PROTO_0:
        0 MOVE                             R3 R2
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETIMPORT                        R8 K2 [table.find]
        6 GETTABLEKS                       R9 R0 K3 ["hoveredPointNames"]
        8 MOVE                             R10 R7
        9 CALL                             R8 2 1
       10 JUMPIFEQKNIL                     R8 ; [+5]
       12 MOVE                             R8 R7
       13 LOADNIL                          R9
       14 LOADN                            R10 1
       15 RETURN                           R8 3
       16 FORGLOOP                         R3 2 ; [-13]
       18 GETTABLEKS                       R4 R0 K3 ["hoveredPointNames"]
       20 LENGTH                           R3 R4
       21 JUMPIFNOTEQKN                    R3 K4 [0] ; [+5]
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 RETURN                           R3 3
       27 GETTABLEKS                       R4 R0 K3 ["hoveredPointNames"]
       29 LENGTH                           R3 R4
       30 JUMPIFNOTEQKN                    R3 K5 [1] ; [+7]
       32 GETTABLEKS                       R4 R0 K3 ["hoveredPointNames"]
       34 GETTABLEN                        R3 R4 1
       35 LOADNIL                          R4
       36 LOADN                            R5 1
       37 RETURN                           R3 3
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K6 ["CurrentCamera"]
       41 JUMPIFNOTEQKNIL                  R3 ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       47 LOADK                            R6 K7 ["Camera was set to nil before getMouseTarget"]
       48 GETIMPORT                        R4 K9 [assert]
       50 CALL                             R4 2 0
       51 LOADNIL                          R4
       52 LOADK                            R5 K10 [∞]
       53 LOADN                            R6 0
       54 GETTABLEKS                       R7 R0 K11 ["points"]
       56 LOADNIL                          R8
       57 LOADNIL                          R9
       58 FORGPREP                         R7
       59 GETIMPORT                        R12 K2 [table.find]
       61 GETTABLEKS                       R13 R0 K3 ["hoveredPointNames"]
       63 GETTABLEKS                       R14 R11 K12 ["name"]
       65 CALL                             R12 2 1
       66 JUMPIFEQKNIL                     R12 ; [+31]
       68 GETTABLEKS                       R13 R0 K13 ["worldModel"]
       70 GETTABLEKS                       R13 R13 K14 ["PrimaryPart"]
       72 GETTABLEKS                       R13 R13 K15 ["Position"]
       74 GETTABLEKS                       R14 R11 K16 ["getCFrame"]
       76 CALL                             R14 0 1
       77 GETTABLEKS                       R14 R14 K15 ["Position"]
       79 ADD                              R12 R13 R14
       80 GETTABLEKS                       R14 R3 K17 ["CFrame"]
       82 GETTABLEKS                       R14 R14 K15 ["Position"]
       84 SUB                              R13 R12 R14
       85 GETTABLEKS                       R13 R13 K18 ["Magnitude"]
       87 JUMPIFNOTLT                      R13 R5 ; [+4]
       89 MOVE                             R5 R13
       90 GETTABLEKS                       R4 R11 K12 ["name"]
       92 ADDK                             R6 R6 K5 [1]
       93 GETTABLEKS                       R15 R0 K3 ["hoveredPointNames"]
       95 LENGTH                           R14 R15
       96 JUMPIFEQ                         R6 R14 ; [+3]
       98 FORGLOOP                         R7 2 ; [-40]
      100 MOVE                             R7 R4
      101 LOADNIL                          R8
      102 LOADN                            R9 1
      103 RETURN                           R7 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Components"]
       19 GETTABLEKS                       R3 R3 K12 ["EditingTools"]
       21 GETTABLEKS                       R3 R3 K13 ["BodyPointsTool"]
       23 GETTABLEKS                       R3 R3 K14 ["Types"]
       25 CALL                             R2 1 1
       26 DUPCLOSURE                       R3 K15 [PROTO_0]
       27 CAPTURE                          VAL R0
       28 RETURN                           R3 1
