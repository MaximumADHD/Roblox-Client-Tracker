PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Navigate"]
        6 JUMPIFEQ                         R2 R3 ; [+10]
        8 GETTABLEKS                       R2 R0 K0 ["type"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["Push"]
       13 JUMPIFEQ                         R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Reset"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["key"]
       10 GETUPVAL                         R3 1
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+18]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 JUMPIFEQ                         R1 R2 ; [+14]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["getStateForAction"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["init"]
       15 DUPTABLE                         R3 K3 [{"params"}]
       16 GETUPVAL                         R4 3
       17 SETTABLEKS                       R4 R3 K2 ["params"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 1
       21 MOVE                             R0 R1
       22 GETUPVAL                         R2 4
       23 GETUPVAL                         R3 5
       24 GETTABLE                         R1 R2 R3
       25 FASTCALL1                        TYPE R1 ; [+3]
       26 MOVE                             R4 R1
       27 GETIMPORT                        R3 K5 [type]
       29 CALL                             R3 1 1
       30 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+4]
       32 GETTABLEKS                       R2 R1 K2 ["params"]
       34 JUMPIF                           R2 ; [+2]
       35 NEWTABLE                         R2 0 0
       37 GETUPVAL                         R3 6
       38 GETTABLEKS                       R3 R3 K7 ["Dictionary"]
       40 GETTABLEKS                       R3 R3 K8 ["join"]
       42 MOVE                             R4 R2
       43 GETTABLEKS                       R5 R0 K2 ["params"]
       45 JUMPIF                           R5 ; [+2]
       46 NEWTABLE                         R5 0 0
       48 GETUPVAL                         R6 3
       49 JUMPIF                           R6 ; [+2]
       50 NEWTABLE                         R6 0 0
       52 CALL                             R3 3 1
       53 GETUPVAL                         R4 7
       54 GETTABLEKS                       R4 R4 K9 ["initialRouteKey"]
       56 GETUPVAL                         R5 6
       57 GETTABLEKS                       R5 R5 K7 ["Dictionary"]
       59 GETTABLEKS                       R5 R5 K8 ["join"]
       61 MOVE                             R6 R0
       62 MOVE                             R7 R3
       63 DUPTABLE                         R8 K12 [{"routeName", "key"}]
       64 GETUPVAL                         R9 5
       65 SETTABLEKS                       R9 R8 K10 ["routeName"]
       67 MOVE                             R9 R4
       68 JUMPIF                           R9 ; [+4]
       69 GETUPVAL                         R9 8
       70 GETTABLEKS                       R9 R9 K13 ["generateKey"]
       72 CALL                             R9 0 1
       73 SETTABLEKS                       R9 R8 K11 ["key"]
       75 CALL                             R5 3 1
       76 MOVE                             R0 R5
       77 DUPTABLE                         R5 K20 [{["key"] = "StackRouterRoot", ["isTransitioning"] = False, ["index"] = 1, ["routes"]}]
       78 NEWTABLE                         R6 0 1
       80 MOVE                             R7 R0
       81 SETLIST                          R6 R7 1 [1]
       83 SETTABLEKS                       R6 R5 K19 ["routes"]
       85 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+15]
        9 GETTABLEKS                       R3 R2 K3 ["params"]
       11 JUMPIFNOT                        R3 ; [+11]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["Dictionary"]
       15 GETTABLEKS                       R3 R3 K5 ["join"]
       17 GETTABLEKS                       R4 R2 K3 ["params"]
       19 GETTABLEKS                       R5 R1 K3 ["params"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1
       23 GETTABLEKS                       R3 R1 K3 ["params"]
       25 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["routes"]
        2 GETTABLEKS                       R3 R0 K1 ["index"]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R1 K2 ["routeName"]
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R2
       12 LOADK                            R5 K3 ["There is no route defined for index '%d'. Make sure that you passed in a navigation state with a valid stack index."]
       13 GETTABLEKS                       R6 R0 K1 ["index"]
       15 CALL                             R3 3 0
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R4 R2
       18 JUMPIFEQKNIL                     R3 ; [+11]
       20 GETUPVAL                         R4 2
       21 JUMPIFEQ                         R3 R4 ; [+8]
       23 GETUPVAL                         R5 1
       24 GETTABLE                         R4 R5 R2
       25 GETTABLEKS                       R4 R4 K4 ["getComponentForState"]
       27 MOVE                             R5 R1
       28 CALL                             R4 1 -1
       29 RETURN                           R4 -1
       30 GETUPVAL                         R4 3
       31 GETUPVAL                         R5 4
       32 MOVE                             R6 R2
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pop"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        6 GETTABLEKS                       R3 R3 K2 ["join"]
        8 DUPTABLE                         R4 K4 [{"n"}]
        9 SETTABLEKS                       R0 R4 K3 ["n"]
       11 MOVE                             R5 R1
       12 JUMPIF                           R5 ; [+2]
       13 NEWTABLE                         R5 0 0
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 -1
       17 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["popToTop"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["push"]
        3 DUPTABLE                         R4 K4 [{"routeName", "params", "action"}]
        4 SETTABLEKS                       R0 R4 K1 ["routeName"]
        6 SETTABLEKS                       R1 R4 K2 ["params"]
        8 SETTABLEKS                       R2 R4 K3 ["action"]
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_10:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+20]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["replace"]
       10 DUPTABLE                         R5 K9 [{"routeName", "params", "action", "key", "newKey"}]
       11 SETTABLEKS                       R0 R5 K4 ["routeName"]
       13 SETTABLEKS                       R1 R5 K5 ["params"]
       15 SETTABLEKS                       R2 R5 K6 ["action"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K7 ["key"]
       20 SETTABLEKS                       R6 R5 K7 ["key"]
       22 SETTABLEKS                       R3 R5 K8 ["newKey"]
       24 CALL                             R4 1 -1
       25 RETURN                           R4 -1
       26 GETUPVAL                         R4 2
       27 FASTCALL1                        TYPE R0 ; [+3]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K1 [type]
       31 CALL                             R6 1 1
       32 JUMPIFEQKS                       R6 K10 ["table"] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 LOADK                            R6 K11 ["replaceWith must be a table or string"]
       37 CALL                             R4 2 0
       38 GETUPVAL                         R4 2
       39 JUMPIFEQKNIL                     R1 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 LOADK                            R6 K12 ["params cannot be provided to .replace() when specifying a table"]
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 2
       46 JUMPIFEQKNIL                     R2 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 LOADK                            R6 K13 ["Child action cannot be provided to .replace() when specifying a table"]
       51 CALL                             R4 2 0
       52 GETUPVAL                         R4 2
       53 JUMPIFEQKNIL                     R3 ; [+2]
       55 LOADB                            R5 0 +1
       56 LOADB                            R5 1
       57 LOADK                            R6 K14 ["newKey cannot be provided to .replace() when specifying a table"]
       58 CALL                             R4 2 0
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K3 ["replace"]
       62 MOVE                             R5 R0
       63 CALL                             R4 1 -1
       64 RETURN                           R4 -1

PROTO_11:
        0 MOVE                             R2 R1
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 LENGTH                           R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["reset"]
        7 DUPTABLE                         R4 K4 [{"actions", "index", "key"}]
        8 SETTABLEKS                       R0 R4 K1 ["actions"]
       10 SETTABLEKS                       R2 R4 K2 ["index"]
       12 GETUPVAL                         R5 1
       13 SETTABLEKS                       R5 R4 K3 ["key"]
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["back"]
        3 DUPTABLE                         R1 K2 [{"key"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["key"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 DUPTABLE                         R4 K8 [{"pop", "popToTop", "push", "replace", "reset", "dismiss"}]
       10 DUPCLOSURE                       R5 K9 [PROTO_7]
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R5 R4 K2 ["pop"]
       15 DUPCLOSURE                       R5 K10 [PROTO_8]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R5 R4 K3 ["popToTop"]
       19 DUPCLOSURE                       R5 K11 [PROTO_9]
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R5 R4 K4 ["push"]
       23 NEWCLOSURE                       R5 P3
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 SETTABLEKS                       R5 R4 K5 ["replace"]
       29 NEWCLOSURE                       R5 P4
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R5 R4 K6 ["reset"]
       34 NEWCLOSURE                       R5 P5
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R4 K7 ["dismiss"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1

PROTO_14:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 MOVE                             R1 R2
        5 GETTABLEKS                       R3 R1 K0 ["routes"]
        7 GETTABLEKS                       R4 R1 K1 ["index"]
        9 GETTABLE                         R2 R3 R4
       10 LOADB                            R3 0
       11 GETTABLEKS                       R4 R0 K2 ["type"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["Reset"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+8]
       18 GETTABLEKS                       R4 R0 K4 ["key"]
       20 GETUPVAL                         R5 2
       21 JUMPIFEQ                         R4 R5 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 JUMPIF                           R3 ; [+44]
       26 GETTABLEKS                       R3 R0 K2 ["type"]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K5 ["Navigate"]
       31 JUMPIFEQ                         R3 R4 ; [+38]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R5 R2 K6 ["routeName"]
       36 GETTABLE                         R3 R4 R5
       37 JUMPIFEQKNIL                     R3 ; [+119]
       39 GETUPVAL                         R4 5
       40 JUMPIFEQ                         R3 R4 ; [+116]
       42 GETTABLEKS                       R4 R3 K7 ["getStateForAction"]
       44 MOVE                             R5 R0
       45 MOVE                             R6 R2
       46 CALL                             R4 2 1
       47 JUMPIFEQKNIL                     R4 ; [+109]
       49 JUMPIFEQ                         R4 R2 ; [+107]
       51 GETUPVAL                         R5 6
       52 GETTABLEKS                       R5 R5 K8 ["replaceAt"]
       54 MOVE                             R6 R1
       55 GETTABLEKS                       R7 R2 K4 ["key"]
       57 MOVE                             R8 R4
       58 GETTABLEKS                       R10 R0 K2 ["type"]
       60 GETUPVAL                         R11 3
       61 GETTABLEKS                       R11 R11 K9 ["SetParams"]
       63 JUMPIFEQ                         R10 R11 ; [+2]
       65 LOADB                            R9 0 +1
       66 LOADB                            R9 1
       67 CALL                             R5 4 -1
       68 RETURN                           R5 -1
       69 JUMP                             ; [+87]
       70 GETTABLEKS                       R3 R0 K2 ["type"]
       72 GETUPVAL                         R4 3
       73 GETTABLEKS                       R4 R4 K5 ["Navigate"]
       75 JUMPIFNOTEQ                      R3 R4 ; [+81]
       77 GETTABLEKS                       R6 R1 K0 ["routes"]
       79 LENGTH                           R5 R6
       80 LOADN                            R3 1
       81 LOADN                            R4 -1
       82 FORNPREP                         R3
       83 GETTABLEKS                       R7 R1 K0 ["routes"]
       85 GETTABLE                         R6 R7 R5
       86 GETUPVAL                         R8 4
       87 GETTABLEKS                       R9 R6 K6 ["routeName"]
       89 GETTABLE                         R7 R8 R9
       90 MOVE                             R8 R0
       91 GETTABLEKS                       R9 R0 K6 ["routeName"]
       93 GETTABLEKS                       R10 R6 K6 ["routeName"]
       95 JUMPIFNOTEQ                      R9 R10 ; [+6]
       97 GETTABLEKS                       R9 R0 K10 ["action"]
       99 JUMPIFNOT                        R9 ; [+2]
      100 GETTABLEKS                       R8 R0 K10 ["action"]
      102 JUMPIFEQKNIL                     R7 ; [+53]
      104 GETUPVAL                         R9 5
      105 JUMPIFEQ                         R7 R9 ; [+50]
      107 GETTABLEKS                       R9 R7 K7 ["getStateForAction"]
      109 MOVE                             R10 R8
      110 MOVE                             R11 R6
      111 CALL                             R9 2 1
      112 JUMPIFEQKNIL                     R9 ; [+3]
      114 JUMPIFEQ                         R9 R6 ; [+41]
      116 GETUPVAL                         R10 6
      117 GETTABLEKS                       R10 R10 K11 ["replaceAndPrune"]
      119 MOVE                             R11 R1
      120 JUMPIFNOT                        R9 ; [+3]
      121 GETTABLEKS                       R12 R9 K4 ["key"]
      123 JUMPIF                           R12 ; [+2]
      124 GETTABLEKS                       R12 R6 K4 ["key"]
      126 JUMPIFNOT                        R9 ; [+2]
      127 MOVE                             R13 R9
      128 JUMPIF                           R13 ; [+1]
      129 MOVE                             R13 R6
      130 CALL                             R10 3 1
      131 GETTABLEKS                       R11 R1 K12 ["isTransitioning"]
      133 GETTABLEKS                       R12 R1 K1 ["index"]
      135 GETTABLEKS                       R13 R10 K1 ["index"]
      137 JUMPIFEQ                         R12 R13 ; [+7]
      139 GETTABLEKS                       R12 R0 K13 ["immediate"]
      141 JUMPIFNOTEQKB                    R12 TRUE ; [+2]
      143 LOADB                            R11 0 +1
      144 LOADB                            R11 1
      145 GETUPVAL                         R12 7
      146 GETTABLEKS                       R12 R12 K14 ["Dictionary"]
      148 GETTABLEKS                       R12 R12 K15 ["join"]
      150 MOVE                             R13 R10
      151 DUPTABLE                         R14 K16 [{"isTransitioning"}]
      152 SETTABLEKS                       R11 R14 K12 ["isTransitioning"]
      154 CALL                             R12 2 -1
      155 RETURN                           R12 -1
      156 FORNLOOP                         R3
      157 LOADB                            R3 1
      158 GETTABLEKS                       R4 R0 K2 ["type"]
      160 GETUPVAL                         R5 3
      161 GETTABLEKS                       R5 R5 K5 ["Navigate"]
      163 JUMPIFEQ                         R4 R5 ; [+10]
      165 GETTABLEKS                       R4 R0 K2 ["type"]
      167 GETUPVAL                         R5 1
      168 GETTABLEKS                       R5 R5 K17 ["Push"]
      170 JUMPIFEQ                         R4 R5 ; [+2]
      172 LOADB                            R3 0 +1
      173 LOADB                            R3 1
      174 JUMPIFNOT                        R3 ; [+306]
      175 GETUPVAL                         R4 4
      176 GETTABLEKS                       R5 R0 K6 ["routeName"]
      178 GETTABLE                         R3 R4 R5
      179 JUMPIFEQKNIL                     R3 ; [+301]
      181 GETUPVAL                         R4 4
      182 GETTABLEKS                       R5 R0 K6 ["routeName"]
      184 GETTABLE                         R3 R4 R5
      185 GETUPVAL                         R4 8
      186 LOADB                            R5 1
      187 GETTABLEKS                       R6 R0 K2 ["type"]
      189 GETUPVAL                         R7 1
      190 GETTABLEKS                       R7 R7 K17 ["Push"]
      192 JUMPIFNOTEQ                      R6 R7 ; [+7]
      194 GETTABLEKS                       R6 R0 K4 ["key"]
      196 JUMPIFEQKNIL                     R6 ; [+2]
      198 LOADB                            R5 0 +1
      199 LOADB                            R5 1
      200 LOADK                            R6 K18 ["StackRouter does not support key on the push action"]
      201 CALL                             R4 2 0
      202 LOADNIL                          R4
      203 GETIMPORT                        R5 K20 [ipairs]
      205 GETTABLEKS                       R6 R1 K0 ["routes"]
      207 CALL                             R5 1 3
      208 FORGPREP_INEXT                   R5
      209 GETTABLEKS                       R10 R0 K4 ["key"]
      211 JUMPIFNOT                        R10 ; [+6]
      212 GETTABLEKS                       R10 R9 K4 ["key"]
      214 GETTABLEKS                       R11 R0 K4 ["key"]
      216 JUMPIFEQ                         R10 R11 ; [+7]
      218 GETTABLEKS                       R10 R9 K6 ["routeName"]
      220 GETTABLEKS                       R11 R0 K6 ["routeName"]
      222 JUMPIFNOTEQ                      R10 R11 ; [+3]
      224 MOVE                             R4 R8
      225 JUMP                             ; [+2]
      226 FORGLOOP                         R5 2 [inext] ; [-18]
      228 GETTABLEKS                       R5 R0 K2 ["type"]
      230 GETUPVAL                         R6 1
      231 GETTABLEKS                       R6 R6 K17 ["Push"]
      233 JUMPIFEQ                         R5 R6 ; [+81]
      235 JUMPIFEQKNIL                     R4 ; [+79]
      237 GETTABLEKS                       R5 R1 K1 ["index"]
      239 JUMPIFNOTEQ                      R5 R4 ; [+6]
      241 GETTABLEKS                       R5 R0 K21 ["params"]
      243 JUMPIF                           R5 ; [+2]
      244 LOADNIL                          R5
      245 RETURN                           R5 1
      246 GETUPVAL                         R5 7
      247 GETTABLEKS                       R5 R5 K22 ["List"]
      249 GETTABLEKS                       R5 R5 K23 ["removeRange"]
      251 GETTABLEKS                       R6 R1 K0 ["routes"]
      253 ADDK                             R7 R4 K24 [1]
      254 GETTABLEKS                       R9 R1 K0 ["routes"]
      256 LENGTH                           R8 R9
      257 CALL                             R5 3 1
      258 GETTABLEKS                       R6 R0 K21 ["params"]
      260 JUMPIFNOT                        R6 ; [+27]
      261 GETTABLEKS                       R7 R1 K0 ["routes"]
      263 GETTABLE                         R6 R7 R4
      264 GETUPVAL                         R7 7
      265 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
      267 GETTABLEKS                       R7 R7 K15 ["join"]
      269 MOVE                             R8 R6
      270 DUPTABLE                         R9 K25 [{"params"}]
      271 GETUPVAL                         R10 7
      272 GETTABLEKS                       R10 R10 K14 ["Dictionary"]
      274 GETTABLEKS                       R10 R10 K15 ["join"]
      276 GETTABLEKS                       R11 R6 K21 ["params"]
      278 JUMPIF                           R11 ; [+2]
      279 NEWTABLE                         R11 0 0
      281 GETTABLEKS                       R12 R0 K21 ["params"]
      283 CALL                             R10 2 1
      284 SETTABLEKS                       R10 R9 K21 ["params"]
      286 CALL                             R7 2 1
      287 SETTABLE                         R7 R5 R4
      288 GETTABLEKS                       R6 R1 K12 ["isTransitioning"]
      290 GETTABLEKS                       R7 R1 K1 ["index"]
      292 JUMPIFEQ                         R7 R4 ; [+7]
      294 GETTABLEKS                       R7 R0 K13 ["immediate"]
      296 JUMPIFNOTEQKB                    R7 TRUE ; [+2]
      298 LOADB                            R6 0 +1
      299 LOADB                            R6 1
      300 GETUPVAL                         R7 7
      301 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
      303 GETTABLEKS                       R7 R7 K15 ["join"]
      305 MOVE                             R8 R1
      306 DUPTABLE                         R9 K26 [{"isTransitioning", "index", "routes"}]
      307 SETTABLEKS                       R6 R9 K12 ["isTransitioning"]
      309 SETTABLEKS                       R4 R9 K1 ["index"]
      311 SETTABLEKS                       R5 R9 K0 ["routes"]
      313 CALL                             R7 2 -1
      314 RETURN                           R7 -1
      315 LOADNIL                          R5
      316 GETUPVAL                         R6 5
      317 JUMPIFEQ                         R3 R6 ; [+96]
      319 GETTABLEKS                       R6 R0 K10 ["action"]
      321 JUMPIF                           R6 ; [+35]
      322 GETUPVAL                         R6 3
      323 GETTABLEKS                       R6 R6 K27 ["init"]
      325 DUPTABLE                         R7 K25 [{"params"}]
      326 GETTABLEKS                       R9 R0 K6 ["routeName"]
      328 GETUPVAL                         R11 9
      329 GETTABLE                         R10 R11 R9
      330 FASTCALL1                        TYPE R10 ; [+3]
      331 MOVE                             R12 R10
      332 GETIMPORT                        R11 K28 [type]
      334 CALL                             R11 1 1
      335 JUMPIFNOTEQKS                    R11 K29 ["table"] ; [+16]
      337 GETTABLEKS                       R11 R10 K21 ["params"]
      339 JUMPIFNOT                        R11 ; [+12]
      340 GETUPVAL                         R11 7
      341 GETTABLEKS                       R11 R11 K14 ["Dictionary"]
      343 GETTABLEKS                       R11 R11 K15 ["join"]
      345 GETTABLEKS                       R12 R10 K21 ["params"]
      347 GETTABLEKS                       R13 R0 K21 ["params"]
      349 CALL                             R11 2 1
      350 MOVE                             R8 R11
      351 JUMP                             ; [+2]
      352 GETTABLEKS                       R8 R0 K21 ["params"]
      354 SETTABLEKS                       R8 R7 K21 ["params"]
      356 CALL                             R6 1 1
      357 GETUPVAL                         R7 7
      358 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
      360 GETTABLEKS                       R7 R7 K15 ["join"]
      362 DUPTABLE                         R8 K25 [{"params"}]
      363 GETTABLEKS                       R10 R0 K6 ["routeName"]
      365 GETUPVAL                         R12 9
      366 GETTABLE                         R11 R12 R10
      367 FASTCALL1                        TYPE R11 ; [+3]
      368 MOVE                             R13 R11
      369 GETIMPORT                        R12 K28 [type]
      371 CALL                             R12 1 1
      372 JUMPIFNOTEQKS                    R12 K29 ["table"] ; [+16]
      374 GETTABLEKS                       R12 R11 K21 ["params"]
      376 JUMPIFNOT                        R12 ; [+12]
      377 GETUPVAL                         R12 7
      378 GETTABLEKS                       R12 R12 K14 ["Dictionary"]
      380 GETTABLEKS                       R12 R12 K15 ["join"]
      382 GETTABLEKS                       R13 R11 K21 ["params"]
      384 GETTABLEKS                       R14 R0 K21 ["params"]
      386 CALL                             R12 2 1
      387 MOVE                             R9 R12
      388 JUMP                             ; [+2]
      389 GETTABLEKS                       R9 R0 K21 ["params"]
      391 SETTABLEKS                       R9 R8 K21 ["params"]
      393 GETTABLEKS                       R9 R3 K7 ["getStateForAction"]
      395 MOVE                             R10 R6
      396 CALL                             R9 1 1
      397 DUPTABLE                         R10 K30 [{"routeName", "key"}]
      398 GETTABLEKS                       R11 R0 K6 ["routeName"]
      400 SETTABLEKS                       R11 R10 K6 ["routeName"]
      402 GETTABLEKS                       R11 R0 K4 ["key"]
      404 JUMPIF                           R11 ; [+4]
      405 GETUPVAL                         R11 10
      406 GETTABLEKS                       R11 R11 K31 ["generateKey"]
      408 CALL                             R11 0 1
      409 SETTABLEKS                       R11 R10 K4 ["key"]
      411 CALL                             R7 3 1
      412 MOVE                             R5 R7
      413 JUMP                             ; [+45]
      414 DUPTABLE                         R6 K32 [{"params", "routeName", "key"}]
      415 GETTABLEKS                       R8 R0 K6 ["routeName"]
      417 GETUPVAL                         R10 9
      418 GETTABLE                         R9 R10 R8
      419 FASTCALL1                        TYPE R9 ; [+3]
      420 MOVE                             R11 R9
      421 GETIMPORT                        R10 K28 [type]
      423 CALL                             R10 1 1
      424 JUMPIFNOTEQKS                    R10 K29 ["table"] ; [+16]
      426 GETTABLEKS                       R10 R9 K21 ["params"]
      428 JUMPIFNOT                        R10 ; [+12]
      429 GETUPVAL                         R10 7
      430 GETTABLEKS                       R10 R10 K14 ["Dictionary"]
      432 GETTABLEKS                       R10 R10 K15 ["join"]
      434 GETTABLEKS                       R11 R9 K21 ["params"]
      436 GETTABLEKS                       R12 R0 K21 ["params"]
      438 CALL                             R10 2 1
      439 MOVE                             R7 R10
      440 JUMP                             ; [+2]
      441 GETTABLEKS                       R7 R0 K21 ["params"]
      443 SETTABLEKS                       R7 R6 K21 ["params"]
      445 GETTABLEKS                       R7 R0 K6 ["routeName"]
      447 SETTABLEKS                       R7 R6 K6 ["routeName"]
      449 GETTABLEKS                       R7 R0 K4 ["key"]
      451 JUMPIF                           R7 ; [+4]
      452 GETUPVAL                         R7 10
      453 GETTABLEKS                       R7 R7 K31 ["generateKey"]
      455 CALL                             R7 0 1
      456 SETTABLEKS                       R7 R6 K4 ["key"]
      458 MOVE                             R5 R6
      459 GETUPVAL                         R6 7
      460 GETTABLEKS                       R6 R6 K14 ["Dictionary"]
      462 GETTABLEKS                       R6 R6 K15 ["join"]
      464 GETUPVAL                         R7 6
      465 GETTABLEKS                       R7 R7 K33 ["push"]
      467 MOVE                             R8 R1
      468 MOVE                             R9 R5
      469 CALL                             R7 2 1
      470 DUPTABLE                         R8 K16 [{"isTransitioning"}]
      471 GETTABLEKS                       R10 R0 K13 ["immediate"]
      473 JUMPIFNOTEQKB                    R10 TRUE ; [+2]
      475 LOADB                            R9 0 +1
      476 LOADB                            R9 1
      477 SETTABLEKS                       R9 R8 K12 ["isTransitioning"]
      479 CALL                             R6 2 -1
      480 RETURN                           R6 -1
      481 GETTABLEKS                       R3 R0 K2 ["type"]
      483 GETUPVAL                         R4 1
      484 GETTABLEKS                       R4 R4 K17 ["Push"]
      486 JUMPIFNOTEQ                      R3 R4 ; [+8]
      488 GETUPVAL                         R4 4
      489 GETTABLEKS                       R5 R0 K6 ["routeName"]
      491 GETTABLE                         R3 R4 R5
      492 JUMPIFNOTEQKNIL                  R3 ; [+2]
      494 RETURN                           R1 1
      495 LOADB                            R3 1
      496 GETTABLEKS                       R4 R0 K2 ["type"]
      498 GETUPVAL                         R5 3
      499 GETTABLEKS                       R5 R5 K5 ["Navigate"]
      501 JUMPIFEQ                         R4 R5 ; [+10]
      503 GETTABLEKS                       R4 R0 K2 ["type"]
      505 GETUPVAL                         R5 1
      506 GETTABLEKS                       R5 R5 K17 ["Push"]
      508 JUMPIFEQ                         R4 R5 ; [+2]
      510 LOADB                            R3 0 +1
      511 LOADB                            R3 1
      512 JUMPIFNOT                        R3 ; [+83]
      513 GETUPVAL                         R3 7
      514 GETTABLEKS                       R3 R3 K14 ["Dictionary"]
      516 GETTABLEKS                       R3 R3 K34 ["keys"]
      518 GETUPVAL                         R4 4
      519 CALL                             R3 1 1
      520 GETIMPORT                        R4 K20 [ipairs]
      522 MOVE                             R5 R3
      523 CALL                             R4 1 3
      524 FORGPREP_INEXT                   R4
      525 GETUPVAL                         R10 4
      526 GETTABLE                         R9 R10 R8
      527 JUMPIFEQKNIL                     R9 ; [+66]
      529 GETUPVAL                         R10 5
      530 JUMPIFEQ                         R9 R10 ; [+63]
      532 GETTABLEKS                       R10 R9 K7 ["getStateForAction"]
      534 GETUPVAL                         R11 3
      535 GETTABLEKS                       R11 R11 K27 ["init"]
      537 CALL                             R11 0 -1
      538 CALL                             R10 -1 1
      539 GETTABLEKS                       R11 R9 K7 ["getStateForAction"]
      541 MOVE                             R12 R0
      542 MOVE                             R13 R10
      543 CALL                             R11 2 1
      544 LOADNIL                          R12
      545 JUMPIFNOTEQKNIL                  R11 ; [+3]
      547 MOVE                             R12 R10
      548 JUMP                             ; [+3]
      549 JUMPIFEQ                         R11 R10 ; [+2]
      551 MOVE                             R12 R11
      552 JUMPIFNOT                        R12 ; [+41]
      553 GETUPVAL                         R13 7
      554 GETTABLEKS                       R13 R13 K14 ["Dictionary"]
      556 GETTABLEKS                       R13 R13 K15 ["join"]
      558 MOVE                             R14 R12
      559 DUPTABLE                         R15 K30 [{"routeName", "key"}]
      560 SETTABLEKS                       R8 R15 K6 ["routeName"]
      562 GETTABLEKS                       R16 R0 K4 ["key"]
      564 JUMPIF                           R16 ; [+4]
      565 GETUPVAL                         R16 10
      566 GETTABLEKS                       R16 R16 K31 ["generateKey"]
      568 CALL                             R16 0 1
      569 SETTABLEKS                       R16 R15 K4 ["key"]
      571 CALL                             R13 2 1
      572 GETUPVAL                         R14 7
      573 GETTABLEKS                       R14 R14 K14 ["Dictionary"]
      575 GETTABLEKS                       R14 R14 K15 ["join"]
      577 GETUPVAL                         R15 6
      578 GETTABLEKS                       R15 R15 K33 ["push"]
      580 MOVE                             R16 R1
      581 MOVE                             R17 R13
      582 CALL                             R15 2 1
      583 DUPTABLE                         R16 K16 [{"isTransitioning"}]
      584 GETTABLEKS                       R18 R0 K13 ["immediate"]
      586 JUMPIFNOTEQKB                    R18 TRUE ; [+2]
      588 LOADB                            R17 0 +1
      589 LOADB                            R17 1
      590 SETTABLEKS                       R17 R16 K12 ["isTransitioning"]
      592 CALL                             R14 2 -1
      593 RETURN                           R14 -1
      594 FORGLOOP                         R4 2 [inext] ; [-70]
      596 GETTABLEKS                       R3 R0 K2 ["type"]
      598 GETUPVAL                         R4 1
      599 GETTABLEKS                       R4 R4 K35 ["PopToTop"]
      601 JUMPIFNOTEQ                      R3 R4 ; [+43]
      603 GETTABLEKS                       R3 R0 K4 ["key"]
      605 JUMPIFNOT                        R3 ; [+7]
      606 GETTABLEKS                       R3 R1 K4 ["key"]
      608 GETTABLEKS                       R4 R0 K4 ["key"]
      610 JUMPIFEQ                         R3 R4 ; [+2]
      612 RETURN                           R1 1
      613 GETTABLEKS                       R3 R1 K1 ["index"]
      615 LOADN                            R4 1
      616 JUMPIFNOTLE                      R3 R4 ; [+2]
      618 RETURN                           R1 1
      619 GETUPVAL                         R3 7
      620 GETTABLEKS                       R3 R3 K14 ["Dictionary"]
      622 GETTABLEKS                       R3 R3 K15 ["join"]
      624 MOVE                             R4 R1
      625 DUPTABLE                         R5 K36 [{["isTransitioning"], ["index"] = 1, [3]}]
      626 GETTABLEKS                       R7 R0 K13 ["immediate"]
      628 JUMPIFNOTEQKB                    R7 TRUE ; [+2]
      630 LOADB                            R6 0 +1
      631 LOADB                            R6 1
      632 SETTABLEKS                       R6 R5 K12 ["isTransitioning"]
      634 NEWTABLE                         R6 0 1
      636 GETTABLEKS                       R8 R1 K0 ["routes"]
      638 GETTABLEN                        R7 R8 1
      639 SETLIST                          R6 R7 1 [1]
      641 SETTABLEKS                       R6 R5 K0 ["routes"]
      643 CALL                             R3 2 -1
      644 RETURN                           R3 -1
      645 GETTABLEKS                       R3 R0 K2 ["type"]
      647 GETUPVAL                         R4 1
      648 GETTABLEKS                       R4 R4 K37 ["Replace"]
      650 JUMPIFNOTEQ                      R3 R4 ; [+158]
      652 LOADNIL                          R3
      653 GETTABLEKS                       R4 R0 K4 ["key"]
      655 JUMPIF                           R4 ; [+10]
      656 GETTABLEKS                       R5 R1 K0 ["routes"]
      658 LENGTH                           R4 R5
      659 LOADN                            R5 0
      660 JUMPIFNOTLT                      R5 R4 ; [+5]
      662 GETTABLEKS                       R4 R1 K0 ["routes"]
      664 LENGTH                           R3 R4
      665 JUMP                             ; [+16]
      666 GETIMPORT                        R4 K20 [ipairs]
      668 GETTABLEKS                       R5 R1 K0 ["routes"]
      670 CALL                             R4 1 3
      671 FORGPREP_INEXT                   R4
      672 GETTABLEKS                       R9 R8 K4 ["key"]
      674 GETTABLEKS                       R10 R0 K4 ["key"]
      676 JUMPIFNOTEQ                      R9 R10 ; [+3]
      678 MOVE                             R3 R7
      679 JUMP                             ; [+2]
      680 FORGLOOP                         R4 2 [inext] ; [-9]
      682 JUMPIFNOT                        R3 ; [+126]
      683 GETUPVAL                         R5 4
      684 GETTABLEKS                       R6 R0 K6 ["routeName"]
      686 GETTABLE                         R4 R5 R6
      687 NEWTABLE                         R5 0 0
      689 JUMPIFEQKNIL                     R4 ; [+47]
      691 GETUPVAL                         R6 5
      692 JUMPIFEQ                         R4 R6 ; [+44]
      694 GETTABLEKS                       R6 R0 K10 ["action"]
      696 JUMPIF                           R6 ; [+35]
      697 GETUPVAL                         R6 3
      698 GETTABLEKS                       R6 R6 K27 ["init"]
      700 DUPTABLE                         R7 K25 [{"params"}]
      701 GETTABLEKS                       R9 R0 K6 ["routeName"]
      703 GETUPVAL                         R11 9
      704 GETTABLE                         R10 R11 R9
      705 FASTCALL1                        TYPE R10 ; [+3]
      706 MOVE                             R12 R10
      707 GETIMPORT                        R11 K28 [type]
      709 CALL                             R11 1 1
      710 JUMPIFNOTEQKS                    R11 K29 ["table"] ; [+16]
      712 GETTABLEKS                       R11 R10 K21 ["params"]
      714 JUMPIFNOT                        R11 ; [+12]
      715 GETUPVAL                         R11 7
      716 GETTABLEKS                       R11 R11 K14 ["Dictionary"]
      718 GETTABLEKS                       R11 R11 K15 ["join"]
      720 GETTABLEKS                       R12 R10 K21 ["params"]
      722 GETTABLEKS                       R13 R0 K21 ["params"]
      724 CALL                             R11 2 1
      725 MOVE                             R8 R11
      726 JUMP                             ; [+2]
      727 GETTABLEKS                       R8 R0 K21 ["params"]
      729 SETTABLEKS                       R8 R7 K21 ["params"]
      731 CALL                             R6 1 1
      732 GETTABLEKS                       R7 R4 K7 ["getStateForAction"]
      734 MOVE                             R8 R6
      735 CALL                             R7 1 1
      736 MOVE                             R5 R7
      737 GETUPVAL                         R6 7
      738 GETTABLEKS                       R6 R6 K22 ["List"]
      740 GETTABLEKS                       R6 R6 K15 ["join"]
      742 GETTABLEKS                       R7 R1 K0 ["routes"]
      744 CALL                             R6 1 1
      745 GETUPVAL                         R7 7
      746 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
      748 GETTABLEKS                       R7 R7 K15 ["join"]
      750 DUPTABLE                         R8 K25 [{"params"}]
      751 GETTABLEKS                       R10 R0 K6 ["routeName"]
      753 GETUPVAL                         R12 9
      754 GETTABLE                         R11 R12 R10
      755 FASTCALL1                        TYPE R11 ; [+3]
      756 MOVE                             R13 R11
      757 GETIMPORT                        R12 K28 [type]
      759 CALL                             R12 1 1
      760 JUMPIFNOTEQKS                    R12 K29 ["table"] ; [+16]
      762 GETTABLEKS                       R12 R11 K21 ["params"]
      764 JUMPIFNOT                        R12 ; [+12]
      765 GETUPVAL                         R12 7
      766 GETTABLEKS                       R12 R12 K14 ["Dictionary"]
      768 GETTABLEKS                       R12 R12 K15 ["join"]
      770 GETTABLEKS                       R13 R11 K21 ["params"]
      772 GETTABLEKS                       R14 R0 K21 ["params"]
      774 CALL                             R12 2 1
      775 MOVE                             R9 R12
      776 JUMP                             ; [+2]
      777 GETTABLEKS                       R9 R0 K21 ["params"]
      779 SETTABLEKS                       R9 R8 K21 ["params"]
      781 MOVE                             R9 R5
      782 DUPTABLE                         R10 K30 [{"routeName", "key"}]
      783 GETTABLEKS                       R11 R0 K6 ["routeName"]
      785 SETTABLEKS                       R11 R10 K6 ["routeName"]
      787 GETTABLEKS                       R11 R0 K38 ["newKey"]
      789 JUMPIF                           R11 ; [+4]
      790 GETUPVAL                         R11 10
      791 GETTABLEKS                       R11 R11 K31 ["generateKey"]
      793 CALL                             R11 0 1
      794 SETTABLEKS                       R11 R10 K4 ["key"]
      796 CALL                             R7 3 1
      797 SETTABLE                         R7 R6 R3
      798 GETUPVAL                         R7 7
      799 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
      801 GETTABLEKS                       R7 R7 K15 ["join"]
      803 MOVE                             R8 R1
      804 DUPTABLE                         R9 K39 [{"routes"}]
      805 SETTABLEKS                       R6 R9 K0 ["routes"]
      807 CALL                             R7 2 -1
      808 RETURN                           R7 -1
      809 GETTABLEKS                       R3 R0 K2 ["type"]
      811 GETUPVAL                         R4 3
      812 GETTABLEKS                       R4 R4 K40 ["CompleteTransition"]
      814 JUMPIFNOTEQ                      R3 R4 ; [+34]
      816 GETTABLEKS                       R3 R0 K4 ["key"]
      818 JUMPIFEQKNIL                     R3 ; [+7]
      820 GETTABLEKS                       R3 R0 K4 ["key"]
      822 GETTABLEKS                       R4 R1 K4 ["key"]
      824 JUMPIFNOTEQ                      R3 R4 ; [+24]
      826 GETTABLEKS                       R3 R0 K41 ["toChildKey"]
      828 GETTABLEKS                       R5 R1 K0 ["routes"]
      830 GETTABLEKS                       R6 R1 K1 ["index"]
      832 GETTABLE                         R4 R5 R6
      833 GETTABLEKS                       R4 R4 K4 ["key"]
      835 JUMPIFNOTEQ                      R3 R4 ; [+13]
      837 GETTABLEKS                       R3 R1 K12 ["isTransitioning"]
      839 JUMPIFNOT                        R3 ; [+9]
      840 GETUPVAL                         R3 7
      841 GETTABLEKS                       R3 R3 K14 ["Dictionary"]
      843 GETTABLEKS                       R3 R3 K15 ["join"]
      845 MOVE                             R4 R1
      846 DUPTABLE                         R5 K43 [{["isTransitioning"] = False}]
      847 CALL                             R3 2 -1
      848 RETURN                           R3 -1
      849 GETTABLEKS                       R3 R0 K2 ["type"]
      851 GETUPVAL                         R4 3
      852 GETTABLEKS                       R4 R4 K9 ["SetParams"]
      854 JUMPIFNOTEQ                      R3 R4 ; [+67]
      856 GETTABLEKS                       R3 R0 K4 ["key"]
      858 LOADNIL                          R4
      859 LOADNIL                          R5
      860 GETIMPORT                        R6 K20 [ipairs]
      862 GETTABLEKS                       R7 R1 K0 ["routes"]
      864 CALL                             R6 1 3
      865 FORGPREP_INEXT                   R6
      866 GETTABLEKS                       R11 R10 K4 ["key"]
      868 JUMPIFNOTEQ                      R11 R3 ; [+4]
      870 MOVE                             R4 R9
      871 MOVE                             R5 R10
      872 JUMP                             ; [+2]
      873 FORGLOOP                         R6 2 [inext] ; [-8]
      875 JUMPIFNOT                        R5 ; [+46]
      876 GETUPVAL                         R6 7
      877 GETTABLEKS                       R6 R6 K14 ["Dictionary"]
      879 GETTABLEKS                       R6 R6 K15 ["join"]
      881 GETTABLEKS                       R7 R5 K21 ["params"]
      883 JUMPIF                           R7 ; [+2]
      884 NEWTABLE                         R7 0 0
      886 GETTABLEKS                       R8 R0 K21 ["params"]
      888 JUMPIF                           R8 ; [+2]
      889 NEWTABLE                         R8 0 0
      891 CALL                             R6 2 1
      892 GETUPVAL                         R7 7
      893 GETTABLEKS                       R7 R7 K22 ["List"]
      895 GETTABLEKS                       R7 R7 K15 ["join"]
      897 GETTABLEKS                       R8 R1 K0 ["routes"]
      899 CALL                             R7 1 1
      900 GETUPVAL                         R8 7
      901 GETTABLEKS                       R8 R8 K14 ["Dictionary"]
      903 GETTABLEKS                       R8 R8 K15 ["join"]
      905 MOVE                             R9 R5
      906 DUPTABLE                         R10 K25 [{"params"}]
      907 SETTABLEKS                       R6 R10 K21 ["params"]
      909 CALL                             R8 2 1
      910 SETTABLE                         R8 R7 R4
      911 GETUPVAL                         R8 7
      912 GETTABLEKS                       R8 R8 K14 ["Dictionary"]
      914 GETTABLEKS                       R8 R8 K15 ["join"]
      916 MOVE                             R9 R1
      917 DUPTABLE                         R10 K39 [{"routes"}]
      918 SETTABLEKS                       R7 R10 K0 ["routes"]
      920 CALL                             R8 2 -1
      921 RETURN                           R8 -1
      922 GETTABLEKS                       R3 R0 K2 ["type"]
      924 GETUPVAL                         R4 1
      925 GETTABLEKS                       R4 R4 K3 ["Reset"]
      927 JUMPIFNOTEQ                      R3 R4 ; [+154]
      929 GETTABLEKS                       R3 R0 K4 ["key"]
      931 JUMPIFEQKNIL                     R3 ; [+8]
      933 GETTABLEKS                       R3 R0 K4 ["key"]
      935 GETTABLEKS                       R4 R1 K4 ["key"]
      937 JUMPIFEQ                         R3 R4 ; [+2]
      939 RETURN                           R1 1
      940 GETTABLEKS                       R3 R0 K44 ["actions"]
      942 JUMPIF                           R3 ; [+2]
      943 NEWTABLE                         R3 0 0
      945 NEWTABLE                         R4 0 0
      947 GETIMPORT                        R5 K20 [ipairs]
      949 MOVE                             R6 R3
      950 CALL                             R5 1 3
      951 FORGPREP_INEXT                   R5
      952 GETUPVAL                         R11 4
      953 GETTABLEKS                       R12 R9 K6 ["routeName"]
      955 GETTABLE                         R10 R11 R12
      956 NEWTABLE                         R11 0 0
      958 JUMPIFEQKNIL                     R10 ; [+47]
      960 GETUPVAL                         R12 5
      961 JUMPIFEQ                         R10 R12 ; [+44]
      963 GETTABLEKS                       R12 R9 K10 ["action"]
      965 JUMPIF                           R12 ; [+35]
      966 GETUPVAL                         R12 3
      967 GETTABLEKS                       R12 R12 K27 ["init"]
      969 DUPTABLE                         R13 K25 [{"params"}]
      970 GETTABLEKS                       R15 R9 K6 ["routeName"]
      972 GETUPVAL                         R17 9
      973 GETTABLE                         R16 R17 R15
      974 FASTCALL1                        TYPE R16 ; [+3]
      975 MOVE                             R18 R16
      976 GETIMPORT                        R17 K28 [type]
      978 CALL                             R17 1 1
      979 JUMPIFNOTEQKS                    R17 K29 ["table"] ; [+16]
      981 GETTABLEKS                       R17 R16 K21 ["params"]
      983 JUMPIFNOT                        R17 ; [+12]
      984 GETUPVAL                         R17 7
      985 GETTABLEKS                       R17 R17 K14 ["Dictionary"]
      987 GETTABLEKS                       R17 R17 K15 ["join"]
      989 GETTABLEKS                       R18 R16 K21 ["params"]
      991 GETTABLEKS                       R19 R9 K21 ["params"]
      993 CALL                             R17 2 1
      994 MOVE                             R14 R17
      995 JUMP                             ; [+2]
      996 GETTABLEKS                       R14 R9 K21 ["params"]
      998 SETTABLEKS                       R14 R13 K21 ["params"]
     1000 CALL                             R12 1 1
     1001 GETTABLEKS                       R13 R10 K7 ["getStateForAction"]
     1003 MOVE                             R14 R12
     1004 CALL                             R13 1 1
     1005 MOVE                             R11 R13
     1006 MOVE                             R13 R4
     1007 GETUPVAL                         R14 7
     1008 GETTABLEKS                       R14 R14 K14 ["Dictionary"]
     1010 GETTABLEKS                       R14 R14 K15 ["join"]
     1012 DUPTABLE                         R15 K25 [{"params"}]
     1013 GETTABLEKS                       R17 R9 K6 ["routeName"]
     1015 GETUPVAL                         R19 9
     1016 GETTABLE                         R18 R19 R17
     1017 FASTCALL1                        TYPE R18 ; [+3]
     1018 MOVE                             R20 R18
     1019 GETIMPORT                        R19 K28 [type]
     1021 CALL                             R19 1 1
     1022 JUMPIFNOTEQKS                    R19 K29 ["table"] ; [+16]
     1024 GETTABLEKS                       R19 R18 K21 ["params"]
     1026 JUMPIFNOT                        R19 ; [+12]
     1027 GETUPVAL                         R19 7
     1028 GETTABLEKS                       R19 R19 K14 ["Dictionary"]
     1030 GETTABLEKS                       R19 R19 K15 ["join"]
     1032 GETTABLEKS                       R20 R18 K21 ["params"]
     1034 GETTABLEKS                       R21 R9 K21 ["params"]
     1036 CALL                             R19 2 1
     1037 MOVE                             R16 R19
     1038 JUMP                             ; [+2]
     1039 GETTABLEKS                       R16 R9 K21 ["params"]
     1041 SETTABLEKS                       R16 R15 K21 ["params"]
     1043 MOVE                             R16 R11
     1044 DUPTABLE                         R17 K30 [{"routeName", "key"}]
     1045 GETTABLEKS                       R18 R9 K6 ["routeName"]
     1047 SETTABLEKS                       R18 R17 K6 ["routeName"]
     1049 GETTABLEKS                       R18 R9 K4 ["key"]
     1051 JUMPIF                           R18 ; [+4]
     1052 GETUPVAL                         R18 10
     1053 GETTABLEKS                       R18 R18 K31 ["generateKey"]
     1055 CALL                             R18 0 1
     1056 SETTABLEKS                       R18 R17 K4 ["key"]
     1058 CALL                             R14 3 -1
     1059 FASTCALL                         TABLE_INSERT ; [+2]
     1060 GETIMPORT                        R12 K46 [table.insert]
     1062 CALL                             R12 -1 0
     1063 FORGLOOP                         R5 2 [inext] ; [-112]
     1065 GETUPVAL                         R5 7
     1066 GETTABLEKS                       R5 R5 K14 ["Dictionary"]
     1068 GETTABLEKS                       R5 R5 K15 ["join"]
     1070 MOVE                             R6 R1
     1071 DUPTABLE                         R7 K47 [{"routes", "index"}]
     1072 SETTABLEKS                       R4 R7 K0 ["routes"]
     1074 GETTABLEKS                       R8 R0 K1 ["index"]
     1076 JUMPIF                           R8 ; [+1]
     1077 LENGTH                           R8 R3
     1078 SETTABLEKS                       R8 R7 K1 ["index"]
     1080 CALL                             R5 2 -1
     1081 RETURN                           R5 -1
     1082 GETTABLEKS                       R3 R0 K2 ["type"]
     1084 GETUPVAL                         R4 3
     1085 GETTABLEKS                       R4 R4 K48 ["Back"]
     1087 JUMPIFEQ                         R3 R4 ; [+8]
     1089 GETTABLEKS                       R3 R0 K2 ["type"]
     1091 GETUPVAL                         R4 1
     1092 GETTABLEKS                       R4 R4 K49 ["Pop"]
     1094 JUMPIFNOTEQ                      R3 R4 ; [+84]
     1096 GETTABLEKS                       R3 R0 K4 ["key"]
     1098 GETTABLEKS                       R4 R0 K50 ["n"]
     1100 GETTABLEKS                       R5 R0 K13 ["immediate"]
     1102 GETTABLEKS                       R6 R1 K1 ["index"]
     1104 GETTABLEKS                       R7 R0 K2 ["type"]
     1106 GETUPVAL                         R8 1
     1107 GETTABLEKS                       R8 R8 K49 ["Pop"]
     1109 JUMPIFNOTEQ                      R7 R8 ; [+15]
     1111 JUMPIFEQKNIL                     R4 ; [+13]
     1113 LOADN                            R8 1
     1114 GETTABLEKS                       R11 R1 K1 ["index"]
     1116 SUB                              R10 R11 R4
     1117 ADDK                             R9 R10 K24 [1]
     1118 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
     1120 GETIMPORT                        R7 K53 [math.max]
     1122 CALL                             R7 2 1
     1123 MOVE                             R6 R7
     1124 JUMP                             ; [+19]
     1125 JUMPIFNOT                        R3 ; [+18]
     1126 GETUPVAL                         R7 2
     1127 JUMPIFEQ                         R3 R7 ; [+16]
     1129 LOADN                            R6 0
     1130 GETIMPORT                        R7 K20 [ipairs]
     1132 GETTABLEKS                       R8 R1 K0 ["routes"]
     1134 CALL                             R7 1 3
     1135 FORGPREP_INEXT                   R7
     1136 GETTABLEKS                       R12 R11 K4 ["key"]
     1138 JUMPIFNOTEQ                      R12 R3 ; [+3]
     1140 MOVE                             R6 R10
     1141 JUMP                             ; [+2]
     1142 FORGLOOP                         R7 2 [inext] ; [-7]
     1144 LOADN                            R7 1
     1145 JUMPIFNOTLT                      R7 R6 ; [+33]
     1147 GETUPVAL                         R7 7
     1148 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
     1150 GETTABLEKS                       R7 R7 K15 ["join"]
     1152 MOVE                             R8 R1
     1153 DUPTABLE                         R9 K54 [{"routes", "index", "isTransitioning"}]
     1154 GETUPVAL                         R10 7
     1155 GETTABLEKS                       R10 R10 K22 ["List"]
     1157 GETTABLEKS                       R10 R10 K23 ["removeRange"]
     1159 GETTABLEKS                       R11 R1 K0 ["routes"]
     1161 MOVE                             R12 R6
     1162 GETTABLEKS                       R14 R1 K0 ["routes"]
     1164 LENGTH                           R13 R14
     1165 CALL                             R10 3 1
     1166 SETTABLEKS                       R10 R9 K0 ["routes"]
     1168 SUBK                             R10 R6 K24 [1]
     1169 SETTABLEKS                       R10 R9 K1 ["index"]
     1171 JUMPIFNOTEQKB                    R5 TRUE ; [+2]
     1173 LOADB                            R10 0 +1
     1174 LOADB                            R10 1
     1175 SETTABLEKS                       R10 R9 K12 ["isTransitioning"]
     1177 CALL                             R7 2 -1
     1178 RETURN                           R7 -1
     1179 GETTABLEKS                       R4 R0 K4 ["key"]
     1181 JUMPIFNOT                        R4 ; [+8]
     1182 GETUPVAL                         R3 6
     1183 GETTABLEKS                       R3 R3 K55 ["indexOf"]
     1185 MOVE                             R4 R1
     1186 GETTABLEKS                       R5 R0 K4 ["key"]
     1188 CALL                             R3 2 1
     1189 JUMPIF                           R3 ; [+1]
     1190 LOADNIL                          R3
     1191 GETTABLEKS                       R7 R1 K0 ["routes"]
     1193 LENGTH                           R6 R7
     1194 LOADN                            R4 1
     1195 LOADN                            R5 -1
     1196 FORNPREP                         R4
     1197 GETTABLEKS                       R8 R1 K0 ["routes"]
     1199 GETTABLE                         R7 R8 R6
     1200 GETTABLEKS                       R8 R7 K4 ["key"]
     1202 GETTABLEKS                       R9 R2 K4 ["key"]
     1204 JUMPIFEQ                         R8 R9 ; [+52]
     1206 JUMPIFNOT                        R3 ; [+6]
     1207 GETTABLEKS                       R8 R7 K4 ["key"]
     1209 GETTABLEKS                       R9 R0 K4 ["key"]
     1211 JUMPIFNOTEQ                      R8 R9 ; [+45]
     1213 GETUPVAL                         R9 4
     1214 GETTABLEKS                       R10 R7 K6 ["routeName"]
     1216 GETTABLE                         R8 R9 R10
     1217 JUMPIFEQKNIL                     R8 ; [+39]
     1219 GETUPVAL                         R9 5
     1220 JUMPIFEQ                         R8 R9 ; [+36]
     1222 GETTABLEKS                       R9 R8 K7 ["getStateForAction"]
     1224 MOVE                             R10 R0
     1225 MOVE                             R11 R7
     1226 CALL                             R9 2 1
     1227 JUMPIF                           R9 ; [+1]
     1228 RETURN                           R1 1
     1229 JUMPIFEQ                         R9 R7 ; [+27]
     1231 GETUPVAL                         R10 6
     1232 GETTABLEKS                       R10 R10 K8 ["replaceAt"]
     1234 MOVE                             R11 R1
     1235 GETTABLEKS                       R12 R7 K4 ["key"]
     1237 MOVE                             R13 R9
     1238 LOADB                            R14 1
     1239 GETTABLEKS                       R15 R0 K2 ["type"]
     1241 GETUPVAL                         R16 3
     1242 GETTABLEKS                       R16 R16 K9 ["SetParams"]
     1244 JUMPIFEQ                         R15 R16 ; [+10]
     1246 GETTABLEKS                       R15 R0 K2 ["type"]
     1248 GETUPVAL                         R16 1
     1249 GETTABLEKS                       R16 R16 K40 ["CompleteTransition"]
     1251 JUMPIFEQ                         R15 R16 ; [+2]
     1253 LOADB                            R14 0 +1
     1254 LOADB                            R14 1
     1255 CALL                             R10 4 -1
     1256 RETURN                           R10 -1
     1257 FORNLOOP                         R4
     1258 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 LOADK                            R3 K3 ["config must be a table"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R2 R0 K4 ["routes"]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K5 ["Dictionary"]
       19 GETTABLEKS                       R2 R2 K6 ["keys"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 0 0
       25 GETIMPORT                        R4 K8 [ipairs]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 3
       29 FORGPREP_INEXT                   R4
       30 GETUPVAL                         R9 3
       31 MOVE                             R10 R1
       32 MOVE                             R11 R8
       33 CALL                             R9 2 1
       34 FASTCALL1                        TYPE R9 ; [+3]
       35 MOVE                             R11 R9
       36 GETIMPORT                        R10 K1 [type]
       38 CALL                             R10 1 1
       39 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+8]
       41 GETTABLEKS                       R10 R9 K9 ["router"]
       43 JUMPIFNOT                        R10 ; [+4]
       44 GETTABLEKS                       R10 R9 K9 ["router"]
       46 SETTABLE                         R10 R3 R8
       47 JUMP                             ; [+2]
       48 GETUPVAL                         R10 4
       49 SETTABLE                         R10 R3 R8
       50 FORGLOOP                         R4 2 [inext] ; [-21]
       52 GETTABLEKS                       R4 R0 K10 ["getCustomActionCreators"]
       54 JUMPIF                           R4 ; [+1]
       55 GETUPVAL                         R4 5
       56 GETTABLEKS                       R5 R0 K11 ["initialRouteParams"]
       58 JUMPIF                           R5 ; [+2]
       59 NEWTABLE                         R5 0 0
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R7 R0 K12 ["initialRouteName"]
       64 LOADK                            R8 K13 ["initialRouteName must be provided"]
       65 CALL                             R6 2 1
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K14 ["List"]
       69 GETTABLEKS                       R7 R7 K15 ["find"]
       71 MOVE                             R8 R2
       72 MOVE                             R9 R6
       73 CALL                             R7 2 1
       74 JUMPIFNOTEQKNIL                  R7 ; [+23]
       76 LOADK                            R8 K16 [""]
       77 GETIMPORT                        R9 K8 [ipairs]
       79 MOVE                             R10 R2
       80 CALL                             R9 1 3
       81 FORGPREP_INEXT                   R9
       82 MOVE                             R14 R8
       83 MOVE                             R15 R13
       84 LOADK                            R16 K17 [","]
       85 CONCAT                           R8 R14 R16
       86 FORGLOOP                         R9 2 [inext] ; [-5]
       88 GETIMPORT                        R9 K19 [error]
       90 GETIMPORT                        R10 K22 [string.format]
       92 LOADK                            R11 K23 ["Invalid initialRouteName '%s'. Must be one of [%s]"]
       93 MOVE                             R12 R6
       94 MOVE                             R13 R8
       95 CALL                             R10 3 1
       96 LOADN                            R11 2
       97 CALL                             R9 2 0
       98 GETTABLE                         R8 R3 R6
       99 NEWCLOSURE                       R9 P0
      100 CAPTURE                          VAL R8
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R6
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U7
      109 NEWCLOSURE                       R10 P1
      110 CAPTURE                          VAL R1
      111 CAPTURE                          UPVAL U2
      112 NEWTABLE                         R11 0 0
      114 GETIMPORT                        R12 K25 [pairs]
      116 MOVE                             R13 R3
      117 CALL                             R12 1 3
      118 FORGPREP_NEXT                    R12
      119 GETUPVAL                         R17 4
      120 JUMPIFEQ                         R16 R17 ; [+2]
      122 SETTABLE                         R16 R11 R15
      123 FORGLOOP                         R12 2 ; [-5]
      125 DUPTABLE                         R12 K29 [{"childRouters", "getScreenOptions", "_CHILD_IS_SCREEN"}]
      126 SETTABLEKS                       R11 R12 K26 ["childRouters"]
      128 GETUPVAL                         R13 8
      129 MOVE                             R14 R1
      130 GETTABLEKS                       R15 R0 K30 ["defaultNavigationOptions"]
      132 CALL                             R13 2 1
      133 SETTABLEKS                       R13 R12 K27 ["getScreenOptions"]
      135 GETUPVAL                         R13 4
      136 SETTABLEKS                       R13 R12 K28 ["_CHILD_IS_SCREEN"]
      138 NEWCLOSURE                       R13 P2
      139 CAPTURE                          UPVAL U0
      140 CAPTURE                          VAL R3
      141 CAPTURE                          UPVAL U4
      142 CAPTURE                          UPVAL U3
      143 CAPTURE                          VAL R1
      144 SETTABLEKS                       R13 R12 K31 ["getComponentForState"]
      146 NEWCLOSURE                       R13 P3
      147 CAPTURE                          UPVAL U3
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R13 R12 K32 ["getComponentForRouteName"]
      151 NEWCLOSURE                       R13 P4
      152 CAPTURE                          UPVAL U2
      153 CAPTURE                          VAL R4
      154 CAPTURE                          UPVAL U9
      155 CAPTURE                          UPVAL U0
      156 CAPTURE                          UPVAL U6
      157 SETTABLEKS                       R13 R12 K33 ["getActionCreators"]
      159 NEWCLOSURE                       R13 P5
      160 CAPTURE                          VAL R9
      161 CAPTURE                          UPVAL U9
      162 CAPTURE                          UPVAL U10
      163 CAPTURE                          UPVAL U6
      164 CAPTURE                          VAL R3
      165 CAPTURE                          UPVAL U4
      166 CAPTURE                          UPVAL U11
      167 CAPTURE                          UPVAL U2
      168 CAPTURE                          UPVAL U0
      169 CAPTURE                          VAL R1
      170 CAPTURE                          UPVAL U7
      171 SETTABLEKS                       R13 R12 K34 ["getStateForAction"]
      173 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K6 ["NavigationActions"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R3 K3 [script]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K4 ["Parent"]
       33 GETTABLEKS                       R3 R3 K7 ["StackActions"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R4 K3 [script]
       40 GETTABLEKS                       R4 R4 K4 ["Parent"]
       42 GETTABLEKS                       R4 R4 K4 ["Parent"]
       44 GETTABLEKS                       R4 R4 K8 ["utils"]
       46 GETTABLEKS                       R4 R4 K9 ["KeyGenerator"]
       48 CALL                             R3 1 1
       49 GETIMPORT                        R4 K1 [require]
       51 GETIMPORT                        R5 K3 [script]
       53 GETTABLEKS                       R5 R5 K4 ["Parent"]
       55 GETTABLEKS                       R5 R5 K4 ["Parent"]
       57 GETTABLEKS                       R5 R5 K10 ["StateUtils"]
       59 CALL                             R4 1 1
       60 GETIMPORT                        R5 K1 [require]
       62 GETIMPORT                        R6 K3 [script]
       64 GETTABLEKS                       R6 R6 K4 ["Parent"]
       66 GETTABLEKS                       R6 R6 K11 ["getScreenForRouteName"]
       68 CALL                             R5 1 1
       69 GETIMPORT                        R6 K1 [require]
       71 GETIMPORT                        R7 K3 [script]
       73 GETTABLEKS                       R7 R7 K4 ["Parent"]
       75 GETTABLEKS                       R7 R7 K12 ["createConfigGetter"]
       77 CALL                             R6 1 1
       78 GETIMPORT                        R7 K1 [require]
       80 GETIMPORT                        R8 K3 [script]
       82 GETTABLEKS                       R8 R8 K4 ["Parent"]
       84 GETTABLEKS                       R8 R8 K13 ["validateRouteConfigMap"]
       86 CALL                             R7 1 1
       87 GETIMPORT                        R8 K1 [require]
       89 GETIMPORT                        R9 K3 [script]
       91 GETTABLEKS                       R9 R9 K4 ["Parent"]
       93 GETTABLEKS                       R9 R9 K4 ["Parent"]
       95 GETTABLEKS                       R9 R9 K8 ["utils"]
       97 GETTABLEKS                       R9 R9 K14 ["validate"]
       99 CALL                             R8 1 1
      100 GETIMPORT                        R9 K1 [require]
      102 GETIMPORT                        R10 K3 [script]
      104 GETTABLEKS                       R10 R10 K4 ["Parent"]
      106 GETTABLEKS                       R10 R10 K4 ["Parent"]
      108 GETTABLEKS                       R10 R10 K15 ["NavigationSymbol"]
      110 CALL                             R9 1 1
      111 GETIMPORT                        R10 K1 [require]
      113 GETIMPORT                        R11 K3 [script]
      115 GETTABLEKS                       R11 R11 K4 ["Parent"]
      117 GETTABLEKS                       R11 R11 K4 ["Parent"]
      119 GETTABLEKS                       R11 R11 K16 ["NoneSymbol"]
      121 CALL                             R10 1 1
      122 MOVE                             R11 R9
      123 LOADK                            R12 K17 ["CHILD_IS_SCREEN"]
      124 CALL                             R11 1 1
      125 DUPCLOSURE                       R12 K18 [PROTO_0]
      126 DUPCLOSURE                       R13 K19 [PROTO_1]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R2
      129 DUPCLOSURE                       R14 K20 [PROTO_2]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R10
      132 DUPCLOSURE                       R15 K21 [PROTO_15]
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R4
      145 RETURN                           R15 1
