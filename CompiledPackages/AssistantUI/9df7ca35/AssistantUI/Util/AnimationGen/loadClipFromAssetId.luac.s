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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Clone"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
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
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R1
       25 FASTPCALL                        pcall 1 ; [+2]
       26 GETIMPORT                        R2 K10 [pcall]
       28 CALL                             R2 1 2
       29 JUMPIFNOT                        R2 ; [+2]
       30 JUMPIFNOTEQKNIL                  R3 ; [+13]
       32 GETIMPORT                        R4 K5 [warn]
       34 LOADK                            R6 K11 ["[AnimationGen] InsertService:LoadAsset failed: "]
       35 FASTCALL1                        TOSTRING R3 ; [+3]
       36 MOVE                             R8 R3
       37 GETIMPORT                        R7 K8 [tostring]
       39 CALL                             R7 1 1
       40 CONCAT                           R5 R6 R7
       41 CALL                             R4 1 0
       42 LOADNIL                          R4
       43 RETURN                           R4 1
       44 NAMECALL                         R5 R3 K12 ["GetDescendants"]
       46 CALL                             R5 1 3
       47 FORGPREP                         R5
       48 LOADK                            R12 K13 ["AnimationClip"]
       49 NAMECALL                         R10 R9 K14 ["IsA"]
       51 CALL                             R10 2 1
       52 JUMPIFNOT                        R10 ; [+2]
       53 MOVE                             R4 R9
       54 JUMP                             ; [+3]
       55 FORGLOOP                         R5 2 ; [-8]
       57 LOADNIL                          R4
       58 LOADNIL                          R5
       59 JUMPIFNOTEQKNIL                  R4 ; [+49]
       61 LOADK                            R8 K15 ["Animation"]
       62 LOADB                            R9 1
       63 NAMECALL                         R6 R3 K16 ["FindFirstChildWhichIsA"]
       65 CALL                             R6 3 1
       66 JUMPIFEQKNIL                     R6 ; [+12]
       68 GETTABLEKS                       R8 R6 K17 ["AnimationId"]
       70 LOADK                            R10 K0 ["(%d+)"]
       71 NAMECALL                         R8 R8 K1 ["match"]
       73 CALL                             R8 2 -1
       74 FASTCALL                         TONUMBER ; [+2]
       75 GETIMPORT                        R7 K3 [tonumber]
       77 CALL                             R7 -1 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R7
       80 JUMPIFEQKNIL                     R7 ; [+28]
       82 JUMPIFEQ                         R7 R1 ; [+26]
       84 NEWCLOSURE                       R9 P1
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          VAL R7
       87 FASTPCALL                        pcall 1 ; [+2]
       88 GETIMPORT                        R8 K10 [pcall]
       90 CALL                             R8 1 2
       91 JUMPIFNOT                        R8 ; [+17]
       92 JUMPIFEQKNIL                     R9 ; [+16]
       94 MOVE                             R5 R9
       95 NAMECALL                         R10 R9 K12 ["GetDescendants"]
       97 CALL                             R10 1 3
       98 FORGPREP                         R10
       99 LOADK                            R17 K13 ["AnimationClip"]
      100 NAMECALL                         R15 R14 K14 ["IsA"]
      102 CALL                             R15 2 1
      103 JUMPIFNOT                        R15 ; [+2]
      104 MOVE                             R4 R14
      105 JUMP                             ; [+3]
      106 FORGLOOP                         R10 2 ; [-8]
      108 LOADNIL                          R4
      109 LOADNIL                          R6
      110 JUMPIFEQKNIL                     R4 ; [+20]
      112 NEWCLOSURE                       R8 P2
      113 CAPTURE                          REF R4
      114 FASTPCALL                        pcall 1 ; [+2]
      115 GETIMPORT                        R7 K10 [pcall]
      117 CALL                             R7 1 2
      118 JUMPIFNOT                        R7 ; [+2]
      119 MOVE                             R6 R8
      120 JUMP                             ; [+10]
      121 GETIMPORT                        R9 K5 [warn]
      123 LOADK                            R11 K18 ["[AnimationGen] Failed to clone AnimationClip: "]
      124 FASTCALL1                        TOSTRING R8 ; [+3]
      125 MOVE                             R13 R8
      126 GETIMPORT                        R12 K8 [tostring]
      128 CALL                             R12 1 1
      129 CONCAT                           R10 R11 R12
      130 CALL                             R9 1 0
      131 JUMPIFEQKNIL                     R5 ; [+4]
      133 NAMECALL                         R7 R5 K19 ["Destroy"]
      135 CALL                             R7 1 0
      136 NAMECALL                         R7 R3 K19 ["Destroy"]
      138 CALL                             R7 1 0
      139 JUMPIFNOTEQKNIL                  R6 ; [+5]
      141 GETIMPORT                        R7 K5 [warn]
      143 LOADK                            R8 K20 ["[AnimationGen] No AnimationClip found in asset"]
      144 CALL                             R7 1 0
      145 CLOSEUPVALS                      R4
      146 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_4]
        9 CAPTURE                          VAL R0
       10 RETURN                           R2 1
