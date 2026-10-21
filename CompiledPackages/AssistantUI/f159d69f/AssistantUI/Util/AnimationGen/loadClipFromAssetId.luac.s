PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["AnimationClip"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+1]
        9 RETURN                           R5 1
       10 FORGLOOP                         R1 2 ; [-7]
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAsset"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAsset"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 LOADK                            R4 K0 ["(%d+)"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 -1
        4 FASTCALL                         TONUMBER ; [+2]
        5 GETIMPORT                        R1 K3 [tonumber]
        7 CALL                             R1 -1 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+13]
       10 GETIMPORT                        R2 K5 [warn]
       12 LOADK                            R4 K6 ["[AnimationGen] Could not parse numeric id from: "]
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R6 R0
       15 GETIMPORT                        R5 K8 [tostring]
       17 CALL                             R5 1 1
       18 CONCAT                           R3 R4 R5
       19 CALL                             R2 1 0
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 GETIMPORT                        R2 K10 [pcall]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R1
       27 CALL                             R2 1 2
       28 JUMPIF                           R2 ; [+12]
       29 GETIMPORT                        R4 K5 [warn]
       31 LOADK                            R6 K11 ["[AnimationGen] InsertService:LoadAsset failed: "]
       32 FASTCALL1                        TOSTRING R3 ; [+3]
       33 MOVE                             R8 R3
       34 GETIMPORT                        R7 K8 [tostring]
       36 CALL                             R7 1 1
       37 CONCAT                           R5 R6 R7
       38 CALL                             R4 1 0
       39 LOADNIL                          R4
       40 RETURN                           R4 1
       41 NAMECALL                         R5 R3 K12 ["GetDescendants"]
       43 CALL                             R5 1 3
       44 FORGPREP                         R5
       45 LOADK                            R12 K13 ["AnimationClip"]
       46 NAMECALL                         R10 R9 K14 ["IsA"]
       48 CALL                             R10 2 1
       49 JUMPIFNOT                        R10 ; [+2]
       50 MOVE                             R4 R9
       51 JUMP                             ; [+3]
       52 FORGLOOP                         R5 2 ; [-8]
       54 LOADNIL                          R4
       55 JUMPIFNOTEQKNIL                  R4 ; [+48]
       57 LOADK                            R7 K15 ["Animation"]
       58 LOADB                            R8 1
       59 NAMECALL                         R5 R3 K16 ["FindFirstChildWhichIsA"]
       61 CALL                             R5 3 1
       62 JUMPIFEQKNIL                     R5 ; [+12]
       64 GETTABLEKS                       R7 R5 K17 ["AnimationId"]
       66 LOADK                            R9 K0 ["(%d+)"]
       67 NAMECALL                         R7 R7 K1 ["match"]
       69 CALL                             R7 2 -1
       70 FASTCALL                         TONUMBER ; [+2]
       71 GETIMPORT                        R6 K3 [tonumber]
       73 CALL                             R6 -1 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R6
       76 JUMPIFEQKNIL                     R6 ; [+27]
       78 JUMPIFEQ                         R6 R1 ; [+25]
       80 GETIMPORT                        R7 K10 [pcall]
       82 NEWCLOSURE                       R8 P1
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          VAL R6
       85 CALL                             R7 1 2
       86 JUMPIFNOT                        R7 ; [+17]
       87 NAMECALL                         R10 R8 K12 ["GetDescendants"]
       89 CALL                             R10 1 3
       90 FORGPREP                         R10
       91 LOADK                            R17 K13 ["AnimationClip"]
       92 NAMECALL                         R15 R14 K14 ["IsA"]
       94 CALL                             R15 2 1
       95 JUMPIFNOT                        R15 ; [+2]
       96 MOVE                             R9 R14
       97 JUMP                             ; [+3]
       98 FORGLOOP                         R10 2 ; [-8]
      100 LOADNIL                          R9
      101 JUMPIFEQKNIL                     R9 ; [+2]
      103 MOVE                             R4 R9
      104 JUMPIFNOTEQKNIL                  R4 ; [+7]
      106 GETIMPORT                        R5 K5 [warn]
      108 LOADK                            R6 K18 ["[AnimationGen] No AnimationClip found in asset"]
      109 CALL                             R5 1 0
      110 LOADNIL                          R5
      111 RETURN                           R5 1
      112 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_3]
        9 CAPTURE                          VAL R0
       10 RETURN                           R2 1
