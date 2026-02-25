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
        6 JUMPIFNOTEQ                      R2 R3 ; [+7]
        8 GETTABLEKS                       R2 R0 K2 ["key"]
       10 JUMPIFEQKNIL                     R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R3 K1 [next]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 2
        4 SETTABLE                         R4 R0 R3
        5 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R0 K0 ["routeName"]
        5 GETTABLE                         R2 R3 R4
        6 LOADB                            R3 1
        7 GETTABLEKS                       R4 R0 K1 ["type"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K2 ["Navigate"]
       12 JUMPIFEQ                         R4 R5 ; [+10]
       14 GETTABLEKS                       R4 R0 K1 ["type"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K3 ["Push"]
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 JUMPIFNOT                        R3 ; [+65]
       24 JUMPIFEQKNIL                     R2 ; [+64]
       26 NEWTABLE                         R3 0 0
       28 GETUPVAL                         R4 3
       29 JUMPIFEQ                         R2 R4 ; [+18]
       31 GETTABLEKS                       R4 R0 K4 ["action"]
       33 JUMPIF                           R4 ; [+9]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K5 ["init"]
       37 DUPTABLE                         R5 K7 [{"params"}]
       38 GETTABLEKS                       R6 R0 K6 ["params"]
       40 SETTABLEKS                       R6 R5 K6 ["params"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R2 K8 ["getStateForAction"]
       45 MOVE                             R6 R4
       46 CALL                             R5 1 1
       47 MOVE                             R3 R5
       48 DUPTABLE                         R4 K13 [{"key", "isTransitioning", "index", "routes"}]
       49 LOADK                            R5 K14 ["StackRouterRoot"]
       50 SETTABLEKS                       R5 R4 K9 ["key"]
       52 LOADB                            R5 0
       53 SETTABLEKS                       R5 R4 K10 ["isTransitioning"]
       55 LOADN                            R5 1
       56 SETTABLEKS                       R5 R4 K11 ["index"]
       58 NEWTABLE                         R5 0 1
       60 GETUPVAL                         R7 4
       61 GETTABLEKS                       R6 R7 K15 ["assign"]
       63 DUPTABLE                         R7 K7 [{"params"}]
       64 GETTABLEKS                       R8 R0 K6 ["params"]
       66 SETTABLEKS                       R8 R7 K6 ["params"]
       68 MOVE                             R8 R3
       69 DUPTABLE                         R9 K16 [{"key", "routeName"}]
       70 GETTABLEKS                       R10 R0 K9 ["key"]
       72 JUMPIF                           R10 ; [+4]
       73 GETUPVAL                         R11 5
       74 GETTABLEKS                       R10 R11 K17 ["generateKey"]
       76 CALL                             R10 0 1
       77 SETTABLEKS                       R10 R9 K9 ["key"]
       79 GETTABLEKS                       R10 R0 K0 ["routeName"]
       81 SETTABLEKS                       R10 R9 K0 ["routeName"]
       83 CALL                             R6 3 -1
       84 SETLIST                          R5 R6 -1 [1]
       86 SETTABLEKS                       R5 R4 K12 ["routes"]
       88 RETURN                           R4 1
       89 GETUPVAL                         R3 6
       90 JUMPIFEQKNIL                     R3 ; [+21]
       92 GETUPVAL                         R3 6
       93 GETUPVAL                         R4 3
       94 JUMPIFEQ                         R3 R4 ; [+17]
       96 GETUPVAL                         R4 6
       97 GETTABLEKS                       R3 R4 K8 ["getStateForAction"]
       99 GETUPVAL                         R5 1
      100 GETTABLEKS                       R4 R5 K18 ["navigate"]
      102 DUPTABLE                         R5 K19 [{"routeName", "params"}]
      103 GETUPVAL                         R6 7
      104 SETTABLEKS                       R6 R5 K0 ["routeName"]
      106 GETUPVAL                         R6 8
      107 SETTABLEKS                       R6 R5 K6 ["params"]
      109 CALL                             R4 1 -1
      110 CALL                             R3 -1 1
      111 MOVE                             R1 R3
      112 GETUPVAL                         R4 9
      113 GETUPVAL                         R5 7
      114 GETTABLE                         R3 R4 R5
      115 LOADB                            R4 0
      116 FASTCALL1                        TYPE R3 ; [+3]
      117 MOVE                             R6 R3
      118 GETIMPORT                        R5 K20 [type]
      120 CALL                             R5 1 1
      121 JUMPIFNOTEQKS                    R5 K21 ["table"] ; [+3]
      123 GETTABLEKS                       R4 R3 K6 ["params"]
      125 JUMPIF                           R4 ; [+8]
      126 GETTABLEKS                       R6 R1 K6 ["params"]
      128 JUMPIF                           R6 ; [+5]
      129 GETTABLEKS                       R6 R0 K6 ["params"]
      131 JUMPIF                           R6 ; [+2]
      132 GETUPVAL                         R5 8
      133 JUMPIFNOT                        R5 ; [+26]
      134 GETUPVAL                         R6 4
      135 GETTABLEKS                       R5 R6 K15 ["assign"]
      137 JUMPIFNOT                        R4 ; [+5]
      138 GETIMPORT                        R6 K23 [table.clone]
      140 MOVE                             R7 R4
      141 CALL                             R6 1 1
      142 JUMP                             ; [+2]
      143 NEWTABLE                         R6 0 0
      145 GETTABLEKS                       R7 R1 K6 ["params"]
      147 JUMPIF                           R7 ; [+2]
      148 NEWTABLE                         R7 0 0
      150 GETTABLEKS                       R8 R0 K6 ["params"]
      152 JUMPIF                           R8 ; [+2]
      153 NEWTABLE                         R8 0 0
      155 GETUPVAL                         R9 8
      156 JUMPIF                           R9 ; [+2]
      157 NEWTABLE                         R9 0 0
      159 CALL                             R5 4 1
      160 GETUPVAL                         R7 10
      161 GETTABLEKS                       R6 R7 K24 ["initialRouteKey"]
      163 GETUPVAL                         R8 4
      164 GETTABLEKS                       R7 R8 K15 ["assign"]
      166 GETIMPORT                        R8 K23 [table.clone]
      168 MOVE                             R9 R1
      169 CALL                             R8 1 1
      170 DUPTABLE                         R9 K25 [{"params", "routeName", "key"}]
      171 SETTABLEKS                       R5 R9 K6 ["params"]
      173 GETUPVAL                         R10 7
      174 SETTABLEKS                       R10 R9 K0 ["routeName"]
      176 GETTABLEKS                       R10 R0 K9 ["key"]
      178 JUMPIF                           R10 ; [+6]
      179 MOVE                             R10 R6
      180 JUMPIF                           R10 ; [+4]
      181 GETUPVAL                         R11 5
      182 GETTABLEKS                       R10 R11 K17 ["generateKey"]
      184 CALL                             R10 0 1
      185 SETTABLEKS                       R10 R9 K9 ["key"]
      187 CALL                             R7 2 1
      188 MOVE                             R1 R7
      189 DUPTABLE                         R7 K13 [{"key", "isTransitioning", "index", "routes"}]
      190 LOADK                            R8 K14 ["StackRouterRoot"]
      191 SETTABLEKS                       R8 R7 K9 ["key"]
      193 LOADB                            R8 0
      194 SETTABLEKS                       R8 R7 K10 ["isTransitioning"]
      196 LOADN                            R8 1
      197 SETTABLEKS                       R8 R7 K11 ["index"]
      199 NEWTABLE                         R8 0 1
      201 MOVE                             R9 R1
      202 SETLIST                          R8 R9 1 [1]
      204 SETTABLEKS                       R8 R7 K12 ["routes"]
      206 RETURN                           R7 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["params"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["None"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R0
       11 FASTCALL1                        TYPE R2 ; [+3]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K3 [type]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+16]
       18 GETTABLEKS                       R3 R2 K0 ["params"]
       20 JUMPIFNOT                        R3 ; [+12]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K5 ["assign"]
       24 GETIMPORT                        R4 K7 [table.clone]
       26 GETTABLEKS                       R5 R2 K0 ["params"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R1 K0 ["params"]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1
       33 GETTABLEKS                       R3 R1 K0 ["params"]
       35 JUMPIFNOT                        R3 ; [+9]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K5 ["assign"]
       39 NEWTABLE                         R4 0 0
       41 GETTABLEKS                       R5 R1 K0 ["params"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1
       45 LOADNIL                          R3
       46 RETURN                           R3 1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["pop"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["assign"]
        6 DUPTABLE                         R4 K3 [{"n"}]
        7 SETTABLEKS                       R0 R4 K2 ["n"]
        9 MOVE                             R5 R1
       10 JUMPIF                           R5 ; [+2]
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 -1
       14 CALL                             R2 -1 -1
       15 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["popToTop"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["push"]
        3 DUPTABLE                         R4 K4 [{"routeName", "params", "action"}]
        4 SETTABLEKS                       R0 R4 K1 ["routeName"]
        6 SETTABLEKS                       R1 R4 K2 ["params"]
        8 SETTABLEKS                       R2 R4 K3 ["action"]
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_12:
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
       43 LOADK                            R6 K12 ["params must not be provided to .replace() when specifying a table"]
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 2
       46 JUMPIFEQKNIL                     R2 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 LOADK                            R6 K13 ["Child action must not be provided to .replace() when specifying a table"]
       51 CALL                             R4 2 0
       52 GETUPVAL                         R4 2
       53 JUMPIFEQKNIL                     R3 ; [+2]
       55 LOADB                            R5 0 +1
       56 LOADB                            R5 1
       57 LOADK                            R6 K14 ["newKey must not be provided to .replace() when specifying a table"]
       58 CALL                             R4 2 0
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R4 R5 K3 ["replace"]
       62 MOVE                             R5 R0
       63 CALL                             R4 1 -1
       64 RETURN                           R4 -1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["back"]
        3 DUPTABLE                         R1 K2 [{"key"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["key"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["assign"]
        3 GETIMPORT                        R3 K3 [table.clone]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 CALL                             R4 2 -1
        9 CALL                             R3 -1 1
       10 DUPTABLE                         R4 K10 [{"pop", "popToTop", "push", "replace", "reset", "dismiss"}]
       11 DUPCLOSURE                       R5 K11 [PROTO_9]
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R5 R4 K4 ["pop"]
       16 DUPCLOSURE                       R5 K12 [PROTO_10]
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R5 R4 K5 ["popToTop"]
       20 DUPCLOSURE                       R5 K13 [PROTO_11]
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R5 R4 K6 ["push"]
       24 NEWCLOSURE                       R5 P3
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R5 R4 K7 ["replace"]
       30 NEWCLOSURE                       R5 P4
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R5 R4 K8 ["reset"]
       35 NEWCLOSURE                       R5 P5
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R5 R4 K9 ["dismiss"]
       40 CALL                             R2 2 -1
       41 RETURN                           R2 -1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["routeName"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["routeName"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["key"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["key"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["routeName"]
        3 GETTABLE                         R1 R2 R3
        4 NEWTABLE                         R2 0 0
        6 JUMPIFEQKNIL                     R1 ; [+24]
        8 GETUPVAL                         R3 1
        9 JUMPIFEQ                         R1 R3 ; [+21]
       11 GETTABLEKS                       R3 R0 K1 ["action"]
       13 JUMPIF                           R3 ; [+12]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K2 ["init"]
       17 DUPTABLE                         R4 K4 [{"params"}]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R6 R0 K0 ["routeName"]
       21 MOVE                             R7 R0
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K3 ["params"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K5 ["getStateForAction"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 1
       30 MOVE                             R2 R4
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R3 R4 K6 ["assign"]
       34 DUPTABLE                         R4 K4 [{"params"}]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R6 R0 K0 ["routeName"]
       38 MOVE                             R7 R0
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K3 ["params"]
       42 MOVE                             R5 R2
       43 DUPTABLE                         R6 K8 [{"routeName", "key"}]
       44 GETTABLEKS                       R7 R0 K0 ["routeName"]
       46 SETTABLEKS                       R7 R6 K0 ["routeName"]
       48 GETTABLEKS                       R7 R0 K7 ["key"]
       50 JUMPIF                           R7 ; [+4]
       51 GETUPVAL                         R8 5
       52 GETTABLEKS                       R7 R8 K9 ["generateKey"]
       54 CALL                             R7 0 1
       55 SETTABLEKS                       R7 R6 K7 ["key"]
       57 CALL                             R3 3 -1
       58 RETURN                           R3 -1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_23:
        0 JUMPIF                           R1 ; [+4]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 RETURN                           R2 1
        5 GETTABLEKS                       R3 R1 K0 ["routes"]
        7 GETTABLEKS                       R4 R1 K1 ["index"]
        9 GETTABLE                         R2 R3 R4
       10 LOADB                            R3 0
       11 GETTABLEKS                       R4 R0 K2 ["type"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K3 ["Reset"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+7]
       18 GETTABLEKS                       R4 R0 K4 ["key"]
       20 JUMPIFEQKNIL                     R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIF                           R3 ; [+44]
       25 GETTABLEKS                       R3 R0 K2 ["type"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K5 ["Navigate"]
       30 JUMPIFEQ                         R3 R4 ; [+38]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R5 R2 K6 ["routeName"]
       35 GETTABLE                         R3 R4 R5
       36 JUMPIFEQKNIL                     R3 ; [+117]
       38 GETUPVAL                         R4 4
       39 JUMPIFEQ                         R3 R4 ; [+114]
       41 GETTABLEKS                       R4 R3 K7 ["getStateForAction"]
       43 MOVE                             R5 R0
       44 MOVE                             R6 R2
       45 CALL                             R4 2 1
       46 JUMPIFEQKNIL                     R4 ; [+107]
       48 JUMPIFEQ                         R4 R2 ; [+105]
       50 GETUPVAL                         R6 5
       51 GETTABLEKS                       R5 R6 K8 ["replaceAt"]
       53 MOVE                             R6 R1
       54 GETTABLEKS                       R7 R2 K4 ["key"]
       56 MOVE                             R8 R4
       57 GETTABLEKS                       R10 R0 K2 ["type"]
       59 GETUPVAL                         R12 2
       60 GETTABLEKS                       R11 R12 K9 ["SetParams"]
       62 JUMPIFEQ                         R10 R11 ; [+2]
       64 LOADB                            R9 0 +1
       65 LOADB                            R9 1
       66 CALL                             R5 4 -1
       67 RETURN                           R5 -1
       68 JUMP                             ; [+85]
       69 GETTABLEKS                       R3 R0 K2 ["type"]
       71 GETUPVAL                         R5 2
       72 GETTABLEKS                       R4 R5 K5 ["Navigate"]
       74 JUMPIFNOTEQ                      R3 R4 ; [+79]
       76 GETTABLEKS                       R6 R1 K0 ["routes"]
       78 LENGTH                           R5 R6
       79 LOADN                            R3 1
       80 LOADN                            R4 255
       81 FORNPREP                         R3
       82 GETTABLEKS                       R7 R1 K0 ["routes"]
       84 GETTABLE                         R6 R7 R5
       85 GETUPVAL                         R8 3
       86 GETTABLEKS                       R9 R6 K6 ["routeName"]
       88 GETTABLE                         R7 R8 R9
       89 MOVE                             R8 R0
       90 GETTABLEKS                       R9 R0 K6 ["routeName"]
       92 GETTABLEKS                       R10 R6 K6 ["routeName"]
       94 JUMPIFNOTEQ                      R9 R10 ; [+6]
       96 GETTABLEKS                       R9 R0 K10 ["action"]
       98 JUMPIFNOT                        R9 ; [+2]
       99 GETTABLEKS                       R8 R0 K10 ["action"]
      101 JUMPIFEQKNIL                     R7 ; [+51]
      103 GETUPVAL                         R9 4
      104 JUMPIFEQ                         R7 R9 ; [+48]
      106 GETTABLEKS                       R9 R7 K7 ["getStateForAction"]
      108 MOVE                             R10 R8
      109 MOVE                             R11 R6
      110 CALL                             R9 2 1
      111 JUMPIFEQKNIL                     R9 ; [+3]
      113 JUMPIFEQ                         R9 R6 ; [+39]
      115 GETUPVAL                         R11 5
      116 GETTABLEKS                       R10 R11 K11 ["replaceAndPrune"]
      118 MOVE                             R11 R1
      119 JUMPIFNOT                        R9 ; [+3]
      120 GETTABLEKS                       R12 R9 K4 ["key"]
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R12 R6 K4 ["key"]
      125 OR                               R13 R9 R6
      126 CALL                             R10 3 1
      127 GETTABLEKS                       R11 R1 K12 ["isTransitioning"]
      129 GETTABLEKS                       R12 R1 K1 ["index"]
      131 GETTABLEKS                       R13 R10 K1 ["index"]
      133 JUMPIFEQ                         R12 R13 ; [+7]
      135 GETTABLEKS                       R12 R0 K13 ["immediate"]
      137 JUMPIFNOTEQKB                    R12 TRUE ; [+2]
      139 LOADB                            R11 0 +1
      140 LOADB                            R11 1
      141 GETUPVAL                         R13 6
      142 GETTABLEKS                       R12 R13 K14 ["assign"]
      144 GETIMPORT                        R13 K17 [table.clone]
      146 MOVE                             R14 R10
      147 CALL                             R13 1 1
      148 DUPTABLE                         R14 K18 [{"isTransitioning"}]
      149 SETTABLEKS                       R11 R14 K12 ["isTransitioning"]
      151 CALL                             R12 2 -1
      152 RETURN                           R12 -1
      153 FORNLOOP                         R3
      154 LOADB                            R3 1
      155 GETTABLEKS                       R4 R0 K2 ["type"]
      157 GETUPVAL                         R6 2
      158 GETTABLEKS                       R5 R6 K5 ["Navigate"]
      160 JUMPIFEQ                         R4 R5 ; [+10]
      162 GETTABLEKS                       R4 R0 K2 ["type"]
      164 GETUPVAL                         R6 1
      165 GETTABLEKS                       R5 R6 K19 ["Push"]
      167 JUMPIFEQ                         R4 R5 ; [+2]
      169 LOADB                            R3 0 +1
      170 LOADB                            R3 1
      171 JUMPIFNOT                        R3 ; [+238]
      172 GETUPVAL                         R4 3
      173 GETTABLEKS                       R5 R0 K6 ["routeName"]
      175 GETTABLE                         R3 R4 R5
      176 JUMPIFEQKNIL                     R3 ; [+233]
      178 GETUPVAL                         R4 3
      179 GETTABLEKS                       R5 R0 K6 ["routeName"]
      181 GETTABLE                         R3 R4 R5
      182 GETUPVAL                         R4 7
      183 LOADB                            R5 1
      184 GETTABLEKS                       R6 R0 K2 ["type"]
      186 GETUPVAL                         R8 1
      187 GETTABLEKS                       R7 R8 K19 ["Push"]
      189 JUMPIFNOTEQ                      R6 R7 ; [+7]
      191 GETTABLEKS                       R6 R0 K4 ["key"]
      193 JUMPIFEQKNIL                     R6 ; [+2]
      195 LOADB                            R5 0 +1
      196 LOADB                            R5 1
      197 LOADK                            R6 K20 ["StackRouter does not support key on the push action"]
      198 CALL                             R4 2 0
      199 NEWCLOSURE                       R4 P0
      200 CAPTURE                          VAL R0
      201 GETTABLEKS                       R5 R0 K4 ["key"]
      203 JUMPIFNOT                        R5 ; [+2]
      204 NEWCLOSURE                       R4 P1
      205 CAPTURE                          VAL R0
      206 GETUPVAL                         R6 8
      207 GETTABLEKS                       R5 R6 K21 ["findIndex"]
      209 GETTABLEKS                       R6 R1 K0 ["routes"]
      211 MOVE                             R7 R4
      212 CALL                             R5 2 1
      213 GETTABLEKS                       R6 R0 K2 ["type"]
      215 GETUPVAL                         R8 1
      216 GETTABLEKS                       R7 R8 K19 ["Push"]
      218 JUMPIFEQ                         R6 R7 ; [+98]
      220 LOADN                            R6 0
      221 JUMPIFNOTLT                      R6 R5 ; [+95]
      223 GETTABLEKS                       R6 R1 K1 ["index"]
      225 JUMPIFNOTEQ                      R6 R5 ; [+6]
      227 GETTABLEKS                       R6 R0 K22 ["params"]
      229 JUMPIF                           R6 ; [+2]
      230 LOADNIL                          R6
      231 RETURN                           R6 1
      232 GETUPVAL                         R7 8
      233 GETTABLEKS                       R6 R7 K23 ["slice"]
      235 GETTABLEKS                       R7 R1 K0 ["routes"]
      237 LOADN                            R8 1
      238 ADDK                             R9 R5 K24 [1]
      239 CALL                             R6 3 1
      240 GETTABLEKS                       R7 R0 K22 ["params"]
      242 JUMPIFNOT                        R7 ; [+46]
      243 GETTABLEKS                       R8 R1 K0 ["routes"]
      245 GETTABLE                         R7 R8 R5
      246 GETUPVAL                         R9 6
      247 GETTABLEKS                       R8 R9 K14 ["assign"]
      249 GETIMPORT                        R9 K17 [table.clone]
      251 MOVE                             R10 R7
      252 CALL                             R9 1 1
      253 DUPTABLE                         R10 K25 [{"params"}]
      254 GETTABLEKS                       R12 R0 K22 ["params"]
      256 GETUPVAL                         R14 6
      257 GETTABLEKS                       R13 R14 K26 ["None"]
      259 JUMPIFNOTEQ                      R12 R13 ; [+5]
      261 GETUPVAL                         R12 6
      262 GETTABLEKS                       R11 R12 K26 ["None"]
      264 JUMP                             ; [+20]
      265 GETTABLEKS                       R12 R7 K22 ["params"]
      267 JUMPIF                           R12 ; [+6]
      268 GETIMPORT                        R11 K17 [table.clone]
      270 GETTABLEKS                       R12 R0 K22 ["params"]
      272 CALL                             R11 1 1
      273 JUMP                             ; [+11]
      274 GETUPVAL                         R12 6
      275 GETTABLEKS                       R11 R12 K14 ["assign"]
      277 GETIMPORT                        R12 K17 [table.clone]
      279 GETTABLEKS                       R13 R7 K22 ["params"]
      281 CALL                             R12 1 1
      282 GETTABLEKS                       R13 R0 K22 ["params"]
      284 CALL                             R11 2 1
      285 SETTABLEKS                       R11 R10 K22 ["params"]
      287 CALL                             R8 2 1
      288 SETTABLE                         R8 R6 R5
      289 GETTABLEKS                       R7 R1 K12 ["isTransitioning"]
      291 GETTABLEKS                       R8 R1 K1 ["index"]
      293 JUMPIFEQ                         R8 R5 ; [+7]
      295 GETTABLEKS                       R8 R0 K13 ["immediate"]
      297 JUMPIFNOTEQKB                    R8 TRUE ; [+2]
      299 LOADB                            R7 0 +1
      300 LOADB                            R7 1
      301 GETUPVAL                         R9 6
      302 GETTABLEKS                       R8 R9 K14 ["assign"]
      304 GETIMPORT                        R9 K17 [table.clone]
      306 MOVE                             R10 R1
      307 CALL                             R9 1 1
      308 DUPTABLE                         R10 K27 [{"isTransitioning", "index", "routes"}]
      309 SETTABLEKS                       R7 R10 K12 ["isTransitioning"]
      311 SETTABLEKS                       R5 R10 K1 ["index"]
      313 SETTABLEKS                       R6 R10 K0 ["routes"]
      315 CALL                             R8 2 -1
      316 RETURN                           R8 -1
      317 LOADNIL                          R6
      318 GETUPVAL                         R7 4
      319 JUMPIFEQ                         R3 R7 ; [+48]
      321 GETTABLEKS                       R7 R0 K10 ["action"]
      323 JUMPIF                           R7 ; [+12]
      324 GETUPVAL                         R8 2
      325 GETTABLEKS                       R7 R8 K28 ["init"]
      327 DUPTABLE                         R8 K25 [{"params"}]
      328 GETUPVAL                         R9 9
      329 GETTABLEKS                       R10 R0 K6 ["routeName"]
      331 MOVE                             R11 R0
      332 CALL                             R9 2 1
      333 SETTABLEKS                       R9 R8 K22 ["params"]
      335 CALL                             R7 1 1
      336 GETUPVAL                         R9 6
      337 GETTABLEKS                       R8 R9 K14 ["assign"]
      339 DUPTABLE                         R9 K25 [{"params"}]
      340 GETUPVAL                         R10 9
      341 GETTABLEKS                       R11 R0 K6 ["routeName"]
      343 MOVE                             R12 R0
      344 CALL                             R10 2 1
      345 SETTABLEKS                       R10 R9 K22 ["params"]
      347 GETTABLEKS                       R10 R3 K7 ["getStateForAction"]
      349 MOVE                             R11 R7
      350 CALL                             R10 1 1
      351 DUPTABLE                         R11 K29 [{"routeName", "key"}]
      352 GETTABLEKS                       R12 R0 K6 ["routeName"]
      354 SETTABLEKS                       R12 R11 K6 ["routeName"]
      356 GETTABLEKS                       R12 R0 K4 ["key"]
      358 JUMPIF                           R12 ; [+4]
      359 GETUPVAL                         R13 10
      360 GETTABLEKS                       R12 R13 K30 ["generateKey"]
      362 CALL                             R12 0 1
      363 SETTABLEKS                       R12 R11 K4 ["key"]
      365 CALL                             R8 3 1
      366 MOVE                             R6 R8
      367 JUMP                             ; [+22]
      368 DUPTABLE                         R7 K31 [{"params", "routeName", "key"}]
      369 GETUPVAL                         R8 9
      370 GETTABLEKS                       R9 R0 K6 ["routeName"]
      372 MOVE                             R10 R0
      373 CALL                             R8 2 1
      374 SETTABLEKS                       R8 R7 K22 ["params"]
      376 GETTABLEKS                       R8 R0 K6 ["routeName"]
      378 SETTABLEKS                       R8 R7 K6 ["routeName"]
      380 GETTABLEKS                       R8 R0 K4 ["key"]
      382 JUMPIF                           R8 ; [+4]
      383 GETUPVAL                         R9 10
      384 GETTABLEKS                       R8 R9 K30 ["generateKey"]
      386 CALL                             R8 0 1
      387 SETTABLEKS                       R8 R7 K4 ["key"]
      389 MOVE                             R6 R7
      390 GETUPVAL                         R8 6
      391 GETTABLEKS                       R7 R8 K14 ["assign"]
      393 GETUPVAL                         R9 5
      394 GETTABLEKS                       R8 R9 K32 ["push"]
      396 MOVE                             R9 R1
      397 MOVE                             R10 R6
      398 CALL                             R8 2 1
      399 DUPTABLE                         R9 K18 [{"isTransitioning"}]
      400 GETTABLEKS                       R11 R0 K13 ["immediate"]
      402 JUMPIFNOTEQKB                    R11 TRUE ; [+2]
      404 LOADB                            R10 0 +1
      405 LOADB                            R10 1
      406 SETTABLEKS                       R10 R9 K12 ["isTransitioning"]
      408 CALL                             R7 2 -1
      409 RETURN                           R7 -1
      410 GETTABLEKS                       R3 R0 K2 ["type"]
      412 GETUPVAL                         R5 1
      413 GETTABLEKS                       R4 R5 K19 ["Push"]
      415 JUMPIFNOTEQ                      R3 R4 ; [+8]
      417 GETUPVAL                         R4 3
      418 GETTABLEKS                       R5 R0 K6 ["routeName"]
      420 GETTABLE                         R3 R4 R5
      421 JUMPIFNOTEQKNIL                  R3 ; [+2]
      423 RETURN                           R1 1
      424 LOADB                            R3 1
      425 GETTABLEKS                       R4 R0 K2 ["type"]
      427 GETUPVAL                         R6 2
      428 GETTABLEKS                       R5 R6 K5 ["Navigate"]
      430 JUMPIFEQ                         R4 R5 ; [+10]
      432 GETTABLEKS                       R4 R0 K2 ["type"]
      434 GETUPVAL                         R6 1
      435 GETTABLEKS                       R5 R6 K19 ["Push"]
      437 JUMPIFEQ                         R4 R5 ; [+2]
      439 LOADB                            R3 0 +1
      440 LOADB                            R3 1
      441 JUMPIFNOT                        R3 ; [+74]
      442 GETUPVAL                         R3 3
      443 LOADNIL                          R4
      444 LOADNIL                          R5
      445 FORGPREP                         R3
      446 GETUPVAL                         R9 3
      447 GETTABLE                         R8 R9 R6
      448 JUMPIFEQKNIL                     R8 ; [+65]
      450 GETUPVAL                         R9 4
      451 JUMPIFEQ                         R8 R9 ; [+62]
      453 GETTABLEKS                       R9 R8 K7 ["getStateForAction"]
      455 GETUPVAL                         R11 2
      456 GETTABLEKS                       R10 R11 K28 ["init"]
      458 CALL                             R10 0 -1
      459 CALL                             R9 -1 1
      460 GETTABLEKS                       R10 R8 K7 ["getStateForAction"]
      462 MOVE                             R11 R0
      463 MOVE                             R12 R9
      464 CALL                             R10 2 1
      465 LOADNIL                          R11
      466 JUMPIFNOTEQKNIL                  R10 ; [+3]
      468 MOVE                             R11 R9
      469 JUMP                             ; [+3]
      470 JUMPIFEQ                         R10 R9 ; [+2]
      472 MOVE                             R11 R10
      473 JUMPIFNOT                        R11 ; [+40]
      474 GETUPVAL                         R13 6
      475 GETTABLEKS                       R12 R13 K14 ["assign"]
      477 GETIMPORT                        R13 K17 [table.clone]
      479 MOVE                             R14 R11
      480 CALL                             R13 1 1
      481 DUPTABLE                         R14 K29 [{"routeName", "key"}]
      482 SETTABLEKS                       R6 R14 K6 ["routeName"]
      484 GETTABLEKS                       R15 R0 K4 ["key"]
      486 JUMPIF                           R15 ; [+4]
      487 GETUPVAL                         R16 10
      488 GETTABLEKS                       R15 R16 K30 ["generateKey"]
      490 CALL                             R15 0 1
      491 SETTABLEKS                       R15 R14 K4 ["key"]
      493 CALL                             R12 2 1
      494 GETUPVAL                         R14 6
      495 GETTABLEKS                       R13 R14 K14 ["assign"]
      497 GETUPVAL                         R15 5
      498 GETTABLEKS                       R14 R15 K32 ["push"]
      500 MOVE                             R15 R1
      501 MOVE                             R16 R12
      502 CALL                             R14 2 1
      503 DUPTABLE                         R15 K18 [{"isTransitioning"}]
      504 GETTABLEKS                       R17 R0 K13 ["immediate"]
      506 JUMPIFNOTEQKB                    R17 TRUE ; [+2]
      508 LOADB                            R16 0 +1
      509 LOADB                            R16 1
      510 SETTABLEKS                       R16 R15 K12 ["isTransitioning"]
      512 CALL                             R13 2 -1
      513 RETURN                           R13 -1
      514 FORGLOOP                         R3 1 ; [-69]
      516 GETTABLEKS                       R3 R0 K2 ["type"]
      518 GETUPVAL                         R5 1
      519 GETTABLEKS                       R4 R5 K33 ["PopToTop"]
      521 JUMPIFNOTEQ                      R3 R4 ; [+47]
      523 GETTABLEKS                       R3 R0 K4 ["key"]
      525 JUMPIFNOT                        R3 ; [+7]
      526 GETTABLEKS                       R3 R1 K4 ["key"]
      528 GETTABLEKS                       R4 R0 K4 ["key"]
      530 JUMPIFEQ                         R3 R4 ; [+2]
      532 RETURN                           R1 1
      533 GETTABLEKS                       R3 R1 K1 ["index"]
      535 LOADN                            R4 1
      536 JUMPIFNOTLT                      R4 R3 ; [+31]
      538 GETUPVAL                         R4 6
      539 GETTABLEKS                       R3 R4 K14 ["assign"]
      541 GETIMPORT                        R4 K17 [table.clone]
      543 MOVE                             R5 R1
      544 CALL                             R4 1 1
      545 DUPTABLE                         R5 K27 [{"isTransitioning", "index", "routes"}]
      546 GETTABLEKS                       R7 R0 K13 ["immediate"]
      548 JUMPIFNOTEQKB                    R7 TRUE ; [+2]
      550 LOADB                            R6 0 +1
      551 LOADB                            R6 1
      552 SETTABLEKS                       R6 R5 K12 ["isTransitioning"]
      554 LOADN                            R6 1
      555 SETTABLEKS                       R6 R5 K1 ["index"]
      557 NEWTABLE                         R6 0 1
      559 GETTABLEKS                       R8 R1 K0 ["routes"]
      561 GETTABLEN                        R7 R8 1
      562 SETLIST                          R6 R7 1 [1]
      564 SETTABLEKS                       R6 R5 K0 ["routes"]
      566 CALL                             R3 2 -1
      567 RETURN                           R3 -1
      568 RETURN                           R1 1
      569 GETTABLEKS                       R3 R0 K2 ["type"]
      571 GETUPVAL                         R5 1
      572 GETTABLEKS                       R4 R5 K34 ["Replace"]
      574 JUMPIFNOTEQ                      R3 R4 ; [+104]
      576 LOADNIL                          R3
      577 GETTABLEKS                       R4 R0 K4 ["key"]
      579 JUMPIFNOTEQKNIL                  R4 ; [+11]
      581 GETTABLEKS                       R5 R1 K0 ["routes"]
      583 LENGTH                           R4 R5
      584 LOADN                            R5 0
      585 JUMPIFNOTLT                      R5 R4 ; [+5]
      587 GETTABLEKS                       R4 R1 K0 ["routes"]
      589 LENGTH                           R3 R4
      590 JUMP                             ; [+9]
      591 GETUPVAL                         R5 8
      592 GETTABLEKS                       R4 R5 K21 ["findIndex"]
      594 GETTABLEKS                       R5 R1 K0 ["routes"]
      596 NEWCLOSURE                       R6 P2
      597 CAPTURE                          VAL R0
      598 CALL                             R4 2 1
      599 MOVE                             R3 R4
      600 LOADN                            R4 0
      601 JUMPIFNOTLT                      R4 R3 ; [+77]
      603 GETUPVAL                         R5 3
      604 GETTABLEKS                       R6 R0 K6 ["routeName"]
      606 GETTABLE                         R4 R5 R6
      607 NEWTABLE                         R5 0 0
      609 JUMPIFEQKNIL                     R4 ; [+24]
      611 GETUPVAL                         R6 4
      612 JUMPIFEQ                         R4 R6 ; [+21]
      614 GETTABLEKS                       R6 R0 K10 ["action"]
      616 JUMPIF                           R6 ; [+12]
      617 GETUPVAL                         R7 2
      618 GETTABLEKS                       R6 R7 K28 ["init"]
      620 DUPTABLE                         R7 K25 [{"params"}]
      621 GETUPVAL                         R8 9
      622 GETTABLEKS                       R9 R0 K6 ["routeName"]
      624 MOVE                             R10 R0
      625 CALL                             R8 2 1
      626 SETTABLEKS                       R8 R7 K22 ["params"]
      628 CALL                             R6 1 1
      629 GETTABLEKS                       R7 R4 K7 ["getStateForAction"]
      631 MOVE                             R8 R6
      632 CALL                             R7 1 1
      633 MOVE                             R5 R7
      634 GETIMPORT                        R6 K17 [table.clone]
      636 GETTABLEKS                       R7 R1 K0 ["routes"]
      638 CALL                             R6 1 1
      639 GETUPVAL                         R8 6
      640 GETTABLEKS                       R7 R8 K14 ["assign"]
      642 DUPTABLE                         R8 K25 [{"params"}]
      643 GETUPVAL                         R9 9
      644 GETTABLEKS                       R10 R0 K6 ["routeName"]
      646 MOVE                             R11 R0
      647 CALL                             R9 2 1
      648 SETTABLEKS                       R9 R8 K22 ["params"]
      650 MOVE                             R9 R5
      651 DUPTABLE                         R10 K29 [{"routeName", "key"}]
      652 GETTABLEKS                       R11 R0 K6 ["routeName"]
      654 SETTABLEKS                       R11 R10 K6 ["routeName"]
      656 GETTABLEKS                       R11 R0 K35 ["newKey"]
      658 JUMPIF                           R11 ; [+4]
      659 GETUPVAL                         R12 10
      660 GETTABLEKS                       R11 R12 K30 ["generateKey"]
      662 CALL                             R11 0 1
      663 SETTABLEKS                       R11 R10 K4 ["key"]
      665 CALL                             R7 3 1
      666 SETTABLE                         R7 R6 R3
      667 GETUPVAL                         R8 6
      668 GETTABLEKS                       R7 R8 K14 ["assign"]
      670 GETIMPORT                        R8 K17 [table.clone]
      672 MOVE                             R9 R1
      673 CALL                             R8 1 1
      674 DUPTABLE                         R9 K36 [{"routes"}]
      675 SETTABLEKS                       R6 R9 K0 ["routes"]
      677 CALL                             R7 2 -1
      678 RETURN                           R7 -1
      679 GETTABLEKS                       R3 R0 K2 ["type"]
      681 GETUPVAL                         R5 1
      682 GETTABLEKS                       R4 R5 K37 ["CompleteTransition"]
      684 JUMPIFNOTEQ                      R3 R4 ; [+38]
      686 GETTABLEKS                       R3 R0 K4 ["key"]
      688 JUMPIFEQKNIL                     R3 ; [+7]
      690 GETTABLEKS                       R3 R0 K4 ["key"]
      692 GETTABLEKS                       R4 R1 K4 ["key"]
      694 JUMPIFNOTEQ                      R3 R4 ; [+28]
      696 GETTABLEKS                       R3 R0 K38 ["toChildKey"]
      698 GETTABLEKS                       R6 R1 K0 ["routes"]
      700 GETTABLEKS                       R7 R1 K1 ["index"]
      702 GETTABLE                         R5 R6 R7
      703 GETTABLEKS                       R4 R5 K4 ["key"]
      705 JUMPIFNOTEQ                      R3 R4 ; [+17]
      707 GETTABLEKS                       R3 R1 K12 ["isTransitioning"]
      709 JUMPIFNOT                        R3 ; [+13]
      710 GETUPVAL                         R4 6
      711 GETTABLEKS                       R3 R4 K14 ["assign"]
      713 GETIMPORT                        R4 K17 [table.clone]
      715 MOVE                             R5 R1
      716 CALL                             R4 1 1
      717 DUPTABLE                         R5 K18 [{"isTransitioning"}]
      718 LOADB                            R6 0
      719 SETTABLEKS                       R6 R5 K12 ["isTransitioning"]
      721 CALL                             R3 2 -1
      722 RETURN                           R3 -1
      723 GETTABLEKS                       R3 R0 K2 ["type"]
      725 GETUPVAL                         R5 2
      726 GETTABLEKS                       R4 R5 K9 ["SetParams"]
      728 JUMPIFNOTEQ                      R3 R4 ; [+97]
      730 GETTABLEKS                       R3 R0 K4 ["key"]
      732 GETUPVAL                         R5 8
      733 GETTABLEKS                       R4 R5 K21 ["findIndex"]
      735 GETTABLEKS                       R5 R1 K0 ["routes"]
      737 NEWCLOSURE                       R6 P3
      738 CAPTURE                          VAL R3
      739 CALL                             R4 2 1
      740 LOADN                            R5 0
      741 JUMPIFNOTLT                      R5 R4 ; [+84]
      743 GETTABLEKS                       R6 R1 K0 ["routes"]
      745 GETTABLE                         R5 R6 R4
      746 GETUPVAL                         R7 6
      747 GETTABLEKS                       R6 R7 K26 ["None"]
      749 GETTABLEKS                       R7 R0 K22 ["params"]
      751 GETUPVAL                         R9 6
      752 GETTABLEKS                       R8 R9 K26 ["None"]
      754 JUMPIFEQ                         R7 R8 ; [+42]
      756 GETTABLEKS                       R7 R5 K22 ["params"]
      758 JUMPIFNOT                        R7 ; [+16]
      759 GETTABLEKS                       R7 R0 K22 ["params"]
      761 JUMPIFNOT                        R7 ; [+13]
      762 GETUPVAL                         R8 6
      763 GETTABLEKS                       R7 R8 K14 ["assign"]
      765 GETIMPORT                        R8 K17 [table.clone]
      767 GETTABLEKS                       R9 R5 K22 ["params"]
      769 CALL                             R8 1 1
      770 GETTABLEKS                       R9 R0 K22 ["params"]
      772 CALL                             R7 2 1
      773 MOVE                             R6 R7
      774 JUMP                             ; [+22]
      775 GETTABLEKS                       R7 R5 K22 ["params"]
      777 JUMPIFNOT                        R7 ; [+7]
      778 GETIMPORT                        R7 K17 [table.clone]
      780 GETTABLEKS                       R8 R5 K22 ["params"]
      782 CALL                             R7 1 1
      783 MOVE                             R6 R7
      784 JUMP                             ; [+12]
      785 GETTABLEKS                       R7 R0 K22 ["params"]
      787 JUMPIFNOT                        R7 ; [+7]
      788 GETIMPORT                        R7 K17 [table.clone]
      790 GETTABLEKS                       R8 R0 K22 ["params"]
      792 CALL                             R7 1 1
      793 MOVE                             R6 R7
      794 JUMP                             ; [+2]
      795 NEWTABLE                         R6 0 0
      797 GETIMPORT                        R7 K17 [table.clone]
      799 GETTABLEKS                       R8 R1 K0 ["routes"]
      801 CALL                             R7 1 1
      802 GETUPVAL                         R9 6
      803 GETTABLEKS                       R8 R9 K14 ["assign"]
      805 GETIMPORT                        R9 K17 [table.clone]
      807 MOVE                             R10 R5
      808 CALL                             R9 1 1
      809 DUPTABLE                         R10 K25 [{"params"}]
      810 SETTABLEKS                       R6 R10 K22 ["params"]
      812 CALL                             R8 2 1
      813 SETTABLE                         R8 R7 R4
      814 GETUPVAL                         R9 6
      815 GETTABLEKS                       R8 R9 K14 ["assign"]
      817 GETIMPORT                        R9 K17 [table.clone]
      819 MOVE                             R10 R1
      820 CALL                             R9 1 1
      821 DUPTABLE                         R10 K36 [{"routes"}]
      822 SETTABLEKS                       R7 R10 K0 ["routes"]
      824 CALL                             R8 2 -1
      825 RETURN                           R8 -1
      826 GETTABLEKS                       R3 R0 K2 ["type"]
      828 GETUPVAL                         R5 1
      829 GETTABLEKS                       R4 R5 K3 ["Reset"]
      831 JUMPIFNOTEQ                      R3 R4 ; [+47]
      833 GETTABLEKS                       R3 R0 K4 ["key"]
      835 JUMPIFEQKNIL                     R3 ; [+8]
      837 GETTABLEKS                       R3 R0 K4 ["key"]
      839 GETTABLEKS                       R4 R1 K4 ["key"]
      841 JUMPIFEQ                         R3 R4 ; [+2]
      843 RETURN                           R1 1
      844 GETTABLEKS                       R4 R0 K39 ["actions"]
      846 JUMPIFNOT                        R4 ; [+14]
      847 GETUPVAL                         R4 8
      848 GETTABLEKS                       R3 R4 K40 ["map"]
      850 GETTABLEKS                       R4 R0 K39 ["actions"]
      852 NEWCLOSURE                       R5 P4
      853 CAPTURE                          UPVAL U3
      854 CAPTURE                          UPVAL U4
      855 CAPTURE                          UPVAL U2
      856 CAPTURE                          UPVAL U9
      857 CAPTURE                          UPVAL U6
      858 CAPTURE                          UPVAL U10
      859 CALL                             R3 2 1
      860 JUMP                             ; [+2]
      861 NEWTABLE                         R3 0 0
      863 GETUPVAL                         R5 6
      864 GETTABLEKS                       R4 R5 K14 ["assign"]
      866 GETIMPORT                        R5 K17 [table.clone]
      868 MOVE                             R6 R1
      869 CALL                             R5 1 1
      870 DUPTABLE                         R6 K41 [{"routes", "index"}]
      871 SETTABLEKS                       R3 R6 K0 ["routes"]
      873 GETTABLEKS                       R7 R0 K1 ["index"]
      875 SETTABLEKS                       R7 R6 K1 ["index"]
      877 CALL                             R4 2 -1
      878 RETURN                           R4 -1
      879 GETTABLEKS                       R3 R0 K2 ["type"]
      881 GETUPVAL                         R5 2
      882 GETTABLEKS                       R4 R5 K42 ["Back"]
      884 JUMPIFEQ                         R3 R4 ; [+8]
      886 GETTABLEKS                       R3 R0 K2 ["type"]
      888 GETUPVAL                         R5 1
      889 GETTABLEKS                       R4 R5 K43 ["Pop"]
      891 JUMPIFNOTEQ                      R3 R4 ; [+148]
      893 GETTABLEKS                       R3 R0 K4 ["key"]
      895 GETTABLEKS                       R4 R0 K44 ["n"]
      897 GETTABLEKS                       R5 R0 K13 ["immediate"]
      899 GETTABLEKS                       R6 R0 K45 ["prune"]
      901 GETTABLEKS                       R7 R0 K2 ["type"]
      903 GETUPVAL                         R9 1
      904 GETTABLEKS                       R8 R9 K43 ["Pop"]
      906 JUMPIFNOTEQ                      R7 R8 ; [+68]
      908 JUMPIFNOTEQKB                    R6 FALSE ; [+66]
      910 JUMPIFNOT                        R3 ; [+64]
      911 GETUPVAL                         R8 8
      912 GETTABLEKS                       R7 R8 K21 ["findIndex"]
      914 GETTABLEKS                       R8 R1 K0 ["routes"]
      916 NEWCLOSURE                       R9 P5
      917 CAPTURE                          VAL R3
      918 CALL                             R7 2 1
      919 LOADN                            R8 0
      920 JUMPIFNOTLT                      R8 R7 ; [+119]
      922 ORK                              R10 R4 K24 [1]
      923 SUB                              R9 R7 R10
      924 FASTCALL2K                       MATH_MAX R9 K24 ; [+4]
      926 LOADK                            R10 K24 [1]
      927 GETIMPORT                        R8 K48 [math.max]
      929 CALL                             R8 2 1
      930 GETUPVAL                         R10 8
      931 GETTABLEKS                       R9 R10 K49 ["concat"]
      933 GETUPVAL                         R11 8
      934 GETTABLEKS                       R10 R11 K23 ["slice"]
      936 GETTABLEKS                       R11 R1 K0 ["routes"]
      938 LOADN                            R12 1
      939 ADDK                             R13 R8 K24 [1]
      940 CALL                             R10 3 1
      941 GETUPVAL                         R12 8
      942 GETTABLEKS                       R11 R12 K23 ["slice"]
      944 GETTABLEKS                       R12 R1 K0 ["routes"]
      946 ADDK                             R13 R7 K24 [1]
      947 CALL                             R11 2 -1
      948 CALL                             R9 -1 1
      949 LENGTH                           R10 R9
      950 LOADN                            R11 0
      951 JUMPIFNOTLT                      R11 R10 ; [+88]
      953 GETUPVAL                         R11 6
      954 GETTABLEKS                       R10 R11 K14 ["assign"]
      956 GETIMPORT                        R11 K17 [table.clone]
      958 MOVE                             R12 R1
      959 CALL                             R11 1 1
      960 DUPTABLE                         R12 K50 [{"routes", "index", "isTransitioning"}]
      961 SETTABLEKS                       R9 R12 K0 ["routes"]
      963 LENGTH                           R13 R9
      964 SETTABLEKS                       R13 R12 K1 ["index"]
      966 JUMPIFNOTEQKB                    R5 TRUE ; [+2]
      968 LOADB                            R13 0 +1
      969 LOADB                            R13 1
      970 SETTABLEKS                       R13 R12 K12 ["isTransitioning"]
      972 CALL                             R10 2 -1
      973 RETURN                           R10 -1
      974 JUMP                             ; [+65]
      975 GETTABLEKS                       R7 R1 K1 ["index"]
      977 GETTABLEKS                       R8 R0 K2 ["type"]
      979 GETUPVAL                         R10 1
      980 GETTABLEKS                       R9 R10 K43 ["Pop"]
      982 JUMPIFNOTEQ                      R8 R9 ; [+15]
      984 JUMPIFEQKNIL                     R4 ; [+13]
      986 LOADN                            R9 2
      987 GETTABLEKS                       R12 R1 K1 ["index"]
      989 SUB                              R11 R12 R4
      990 ADDK                             R10 R11 K24 [1]
      991 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      993 GETIMPORT                        R8 K48 [math.max]
      995 CALL                             R8 2 1
      996 MOVE                             R7 R8
      997 JUMP                             ; [+10]
      998 JUMPIFNOT                        R3 ; [+9]
      999 GETUPVAL                         R9 8
     1000 GETTABLEKS                       R8 R9 K21 ["findIndex"]
     1002 GETTABLEKS                       R9 R1 K0 ["routes"]
     1004 NEWCLOSURE                       R10 P6
     1005 CAPTURE                          VAL R3
     1006 CALL                             R8 2 1
     1007 MOVE                             R7 R8
     1008 LOADN                            R8 1
     1009 JUMPIFNOTLT                      R8 R7 ; [+30]
     1011 GETUPVAL                         R9 6
     1012 GETTABLEKS                       R8 R9 K14 ["assign"]
     1014 GETIMPORT                        R9 K17 [table.clone]
     1016 MOVE                             R10 R1
     1017 CALL                             R9 1 1
     1018 DUPTABLE                         R10 K50 [{"routes", "index", "isTransitioning"}]
     1019 GETUPVAL                         R12 8
     1020 GETTABLEKS                       R11 R12 K23 ["slice"]
     1022 GETTABLEKS                       R12 R1 K0 ["routes"]
     1024 LOADN                            R13 1
     1025 MOVE                             R14 R7
     1026 CALL                             R11 3 1
     1027 SETTABLEKS                       R11 R10 K0 ["routes"]
     1029 SUBK                             R11 R7 K24 [1]
     1030 SETTABLEKS                       R11 R10 K1 ["index"]
     1032 JUMPIFNOTEQKB                    R5 TRUE ; [+2]
     1034 LOADB                            R11 0 +1
     1035 LOADB                            R11 1
     1036 SETTABLEKS                       R11 R10 K12 ["isTransitioning"]
     1038 CALL                             R8 2 -1
     1039 RETURN                           R8 -1
     1040 GETTABLEKS                       R4 R0 K4 ["key"]
     1042 JUMPIFNOT                        R4 ; [+8]
     1043 GETUPVAL                         R4 5
     1044 GETTABLEKS                       R3 R4 K51 ["indexOf"]
     1046 MOVE                             R4 R1
     1047 GETTABLEKS                       R5 R0 K4 ["key"]
     1049 CALL                             R3 2 1
     1050 JUMP                             ; [+1]
     1051 LOADNIL                          R3
     1052 GETTABLEKS                       R7 R1 K0 ["routes"]
     1054 LENGTH                           R6 R7
     1055 LOADN                            R4 1
     1056 LOADN                            R5 255
     1057 FORNPREP                         R4
     1058 GETTABLEKS                       R8 R1 K0 ["routes"]
     1060 GETTABLE                         R7 R8 R6
     1061 GETTABLEKS                       R8 R7 K4 ["key"]
     1063 GETTABLEKS                       R9 R2 K4 ["key"]
     1065 JUMPIFEQ                         R8 R9 ; [+39]
     1067 JUMPIFEQKN                       R3 K24 [1] ; [+7]
     1069 GETTABLEKS                       R8 R7 K4 ["key"]
     1071 GETTABLEKS                       R9 R0 K4 ["key"]
     1073 JUMPIFNOTEQ                      R8 R9 ; [+31]
     1075 GETUPVAL                         R9 3
     1076 GETTABLEKS                       R10 R7 K6 ["routeName"]
     1078 GETTABLE                         R8 R9 R10
     1079 JUMPIFEQKNIL                     R8 ; [+25]
     1081 GETUPVAL                         R9 4
     1082 JUMPIFEQ                         R8 R9 ; [+22]
     1084 GETTABLEKS                       R9 R8 K7 ["getStateForAction"]
     1086 MOVE                             R10 R0
     1087 MOVE                             R11 R7
     1088 CALL                             R9 2 1
     1089 JUMPIFNOTEQKNIL                  R9 ; [+2]
     1091 RETURN                           R1 1
     1092 JUMPIFEQ                         R9 R7 ; [+12]
     1094 GETUPVAL                         R11 5
     1095 GETTABLEKS                       R10 R11 K8 ["replaceAt"]
     1097 MOVE                             R11 R1
     1098 GETTABLEKS                       R12 R7 K4 ["key"]
     1100 MOVE                             R13 R9
     1101 GETTABLEKS                       R14 R0 K52 ["preserveFocus"]
     1103 CALL                             R10 4 -1
     1104 RETURN                           R10 -1
     1105 FORNLOOP                         R4
     1106 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["routes"]
        2 GETTABLEKS                       R3 R0 K1 ["index"]
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 MOVE                             R2 R1
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R1 R2
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K0 ["reduce"]
       12 MOVE                             R4 R0
       13 GETUPVAL                         R5 3
       14 NEWTABLE                         R6 0 0
       16 CALL                             R3 3 -1
       17 CALL                             R2 -1 1
       18 GETTABLEKS                       R3 R1 K1 ["order"]
       20 JUMPIF                           R3 ; [+6]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K2 ["map"]
       24 MOVE                             R4 R0
       25 GETUPVAL                         R5 4
       26 CALL                             R3 2 1
       27 NEWTABLE                         R4 0 0
       29 MOVE                             R5 R3
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 FORGPREP                         R5
       33 GETTABLE                         R10 R2 R9
       34 FASTCALL1                        TYPE R10 ; [+3]
       35 MOVE                             R13 R10
       36 GETIMPORT                        R12 K4 [type]
       38 CALL                             R12 1 1
       39 JUMPIFNOTEQKS                    R12 K5 ["table"] ; [+7]
       41 GETTABLEKS                       R12 R10 K6 ["screen"]
       43 JUMPIFNOT                        R12 ; [+3]
       44 GETTABLEKS                       R11 R10 K6 ["screen"]
       46 JUMP                             ; [+1]
       47 MOVE                             R11 R10
       48 FASTCALL1                        TYPE R11 ; [+3]
       49 MOVE                             R13 R11
       50 GETIMPORT                        R12 K4 [type]
       52 CALL                             R12 1 1
       53 JUMPIFNOTEQKS                    R12 K5 ["table"] ; [+8]
       55 GETTABLEKS                       R12 R11 K7 ["router"]
       57 JUMPIFNOT                        R12 ; [+4]
       58 GETTABLEKS                       R12 R11 K7 ["router"]
       60 SETTABLE                         R12 R4 R9
       61 JUMP                             ; [+2]
       62 GETUPVAL                         R12 5
       63 SETTABLE                         R12 R4 R9
       64 FORGLOOP                         R5 2 ; [-32]
       66 GETTABLEKS                       R5 R1 K8 ["initialRouteParams"]
       68 GETTABLEKS                       R6 R1 K9 ["getCustomActionCreators"]
       70 JUMPIF                           R6 ; [+1]
       71 GETUPVAL                         R6 6
       72 GETTABLEKS                       R7 R1 K10 ["initialRouteName"]
       74 JUMPIF                           R7 ; [+1]
       75 GETTABLEN                        R7 R3 1
       76 GETTABLE                         R8 R4 R7
       77 GETUPVAL                         R10 2
       78 GETTABLEKS                       R9 R10 K11 ["indexOf"]
       80 MOVE                             R10 R3
       81 MOVE                             R11 R7
       82 CALL                             R9 2 1
       83 LOADN                            R10 1
       84 JUMPIFNOTLT                      R9 R10 ; [+22]
       86 LOADK                            R10 K12 [""]
       87 MOVE                             R11 R3
       88 LOADNIL                          R12
       89 LOADNIL                          R13
       90 FORGPREP                         R11
       91 MOVE                             R16 R10
       92 MOVE                             R17 R15
       93 LOADK                            R18 K13 [","]
       94 CONCAT                           R10 R16 R18
       95 FORGLOOP                         R11 2 ; [-5]
       97 GETIMPORT                        R11 K15 [error]
       99 GETIMPORT                        R12 K18 [string.format]
      101 LOADK                            R13 K19 ["Invalid initialRouteName '%s'. Must be one of [%s]"]
      102 MOVE                             R14 R7
      103 MOVE                             R15 R10
      104 CALL                             R12 3 1
      105 LOADN                            R13 2
      106 CALL                             R11 2 0
      107 NEWCLOSURE                       R10 P0
      108 CAPTURE                          VAL R4
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          UPVAL U9
      113 CAPTURE                          UPVAL U10
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R2
      118 CAPTURE                          REF R1
      119 NEWCLOSURE                       R11 P1
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          VAL R2
      122 GETUPVAL                         R12 11
      123 MOVE                             R13 R4
      124 MOVE                             R14 R2
      125 MOVE                             R15 R1
      126 CALL                             R12 3 1
      127 GETTABLEKS                       R13 R12 K20 ["getPathAndParamsForRoute"]
      129 GETTABLEKS                       R14 R12 K21 ["getActionForPathAndParams"]
      131 NEWTABLE                         R15 0 0
      133 MOVE                             R16 R4
      134 LOADNIL                          R17
      135 LOADNIL                          R18
      136 FORGPREP                         R16
      137 GETUPVAL                         R21 5
      138 JUMPIFEQ                         R20 R21 ; [+2]
      140 SETTABLE                         R20 R15 R19
      141 FORGLOOP                         R16 2 ; [-5]
      143 DUPTABLE                         R16 K24 [{"childRouters", "_CHILD_IS_SCREEN"}]
      144 SETTABLEKS                       R15 R16 K22 ["childRouters"]
      146 GETUPVAL                         R17 5
      147 SETTABLEKS                       R17 R16 K23 ["_CHILD_IS_SCREEN"]
      149 NEWCLOSURE                       R17 P2
      150 CAPTURE                          UPVAL U12
      151 CAPTURE                          VAL R4
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          UPVAL U13
      154 CAPTURE                          VAL R2
      155 SETTABLEKS                       R17 R16 K25 ["getComponentForState"]
      157 NEWCLOSURE                       R17 P3
      158 CAPTURE                          UPVAL U13
      159 CAPTURE                          VAL R2
      160 SETTABLEKS                       R17 R16 K26 ["getComponentForRouteName"]
      162 NEWCLOSURE                       R17 P4
      163 CAPTURE                          UPVAL U9
      164 CAPTURE                          VAL R6
      165 CAPTURE                          UPVAL U8
      166 CAPTURE                          UPVAL U12
      167 CAPTURE                          UPVAL U7
      168 SETTABLEKS                       R17 R16 K27 ["getActionCreators"]
      170 NEWCLOSURE                       R17 P5
      171 CAPTURE                          VAL R10
      172 CAPTURE                          UPVAL U8
      173 CAPTURE                          UPVAL U7
      174 CAPTURE                          VAL R4
      175 CAPTURE                          UPVAL U5
      176 CAPTURE                          UPVAL U14
      177 CAPTURE                          UPVAL U9
      178 CAPTURE                          UPVAL U12
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          VAL R11
      181 CAPTURE                          UPVAL U10
      182 SETTABLEKS                       R17 R16 K28 ["getStateForAction"]
      184 NEWCLOSURE                       R17 P6
      185 CAPTURE                          VAL R13
      186 SETTABLEKS                       R17 R16 K29 ["getPathAndParamsForState"]
      188 NEWCLOSURE                       R17 P7
      189 CAPTURE                          VAL R14
      190 SETTABLEKS                       R17 R16 K21 ["getActionForPathAndParams"]
      192 GETUPVAL                         R17 15
      193 MOVE                             R18 R2
      194 GETTABLEKS                       R19 R1 K30 ["defaultNavigationOptions"]
      196 CALL                             R17 2 1
      197 SETTABLEKS                       R17 R16 K31 ["getScreenOptions"]
      199 CLOSEUPVALS                      R1
      200 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["NavigationActions"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETIMPORT                        R9 K1 [script]
       27 GETTABLEKS                       R8 R9 K2 ["Parent"]
       29 GETTABLEKS                       R7 R8 K9 ["StackActions"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K4 [require]
       34 GETTABLEKS                       R9 R0 K10 ["utils"]
       36 GETTABLEKS                       R8 R9 K11 ["KeyGenerator"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R9 R0 K12 ["StateUtils"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K4 [require]
       46 GETIMPORT                        R12 K1 [script]
       48 GETTABLEKS                       R11 R12 K2 ["Parent"]
       50 GETTABLEKS                       R10 R11 K13 ["getScreenForRouteName"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETIMPORT                        R13 K1 [script]
       57 GETTABLEKS                       R12 R13 K2 ["Parent"]
       59 GETTABLEKS                       R11 R12 K14 ["createConfigGetter"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETIMPORT                        R14 K1 [script]
       66 GETTABLEKS                       R13 R14 K2 ["Parent"]
       68 GETTABLEKS                       R12 R13 K15 ["validateRouteConfigArray"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETIMPORT                        R15 K1 [script]
       75 GETTABLEKS                       R14 R15 K2 ["Parent"]
       77 GETTABLEKS                       R13 R14 K16 ["validateRouteConfigMap"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K4 [require]
       82 GETTABLEKS                       R15 R0 K10 ["utils"]
       84 GETTABLEKS                       R14 R15 K17 ["invariant"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K4 [require]
       89 GETIMPORT                        R17 K1 [script]
       91 GETTABLEKS                       R16 R17 K2 ["Parent"]
       93 GETTABLEKS                       R15 R16 K18 ["pathUtils"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R14 K19 ["createPathParser"]
       98 GETIMPORT                        R16 K4 [require]
      100 GETIMPORT                        R19 K1 [script]
      102 GETTABLEKS                       R18 R19 K2 ["Parent"]
      104 GETTABLEKS                       R17 R18 K20 ["ChildIsScreenRouterSymbol.roblox"]
      106 CALL                             R16 1 1
      107 DUPCLOSURE                       R17 K21 [PROTO_0]
      108 DUPCLOSURE                       R18 K22 [PROTO_1]
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R6
      111 DUPCLOSURE                       R19 K23 [PROTO_2]
      112 CAPTURE                          VAL R6
      113 DUPCLOSURE                       R20 K24 [PROTO_3]
      114 DUPCLOSURE                       R21 K25 [PROTO_4]
      115 DUPCLOSURE                       R22 K26 [PROTO_26]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R21
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R10
      132 RETURN                           R22 1
