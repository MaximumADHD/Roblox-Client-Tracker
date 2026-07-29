PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["#%02X%02X%02X"]
        3 GETTABLEKS                       R5 R0 K5 ["R"]
        5 MULK                             R4 R5 K4 [255]
        6 FASTCALL1                        MATH_ROUND R4 ; [+2]
        7 GETIMPORT                        R3 K8 [math.round]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R6 R0 K9 ["G"]
       12 MULK                             R5 R6 K4 [255]
       13 FASTCALL1                        MATH_ROUND R5 ; [+2]
       14 GETIMPORT                        R4 K8 [math.round]
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R7 R0 K10 ["B"]
       19 MULK                             R6 R7 K4 [255]
       20 FASTCALL1                        MATH_ROUND R6 ; [+2]
       21 GETIMPORT                        R5 K8 [math.round]
       23 CALL                             R5 1 1
       24 CALL                             R1 4 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s+"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 GETIMPORT                        R2 K2 [string.gsub]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K5 ["%s+$"]
       10 LOADK                            R5 K4 [""]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 GETIMPORT                        R2 K2 [string.gsub]
       15 MOVE                             R3 R1
       16 LOADK                            R4 K6 ["^#"]
       17 LOADK                            R5 K4 [""]
       18 CALL                             R2 3 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K8 [string.upper]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 MOVE                             R1 R2
       25 LENGTH                           R2 R1
       26 JUMPIFNOTEQKN                    R2 K9 [3] ; [+55]
       28 LOADN                            R10 1
       29 LOADN                            R11 1
       30 FASTCALL3                        STRING_SUB R1 R10 R11
       32 MOVE                             R9 R1
       33 GETIMPORT                        R8 K11 [string.sub]
       35 CALL                             R8 3 1
       36 MOVE                             R2 R8
       37 LOADN                            R10 1
       38 LOADN                            R11 1
       39 FASTCALL3                        STRING_SUB R1 R10 R11
       41 MOVE                             R9 R1
       42 GETIMPORT                        R8 K11 [string.sub]
       44 CALL                             R8 3 1
       45 MOVE                             R3 R8
       46 LOADN                            R10 2
       47 LOADN                            R11 2
       48 FASTCALL3                        STRING_SUB R1 R10 R11
       50 MOVE                             R9 R1
       51 GETIMPORT                        R8 K11 [string.sub]
       53 CALL                             R8 3 1
       54 MOVE                             R4 R8
       55 LOADN                            R10 2
       56 LOADN                            R11 2
       57 FASTCALL3                        STRING_SUB R1 R10 R11
       59 MOVE                             R9 R1
       60 GETIMPORT                        R8 K11 [string.sub]
       62 CALL                             R8 3 1
       63 MOVE                             R5 R8
       64 LOADN                            R10 3
       65 LOADN                            R11 3
       66 FASTCALL3                        STRING_SUB R1 R10 R11
       68 MOVE                             R9 R1
       69 GETIMPORT                        R8 K11 [string.sub]
       71 CALL                             R8 3 1
       72 MOVE                             R6 R8
       73 LOADN                            R9 3
       74 LOADN                            R10 3
       75 FASTCALL3                        STRING_SUB R1 R9 R10
       77 MOVE                             R8 R1
       78 GETIMPORT                        R7 K11 [string.sub]
       80 CALL                             R7 3 1
       81 CONCAT                           R1 R2 R7
       82 LENGTH                           R2 R1
       83 JUMPIFNOTEQKN                    R2 K12 [6] ; [+7]
       85 GETIMPORT                        R2 K14 [string.match]
       87 MOVE                             R3 R1
       88 LOADK                            R4 K15 ["^[0-9A-F]+$"]
       89 CALL                             R2 2 1
       90 JUMPIF                           R2 ; [+2]
       91 LOADNIL                          R2
       92 RETURN                           R2 1
       93 LOADN                            R5 1
       94 LOADN                            R6 2
       95 FASTCALL3                        STRING_SUB R1 R5 R6
       97 MOVE                             R4 R1
       98 GETIMPORT                        R3 K11 [string.sub]
      100 CALL                             R3 3 1
      101 FASTCALL2K                       TONUMBER R3 K16 ; [+4]
      103 LOADK                            R4 K16 [16]
      104 GETIMPORT                        R2 K18 [tonumber]
      106 CALL                             R2 2 1
      107 LOADN                            R6 3
      108 LOADN                            R7 4
      109 FASTCALL3                        STRING_SUB R1 R6 R7
      111 MOVE                             R5 R1
      112 GETIMPORT                        R4 K11 [string.sub]
      114 CALL                             R4 3 1
      115 FASTCALL2K                       TONUMBER R4 K16 ; [+4]
      117 LOADK                            R5 K16 [16]
      118 GETIMPORT                        R3 K18 [tonumber]
      120 CALL                             R3 2 1
      121 LOADN                            R7 5
      122 LOADN                            R8 6
      123 FASTCALL3                        STRING_SUB R1 R7 R8
      125 MOVE                             R6 R1
      126 GETIMPORT                        R5 K11 [string.sub]
      128 CALL                             R5 3 1
      129 FASTCALL2K                       TONUMBER R5 K16 ; [+4]
      131 LOADK                            R6 K16 [16]
      132 GETIMPORT                        R4 K18 [tonumber]
      134 CALL                             R4 2 1
      135 JUMPIFNOT                        R2 ; [+2]
      136 JUMPIFNOT                        R3 ; [+1]
      137 JUMPIF                           R4 ; [+2]
      138 LOADNIL                          R5
      139 RETURN                           R5 1
      140 GETIMPORT                        R5 K21 [Color3.fromRGB]
      142 MOVE                             R6 R2
      143 MOVE                             R7 R3
      144 MOVE                             R8 R4
      145 CALL                             R5 3 -1
      146 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["color3ToHex"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["hexToColor3"]
        9 RETURN                           R0 1
