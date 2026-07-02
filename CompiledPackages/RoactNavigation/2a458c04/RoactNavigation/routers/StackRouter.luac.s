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
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["Navigate"]
       12 JUMPIFEQ                         R4 R5 ; [+10]
       14 GETTABLEKS                       R4 R0 K1 ["type"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K3 ["Push"]
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 JUMPIFNOT                        R3 ; [+56]
       24 JUMPIFEQKNIL                     R2 ; [+55]
       26 NEWTABLE                         R3 0 0
       28 GETUPVAL                         R4 3
       29 JUMPIFEQ                         R2 R4 ; [+18]
       31 GETTABLEKS                       R4 R0 K4 ["action"]
       33 JUMPIF                           R4 ; [+9]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K5 ["init"]
       37 DUPTABLE                         R5 K7 [{"params"}]
       38 GETTABLEKS                       R6 R0 K6 ["params"]
       40 SETTABLEKS                       R6 R5 K6 ["params"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R2 K8 ["getStateForAction"]
       45 MOVE                             R6 R4
       46 CALL                             R5 1 1
       47 MOVE                             R3 R5
       48 DUPTABLE                         R4 K16 [{["key"] = "StackRouterRoot", ["isTransitioning"] = False, ["index"] = 1, ["routes"]}]
       49 NEWTABLE                         R5 0 1
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R6 R6 K17 ["assign"]
       54 DUPTABLE                         R7 K7 [{"params"}]
       55 GETTABLEKS                       R8 R0 K6 ["params"]
       57 SETTABLEKS                       R8 R7 K6 ["params"]
       59 MOVE                             R8 R3
       60 DUPTABLE                         R9 K18 [{"key", "routeName"}]
       61 GETTABLEKS                       R10 R0 K9 ["key"]
       63 JUMPIF                           R10 ; [+4]
       64 GETUPVAL                         R10 5
       65 GETTABLEKS                       R10 R10 K19 ["generateKey"]
       67 CALL                             R10 0 1
       68 SETTABLEKS                       R10 R9 K9 ["key"]
       70 GETTABLEKS                       R10 R0 K0 ["routeName"]
       72 SETTABLEKS                       R10 R9 K0 ["routeName"]
       74 CALL                             R6 3 -1
       75 SETLIST                          R5 R6 -1 [1]
       77 SETTABLEKS                       R5 R4 K15 ["routes"]
       79 RETURN                           R4 1
       80 GETUPVAL                         R3 6
       81 JUMPIFEQKNIL                     R3 ; [+21]
       83 GETUPVAL                         R3 6
       84 GETUPVAL                         R4 3
       85 JUMPIFEQ                         R3 R4 ; [+17]
       87 GETUPVAL                         R3 6
       88 GETTABLEKS                       R3 R3 K8 ["getStateForAction"]
       90 GETUPVAL                         R4 1
       91 GETTABLEKS                       R4 R4 K20 ["navigate"]
       93 DUPTABLE                         R5 K21 [{"routeName", "params"}]
       94 GETUPVAL                         R6 7
       95 SETTABLEKS                       R6 R5 K0 ["routeName"]
       97 GETUPVAL                         R6 8
       98 SETTABLEKS                       R6 R5 K6 ["params"]
      100 CALL                             R4 1 -1
      101 CALL                             R3 -1 1
      102 MOVE                             R1 R3
      103 GETUPVAL                         R4 9
      104 GETUPVAL                         R5 7
      105 GETTABLE                         R3 R4 R5
      106 LOADB                            R4 0
      107 FASTCALL1                        TYPE R3 ; [+3]
      108 MOVE                             R6 R3
      109 GETIMPORT                        R5 K22 [type]
      111 CALL                             R5 1 1
      112 JUMPIFNOTEQKS                    R5 K23 ["table"] ; [+3]
      114 GETTABLEKS                       R4 R3 K6 ["params"]
      116 JUMPIF                           R4 ; [+8]
      117 GETTABLEKS                       R6 R1 K6 ["params"]
      119 JUMPIF                           R6 ; [+5]
      120 GETTABLEKS                       R6 R0 K6 ["params"]
      122 JUMPIF                           R6 ; [+2]
      123 GETUPVAL                         R5 8
      124 JUMPIFNOT                        R5 ; [+26]
      125 GETUPVAL                         R5 4
      126 GETTABLEKS                       R5 R5 K17 ["assign"]
      128 JUMPIFNOT                        R4 ; [+5]
      129 GETIMPORT                        R6 K25 [table.clone]
      131 MOVE                             R7 R4
      132 CALL                             R6 1 1
      133 JUMP                             ; [+2]
      134 NEWTABLE                         R6 0 0
      136 GETTABLEKS                       R7 R1 K6 ["params"]
      138 JUMPIF                           R7 ; [+2]
      139 NEWTABLE                         R7 0 0
      141 GETTABLEKS                       R8 R0 K6 ["params"]
      143 JUMPIF                           R8 ; [+2]
      144 NEWTABLE                         R8 0 0
      146 GETUPVAL                         R9 8
      147 JUMPIF                           R9 ; [+2]
      148 NEWTABLE                         R9 0 0
      150 CALL                             R5 4 1
      151 GETUPVAL                         R6 10
      152 GETTABLEKS                       R6 R6 K26 ["initialRouteKey"]
      154 GETUPVAL                         R7 4
      155 GETTABLEKS                       R7 R7 K17 ["assign"]
      157 GETIMPORT                        R8 K25 [table.clone]
      159 MOVE                             R9 R1
      160 CALL                             R8 1 1
      161 DUPTABLE                         R9 K27 [{"params", "routeName", "key"}]
      162 SETTABLEKS                       R5 R9 K6 ["params"]
      164 GETUPVAL                         R10 7
      165 SETTABLEKS                       R10 R9 K0 ["routeName"]
      167 GETTABLEKS                       R10 R0 K9 ["key"]
      169 JUMPIF                           R10 ; [+6]
      170 MOVE                             R10 R6
      171 JUMPIF                           R10 ; [+4]
      172 GETUPVAL                         R10 5
      173 GETTABLEKS                       R10 R10 K19 ["generateKey"]
      175 CALL                             R10 0 1
      176 SETTABLEKS                       R10 R9 K9 ["key"]
      178 CALL                             R7 2 1
      179 MOVE                             R1 R7
      180 DUPTABLE                         R7 K16 [{["key"] = "StackRouterRoot", ["isTransitioning"] = False, ["index"] = 1, ["routes"]}]
      181 NEWTABLE                         R8 0 1
      183 MOVE                             R9 R1
      184 SETLIST                          R8 R9 1 [1]
      186 SETTABLEKS                       R8 R7 K15 ["routes"]
      188 RETURN                           R7 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["params"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["None"]
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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["assign"]
       24 GETIMPORT                        R4 K7 [table.clone]
       26 GETTABLEKS                       R5 R2 K0 ["params"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R1 K0 ["params"]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1
       33 GETTABLEKS                       R3 R1 K0 ["params"]
       35 JUMPIFNOT                        R3 ; [+9]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K5 ["assign"]
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pop"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["assign"]
        6 DUPTABLE                         R4 K3 [{"n"}]
        7 SETTABLEKS                       R0 R4 K2 ["n"]
        9 MOVE                             R5 R1
       10 JUMPIF                           R5 ; [+2]
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 -1
       14 CALL                             R2 -1 -1
       15 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["popToTop"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["push"]
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
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K3 ["replace"]
       62 MOVE                             R5 R0
       63 CALL                             R4 1 -1
       64 RETURN                           R4 -1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["back"]
        3 DUPTABLE                         R1 K2 [{"key"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["key"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assign"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["routeName"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["key"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["key"]
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
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K2 ["init"]
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
       31 GETUPVAL                         R3 4
       32 GETTABLEKS                       R3 R3 K6 ["assign"]
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
       51 GETUPVAL                         R7 5
       52 GETTABLEKS                       R7 R7 K9 ["generateKey"]
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
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["Reset"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+7]
       18 GETTABLEKS                       R4 R0 K4 ["key"]
       20 JUMPIFEQKNIL                     R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIF                           R3 ; [+44]
       25 GETTABLEKS                       R3 R0 K2 ["type"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K5 ["Navigate"]
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
       50 GETUPVAL                         R5 5
       51 GETTABLEKS                       R5 R5 K8 ["replaceAt"]
       53 MOVE                             R6 R1
       54 GETTABLEKS                       R7 R2 K4 ["key"]
       56 MOVE                             R8 R4
       57 GETTABLEKS                       R10 R0 K2 ["type"]
       59 GETUPVAL                         R11 2
       60 GETTABLEKS                       R11 R11 K9 ["SetParams"]
       62 JUMPIFEQ                         R10 R11 ; [+2]
       64 LOADB                            R9 0 +1
       65 LOADB                            R9 1
       66 CALL                             R5 4 -1
       67 RETURN                           R5 -1
       68 JUMP                             ; [+85]
       69 GETTABLEKS                       R3 R0 K2 ["type"]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K5 ["Navigate"]
       74 JUMPIFNOTEQ                      R3 R4 ; [+79]
       76 GETTABLEKS                       R6 R1 K0 ["routes"]
       78 LENGTH                           R5 R6
       79 LOADN                            R3 1
       80 LOADN                            R4 -1
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
      115 GETUPVAL                         R10 5
      116 GETTABLEKS                       R10 R10 K11 ["replaceAndPrune"]
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
      141 GETUPVAL                         R12 6
      142 GETTABLEKS                       R12 R12 K14 ["assign"]
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
      157 GETUPVAL                         R5 2
      158 GETTABLEKS                       R5 R5 K5 ["Navigate"]
      160 JUMPIFEQ                         R4 R5 ; [+10]
      162 GETTABLEKS                       R4 R0 K2 ["type"]
      164 GETUPVAL                         R5 1
      165 GETTABLEKS                       R5 R5 K19 ["Push"]
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
      186 GETUPVAL                         R7 1
      187 GETTABLEKS                       R7 R7 K19 ["Push"]
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
      206 GETUPVAL                         R5 8
      207 GETTABLEKS                       R5 R5 K21 ["findIndex"]
      209 GETTABLEKS                       R6 R1 K0 ["routes"]
      211 MOVE                             R7 R4
      212 CALL                             R5 2 1
      213 GETTABLEKS                       R6 R0 K2 ["type"]
      215 GETUPVAL                         R7 1
      216 GETTABLEKS                       R7 R7 K19 ["Push"]
      218 JUMPIFEQ                         R6 R7 ; [+98]
      220 LOADN                            R6 0
      221 JUMPIFNOTLT                      R6 R5 ; [+95]
      223 GETTABLEKS                       R6 R1 K1 ["index"]
      225 JUMPIFNOTEQ                      R6 R5 ; [+6]
      227 GETTABLEKS                       R6 R0 K22 ["params"]
      229 JUMPIF                           R6 ; [+2]
      230 LOADNIL                          R6
      231 RETURN                           R6 1
      232 GETUPVAL                         R6 8
      233 GETTABLEKS                       R6 R6 K23 ["slice"]
      235 GETTABLEKS                       R7 R1 K0 ["routes"]
      237 LOADN                            R8 1
      238 ADDK                             R9 R5 K24 [1]
      239 CALL                             R6 3 1
      240 GETTABLEKS                       R7 R0 K22 ["params"]
      242 JUMPIFNOT                        R7 ; [+46]
      243 GETTABLEKS                       R8 R1 K0 ["routes"]
      245 GETTABLE                         R7 R8 R5
      246 GETUPVAL                         R8 6
      247 GETTABLEKS                       R8 R8 K14 ["assign"]
      249 GETIMPORT                        R9 K17 [table.clone]
      251 MOVE                             R10 R7
      252 CALL                             R9 1 1
      253 DUPTABLE                         R10 K25 [{"params"}]
      254 GETTABLEKS                       R12 R0 K22 ["params"]
      256 GETUPVAL                         R13 6
      257 GETTABLEKS                       R13 R13 K26 ["None"]
      259 JUMPIFNOTEQ                      R12 R13 ; [+5]
      261 GETUPVAL                         R11 6
      262 GETTABLEKS                       R11 R11 K26 ["None"]
      264 JUMP                             ; [+20]
      265 GETTABLEKS                       R12 R7 K22 ["params"]
      267 JUMPIF                           R12 ; [+6]
      268 GETIMPORT                        R11 K17 [table.clone]
      270 GETTABLEKS                       R12 R0 K22 ["params"]
      272 CALL                             R11 1 1
      273 JUMP                             ; [+11]
      274 GETUPVAL                         R11 6
      275 GETTABLEKS                       R11 R11 K14 ["assign"]
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
      301 GETUPVAL                         R8 6
      302 GETTABLEKS                       R8 R8 K14 ["assign"]
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
      324 GETUPVAL                         R7 2
      325 GETTABLEKS                       R7 R7 K28 ["init"]
      327 DUPTABLE                         R8 K25 [{"params"}]
      328 GETUPVAL                         R9 9
      329 GETTABLEKS                       R10 R0 K6 ["routeName"]
      331 MOVE                             R11 R0
      332 CALL                             R9 2 1
      333 SETTABLEKS                       R9 R8 K22 ["params"]
      335 CALL                             R7 1 1
      336 GETUPVAL                         R8 6
      337 GETTABLEKS                       R8 R8 K14 ["assign"]
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
      359 GETUPVAL                         R12 10
      360 GETTABLEKS                       R12 R12 K30 ["generateKey"]
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
      383 GETUPVAL                         R8 10
      384 GETTABLEKS                       R8 R8 K30 ["generateKey"]
      386 CALL                             R8 0 1
      387 SETTABLEKS                       R8 R7 K4 ["key"]
      389 MOVE                             R6 R7
      390 GETUPVAL                         R7 6
      391 GETTABLEKS                       R7 R7 K14 ["assign"]
      393 GETUPVAL                         R8 5
      394 GETTABLEKS                       R8 R8 K32 ["push"]
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
      412 GETUPVAL                         R4 1
      413 GETTABLEKS                       R4 R4 K19 ["Push"]
      415 JUMPIFNOTEQ                      R3 R4 ; [+8]
      417 GETUPVAL                         R4 3
      418 GETTABLEKS                       R5 R0 K6 ["routeName"]
      420 GETTABLE                         R3 R4 R5
      421 JUMPIFNOTEQKNIL                  R3 ; [+2]
      423 RETURN                           R1 1
      424 LOADB                            R3 1
      425 GETTABLEKS                       R4 R0 K2 ["type"]
      427 GETUPVAL                         R5 2
      428 GETTABLEKS                       R5 R5 K5 ["Navigate"]
      430 JUMPIFEQ                         R4 R5 ; [+10]
      432 GETTABLEKS                       R4 R0 K2 ["type"]
      434 GETUPVAL                         R5 1
      435 GETTABLEKS                       R5 R5 K19 ["Push"]
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
      455 GETUPVAL                         R10 2
      456 GETTABLEKS                       R10 R10 K28 ["init"]
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
      474 GETUPVAL                         R12 6
      475 GETTABLEKS                       R12 R12 K14 ["assign"]
      477 GETIMPORT                        R13 K17 [table.clone]
      479 MOVE                             R14 R11
      480 CALL                             R13 1 1
      481 DUPTABLE                         R14 K29 [{"routeName", "key"}]
      482 SETTABLEKS                       R6 R14 K6 ["routeName"]
      484 GETTABLEKS                       R15 R0 K4 ["key"]
      486 JUMPIF                           R15 ; [+4]
      487 GETUPVAL                         R15 10
      488 GETTABLEKS                       R15 R15 K30 ["generateKey"]
      490 CALL                             R15 0 1
      491 SETTABLEKS                       R15 R14 K4 ["key"]
      493 CALL                             R12 2 1
      494 GETUPVAL                         R13 6
      495 GETTABLEKS                       R13 R13 K14 ["assign"]
      497 GETUPVAL                         R14 5
      498 GETTABLEKS                       R14 R14 K32 ["push"]
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
      518 GETUPVAL                         R4 1
      519 GETTABLEKS                       R4 R4 K33 ["PopToTop"]
      521 JUMPIFNOTEQ                      R3 R4 ; [+44]
      523 GETTABLEKS                       R3 R0 K4 ["key"]
      525 JUMPIFNOT                        R3 ; [+7]
      526 GETTABLEKS                       R3 R1 K4 ["key"]
      528 GETTABLEKS                       R4 R0 K4 ["key"]
      530 JUMPIFEQ                         R3 R4 ; [+2]
      532 RETURN                           R1 1
      533 GETTABLEKS                       R3 R1 K1 ["index"]
      535 LOADN                            R4 1
      536 JUMPIFNOTLT                      R4 R3 ; [+28]
      538 GETUPVAL                         R3 6
      539 GETTABLEKS                       R3 R3 K14 ["assign"]
      541 GETIMPORT                        R4 K17 [table.clone]
      543 MOVE                             R5 R1
      544 CALL                             R4 1 1
      545 DUPTABLE                         R5 K34 [{["isTransitioning"], ["index"] = 1, [3]}]
      546 GETTABLEKS                       R7 R0 K13 ["immediate"]
      548 JUMPIFNOTEQKB                    R7 TRUE ; [+2]
      550 LOADB                            R6 0 +1
      551 LOADB                            R6 1
      552 SETTABLEKS                       R6 R5 K12 ["isTransitioning"]
      554 NEWTABLE                         R6 0 1
      556 GETTABLEKS                       R8 R1 K0 ["routes"]
      558 GETTABLEN                        R7 R8 1
      559 SETLIST                          R6 R7 1 [1]
      561 SETTABLEKS                       R6 R5 K0 ["routes"]
      563 CALL                             R3 2 -1
      564 RETURN                           R3 -1
      565 RETURN                           R1 1
      566 GETTABLEKS                       R3 R0 K2 ["type"]
      568 GETUPVAL                         R4 1
      569 GETTABLEKS                       R4 R4 K35 ["Replace"]
      571 JUMPIFNOTEQ                      R3 R4 ; [+104]
      573 LOADNIL                          R3
      574 GETTABLEKS                       R4 R0 K4 ["key"]
      576 JUMPIFNOTEQKNIL                  R4 ; [+11]
      578 GETTABLEKS                       R5 R1 K0 ["routes"]
      580 LENGTH                           R4 R5
      581 LOADN                            R5 0
      582 JUMPIFNOTLT                      R5 R4 ; [+5]
      584 GETTABLEKS                       R4 R1 K0 ["routes"]
      586 LENGTH                           R3 R4
      587 JUMP                             ; [+9]
      588 GETUPVAL                         R4 8
      589 GETTABLEKS                       R4 R4 K21 ["findIndex"]
      591 GETTABLEKS                       R5 R1 K0 ["routes"]
      593 NEWCLOSURE                       R6 P2
      594 CAPTURE                          VAL R0
      595 CALL                             R4 2 1
      596 MOVE                             R3 R4
      597 LOADN                            R4 0
      598 JUMPIFNOTLT                      R4 R3 ; [+77]
      600 GETUPVAL                         R5 3
      601 GETTABLEKS                       R6 R0 K6 ["routeName"]
      603 GETTABLE                         R4 R5 R6
      604 NEWTABLE                         R5 0 0
      606 JUMPIFEQKNIL                     R4 ; [+24]
      608 GETUPVAL                         R6 4
      609 JUMPIFEQ                         R4 R6 ; [+21]
      611 GETTABLEKS                       R6 R0 K10 ["action"]
      613 JUMPIF                           R6 ; [+12]
      614 GETUPVAL                         R6 2
      615 GETTABLEKS                       R6 R6 K28 ["init"]
      617 DUPTABLE                         R7 K25 [{"params"}]
      618 GETUPVAL                         R8 9
      619 GETTABLEKS                       R9 R0 K6 ["routeName"]
      621 MOVE                             R10 R0
      622 CALL                             R8 2 1
      623 SETTABLEKS                       R8 R7 K22 ["params"]
      625 CALL                             R6 1 1
      626 GETTABLEKS                       R7 R4 K7 ["getStateForAction"]
      628 MOVE                             R8 R6
      629 CALL                             R7 1 1
      630 MOVE                             R5 R7
      631 GETIMPORT                        R6 K17 [table.clone]
      633 GETTABLEKS                       R7 R1 K0 ["routes"]
      635 CALL                             R6 1 1
      636 GETUPVAL                         R7 6
      637 GETTABLEKS                       R7 R7 K14 ["assign"]
      639 DUPTABLE                         R8 K25 [{"params"}]
      640 GETUPVAL                         R9 9
      641 GETTABLEKS                       R10 R0 K6 ["routeName"]
      643 MOVE                             R11 R0
      644 CALL                             R9 2 1
      645 SETTABLEKS                       R9 R8 K22 ["params"]
      647 MOVE                             R9 R5
      648 DUPTABLE                         R10 K29 [{"routeName", "key"}]
      649 GETTABLEKS                       R11 R0 K6 ["routeName"]
      651 SETTABLEKS                       R11 R10 K6 ["routeName"]
      653 GETTABLEKS                       R11 R0 K36 ["newKey"]
      655 JUMPIF                           R11 ; [+4]
      656 GETUPVAL                         R11 10
      657 GETTABLEKS                       R11 R11 K30 ["generateKey"]
      659 CALL                             R11 0 1
      660 SETTABLEKS                       R11 R10 K4 ["key"]
      662 CALL                             R7 3 1
      663 SETTABLE                         R7 R6 R3
      664 GETUPVAL                         R7 6
      665 GETTABLEKS                       R7 R7 K14 ["assign"]
      667 GETIMPORT                        R8 K17 [table.clone]
      669 MOVE                             R9 R1
      670 CALL                             R8 1 1
      671 DUPTABLE                         R9 K37 [{"routes"}]
      672 SETTABLEKS                       R6 R9 K0 ["routes"]
      674 CALL                             R7 2 -1
      675 RETURN                           R7 -1
      676 GETTABLEKS                       R3 R0 K2 ["type"]
      678 GETUPVAL                         R4 1
      679 GETTABLEKS                       R4 R4 K38 ["CompleteTransition"]
      681 JUMPIFNOTEQ                      R3 R4 ; [+35]
      683 GETTABLEKS                       R3 R0 K4 ["key"]
      685 JUMPIFEQKNIL                     R3 ; [+7]
      687 GETTABLEKS                       R3 R0 K4 ["key"]
      689 GETTABLEKS                       R4 R1 K4 ["key"]
      691 JUMPIFNOTEQ                      R3 R4 ; [+25]
      693 GETTABLEKS                       R3 R0 K39 ["toChildKey"]
      695 GETTABLEKS                       R5 R1 K0 ["routes"]
      697 GETTABLEKS                       R6 R1 K1 ["index"]
      699 GETTABLE                         R4 R5 R6
      700 GETTABLEKS                       R4 R4 K4 ["key"]
      702 JUMPIFNOTEQ                      R3 R4 ; [+14]
      704 GETTABLEKS                       R3 R1 K12 ["isTransitioning"]
      706 JUMPIFNOT                        R3 ; [+10]
      707 GETUPVAL                         R3 6
      708 GETTABLEKS                       R3 R3 K14 ["assign"]
      710 GETIMPORT                        R4 K17 [table.clone]
      712 MOVE                             R5 R1
      713 CALL                             R4 1 1
      714 DUPTABLE                         R5 K41 [{["isTransitioning"] = False}]
      715 CALL                             R3 2 -1
      716 RETURN                           R3 -1
      717 GETTABLEKS                       R3 R0 K2 ["type"]
      719 GETUPVAL                         R4 2
      720 GETTABLEKS                       R4 R4 K9 ["SetParams"]
      722 JUMPIFNOTEQ                      R3 R4 ; [+97]
      724 GETTABLEKS                       R3 R0 K4 ["key"]
      726 GETUPVAL                         R4 8
      727 GETTABLEKS                       R4 R4 K21 ["findIndex"]
      729 GETTABLEKS                       R5 R1 K0 ["routes"]
      731 NEWCLOSURE                       R6 P3
      732 CAPTURE                          VAL R3
      733 CALL                             R4 2 1
      734 LOADN                            R5 0
      735 JUMPIFNOTLT                      R5 R4 ; [+84]
      737 GETTABLEKS                       R6 R1 K0 ["routes"]
      739 GETTABLE                         R5 R6 R4
      740 GETUPVAL                         R6 6
      741 GETTABLEKS                       R6 R6 K26 ["None"]
      743 GETTABLEKS                       R7 R0 K22 ["params"]
      745 GETUPVAL                         R8 6
      746 GETTABLEKS                       R8 R8 K26 ["None"]
      748 JUMPIFEQ                         R7 R8 ; [+42]
      750 GETTABLEKS                       R7 R5 K22 ["params"]
      752 JUMPIFNOT                        R7 ; [+16]
      753 GETTABLEKS                       R7 R0 K22 ["params"]
      755 JUMPIFNOT                        R7 ; [+13]
      756 GETUPVAL                         R7 6
      757 GETTABLEKS                       R7 R7 K14 ["assign"]
      759 GETIMPORT                        R8 K17 [table.clone]
      761 GETTABLEKS                       R9 R5 K22 ["params"]
      763 CALL                             R8 1 1
      764 GETTABLEKS                       R9 R0 K22 ["params"]
      766 CALL                             R7 2 1
      767 MOVE                             R6 R7
      768 JUMP                             ; [+22]
      769 GETTABLEKS                       R7 R5 K22 ["params"]
      771 JUMPIFNOT                        R7 ; [+7]
      772 GETIMPORT                        R7 K17 [table.clone]
      774 GETTABLEKS                       R8 R5 K22 ["params"]
      776 CALL                             R7 1 1
      777 MOVE                             R6 R7
      778 JUMP                             ; [+12]
      779 GETTABLEKS                       R7 R0 K22 ["params"]
      781 JUMPIFNOT                        R7 ; [+7]
      782 GETIMPORT                        R7 K17 [table.clone]
      784 GETTABLEKS                       R8 R0 K22 ["params"]
      786 CALL                             R7 1 1
      787 MOVE                             R6 R7
      788 JUMP                             ; [+2]
      789 NEWTABLE                         R6 0 0
      791 GETIMPORT                        R7 K17 [table.clone]
      793 GETTABLEKS                       R8 R1 K0 ["routes"]
      795 CALL                             R7 1 1
      796 GETUPVAL                         R8 6
      797 GETTABLEKS                       R8 R8 K14 ["assign"]
      799 GETIMPORT                        R9 K17 [table.clone]
      801 MOVE                             R10 R5
      802 CALL                             R9 1 1
      803 DUPTABLE                         R10 K25 [{"params"}]
      804 SETTABLEKS                       R6 R10 K22 ["params"]
      806 CALL                             R8 2 1
      807 SETTABLE                         R8 R7 R4
      808 GETUPVAL                         R8 6
      809 GETTABLEKS                       R8 R8 K14 ["assign"]
      811 GETIMPORT                        R9 K17 [table.clone]
      813 MOVE                             R10 R1
      814 CALL                             R9 1 1
      815 DUPTABLE                         R10 K37 [{"routes"}]
      816 SETTABLEKS                       R7 R10 K0 ["routes"]
      818 CALL                             R8 2 -1
      819 RETURN                           R8 -1
      820 GETTABLEKS                       R3 R0 K2 ["type"]
      822 GETUPVAL                         R4 1
      823 GETTABLEKS                       R4 R4 K3 ["Reset"]
      825 JUMPIFNOTEQ                      R3 R4 ; [+47]
      827 GETTABLEKS                       R3 R0 K4 ["key"]
      829 JUMPIFEQKNIL                     R3 ; [+8]
      831 GETTABLEKS                       R3 R0 K4 ["key"]
      833 GETTABLEKS                       R4 R1 K4 ["key"]
      835 JUMPIFEQ                         R3 R4 ; [+2]
      837 RETURN                           R1 1
      838 GETTABLEKS                       R4 R0 K42 ["actions"]
      840 JUMPIFNOT                        R4 ; [+14]
      841 GETUPVAL                         R3 8
      842 GETTABLEKS                       R3 R3 K43 ["map"]
      844 GETTABLEKS                       R4 R0 K42 ["actions"]
      846 NEWCLOSURE                       R5 P4
      847 CAPTURE                          UPVAL U3
      848 CAPTURE                          UPVAL U4
      849 CAPTURE                          UPVAL U2
      850 CAPTURE                          UPVAL U9
      851 CAPTURE                          UPVAL U6
      852 CAPTURE                          UPVAL U10
      853 CALL                             R3 2 1
      854 JUMP                             ; [+2]
      855 NEWTABLE                         R3 0 0
      857 GETUPVAL                         R4 6
      858 GETTABLEKS                       R4 R4 K14 ["assign"]
      860 GETIMPORT                        R5 K17 [table.clone]
      862 MOVE                             R6 R1
      863 CALL                             R5 1 1
      864 DUPTABLE                         R6 K44 [{"routes", "index"}]
      865 SETTABLEKS                       R3 R6 K0 ["routes"]
      867 GETTABLEKS                       R7 R0 K1 ["index"]
      869 SETTABLEKS                       R7 R6 K1 ["index"]
      871 CALL                             R4 2 -1
      872 RETURN                           R4 -1
      873 GETTABLEKS                       R3 R0 K2 ["type"]
      875 GETUPVAL                         R4 2
      876 GETTABLEKS                       R4 R4 K45 ["Back"]
      878 JUMPIFEQ                         R3 R4 ; [+8]
      880 GETTABLEKS                       R3 R0 K2 ["type"]
      882 GETUPVAL                         R4 1
      883 GETTABLEKS                       R4 R4 K46 ["Pop"]
      885 JUMPIFNOTEQ                      R3 R4 ; [+148]
      887 GETTABLEKS                       R3 R0 K4 ["key"]
      889 GETTABLEKS                       R4 R0 K47 ["n"]
      891 GETTABLEKS                       R5 R0 K13 ["immediate"]
      893 GETTABLEKS                       R6 R0 K48 ["prune"]
      895 GETTABLEKS                       R7 R0 K2 ["type"]
      897 GETUPVAL                         R8 1
      898 GETTABLEKS                       R8 R8 K46 ["Pop"]
      900 JUMPIFNOTEQ                      R7 R8 ; [+68]
      902 JUMPIFNOTEQKB                    R6 FALSE ; [+66]
      904 JUMPIFNOT                        R3 ; [+64]
      905 GETUPVAL                         R7 8
      906 GETTABLEKS                       R7 R7 K21 ["findIndex"]
      908 GETTABLEKS                       R8 R1 K0 ["routes"]
      910 NEWCLOSURE                       R9 P5
      911 CAPTURE                          VAL R3
      912 CALL                             R7 2 1
      913 LOADN                            R8 0
      914 JUMPIFNOTLT                      R8 R7 ; [+119]
      916 ORK                              R10 R4 K24 [1]
      917 SUB                              R9 R7 R10
      918 FASTCALL2K                       MATH_MAX R9 K24 ; [+4]
      920 LOADK                            R10 K24 [1]
      921 GETIMPORT                        R8 K51 [math.max]
      923 CALL                             R8 2 1
      924 GETUPVAL                         R9 8
      925 GETTABLEKS                       R9 R9 K52 ["concat"]
      927 GETUPVAL                         R10 8
      928 GETTABLEKS                       R10 R10 K23 ["slice"]
      930 GETTABLEKS                       R11 R1 K0 ["routes"]
      932 LOADN                            R12 1
      933 ADDK                             R13 R8 K24 [1]
      934 CALL                             R10 3 1
      935 GETUPVAL                         R11 8
      936 GETTABLEKS                       R11 R11 K23 ["slice"]
      938 GETTABLEKS                       R12 R1 K0 ["routes"]
      940 ADDK                             R13 R7 K24 [1]
      941 CALL                             R11 2 -1
      942 CALL                             R9 -1 1
      943 LENGTH                           R10 R9
      944 LOADN                            R11 0
      945 JUMPIFNOTLT                      R11 R10 ; [+88]
      947 GETUPVAL                         R10 6
      948 GETTABLEKS                       R10 R10 K14 ["assign"]
      950 GETIMPORT                        R11 K17 [table.clone]
      952 MOVE                             R12 R1
      953 CALL                             R11 1 1
      954 DUPTABLE                         R12 K53 [{"routes", "index", "isTransitioning"}]
      955 SETTABLEKS                       R9 R12 K0 ["routes"]
      957 LENGTH                           R13 R9
      958 SETTABLEKS                       R13 R12 K1 ["index"]
      960 JUMPIFNOTEQKB                    R5 TRUE ; [+2]
      962 LOADB                            R13 0 +1
      963 LOADB                            R13 1
      964 SETTABLEKS                       R13 R12 K12 ["isTransitioning"]
      966 CALL                             R10 2 -1
      967 RETURN                           R10 -1
      968 JUMP                             ; [+65]
      969 GETTABLEKS                       R7 R1 K1 ["index"]
      971 GETTABLEKS                       R8 R0 K2 ["type"]
      973 GETUPVAL                         R9 1
      974 GETTABLEKS                       R9 R9 K46 ["Pop"]
      976 JUMPIFNOTEQ                      R8 R9 ; [+15]
      978 JUMPIFEQKNIL                     R4 ; [+13]
      980 LOADN                            R9 2
      981 GETTABLEKS                       R12 R1 K1 ["index"]
      983 SUB                              R11 R12 R4
      984 ADDK                             R10 R11 K24 [1]
      985 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      987 GETIMPORT                        R8 K51 [math.max]
      989 CALL                             R8 2 1
      990 MOVE                             R7 R8
      991 JUMP                             ; [+10]
      992 JUMPIFNOT                        R3 ; [+9]
      993 GETUPVAL                         R8 8
      994 GETTABLEKS                       R8 R8 K21 ["findIndex"]
      996 GETTABLEKS                       R9 R1 K0 ["routes"]
      998 NEWCLOSURE                       R10 P6
      999 CAPTURE                          VAL R3
     1000 CALL                             R8 2 1
     1001 MOVE                             R7 R8
     1002 LOADN                            R8 1
     1003 JUMPIFNOTLT                      R8 R7 ; [+30]
     1005 GETUPVAL                         R8 6
     1006 GETTABLEKS                       R8 R8 K14 ["assign"]
     1008 GETIMPORT                        R9 K17 [table.clone]
     1010 MOVE                             R10 R1
     1011 CALL                             R9 1 1
     1012 DUPTABLE                         R10 K53 [{"routes", "index", "isTransitioning"}]
     1013 GETUPVAL                         R11 8
     1014 GETTABLEKS                       R11 R11 K23 ["slice"]
     1016 GETTABLEKS                       R12 R1 K0 ["routes"]
     1018 LOADN                            R13 1
     1019 MOVE                             R14 R7
     1020 CALL                             R11 3 1
     1021 SETTABLEKS                       R11 R10 K0 ["routes"]
     1023 SUBK                             R11 R7 K24 [1]
     1024 SETTABLEKS                       R11 R10 K1 ["index"]
     1026 JUMPIFNOTEQKB                    R5 TRUE ; [+2]
     1028 LOADB                            R11 0 +1
     1029 LOADB                            R11 1
     1030 SETTABLEKS                       R11 R10 K12 ["isTransitioning"]
     1032 CALL                             R8 2 -1
     1033 RETURN                           R8 -1
     1034 GETTABLEKS                       R4 R0 K4 ["key"]
     1036 JUMPIFNOT                        R4 ; [+8]
     1037 GETUPVAL                         R3 5
     1038 GETTABLEKS                       R3 R3 K54 ["indexOf"]
     1040 MOVE                             R4 R1
     1041 GETTABLEKS                       R5 R0 K4 ["key"]
     1043 CALL                             R3 2 1
     1044 JUMP                             ; [+1]
     1045 LOADNIL                          R3
     1046 GETTABLEKS                       R7 R1 K0 ["routes"]
     1048 LENGTH                           R6 R7
     1049 LOADN                            R4 1
     1050 LOADN                            R5 -1
     1051 FORNPREP                         R4
     1052 GETTABLEKS                       R8 R1 K0 ["routes"]
     1054 GETTABLE                         R7 R8 R6
     1055 GETTABLEKS                       R8 R7 K4 ["key"]
     1057 GETTABLEKS                       R9 R2 K4 ["key"]
     1059 JUMPIFEQ                         R8 R9 ; [+39]
     1061 JUMPIFEQKN                       R3 K24 [1] ; [+7]
     1063 GETTABLEKS                       R8 R7 K4 ["key"]
     1065 GETTABLEKS                       R9 R0 K4 ["key"]
     1067 JUMPIFNOTEQ                      R8 R9 ; [+31]
     1069 GETUPVAL                         R9 3
     1070 GETTABLEKS                       R10 R7 K6 ["routeName"]
     1072 GETTABLE                         R8 R9 R10
     1073 JUMPIFEQKNIL                     R8 ; [+25]
     1075 GETUPVAL                         R9 4
     1076 JUMPIFEQ                         R8 R9 ; [+22]
     1078 GETTABLEKS                       R9 R8 K7 ["getStateForAction"]
     1080 MOVE                             R10 R0
     1081 MOVE                             R11 R7
     1082 CALL                             R9 2 1
     1083 JUMPIFNOTEQKNIL                  R9 ; [+2]
     1085 RETURN                           R1 1
     1086 JUMPIFEQ                         R9 R7 ; [+12]
     1088 GETUPVAL                         R10 5
     1089 GETTABLEKS                       R10 R10 K8 ["replaceAt"]
     1091 MOVE                             R11 R1
     1092 GETTABLEKS                       R12 R7 K4 ["key"]
     1094 MOVE                             R13 R9
     1095 GETTABLEKS                       R14 R0 K55 ["preserveFocus"]
     1097 CALL                             R10 4 -1
     1098 RETURN                           R10 -1
     1099 FORNLOOP                         R4
     1100 RETURN                           R1 1

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
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K0 ["reduce"]
       12 MOVE                             R4 R0
       13 GETUPVAL                         R5 3
       14 NEWTABLE                         R6 0 0
       16 CALL                             R3 3 -1
       17 CALL                             R2 -1 1
       18 GETTABLEKS                       R3 R1 K1 ["order"]
       20 JUMPIF                           R3 ; [+6]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["map"]
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
       77 GETUPVAL                         R9 2
       78 GETTABLEKS                       R9 R9 K11 ["indexOf"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R7 R7 K2 ["Parent"]
       29 GETTABLEKS                       R7 R7 K9 ["StackActions"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K4 [require]
       34 GETTABLEKS                       R8 R0 K10 ["utils"]
       36 GETTABLEKS                       R8 R8 K11 ["KeyGenerator"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R9 R0 K12 ["StateUtils"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K4 [require]
       46 GETIMPORT                        R10 K1 [script]
       48 GETTABLEKS                       R10 R10 K2 ["Parent"]
       50 GETTABLEKS                       R10 R10 K13 ["getScreenForRouteName"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETIMPORT                        R11 K1 [script]
       57 GETTABLEKS                       R11 R11 K2 ["Parent"]
       59 GETTABLEKS                       R11 R11 K14 ["createConfigGetter"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETIMPORT                        R12 K1 [script]
       66 GETTABLEKS                       R12 R12 K2 ["Parent"]
       68 GETTABLEKS                       R12 R12 K15 ["validateRouteConfigArray"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETIMPORT                        R13 K1 [script]
       75 GETTABLEKS                       R13 R13 K2 ["Parent"]
       77 GETTABLEKS                       R13 R13 K16 ["validateRouteConfigMap"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K4 [require]
       82 GETTABLEKS                       R14 R0 K10 ["utils"]
       84 GETTABLEKS                       R14 R14 K17 ["invariant"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K4 [require]
       89 GETIMPORT                        R15 K1 [script]
       91 GETTABLEKS                       R15 R15 K2 ["Parent"]
       93 GETTABLEKS                       R15 R15 K18 ["pathUtils"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R14 K19 ["createPathParser"]
       98 GETIMPORT                        R16 K4 [require]
      100 GETIMPORT                        R18 K1 [script]
      102 GETTABLEKS                       R18 R18 K2 ["Parent"]
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
