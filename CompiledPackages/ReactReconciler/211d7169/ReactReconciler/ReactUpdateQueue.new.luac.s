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
        0 DUPTABLE                         R1 K5 [{"baseState", "firstBaseUpdate", "lastBaseUpdate", "shared", "effects"}]
        1 GETTABLEKS                       R2 R0 K6 ["memoizedState"]
        3 SETTABLEKS                       R2 R1 K0 ["baseState"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["firstBaseUpdate"]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K2 ["lastBaseUpdate"]
       11 DUPTABLE                         R2 K8 [{"pending"}]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K7 ["pending"]
       15 SETTABLEKS                       R2 R1 K3 ["shared"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K4 ["effects"]
       20 SETTABLEKS                       R1 R0 K9 ["updateQueue"]
       22 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["updateQueue"]
        2 GETTABLEKS                       R3 R0 K0 ["updateQueue"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+24]
        6 DUPTABLE                         R4 K6 [{"baseState", "firstBaseUpdate", "lastBaseUpdate", "shared", "effects"}]
        7 GETTABLEKS                       R5 R3 K1 ["baseState"]
        9 SETTABLEKS                       R5 R4 K1 ["baseState"]
       11 GETTABLEKS                       R5 R3 K2 ["firstBaseUpdate"]
       13 SETTABLEKS                       R5 R4 K2 ["firstBaseUpdate"]
       15 GETTABLEKS                       R5 R3 K3 ["lastBaseUpdate"]
       17 SETTABLEKS                       R5 R4 K3 ["lastBaseUpdate"]
       19 GETTABLEKS                       R5 R3 K4 ["shared"]
       21 SETTABLEKS                       R5 R4 K4 ["shared"]
       23 GETTABLEKS                       R5 R3 K5 ["effects"]
       25 SETTABLEKS                       R5 R4 K5 ["effects"]
       27 SETTABLEKS                       R4 R1 K0 ["updateQueue"]
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+19]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 0
        9 LOADNIL                          R5
       10 SETTABLE                         R5 R3 R4
       11 GETUPVAL                         R3 0
       12 SUBK                             R3 R3 K0 [1]
       13 SETUPVAL                         R3 0
       14 SETTABLEKS                       R0 R2 K1 ["eventTime"]
       16 SETTABLEKS                       R1 R2 K2 ["lane"]
       18 LOADN                            R3 0
       19 SETTABLEKS                       R3 R2 K3 ["tag"]
       21 RETURN                           R2 1
       22 DUPTABLE                         R2 K7 [{"eventTime", "lane", "tag", "payload", "callback", "next"}]
       23 SETTABLEKS                       R0 R2 K1 ["eventTime"]
       25 SETTABLEKS                       R1 R2 K2 ["lane"]
       27 LOADN                            R3 0
       28 SETTABLEKS                       R3 R2 K3 ["tag"]
       30 LOADNIL                          R3
       31 SETTABLEKS                       R3 R2 K4 ["payload"]
       33 LOADNIL                          R3
       34 SETTABLEKS                       R3 R2 K5 ["callback"]
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K6 ["next"]
       39 RETURN                           R2 1

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
       22 GETIMPORT                        R5 K5 [_G]
       24 GETTABLEKS                       R5 R5 K6 ["__DEV__"]
       26 JUMPIFNOT                        R5 ; [+12]
       27 GETUPVAL                         R5 0
       28 JUMPIFNOTEQ                      R5 R3 ; [+10]
       30 GETUPVAL                         R5 1
       31 JUMPIF                           R5 ; [+7]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K7 ["error"]
       35 LOADK                            R6 K8 ["An update (setState, replaceState, or forceUpdate) was scheduled from inside an update function. Update functions should be pure, with zero side-effects. Consider using componentDidUpdate or a callback."]
       36 CALL                             R5 1 0
       37 LOADB                            R5 1
       38 SETUPVAL                         R5 1
       39 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["updateQueue"]
        2 GETTABLEKS                       R3 R0 K1 ["alternate"]
        4 JUMPIFEQKNIL                     R3 ; [+81]
        6 GETTABLEKS                       R4 R3 K0 ["updateQueue"]
        8 JUMPIFNOTEQ                      R2 R4 ; [+77]
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 GETTABLEKS                       R7 R2 K2 ["firstBaseUpdate"]
       14 JUMPIFEQKNIL                     R7 ; [+48]
       16 MOVE                             R8 R7
       17 DUPTABLE                         R9 K9 [{"eventTime", "lane", "tag", "payload", "callback", "next"}]
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
       38 LOADNIL                          R10
       39 SETTABLEKS                       R10 R9 K8 ["next"]
       41 JUMPIFNOTEQKNIL                  R6 ; [+4]
       43 MOVE                             R6 R9
       44 MOVE                             R5 R9
       45 JUMP                             ; [+3]
       46 SETTABLEKS                       R9 R6 K8 ["next"]
       48 MOVE                             R6 R9
       49 GETTABLEKS                       R8 R8 K8 ["next"]
       51 JUMPIFEQKNIL                     R8 ; [+2]
       53 JUMPBACK                         ; [-37]
       54 JUMPIFNOTEQKNIL                  R6 ; [+4]
       56 MOVE                             R6 R1
       57 MOVE                             R5 R1
       58 JUMP                             ; [+6]
       59 SETTABLEKS                       R1 R6 K8 ["next"]
       61 MOVE                             R6 R1
       62 JUMP                             ; [+2]
       63 MOVE                             R6 R1
       64 MOVE                             R5 R1
       65 DUPTABLE                         R8 K14 [{"baseState", "firstBaseUpdate", "lastBaseUpdate", "shared", "effects"}]
       66 GETTABLEKS                       R9 R4 K10 ["baseState"]
       68 SETTABLEKS                       R9 R8 K10 ["baseState"]
       70 SETTABLEKS                       R5 R8 K2 ["firstBaseUpdate"]
       72 SETTABLEKS                       R6 R8 K11 ["lastBaseUpdate"]
       74 GETTABLEKS                       R9 R4 K12 ["shared"]
       76 SETTABLEKS                       R9 R8 K12 ["shared"]
       78 GETTABLEKS                       R9 R4 K13 ["effects"]
       80 SETTABLEKS                       R9 R8 K13 ["effects"]
       82 MOVE                             R2 R8
       83 SETTABLEKS                       R2 R0 K0 ["updateQueue"]
       85 RETURN                           R0 0
       86 GETTABLEKS                       R4 R2 K11 ["lastBaseUpdate"]
       88 JUMPIFNOTEQKNIL                  R4 ; [+4]
       90 SETTABLEKS                       R1 R2 K2 ["firstBaseUpdate"]
       92 JUMP                             ; [+2]
       93 SETTABLEKS                       R1 R4 K8 ["next"]
       95 SETTABLEKS                       R1 R2 K11 ["lastBaseUpdate"]
       97 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R6 R2 K0 ["tag"]
        2 JUMPIFNOTEQKN                    R6 K1 [1] ; [+100]
        4 GETTABLEKS                       R6 R2 K2 ["payload"]
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K4 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K5 ["function"] ; [+90]
       13 GETIMPORT                        R7 K7 [_G]
       15 GETTABLEKS                       R7 R7 K8 ["__DEV__"]
       17 JUMPIFNOT                        R7 ; [+16]
       18 GETUPVAL                         R7 0
       19 JUMPIF                           R7 ; [+10]
       20 GETIMPORT                        R7 K10 [require]
       22 GETIMPORT                        R9 K13 [script]
       24 GETTABLEKS                       R9 R9 K14 ["Parent"]
       26 GETTABLEKS                       R8 R9 K11 ["ReactFiberNewContext.new"]
       28 CALL                             R7 1 1
       29 SETUPVAL                         R7 0
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K15 ["enterDisallowedContextReadInDEV"]
       33 CALL                             R7 0 0
       34 MOVE                             R7 R6
       35 MOVE                             R8 R3
       36 MOVE                             R9 R4
       37 CALL                             R7 2 1
       38 GETIMPORT                        R8 K7 [_G]
       40 GETTABLEKS                       R8 R8 K8 ["__DEV__"]
       42 JUMPIFNOT                        R8 ; [+58]
       43 GETUPVAL                         R8 1
       44 JUMPIFNOT                        R8 ; [+40]
       45 GETTABLEKS                       R9 R0 K16 ["mode"]
       47 GETUPVAL                         R10 2
       48 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       50 GETIMPORT                        R8 K19 [bit32.band]
       52 CALL                             R8 2 1
       53 JUMPIFEQKN                       R8 K20 [0] ; [+31]
       55 GETUPVAL                         R8 3
       56 CALL                             R8 0 0
       57 LOADNIL                          R8
       58 LOADNIL                          R9
       59 GETIMPORT                        R10 K7 [_G]
       61 GETTABLEKS                       R10 R10 K21 ["__YOLO__"]
       63 JUMPIF                           R10 ; [+9]
       64 GETIMPORT                        R10 K23 [pcall]
       66 MOVE                             R11 R6
       67 MOVE                             R12 R3
       68 MOVE                             R13 R4
       69 CALL                             R10 3 2
       70 MOVE                             R8 R10
       71 MOVE                             R9 R11
       72 JUMP                             ; [+5]
       73 LOADB                            R8 1
       74 MOVE                             R10 R6
       75 MOVE                             R11 R3
       76 MOVE                             R12 R4
       77 CALL                             R10 2 0
       78 GETUPVAL                         R10 4
       79 CALL                             R10 0 0
       80 JUMPIF                           R8 ; [+4]
       81 GETIMPORT                        R10 K25 [error]
       83 MOVE                             R11 R9
       84 CALL                             R10 1 0
       85 GETUPVAL                         R8 0
       86 JUMPIF                           R8 ; [+10]
       87 GETIMPORT                        R8 K10 [require]
       89 GETIMPORT                        R10 K13 [script]
       91 GETTABLEKS                       R10 R10 K14 ["Parent"]
       93 GETTABLEKS                       R9 R10 K11 ["ReactFiberNewContext.new"]
       95 CALL                             R8 1 1
       96 SETUPVAL                         R8 0
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R8 R8 K26 ["exitDisallowedContextReadInDEV"]
      100 CALL                             R8 0 0
      101 RETURN                           R7 1
      102 RETURN                           R6 1
      103 GETTABLEKS                       R6 R2 K0 ["tag"]
      105 JUMPIFEQKN                       R6 K27 [3] ; [+5]
      107 GETTABLEKS                       R6 R2 K0 ["tag"]
      109 JUMPIFNOTEQKN                    R6 K20 [0] ; [+138]
      111 GETTABLEKS                       R6 R2 K0 ["tag"]
      113 JUMPIFNOTEQKN                    R6 K27 [3] ; [+21]
      115 GETTABLEKS                       R8 R0 K28 ["flags"]
      117 GETUPVAL                         R10 5
      118 FASTCALL1                        BIT32_BNOT R10 ; [+2]
      119 GETIMPORT                        R9 K30 [bit32.bnot]
      121 CALL                             R9 1 1
      122 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      124 GETIMPORT                        R7 K19 [bit32.band]
      126 CALL                             R7 2 1
      127 GETUPVAL                         R8 6
      128 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
      130 GETIMPORT                        R6 K32 [bit32.bor]
      132 CALL                             R6 2 1
      133 SETTABLEKS                       R6 R0 K28 ["flags"]
      135 GETTABLEKS                       R6 R2 K2 ["payload"]
      137 LOADNIL                          R7
      138 FASTCALL1                        TYPEOF R6 ; [+3]
      139 MOVE                             R9 R6
      140 GETIMPORT                        R8 K4 [typeof]
      142 CALL                             R8 1 1
      143 JUMPIFNOTEQKS                    R8 K5 ["function"] ; [+91]
      145 GETIMPORT                        R8 K7 [_G]
      147 GETTABLEKS                       R8 R8 K8 ["__DEV__"]
      149 JUMPIFNOT                        R8 ; [+16]
      150 GETUPVAL                         R8 0
      151 JUMPIF                           R8 ; [+10]
      152 GETIMPORT                        R8 K10 [require]
      154 GETIMPORT                        R10 K13 [script]
      156 GETTABLEKS                       R10 R10 K14 ["Parent"]
      158 GETTABLEKS                       R9 R10 K11 ["ReactFiberNewContext.new"]
      160 CALL                             R8 1 1
      161 SETUPVAL                         R8 0
      162 GETUPVAL                         R8 0
      163 GETTABLEKS                       R8 R8 K15 ["enterDisallowedContextReadInDEV"]
      165 CALL                             R8 0 0
      166 MOVE                             R8 R6
      167 MOVE                             R9 R3
      168 MOVE                             R10 R4
      169 CALL                             R8 2 1
      170 MOVE                             R7 R8
      171 GETIMPORT                        R8 K7 [_G]
      173 GETTABLEKS                       R8 R8 K8 ["__DEV__"]
      175 JUMPIFNOT                        R8 ; [+60]
      176 GETUPVAL                         R8 1
      177 JUMPIFNOT                        R8 ; [+40]
      178 GETTABLEKS                       R9 R0 K16 ["mode"]
      180 GETUPVAL                         R10 2
      181 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      183 GETIMPORT                        R8 K19 [bit32.band]
      185 CALL                             R8 2 1
      186 JUMPIFEQKN                       R8 K20 [0] ; [+31]
      188 GETUPVAL                         R8 3
      189 CALL                             R8 0 0
      190 LOADNIL                          R8
      191 LOADNIL                          R9
      192 GETIMPORT                        R10 K7 [_G]
      194 GETTABLEKS                       R10 R10 K21 ["__YOLO__"]
      196 JUMPIF                           R10 ; [+9]
      197 GETIMPORT                        R10 K23 [pcall]
      199 MOVE                             R11 R6
      200 MOVE                             R12 R3
      201 MOVE                             R13 R4
      202 CALL                             R10 3 2
      203 MOVE                             R8 R10
      204 MOVE                             R9 R11
      205 JUMP                             ; [+5]
      206 LOADB                            R8 1
      207 MOVE                             R10 R6
      208 MOVE                             R11 R3
      209 MOVE                             R12 R4
      210 CALL                             R10 2 0
      211 GETUPVAL                         R10 4
      212 CALL                             R10 0 0
      213 JUMPIF                           R8 ; [+4]
      214 GETIMPORT                        R10 K25 [error]
      216 MOVE                             R11 R9
      217 CALL                             R10 1 0
      218 GETUPVAL                         R8 0
      219 JUMPIF                           R8 ; [+10]
      220 GETIMPORT                        R8 K10 [require]
      222 GETIMPORT                        R10 K13 [script]
      224 GETTABLEKS                       R10 R10 K14 ["Parent"]
      226 GETTABLEKS                       R9 R10 K11 ["ReactFiberNewContext.new"]
      228 CALL                             R8 1 1
      229 SETUPVAL                         R8 0
      230 GETUPVAL                         R8 0
      231 GETTABLEKS                       R8 R8 K26 ["exitDisallowedContextReadInDEV"]
      233 CALL                             R8 0 0
      234 JUMP                             ; [+1]
      235 MOVE                             R7 R6
      236 JUMPIFNOTEQKNIL                  R7 ; [+2]
      238 RETURN                           R3 1
      239 GETUPVAL                         R8 7
      240 GETTABLEKS                       R8 R8 K33 ["assign"]
      242 NEWTABLE                         R9 0 0
      244 MOVE                             R10 R3
      245 MOVE                             R11 R7
      246 CALL                             R8 3 -1
      247 RETURN                           R8 -1
      248 GETTABLEKS                       R6 R2 K0 ["tag"]
      250 JUMPIFNOTEQKN                    R6 K34 [2] ; [+4]
      252 LOADB                            R6 1
      253 SETUPVAL                         R6 8
      254 RETURN                           R3 1
      255 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["updateQueue"]
        2 LOADB                            R5 0
        3 SETUPVAL                         R5 0
        4 GETIMPORT                        R5 K2 [_G]
        6 GETTABLEKS                       R5 R5 K3 ["__DEV__"]
        8 JUMPIFNOT                        R5 ; [+3]
        9 GETTABLEKS                       R5 R4 K4 ["shared"]
       11 SETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R4 K5 ["firstBaseUpdate"]
       14 GETTABLEKS                       R6 R4 K6 ["lastBaseUpdate"]
       16 GETTABLEKS                       R7 R4 K4 ["shared"]
       18 GETTABLEKS                       R7 R7 K7 ["pending"]
       20 JUMPIFEQKNIL                     R7 ; [+38]
       22 GETTABLEKS                       R8 R4 K4 ["shared"]
       24 LOADNIL                          R9
       25 SETTABLEKS                       R9 R8 K7 ["pending"]
       27 MOVE                             R8 R7
       28 GETTABLEKS                       R9 R8 K8 ["next"]
       30 LOADNIL                          R10
       31 SETTABLEKS                       R10 R8 K8 ["next"]
       33 JUMPIFNOTEQKNIL                  R6 ; [+3]
       35 MOVE                             R5 R9
       36 JUMP                             ; [+2]
       37 SETTABLEKS                       R9 R6 K8 ["next"]
       39 MOVE                             R6 R8
       40 GETTABLEKS                       R10 R0 K9 ["alternate"]
       42 JUMPIFEQKNIL                     R10 ; [+16]
       44 GETTABLEKS                       R11 R10 K0 ["updateQueue"]
       46 GETTABLEKS                       R12 R11 K6 ["lastBaseUpdate"]
       48 JUMPIFEQ                         R12 R6 ; [+10]
       50 JUMPIFNOTEQKNIL                  R12 ; [+4]
       52 SETTABLEKS                       R9 R11 K5 ["firstBaseUpdate"]
       54 JUMP                             ; [+2]
       55 SETTABLEKS                       R9 R12 K8 ["next"]
       57 SETTABLEKS                       R8 R11 K6 ["lastBaseUpdate"]
       59 JUMPIFEQKNIL                     R5 ; [+167]
       61 GETTABLEKS                       R8 R4 K10 ["baseState"]
       63 GETUPVAL                         R9 2
       64 LOADNIL                          R10
       65 LOADNIL                          R11
       66 LOADNIL                          R12
       67 MOVE                             R13 R5
       68 GETTABLEKS                       R14 R13 K11 ["lane"]
       70 GETTABLEKS                       R15 R13 K12 ["eventTime"]
       72 GETUPVAL                         R16 3
       73 MOVE                             R17 R3
       74 MOVE                             R18 R14
       75 CALL                             R16 2 1
       76 JUMPIF                           R16 ; [+35]
       77 DUPTABLE                         R16 K16 [{"eventTime", "lane", "tag", "payload", "callback", "next"}]
       78 SETTABLEKS                       R15 R16 K12 ["eventTime"]
       80 SETTABLEKS                       R14 R16 K11 ["lane"]
       82 GETTABLEKS                       R17 R13 K13 ["tag"]
       84 SETTABLEKS                       R17 R16 K13 ["tag"]
       86 GETTABLEKS                       R17 R13 K14 ["payload"]
       88 SETTABLEKS                       R17 R16 K14 ["payload"]
       90 GETTABLEKS                       R17 R13 K15 ["callback"]
       92 SETTABLEKS                       R17 R16 K15 ["callback"]
       94 LOADNIL                          R17
       95 SETTABLEKS                       R17 R16 K8 ["next"]
       97 JUMPIFNOTEQKNIL                  R12 ; [+5]
       99 MOVE                             R11 R16
      100 MOVE                             R12 R16
      101 MOVE                             R10 R8
      102 JUMP                             ; [+3]
      103 SETTABLEKS                       R16 R12 K8 ["next"]
      105 MOVE                             R12 R16
      106 GETUPVAL                         R17 4
      107 MOVE                             R18 R9
      108 MOVE                             R19 R14
      109 CALL                             R17 2 1
      110 MOVE                             R9 R17
      111 JUMP                             ; [+73]
      112 JUMPIFEQKNIL                     R12 ; [+25]
      114 DUPTABLE                         R16 K16 [{"eventTime", "lane", "tag", "payload", "callback", "next"}]
      115 SETTABLEKS                       R15 R16 K12 ["eventTime"]
      117 GETUPVAL                         R17 5
      118 SETTABLEKS                       R17 R16 K11 ["lane"]
      120 GETTABLEKS                       R17 R13 K13 ["tag"]
      122 SETTABLEKS                       R17 R16 K13 ["tag"]
      124 GETTABLEKS                       R17 R13 K14 ["payload"]
      126 SETTABLEKS                       R17 R16 K14 ["payload"]
      128 GETTABLEKS                       R17 R13 K15 ["callback"]
      130 SETTABLEKS                       R17 R16 K15 ["callback"]
      132 LOADNIL                          R17
      133 SETTABLEKS                       R17 R16 K8 ["next"]
      135 SETTABLEKS                       R16 R12 K8 ["next"]
      137 MOVE                             R12 R16
      138 GETUPVAL                         R16 6
      139 MOVE                             R17 R0
      140 MOVE                             R18 R4
      141 MOVE                             R19 R13
      142 MOVE                             R20 R8
      143 MOVE                             R21 R1
      144 MOVE                             R22 R2
      145 CALL                             R16 6 1
      146 MOVE                             R8 R16
      147 GETTABLEKS                       R16 R13 K15 ["callback"]
      149 JUMPIFEQKNIL                     R16 ; [+35]
      151 GETTABLEKS                       R17 R13 K11 ["lane"]
      153 GETUPVAL                         R18 5
      154 JUMPIFEQ                         R17 R18 ; [+30]
      156 GETTABLEKS                       R18 R0 K17 ["flags"]
      158 GETUPVAL                         R19 7
      159 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      161 GETIMPORT                        R17 K20 [bit32.bor]
      163 CALL                             R17 2 1
      164 SETTABLEKS                       R17 R0 K17 ["flags"]
      166 GETTABLEKS                       R17 R4 K21 ["effects"]
      168 JUMPIFNOTEQKNIL                  R17 ; [+9]
      170 NEWTABLE                         R18 0 1
      172 MOVE                             R19 R13
      173 SETLIST                          R18 R19 1 [1]
      175 SETTABLEKS                       R18 R4 K21 ["effects"]
      177 JUMP                             ; [+7]
      178 FASTCALL2                        TABLE_INSERT R17 R13 ; [+5]
      180 MOVE                             R19 R17
      181 MOVE                             R20 R13
      182 GETIMPORT                        R18 K24 [table.insert]
      184 CALL                             R18 2 0
      185 GETTABLEKS                       R13 R13 K8 ["next"]
      187 JUMPIFNOTEQKNIL                  R13 ; [+22]
      189 GETTABLEKS                       R16 R4 K4 ["shared"]
      191 GETTABLEKS                       R7 R16 K7 ["pending"]
      193 JUMPIFNOTEQKNIL                  R7 ; [+2]
      195 JUMP                             ; [+15]
      196 MOVE                             R16 R7
      197 GETTABLEKS                       R17 R16 K8 ["next"]
      199 LOADNIL                          R18
      200 SETTABLEKS                       R18 R16 K8 ["next"]
      202 MOVE                             R13 R17
      203 SETTABLEKS                       R16 R4 K6 ["lastBaseUpdate"]
      205 GETTABLEKS                       R18 R4 K4 ["shared"]
      207 LOADNIL                          R19
      208 SETTABLEKS                       R19 R18 K7 ["pending"]
      210 JUMPBACK                         ; [-143]
      211 JUMPIFNOTEQKNIL                  R12 ; [+2]
      213 MOVE                             R10 R8
      214 SETTABLEKS                       R10 R4 K10 ["baseState"]
      216 SETTABLEKS                       R11 R4 K5 ["firstBaseUpdate"]
      218 SETTABLEKS                       R12 R4 K6 ["lastBaseUpdate"]
      220 GETUPVAL                         R14 8
      221 MOVE                             R15 R9
      222 CALL                             R14 1 0
      223 SETTABLEKS                       R9 R0 K25 ["lanes"]
      225 SETTABLEKS                       R8 R0 K26 ["memoizedState"]
      227 GETIMPORT                        R8 K2 [_G]
      229 GETTABLEKS                       R8 R8 K3 ["__DEV__"]
      231 JUMPIFNOT                        R8 ; [+2]
      232 LOADNIL                          R8
      233 SETUPVAL                         R8 1
      234 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["Invalid argument passed as callback. Expected a function. Instead received: %s"]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R6 R0
       13 GETIMPORT                        R5 K5 [tostring]
       15 CALL                             R5 1 1
       16 CALL                             R2 3 0
       17 MOVE                             R2 R0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

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
        5 JUMPIFEQKNIL                     R3 ; [+46]
        7 GETIMPORT                        R4 K2 [ipairs]
        9 MOVE                             R5 R3
       10 CALL                             R4 1 3
       11 FORGPREP_INEXT                   R4
       12 GETTABLEKS                       R9 R8 K3 ["callback"]
       14 JUMPIFEQKNIL                     R9 ; [+21]
       16 GETUPVAL                         R10 0
       17 FASTCALL1                        TYPEOF R9 ; [+3]
       18 MOVE                             R13 R9
       19 GETIMPORT                        R12 K5 [typeof]
       21 CALL                             R12 1 1
       22 JUMPIFEQKS                       R12 K6 ["function"] ; [+2]
       24 LOADB                            R11 0 +1
       25 LOADB                            R11 1
       26 LOADK                            R12 K7 ["Invalid argument passed as callback. Expected a function. Instead received: %s"]
       27 FASTCALL1                        TOSTRING R9 ; [+3]
       28 MOVE                             R14 R9
       29 GETIMPORT                        R13 K9 [tostring]
       31 CALL                             R13 1 1
       32 CALL                             R10 3 0
       33 MOVE                             R10 R9
       34 MOVE                             R11 R2
       35 CALL                             R10 1 0
       36 GETIMPORT                        R10 K12 [table.clear]
       38 MOVE                             R11 R8
       39 CALL                             R10 1 0
       40 GETUPVAL                         R11 1
       41 FASTCALL2                        TABLE_INSERT R11 R8 ; [+4]
       43 MOVE                             R12 R8
       44 GETIMPORT                        R10 K14 [table.insert]
       46 CALL                             R10 2 0
       47 GETUPVAL                         R10 2
       48 ADDK                             R10 R10 K15 [1]
       49 SETUPVAL                         R10 2
       50 FORGLOOP                         R4 2 [inext] ; [-39]
       52 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Shared"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K8 ["console"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K2 ["Parent"]
       27 GETTABLEKS                       R5 R5 K9 ["ReactInternalTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K2 ["Parent"]
       36 GETTABLEKS                       R6 R6 K10 ["ReactFiberLane"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K11 ["NoLane"]
       41 GETTABLEKS                       R7 R5 K12 ["NoLanes"]
       43 GETTABLEKS                       R8 R5 K13 ["isSubsetOfLanes"]
       45 GETTABLEKS                       R9 R5 K14 ["mergeLanes"]
       47 LOADNIL                          R10
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          REF R10
       50 NEWCLOSURE                       R12 P1
       51 CAPTURE                          REF R10
       52 GETIMPORT                        R13 K4 [require]
       54 GETIMPORT                        R14 K1 [script]
       56 GETTABLEKS                       R14 R14 K2 ["Parent"]
       58 GETTABLEKS                       R14 R14 K15 ["ReactFiberFlags"]
       60 CALL                             R13 1 1
       61 GETTABLEKS                       R14 R13 K16 ["Callback"]
       63 GETTABLEKS                       R15 R13 K17 ["ShouldCapture"]
       65 GETTABLEKS                       R16 R13 K18 ["DidCapture"]
       67 GETIMPORT                        R17 K4 [require]
       69 GETTABLEKS                       R18 R0 K7 ["Shared"]
       71 CALL                             R17 1 1
       72 GETTABLEKS                       R17 R17 K19 ["ReactFeatureFlags"]
       74 GETTABLEKS                       R18 R17 K20 ["debugRenderPhaseSideEffectsForStrictMode"]
       76 GETIMPORT                        R19 K4 [require]
       78 GETIMPORT                        R20 K1 [script]
       80 GETTABLEKS                       R20 R20 K2 ["Parent"]
       82 GETTABLEKS                       R20 R20 K21 ["ReactTypeOfMode"]
       84 CALL                             R19 1 1
       85 GETTABLEKS                       R20 R19 K22 ["StrictMode"]
       87 GETIMPORT                        R21 K4 [require]
       89 GETIMPORT                        R22 K1 [script]
       91 GETTABLEKS                       R22 R22 K2 ["Parent"]
       93 GETTABLEKS                       R22 R22 K23 ["ReactFiberWorkInProgress"]
       95 CALL                             R21 1 1
       96 GETTABLEKS                       R21 R21 K24 ["markSkippedUpdateLanes"]
       98 GETIMPORT                        R22 K4 [require]
      100 GETTABLEKS                       R23 R0 K7 ["Shared"]
      102 CALL                             R22 1 1
      103 GETTABLEKS                       R22 R22 K25 ["invariant"]
      105 GETIMPORT                        R23 K4 [require]
      107 GETTABLEKS                       R24 R0 K7 ["Shared"]
      109 CALL                             R23 1 1
      110 GETTABLEKS                       R23 R23 K26 ["ConsolePatchingDev"]
      112 GETTABLEKS                       R24 R23 K27 ["disableLogs"]
      114 GETTABLEKS                       R25 R23 K28 ["reenableLogs"]
      116 NEWTABLE                         R26 16 0
      118 LOADN                            R27 0
      119 SETTABLEKS                       R27 R26 K29 ["UpdateState"]
      121 LOADN                            R27 1
      122 SETTABLEKS                       R27 R26 K30 ["ReplaceState"]
      124 LOADN                            R27 2
      125 SETTABLEKS                       R27 R26 K31 ["ForceUpdate"]
      127 LOADN                            R27 3
      128 SETTABLEKS                       R27 R26 K32 ["CaptureUpdate"]
      130 LOADB                            R27 0
      131 LOADNIL                          R28
      132 LOADNIL                          R29
      133 GETIMPORT                        R30 K34 [_G]
      135 GETTABLEKS                       R30 R30 K35 ["__DEV__"]
      137 JUMPIFNOT                        R30 ; [+6]
      138 LOADB                            R28 0
      139 LOADNIL                          R29
      140 NEWCLOSURE                       R30 P2
      141 CAPTURE                          REF R29
      142 SETTABLEKS                       R30 R26 K36 ["resetCurrentlyProcessingQueue"]
      144 GETIMPORT                        R30 K39 [table.create]
      146 LOADN                            R31 210
      147 CALL                             R30 1 1
      148 LOADN                            R31 210
      149 LOADN                            R34 1
      150 LOADN                            R32 210
      151 LOADN                            R33 1
      152 FORNPREP                         R32
      153 DUPTABLE                         R35 K46 [{"eventTime", "lane", "tag", "payload", "callback", "next"}]
      154 LOADN                            R36 255
      155 SETTABLEKS                       R36 R35 K40 ["eventTime"]
      157 LOADN                            R36 255
      158 SETTABLEKS                       R36 R35 K41 ["lane"]
      160 LOADN                            R36 255
      161 SETTABLEKS                       R36 R35 K42 ["tag"]
      163 LOADNIL                          R36
      164 SETTABLEKS                       R36 R35 K43 ["payload"]
      166 LOADNIL                          R36
      167 SETTABLEKS                       R36 R35 K44 ["callback"]
      169 LOADNIL                          R36
      170 SETTABLEKS                       R36 R35 K45 ["next"]
      172 SETTABLE                         R35 R30 R34
      173 FORNLOOP                         R32
      174 DUPCLOSURE                       R32 K47 [PROTO_3]
      175 SETTABLEKS                       R32 R26 K48 ["initializeUpdateQueue"]
      177 DUPCLOSURE                       R33 K49 [PROTO_4]
      178 SETTABLEKS                       R33 R26 K50 ["cloneUpdateQueue"]
      180 NEWCLOSURE                       R34 P5
      181 CAPTURE                          REF R31
      182 CAPTURE                          VAL R30
      183 SETTABLEKS                       R34 R26 K51 ["createUpdate"]
      185 NEWCLOSURE                       R35 P6
      186 CAPTURE                          REF R29
      187 CAPTURE                          REF R28
      188 CAPTURE                          VAL R3
      189 SETTABLEKS                       R35 R26 K52 ["enqueueUpdate"]
      191 DUPCLOSURE                       R36 K53 [PROTO_7]
      192 SETTABLEKS                       R36 R26 K54 ["enqueueCapturedUpdate"]
      194 NEWCLOSURE                       R37 P8
      195 CAPTURE                          REF R10
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R20
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R25
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R2
      203 CAPTURE                          REF R27
      204 SETTABLEKS                       R37 R26 K55 ["getStateFromUpdate"]
      206 NEWCLOSURE                       R38 P9
      207 CAPTURE                          REF R27
      208 CAPTURE                          REF R29
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R6
      213 CAPTURE                          VAL R37
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R21
      216 SETTABLEKS                       R38 R26 K56 ["processUpdateQueue"]
      218 DUPCLOSURE                       R39 K57 [PROTO_10]
      219 CAPTURE                          VAL R22
      220 NEWCLOSURE                       R40 P11
      221 CAPTURE                          REF R27
      222 SETTABLEKS                       R40 R26 K58 ["resetHasForceUpdateBeforeProcessing"]
      224 NEWCLOSURE                       R40 P12
      225 CAPTURE                          REF R27
      226 SETTABLEKS                       R40 R26 K59 ["checkHasForceUpdateAfterProcessing"]
      228 NEWCLOSURE                       R40 P13
      229 CAPTURE                          VAL R22
      230 CAPTURE                          VAL R30
      231 CAPTURE                          REF R31
      232 SETTABLEKS                       R40 R26 K60 ["commitUpdateQueue"]
      234 CLOSEUPVALS                      R10
      235 RETURN                           R26 1
