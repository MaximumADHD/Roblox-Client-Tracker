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
       55 JUMPIFNOTEQKNIL                  R2 ; [+14]
       57 GETUPVAL                         R2 1
       58 CALL                             R2 0 1
       59 JUMPIFNOT                        R2 ; [+8]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K12 ["ATTRIBUTE_CREATED_BY_AVATAR_CREATION"]
       63 NAMECALL                         R2 R0 K13 ["GetAttribute"]
       65 CALL                             R2 2 1
       66 JUMPIFEQKB                       R2 TRUE ; [+3]
       68 LOADB                            R2 0
       69 RETURN                           R2 1
       70 GETUPVAL                         R2 2
       71 GETTABLEKS                       R2 R2 K14 ["LIMBS"]
       73 LOADNIL                          R3
       74 LOADNIL                          R4
       75 FORGPREP                         R2
       76 MOVE                             R10 R6
       77 NAMECALL                         R8 R0 K8 ["FindFirstChild"]
       79 CALL                             R8 2 1
       80 JUMPIFNOTEQKNIL                  R8 ; [+3]
       82 LOADNIL                          R7
       83 JUMP                             ; [+13]
       84 LOADK                            R11 K9 ["BasePart"]
       85 NAMECALL                         R9 R8 K2 ["IsA"]
       87 CALL                             R9 2 1
       88 JUMPIF                           R9 ; [+2]
       89 LOADNIL                          R7
       90 JUMP                             ; [+6]
       91 GETTABLEKS                       R9 R8 K0 ["Archivable"]
       93 JUMPIF                           R9 ; [+2]
       94 LOADNIL                          R7
       95 JUMP                             ; [+1]
       96 MOVE                             R7 R8
       97 JUMPIF                           R7 ; [+2]
       98 LOADB                            R7 0
       99 RETURN                           R7 1
      100 MOVE                             R9 R6
      101 NAMECALL                         R7 R0 K8 ["FindFirstChild"]
      103 CALL                             R7 2 1
      104 LOADK                            R10 K15 ["WrapTarget"]
      105 NAMECALL                         R8 R7 K16 ["FindFirstChildOfClass"]
      107 CALL                             R8 2 1
      108 JUMPIFNOTEQKNIL                  R8 ; [+3]
      110 LOADB                            R8 0
      111 RETURN                           R8 1
      112 FORGLOOP                         R2 2 ; [-37]
      114 LOADK                            R5 K17 ["Humanoid"]
      115 NAMECALL                         R3 R0 K8 ["FindFirstChild"]
      117 CALL                             R3 2 1
      118 JUMPIFNOTEQKNIL                  R3 ; [+3]
      120 LOADNIL                          R2
      121 JUMP                             ; [+13]
      122 LOADK                            R6 K17 ["Humanoid"]
      123 NAMECALL                         R4 R3 K2 ["IsA"]
      125 CALL                             R4 2 1
      126 JUMPIF                           R4 ; [+2]
      127 LOADNIL                          R2
      128 JUMP                             ; [+6]
      129 GETTABLEKS                       R4 R3 K0 ["Archivable"]
      131 JUMPIF                           R4 ; [+2]
      132 LOADNIL                          R2
      133 JUMP                             ; [+1]
      134 MOVE                             R2 R3
      135 JUMPIFNOTEQKNIL                  R2 ; [+3]
      137 LOADB                            R3 0
      138 RETURN                           R3 1
      139 LOADB                            R3 1
      140 RETURN                           R3 1

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
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K13 ["Flags"]
       28 GETTABLEKS                       R4 R4 K14 ["getFFlagAvatarPreviewerAvatarCreationWithoutFaceControls"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K15 [PROTO_0]
       32 DUPCLOSURE                       R5 K16 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R5 1
