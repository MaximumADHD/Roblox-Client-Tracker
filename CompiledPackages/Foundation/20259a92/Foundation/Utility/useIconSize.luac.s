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
        2 JUMPIFNOT                        R1 ; [+87]
        3 NEWTABLE                         R4 8 0
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K0 ["XSmall"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEKS                       R7 R3 K1 ["Size"]
       11 GETTABLEKS                       R6 R7 K2 ["Size_400"]
       13 JUMP                             ; [+4]
       14 GETTABLEKS                       R7 R3 K1 ["Size"]
       16 GETTABLEKS                       R6 R7 K3 ["Size_300"]
       18 SETTABLE                         R6 R4 R5
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K4 ["Small"]
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETTABLEKS                       R7 R3 K1 ["Size"]
       25 GETTABLEKS                       R6 R7 K5 ["Size_500"]
       27 JUMP                             ; [+4]
       28 GETTABLEKS                       R7 R3 K1 ["Size"]
       30 GETTABLEKS                       R6 R7 K2 ["Size_400"]
       32 SETTABLE                         R6 R4 R5
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R5 R6 K6 ["Medium"]
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETTABLEKS                       R7 R3 K1 ["Size"]
       39 GETTABLEKS                       R6 R7 K7 ["Size_600"]
       41 JUMP                             ; [+4]
       42 GETTABLEKS                       R7 R3 K1 ["Size"]
       44 GETTABLEKS                       R6 R7 K5 ["Size_500"]
       46 SETTABLE                         R6 R4 R5
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R5 R6 K8 ["Large"]
       50 JUMPIFNOT                        R2 ; [+5]
       51 GETTABLEKS                       R7 R3 K1 ["Size"]
       53 GETTABLEKS                       R6 R7 K9 ["Size_700"]
       55 JUMP                             ; [+4]
       56 GETTABLEKS                       R7 R3 K1 ["Size"]
       58 GETTABLEKS                       R6 R7 K7 ["Size_600"]
       60 SETTABLE                         R6 R4 R5
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R5 R6 K10 ["XLarge"]
       64 JUMPIFNOT                        R2 ; [+5]
       65 GETTABLEKS                       R7 R3 K1 ["Size"]
       67 GETTABLEKS                       R6 R7 K11 ["Size_800"]
       69 JUMP                             ; [+4]
       70 GETTABLEKS                       R7 R3 K1 ["Size"]
       72 GETTABLEKS                       R6 R7 K9 ["Size_700"]
       74 SETTABLE                         R6 R4 R5
       75 GETUPVAL                         R6 1
       76 GETTABLEKS                       R5 R6 K12 ["XXLarge"]
       78 JUMPIFNOT                        R2 ; [+5]
       79 GETTABLEKS                       R7 R3 K1 ["Size"]
       81 GETTABLEKS                       R6 R7 K13 ["Size_900"]
       83 JUMP                             ; [+4]
       84 GETTABLEKS                       R7 R3 K1 ["Size"]
       86 GETTABLEKS                       R6 R7 K11 ["Size_800"]
       88 SETTABLE                         R6 R4 R5
       89 JUMP                             ; [+52]
       90 NEWTABLE                         R4 8 0
       92 GETUPVAL                         R6 1
       93 GETTABLEKS                       R5 R6 K0 ["XSmall"]
       95 GETTABLEKS                       R7 R3 K1 ["Size"]
       97 GETTABLEKS                       R6 R7 K14 ["Size_200"]
       99 SETTABLE                         R6 R4 R5
      100 GETUPVAL                         R6 1
      101 GETTABLEKS                       R5 R6 K4 ["Small"]
      103 GETTABLEKS                       R7 R3 K1 ["Size"]
      105 GETTABLEKS                       R6 R7 K2 ["Size_400"]
      107 SETTABLE                         R6 R4 R5
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R5 R6 K6 ["Medium"]
      111 GETTABLEKS                       R7 R3 K1 ["Size"]
      113 GETTABLEKS                       R6 R7 K13 ["Size_900"]
      115 SETTABLE                         R6 R4 R5
      116 GETUPVAL                         R6 1
      117 GETTABLEKS                       R5 R6 K8 ["Large"]
      119 GETTABLEKS                       R7 R3 K1 ["Size"]
      121 GETTABLEKS                       R6 R7 K15 ["Size_1200"]
      123 SETTABLE                         R6 R4 R5
      124 GETUPVAL                         R6 1
      125 GETTABLEKS                       R5 R6 K10 ["XLarge"]
      127 GETTABLEKS                       R7 R3 K1 ["Size"]
      129 GETTABLEKS                       R6 R7 K16 ["Size_2400"]
      131 SETTABLE                         R6 R4 R5
      132 GETUPVAL                         R6 1
      133 GETTABLEKS                       R5 R6 K12 ["XXLarge"]
      135 LOADN                            R7 24
      136 GETTABLEKS                       R9 R3 K1 ["Size"]
      138 GETTABLEKS                       R8 R9 K14 ["Size_200"]
      140 MUL                              R6 R7 R8
      141 SETTABLE                         R6 R4 R5
      142 LOADB                            R6 1
      143 FASTCALL1                        TYPEOF R0 ; [+3]
      144 MOVE                             R8 R0
      145 GETIMPORT                        R7 K18 [typeof]
      147 CALL                             R7 1 1
      148 JUMPIFEQKS                       R7 K19 ["number"] ; [+20]
      150 LOADB                            R6 0
      151 FASTCALL1                        TYPEOF R0 ; [+3]
      152 MOVE                             R8 R0
      153 GETIMPORT                        R7 K18 [typeof]
      155 CALL                             R7 1 1
      156 JUMPIFNOTEQKS                    R7 K20 ["table"] ; [+12]
      158 NAMECALL                         R8 R0 K21 ["getValue"]
      160 CALL                             R8 1 -1
      161 FASTCALL                         TYPEOF ; [+2]
      162 GETIMPORT                        R7 K18 [typeof]
      164 CALL                             R7 -1 1
      165 JUMPIFEQKS                       R7 K19 ["number"] ; [+2]
      167 LOADB                            R6 0 +1
      168 LOADB                            R6 1
      169 JUMPIFNOT                        R6 ; [+2]
      170 MOVE                             R5 R0
      171 JUMP                             ; [+1]
      172 GETTABLE                         R5 R4 R0
      173 JUMPIF                           R1 ; [+29]
      174 LOADB                            R6 1
      175 FASTCALL1                        TYPEOF R0 ; [+3]
      176 MOVE                             R8 R0
      177 GETIMPORT                        R7 K18 [typeof]
      179 CALL                             R7 1 1
      180 JUMPIFEQKS                       R7 K19 ["number"] ; [+20]
      182 LOADB                            R6 0
      183 FASTCALL1                        TYPEOF R0 ; [+3]
      184 MOVE                             R8 R0
      185 GETIMPORT                        R7 K18 [typeof]
      187 CALL                             R7 1 1
      188 JUMPIFNOTEQKS                    R7 K20 ["table"] ; [+12]
      190 NAMECALL                         R8 R0 K21 ["getValue"]
      192 CALL                             R8 1 -1
      193 FASTCALL                         TYPEOF ; [+2]
      194 GETIMPORT                        R7 K18 [typeof]
      196 CALL                             R7 -1 1
      197 JUMPIFEQKS                       R7 K19 ["number"] ; [+2]
      199 LOADB                            R6 0 +1
      200 LOADB                            R6 1
      201 JUMPIFNOT                        R6 ; [+1]
      202 LOADNIL                          R5
      203 JUMPIFNOTEQKNIL                  R5 ; [+11]
      205 GETIMPORT                        R6 K23 [error]
      207 LOADK                            R8 K24 ["Invalid icon size: "]
      208 FASTCALL1                        TOSTRING R0 ; [+3]
      209 MOVE                             R10 R0
      210 GETIMPORT                        R9 K26 [tostring]
      212 CALL                             R9 1 1
      213 CONCAT                           R7 R8 R9
      214 CALL                             R6 1 0
      215 FASTCALL1                        TYPEOF R5 ; [+3]
      216 MOVE                             R8 R5
      217 GETIMPORT                        R7 K18 [typeof]
      219 CALL                             R7 1 1
      220 JUMPIFNOTEQKS                    R7 K20 ["table"] ; [+6]
      222 DUPCLOSURE                       R8 K27 [PROTO_1]
      223 NAMECALL                         R6 R5 K28 ["map"]
      225 CALL                             R6 2 1
      226 RETURN                           R6 1
      227 GETIMPORT                        R6 K31 [UDim2.fromOffset]
      229 MOVE                             R7 R5
      230 MOVE                             R8 R5
      231 CALL                             R6 2 1
      232 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["IconSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Providers"]
       25 GETTABLEKS                       R5 R6 K11 ["Style"]
       27 GETTABLEKS                       R4 R5 K12 ["useTokens"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 DUPCLOSURE                       R5 K14 [PROTO_2]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R5 1
