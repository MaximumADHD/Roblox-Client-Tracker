PROTO_0:
        0 LOADB                            R1 1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["number"] ; [+20]
        8 LOADB                            R1 0
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K1 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+12]
       16 NAMECALL                         R3 R0 K4 ["getValue"]
       18 CALL                             R3 1 -1
       19 FASTCALL                         TYPEOF ; [+2]
       20 GETIMPORT                        R2 K1 [typeof]
       22 CALL                             R2 -1 1
       23 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R1 ; [+59]
        3 NEWTABLE                         R4 4 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K0 ["XSmall"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEKS                       R6 R3 K1 ["Size"]
       11 GETTABLEKS                       R6 R6 K2 ["Size_400"]
       13 JUMP                             ; [+4]
       14 GETTABLEKS                       R6 R3 K1 ["Size"]
       16 GETTABLEKS                       R6 R6 K3 ["Size_300"]
       18 SETTABLE                         R6 R4 R5
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K4 ["Small"]
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETTABLEKS                       R6 R3 K1 ["Size"]
       25 GETTABLEKS                       R6 R6 K5 ["Size_500"]
       27 JUMP                             ; [+4]
       28 GETTABLEKS                       R6 R3 K1 ["Size"]
       30 GETTABLEKS                       R6 R6 K2 ["Size_400"]
       32 SETTABLE                         R6 R4 R5
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K6 ["Medium"]
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETTABLEKS                       R6 R3 K1 ["Size"]
       39 GETTABLEKS                       R6 R6 K7 ["Size_600"]
       41 JUMP                             ; [+4]
       42 GETTABLEKS                       R6 R3 K1 ["Size"]
       44 GETTABLEKS                       R6 R6 K5 ["Size_500"]
       46 SETTABLE                         R6 R4 R5
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K8 ["Large"]
       50 JUMPIFNOT                        R2 ; [+5]
       51 GETTABLEKS                       R6 R3 K1 ["Size"]
       53 GETTABLEKS                       R6 R6 K9 ["Size_700"]
       55 JUMP                             ; [+4]
       56 GETTABLEKS                       R6 R3 K1 ["Size"]
       58 GETTABLEKS                       R6 R6 K7 ["Size_600"]
       60 SETTABLE                         R6 R4 R5
       61 JUMP                             ; [+52]
       62 NEWTABLE                         R4 8 0
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K0 ["XSmall"]
       67 GETTABLEKS                       R6 R3 K1 ["Size"]
       69 GETTABLEKS                       R6 R6 K10 ["Size_200"]
       71 SETTABLE                         R6 R4 R5
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R5 R5 K4 ["Small"]
       75 GETTABLEKS                       R6 R3 K1 ["Size"]
       77 GETTABLEKS                       R6 R6 K2 ["Size_400"]
       79 SETTABLE                         R6 R4 R5
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R5 R5 K6 ["Medium"]
       83 GETTABLEKS                       R6 R3 K1 ["Size"]
       85 GETTABLEKS                       R6 R6 K11 ["Size_900"]
       87 SETTABLE                         R6 R4 R5
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R5 R5 K8 ["Large"]
       91 GETTABLEKS                       R6 R3 K1 ["Size"]
       93 GETTABLEKS                       R6 R6 K12 ["Size_1200"]
       95 SETTABLE                         R6 R4 R5
       96 GETUPVAL                         R5 1
       97 GETTABLEKS                       R5 R5 K13 ["XLarge"]
       99 GETTABLEKS                       R6 R3 K1 ["Size"]
      101 GETTABLEKS                       R6 R6 K14 ["Size_2400"]
      103 SETTABLE                         R6 R4 R5
      104 GETUPVAL                         R5 1
      105 GETTABLEKS                       R5 R5 K15 ["XXLarge"]
      107 LOADN                            R7 24
      108 GETTABLEKS                       R8 R3 K1 ["Size"]
      110 GETTABLEKS                       R8 R8 K10 ["Size_200"]
      112 MUL                              R6 R7 R8
      113 SETTABLE                         R6 R4 R5
      114 LOADB                            R6 1
      115 FASTCALL1                        TYPEOF R0 ; [+3]
      116 MOVE                             R8 R0
      117 GETIMPORT                        R7 K17 [typeof]
      119 CALL                             R7 1 1
      120 JUMPIFEQKS                       R7 K18 ["number"] ; [+20]
      122 LOADB                            R6 0
      123 FASTCALL1                        TYPEOF R0 ; [+3]
      124 MOVE                             R8 R0
      125 GETIMPORT                        R7 K17 [typeof]
      127 CALL                             R7 1 1
      128 JUMPIFNOTEQKS                    R7 K19 ["table"] ; [+12]
      130 NAMECALL                         R8 R0 K20 ["getValue"]
      132 CALL                             R8 1 -1
      133 FASTCALL                         TYPEOF ; [+2]
      134 GETIMPORT                        R7 K17 [typeof]
      136 CALL                             R7 -1 1
      137 JUMPIFEQKS                       R7 K18 ["number"] ; [+2]
      139 LOADB                            R6 0 +1
      140 LOADB                            R6 1
      141 JUMPIFNOT                        R6 ; [+2]
      142 MOVE                             R5 R0
      143 JUMP                             ; [+1]
      144 GETTABLE                         R5 R4 R0
      145 JUMPIF                           R1 ; [+29]
      146 LOADB                            R6 1
      147 FASTCALL1                        TYPEOF R0 ; [+3]
      148 MOVE                             R8 R0
      149 GETIMPORT                        R7 K17 [typeof]
      151 CALL                             R7 1 1
      152 JUMPIFEQKS                       R7 K18 ["number"] ; [+20]
      154 LOADB                            R6 0
      155 FASTCALL1                        TYPEOF R0 ; [+3]
      156 MOVE                             R8 R0
      157 GETIMPORT                        R7 K17 [typeof]
      159 CALL                             R7 1 1
      160 JUMPIFNOTEQKS                    R7 K19 ["table"] ; [+12]
      162 NAMECALL                         R8 R0 K20 ["getValue"]
      164 CALL                             R8 1 -1
      165 FASTCALL                         TYPEOF ; [+2]
      166 GETIMPORT                        R7 K17 [typeof]
      168 CALL                             R7 -1 1
      169 JUMPIFEQKS                       R7 K18 ["number"] ; [+2]
      171 LOADB                            R6 0 +1
      172 LOADB                            R6 1
      173 JUMPIFNOT                        R6 ; [+1]
      174 LOADNIL                          R5
      175 JUMPIFNOTEQKNIL                  R5 ; [+11]
      177 GETIMPORT                        R6 K22 [error]
      179 LOADK                            R8 K23 ["Invalid icon size: "]
      180 FASTCALL1                        TOSTRING R0 ; [+3]
      181 MOVE                             R10 R0
      182 GETIMPORT                        R9 K25 [tostring]
      184 CALL                             R9 1 1
      185 CONCAT                           R7 R8 R9
      186 CALL                             R6 1 0
      187 FASTCALL1                        TYPEOF R5 ; [+3]
      188 MOVE                             R8 R5
      189 GETIMPORT                        R7 K17 [typeof]
      191 CALL                             R7 1 1
      192 JUMPIFNOTEQKS                    R7 K19 ["table"] ; [+6]
      194 DUPCLOSURE                       R8 K26 [PROTO_1]
      195 NAMECALL                         R6 R5 K27 ["map"]
      197 CALL                             R6 2 1
      198 RETURN                           R6 1
      199 GETIMPORT                        R6 K30 [UDim2.fromOffset]
      201 MOVE                             R7 R5
      202 MOVE                             R8 R5
      203 CALL                             R6 2 1
      204 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["IconSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Providers"]
       25 GETTABLEKS                       R4 R4 K11 ["Style"]
       27 GETTABLEKS                       R4 R4 K12 ["useTokens"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 DUPCLOSURE                       R5 K14 [PROTO_2]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R5 1
