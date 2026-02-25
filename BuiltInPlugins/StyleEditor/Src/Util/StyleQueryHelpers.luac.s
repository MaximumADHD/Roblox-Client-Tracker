PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["Regex"]
        6 GETTABLEKS                       R3 R4 K1 ["SpacePlus"]
        8 LOADK                            R4 K2 [""]
        9 NAMECALL                         R1 R0 K3 ["gsub"]
       11 CALL                             R1 3 1
       12 JUMPIFNOT                        R1 ; [+7]
       13 JUMPIFEQKS                       R1 K2 [""] ; [+6]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K4 ["ClassName"]
       18 JUMPIFNOTEQ                      R1 R2 ; [+3]
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["SelectorSyntax"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K1 ["Regex"]
        9 GETTABLEKS                       R4 R5 K2 ["SpacePlus"]
       11 LOADK                            R5 K3 [""]
       12 NAMECALL                         R2 R0 K4 ["gsub"]
       14 CALL                             R2 3 1
       15 GETTABLEKS                       R5 R1 K5 ["Name"]
       17 LOADK                            R7 K6 [" %*"]
       18 GETTABLEKS                       R9 R1 K5 ["Name"]
       20 NAMECALL                         R7 R7 K7 ["format"]
       22 CALL                             R7 2 1
       23 MOVE                             R6 R7
       24 NAMECALL                         R3 R2 K4 ["gsub"]
       26 CALL                             R3 3 1
       27 MOVE                             R2 R3
       28 JUMPIFNOTEQKS                    R2 K3 [""] ; [+3]
       30 LOADNIL                          R3
       31 RETURN                           R3 1
       32 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADK                            R2 K0 [""]
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["SelectorSyntax"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["ClassName"]
       10 GETTABLEKS                       R5 R1 K3 ["Head"]
       12 ORK                              R4 R5 K0 [""]
       13 GETTABLEKS                       R6 R1 K4 ["Tail"]
       15 ORK                              R5 R6 K0 [""]
       16 GETTABLEKS                       R7 R1 K5 ["Name"]
       18 JUMPIF                           R7 ; [+2]
       19 LOADNIL                          R6
       20 JUMP                             ; [+20]
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R11 R12 K6 ["Regex"]
       24 GETTABLEKS                       R10 R11 K7 ["SpacePlus"]
       26 LOADK                            R11 K0 [""]
       27 NAMECALL                         R8 R7 K8 ["gsub"]
       29 CALL                             R8 3 1
       30 JUMPIFNOT                        R8 ; [+7]
       31 JUMPIFEQKS                       R8 K0 [""] ; [+6]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R9 R10 K2 ["ClassName"]
       36 JUMPIFNOTEQ                      R8 R9 ; [+3]
       38 LOADNIL                          R6
       39 JUMP                             ; [+1]
       40 MOVE                             R6 R8
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K9 ["Type"]
       44 GETTABLEKS                       R7 R8 K10 ["Query"]
       46 JUMPIFNOTEQ                      R0 R7 ; [+24]
       48 JUMPIFEQKS                       R4 K0 [""] ; [+12]
       50 LOADK                            R8 K11 ["%* %*%*%*"]
       51 MOVE                             R10 R4
       52 GETTABLEKS                       R11 R2 K10 ["Query"]
       54 OR                               R12 R6 R3
       55 MOVE                             R13 R5
       56 NAMECALL                         R8 R8 K12 ["format"]
       58 CALL                             R8 5 1
       59 MOVE                             R7 R8
       60 RETURN                           R7 1
       61 LOADK                            R8 K13 ["%*%*%*"]
       62 GETTABLEKS                       R10 R2 K10 ["Query"]
       64 OR                               R11 R6 R3
       65 MOVE                             R12 R5
       66 NAMECALL                         R8 R8 K12 ["format"]
       68 CALL                             R8 4 1
       69 MOVE                             R7 R8
       70 RETURN                           R7 1
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R8 R9 K9 ["Type"]
       74 GETTABLEKS                       R7 R8 K14 ["Pseudo"]
       76 JUMPIFNOTEQ                      R0 R7 ; [+28]
       78 LOADK                            R8 K15 ["%*%*"]
       79 GETTABLEKS                       R10 R2 K16 ["PseudoInstance"]
       81 MOVE                             R11 R3
       82 NAMECALL                         R8 R8 K12 ["format"]
       84 CALL                             R8 3 1
       85 MOVE                             R7 R8
       86 JUMPIFNOT                        R6 ; [+9]
       87 LOADK                            R8 K17 ["%* %*%*"]
       88 MOVE                             R10 R7
       89 GETTABLEKS                       R11 R2 K5 ["Name"]
       91 MOVE                             R12 R6
       92 NAMECALL                         R8 R8 K12 ["format"]
       94 CALL                             R8 4 1
       95 MOVE                             R7 R8
       96 LOADK                            R9 K13 ["%*%*%*"]
       97 MOVE                             R11 R4
       98 MOVE                             R12 R7
       99 MOVE                             R13 R5
      100 NAMECALL                         R9 R9 K12 ["format"]
      102 CALL                             R9 4 1
      103 MOVE                             R8 R9
      104 RETURN                           R8 1
      105 LOADK                            R7 K0 [""]
      106 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SelectorSyntax"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["ClassName"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["Regex"]
        9 LOADK                            R5 K3 ["%*%*%*%*"]
       10 GETTABLEKS                       R7 R1 K4 ["PseudoInstance"]
       12 MOVE                             R8 R2
       13 GETTABLEKS                       R9 R3 K5 ["WhiteSpace"]
       15 GETTABLEKS                       R10 R3 K6 ["End"]
       17 NAMECALL                         R5 R5 K7 ["format"]
       19 CALL                             R5 5 1
       20 MOVE                             R4 R5
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R0 K8 ["find"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+6]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K9 ["Type"]
       29 GETTABLEKS                       R5 R6 K10 ["Pseudo"]
       31 RETURN                           R5 1
       32 LOADK                            R6 K11 ["%*%*%*%*%*%*"]
       33 GETTABLEKS                       R8 R1 K4 ["PseudoInstance"]
       35 MOVE                             R9 R2
       36 GETTABLEKS                       R10 R3 K5 ["WhiteSpace"]
       38 GETTABLEKS                       R11 R1 K12 ["Name"]
       40 GETTABLEKS                       R12 R3 K13 ["ValidNameChars"]
       42 GETTABLEKS                       R13 R3 K6 ["End"]
       44 NAMECALL                         R6 R6 K7 ["format"]
       46 CALL                             R6 7 1
       47 MOVE                             R5 R6
       48 MOVE                             R8 R5
       49 NAMECALL                         R6 R0 K8 ["find"]
       51 CALL                             R6 2 1
       52 JUMPIFNOT                        R6 ; [+6]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R7 R8 K9 ["Type"]
       56 GETTABLEKS                       R6 R7 K10 ["Pseudo"]
       58 RETURN                           R6 1
       59 GETTABLEKS                       R8 R1 K14 ["Query"]
       61 LOADN                            R9 1
       62 LOADB                            R10 1
       63 NAMECALL                         R6 R0 K8 ["find"]
       65 CALL                             R6 4 1
       66 JUMPIFNOT                        R6 ; [+6]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R7 R8 K9 ["Type"]
       70 GETTABLEKS                       R6 R7 K14 ["Query"]
       72 RETURN                           R6 1
       73 LOADNIL                          R6
       74 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["SelectorSyntax"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["ClassName"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Regex"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K3 ["Type"]
       12 GETTABLEKS                       R5 R6 K4 ["Query"]
       14 JUMPIFNOTEQ                      R1 R5 ; [+127]
       16 LOADK                            R6 K5 ["%*%*%*%*"]
       17 GETTABLEKS                       R8 R2 K4 ["Query"]
       19 GETTABLEKS                       R9 R4 K6 ["CaptureStart"]
       21 GETTABLEKS                       R10 R4 K7 ["ValidNameChars"]
       23 GETTABLEKS                       R11 R4 K8 ["CaptureEnd"]
       25 NAMECALL                         R6 R6 K9 ["format"]
       27 CALL                             R6 5 1
       28 MOVE                             R5 R6
       29 MOVE                             R8 R5
       30 NAMECALL                         R6 R0 K10 ["find"]
       32 CALL                             R6 2 3
       33 JUMPIFNOT                        R6 ; [+226]
       34 JUMPIFNOT                        R7 ; [+225]
       35 LOADN                            R11 1
       36 SUBK                             R12 R6 K11 [1]
       37 NAMECALL                         R9 R0 K12 ["sub"]
       39 CALL                             R9 3 1
       40 ADDK                             R12 R7 K11 [1]
       41 NAMECALL                         R10 R0 K12 ["sub"]
       43 CALL                             R10 2 1
       44 DUPTABLE                         R11 K16 [{"Head", "Name", "Tail"}]
       45 JUMPIF                           R9 ; [+2]
       46 LOADNIL                          R12
       47 JUMP                             ; [+30]
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R13 R14 K0 ["SelectorSyntax"]
       51 GETUPVAL                         R18 1
       52 GETTABLEKS                       R17 R18 K2 ["Regex"]
       54 GETTABLEKS                       R16 R17 K17 ["SpacePlus"]
       56 LOADK                            R17 K18 [""]
       57 NAMECALL                         R14 R9 K19 ["gsub"]
       59 CALL                             R14 3 1
       60 GETTABLEKS                       R17 R13 K14 ["Name"]
       62 LOADK                            R19 K20 [" %*"]
       63 GETTABLEKS                       R21 R13 K14 ["Name"]
       65 NAMECALL                         R19 R19 K9 ["format"]
       67 CALL                             R19 2 1
       68 MOVE                             R18 R19
       69 NAMECALL                         R15 R14 K19 ["gsub"]
       71 CALL                             R15 3 1
       72 MOVE                             R14 R15
       73 JUMPIFNOTEQKS                    R14 K18 [""] ; [+3]
       75 LOADNIL                          R12
       76 JUMP                             ; [+1]
       77 MOVE                             R12 R14
       78 SETTABLEKS                       R12 R11 K13 ["Head"]
       80 JUMPIF                           R8 ; [+2]
       81 LOADNIL                          R12
       82 JUMP                             ; [+20]
       83 GETUPVAL                         R17 1
       84 GETTABLEKS                       R16 R17 K2 ["Regex"]
       86 GETTABLEKS                       R15 R16 K17 ["SpacePlus"]
       88 LOADK                            R16 K18 [""]
       89 NAMECALL                         R13 R8 K19 ["gsub"]
       91 CALL                             R13 3 1
       92 JUMPIFNOT                        R13 ; [+7]
       93 JUMPIFEQKS                       R13 K18 [""] ; [+6]
       95 GETUPVAL                         R15 1
       96 GETTABLEKS                       R14 R15 K1 ["ClassName"]
       98 JUMPIFNOTEQ                      R13 R14 ; [+3]
      100 LOADNIL                          R12
      101 JUMP                             ; [+1]
      102 MOVE                             R12 R13
      103 SETTABLEKS                       R12 R11 K14 ["Name"]
      105 JUMPIF                           R10 ; [+2]
      106 LOADNIL                          R12
      107 JUMP                             ; [+30]
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R13 R14 K0 ["SelectorSyntax"]
      111 GETUPVAL                         R18 1
      112 GETTABLEKS                       R17 R18 K2 ["Regex"]
      114 GETTABLEKS                       R16 R17 K17 ["SpacePlus"]
      116 LOADK                            R17 K18 [""]
      117 NAMECALL                         R14 R10 K19 ["gsub"]
      119 CALL                             R14 3 1
      120 GETTABLEKS                       R17 R13 K14 ["Name"]
      122 LOADK                            R19 K20 [" %*"]
      123 GETTABLEKS                       R21 R13 K14 ["Name"]
      125 NAMECALL                         R19 R19 K9 ["format"]
      127 CALL                             R19 2 1
      128 MOVE                             R18 R19
      129 NAMECALL                         R15 R14 K19 ["gsub"]
      131 CALL                             R15 3 1
      132 MOVE                             R14 R15
      133 JUMPIFNOTEQKS                    R14 K18 [""] ; [+3]
      135 LOADNIL                          R12
      136 JUMP                             ; [+1]
      137 MOVE                             R12 R14
      138 SETTABLEKS                       R12 R11 K15 ["Tail"]
      140 RETURN                           R11 1
      141 JUMP                             ; [+118]
      142 GETUPVAL                         R7 1
      143 GETTABLEKS                       R6 R7 K3 ["Type"]
      145 GETTABLEKS                       R5 R6 K21 ["Pseudo"]
      147 JUMPIFNOTEQ                      R1 R5 ; [+112]
      149 LOADK                            R8 K22 ["%*%*"]
      150 GETTABLEKS                       R10 R2 K23 ["PseudoInstance"]
      152 MOVE                             R11 R3
      153 NAMECALL                         R8 R8 K9 ["format"]
      155 CALL                             R8 3 1
      156 MOVE                             R7 R8
      157 NAMECALL                         R5 R0 K10 ["find"]
      159 CALL                             R5 2 2
      160 JUMPIFNOT                        R5 ; [+99]
      161 JUMPIFNOT                        R6 ; [+98]
      162 LOADN                            R9 1
      163 SUBK                             R10 R5 K11 [1]
      164 NAMECALL                         R7 R0 K12 ["sub"]
      166 CALL                             R7 3 1
      167 MOVE                             R10 R5
      168 NAMECALL                         R8 R0 K12 ["sub"]
      170 CALL                             R8 2 1
      171 LOADK                            R10 K24 ["%*%*%*%*%*%*%*%*"]
      172 GETTABLEKS                       R12 R2 K23 ["PseudoInstance"]
      174 MOVE                             R13 R3
      175 GETTABLEKS                       R14 R4 K25 ["WhiteSpace"]
      177 GETTABLEKS                       R15 R2 K14 ["Name"]
      179 GETTABLEKS                       R16 R4 K6 ["CaptureStart"]
      181 GETTABLEKS                       R17 R4 K7 ["ValidNameChars"]
      183 GETTABLEKS                       R18 R4 K8 ["CaptureEnd"]
      185 GETTABLEKS                       R19 R4 K26 ["End"]
      187 NAMECALL                         R10 R10 K9 ["format"]
      189 CALL                             R10 9 1
      190 MOVE                             R9 R10
      191 MOVE                             R12 R9
      192 NAMECALL                         R10 R8 K27 ["match"]
      194 CALL                             R10 2 1
      195 DUPTABLE                         R11 K16 [{"Head", "Name", "Tail"}]
      196 JUMPIF                           R7 ; [+2]
      197 LOADNIL                          R12
      198 JUMP                             ; [+30]
      199 GETUPVAL                         R14 0
      200 GETTABLEKS                       R13 R14 K0 ["SelectorSyntax"]
      202 GETUPVAL                         R18 1
      203 GETTABLEKS                       R17 R18 K2 ["Regex"]
      205 GETTABLEKS                       R16 R17 K17 ["SpacePlus"]
      207 LOADK                            R17 K18 [""]
      208 NAMECALL                         R14 R7 K19 ["gsub"]
      210 CALL                             R14 3 1
      211 GETTABLEKS                       R17 R13 K14 ["Name"]
      213 LOADK                            R19 K20 [" %*"]
      214 GETTABLEKS                       R21 R13 K14 ["Name"]
      216 NAMECALL                         R19 R19 K9 ["format"]
      218 CALL                             R19 2 1
      219 MOVE                             R18 R19
      220 NAMECALL                         R15 R14 K19 ["gsub"]
      222 CALL                             R15 3 1
      223 MOVE                             R14 R15
      224 JUMPIFNOTEQKS                    R14 K18 [""] ; [+3]
      226 LOADNIL                          R12
      227 JUMP                             ; [+1]
      228 MOVE                             R12 R14
      229 SETTABLEKS                       R12 R11 K13 ["Head"]
      231 JUMPIF                           R10 ; [+2]
      232 LOADNIL                          R12
      233 JUMP                             ; [+20]
      234 GETUPVAL                         R17 1
      235 GETTABLEKS                       R16 R17 K2 ["Regex"]
      237 GETTABLEKS                       R15 R16 K17 ["SpacePlus"]
      239 LOADK                            R16 K18 [""]
      240 NAMECALL                         R13 R10 K19 ["gsub"]
      242 CALL                             R13 3 1
      243 JUMPIFNOT                        R13 ; [+7]
      244 JUMPIFEQKS                       R13 K18 [""] ; [+6]
      246 GETUPVAL                         R15 1
      247 GETTABLEKS                       R14 R15 K1 ["ClassName"]
      249 JUMPIFNOTEQ                      R13 R14 ; [+3]
      251 LOADNIL                          R12
      252 JUMP                             ; [+1]
      253 MOVE                             R12 R13
      254 SETTABLEKS                       R12 R11 K14 ["Name"]
      256 LOADNIL                          R12
      257 SETTABLEKS                       R12 R11 K15 ["Tail"]
      259 RETURN                           R11 1
      260 LOADNIL                          R5
      261 RETURN                           R5 1

PROTO_5:
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
       49 JUMPIFEQ                         R9 R0 ; [+41]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R10 R11 K0 ["getQueryTypeFromSelector"]
       54 GETTABLEKS                       R11 R9 K1 ["Selector"]
       56 CALL                             R10 1 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R12 R13 K2 ["Type"]
       60 GETTABLEKS                       R11 R12 K12 ["Query"]
       62 JUMPIFNOTEQ                      R10 R11 ; [+28]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R11 R12 K4 ["getDataFromSelector"]
       67 GETTABLEKS                       R12 R9 K1 ["Selector"]
       69 MOVE                             R13 R10
       70 CALL                             R11 2 1
       71 JUMPIFNOT                        R11 ; [+19]
       72 GETTABLEKS                       R12 R11 K13 ["Name"]
       74 GETTABLEKS                       R13 R2 K13 ["Name"]
       76 JUMPIFNOTEQ                      R12 R13 ; [+14]
       78 GETTABLEKS                       R12 R11 K14 ["Head"]
       80 GETTABLEKS                       R13 R2 K14 ["Head"]
       82 JUMPIFNOTEQ                      R12 R13 ; [+8]
       84 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       86 MOVE                             R13 R4
       87 MOVE                             R14 R9
       88 GETIMPORT                        R12 K17 [table.insert]
       90 CALL                             R12 2 0
       91 FORGLOOP                         R5 2 ; [-51]
       93 RETURN                           R4 1

PROTO_6:
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
       18 JUMPIFEQ                         R9 R0 ; [+57]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R10 R11 K7 ["getQueryTypeFromSelector"]
       23 GETTABLEKS                       R11 R9 K8 ["Selector"]
       25 CALL                             R10 1 1
       26 JUMPIFNOT                        R10 ; [+49]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R11 R12 K9 ["getDataFromSelector"]
       30 GETTABLEKS                       R12 R9 K8 ["Selector"]
       32 MOVE                             R13 R10
       33 CALL                             R11 2 1
       34 JUMPIFNOT                        R11 ; [+41]
       35 GETTABLEKS                       R12 R11 K10 ["Name"]
       37 GETTABLEKS                       R13 R1 K10 ["Name"]
       39 JUMPIFNOTEQ                      R12 R13 ; [+36]
       41 GETTABLEKS                       R12 R11 K11 ["Head"]
       43 GETTABLEKS                       R13 R1 K11 ["Head"]
       45 JUMPIFNOTEQ                      R12 R13 ; [+30]
       47 DUPTABLE                         R12 K13 [{"Head", "Name", "Tail"}]
       48 GETTABLEKS                       R13 R11 K11 ["Head"]
       50 SETTABLEKS                       R13 R12 K11 ["Head"]
       52 SETTABLEKS                       R2 R12 K10 ["Name"]
       54 GETTABLEKS                       R13 R11 K12 ["Tail"]
       56 SETTABLEKS                       R13 R12 K12 ["Tail"]
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R13 R14 K14 ["constructSelector"]
       61 MOVE                             R14 R10
       62 MOVE                             R15 R12
       63 CALL                             R13 2 1
       64 JUMPIFEQKS                       R13 K15 [""] ; [+11]
       66 GETTABLEKS                       R14 R9 K8 ["Selector"]
       68 JUMPIFEQ                         R13 R14 ; [+7]
       70 MOVE                             R14 R3
       71 GETUPVAL                         R15 1
       72 MOVE                             R16 R9
       73 MOVE                             R17 R13
       74 CALL                             R15 2 -1
       75 CALL                             R14 -1 0
       76 FORGLOOP                         R5 2 ; [-67]
       78 RETURN                           R0 0

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
       29 NEWTABLE                         R4 8 0
       31 LOADK                            R5 K11 ["StyleQuery"]
       32 SETTABLEKS                       R5 R4 K12 ["ClassName"]
       34 DUPTABLE                         R5 K15 [{"Pseudo", "Query"}]
       35 LOADK                            R6 K13 ["Pseudo"]
       36 SETTABLEKS                       R6 R5 K13 ["Pseudo"]
       38 LOADK                            R6 K14 ["Query"]
       39 SETTABLEKS                       R6 R5 K14 ["Query"]
       41 SETTABLEKS                       R5 R4 K16 ["Type"]
       43 DUPTABLE                         R5 K24 [{"Beginning", "End", "WhiteSpace", "SpacePlus", "ValidNameChars", "CaptureStart", "CaptureEnd"}]
       44 LOADK                            R6 K25 ["^"]
       45 SETTABLEKS                       R6 R5 K17 ["Beginning"]
       47 LOADK                            R6 K26 ["$"]
       48 SETTABLEKS                       R6 R5 K18 ["End"]
       50 LOADK                            R6 K27 ["%s*"]
       51 SETTABLEKS                       R6 R5 K19 ["WhiteSpace"]
       53 LOADK                            R6 K28 ["%s+"]
       54 SETTABLEKS                       R6 R5 K20 ["SpacePlus"]
       56 LOADK                            R6 K29 ["[%w_%-%s]*"]
       57 SETTABLEKS                       R6 R5 K21 ["ValidNameChars"]
       59 LOADK                            R6 K30 ["("]
       60 SETTABLEKS                       R6 R5 K22 ["CaptureStart"]
       62 LOADK                            R6 K31 [")"]
       63 SETTABLEKS                       R6 R5 K23 ["CaptureEnd"]
       65 SETTABLEKS                       R5 R4 K32 ["Regex"]
       67 DUPCLOSURE                       R5 K33 [PROTO_0]
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R6 K34 [PROTO_1]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 DUPCLOSURE                       R7 K35 [PROTO_2]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R7 R4 K36 ["constructSelector"]
       77 DUPCLOSURE                       R7 K37 [PROTO_3]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R7 R4 K38 ["getQueryTypeFromSelector"]
       82 DUPCLOSURE                       R7 K39 [PROTO_4]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R7 R4 K40 ["getDataFromSelector"]
       87 DUPCLOSURE                       R7 K41 [PROTO_5]
       88 CAPTURE                          VAL R4
       89 SETTABLEKS                       R7 R4 K42 ["getQueryStyleRulesForPseudo"]
       91 DUPCLOSURE                       R7 K43 [PROTO_6]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R7 R4 K44 ["syncQueryRuleSelectors"]
       96 RETURN                           R4 1
