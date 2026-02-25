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
        2 JUMPIFNOT                        R1 ; [+75]
        3 NEWTABLE                         R4 4 0
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K0 ["XSmall"]
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K1 ["FoundationIconButtonBiggerBuilderIcons"]
       11 JUMPIFNOT                        R7 ; [+6]
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETTABLEKS                       R7 R3 K2 ["Size"]
       15 GETTABLEKS                       R6 R7 K3 ["Size_400"]
       17 JUMP                             ; [+4]
       18 GETTABLEKS                       R7 R3 K2 ["Size"]
       20 GETTABLEKS                       R6 R7 K4 ["Size_300"]
       22 SETTABLE                         R6 R4 R5
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K5 ["Small"]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K1 ["FoundationIconButtonBiggerBuilderIcons"]
       29 JUMPIFNOT                        R7 ; [+6]
       30 JUMPIFNOT                        R2 ; [+5]
       31 GETTABLEKS                       R7 R3 K2 ["Size"]
       33 GETTABLEKS                       R6 R7 K6 ["Size_500"]
       35 JUMP                             ; [+4]
       36 GETTABLEKS                       R7 R3 K2 ["Size"]
       38 GETTABLEKS                       R6 R7 K3 ["Size_400"]
       40 SETTABLE                         R6 R4 R5
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R5 R6 K7 ["Medium"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R7 R8 K1 ["FoundationIconButtonBiggerBuilderIcons"]
       47 JUMPIFNOT                        R7 ; [+6]
       48 JUMPIFNOT                        R2 ; [+5]
       49 GETTABLEKS                       R7 R3 K2 ["Size"]
       51 GETTABLEKS                       R6 R7 K8 ["Size_600"]
       53 JUMP                             ; [+4]
       54 GETTABLEKS                       R7 R3 K2 ["Size"]
       56 GETTABLEKS                       R6 R7 K6 ["Size_500"]
       58 SETTABLE                         R6 R4 R5
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R5 R6 K9 ["Large"]
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R7 R8 K1 ["FoundationIconButtonBiggerBuilderIcons"]
       65 JUMPIFNOT                        R7 ; [+6]
       66 JUMPIFNOT                        R2 ; [+5]
       67 GETTABLEKS                       R7 R3 K2 ["Size"]
       69 GETTABLEKS                       R6 R7 K10 ["Size_700"]
       71 JUMP                             ; [+4]
       72 GETTABLEKS                       R7 R3 K2 ["Size"]
       74 GETTABLEKS                       R6 R7 K8 ["Size_600"]
       76 SETTABLE                         R6 R4 R5
       77 JUMP                             ; [+52]
       78 NEWTABLE                         R4 8 0
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R5 R6 K0 ["XSmall"]
       83 GETTABLEKS                       R7 R3 K2 ["Size"]
       85 GETTABLEKS                       R6 R7 K11 ["Size_200"]
       87 SETTABLE                         R6 R4 R5
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R5 R6 K5 ["Small"]
       91 GETTABLEKS                       R7 R3 K2 ["Size"]
       93 GETTABLEKS                       R6 R7 K3 ["Size_400"]
       95 SETTABLE                         R6 R4 R5
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R5 R6 K7 ["Medium"]
       99 GETTABLEKS                       R7 R3 K2 ["Size"]
      101 GETTABLEKS                       R6 R7 K12 ["Size_900"]
      103 SETTABLE                         R6 R4 R5
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R5 R6 K9 ["Large"]
      107 GETTABLEKS                       R7 R3 K2 ["Size"]
      109 GETTABLEKS                       R6 R7 K13 ["Size_1200"]
      111 SETTABLE                         R6 R4 R5
      112 GETUPVAL                         R6 1
      113 GETTABLEKS                       R5 R6 K14 ["XLarge"]
      115 GETTABLEKS                       R7 R3 K2 ["Size"]
      117 GETTABLEKS                       R6 R7 K15 ["Size_2400"]
      119 SETTABLE                         R6 R4 R5
      120 GETUPVAL                         R6 1
      121 GETTABLEKS                       R5 R6 K16 ["XXLarge"]
      123 LOADN                            R7 24
      124 GETTABLEKS                       R9 R3 K2 ["Size"]
      126 GETTABLEKS                       R8 R9 K11 ["Size_200"]
      128 MUL                              R6 R7 R8
      129 SETTABLE                         R6 R4 R5
      130 LOADB                            R6 1
      131 FASTCALL1                        TYPEOF R0 ; [+3]
      132 MOVE                             R8 R0
      133 GETIMPORT                        R7 K18 [typeof]
      135 CALL                             R7 1 1
      136 JUMPIFEQKS                       R7 K19 ["number"] ; [+20]
      138 LOADB                            R6 0
      139 FASTCALL1                        TYPEOF R0 ; [+3]
      140 MOVE                             R8 R0
      141 GETIMPORT                        R7 K18 [typeof]
      143 CALL                             R7 1 1
      144 JUMPIFNOTEQKS                    R7 K20 ["table"] ; [+12]
      146 NAMECALL                         R8 R0 K21 ["getValue"]
      148 CALL                             R8 1 -1
      149 FASTCALL                         TYPEOF ; [+2]
      150 GETIMPORT                        R7 K18 [typeof]
      152 CALL                             R7 -1 1
      153 JUMPIFEQKS                       R7 K19 ["number"] ; [+2]
      155 LOADB                            R6 0 +1
      156 LOADB                            R6 1
      157 JUMPIFNOT                        R6 ; [+2]
      158 MOVE                             R5 R0
      159 JUMP                             ; [+1]
      160 GETTABLE                         R5 R4 R0
      161 JUMPIF                           R1 ; [+29]
      162 LOADB                            R6 1
      163 FASTCALL1                        TYPEOF R0 ; [+3]
      164 MOVE                             R8 R0
      165 GETIMPORT                        R7 K18 [typeof]
      167 CALL                             R7 1 1
      168 JUMPIFEQKS                       R7 K19 ["number"] ; [+20]
      170 LOADB                            R6 0
      171 FASTCALL1                        TYPEOF R0 ; [+3]
      172 MOVE                             R8 R0
      173 GETIMPORT                        R7 K18 [typeof]
      175 CALL                             R7 1 1
      176 JUMPIFNOTEQKS                    R7 K20 ["table"] ; [+12]
      178 NAMECALL                         R8 R0 K21 ["getValue"]
      180 CALL                             R8 1 -1
      181 FASTCALL                         TYPEOF ; [+2]
      182 GETIMPORT                        R7 K18 [typeof]
      184 CALL                             R7 -1 1
      185 JUMPIFEQKS                       R7 K19 ["number"] ; [+2]
      187 LOADB                            R6 0 +1
      188 LOADB                            R6 1
      189 JUMPIFNOT                        R6 ; [+1]
      190 LOADNIL                          R5
      191 JUMPIFNOTEQKNIL                  R5 ; [+11]
      193 GETIMPORT                        R6 K23 [error]
      195 LOADK                            R8 K24 ["Invalid icon size: "]
      196 FASTCALL1                        TOSTRING R0 ; [+3]
      197 MOVE                             R10 R0
      198 GETIMPORT                        R9 K26 [tostring]
      200 CALL                             R9 1 1
      201 CONCAT                           R7 R8 R9
      202 CALL                             R6 1 0
      203 FASTCALL1                        TYPEOF R5 ; [+3]
      204 MOVE                             R8 R5
      205 GETIMPORT                        R7 K18 [typeof]
      207 CALL                             R7 1 1
      208 JUMPIFNOTEQKS                    R7 K20 ["table"] ; [+6]
      210 DUPCLOSURE                       R8 K27 [PROTO_1]
      211 NAMECALL                         R6 R5 K28 ["map"]
      213 CALL                             R6 2 1
      214 RETURN                           R6 1
      215 GETIMPORT                        R6 K31 [UDim2.fromOffset]
      217 MOVE                             R7 R5
      218 MOVE                             R8 R5
      219 CALL                             R6 2 1
      220 RETURN                           R6 1

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
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Utility"]
       34 GETTABLEKS                       R5 R6 K14 ["Flags"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K15 [PROTO_0]
       38 DUPCLOSURE                       R6 K16 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
