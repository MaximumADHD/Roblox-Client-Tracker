PROTO_0:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R4
        7 RETURN                           R4 1
        8 MOVE                             R6 R2
        9 NAMECALL                         R4 R3 K1 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIF                           R4 ; [+2]
       13 LOADNIL                          R4
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R3 K2 ["Archivable"]
       17 JUMPIF                           R4 ; [+2]
       18 LOADNIL                          R4
       19 RETURN                           R4 1
       20 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 LOADK                            R3 K1 ["Model"]
        6 NAMECALL                         R1 R0 K2 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 GETIMPORT                        R3 K4 [game]
       14 NAMECALL                         R1 R0 K5 ["IsDescendantOf"]
       16 CALL                             R1 2 1
       17 JUMPIF                           R1 ; [+2]
       18 LOADB                            R1 0
       19 RETURN                           R1 1
       20 GETUPVAL                         R3 0
       21 NAMECALL                         R1 R0 K5 ["IsDescendantOf"]
       23 CALL                             R1 2 1
       24 JUMPIF                           R1 ; [+2]
       25 LOADB                            R1 0
       26 RETURN                           R1 1
       27 GETTABLEKS                       R1 R0 K6 ["PrimaryPart"]
       29 JUMPIFEQKNIL                     R1 ; [+6]
       31 GETTABLEKS                       R1 R0 K6 ["PrimaryPart"]
       33 GETTABLEKS                       R1 R1 K0 ["Archivable"]
       35 JUMPIF                           R1 ; [+2]
       36 LOADB                            R1 0
       37 RETURN                           R1 1
       38 LOADK                            R3 K7 ["Head"]
       39 NAMECALL                         R1 R0 K8 ["FindFirstChild"]
       41 CALL                             R1 2 1
       42 JUMPIFEQKNIL                     R1 ; [+6]
       44 LOADK                            R4 K9 ["BasePart"]
       45 NAMECALL                         R2 R1 K2 ["IsA"]
       47 CALL                             R2 2 1
       48 JUMPIF                           R2 ; [+2]
       49 LOADB                            R2 0
       50 RETURN                           R2 1
       51 LOADK                            R4 K10 ["FaceControls"]
       52 NAMECALL                         R2 R1 K11 ["FindFirstChildWhichIsA"]
       54 CALL                             R2 2 1
       55 JUMPIF                           R2 ; [+2]
       56 LOADB                            R3 0
       57 RETURN                           R3 1
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R3 R3 K12 ["LIMBS"]
       61 LOADNIL                          R4
       62 LOADNIL                          R5
       63 FORGPREP                         R3
       64 MOVE                             R11 R7
       65 NAMECALL                         R9 R0 K8 ["FindFirstChild"]
       67 CALL                             R9 2 1
       68 JUMPIFNOTEQKNIL                  R9 ; [+3]
       70 LOADNIL                          R8
       71 JUMP                             ; [+13]
       72 LOADK                            R12 K9 ["BasePart"]
       73 NAMECALL                         R10 R9 K2 ["IsA"]
       75 CALL                             R10 2 1
       76 JUMPIF                           R10 ; [+2]
       77 LOADNIL                          R8
       78 JUMP                             ; [+6]
       79 GETTABLEKS                       R10 R9 K0 ["Archivable"]
       81 JUMPIF                           R10 ; [+2]
       82 LOADNIL                          R8
       83 JUMP                             ; [+1]
       84 MOVE                             R8 R9
       85 JUMPIF                           R8 ; [+2]
       86 LOADB                            R8 0
       87 RETURN                           R8 1
       88 MOVE                             R10 R7
       89 NAMECALL                         R8 R0 K8 ["FindFirstChild"]
       91 CALL                             R8 2 1
       92 LOADK                            R11 K13 ["WrapTarget"]
       93 NAMECALL                         R9 R8 K14 ["FindFirstChildOfClass"]
       95 CALL                             R9 2 1
       96 JUMPIFNOTEQKNIL                  R9 ; [+3]
       98 LOADB                            R9 0
       99 RETURN                           R9 1
      100 FORGLOOP                         R3 2 ; [-37]
      102 LOADK                            R6 K15 ["Humanoid"]
      103 NAMECALL                         R4 R0 K8 ["FindFirstChild"]
      105 CALL                             R4 2 1
      106 JUMPIFNOTEQKNIL                  R4 ; [+3]
      108 LOADNIL                          R3
      109 JUMP                             ; [+13]
      110 LOADK                            R7 K15 ["Humanoid"]
      111 NAMECALL                         R5 R4 K2 ["IsA"]
      113 CALL                             R5 2 1
      114 JUMPIF                           R5 ; [+2]
      115 LOADNIL                          R3
      116 JUMP                             ; [+6]
      117 GETTABLEKS                       R5 R4 K0 ["Archivable"]
      119 JUMPIF                           R5 ; [+2]
      120 LOADNIL                          R3
      121 JUMP                             ; [+1]
      122 MOVE                             R3 R4
      123 JUMPIFNOTEQKNIL                  R3 ; [+3]
      125 LOADB                            R4 0
      126 RETURN                           R4 1
      127 LOADB                            R4 1
      128 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 DUPCLOSURE                       R3 K13 [PROTO_0]
       23 DUPCLOSURE                       R4 K14 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
