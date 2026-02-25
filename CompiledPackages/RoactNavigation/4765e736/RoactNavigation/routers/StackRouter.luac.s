PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["Navigate"]
        6 JUMPIFEQ                         R2 R3 ; [+10]
        8 GETTABLEKS                       R2 R0 K0 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["Push"]
       13 JUMPIFEQ                         R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["Reset"]
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
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["getStateForAction"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K1 ["init"]
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
       37 GETUPVAL                         R5 6
       38 GETTABLEKS                       R4 R5 K7 ["Dictionary"]
       40 GETTABLEKS                       R3 R4 K8 ["join"]
       42 MOVE                             R4 R2
       43 GETTABLEKS                       R5 R0 K2 ["params"]
       45 JUMPIF                           R5 ; [+2]
       46 NEWTABLE                         R5 0 0
       48 GETUPVAL                         R6 3
       49 JUMPIF                           R6 ; [+2]
       50 NEWTABLE                         R6 0 0
       52 CALL                             R3 3 1
       53 GETUPVAL                         R5 7
       54 GETTABLEKS                       R4 R5 K9 ["initialRouteKey"]
       56 GETUPVAL                         R7 6
       57 GETTABLEKS                       R6 R7 K7 ["Dictionary"]
       59 GETTABLEKS                       R5 R6 K8 ["join"]
       61 MOVE                             R6 R0
       62 MOVE                             R7 R3
       63 DUPTABLE                         R8 K12 [{"routeName", "key"}]
       64 GETUPVAL                         R9 5
       65 SETTABLEKS                       R9 R8 K10 ["routeName"]
       67 MOVE                             R9 R4
       68 JUMPIF                           R9 ; [+4]
       69 GETUPVAL                         R10 8
       70 GETTABLEKS                       R9 R10 K13 ["generateKey"]
       72 CALL                             R9 0 1
       73 SETTABLEKS                       R9 R8 K11 ["key"]
       75 CALL                             R5 3 1
       76 MOVE                             R0 R5
       77 DUPTABLE                         R5 K17 [{"key", "isTransitioning", "index", "routes"}]
       78 LOADK                            R6 K18 ["StackRouterRoot"]
       79 SETTABLEKS                       R6 R5 K11 ["key"]
       81 LOADB                            R6 0
       82 SETTABLEKS                       R6 R5 K14 ["isTransitioning"]
       84 LOADN                            R6 1
       85 SETTABLEKS                       R6 R5 K15 ["index"]
       87 NEWTABLE                         R6 0 1
       89 MOVE                             R7 R0
       90 SETLIST                          R6 R7 1 [1]
       92 SETTABLEKS                       R6 R5 K16 ["routes"]
       94 RETURN                           R5 1

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
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["Dictionary"]
       15 GETTABLEKS                       R3 R4 K5 ["join"]
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
       23 GETUPVAL                         R6 1
       24 GETTABLE                         R5 R6 R2
       25 GETTABLEKS                       R4 R5 K4 ["getComponentForState"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["pop"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        6 GETTABLEKS                       R3 R4 K2 ["join"]
        8 DUPTABLE                         R4 K4 [{"n"}]
        9 SETTABLEKS                       R0 R4 K3 ["n"]
       11 MOVE                             R5 R1
       12 JUMPIF                           R5 ; [+2]
       13 NEWTABLE                         R5 0 0
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 -1
       17 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["popToTop"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["push"]
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
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["replace"]
       10 DUPTABLE                         R5 K9 [{"routeName", "params", "action", "key", "newKey"}]
       11 SETTABLEKS                       R0 R5 K4 ["routeName"]
       13 SETTABLEKS                       R1 R5 K5 ["params"]
       15 SETTABLEKS                       R2 R5 K6 ["action"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K7 ["key"]
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
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R4 R5 K3 ["replace"]
       62 MOVE                             R5 R0
       63 CALL                             R4 1 -1
       64 RETURN                           R4 -1

PROTO_11:
        0 MOVE                             R2 R1
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 LENGTH                           R2 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["reset"]
        7 DUPTABLE                         R4 K4 [{"actions", "index", "key"}]
        8 SETTABLEKS                       R0 R4 K1 ["actions"]
       10 SETTABLEKS                       R2 R4 K2 ["index"]
       12 GETUPVAL                         R5 1
       13 SETTABLEKS                       R5 R4 K3 ["key"]
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["back"]
        3 DUPTABLE                         R1 K2 [{"key"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["key"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
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
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K3 ["Reset"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+8]
       18 GETTABLEKS                       R4 R0 K4 ["key"]
       20 GETUPVAL                         R5 2
       21 JUMPIFEQ                         R4 R5 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 JUMPIF                           R3 ; [+44]
       26 GETTABLEKS                       R3 R0 K2 ["type"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R4 R5 K5 ["Navigate"]
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
       51 GETUPVAL                         R6 6
       52 GETTABLEKS                       R5 R6 K8 ["replaceAt"]
       54 MOVE                             R6 R1
       55 GETTABLEKS                       R7 R2 K4 ["key"]
       57 MOVE                             R8 R4
       58 GETTABLEKS                       R10 R0 K2 ["type"]
       60 GETUPVAL                         R12 3
       61 GETTABLEKS                       R11 R12 K9 ["SetParams"]
       63 JUMPIFEQ                         R10 R11 ; [+2]
       65 LOADB                            R9 0 +1
       66 LOADB                            R9 1
       67 CALL                             R5 4 -1
       68 RETURN                           R5 -1
       69 JUMP                             ; [+87]
       70 GETTABLEKS                       R3 R0 K2 ["type"]
       72 GETUPVAL                         R5 3
       73 GETTABLEKS                       R4 R5 K5 ["Navigate"]
       75 JUMPIFNOTEQ                      R3 R4 ; [+81]
       77 GETTABLEKS                       R6 R1 K0 ["routes"]
       79 LENGTH                           R5 R6
       80 LOADN                            R3 1
       81 LOADN                            R4 255
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
      116 GETUPVAL                         R11 6
      117 GETTABLEKS                       R10 R11 K11 ["replaceAndPrune"]
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
      145 GETUPVAL                         R14 7
      146 GETTABLEKS                       R13 R14 K14 ["Dictionary"]
      148 GETTABLEKS                       R12 R13 K15 ["join"]
      150 MOVE                             R13 R10
      151 DUPTABLE                         R14 K16 [{"isTransitioning"}]
      152 SETTABLEKS                       R11 R14 K12 ["isTransitioning"]
      154 CALL                             R12 2 -1
      155 RETURN                           R12 -1
      156 FORNLOOP                         R3
      157 LOADB                            R3 1
      158 GETTABLEKS                       R4 R0 K2 ["type"]
      160 GETUPVAL                         R6 3
      161 GETTABLEKS                       R5 R6 K5 ["Navigate"]
      163 JUMPIFEQ                         R4 R5 ; [+10]
      165 GETTABLEKS                       R4 R0 K2 ["type"]
      167 GETUPVAL                         R6 1
      168 GETTABLEKS                       R5 R6 K17 ["Push"]
      170 JUMPIFEQ                         R4 R5 ; [+2]
      172 LOADB                            R3 0 +1
      173 LOADB                            R3 1
      174 JUMPIFNOT                        R3 ; [+309]
      175 GETUPVAL                         R4 4
      176 GETTABLEKS                       R5 R0 K6 ["routeName"]
      178 GETTABLE                         R3 R4 R5
      179 JUMPIFEQKNIL                     R3 ; [+304]
      181 GETUPVAL                         R4 4
      182 GETTABLEKS                       R5 R0 K6 ["routeName"]
      184 GETTABLE                         R3 R4 R5
      185 GETUPVAL                         R4 8
      186 LOADB                            R5 1
      187 GETTABLEKS                       R6 R0 K2 ["type"]
      189 GETUPVAL                         R8 1
      190 GETTABLEKS                       R7 R8 K17 ["Push"]
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
      230 GETUPVAL                         R7 1
      231 GETTABLEKS                       R6 R7 K17 ["Push"]
      233 JUMPIFEQ                         R5 R6 ; [+81]
      235 JUMPIFEQKNIL                     R4 ; [+79]
      237 GETTABLEKS                       R5 R1 K1 ["index"]
      239 JUMPIFNOTEQ                      R5 R4 ; [+6]
      241 GETTABLEKS                       R5 R0 K21 ["params"]
      243 JUMPIF                           R5 ; [+2]
      244 LOADNIL                          R5
      245 RETURN                           R5 1
      246 GETUPVAL                         R7 7
      247 GETTABLEKS                       R6 R7 K22 ["List"]
      249 GETTABLEKS                       R5 R6 K23 ["removeRange"]
      251 GETTABLEKS                       R6 R1 K0 ["routes"]
      253 ADDK                             R7 R4 K24 [1]
      254 GETTABLEKS                       R9 R1 K0 ["routes"]
      256 LENGTH                           R8 R9
      257 CALL                             R5 3 1
      258 GETTABLEKS                       R6 R0 K21 ["params"]
      260 JUMPIFNOT                        R6 ; [+27]
      261 GETTABLEKS                       R7 R1 K0 ["routes"]
      263 GETTABLE                         R6 R7 R4
      264 GETUPVAL                         R9 7
      265 GETTABLEKS                       R8 R9 K14 ["Dictionary"]
      267 GETTABLEKS                       R7 R8 K15 ["join"]
      269 MOVE                             R8 R6
      270 DUPTABLE                         R9 K25 [{"params"}]
      271 GETUPVAL                         R12 7
      272 GETTABLEKS                       R11 R12 K14 ["Dictionary"]
      274 GETTABLEKS                       R10 R11 K15 ["join"]
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
      300 GETUPVAL                         R9 7
      301 GETTABLEKS                       R8 R9 K14 ["Dictionary"]
      303 GETTABLEKS                       R7 R8 K15 ["join"]
      305 MOVE                             R8 R1
      306 DUPTABLE                         R9 K26 [{"isTransitioning", "index", "routes"}]
      307 SETTABLEKS                       R6 R9 K12 ["isTransitioning"]
      309 SETTABLEKS                       R4 R9 K1 ["index"]
      311 SETTABLEKS                       R5 R9 K0 ["routes"]
      313 CALL                             R7 2 -1
      314 RETURN                           R7 -1
      315 LOADNIL                          R5
      316 GETUPVAL                         R6 5
      317 JUMPIFEQ                         R3 R6 ; [+98]
      319 GETTABLEKS                       R6 R0 K10 ["action"]
      321 JUMPIF                           R6 ; [+36]
      322 GETUPVAL                         R7 3
      323 GETTABLEKS                       R6 R7 K27 ["init"]
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
      340 GETUPVAL                         R13 7
      341 GETTABLEKS                       R12 R13 K14 ["Dictionary"]
      343 GETTABLEKS                       R11 R12 K15 ["join"]
      345 GETTABLEKS                       R12 R10 K21 ["params"]
      347 GETTABLEKS                       R13 R0 K21 ["params"]
      349 CALL                             R11 2 1
      350 MOVE                             R8 R11
      351 JUMP                             ; [+3]
      352 GETTABLEKS                       R8 R0 K21 ["params"]
      354 JUMP                             ; [0]
      355 SETTABLEKS                       R8 R7 K21 ["params"]
      357 CALL                             R6 1 1
      358 GETUPVAL                         R9 7
      359 GETTABLEKS                       R8 R9 K14 ["Dictionary"]
      361 GETTABLEKS                       R7 R8 K15 ["join"]
      363 DUPTABLE                         R8 K25 [{"params"}]
      364 GETTABLEKS                       R10 R0 K6 ["routeName"]
      366 GETUPVAL                         R12 9
      367 GETTABLE                         R11 R12 R10
      368 FASTCALL1                        TYPE R11 ; [+3]
      369 MOVE                             R13 R11
      370 GETIMPORT                        R12 K28 [type]
      372 CALL                             R12 1 1
      373 JUMPIFNOTEQKS                    R12 K29 ["table"] ; [+16]
      375 GETTABLEKS                       R12 R11 K21 ["params"]
      377 JUMPIFNOT                        R12 ; [+12]
      378 GETUPVAL                         R14 7
      379 GETTABLEKS                       R13 R14 K14 ["Dictionary"]
      381 GETTABLEKS                       R12 R13 K15 ["join"]
      383 GETTABLEKS                       R13 R11 K21 ["params"]
      385 GETTABLEKS                       R14 R0 K21 ["params"]
      387 CALL                             R12 2 1
      388 MOVE                             R9 R12
      389 JUMP                             ; [+3]
      390 GETTABLEKS                       R9 R0 K21 ["params"]
      392 JUMP                             ; [0]
      393 SETTABLEKS                       R9 R8 K21 ["params"]
      395 GETTABLEKS                       R9 R3 K7 ["getStateForAction"]
      397 MOVE                             R10 R6
      398 CALL                             R9 1 1
      399 DUPTABLE                         R10 K30 [{"routeName", "key"}]
      400 GETTABLEKS                       R11 R0 K6 ["routeName"]
      402 SETTABLEKS                       R11 R10 K6 ["routeName"]
      404 GETTABLEKS                       R11 R0 K4 ["key"]
      406 JUMPIF                           R11 ; [+4]
      407 GETUPVAL                         R12 10
      408 GETTABLEKS                       R11 R12 K31 ["generateKey"]
      410 CALL                             R11 0 1
      411 SETTABLEKS                       R11 R10 K4 ["key"]
      413 CALL                             R7 3 1
      414 MOVE                             R5 R7
      415 JUMP                             ; [+46]
      416 DUPTABLE                         R6 K32 [{"params", "routeName", "key"}]
      417 GETTABLEKS                       R8 R0 K6 ["routeName"]
      419 GETUPVAL                         R10 9
      420 GETTABLE                         R9 R10 R8
      421 FASTCALL1                        TYPE R9 ; [+3]
      422 MOVE                             R11 R9
      423 GETIMPORT                        R10 K28 [type]
      425 CALL                             R10 1 1
      426 JUMPIFNOTEQKS                    R10 K29 ["table"] ; [+16]
      428 GETTABLEKS                       R10 R9 K21 ["params"]
      430 JUMPIFNOT                        R10 ; [+12]
      431 GETUPVAL                         R12 7
      432 GETTABLEKS                       R11 R12 K14 ["Dictionary"]
      434 GETTABLEKS                       R10 R11 K15 ["join"]
      436 GETTABLEKS                       R11 R9 K21 ["params"]
      438 GETTABLEKS                       R12 R0 K21 ["params"]
      440 CALL                             R10 2 1
      441 MOVE                             R7 R10
      442 JUMP                             ; [+3]
      443 GETTABLEKS                       R7 R0 K21 ["params"]
      445 JUMP                             ; [0]
      446 SETTABLEKS                       R7 R6 K21 ["params"]
      448 GETTABLEKS                       R7 R0 K6 ["routeName"]
      450 SETTABLEKS                       R7 R6 K6 ["routeName"]
      452 GETTABLEKS                       R7 R0 K4 ["key"]
      454 JUMPIF                           R7 ; [+4]
      455 GETUPVAL                         R8 10
      456 GETTABLEKS                       R7 R8 K31 ["generateKey"]
      458 CALL                             R7 0 1
      459 SETTABLEKS                       R7 R6 K4 ["key"]
      461 MOVE                             R5 R6
      462 GETUPVAL                         R8 7
      463 GETTABLEKS                       R7 R8 K14 ["Dictionary"]
      465 GETTABLEKS                       R6 R7 K15 ["join"]
      467 GETUPVAL                         R8 6
      468 GETTABLEKS                       R7 R8 K33 ["push"]
      470 MOVE                             R8 R1
      471 MOVE                             R9 R5
      472 CALL                             R7 2 1
      473 DUPTABLE                         R8 K16 [{"isTransitioning"}]
      474 GETTABLEKS                       R10 R0 K13 ["immediate"]
      476 JUMPIFNOTEQKB                    R10 TRUE ; [+2]
      478 LOADB                            R9 0 +1
      479 LOADB                            R9 1
      480 SETTABLEKS                       R9 R8 K12 ["isTransitioning"]
      482 CALL                             R6 2 -1
      483 RETURN                           R6 -1
      484 GETTABLEKS                       R3 R0 K2 ["type"]
      486 GETUPVAL                         R5 1
      487 GETTABLEKS                       R4 R5 K17 ["Push"]
      489 JUMPIFNOTEQ                      R3 R4 ; [+8]
      491 GETUPVAL                         R4 4
      492 GETTABLEKS                       R5 R0 K6 ["routeName"]
      494 GETTABLE                         R3 R4 R5
      495 JUMPIFNOTEQKNIL                  R3 ; [+2]
      497 RETURN                           R1 1
      498 LOADB                            R3 1
      499 GETTABLEKS                       R4 R0 K2 ["type"]
      501 GETUPVAL                         R6 3
      502 GETTABLEKS                       R5 R6 K5 ["Navigate"]
      504 JUMPIFEQ                         R4 R5 ; [+10]
      506 GETTABLEKS                       R4 R0 K2 ["type"]
      508 GETUPVAL                         R6 1
      509 GETTABLEKS                       R5 R6 K17 ["Push"]
      511 JUMPIFEQ                         R4 R5 ; [+2]
      513 LOADB                            R3 0 +1
      514 LOADB                            R3 1
      515 JUMPIFNOT                        R3 ; [+83]
      516 GETUPVAL                         R5 7
      517 GETTABLEKS                       R4 R5 K14 ["Dictionary"]
      519 GETTABLEKS                       R3 R4 K34 ["keys"]
      521 GETUPVAL                         R4 4
      522 CALL                             R3 1 1
      523 GETIMPORT                        R4 K20 [ipairs]
      525 MOVE                             R5 R3
      526 CALL                             R4 1 3
      527 FORGPREP_INEXT                   R4
      528 GETUPVAL                         R10 4
      529 GETTABLE                         R9 R10 R8
      530 JUMPIFEQKNIL                     R9 ; [+66]
      532 GETUPVAL                         R10 5
      533 JUMPIFEQ                         R9 R10 ; [+63]
      535 GETTABLEKS                       R10 R9 K7 ["getStateForAction"]
      537 GETUPVAL                         R12 3
      538 GETTABLEKS                       R11 R12 K27 ["init"]
      540 CALL                             R11 0 -1
      541 CALL                             R10 -1 1
      542 GETTABLEKS                       R11 R9 K7 ["getStateForAction"]
      544 MOVE                             R12 R0
      545 MOVE                             R13 R10
      546 CALL                             R11 2 1
      547 LOADNIL                          R12
      548 JUMPIFNOTEQKNIL                  R11 ; [+3]
      550 MOVE                             R12 R10
      551 JUMP                             ; [+3]
      552 JUMPIFEQ                         R11 R10 ; [+2]
      554 MOVE                             R12 R11
      555 JUMPIFNOT                        R12 ; [+41]
      556 GETUPVAL                         R15 7
      557 GETTABLEKS                       R14 R15 K14 ["Dictionary"]
      559 GETTABLEKS                       R13 R14 K15 ["join"]
      561 MOVE                             R14 R12
      562 DUPTABLE                         R15 K30 [{"routeName", "key"}]
      563 SETTABLEKS                       R8 R15 K6 ["routeName"]
      565 GETTABLEKS                       R16 R0 K4 ["key"]
      567 JUMPIF                           R16 ; [+4]
      568 GETUPVAL                         R17 10
      569 GETTABLEKS                       R16 R17 K31 ["generateKey"]
      571 CALL                             R16 0 1
      572 SETTABLEKS                       R16 R15 K4 ["key"]
      574 CALL                             R13 2 1
      575 GETUPVAL                         R16 7
      576 GETTABLEKS                       R15 R16 K14 ["Dictionary"]
      578 GETTABLEKS                       R14 R15 K15 ["join"]
      580 GETUPVAL                         R16 6
      581 GETTABLEKS                       R15 R16 K33 ["push"]
      583 MOVE                             R16 R1
      584 MOVE                             R17 R13
      585 CALL                             R15 2 1
      586 DUPTABLE                         R16 K16 [{"isTransitioning"}]
      587 GETTABLEKS                       R18 R0 K13 ["immediate"]
      589 JUMPIFNOTEQKB                    R18 TRUE ; [+2]
      591 LOADB                            R17 0 +1
      592 LOADB                            R17 1
      593 SETTABLEKS                       R17 R16 K12 ["isTransitioning"]
      595 CALL                             R14 2 -1
      596 RETURN                           R14 -1
      597 FORGLOOP                         R4 2 [inext] ; [-70]
      599 GETTABLEKS                       R3 R0 K2 ["type"]
      601 GETUPVAL                         R5 1
      602 GETTABLEKS                       R4 R5 K35 ["PopToTop"]
      604 JUMPIFNOTEQ                      R3 R4 ; [+46]
      606 GETTABLEKS                       R3 R0 K4 ["key"]
      608 JUMPIFNOT                        R3 ; [+7]
      609 GETTABLEKS                       R3 R1 K4 ["key"]
      611 GETTABLEKS                       R4 R0 K4 ["key"]
      613 JUMPIFEQ                         R3 R4 ; [+2]
      615 RETURN                           R1 1
      616 GETTABLEKS                       R3 R1 K1 ["index"]
      618 LOADN                            R4 1
      619 JUMPIFNOTLE                      R3 R4 ; [+2]
      621 RETURN                           R1 1
      622 GETUPVAL                         R5 7
      623 GETTABLEKS                       R4 R5 K14 ["Dictionary"]
      625 GETTABLEKS                       R3 R4 K15 ["join"]
      627 MOVE                             R4 R1
      628 DUPTABLE                         R5 K26 [{"isTransitioning", "index", "routes"}]
      629 GETTABLEKS                       R7 R0 K13 ["immediate"]
      631 JUMPIFNOTEQKB                    R7 TRUE ; [+2]
      633 LOADB                            R6 0 +1
      634 LOADB                            R6 1
      635 SETTABLEKS                       R6 R5 K12 ["isTransitioning"]
      637 LOADN                            R6 1
      638 SETTABLEKS                       R6 R5 K1 ["index"]
      640 NEWTABLE                         R6 0 1
      642 GETTABLEKS                       R8 R1 K0 ["routes"]
      644 GETTABLEN                        R7 R8 1
      645 SETLIST                          R6 R7 1 [1]
      647 SETTABLEKS                       R6 R5 K0 ["routes"]
      649 CALL                             R3 2 -1
      650 RETURN                           R3 -1
      651 GETTABLEKS                       R3 R0 K2 ["type"]
      653 GETUPVAL                         R5 1
      654 GETTABLEKS                       R4 R5 K36 ["Replace"]
      656 JUMPIFNOTEQ                      R3 R4 ; [+160]
      658 LOADNIL                          R3
      659 GETTABLEKS                       R4 R0 K4 ["key"]
      661 JUMPIF                           R4 ; [+10]
      662 GETTABLEKS                       R5 R1 K0 ["routes"]
      664 LENGTH                           R4 R5
      665 LOADN                            R5 0
      666 JUMPIFNOTLT                      R5 R4 ; [+5]
      668 GETTABLEKS                       R4 R1 K0 ["routes"]
      670 LENGTH                           R3 R4
      671 JUMP                             ; [+16]
      672 GETIMPORT                        R4 K20 [ipairs]
      674 GETTABLEKS                       R5 R1 K0 ["routes"]
      676 CALL                             R4 1 3
      677 FORGPREP_INEXT                   R4
      678 GETTABLEKS                       R9 R8 K4 ["key"]
      680 GETTABLEKS                       R10 R0 K4 ["key"]
      682 JUMPIFNOTEQ                      R9 R10 ; [+3]
      684 MOVE                             R3 R7
      685 JUMP                             ; [+2]
      686 FORGLOOP                         R4 2 [inext] ; [-9]
      688 JUMPIFNOT                        R3 ; [+128]
      689 GETUPVAL                         R5 4
      690 GETTABLEKS                       R6 R0 K6 ["routeName"]
      692 GETTABLE                         R4 R5 R6
      693 NEWTABLE                         R5 0 0
      695 JUMPIFEQKNIL                     R4 ; [+48]
      697 GETUPVAL                         R6 5
      698 JUMPIFEQ                         R4 R6 ; [+45]
      700 GETTABLEKS                       R6 R0 K10 ["action"]
      702 JUMPIF                           R6 ; [+36]
      703 GETUPVAL                         R7 3
      704 GETTABLEKS                       R6 R7 K27 ["init"]
      706 DUPTABLE                         R7 K25 [{"params"}]
      707 GETTABLEKS                       R9 R0 K6 ["routeName"]
      709 GETUPVAL                         R11 9
      710 GETTABLE                         R10 R11 R9
      711 FASTCALL1                        TYPE R10 ; [+3]
      712 MOVE                             R12 R10
      713 GETIMPORT                        R11 K28 [type]
      715 CALL                             R11 1 1
      716 JUMPIFNOTEQKS                    R11 K29 ["table"] ; [+16]
      718 GETTABLEKS                       R11 R10 K21 ["params"]
      720 JUMPIFNOT                        R11 ; [+12]
      721 GETUPVAL                         R13 7
      722 GETTABLEKS                       R12 R13 K14 ["Dictionary"]
      724 GETTABLEKS                       R11 R12 K15 ["join"]
      726 GETTABLEKS                       R12 R10 K21 ["params"]
      728 GETTABLEKS                       R13 R0 K21 ["params"]
      730 CALL                             R11 2 1
      731 MOVE                             R8 R11
      732 JUMP                             ; [+3]
      733 GETTABLEKS                       R8 R0 K21 ["params"]
      735 JUMP                             ; [0]
      736 SETTABLEKS                       R8 R7 K21 ["params"]
      738 CALL                             R6 1 1
      739 GETTABLEKS                       R7 R4 K7 ["getStateForAction"]
      741 MOVE                             R8 R6
      742 CALL                             R7 1 1
      743 MOVE                             R5 R7
      744 GETUPVAL                         R8 7
      745 GETTABLEKS                       R7 R8 K22 ["List"]
      747 GETTABLEKS                       R6 R7 K15 ["join"]
      749 GETTABLEKS                       R7 R1 K0 ["routes"]
      751 CALL                             R6 1 1
      752 GETUPVAL                         R9 7
      753 GETTABLEKS                       R8 R9 K14 ["Dictionary"]
      755 GETTABLEKS                       R7 R8 K15 ["join"]
      757 DUPTABLE                         R8 K25 [{"params"}]
      758 GETTABLEKS                       R10 R0 K6 ["routeName"]
      760 GETUPVAL                         R12 9
      761 GETTABLE                         R11 R12 R10
      762 FASTCALL1                        TYPE R11 ; [+3]
      763 MOVE                             R13 R11
      764 GETIMPORT                        R12 K28 [type]
      766 CALL                             R12 1 1
      767 JUMPIFNOTEQKS                    R12 K29 ["table"] ; [+16]
      769 GETTABLEKS                       R12 R11 K21 ["params"]
      771 JUMPIFNOT                        R12 ; [+12]
      772 GETUPVAL                         R14 7
      773 GETTABLEKS                       R13 R14 K14 ["Dictionary"]
      775 GETTABLEKS                       R12 R13 K15 ["join"]
      777 GETTABLEKS                       R13 R11 K21 ["params"]
      779 GETTABLEKS                       R14 R0 K21 ["params"]
      781 CALL                             R12 2 1
      782 MOVE                             R9 R12
      783 JUMP                             ; [+3]
      784 GETTABLEKS                       R9 R0 K21 ["params"]
      786 JUMP                             ; [0]
      787 SETTABLEKS                       R9 R8 K21 ["params"]
      789 MOVE                             R9 R5
      790 DUPTABLE                         R10 K30 [{"routeName", "key"}]
      791 GETTABLEKS                       R11 R0 K6 ["routeName"]
      793 SETTABLEKS                       R11 R10 K6 ["routeName"]
      795 GETTABLEKS                       R11 R0 K37 ["newKey"]
      797 JUMPIF                           R11 ; [+4]
      798 GETUPVAL                         R12 10
      799 GETTABLEKS                       R11 R12 K31 ["generateKey"]
      801 CALL                             R11 0 1
      802 SETTABLEKS                       R11 R10 K4 ["key"]
      804 CALL                             R7 3 1
      805 SETTABLE                         R7 R6 R3
      806 GETUPVAL                         R9 7
      807 GETTABLEKS                       R8 R9 K14 ["Dictionary"]
      809 GETTABLEKS                       R7 R8 K15 ["join"]
      811 MOVE                             R8 R1
      812 DUPTABLE                         R9 K38 [{"routes"}]
      813 SETTABLEKS                       R6 R9 K0 ["routes"]
      815 CALL                             R7 2 -1
      816 RETURN                           R7 -1
      817 GETTABLEKS                       R3 R0 K2 ["type"]
      819 GETUPVAL                         R5 3
      820 GETTABLEKS                       R4 R5 K39 ["CompleteTransition"]
      822 JUMPIFNOTEQ                      R3 R4 ; [+37]
      824 GETTABLEKS                       R3 R0 K4 ["key"]
      826 JUMPIFEQKNIL                     R3 ; [+7]
      828 GETTABLEKS                       R3 R0 K4 ["key"]
      830 GETTABLEKS                       R4 R1 K4 ["key"]
      832 JUMPIFNOTEQ                      R3 R4 ; [+27]
      834 GETTABLEKS                       R3 R0 K40 ["toChildKey"]
      836 GETTABLEKS                       R6 R1 K0 ["routes"]
      838 GETTABLEKS                       R7 R1 K1 ["index"]
      840 GETTABLE                         R5 R6 R7
      841 GETTABLEKS                       R4 R5 K4 ["key"]
      843 JUMPIFNOTEQ                      R3 R4 ; [+16]
      845 GETTABLEKS                       R3 R1 K12 ["isTransitioning"]
      847 JUMPIFNOT                        R3 ; [+12]
      848 GETUPVAL                         R5 7
      849 GETTABLEKS                       R4 R5 K14 ["Dictionary"]
      851 GETTABLEKS                       R3 R4 K15 ["join"]
      853 MOVE                             R4 R1
      854 DUPTABLE                         R5 K16 [{"isTransitioning"}]
      855 LOADB                            R6 0
      856 SETTABLEKS                       R6 R5 K12 ["isTransitioning"]
      858 CALL                             R3 2 -1
      859 RETURN                           R3 -1
      860 GETTABLEKS                       R3 R0 K2 ["type"]
      862 GETUPVAL                         R5 3
      863 GETTABLEKS                       R4 R5 K9 ["SetParams"]
      865 JUMPIFNOTEQ                      R3 R4 ; [+67]
      867 GETTABLEKS                       R3 R0 K4 ["key"]
      869 LOADNIL                          R4
      870 LOADNIL                          R5
      871 GETIMPORT                        R6 K20 [ipairs]
      873 GETTABLEKS                       R7 R1 K0 ["routes"]
      875 CALL                             R6 1 3
      876 FORGPREP_INEXT                   R6
      877 GETTABLEKS                       R11 R10 K4 ["key"]
      879 JUMPIFNOTEQ                      R11 R3 ; [+4]
      881 MOVE                             R4 R9
      882 MOVE                             R5 R10
      883 JUMP                             ; [+2]
      884 FORGLOOP                         R6 2 [inext] ; [-8]
      886 JUMPIFNOT                        R5 ; [+46]
      887 GETUPVAL                         R8 7
      888 GETTABLEKS                       R7 R8 K14 ["Dictionary"]
      890 GETTABLEKS                       R6 R7 K15 ["join"]
      892 GETTABLEKS                       R7 R5 K21 ["params"]
      894 JUMPIF                           R7 ; [+2]
      895 NEWTABLE                         R7 0 0
      897 GETTABLEKS                       R8 R0 K21 ["params"]
      899 JUMPIF                           R8 ; [+2]
      900 NEWTABLE                         R8 0 0
      902 CALL                             R6 2 1
      903 GETUPVAL                         R9 7
      904 GETTABLEKS                       R8 R9 K22 ["List"]
      906 GETTABLEKS                       R7 R8 K15 ["join"]
      908 GETTABLEKS                       R8 R1 K0 ["routes"]
      910 CALL                             R7 1 1
      911 GETUPVAL                         R10 7
      912 GETTABLEKS                       R9 R10 K14 ["Dictionary"]
      914 GETTABLEKS                       R8 R9 K15 ["join"]
      916 MOVE                             R9 R5
      917 DUPTABLE                         R10 K25 [{"params"}]
      918 SETTABLEKS                       R6 R10 K21 ["params"]
      920 CALL                             R8 2 1
      921 SETTABLE                         R8 R7 R4
      922 GETUPVAL                         R10 7
      923 GETTABLEKS                       R9 R10 K14 ["Dictionary"]
      925 GETTABLEKS                       R8 R9 K15 ["join"]
      927 MOVE                             R9 R1
      928 DUPTABLE                         R10 K38 [{"routes"}]
      929 SETTABLEKS                       R7 R10 K0 ["routes"]
      931 CALL                             R8 2 -1
      932 RETURN                           R8 -1
      933 GETTABLEKS                       R3 R0 K2 ["type"]
      935 GETUPVAL                         R5 1
      936 GETTABLEKS                       R4 R5 K3 ["Reset"]
      938 JUMPIFNOTEQ                      R3 R4 ; [+156]
      940 GETTABLEKS                       R3 R0 K4 ["key"]
      942 JUMPIFEQKNIL                     R3 ; [+8]
      944 GETTABLEKS                       R3 R0 K4 ["key"]
      946 GETTABLEKS                       R4 R1 K4 ["key"]
      948 JUMPIFEQ                         R3 R4 ; [+2]
      950 RETURN                           R1 1
      951 GETTABLEKS                       R3 R0 K41 ["actions"]
      953 JUMPIF                           R3 ; [+2]
      954 NEWTABLE                         R3 0 0
      956 NEWTABLE                         R4 0 0
      958 GETIMPORT                        R5 K20 [ipairs]
      960 MOVE                             R6 R3
      961 CALL                             R5 1 3
      962 FORGPREP_INEXT                   R5
      963 GETUPVAL                         R11 4
      964 GETTABLEKS                       R12 R9 K6 ["routeName"]
      966 GETTABLE                         R10 R11 R12
      967 NEWTABLE                         R11 0 0
      969 JUMPIFEQKNIL                     R10 ; [+48]
      971 GETUPVAL                         R12 5
      972 JUMPIFEQ                         R10 R12 ; [+45]
      974 GETTABLEKS                       R12 R9 K10 ["action"]
      976 JUMPIF                           R12 ; [+36]
      977 GETUPVAL                         R13 3
      978 GETTABLEKS                       R12 R13 K27 ["init"]
      980 DUPTABLE                         R13 K25 [{"params"}]
      981 GETTABLEKS                       R15 R9 K6 ["routeName"]
      983 GETUPVAL                         R17 9
      984 GETTABLE                         R16 R17 R15
      985 FASTCALL1                        TYPE R16 ; [+3]
      986 MOVE                             R18 R16
      987 GETIMPORT                        R17 K28 [type]
      989 CALL                             R17 1 1
      990 JUMPIFNOTEQKS                    R17 K29 ["table"] ; [+16]
      992 GETTABLEKS                       R17 R16 K21 ["params"]
      994 JUMPIFNOT                        R17 ; [+12]
      995 GETUPVAL                         R19 7
      996 GETTABLEKS                       R18 R19 K14 ["Dictionary"]
      998 GETTABLEKS                       R17 R18 K15 ["join"]
     1000 GETTABLEKS                       R18 R16 K21 ["params"]
     1002 GETTABLEKS                       R19 R9 K21 ["params"]
     1004 CALL                             R17 2 1
     1005 MOVE                             R14 R17
     1006 JUMP                             ; [+3]
     1007 GETTABLEKS                       R14 R9 K21 ["params"]
     1009 JUMP                             ; [0]
     1010 SETTABLEKS                       R14 R13 K21 ["params"]
     1012 CALL                             R12 1 1
     1013 GETTABLEKS                       R13 R10 K7 ["getStateForAction"]
     1015 MOVE                             R14 R12
     1016 CALL                             R13 1 1
     1017 MOVE                             R11 R13
     1018 MOVE                             R13 R4
     1019 GETUPVAL                         R16 7
     1020 GETTABLEKS                       R15 R16 K14 ["Dictionary"]
     1022 GETTABLEKS                       R14 R15 K15 ["join"]
     1024 DUPTABLE                         R15 K25 [{"params"}]
     1025 GETTABLEKS                       R17 R9 K6 ["routeName"]
     1027 GETUPVAL                         R19 9
     1028 GETTABLE                         R18 R19 R17
     1029 FASTCALL1                        TYPE R18 ; [+3]
     1030 MOVE                             R20 R18
     1031 GETIMPORT                        R19 K28 [type]
     1033 CALL                             R19 1 1
     1034 JUMPIFNOTEQKS                    R19 K29 ["table"] ; [+16]
     1036 GETTABLEKS                       R19 R18 K21 ["params"]
     1038 JUMPIFNOT                        R19 ; [+12]
     1039 GETUPVAL                         R21 7
     1040 GETTABLEKS                       R20 R21 K14 ["Dictionary"]
     1042 GETTABLEKS                       R19 R20 K15 ["join"]
     1044 GETTABLEKS                       R20 R18 K21 ["params"]
     1046 GETTABLEKS                       R21 R9 K21 ["params"]
     1048 CALL                             R19 2 1
     1049 MOVE                             R16 R19
     1050 JUMP                             ; [+3]
     1051 GETTABLEKS                       R16 R9 K21 ["params"]
     1053 JUMP                             ; [0]
     1054 SETTABLEKS                       R16 R15 K21 ["params"]
     1056 MOVE                             R16 R11
     1057 DUPTABLE                         R17 K30 [{"routeName", "key"}]
     1058 GETTABLEKS                       R18 R9 K6 ["routeName"]
     1060 SETTABLEKS                       R18 R17 K6 ["routeName"]
     1062 GETTABLEKS                       R18 R9 K4 ["key"]
     1064 JUMPIF                           R18 ; [+4]
     1065 GETUPVAL                         R19 10
     1066 GETTABLEKS                       R18 R19 K31 ["generateKey"]
     1068 CALL                             R18 0 1
     1069 SETTABLEKS                       R18 R17 K4 ["key"]
     1071 CALL                             R14 3 -1
     1072 FASTCALL                         TABLE_INSERT ; [+2]
     1073 GETIMPORT                        R12 K43 [table.insert]
     1075 CALL                             R12 -1 0
     1076 FORGLOOP                         R5 2 [inext] ; [-114]
     1078 GETUPVAL                         R7 7
     1079 GETTABLEKS                       R6 R7 K14 ["Dictionary"]
     1081 GETTABLEKS                       R5 R6 K15 ["join"]
     1083 MOVE                             R6 R1
     1084 DUPTABLE                         R7 K44 [{"routes", "index"}]
     1085 SETTABLEKS                       R4 R7 K0 ["routes"]
     1087 GETTABLEKS                       R8 R0 K1 ["index"]
     1089 JUMPIF                           R8 ; [+1]
     1090 LENGTH                           R8 R3
     1091 SETTABLEKS                       R8 R7 K1 ["index"]
     1093 CALL                             R5 2 -1
     1094 RETURN                           R5 -1
     1095 GETTABLEKS                       R3 R0 K2 ["type"]
     1097 GETUPVAL                         R5 3
     1098 GETTABLEKS                       R4 R5 K45 ["Back"]
     1100 JUMPIFEQ                         R3 R4 ; [+8]
     1102 GETTABLEKS                       R3 R0 K2 ["type"]
     1104 GETUPVAL                         R5 1
     1105 GETTABLEKS                       R4 R5 K46 ["Pop"]
     1107 JUMPIFNOTEQ                      R3 R4 ; [+84]
     1109 GETTABLEKS                       R3 R0 K4 ["key"]
     1111 GETTABLEKS                       R4 R0 K47 ["n"]
     1113 GETTABLEKS                       R5 R0 K13 ["immediate"]
     1115 GETTABLEKS                       R6 R1 K1 ["index"]
     1117 GETTABLEKS                       R7 R0 K2 ["type"]
     1119 GETUPVAL                         R9 1
     1120 GETTABLEKS                       R8 R9 K46 ["Pop"]
     1122 JUMPIFNOTEQ                      R7 R8 ; [+15]
     1124 JUMPIFEQKNIL                     R4 ; [+13]
     1126 LOADN                            R8 1
     1127 GETTABLEKS                       R11 R1 K1 ["index"]
     1129 SUB                              R10 R11 R4
     1130 ADDK                             R9 R10 K24 [1]
     1131 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
     1133 GETIMPORT                        R7 K50 [math.max]
     1135 CALL                             R7 2 1
     1136 MOVE                             R6 R7
     1137 JUMP                             ; [+19]
     1138 JUMPIFNOT                        R3 ; [+18]
     1139 GETUPVAL                         R7 2
     1140 JUMPIFEQ                         R3 R7 ; [+16]
     1142 LOADN                            R6 0
     1143 GETIMPORT                        R7 K20 [ipairs]
     1145 GETTABLEKS                       R8 R1 K0 ["routes"]
     1147 CALL                             R7 1 3
     1148 FORGPREP_INEXT                   R7
     1149 GETTABLEKS                       R12 R11 K4 ["key"]
     1151 JUMPIFNOTEQ                      R12 R3 ; [+3]
     1153 MOVE                             R6 R10
     1154 JUMP                             ; [+2]
     1155 FORGLOOP                         R7 2 [inext] ; [-7]
     1157 LOADN                            R7 1
     1158 JUMPIFNOTLT                      R7 R6 ; [+33]
     1160 GETUPVAL                         R9 7
     1161 GETTABLEKS                       R8 R9 K14 ["Dictionary"]
     1163 GETTABLEKS                       R7 R8 K15 ["join"]
     1165 MOVE                             R8 R1
     1166 DUPTABLE                         R9 K51 [{"routes", "index", "isTransitioning"}]
     1167 GETUPVAL                         R12 7
     1168 GETTABLEKS                       R11 R12 K22 ["List"]
     1170 GETTABLEKS                       R10 R11 K23 ["removeRange"]
     1172 GETTABLEKS                       R11 R1 K0 ["routes"]
     1174 MOVE                             R12 R6
     1175 GETTABLEKS                       R14 R1 K0 ["routes"]
     1177 LENGTH                           R13 R14
     1178 CALL                             R10 3 1
     1179 SETTABLEKS                       R10 R9 K0 ["routes"]
     1181 SUBK                             R10 R6 K24 [1]
     1182 SETTABLEKS                       R10 R9 K1 ["index"]
     1184 JUMPIFNOTEQKB                    R5 TRUE ; [+2]
     1186 LOADB                            R10 0 +1
     1187 LOADB                            R10 1
     1188 SETTABLEKS                       R10 R9 K12 ["isTransitioning"]
     1190 CALL                             R7 2 -1
     1191 RETURN                           R7 -1
     1192 GETTABLEKS                       R4 R0 K4 ["key"]
     1194 JUMPIFNOT                        R4 ; [+8]
     1195 GETUPVAL                         R4 6
     1196 GETTABLEKS                       R3 R4 K52 ["indexOf"]
     1198 MOVE                             R4 R1
     1199 GETTABLEKS                       R5 R0 K4 ["key"]
     1201 CALL                             R3 2 1
     1202 JUMPIF                           R3 ; [+1]
     1203 LOADNIL                          R3
     1204 GETTABLEKS                       R7 R1 K0 ["routes"]
     1206 LENGTH                           R6 R7
     1207 LOADN                            R4 1
     1208 LOADN                            R5 255
     1209 FORNPREP                         R4
     1210 GETTABLEKS                       R8 R1 K0 ["routes"]
     1212 GETTABLE                         R7 R8 R6
     1213 GETTABLEKS                       R8 R7 K4 ["key"]
     1215 GETTABLEKS                       R9 R2 K4 ["key"]
     1217 JUMPIFEQ                         R8 R9 ; [+52]
     1219 JUMPIFNOT                        R3 ; [+6]
     1220 GETTABLEKS                       R8 R7 K4 ["key"]
     1222 GETTABLEKS                       R9 R0 K4 ["key"]
     1224 JUMPIFNOTEQ                      R8 R9 ; [+45]
     1226 GETUPVAL                         R9 4
     1227 GETTABLEKS                       R10 R7 K6 ["routeName"]
     1229 GETTABLE                         R8 R9 R10
     1230 JUMPIFEQKNIL                     R8 ; [+39]
     1232 GETUPVAL                         R9 5
     1233 JUMPIFEQ                         R8 R9 ; [+36]
     1235 GETTABLEKS                       R9 R8 K7 ["getStateForAction"]
     1237 MOVE                             R10 R0
     1238 MOVE                             R11 R7
     1239 CALL                             R9 2 1
     1240 JUMPIF                           R9 ; [+1]
     1241 RETURN                           R1 1
     1242 JUMPIFEQ                         R9 R7 ; [+27]
     1244 GETUPVAL                         R11 6
     1245 GETTABLEKS                       R10 R11 K8 ["replaceAt"]
     1247 MOVE                             R11 R1
     1248 GETTABLEKS                       R12 R7 K4 ["key"]
     1250 MOVE                             R13 R9
     1251 LOADB                            R14 1
     1252 GETTABLEKS                       R15 R0 K2 ["type"]
     1254 GETUPVAL                         R17 3
     1255 GETTABLEKS                       R16 R17 K9 ["SetParams"]
     1257 JUMPIFEQ                         R15 R16 ; [+10]
     1259 GETTABLEKS                       R15 R0 K2 ["type"]
     1261 GETUPVAL                         R17 1
     1262 GETTABLEKS                       R16 R17 K39 ["CompleteTransition"]
     1264 JUMPIFEQ                         R15 R16 ; [+2]
     1266 LOADB                            R14 0 +1
     1267 LOADB                            R14 1
     1268 CALL                             R10 4 -1
     1269 RETURN                           R10 -1
     1270 FORNLOOP                         R4
     1271 RETURN                           R1 1

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
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K5 ["Dictionary"]
       19 GETTABLEKS                       R2 R3 K6 ["keys"]
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
       66 GETUPVAL                         R9 2
       67 GETTABLEKS                       R8 R9 K14 ["List"]
       69 GETTABLEKS                       R7 R8 K15 ["find"]
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
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R5 K3 [script]
       18 GETTABLEKS                       R4 R5 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 GETTABLEKS                       R2 R3 K6 ["NavigationActions"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R6 K3 [script]
       29 GETTABLEKS                       R5 R6 K4 ["Parent"]
       31 GETTABLEKS                       R4 R5 K4 ["Parent"]
       33 GETTABLEKS                       R3 R4 K7 ["StackActions"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R8 K3 [script]
       40 GETTABLEKS                       R7 R8 K4 ["Parent"]
       42 GETTABLEKS                       R6 R7 K4 ["Parent"]
       44 GETTABLEKS                       R5 R6 K8 ["utils"]
       46 GETTABLEKS                       R4 R5 K9 ["KeyGenerator"]
       48 CALL                             R3 1 1
       49 GETIMPORT                        R4 K1 [require]
       51 GETIMPORT                        R8 K3 [script]
       53 GETTABLEKS                       R7 R8 K4 ["Parent"]
       55 GETTABLEKS                       R6 R7 K4 ["Parent"]
       57 GETTABLEKS                       R5 R6 K10 ["StateUtils"]
       59 CALL                             R4 1 1
       60 GETIMPORT                        R5 K1 [require]
       62 GETIMPORT                        R8 K3 [script]
       64 GETTABLEKS                       R7 R8 K4 ["Parent"]
       66 GETTABLEKS                       R6 R7 K11 ["getScreenForRouteName"]
       68 CALL                             R5 1 1
       69 GETIMPORT                        R6 K1 [require]
       71 GETIMPORT                        R9 K3 [script]
       73 GETTABLEKS                       R8 R9 K4 ["Parent"]
       75 GETTABLEKS                       R7 R8 K12 ["createConfigGetter"]
       77 CALL                             R6 1 1
       78 GETIMPORT                        R7 K1 [require]
       80 GETIMPORT                        R10 K3 [script]
       82 GETTABLEKS                       R9 R10 K4 ["Parent"]
       84 GETTABLEKS                       R8 R9 K13 ["validateRouteConfigMap"]
       86 CALL                             R7 1 1
       87 GETIMPORT                        R8 K1 [require]
       89 GETIMPORT                        R13 K3 [script]
       91 GETTABLEKS                       R12 R13 K4 ["Parent"]
       93 GETTABLEKS                       R11 R12 K4 ["Parent"]
       95 GETTABLEKS                       R10 R11 K8 ["utils"]
       97 GETTABLEKS                       R9 R10 K14 ["validate"]
       99 CALL                             R8 1 1
      100 GETIMPORT                        R9 K1 [require]
      102 GETIMPORT                        R13 K3 [script]
      104 GETTABLEKS                       R12 R13 K4 ["Parent"]
      106 GETTABLEKS                       R11 R12 K4 ["Parent"]
      108 GETTABLEKS                       R10 R11 K15 ["NavigationSymbol"]
      110 CALL                             R9 1 1
      111 GETIMPORT                        R10 K1 [require]
      113 GETIMPORT                        R14 K3 [script]
      115 GETTABLEKS                       R13 R14 K4 ["Parent"]
      117 GETTABLEKS                       R12 R13 K4 ["Parent"]
      119 GETTABLEKS                       R11 R12 K16 ["NoneSymbol"]
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
