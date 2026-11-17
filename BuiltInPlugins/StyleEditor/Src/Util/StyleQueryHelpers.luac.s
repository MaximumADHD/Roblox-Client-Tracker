PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["WhiteSpace"]
        6 LOADK                            R4 K1 [""]
        7 NAMECALL                         R1 R0 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 JUMPIFNOT                        R1 ; [+5]
       11 JUMPIFEQKS                       R1 K1 [""] ; [+4]
       13 GETUPVAL                         R2 1
       14 JUMPIFNOTEQ                      R1 R2 ; [+3]
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["WhiteSpace"]
        6 LOADK                            R4 K1 [""]
        7 NAMECALL                         R1 R0 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["Name"]
       13 LOADK                            R5 K4 [" %*"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K3 ["Name"]
       17 NAMECALL                         R5 R5 K5 ["format"]
       19 CALL                             R5 2 1
       20 NAMECALL                         R2 R1 K2 ["gsub"]
       22 CALL                             R2 3 1
       23 MOVE                             R1 R2
       24 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
       26 LOADNIL                          R2
       27 RETURN                           R2 1
       28 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Name"]
        3 GETTABLEKS                       R4 R1 K0 ["Name"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+9]
        7 GETTABLEKS                       R3 R0 K1 ["Head"]
        9 GETTABLEKS                       R4 R1 K1 ["Head"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADK                            R2 K0 [""]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R3 R1 K1 ["Head"]
        6 ORK                              R2 R3 K0 [""]
        7 GETTABLEKS                       R4 R1 K2 ["Tail"]
        9 ORK                              R3 R4 K0 [""]
       10 GETTABLEKS                       R5 R1 K3 ["Name"]
       12 JUMPIF                           R5 ; [+2]
       13 LOADNIL                          R4
       14 JUMP                             ; [+16]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K4 ["WhiteSpace"]
       18 LOADK                            R9 K0 [""]
       19 NAMECALL                         R6 R5 K5 ["gsub"]
       21 CALL                             R6 3 1
       22 JUMPIFNOT                        R6 ; [+5]
       23 JUMPIFEQKS                       R6 K0 [""] ; [+4]
       25 GETUPVAL                         R7 1
       26 JUMPIFNOTEQ                      R6 R7 ; [+3]
       28 LOADNIL                          R4
       29 JUMP                             ; [+1]
       30 MOVE                             R4 R6
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K6 ["Type"]
       34 GETTABLEKS                       R5 R5 K7 ["Query"]
       36 JUMPIFNOTEQ                      R0 R5 ; [+28]
       38 JUMPIFEQKS                       R2 K0 [""] ; [+14]
       40 LOADK                            R5 K8 ["%* %*%*%*"]
       41 MOVE                             R7 R2
       42 GETUPVAL                         R8 3
       43 GETTABLEKS                       R8 R8 K7 ["Query"]
       45 MOVE                             R9 R4
       46 JUMPIF                           R9 ; [+1]
       47 GETUPVAL                         R9 1
       48 MOVE                             R10 R3
       49 NAMECALL                         R5 R5 K9 ["format"]
       51 CALL                             R5 5 1
       52 RETURN                           R5 1
       53 LOADK                            R5 K10 ["%*%*%*"]
       54 GETUPVAL                         R7 3
       55 GETTABLEKS                       R7 R7 K7 ["Query"]
       57 MOVE                             R8 R4
       58 JUMPIF                           R8 ; [+1]
       59 GETUPVAL                         R8 1
       60 MOVE                             R9 R3
       61 NAMECALL                         R5 R5 K9 ["format"]
       63 CALL                             R5 4 1
       64 RETURN                           R5 1
       65 GETUPVAL                         R5 2
       66 GETTABLEKS                       R5 R5 K6 ["Type"]
       68 GETTABLEKS                       R5 R5 K11 ["Pseudo"]
       70 JUMPIFNOTEQ                      R0 R5 ; [+28]
       72 LOADK                            R5 K12 ["%*%*"]
       73 GETUPVAL                         R7 3
       74 GETTABLEKS                       R7 R7 K13 ["PseudoInstance"]
       76 GETUPVAL                         R8 1
       77 NAMECALL                         R5 R5 K9 ["format"]
       79 CALL                             R5 3 1
       80 JUMPIFNOT                        R4 ; [+10]
       81 LOADK                            R6 K14 ["%* %*%*"]
       82 MOVE                             R8 R5
       83 GETUPVAL                         R9 3
       84 GETTABLEKS                       R9 R9 K3 ["Name"]
       86 MOVE                             R10 R4
       87 NAMECALL                         R6 R6 K9 ["format"]
       89 CALL                             R6 4 1
       90 MOVE                             R5 R6
       91 LOADK                            R6 K10 ["%*%*%*"]
       92 MOVE                             R8 R2
       93 MOVE                             R9 R5
       94 MOVE                             R10 R3
       95 NAMECALL                         R6 R6 K9 ["format"]
       97 CALL                             R6 4 1
       98 RETURN                           R6 1
       99 LOADK                            R5 K0 [""]
      100 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R0 K0 ["find"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["Type"]
       13 GETTABLEKS                       R1 R1 K2 ["Pseudo"]
       15 RETURN                           R1 1
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["Query"]
       19 LOADN                            R4 1
       20 LOADB                            R5 1
       21 NAMECALL                         R1 R0 K0 ["find"]
       23 CALL                             R1 4 1
       24 JUMPIFNOT                        R1 ; [+6]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K1 ["Type"]
       28 GETTABLEKS                       R1 R1 K3 ["Query"]
       30 RETURN                           R1 1
       31 LOADNIL                          R1
       32 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Type"]
        3 GETTABLEKS                       R2 R2 K1 ["Query"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+102]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R2 R0 K2 ["find"]
       10 CALL                             R2 2 3
       11 JUMPIFNOT                        R2 ; [+210]
       12 JUMPIFNOT                        R3 ; [+209]
       13 LOADN                            R7 1
       14 SUBK                             R8 R2 K3 [1]
       15 NAMECALL                         R5 R0 K4 ["sub"]
       17 CALL                             R5 3 1
       18 ADDK                             R8 R3 K3 [1]
       19 NAMECALL                         R6 R0 K4 ["sub"]
       21 CALL                             R6 2 1
       22 DUPTABLE                         R7 K8 [{"Head", "Name", "Tail"}]
       23 JUMPIF                           R5 ; [+2]
       24 LOADNIL                          R8
       25 JUMP                             ; [+26]
       26 GETUPVAL                         R11 2
       27 GETTABLEKS                       R11 R11 K9 ["WhiteSpace"]
       29 LOADK                            R12 K10 [""]
       30 NAMECALL                         R9 R5 K11 ["gsub"]
       32 CALL                             R9 3 1
       33 GETUPVAL                         R12 3
       34 GETTABLEKS                       R12 R12 K6 ["Name"]
       36 LOADK                            R13 K12 [" %*"]
       37 GETUPVAL                         R15 3
       38 GETTABLEKS                       R15 R15 K6 ["Name"]
       40 NAMECALL                         R13 R13 K13 ["format"]
       42 CALL                             R13 2 1
       43 NAMECALL                         R10 R9 K11 ["gsub"]
       45 CALL                             R10 3 1
       46 MOVE                             R9 R10
       47 JUMPIFNOTEQKS                    R9 K10 [""] ; [+3]
       49 LOADNIL                          R8
       50 JUMP                             ; [+1]
       51 MOVE                             R8 R9
       52 SETTABLEKS                       R8 R7 K5 ["Head"]
       54 JUMPIF                           R4 ; [+2]
       55 LOADNIL                          R8
       56 JUMP                             ; [+16]
       57 GETUPVAL                         R11 2
       58 GETTABLEKS                       R11 R11 K9 ["WhiteSpace"]
       60 LOADK                            R12 K10 [""]
       61 NAMECALL                         R9 R4 K11 ["gsub"]
       63 CALL                             R9 3 1
       64 JUMPIFNOT                        R9 ; [+5]
       65 JUMPIFEQKS                       R9 K10 [""] ; [+4]
       67 GETUPVAL                         R10 4
       68 JUMPIFNOTEQ                      R9 R10 ; [+3]
       70 LOADNIL                          R8
       71 JUMP                             ; [+1]
       72 MOVE                             R8 R9
       73 SETTABLEKS                       R8 R7 K6 ["Name"]
       75 JUMPIF                           R6 ; [+2]
       76 LOADNIL                          R8
       77 JUMP                             ; [+26]
       78 GETUPVAL                         R11 2
       79 GETTABLEKS                       R11 R11 K9 ["WhiteSpace"]
       81 LOADK                            R12 K10 [""]
       82 NAMECALL                         R9 R6 K11 ["gsub"]
       84 CALL                             R9 3 1
       85 GETUPVAL                         R12 3
       86 GETTABLEKS                       R12 R12 K6 ["Name"]
       88 LOADK                            R13 K12 [" %*"]
       89 GETUPVAL                         R15 3
       90 GETTABLEKS                       R15 R15 K6 ["Name"]
       92 NAMECALL                         R13 R13 K13 ["format"]
       94 CALL                             R13 2 1
       95 NAMECALL                         R10 R9 K11 ["gsub"]
       97 CALL                             R10 3 1
       98 MOVE                             R9 R10
       99 JUMPIFNOTEQKS                    R9 K10 [""] ; [+3]
      101 LOADNIL                          R8
      102 JUMP                             ; [+1]
      103 MOVE                             R8 R9
      104 SETTABLEKS                       R8 R7 K7 ["Tail"]
      106 RETURN                           R7 1
      107 JUMP                             ; [+114]
      108 GETUPVAL                         R2 0
      109 GETTABLEKS                       R2 R2 K0 ["Type"]
      111 GETTABLEKS                       R2 R2 K14 ["Pseudo"]
      113 JUMPIFNOTEQ                      R1 R2 ; [+108]
      115 GETUPVAL                         R4 5
      116 NAMECALL                         R2 R0 K2 ["find"]
      118 CALL                             R2 2 3
      119 JUMPIFNOT                        R2 ; [+59]
      120 DUPTABLE                         R5 K16 [{["Head"], ["Name"], ["Tail"] = }]
      121 LOADN                            R9 1
      122 SUBK                             R10 R2 K3 [1]
      123 NAMECALL                         R7 R0 K4 ["sub"]
      125 CALL                             R7 3 1
      126 JUMPIF                           R7 ; [+2]
      127 LOADNIL                          R6
      128 JUMP                             ; [+26]
      129 GETUPVAL                         R10 2
      130 GETTABLEKS                       R10 R10 K9 ["WhiteSpace"]
      132 LOADK                            R11 K10 [""]
      133 NAMECALL                         R8 R7 K11 ["gsub"]
      135 CALL                             R8 3 1
      136 GETUPVAL                         R11 3
      137 GETTABLEKS                       R11 R11 K6 ["Name"]
      139 LOADK                            R12 K12 [" %*"]
      140 GETUPVAL                         R14 3
      141 GETTABLEKS                       R14 R14 K6 ["Name"]
      143 NAMECALL                         R12 R12 K13 ["format"]
      145 CALL                             R12 2 1
      146 NAMECALL                         R9 R8 K11 ["gsub"]
      148 CALL                             R9 3 1
      149 MOVE                             R8 R9
      150 JUMPIFNOTEQKS                    R8 K10 [""] ; [+3]
      152 LOADNIL                          R6
      153 JUMP                             ; [+1]
      154 MOVE                             R6 R8
      155 SETTABLEKS                       R6 R5 K5 ["Head"]
      157 JUMPIF                           R4 ; [+2]
      158 LOADNIL                          R6
      159 JUMP                             ; [+16]
      160 GETUPVAL                         R9 2
      161 GETTABLEKS                       R9 R9 K9 ["WhiteSpace"]
      163 LOADK                            R10 K10 [""]
      164 NAMECALL                         R7 R4 K11 ["gsub"]
      166 CALL                             R7 3 1
      167 JUMPIFNOT                        R7 ; [+5]
      168 JUMPIFEQKS                       R7 K10 [""] ; [+4]
      170 GETUPVAL                         R8 4
      171 JUMPIFNOTEQ                      R7 R8 ; [+3]
      173 LOADNIL                          R6
      174 JUMP                             ; [+1]
      175 MOVE                             R6 R7
      176 SETTABLEKS                       R6 R5 K6 ["Name"]
      178 RETURN                           R5 1
      179 GETUPVAL                         R7 6
      180 NAMECALL                         R5 R0 K2 ["find"]
      182 CALL                             R5 2 2
      183 JUMPIFNOT                        R5 ; [+38]
      184 DUPTABLE                         R7 K17 [{["Head"], ["Name"] = , ["Tail"] = }]
      185 LOADN                            R11 1
      186 SUBK                             R12 R5 K3 [1]
      187 NAMECALL                         R9 R0 K4 ["sub"]
      189 CALL                             R9 3 1
      190 JUMPIF                           R9 ; [+2]
      191 LOADNIL                          R8
      192 JUMP                             ; [+26]
      193 GETUPVAL                         R12 2
      194 GETTABLEKS                       R12 R12 K9 ["WhiteSpace"]
      196 LOADK                            R13 K10 [""]
      197 NAMECALL                         R10 R9 K11 ["gsub"]
      199 CALL                             R10 3 1
      200 GETUPVAL                         R13 3
      201 GETTABLEKS                       R13 R13 K6 ["Name"]
      203 LOADK                            R14 K12 [" %*"]
      204 GETUPVAL                         R16 3
      205 GETTABLEKS                       R16 R16 K6 ["Name"]
      207 NAMECALL                         R14 R14 K13 ["format"]
      209 CALL                             R14 2 1
      210 NAMECALL                         R11 R10 K11 ["gsub"]
      212 CALL                             R11 3 1
      213 MOVE                             R10 R11
      214 JUMPIFNOTEQKS                    R10 K10 [""] ; [+3]
      216 LOADNIL                          R8
      217 JUMP                             ; [+1]
      218 MOVE                             R8 R10
      219 SETTABLEKS                       R8 R7 K5 ["Head"]
      221 RETURN                           R7 1
      222 LOADNIL                          R2
      223 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getQueryTypeFromSelector"]
        3 GETTABLEKS                       R2 R0 K1 ["Selector"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Type"]
        9 GETTABLEKS                       R2 R2 K3 ["Query"]
       11 JUMPIFEQ                         R1 R2 ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["getDataFromSelector"]
       18 GETTABLEKS                       R3 R0 K1 ["Selector"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 1
       22 JUMPIF                           R2 ; [+2]
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 LOADK                            R5 K5 ["StyleBase"]
       26 NAMECALL                         R3 R0 K6 ["FindFirstAncestorWhichIsA"]
       28 CALL                             R3 2 1
       29 JUMPIF                           R3 ; [+2]
       30 LOADNIL                          R4
       31 RETURN                           R4 1
       32 NAMECALL                         R4 R3 K7 ["GetStyleRules"]
       34 CALL                             R4 1 3
       35 FORGPREP                         R4
       36 LOADK                            R12 K8 ["StyleRule"]
       37 NAMECALL                         R10 R8 K9 ["IsA"]
       39 CALL                             R10 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R9 K11 [assert]
       43 CALL                             R9 -1 0
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K0 ["getQueryTypeFromSelector"]
       47 GETTABLEKS                       R10 R8 K1 ["Selector"]
       49 CALL                             R9 1 1
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K2 ["Type"]
       53 GETTABLEKS                       R10 R10 K12 ["Pseudo"]
       55 JUMPIFNOTEQ                      R9 R10 ; [+17]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K4 ["getDataFromSelector"]
       60 GETTABLEKS                       R11 R8 K1 ["Selector"]
       62 MOVE                             R12 R9
       63 CALL                             R10 2 1
       64 JUMPIFNOT                        R10 ; [+8]
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K13 ["areSelectorsPaired"]
       68 MOVE                             R12 R2
       69 MOVE                             R13 R10
       70 CALL                             R11 2 1
       71 JUMPIFNOT                        R11 ; [+1]
       72 RETURN                           R8 1
       73 FORGLOOP                         R4 2 ; [-38]
       75 LOADNIL                          R4
       76 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getQueryTypeFromSelector"]
        3 GETTABLEKS                       R2 R0 K1 ["Selector"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Type"]
        9 GETTABLEKS                       R2 R2 K3 ["Pseudo"]
       11 JUMPIFEQ                         R1 R2 ; [+4]
       13 NEWTABLE                         R2 0 0
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["getDataFromSelector"]
       19 GETTABLEKS                       R3 R0 K1 ["Selector"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 1
       23 JUMPIF                           R2 ; [+3]
       24 NEWTABLE                         R3 0 0
       26 RETURN                           R3 1
       27 LOADK                            R5 K5 ["StyleBase"]
       28 NAMECALL                         R3 R0 K6 ["FindFirstAncestorWhichIsA"]
       30 CALL                             R3 2 1
       31 JUMPIF                           R3 ; [+3]
       32 NEWTABLE                         R4 0 0
       34 RETURN                           R4 1
       35 NEWTABLE                         R4 0 0
       37 NAMECALL                         R5 R3 K7 ["GetStyleRules"]
       39 CALL                             R5 1 3
       40 FORGPREP                         R5
       41 LOADK                            R13 K8 ["StyleRule"]
       42 NAMECALL                         R11 R9 K9 ["IsA"]
       44 CALL                             R11 2 -1
       45 FASTCALL                         ASSERT ; [+2]
       46 GETIMPORT                        R10 K11 [assert]
       48 CALL                             R10 -1 0
       49 JUMPIFEQ                         R9 R0 ; [+35]
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K0 ["getQueryTypeFromSelector"]
       54 GETTABLEKS                       R11 R9 K1 ["Selector"]
       56 CALL                             R10 1 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K2 ["Type"]
       60 GETTABLEKS                       R11 R11 K12 ["Query"]
       62 JUMPIFNOTEQ                      R10 R11 ; [+22]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K4 ["getDataFromSelector"]
       67 GETTABLEKS                       R12 R9 K1 ["Selector"]
       69 MOVE                             R13 R10
       70 CALL                             R11 2 1
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R12 R12 K13 ["areSelectorsPaired"]
       74 MOVE                             R13 R2
       75 MOVE                             R14 R11
       76 CALL                             R12 2 1
       77 JUMPIFNOT                        R12 ; [+7]
       78 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       80 MOVE                             R13 R4
       81 MOVE                             R14 R9
       82 GETIMPORT                        R12 K16 [table.insert]
       84 CALL                             R12 2 0
       85 FORGLOOP                         R5 2 ; [-45]
       87 RETURN                           R4 1

PROTO_8:
        0 LOADK                            R6 K0 ["StyleBase"]
        1 NAMECALL                         R4 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R4 2 1
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R5 R4 K2 ["GetStyleRules"]
        8 CALL                             R5 1 3
        9 FORGPREP                         R5
       10 LOADK                            R13 K3 ["StyleRule"]
       11 NAMECALL                         R11 R9 K4 ["IsA"]
       13 CALL                             R11 2 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R10 K6 [assert]
       17 CALL                             R10 -1 0
       18 JUMPIFEQ                         R9 R0 ; [+51]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K7 ["getQueryTypeFromSelector"]
       23 GETTABLEKS                       R11 R9 K8 ["Selector"]
       25 CALL                             R10 1 1
       26 JUMPIFNOT                        R10 ; [+43]
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R11 R11 K9 ["getDataFromSelector"]
       30 GETTABLEKS                       R12 R9 K8 ["Selector"]
       32 MOVE                             R13 R10
       33 CALL                             R11 2 1
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K10 ["areSelectorsPaired"]
       37 MOVE                             R13 R1
       38 MOVE                             R14 R11
       39 CALL                             R12 2 1
       40 JUMPIFNOT                        R12 ; [+29]
       41 DUPTABLE                         R12 K14 [{"Head", "Name", "Tail"}]
       42 GETTABLEKS                       R13 R11 K11 ["Head"]
       44 SETTABLEKS                       R13 R12 K11 ["Head"]
       46 SETTABLEKS                       R2 R12 K12 ["Name"]
       48 GETTABLEKS                       R13 R11 K13 ["Tail"]
       50 SETTABLEKS                       R13 R12 K13 ["Tail"]
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R13 R13 K15 ["constructSelector"]
       55 MOVE                             R14 R10
       56 MOVE                             R15 R12
       57 CALL                             R13 2 1
       58 JUMPIFEQKS                       R13 K16 [""] ; [+11]
       60 GETTABLEKS                       R14 R9 K8 ["Selector"]
       62 JUMPIFEQ                         R13 R14 ; [+7]
       64 MOVE                             R14 R3
       65 GETUPVAL                         R15 1
       66 MOVE                             R16 R9
       67 MOVE                             R17 R13
       68 CALL                             R15 2 -1
       69 CALL                             R14 -1 0
       70 FORGLOOP                         R5 2 ; [-61]
       72 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["SelectorHelpers"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K5 ["Src"]
       20 GETTABLEKS                       R2 R2 K8 ["Thunks"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R2 K9 ["Change"]
       26 GETTABLEKS                       R4 R4 K10 ["SetStyleRuleSelector"]
       28 CALL                             R3 1 1
       29 NEWTABLE                         R4 16 0
       31 LOADK                            R5 K11 ["StyleQuery"]
       32 SETTABLEKS                       R5 R4 K12 ["ClassName"]
       34 LOADK                            R5 K13 ["Queries"]
       35 SETTABLEKS                       R5 R4 K14 ["FolderName"]
       37 DUPTABLE                         R5 K17 [{["Pseudo"] = "Pseudo", ["Query"] = "Query"}]
       38 SETTABLEKS                       R5 R4 K18 ["Type"]
       40 DUPTABLE                         R5 K33 [{["Beginning"] = "^", ["End"] = "$", ["OptionalWhiteSpace"] = "%s*", ["WhiteSpace"] = "%s+", ["ValidNameChars"] = "[%w_%-%s]*", ["CaptureStart"] = "(", ["CaptureEnd"] = ")"}]
       41 SETTABLEKS                       R5 R4 K34 ["Regex"]
       43 GETTABLEKS                       R5 R1 K35 ["SelectorSyntax"]
       45 GETTABLEKS                       R6 R4 K34 ["Regex"]
       47 GETTABLEKS                       R7 R4 K12 ["ClassName"]
       49 LOADK                            R8 K36 ["%*%*%*%*%*"]
       50 GETTABLEKS                       R10 R5 K37 ["PseudoInstance"]
       52 GETTABLEKS                       R11 R6 K23 ["OptionalWhiteSpace"]
       54 MOVE                             R12 R7
       55 GETTABLEKS                       R13 R6 K23 ["OptionalWhiteSpace"]
       57 GETTABLEKS                       R14 R6 K21 ["End"]
       59 NAMECALL                         R8 R8 K38 ["format"]
       61 CALL                             R8 6 1
       62 LOADK                            R9 K39 ["%*%*%*%*%*%*%*%*%*"]
       63 GETTABLEKS                       R11 R5 K37 ["PseudoInstance"]
       65 GETTABLEKS                       R12 R6 K23 ["OptionalWhiteSpace"]
       67 MOVE                             R13 R7
       68 GETTABLEKS                       R14 R6 K23 ["OptionalWhiteSpace"]
       70 GETTABLEKS                       R15 R5 K40 ["Name"]
       72 GETTABLEKS                       R16 R6 K29 ["CaptureStart"]
       74 GETTABLEKS                       R17 R6 K27 ["ValidNameChars"]
       76 GETTABLEKS                       R18 R6 K31 ["CaptureEnd"]
       78 GETTABLEKS                       R19 R6 K21 ["End"]
       80 NAMECALL                         R9 R9 K38 ["format"]
       82 CALL                             R9 10 1
       83 LOADK                            R10 K41 ["%*%*%*%*"]
       84 GETTABLEKS                       R12 R5 K16 ["Query"]
       86 GETTABLEKS                       R13 R6 K29 ["CaptureStart"]
       88 GETTABLEKS                       R14 R6 K27 ["ValidNameChars"]
       90 GETTABLEKS                       R15 R6 K31 ["CaptureEnd"]
       92 NAMECALL                         R10 R10 K38 ["format"]
       94 CALL                             R10 5 1
       95 DUPCLOSURE                       R11 K42 [PROTO_0]
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R7
       98 DUPCLOSURE                       R12 K43 [PROTO_1]
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R5
      101 DUPCLOSURE                       R13 K44 [PROTO_2]
      102 SETTABLEKS                       R13 R4 K45 ["areSelectorsPaired"]
      104 DUPCLOSURE                       R13 K46 [PROTO_3]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R5
      109 SETTABLEKS                       R13 R4 K47 ["constructSelector"]
      111 DUPCLOSURE                       R13 K48 [PROTO_4]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R13 R4 K49 ["getQueryTypeFromSelector"]
      118 DUPCLOSURE                       R13 K50 [PROTO_5]
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R8
      126 SETTABLEKS                       R13 R4 K51 ["getDataFromSelector"]
      128 DUPCLOSURE                       R13 K52 [PROTO_6]
      129 CAPTURE                          VAL R4
      130 SETTABLEKS                       R13 R4 K53 ["getPseudoRuleForQuery"]
      132 DUPCLOSURE                       R13 K54 [PROTO_7]
      133 CAPTURE                          VAL R4
      134 SETTABLEKS                       R13 R4 K55 ["getQueryStyleRulesForPseudo"]
      136 DUPCLOSURE                       R13 K56 [PROTO_8]
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R13 R4 K57 ["syncQueryRuleSelectors"]
      141 RETURN                           R4 1
