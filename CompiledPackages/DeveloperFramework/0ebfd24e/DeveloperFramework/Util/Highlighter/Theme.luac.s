PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Theme.updateColors expects a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 MOVE                             R1 R0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K6 ["tokenColors"]
       22 SETTABLE                         R5 R6 R4
       23 FORGLOOP                         R1 2 ; [-5]
       25 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["<font color=\"#"]
        1 NAMECALL                         R8 R0 K1 ["ToHex"]
        3 CALL                             R8 1 1
        4 MOVE                             R4 R8
        5 LOADK                            R5 K2 ["\">"]
        6 MOVE                             R6 R1
        7 LOADK                            R7 K3 ["</font>"]
        8 CONCAT                           R2 R3 R7
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["tokenColors"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{"background", "iden", "keyword", "builtin", "string", "number", "comment", "operator", "custom"}]
        2 GETIMPORT                        R1 K12 [Color3.fromRGB]
        4 LOADN                            R2 0
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["background"]
       10 GETIMPORT                        R1 K12 [Color3.fromRGB]
       12 LOADN                            R2 234
       13 LOADN                            R3 234
       14 LOADN                            R4 234
       15 CALL                             R1 3 1
       16 SETTABLEKS                       R1 R0 K1 ["iden"]
       18 GETIMPORT                        R1 K12 [Color3.fromRGB]
       20 LOADN                            R2 215
       21 LOADN                            R3 174
       22 LOADN                            R4 255
       23 CALL                             R1 3 1
       24 SETTABLEKS                       R1 R0 K2 ["keyword"]
       26 GETIMPORT                        R1 K12 [Color3.fromRGB]
       28 LOADN                            R2 131
       29 LOADN                            R3 206
       30 LOADN                            R4 255
       31 CALL                             R1 3 1
       32 SETTABLEKS                       R1 R0 K3 ["builtin"]
       34 GETIMPORT                        R1 K12 [Color3.fromRGB]
       36 LOADN                            R2 196
       37 LOADN                            R3 255
       38 LOADN                            R4 193
       39 CALL                             R1 3 1
       40 SETTABLEKS                       R1 R0 K4 ["string"]
       42 GETIMPORT                        R1 K12 [Color3.fromRGB]
       44 LOADN                            R2 255
       45 LOADN                            R3 125
       46 LOADN                            R4 125
       47 CALL                             R1 3 1
       48 SETTABLEKS                       R1 R0 K5 ["number"]
       50 GETIMPORT                        R1 K12 [Color3.fromRGB]
       52 LOADN                            R2 140
       53 LOADN                            R3 140
       54 LOADN                            R4 155
       55 CALL                             R1 3 1
       56 SETTABLEKS                       R1 R0 K6 ["comment"]
       58 GETIMPORT                        R1 K12 [Color3.fromRGB]
       60 LOADN                            R2 255
       61 LOADN                            R3 239
       62 LOADN                            R4 148
       63 CALL                             R1 3 1
       64 SETTABLEKS                       R1 R0 K7 ["operator"]
       66 GETIMPORT                        R1 K12 [Color3.fromRGB]
       68 LOADN                            R2 119
       69 LOADN                            R3 122
       70 LOADN                            R4 255
       71 CALL                             R1 3 1
       72 SETTABLEKS                       R1 R0 K8 ["custom"]
       74 GETIMPORT                        R1 K14 [require]
       76 GETIMPORT                        R2 K16 [script]
       78 GETTABLEKS                       R2 R2 K17 ["Parent"]
       80 GETTABLEKS                       R2 R2 K18 ["Types"]
       82 CALL                             R1 1 1
       83 DUPTABLE                         R2 K21 [{"tokenColors", "defaultColors"}]
       84 NEWTABLE                         R3 0 0
       86 SETTABLEKS                       R3 R2 K19 ["tokenColors"]
       88 SETTABLEKS                       R0 R2 K20 ["defaultColors"]
       90 DUPCLOSURE                       R3 K22 [PROTO_0]
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R3 R2 K23 ["setColors"]
       94 DUPCLOSURE                       R3 K24 [PROTO_1]
       95 SETTABLEKS                       R3 R2 K25 ["getColoredRichText"]
       97 DUPCLOSURE                       R3 K26 [PROTO_2]
       98 CAPTURE                          VAL R2
       99 SETTABLEKS                       R3 R2 K27 ["getColor"]
      101 GETTABLEKS                       R3 R2 K23 ["setColors"]
      103 MOVE                             R4 R0
      104 CALL                             R3 1 0
      105 RETURN                           R2 1
