PROTO_0:
        0 JUMPIF                           R0 ; [+8]
        1 DUPTABLE                         R1 K2 [{"scope", "key"}]
        2 LOADK                            R2 K3 [""]
        3 SETTABLEKS                       R2 R1 K0 ["scope"]
        5 LOADK                            R2 K3 [""]
        6 SETTABLEKS                       R2 R1 K1 ["key"]
        8 RETURN                           R1 1
        9 GETIMPORT                        R2 K6 [DateTime.now]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R1 R2 K7 ["UnixTimestamp"]
       14 SUB                              R2 R1 R0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K8 ["MINUTE_IN_SECONDS"]
       18 JUMPIFNOTLT                      R2 R3 ; [+9]
       20 DUPTABLE                         R3 K2 [{"scope", "key"}]
       21 GETUPVAL                         R4 1
       22 SETTABLEKS                       R4 R3 K0 ["scope"]
       24 LOADK                            R4 K9 ["Now"]
       25 SETTABLEKS                       R4 R3 K1 ["key"]
       27 RETURN                           R3 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K10 ["HOUR_IN_SECONDS"]
       31 JUMPIFNOTLT                      R2 R3 ; [+26]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K8 ["MINUTE_IN_SECONDS"]
       36 DIV                              R5 R2 R6
       37 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       38 GETIMPORT                        R4 K13 [math.floor]
       40 CALL                             R4 1 1
       41 FASTCALL1                        TOSTRING R4 ; [+2]
       42 GETIMPORT                        R3 K15 [tostring]
       44 CALL                             R3 1 1
       45 DUPTABLE                         R4 K18 [{"scope", "key", "paramName", "paramValue"}]
       46 GETUPVAL                         R5 2
       47 SETTABLEKS                       R5 R4 K0 ["scope"]
       49 LOADK                            R5 K19 ["Minutes"]
       50 SETTABLEKS                       R5 R4 K1 ["key"]
       52 LOADK                            R5 K20 ["minutes"]
       53 SETTABLEKS                       R5 R4 K16 ["paramName"]
       55 SETTABLEKS                       R3 R4 K17 ["paramValue"]
       57 RETURN                           R4 1
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K21 ["DAY_IN_SECONDS"]
       61 JUMPIFNOTLT                      R2 R3 ; [+26]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R6 R7 K10 ["HOUR_IN_SECONDS"]
       66 DIV                              R5 R2 R6
       67 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       68 GETIMPORT                        R4 K13 [math.floor]
       70 CALL                             R4 1 1
       71 FASTCALL1                        TOSTRING R4 ; [+2]
       72 GETIMPORT                        R3 K15 [tostring]
       74 CALL                             R3 1 1
       75 DUPTABLE                         R4 K18 [{"scope", "key", "paramName", "paramValue"}]
       76 GETUPVAL                         R5 2
       77 SETTABLEKS                       R5 R4 K0 ["scope"]
       79 LOADK                            R5 K22 ["Hours"]
       80 SETTABLEKS                       R5 R4 K1 ["key"]
       82 LOADK                            R5 K23 ["hours"]
       83 SETTABLEKS                       R5 R4 K16 ["paramName"]
       85 SETTABLEKS                       R3 R4 K17 ["paramValue"]
       87 RETURN                           R4 1
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R3 R4 K24 ["WEEK_IN_SECONDS"]
       91 JUMPIFNOTLT                      R2 R3 ; [+26]
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R6 R7 K21 ["DAY_IN_SECONDS"]
       96 DIV                              R5 R2 R6
       97 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       98 GETIMPORT                        R4 K13 [math.floor]
      100 CALL                             R4 1 1
      101 FASTCALL1                        TOSTRING R4 ; [+2]
      102 GETIMPORT                        R3 K15 [tostring]
      104 CALL                             R3 1 1
      105 DUPTABLE                         R4 K18 [{"scope", "key", "paramName", "paramValue"}]
      106 GETUPVAL                         R5 2
      107 SETTABLEKS                       R5 R4 K0 ["scope"]
      109 LOADK                            R5 K25 ["Days"]
      110 SETTABLEKS                       R5 R4 K1 ["key"]
      112 LOADK                            R5 K26 ["days"]
      113 SETTABLEKS                       R5 R4 K16 ["paramName"]
      115 SETTABLEKS                       R3 R4 K17 ["paramValue"]
      117 RETURN                           R4 1
      118 GETUPVAL                         R4 0
      119 GETTABLEKS                       R3 R4 K27 ["MONTH_IN_SECONDS"]
      121 JUMPIFNOTLT                      R2 R3 ; [+26]
      123 GETUPVAL                         R7 0
      124 GETTABLEKS                       R6 R7 K24 ["WEEK_IN_SECONDS"]
      126 DIV                              R5 R2 R6
      127 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      128 GETIMPORT                        R4 K13 [math.floor]
      130 CALL                             R4 1 1
      131 FASTCALL1                        TOSTRING R4 ; [+2]
      132 GETIMPORT                        R3 K15 [tostring]
      134 CALL                             R3 1 1
      135 DUPTABLE                         R4 K18 [{"scope", "key", "paramName", "paramValue"}]
      136 GETUPVAL                         R5 2
      137 SETTABLEKS                       R5 R4 K0 ["scope"]
      139 LOADK                            R5 K28 ["Weeks"]
      140 SETTABLEKS                       R5 R4 K1 ["key"]
      142 LOADK                            R5 K29 ["weeks"]
      143 SETTABLEKS                       R5 R4 K16 ["paramName"]
      145 SETTABLEKS                       R3 R4 K17 ["paramValue"]
      147 RETURN                           R4 1
      148 GETUPVAL                         R4 0
      149 GETTABLEKS                       R3 R4 K30 ["YEAR_IN_SECONDS"]
      151 JUMPIFNOTLT                      R2 R3 ; [+26]
      153 GETUPVAL                         R7 0
      154 GETTABLEKS                       R6 R7 K27 ["MONTH_IN_SECONDS"]
      156 DIV                              R5 R2 R6
      157 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      158 GETIMPORT                        R4 K13 [math.floor]
      160 CALL                             R4 1 1
      161 FASTCALL1                        TOSTRING R4 ; [+2]
      162 GETIMPORT                        R3 K15 [tostring]
      164 CALL                             R3 1 1
      165 DUPTABLE                         R4 K18 [{"scope", "key", "paramName", "paramValue"}]
      166 GETUPVAL                         R5 2
      167 SETTABLEKS                       R5 R4 K0 ["scope"]
      169 LOADK                            R5 K31 ["Months"]
      170 SETTABLEKS                       R5 R4 K1 ["key"]
      172 LOADK                            R5 K32 ["months"]
      173 SETTABLEKS                       R5 R4 K16 ["paramName"]
      175 SETTABLEKS                       R3 R4 K17 ["paramValue"]
      177 RETURN                           R4 1
      178 GETUPVAL                         R7 0
      179 GETTABLEKS                       R6 R7 K30 ["YEAR_IN_SECONDS"]
      181 DIV                              R5 R2 R6
      182 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      183 GETIMPORT                        R4 K13 [math.floor]
      185 CALL                             R4 1 1
      186 FASTCALL1                        TOSTRING R4 ; [+2]
      187 GETIMPORT                        R3 K15 [tostring]
      189 CALL                             R3 1 1
      190 DUPTABLE                         R4 K18 [{"scope", "key", "paramName", "paramValue"}]
      191 GETUPVAL                         R5 2
      192 SETTABLEKS                       R5 R4 K0 ["scope"]
      194 LOADK                            R5 K33 ["Years"]
      195 SETTABLEKS                       R5 R4 K1 ["key"]
      197 LOADK                            R5 K34 ["years"]
      198 SETTABLEKS                       R5 R4 K16 ["paramName"]
      200 SETTABLEKS                       R3 R4 K17 ["paramValue"]
      202 RETURN                           R4 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R2 K2 [DateTime.now]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R1 R2 K3 ["UnixTimestamp"]
        8 SUB                              R2 R1 R0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K4 ["HOUR_IN_SECONDS"]
       12 JUMPIFNOTLT                      R2 R3 ; [+3]
       14 GETUPVAL                         R3 1
       15 RETURN                           R3 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K5 ["DAY_IN_SECONDS"]
       19 JUMPIFNOTLT                      R2 R3 ; [+3]
       21 GETUPVAL                         R3 2
       22 RETURN                           R3 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TimeConstants"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["LOCALE_SCOPE_LONG"]
       12 GETTABLEKS                       R2 R0 K7 ["LOCALE_SCOPE"]
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 GETTABLEKS                       R5 R0 K9 ["MINUTE_IN_SECONDS"]
       20 GETTABLEKS                       R6 R0 K10 ["SECONDS_IN_MS"]
       22 MUL                              R4 R5 R6
       23 GETTABLEKS                       R6 R0 K11 ["HOUR_IN_SECONDS"]
       25 GETTABLEKS                       R7 R0 K10 ["SECONDS_IN_MS"]
       27 MUL                              R5 R6 R7
       28 DUPCLOSURE                       R6 K12 [PROTO_1]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 DUPTABLE                         R7 K15 [{"calculateRelativeTime", "getRefreshIntervalInMS"}]
       33 SETTABLEKS                       R3 R7 K13 ["calculateRelativeTime"]
       35 SETTABLEKS                       R6 R7 K14 ["getRefreshIntervalInMS"]
       37 RETURN                           R7 1
