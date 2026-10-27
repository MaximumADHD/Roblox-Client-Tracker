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
       22 GETIMPORT                        R2 K10 [pcall]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R1
       27 CALL                             R2 1 2
       28 JUMPIFNOT                        R2 ; [+2]
       29 JUMPIFNOTEQKNIL                  R3 ; [+13]
       31 GETIMPORT                        R4 K5 [warn]
       33 LOADK                            R6 K11 ["[AnimationGen] InsertService:LoadAsset failed: "]
       34 FASTCALL1                        TOSTRING R3 ; [+3]
       35 MOVE                             R8 R3
       36 GETIMPORT                        R7 K8 [tostring]
       38 CALL                             R7 1 1
       39 CONCAT                           R5 R6 R7
       40 CALL                             R4 1 0
       41 LOADNIL                          R4
       42 RETURN                           R4 1
       43 NAMECALL                         R5 R3 K12 ["GetDescendants"]
       45 CALL                             R5 1 3
       46 FORGPREP                         R5
       47 LOADK                            R12 K13 ["AnimationClip"]
       48 NAMECALL                         R10 R9 K14 ["IsA"]
       50 CALL                             R10 2 1
       51 JUMPIFNOT                        R10 ; [+2]
       52 MOVE                             R4 R9
       53 JUMP                             ; [+3]
       54 FORGLOOP                         R5 2 ; [-8]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 JUMPIFNOTEQKNIL                  R4 ; [+48]
       60 LOADK                            R8 K15 ["Animation"]
       61 LOADB                            R9 1
       62 NAMECALL                         R6 R3 K16 ["FindFirstChildWhichIsA"]
       64 CALL                             R6 3 1
       65 JUMPIFEQKNIL                     R6 ; [+12]
       67 GETTABLEKS                       R8 R6 K17 ["AnimationId"]
       69 LOADK                            R10 K0 ["(%d+)"]
       70 NAMECALL                         R8 R8 K1 ["match"]
       72 CALL                             R8 2 -1
       73 FASTCALL                         TONUMBER ; [+2]
       74 GETIMPORT                        R7 K3 [tonumber]
       76 CALL                             R7 -1 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R7
       79 JUMPIFEQKNIL                     R7 ; [+27]
       81 JUMPIFEQ                         R7 R1 ; [+25]
       83 GETIMPORT                        R8 K10 [pcall]
       85 NEWCLOSURE                       R9 P1
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          VAL R7
       88 CALL                             R8 1 2
       89 JUMPIFNOT                        R8 ; [+17]
       90 JUMPIFEQKNIL                     R9 ; [+16]
       92 MOVE                             R5 R9
       93 NAMECALL                         R10 R9 K12 ["GetDescendants"]
       95 CALL                             R10 1 3
       96 FORGPREP                         R10
       97 LOADK                            R17 K13 ["AnimationClip"]
       98 NAMECALL                         R15 R14 K14 ["IsA"]
      100 CALL                             R15 2 1
      101 JUMPIFNOT                        R15 ; [+2]
      102 MOVE                             R4 R14
      103 JUMP                             ; [+3]
      104 FORGLOOP                         R10 2 ; [-8]
      106 LOADNIL                          R4
      107 LOADNIL                          R6
      108 JUMPIFEQKNIL                     R4 ; [+19]
      110 GETIMPORT                        R7 K10 [pcall]
      112 NEWCLOSURE                       R8 P2
      113 CAPTURE                          REF R4
      114 CALL                             R7 1 2
      115 JUMPIFNOT                        R7 ; [+2]
      116 MOVE                             R6 R8
      117 JUMP                             ; [+10]
      118 GETIMPORT                        R9 K5 [warn]
      120 LOADK                            R11 K18 ["[AnimationGen] Failed to clone AnimationClip: "]
      121 FASTCALL1                        TOSTRING R8 ; [+3]
      122 MOVE                             R13 R8
      123 GETIMPORT                        R12 K8 [tostring]
      125 CALL                             R12 1 1
      126 CONCAT                           R10 R11 R12
      127 CALL                             R9 1 0
      128 JUMPIFEQKNIL                     R5 ; [+4]
      130 NAMECALL                         R7 R5 K19 ["Destroy"]
      132 CALL                             R7 1 0
      133 NAMECALL                         R7 R3 K19 ["Destroy"]
      135 CALL                             R7 1 0
      136 JUMPIFNOTEQKNIL                  R6 ; [+5]
      138 GETIMPORT                        R7 K5 [warn]
      140 LOADK                            R8 K20 ["[AnimationGen] No AnimationClip found in asset"]
      141 CALL                             R7 1 0
      142 CLOSEUPVALS                      R4
      143 RETURN                           R6 1

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
