PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["WhiteSpace"]
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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["WhiteSpace"]
        6 LOADK                            R4 K1 [""]
        7 NAMECALL                         R1 R0 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K3 ["Name"]
       13 LOADK                            R6 K4 [" %*"]
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R8 R9 K3 ["Name"]
       17 NAMECALL                         R6 R6 K5 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 NAMECALL                         R2 R1 K2 ["gsub"]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
       27 LOADNIL                          R2
       28 RETURN                           R2 1
       29 RETURN                           R1 1

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
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K4 ["WhiteSpace"]
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
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K6 ["Type"]
       34 GETTABLEKS                       R5 R6 K7 ["Query"]
       36 JUMPIFNOTEQ                      R0 R5 ; [+30]
       38 JUMPIFEQKS                       R2 K0 [""] ; [+15]
       40 LOADK                            R6 K8 ["%* %*%*%*"]
       41 MOVE                             R8 R2
       42 GETUPVAL                         R10 3
       43 GETTABLEKS                       R9 R10 K7 ["Query"]
       45 MOVE                             R10 R4
       46 JUMPIF                           R10 ; [+1]
       47 GETUPVAL                         R10 1
       48 MOVE                             R11 R3
       49 NAMECALL                         R6 R6 K9 ["format"]
       51 CALL                             R6 5 1
       52 MOVE                             R5 R6
       53 RETURN                           R5 1
       54 LOADK                            R6 K10 ["%*%*%*"]
       55 GETUPVAL                         R9 3
       56 GETTABLEKS                       R8 R9 K7 ["Query"]
       58 MOVE                             R9 R4
       59 JUMPIF                           R9 ; [+1]
       60 GETUPVAL                         R9 1
       61 MOVE                             R10 R3
       62 NAMECALL                         R6 R6 K9 ["format"]
       64 CALL                             R6 4 1
       65 MOVE                             R5 R6
       66 RETURN                           R5 1
       67 GETUPVAL                         R7 2
       68 GETTABLEKS                       R6 R7 K6 ["Type"]
       70 GETTABLEKS                       R5 R6 K11 ["Pseudo"]
       72 JUMPIFNOTEQ                      R0 R5 ; [+30]
       74 LOADK                            R6 K12 ["%*%*"]
       75 GETUPVAL                         R9 3
       76 GETTABLEKS                       R8 R9 K13 ["PseudoInstance"]
       78 GETUPVAL                         R9 1
       79 NAMECALL                         R6 R6 K9 ["format"]
       81 CALL                             R6 3 1
       82 MOVE                             R5 R6
       83 JUMPIFNOT                        R4 ; [+10]
       84 LOADK                            R6 K14 ["%* %*%*"]
       85 MOVE                             R8 R5
       86 GETUPVAL                         R10 3
       87 GETTABLEKS                       R9 R10 K3 ["Name"]
       89 MOVE                             R10 R4
       90 NAMECALL                         R6 R6 K9 ["format"]
       92 CALL                             R6 4 1
       93 MOVE                             R5 R6
       94 LOADK                            R7 K10 ["%*%*%*"]
       95 MOVE                             R9 R2
       96 MOVE                             R10 R5
       97 MOVE                             R11 R3
       98 NAMECALL                         R7 R7 K9 ["format"]
      100 CALL                             R7 4 1
      101 MOVE                             R6 R7
      102 RETURN                           R6 1
      103 LOADK                            R5 K0 [""]
      104 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R0 K0 ["find"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K1 ["Type"]
       13 GETTABLEKS                       R1 R2 K2 ["Pseudo"]
       15 RETURN                           R1 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K3 ["Query"]
       19 LOADN                            R4 1
       20 LOADB                            R5 1
       21 NAMECALL                         R1 R0 K0 ["find"]
       23 CALL                             R1 4 1
       24 JUMPIFNOT                        R1 ; [+6]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R2 R3 K1 ["Type"]
       28 GETTABLEKS                       R1 R2 K3 ["Query"]
       30 RETURN                           R1 1
       31 LOADNIL                          R1
       32 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Type"]
        3 GETTABLEKS                       R2 R3 K1 ["Query"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+104]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R2 R0 K2 ["find"]
       10 CALL                             R2 2 3
       11 JUMPIFNOT                        R2 ; [+223]
       12 JUMPIFNOT                        R3 ; [+222]
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
       25 JUMP                             ; [+27]
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R11 R12 K9 ["WhiteSpace"]
       29 LOADK                            R12 K10 [""]
       30 NAMECALL                         R9 R5 K11 ["gsub"]
       32 CALL                             R9 3 1
       33 GETUPVAL                         R13 3
       34 GETTABLEKS                       R12 R13 K6 ["Name"]
       36 LOADK                            R14 K12 [" %*"]
       37 GETUPVAL                         R17 3
       38 GETTABLEKS                       R16 R17 K6 ["Name"]
       40 NAMECALL                         R14 R14 K13 ["format"]
       42 CALL                             R14 2 1
       43 MOVE                             R13 R14
       44 NAMECALL                         R10 R9 K11 ["gsub"]
       46 CALL                             R10 3 1
       47 MOVE                             R9 R10
       48 JUMPIFNOTEQKS                    R9 K10 [""] ; [+3]
       50 LOADNIL                          R8
       51 JUMP                             ; [+1]
       52 MOVE                             R8 R9
       53 SETTABLEKS                       R8 R7 K5 ["Head"]
       55 JUMPIF                           R4 ; [+2]
       56 LOADNIL                          R8
       57 JUMP                             ; [+16]
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R11 R12 K9 ["WhiteSpace"]
       61 LOADK                            R12 K10 [""]
       62 NAMECALL                         R9 R4 K11 ["gsub"]
       64 CALL                             R9 3 1
       65 JUMPIFNOT                        R9 ; [+5]
       66 JUMPIFEQKS                       R9 K10 [""] ; [+4]
       68 GETUPVAL                         R10 4
       69 JUMPIFNOTEQ                      R9 R10 ; [+3]
       71 LOADNIL                          R8
       72 JUMP                             ; [+1]
       73 MOVE                             R8 R9
       74 SETTABLEKS                       R8 R7 K6 ["Name"]
       76 JUMPIF                           R6 ; [+2]
       77 LOADNIL                          R8
       78 JUMP                             ; [+27]
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R11 R12 K9 ["WhiteSpace"]
       82 LOADK                            R12 K10 [""]
       83 NAMECALL                         R9 R6 K11 ["gsub"]
       85 CALL                             R9 3 1
       86 GETUPVAL                         R13 3
       87 GETTABLEKS                       R12 R13 K6 ["Name"]
       89 LOADK                            R14 K12 [" %*"]
       90 GETUPVAL                         R17 3
       91 GETTABLEKS                       R16 R17 K6 ["Name"]
       93 NAMECALL                         R14 R14 K13 ["format"]
       95 CALL                             R14 2 1
       96 MOVE                             R13 R14
       97 NAMECALL                         R10 R9 K11 ["gsub"]
       99 CALL                             R10 3 1
      100 MOVE                             R9 R10
      101 JUMPIFNOTEQKS                    R9 K10 [""] ; [+3]
      103 LOADNIL                          R8
      104 JUMP                             ; [+1]
      105 MOVE                             R8 R9
      106 SETTABLEKS                       R8 R7 K7 ["Tail"]
      108 RETURN                           R7 1
      109 JUMP                             ; [+125]
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R3 R4 K0 ["Type"]
      113 GETTABLEKS                       R2 R3 K14 ["Pseudo"]
      115 JUMPIFNOTEQ                      R1 R2 ; [+119]
      117 GETUPVAL                         R4 5
      118 NAMECALL                         R2 R0 K2 ["find"]
      120 CALL                             R2 2 3
      121 JUMPIFNOT                        R2 ; [+63]
      122 DUPTABLE                         R5 K8 [{"Head", "Name", "Tail"}]
      123 LOADN                            R9 1
      124 SUBK                             R10 R2 K3 [1]
      125 NAMECALL                         R7 R0 K4 ["sub"]
      127 CALL                             R7 3 1
      128 JUMPIF                           R7 ; [+2]
      129 LOADNIL                          R6
      130 JUMP                             ; [+27]
      131 GETUPVAL                         R11 2
      132 GETTABLEKS                       R10 R11 K9 ["WhiteSpace"]
      134 LOADK                            R11 K10 [""]
      135 NAMECALL                         R8 R7 K11 ["gsub"]
      137 CALL                             R8 3 1
      138 GETUPVAL                         R12 3
      139 GETTABLEKS                       R11 R12 K6 ["Name"]
      141 LOADK                            R13 K12 [" %*"]
      142 GETUPVAL                         R16 3
      143 GETTABLEKS                       R15 R16 K6 ["Name"]
      145 NAMECALL                         R13 R13 K13 ["format"]
      147 CALL                             R13 2 1
      148 MOVE                             R12 R13
      149 NAMECALL                         R9 R8 K11 ["gsub"]
      151 CALL                             R9 3 1
      152 MOVE                             R8 R9
      153 JUMPIFNOTEQKS                    R8 K10 [""] ; [+3]
      155 LOADNIL                          R6
      156 JUMP                             ; [+1]
      157 MOVE                             R6 R8
      158 SETTABLEKS                       R6 R5 K5 ["Head"]
      160 JUMPIF                           R4 ; [+2]
      161 LOADNIL                          R6
      162 JUMP                             ; [+16]
      163 GETUPVAL                         R10 2
      164 GETTABLEKS                       R9 R10 K9 ["WhiteSpace"]
      166 LOADK                            R10 K10 [""]
      167 NAMECALL                         R7 R4 K11 ["gsub"]
      169 CALL                             R7 3 1
      170 JUMPIFNOT                        R7 ; [+5]
      171 JUMPIFEQKS                       R7 K10 [""] ; [+4]
      173 GETUPVAL                         R8 4
      174 JUMPIFNOTEQ                      R7 R8 ; [+3]
      176 LOADNIL                          R6
      177 JUMP                             ; [+1]
      178 MOVE                             R6 R7
      179 SETTABLEKS                       R6 R5 K6 ["Name"]
      181 LOADNIL                          R6
      182 SETTABLEKS                       R6 R5 K7 ["Tail"]
      184 RETURN                           R5 1
      185 GETUPVAL                         R7 6
      186 NAMECALL                         R5 R0 K2 ["find"]
      188 CALL                             R5 2 2
      189 JUMPIFNOT                        R5 ; [+45]
      190 DUPTABLE                         R7 K8 [{"Head", "Name", "Tail"}]
      191 LOADN                            R11 1
      192 SUBK                             R12 R5 K3 [1]
      193 NAMECALL                         R9 R0 K4 ["sub"]
      195 CALL                             R9 3 1
      196 JUMPIF                           R9 ; [+2]
      197 LOADNIL                          R8
      198 JUMP                             ; [+27]
      199 GETUPVAL                         R13 2
      200 GETTABLEKS                       R12 R13 K9 ["WhiteSpace"]
      202 LOADK                            R13 K10 [""]
      203 NAMECALL                         R10 R9 K11 ["gsub"]
      205 CALL                             R10 3 1
      206 GETUPVAL                         R14 3
      207 GETTABLEKS                       R13 R14 K6 ["Name"]
      209 LOADK                            R15 K12 [" %*"]
      210 GETUPVAL                         R18 3
      211 GETTABLEKS                       R17 R18 K6 ["Name"]
      213 NAMECALL                         R15 R15 K13 ["format"]
      215 CALL                             R15 2 1
      216 MOVE                             R14 R15
      217 NAMECALL                         R11 R10 K11 ["gsub"]
      219 CALL                             R11 3 1
      220 MOVE                             R10 R11
      221 JUMPIFNOTEQKS                    R10 K10 [""] ; [+3]
      223 LOADNIL                          R8
      224 JUMP                             ; [+1]
      225 MOVE                             R8 R10
      226 SETTABLEKS                       R8 R7 K5 ["Head"]
      228 LOADNIL                          R8
      229 SETTABLEKS                       R8 R7 K6 ["Name"]
      231 LOADNIL                          R8
      232 SETTABLEKS                       R8 R7 K7 ["Tail"]
      234 RETURN                           R7 1
      235 LOADNIL                          R2
      236 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getQueryTypeFromSelector"]
        3 GETTABLEKS                       R2 R0 K1 ["Selector"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["Type"]
        9 GETTABLEKS                       R2 R3 K3 ["Query"]
       11 JUMPIFEQ                         R1 R2 ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K4 ["getDataFromSelector"]
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
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R9 R10 K0 ["getQueryTypeFromSelector"]
       47 GETTABLEKS                       R10 R8 K1 ["Selector"]
       49 CALL                             R9 1 1
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R11 R12 K2 ["Type"]
       53 GETTABLEKS                       R10 R11 K12 ["Pseudo"]
       55 JUMPIFNOTEQ                      R9 R10 ; [+17]
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R10 R11 K4 ["getDataFromSelector"]
       60 GETTABLEKS                       R11 R8 K1 ["Selector"]
       62 MOVE                             R12 R9
       63 CALL                             R10 2 1
       64 JUMPIFNOT                        R10 ; [+8]
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R11 R12 K13 ["areSelectorsPaired"]
       68 MOVE                             R12 R2
       69 MOVE                             R13 R10
       70 CALL                             R11 2 1
       71 JUMPIFNOT                        R11 ; [+1]
       72 RETURN                           R8 1
       73 FORGLOOP                         R4 2 ; [-38]
       75 LOADNIL                          R4
       76 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getQueryTypeFromSelector"]
        3 GETTABLEKS                       R2 R0 K1 ["Selector"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["Type"]
        9 GETTABLEKS                       R2 R3 K3 ["Pseudo"]
       11 JUMPIFEQ                         R1 R2 ; [+4]
       13 NEWTABLE                         R2 0 0
       15 RETURN                           R2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["getDataFromSelector"]
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
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R10 R11 K0 ["getQueryTypeFromSelector"]
       54 GETTABLEKS                       R11 R9 K1 ["Selector"]
       56 CALL                             R10 1 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R12 R13 K2 ["Type"]
       60 GETTABLEKS                       R11 R12 K12 ["Query"]
       62 JUMPIFNOTEQ                      R10 R11 ; [+22]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R11 R12 K4 ["getDataFromSelector"]
       67 GETTABLEKS                       R12 R9 K1 ["Selector"]
       69 MOVE                             R13 R10
       70 CALL                             R11 2 1
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R12 R13 K13 ["areSelectorsPaired"]
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
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R10 R11 K7 ["getQueryTypeFromSelector"]
       23 GETTABLEKS                       R11 R9 K8 ["Selector"]
       25 CALL                             R10 1 1
       26 JUMPIFNOT                        R10 ; [+43]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R11 R12 K9 ["getDataFromSelector"]
       30 GETTABLEKS                       R12 R9 K8 ["Selector"]
       32 MOVE                             R13 R10
       33 CALL                             R11 2 1
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R12 R13 K10 ["areSelectorsPaired"]
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
       52 GETUPVAL                         R14 0
       53 GETTABLEKS                       R13 R14 K15 ["constructSelector"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["SelectorHelpers"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R3 R0 K5 ["Src"]
       20 GETTABLEKS                       R2 R3 K8 ["Thunks"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R5 R2 K9 ["Change"]
       26 GETTABLEKS                       R4 R5 K10 ["SetStyleRuleSelector"]
       28 CALL                             R3 1 1
       29 NEWTABLE                         R4 16 0
       31 LOADK                            R5 K11 ["StyleQuery"]
       32 SETTABLEKS                       R5 R4 K12 ["ClassName"]
       34 LOADK                            R5 K13 ["Queries"]
       35 SETTABLEKS                       R5 R4 K14 ["FolderName"]
       37 DUPTABLE                         R5 K17 [{"Pseudo", "Query"}]
       38 LOADK                            R6 K15 ["Pseudo"]
       39 SETTABLEKS                       R6 R5 K15 ["Pseudo"]
       41 LOADK                            R6 K16 ["Query"]
       42 SETTABLEKS                       R6 R5 K16 ["Query"]
       44 SETTABLEKS                       R5 R4 K18 ["Type"]
       46 DUPTABLE                         R5 K26 [{"Beginning", "End", "OptionalWhiteSpace", "WhiteSpace", "ValidNameChars", "CaptureStart", "CaptureEnd"}]
       47 LOADK                            R6 K27 ["^"]
       48 SETTABLEKS                       R6 R5 K19 ["Beginning"]
       50 LOADK                            R6 K28 ["$"]
       51 SETTABLEKS                       R6 R5 K20 ["End"]
       53 LOADK                            R6 K29 ["%s*"]
       54 SETTABLEKS                       R6 R5 K21 ["OptionalWhiteSpace"]
       56 LOADK                            R6 K30 ["%s+"]
       57 SETTABLEKS                       R6 R5 K22 ["WhiteSpace"]
       59 LOADK                            R6 K31 ["[%w_%-%s]*"]
       60 SETTABLEKS                       R6 R5 K23 ["ValidNameChars"]
       62 LOADK                            R6 K32 ["("]
       63 SETTABLEKS                       R6 R5 K24 ["CaptureStart"]
       65 LOADK                            R6 K33 [")"]
       66 SETTABLEKS                       R6 R5 K25 ["CaptureEnd"]
       68 SETTABLEKS                       R5 R4 K34 ["Regex"]
       70 GETTABLEKS                       R5 R1 K35 ["SelectorSyntax"]
       72 GETTABLEKS                       R6 R4 K34 ["Regex"]
       74 GETTABLEKS                       R7 R4 K12 ["ClassName"]
       76 LOADK                            R9 K36 ["%*%*%*%*%*"]
       77 GETTABLEKS                       R11 R5 K37 ["PseudoInstance"]
       79 GETTABLEKS                       R12 R6 K21 ["OptionalWhiteSpace"]
       81 MOVE                             R13 R7
       82 GETTABLEKS                       R14 R6 K21 ["OptionalWhiteSpace"]
       84 GETTABLEKS                       R15 R6 K20 ["End"]
       86 NAMECALL                         R9 R9 K38 ["format"]
       88 CALL                             R9 6 1
       89 MOVE                             R8 R9
       90 LOADK                            R10 K39 ["%*%*%*%*%*%*%*%*%*"]
       91 GETTABLEKS                       R12 R5 K37 ["PseudoInstance"]
       93 GETTABLEKS                       R13 R6 K21 ["OptionalWhiteSpace"]
       95 MOVE                             R14 R7
       96 GETTABLEKS                       R15 R6 K21 ["OptionalWhiteSpace"]
       98 GETTABLEKS                       R16 R5 K40 ["Name"]
      100 GETTABLEKS                       R17 R6 K24 ["CaptureStart"]
      102 GETTABLEKS                       R18 R6 K23 ["ValidNameChars"]
      104 GETTABLEKS                       R19 R6 K25 ["CaptureEnd"]
      106 GETTABLEKS                       R20 R6 K20 ["End"]
      108 NAMECALL                         R10 R10 K38 ["format"]
      110 CALL                             R10 10 1
      111 MOVE                             R9 R10
      112 LOADK                            R11 K41 ["%*%*%*%*"]
      113 GETTABLEKS                       R13 R5 K16 ["Query"]
      115 GETTABLEKS                       R14 R6 K24 ["CaptureStart"]
      117 GETTABLEKS                       R15 R6 K23 ["ValidNameChars"]
      119 GETTABLEKS                       R16 R6 K25 ["CaptureEnd"]
      121 NAMECALL                         R11 R11 K38 ["format"]
      123 CALL                             R11 5 1
      124 MOVE                             R10 R11
      125 DUPCLOSURE                       R11 K42 [PROTO_0]
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 DUPCLOSURE                       R12 K43 [PROTO_1]
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R5
      131 DUPCLOSURE                       R13 K44 [PROTO_2]
      132 SETTABLEKS                       R13 R4 K45 ["areSelectorsPaired"]
      134 DUPCLOSURE                       R13 K46 [PROTO_3]
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R5
      139 SETTABLEKS                       R13 R4 K47 ["constructSelector"]
      141 DUPCLOSURE                       R13 K48 [PROTO_4]
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R5
      146 SETTABLEKS                       R13 R4 K49 ["getQueryTypeFromSelector"]
      148 DUPCLOSURE                       R13 K50 [PROTO_5]
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R8
      156 SETTABLEKS                       R13 R4 K51 ["getDataFromSelector"]
      158 DUPCLOSURE                       R13 K52 [PROTO_6]
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R13 R4 K53 ["getPseudoRuleForQuery"]
      162 DUPCLOSURE                       R13 K54 [PROTO_7]
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R13 R4 K55 ["getQueryStyleRulesForPseudo"]
      166 DUPCLOSURE                       R13 K56 [PROTO_8]
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R3
      169 SETTABLEKS                       R13 R4 K57 ["syncQueryRuleSelectors"]
      171 RETURN                           R4 1
