PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETIMPORT                        R0 K1 [require]
        4 GETIMPORT                        R2 K4 [script]
        6 GETTABLEKS                       R2 R2 K5 ["Parent"]
        8 GETTABLEKS                       R1 R2 K2 ["ReactFiberNewContext.new"]
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K6 ["enterDisallowedContextReadInDEV"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETIMPORT                        R0 K1 [require]
        4 GETIMPORT                        R2 K4 [script]
        6 GETTABLEKS                       R2 R2 K5 ["Parent"]
        8 GETTABLEKS                       R1 R2 K2 ["ReactFiberNewContext.new"]
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K6 ["exitDisallowedContextReadInDEV"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K6 [{[1], ["firstBaseUpdate"] = , ["lastBaseUpdate"] = , ["shared"], ["effects"] = }]
        1 GETTABLEKS                       R2 R0 K7 ["memoizedState"]
        3 SETTABLEKS                       R2 R1 K0 ["baseState"]
        5 DUPTABLE                         R2 K9 [{["pending"] = }]
        6 SETTABLEKS                       R2 R1 K4 ["shared"]
        8 SETTABLEKS                       R1 R0 K10 ["updateQueue"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["updateQueue"]
        2 GETTABLEKS                       R3 R0 K0 ["updateQueue"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETIMPORT                        R4 K3 [table.clone]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 1
       10 SETTABLEKS                       R4 R1 K0 ["updateQueue"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 LOADN                            R5 0
        2 JUMPIFNOTLT                      R5 R4 ; [+23]
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 0
        6 GETTABLE                         R4 R5 R6
        7 GETUPVAL                         R5 1
        8 GETUPVAL                         R6 0
        9 LOADNIL                          R7
       10 SETTABLE                         R7 R5 R6
       11 GETUPVAL                         R5 0
       12 SUBK                             R5 R5 K0 [1]
       13 SETUPVAL                         R5 0
       14 SETTABLEKS                       R0 R4 K1 ["eventTime"]
       16 SETTABLEKS                       R1 R4 K2 ["lane"]
       18 LOADN                            R5 0
       19 SETTABLEKS                       R5 R4 K3 ["tag"]
       21 SETTABLEKS                       R2 R4 K4 ["payload"]
       23 SETTABLEKS                       R3 R4 K5 ["callback"]
       25 RETURN                           R4 1
       26 DUPTABLE                         R4 K9 [{["eventTime"], ["lane"], ["tag"] = 0, ["payload"], ["callback"], ["next"] = }]
       27 SETTABLEKS                       R0 R4 K1 ["eventTime"]
       29 SETTABLEKS                       R1 R4 K2 ["lane"]
       31 SETTABLEKS                       R2 R4 K4 ["payload"]
       33 SETTABLEKS                       R3 R4 K5 ["callback"]
       35 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["updateQueue"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R2 K1 ["shared"]
        7 GETTABLEKS                       R4 R3 K2 ["pending"]
        9 JUMPIFNOTEQKNIL                  R4 ; [+4]
       11 SETTABLEKS                       R1 R1 K3 ["next"]
       13 JUMP                             ; [+6]
       14 GETTABLEKS                       R5 R4 K3 ["next"]
       16 SETTABLEKS                       R5 R1 K3 ["next"]
       18 SETTABLEKS                       R1 R4 K3 ["next"]
       20 SETTABLEKS                       R1 R3 K2 ["pending"]
       22 GETUPVAL                         R5 0
       23 JUMPIFNOT                        R5 ; [+12]
       24 GETUPVAL                         R5 1
       25 JUMPIFNOTEQ                      R5 R3 ; [+10]
       27 GETUPVAL                         R5 2
       28 JUMPIF                           R5 ; [+7]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K4 ["error"]
       32 LOADK                            R6 K5 ["An update (setState, replaceState, or forceUpdate) was scheduled from inside an update function. Update functions should be pure, with zero side-effects. Consider using componentDidUpdate or a callback."]
       33 CALL                             R5 1 0
       34 LOADB                            R5 1
       35 SETUPVAL                         R5 2
       36 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["updateQueue"]
        2 GETTABLEKS                       R3 R0 K1 ["alternate"]
        4 JUMPIFEQKNIL                     R3 ; [+78]
        6 GETTABLEKS                       R4 R3 K0 ["updateQueue"]
        8 JUMPIFNOTEQ                      R2 R4 ; [+74]
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 GETTABLEKS                       R7 R2 K2 ["firstBaseUpdate"]
       14 JUMPIFEQKNIL                     R7 ; [+45]
       16 MOVE                             R8 R7
       17 DUPTABLE                         R9 K10 [{["eventTime"], ["lane"], ["tag"], ["payload"], ["callback"], ["next"] = }]
       18 GETTABLEKS                       R10 R8 K3 ["eventTime"]
       20 SETTABLEKS                       R10 R9 K3 ["eventTime"]
       22 GETTABLEKS                       R10 R8 K4 ["lane"]
       24 SETTABLEKS                       R10 R9 K4 ["lane"]
       26 GETTABLEKS                       R10 R8 K5 ["tag"]
       28 SETTABLEKS                       R10 R9 K5 ["tag"]
       30 GETTABLEKS                       R10 R8 K6 ["payload"]
       32 SETTABLEKS                       R10 R9 K6 ["payload"]
       34 GETTABLEKS                       R10 R8 K7 ["callback"]
       36 SETTABLEKS                       R10 R9 K7 ["callback"]
       38 JUMPIFNOTEQKNIL                  R6 ; [+4]
       40 MOVE                             R6 R9
       41 MOVE                             R5 R9
       42 JUMP                             ; [+3]
       43 SETTABLEKS                       R9 R6 K8 ["next"]
       45 MOVE                             R6 R9
       46 GETTABLEKS                       R8 R8 K8 ["next"]
       48 JUMPIFEQKNIL                     R8 ; [+2]
       50 JUMPBACK                         ; [-34]
       51 JUMPIFNOTEQKNIL                  R6 ; [+4]
       53 MOVE                             R6 R1
       54 MOVE                             R5 R1
       55 JUMP                             ; [+6]
       56 SETTABLEKS                       R1 R6 K8 ["next"]
       58 MOVE                             R6 R1
       59 JUMP                             ; [+2]
       60 MOVE                             R6 R1
       61 MOVE                             R5 R1
       62 DUPTABLE                         R8 K15 [{"baseState", "firstBaseUpdate", "lastBaseUpdate", "shared", "effects"}]
       63 GETTABLEKS                       R9 R4 K11 ["baseState"]
       65 SETTABLEKS                       R9 R8 K11 ["baseState"]
       67 SETTABLEKS                       R5 R8 K2 ["firstBaseUpdate"]
       69 SETTABLEKS                       R6 R8 K12 ["lastBaseUpdate"]
       71 GETTABLEKS                       R9 R4 K13 ["shared"]
       73 SETTABLEKS                       R9 R8 K13 ["shared"]
       75 GETTABLEKS                       R9 R4 K14 ["effects"]
       77 SETTABLEKS                       R9 R8 K14 ["effects"]
       79 MOVE                             R2 R8
       80 SETTABLEKS                       R2 R0 K0 ["updateQueue"]
       82 RETURN                           R0 0
       83 GETTABLEKS                       R4 R2 K12 ["lastBaseUpdate"]
       85 JUMPIFNOTEQKNIL                  R4 ; [+4]
       87 SETTABLEKS                       R1 R2 K2 ["firstBaseUpdate"]
       89 JUMP                             ; [+2]
       90 SETTABLEKS                       R1 R4 K8 ["next"]
       92 SETTABLEKS                       R1 R2 K12 ["lastBaseUpdate"]
       94 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R6 R2 K0 ["tag"]
        2 JUMPIFNOTEQKN                    R6 K1 [1] ; [+92]
        4 GETTABLEKS                       R7 R2 K2 ["payload"]
        6 FASTCALL1                        TYPE R7 ; [+3]
        7 MOVE                             R9 R7
        8 GETIMPORT                        R8 K4 [type]
       10 CALL                             R8 1 1
       11 JUMPIFNOTEQKS                    R8 K5 ["function"] ; [+82]
       13 GETUPVAL                         R8 0
       14 JUMPIFNOT                        R8 ; [+16]
       15 GETUPVAL                         R8 1
       16 JUMPIF                           R8 ; [+10]
       17 GETIMPORT                        R8 K7 [require]
       19 GETIMPORT                        R10 K10 [script]
       21 GETTABLEKS                       R10 R10 K11 ["Parent"]
       23 GETTABLEKS                       R9 R10 K8 ["ReactFiberNewContext.new"]
       25 CALL                             R8 1 1
       26 SETUPVAL                         R8 1
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K12 ["enterDisallowedContextReadInDEV"]
       30 CALL                             R8 0 0
       31 MOVE                             R8 R7
       32 MOVE                             R9 R3
       33 MOVE                             R10 R4
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 0
       36 JUMPIFNOT                        R9 ; [+56]
       37 GETUPVAL                         R9 2
       38 JUMPIFNOT                        R9 ; [+38]
       39 GETTABLEKS                       R10 R0 K13 ["mode"]
       41 GETUPVAL                         R11 3
       42 FASTCALL2                        BIT32_BAND R10 R11 ; [+3]
       44 GETIMPORT                        R9 K16 [bit32.band]
       46 CALL                             R9 2 1
       47 JUMPIFEQKN                       R9 K17 [0] ; [+29]
       49 GETUPVAL                         R9 4
       50 CALL                             R9 0 0
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 GETUPVAL                         R11 5
       54 JUMPIF                           R11 ; [+10]
       55 GETIMPORT                        R11 K19 [xpcall]
       57 MOVE                             R12 R7
       58 GETUPVAL                         R13 6
       59 MOVE                             R14 R3
       60 MOVE                             R15 R4
       61 CALL                             R11 4 2
       62 MOVE                             R9 R11
       63 MOVE                             R10 R12
       64 JUMP                             ; [+5]
       65 LOADB                            R9 1
       66 MOVE                             R11 R7
       67 MOVE                             R12 R3
       68 MOVE                             R13 R4
       69 CALL                             R11 2 0
       70 GETUPVAL                         R11 7
       71 CALL                             R11 0 0
       72 JUMPIF                           R9 ; [+4]
       73 GETIMPORT                        R11 K21 [error]
       75 MOVE                             R12 R10
       76 CALL                             R11 1 0
       77 GETUPVAL                         R9 1
       78 JUMPIF                           R9 ; [+10]
       79 GETIMPORT                        R9 K7 [require]
       81 GETIMPORT                        R11 K10 [script]
       83 GETTABLEKS                       R11 R11 K11 ["Parent"]
       85 GETTABLEKS                       R10 R11 K8 ["ReactFiberNewContext.new"]
       87 CALL                             R9 1 1
       88 SETUPVAL                         R9 1
       89 GETUPVAL                         R9 1
       90 GETTABLEKS                       R9 R9 K22 ["exitDisallowedContextReadInDEV"]
       92 CALL                             R9 0 0
       93 RETURN                           R8 1
       94 RETURN                           R7 1
       95 JUMPIFEQKN                       R6 K23 [3] ; [+3]
       97 JUMPIFNOTEQKN                    R6 K17 [0] ; [+128]
       99 JUMPIFNOTEQKN                    R6 K23 [3] ; [+21]
      101 GETTABLEKS                       R9 R0 K24 ["flags"]
      103 GETUPVAL                         R11 8
      104 FASTCALL1                        BIT32_BNOT R11 ; [+2]
      105 GETIMPORT                        R10 K26 [bit32.bnot]
      107 CALL                             R10 1 1
      108 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      110 GETIMPORT                        R8 K16 [bit32.band]
      112 CALL                             R8 2 1
      113 GETUPVAL                         R9 9
      114 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      116 GETIMPORT                        R7 K28 [bit32.bor]
      118 CALL                             R7 2 1
      119 SETTABLEKS                       R7 R0 K24 ["flags"]
      121 GETTABLEKS                       R7 R2 K2 ["payload"]
      123 LOADNIL                          R8
      124 FASTCALL1                        TYPE R7 ; [+3]
      125 MOVE                             R10 R7
      126 GETIMPORT                        R9 K4 [type]
      128 CALL                             R9 1 1
      129 JUMPIFNOTEQKS                    R9 K5 ["function"] ; [+83]
      131 GETUPVAL                         R9 0
      132 JUMPIFNOT                        R9 ; [+16]
      133 GETUPVAL                         R9 1
      134 JUMPIF                           R9 ; [+10]
      135 GETIMPORT                        R9 K7 [require]
      137 GETIMPORT                        R11 K10 [script]
      139 GETTABLEKS                       R11 R11 K11 ["Parent"]
      141 GETTABLEKS                       R10 R11 K8 ["ReactFiberNewContext.new"]
      143 CALL                             R9 1 1
      144 SETUPVAL                         R9 1
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R9 R9 K12 ["enterDisallowedContextReadInDEV"]
      148 CALL                             R9 0 0
      149 MOVE                             R9 R7
      150 MOVE                             R10 R3
      151 MOVE                             R11 R4
      152 CALL                             R9 2 1
      153 MOVE                             R8 R9
      154 GETUPVAL                         R9 0
      155 JUMPIFNOT                        R9 ; [+58]
      156 GETUPVAL                         R9 2
      157 JUMPIFNOT                        R9 ; [+38]
      158 GETTABLEKS                       R10 R0 K13 ["mode"]
      160 GETUPVAL                         R11 3
      161 FASTCALL2                        BIT32_BAND R10 R11 ; [+3]
      163 GETIMPORT                        R9 K16 [bit32.band]
      165 CALL                             R9 2 1
      166 JUMPIFEQKN                       R9 K17 [0] ; [+29]
      168 GETUPVAL                         R9 4
      169 CALL                             R9 0 0
      170 LOADNIL                          R9
      171 LOADNIL                          R10
      172 GETUPVAL                         R11 5
      173 JUMPIF                           R11 ; [+10]
      174 GETIMPORT                        R11 K19 [xpcall]
      176 MOVE                             R12 R7
      177 GETUPVAL                         R13 6
      178 MOVE                             R14 R3
      179 MOVE                             R15 R4
      180 CALL                             R11 4 2
      181 MOVE                             R9 R11
      182 MOVE                             R10 R12
      183 JUMP                             ; [+5]
      184 LOADB                            R9 1
      185 MOVE                             R11 R7
      186 MOVE                             R12 R3
      187 MOVE                             R13 R4
      188 CALL                             R11 2 0
      189 GETUPVAL                         R11 7
      190 CALL                             R11 0 0
      191 JUMPIF                           R9 ; [+4]
      192 GETIMPORT                        R11 K21 [error]
      194 MOVE                             R12 R10
      195 CALL                             R11 1 0
      196 GETUPVAL                         R9 1
      197 JUMPIF                           R9 ; [+10]
      198 GETIMPORT                        R9 K7 [require]
      200 GETIMPORT                        R11 K10 [script]
      202 GETTABLEKS                       R11 R11 K11 ["Parent"]
      204 GETTABLEKS                       R10 R11 K8 ["ReactFiberNewContext.new"]
      206 CALL                             R9 1 1
      207 SETUPVAL                         R9 1
      208 GETUPVAL                         R9 1
      209 GETTABLEKS                       R9 R9 K22 ["exitDisallowedContextReadInDEV"]
      211 CALL                             R9 0 0
      212 JUMP                             ; [+1]
      213 MOVE                             R8 R7
      214 JUMPIFNOTEQKNIL                  R8 ; [+2]
      216 RETURN                           R3 1
      217 GETUPVAL                         R9 10
      218 GETTABLEKS                       R9 R9 K29 ["assign"]
      220 NEWTABLE                         R10 0 0
      222 MOVE                             R11 R3
      223 MOVE                             R12 R8
      224 CALL                             R9 3 -1
      225 RETURN                           R9 -1
      226 JUMPIFNOTEQKN                    R6 K30 [2] ; [+4]
      228 LOADB                            R7 1
      229 SETUPVAL                         R7 11
      230 RETURN                           R3 1
      231 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["updateQueue"]
        2 LOADB                            R5 0
        3 SETUPVAL                         R5 0
        4 GETUPVAL                         R5 1
        5 JUMPIFNOT                        R5 ; [+3]
        6 GETTABLEKS                       R5 R4 K1 ["shared"]
        8 SETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R4 K2 ["firstBaseUpdate"]
       11 GETTABLEKS                       R6 R4 K3 ["lastBaseUpdate"]
       13 GETTABLEKS                       R7 R4 K1 ["shared"]
       15 GETTABLEKS                       R7 R7 K4 ["pending"]
       17 JUMPIFEQKNIL                     R7 ; [+38]
       19 GETTABLEKS                       R8 R4 K1 ["shared"]
       21 LOADNIL                          R9
       22 SETTABLEKS                       R9 R8 K4 ["pending"]
       24 MOVE                             R8 R7
       25 GETTABLEKS                       R9 R8 K5 ["next"]
       27 LOADNIL                          R10
       28 SETTABLEKS                       R10 R8 K5 ["next"]
       30 JUMPIFNOTEQKNIL                  R6 ; [+3]
       32 MOVE                             R5 R9
       33 JUMP                             ; [+2]
       34 SETTABLEKS                       R9 R6 K5 ["next"]
       36 MOVE                             R6 R8
       37 GETTABLEKS                       R10 R0 K6 ["alternate"]
       39 JUMPIFEQKNIL                     R10 ; [+16]
       41 GETTABLEKS                       R11 R10 K0 ["updateQueue"]
       43 GETTABLEKS                       R12 R11 K3 ["lastBaseUpdate"]
       45 JUMPIFEQ                         R12 R6 ; [+10]
       47 JUMPIFNOTEQKNIL                  R12 ; [+4]
       49 SETTABLEKS                       R9 R11 K2 ["firstBaseUpdate"]
       51 JUMP                             ; [+2]
       52 SETTABLEKS                       R9 R12 K5 ["next"]
       54 SETTABLEKS                       R8 R11 K3 ["lastBaseUpdate"]
       56 JUMPIFEQKNIL                     R5 ; [+161]
       58 GETTABLEKS                       R8 R4 K7 ["baseState"]
       60 GETUPVAL                         R9 3
       61 LOADNIL                          R10
       62 LOADNIL                          R11
       63 LOADNIL                          R12
       64 MOVE                             R13 R5
       65 GETTABLEKS                       R14 R13 K8 ["lane"]
       67 GETTABLEKS                       R15 R13 K9 ["eventTime"]
       69 GETUPVAL                         R16 4
       70 MOVE                             R17 R3
       71 MOVE                             R18 R14
       72 CALL                             R16 2 1
       73 JUMPIF                           R16 ; [+32]
       74 DUPTABLE                         R16 K14 [{["eventTime"], ["lane"], ["tag"], ["payload"], ["callback"], ["next"] = }]
       75 SETTABLEKS                       R15 R16 K9 ["eventTime"]
       77 SETTABLEKS                       R14 R16 K8 ["lane"]
       79 GETTABLEKS                       R17 R13 K10 ["tag"]
       81 SETTABLEKS                       R17 R16 K10 ["tag"]
       83 GETTABLEKS                       R17 R13 K11 ["payload"]
       85 SETTABLEKS                       R17 R16 K11 ["payload"]
       87 GETTABLEKS                       R17 R13 K12 ["callback"]
       89 SETTABLEKS                       R17 R16 K12 ["callback"]
       91 JUMPIFNOTEQKNIL                  R12 ; [+5]
       93 MOVE                             R11 R16
       94 MOVE                             R12 R16
       95 MOVE                             R10 R8
       96 JUMP                             ; [+3]
       97 SETTABLEKS                       R16 R12 K5 ["next"]
       99 MOVE                             R12 R16
      100 GETUPVAL                         R17 5
      101 MOVE                             R18 R9
      102 MOVE                             R19 R14
      103 CALL                             R17 2 1
      104 MOVE                             R9 R17
      105 JUMP                             ; [+70]
      106 JUMPIFEQKNIL                     R12 ; [+22]
      108 DUPTABLE                         R16 K14 [{["eventTime"], ["lane"], ["tag"], ["payload"], ["callback"], ["next"] = }]
      109 SETTABLEKS                       R15 R16 K9 ["eventTime"]
      111 GETUPVAL                         R17 6
      112 SETTABLEKS                       R17 R16 K8 ["lane"]
      114 GETTABLEKS                       R17 R13 K10 ["tag"]
      116 SETTABLEKS                       R17 R16 K10 ["tag"]
      118 GETTABLEKS                       R17 R13 K11 ["payload"]
      120 SETTABLEKS                       R17 R16 K11 ["payload"]
      122 GETTABLEKS                       R17 R13 K12 ["callback"]
      124 SETTABLEKS                       R17 R16 K12 ["callback"]
      126 SETTABLEKS                       R16 R12 K5 ["next"]
      128 MOVE                             R12 R16
      129 GETUPVAL                         R16 7
      130 MOVE                             R17 R0
      131 MOVE                             R18 R4
      132 MOVE                             R19 R13
      133 MOVE                             R20 R8
      134 MOVE                             R21 R1
      135 MOVE                             R22 R2
      136 CALL                             R16 6 1
      137 MOVE                             R8 R16
      138 GETTABLEKS                       R16 R13 K12 ["callback"]
      140 JUMPIFEQKNIL                     R16 ; [+35]
      142 GETTABLEKS                       R17 R13 K8 ["lane"]
      144 GETUPVAL                         R18 6
      145 JUMPIFEQ                         R17 R18 ; [+30]
      147 GETTABLEKS                       R18 R0 K15 ["flags"]
      149 GETUPVAL                         R19 8
      150 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      152 GETIMPORT                        R17 K18 [bit32.bor]
      154 CALL                             R17 2 1
      155 SETTABLEKS                       R17 R0 K15 ["flags"]
      157 GETTABLEKS                       R17 R4 K19 ["effects"]
      159 JUMPIFNOTEQKNIL                  R17 ; [+9]
      161 NEWTABLE                         R18 0 1
      163 MOVE                             R19 R13
      164 SETLIST                          R18 R19 1 [1]
      166 SETTABLEKS                       R18 R4 K19 ["effects"]
      168 JUMP                             ; [+7]
      169 FASTCALL2                        TABLE_INSERT R17 R13 ; [+5]
      171 MOVE                             R19 R17
      172 MOVE                             R20 R13
      173 GETIMPORT                        R18 K22 [table.insert]
      175 CALL                             R18 2 0
      176 GETTABLEKS                       R13 R13 K5 ["next"]
      178 JUMPIFNOTEQKNIL                  R13 ; [+22]
      180 GETTABLEKS                       R16 R4 K1 ["shared"]
      182 GETTABLEKS                       R7 R16 K4 ["pending"]
      184 JUMPIFNOTEQKNIL                  R7 ; [+2]
      186 JUMP                             ; [+15]
      187 MOVE                             R16 R7
      188 GETTABLEKS                       R17 R16 K5 ["next"]
      190 LOADNIL                          R18
      191 SETTABLEKS                       R18 R16 K5 ["next"]
      193 MOVE                             R13 R17
      194 SETTABLEKS                       R16 R4 K3 ["lastBaseUpdate"]
      196 GETTABLEKS                       R18 R4 K1 ["shared"]
      198 LOADNIL                          R19
      199 SETTABLEKS                       R19 R18 K4 ["pending"]
      201 JUMPBACK                         ; [-137]
      202 JUMPIFNOTEQKNIL                  R12 ; [+2]
      204 MOVE                             R10 R8
      205 SETTABLEKS                       R10 R4 K7 ["baseState"]
      207 SETTABLEKS                       R11 R4 K2 ["firstBaseUpdate"]
      209 SETTABLEKS                       R12 R4 K3 ["lastBaseUpdate"]
      211 GETUPVAL                         R14 9
      212 MOVE                             R15 R9
      213 CALL                             R14 1 0
      214 SETTABLEKS                       R9 R0 K23 ["lanes"]
      216 SETTABLEKS                       R8 R0 K24 ["memoizedState"]
      218 GETUPVAL                         R8 1
      219 JUMPIFNOT                        R8 ; [+2]
      220 LOADNIL                          R8
      221 SETUPVAL                         R8 2
      222 RETURN                           R0 0

PROTO_10:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["function"] ; [+13]
        7 GETIMPORT                        R2 K4 [error]
        9 GETIMPORT                        R3 K7 [string.format]
       11 LOADK                            R4 K8 ["Invalid argument passed as callback. Expected a function. Instead received: %s"]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K10 [tostring]
       16 CALL                             R5 1 1
       17 CALL                             R3 2 -1
       18 CALL                             R2 -1 0
       19 MOVE                             R2 R0
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["effects"]
        2 LOADNIL                          R4
        3 SETTABLEKS                       R4 R1 K0 ["effects"]
        5 JUMPIFEQKNIL                     R3 ; [+47]
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K1 ["callback"]
       13 JUMPIFEQKNIL                     R9 ; [+23]
       15 FASTCALL1                        TYPE R9 ; [+3]
       16 MOVE                             R11 R9
       17 GETIMPORT                        R10 K3 [type]
       19 CALL                             R10 1 1
       20 JUMPIFEQKS                       R10 K4 ["function"] ; [+13]
       22 GETIMPORT                        R10 K6 [error]
       24 GETIMPORT                        R11 K9 [string.format]
       26 LOADK                            R12 K10 ["Invalid argument passed as callback. Expected a function. Instead received: %s"]
       27 FASTCALL1                        TOSTRING R9 ; [+3]
       28 MOVE                             R14 R9
       29 GETIMPORT                        R13 K12 [tostring]
       31 CALL                             R13 1 1
       32 CALL                             R11 2 -1
       33 CALL                             R10 -1 0
       34 MOVE                             R10 R9
       35 MOVE                             R11 R2
       36 CALL                             R10 1 0
       37 GETIMPORT                        R10 K15 [table.clear]
       39 MOVE                             R11 R8
       40 CALL                             R10 1 0
       41 GETUPVAL                         R11 0
       42 FASTCALL2                        TABLE_INSERT R11 R8 ; [+4]
       44 MOVE                             R12 R8
       45 GETIMPORT                        R10 K17 [table.insert]
       47 CALL                             R10 2 0
       48 GETUPVAL                         R10 1
       49 ADDK                             R10 R10 K18 [1]
       50 SETUPVAL                         R10 1
       51 FORGLOOP                         R4 2 ; [-41]
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Object"]
       19 GETTABLEKS                       R4 R1 K8 ["__DEV__"]
       21 GETTABLEKS                       R5 R1 K9 ["__YOLO__"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Shared"]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R6 R6 K11 ["console"]
       30 GETIMPORT                        R7 K4 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R8 R8 K2 ["Parent"]
       36 GETTABLEKS                       R8 R8 K12 ["ReactInternalTypes"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K4 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R9 R9 K2 ["Parent"]
       45 GETTABLEKS                       R9 R9 K13 ["ReactFiberLane"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R8 K14 ["NoLane"]
       50 GETTABLEKS                       R10 R8 K15 ["NoLanes"]
       52 GETTABLEKS                       R11 R8 K16 ["isSubsetOfLanes"]
       54 GETTABLEKS                       R12 R8 K17 ["mergeLanes"]
       56 LOADNIL                          R13
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          REF R13
       59 NEWCLOSURE                       R15 P1
       60 CAPTURE                          REF R13
       61 GETIMPORT                        R16 K4 [require]
       63 GETIMPORT                        R17 K1 [script]
       65 GETTABLEKS                       R17 R17 K2 ["Parent"]
       67 GETTABLEKS                       R17 R17 K18 ["ReactFiberFlags"]
       69 CALL                             R16 1 1
       70 GETTABLEKS                       R17 R16 K19 ["Callback"]
       72 GETTABLEKS                       R18 R16 K20 ["ShouldCapture"]
       74 GETTABLEKS                       R19 R16 K21 ["DidCapture"]
       76 GETIMPORT                        R20 K4 [require]
       78 GETTABLEKS                       R21 R0 K10 ["Shared"]
       80 CALL                             R20 1 1
       81 GETTABLEKS                       R20 R20 K22 ["ReactFeatureFlags"]
       83 GETTABLEKS                       R21 R20 K23 ["debugRenderPhaseSideEffectsForStrictMode"]
       85 GETIMPORT                        R22 K4 [require]
       87 GETIMPORT                        R23 K1 [script]
       89 GETTABLEKS                       R23 R23 K2 ["Parent"]
       91 GETTABLEKS                       R23 R23 K24 ["ReactTypeOfMode"]
       93 CALL                             R22 1 1
       94 GETTABLEKS                       R23 R22 K25 ["StrictMode"]
       96 GETIMPORT                        R24 K4 [require]
       98 GETIMPORT                        R25 K1 [script]
      100 GETTABLEKS                       R25 R25 K2 ["Parent"]
      102 GETTABLEKS                       R25 R25 K26 ["ReactFiberWorkInProgress"]
      104 CALL                             R24 1 1
      105 GETTABLEKS                       R24 R24 K27 ["markSkippedUpdateLanes"]
      107 GETIMPORT                        R25 K4 [require]
      109 GETTABLEKS                       R26 R0 K10 ["Shared"]
      111 CALL                             R25 1 1
      112 GETTABLEKS                       R25 R25 K28 ["describeError"]
      114 GETIMPORT                        R26 K4 [require]
      116 GETTABLEKS                       R27 R0 K10 ["Shared"]
      118 CALL                             R26 1 1
      119 GETTABLEKS                       R26 R26 K29 ["ConsolePatchingDev"]
      121 GETTABLEKS                       R27 R26 K30 ["disableLogs"]
      123 GETTABLEKS                       R28 R26 K31 ["reenableLogs"]
      125 NEWTABLE                         R29 16 0
      127 LOADN                            R30 0
      128 SETTABLEKS                       R30 R29 K32 ["UpdateState"]
      130 LOADN                            R30 1
      131 SETTABLEKS                       R30 R29 K33 ["ReplaceState"]
      133 LOADN                            R30 2
      134 SETTABLEKS                       R30 R29 K34 ["ForceUpdate"]
      136 LOADN                            R30 3
      137 SETTABLEKS                       R30 R29 K35 ["CaptureUpdate"]
      139 LOADB                            R30 0
      140 LOADNIL                          R31
      141 LOADNIL                          R32
      142 JUMPIFNOT                        R4 ; [+6]
      143 LOADB                            R31 0
      144 LOADNIL                          R32
      145 NEWCLOSURE                       R33 P2
      146 CAPTURE                          REF R32
      147 SETTABLEKS                       R33 R29 K36 ["resetCurrentlyProcessingQueue"]
      149 GETIMPORT                        R33 K39 [table.create]
      151 LOADN                            R34 210
      152 CALL                             R33 1 1
      153 LOADN                            R34 210
      154 LOADN                            R37 1
      155 LOADN                            R35 210
      156 LOADN                            R36 1
      157 FORNPREP                         R35
      158 DUPTABLE                         R38 K48 [{["eventTime"] = -1, ["lane"] = -1, ["tag"] = -1, ["payload"] = , ["callback"] = , ["next"] = }]
      159 SETTABLE                         R38 R33 R37
      160 FORNLOOP                         R35
      161 DUPCLOSURE                       R35 K49 [PROTO_3]
      162 SETTABLEKS                       R35 R29 K50 ["initializeUpdateQueue"]
      164 DUPCLOSURE                       R36 K51 [PROTO_4]
      165 SETTABLEKS                       R36 R29 K52 ["cloneUpdateQueue"]
      167 NEWCLOSURE                       R37 P5
      168 CAPTURE                          REF R34
      169 CAPTURE                          VAL R33
      170 SETTABLEKS                       R37 R29 K53 ["createUpdate"]
      172 NEWCLOSURE                       R38 P6
      173 CAPTURE                          VAL R4
      174 CAPTURE                          REF R32
      175 CAPTURE                          REF R31
      176 CAPTURE                          VAL R6
      177 SETTABLEKS                       R38 R29 K54 ["enqueueUpdate"]
      179 DUPCLOSURE                       R39 K55 [PROTO_7]
      180 SETTABLEKS                       R39 R29 K56 ["enqueueCapturedUpdate"]
      182 NEWCLOSURE                       R40 P8
      183 CAPTURE                          VAL R4
      184 CAPTURE                          REF R13
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R27
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R28
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R3
      194 CAPTURE                          REF R30
      195 SETTABLEKS                       R40 R29 K57 ["getStateFromUpdate"]
      197 NEWCLOSURE                       R41 P9
      198 CAPTURE                          REF R30
      199 CAPTURE                          VAL R4
      200 CAPTURE                          REF R32
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R40
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R24
      208 SETTABLEKS                       R41 R29 K58 ["processUpdateQueue"]
      210 DUPCLOSURE                       R42 K59 [PROTO_10]
      211 NEWCLOSURE                       R43 P11
      212 CAPTURE                          REF R30
      213 SETTABLEKS                       R43 R29 K60 ["resetHasForceUpdateBeforeProcessing"]
      215 NEWCLOSURE                       R43 P12
      216 CAPTURE                          REF R30
      217 SETTABLEKS                       R43 R29 K61 ["checkHasForceUpdateAfterProcessing"]
      219 NEWCLOSURE                       R43 P13
      220 CAPTURE                          VAL R33
      221 CAPTURE                          REF R34
      222 SETTABLEKS                       R43 R29 K62 ["commitUpdateQueue"]
      224 CLOSEUPVALS                      R13
      225 RETURN                           R29 1
