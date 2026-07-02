PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["params"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKNIL                     R3 ; [+3]
        7 GETTABLE                         R3 R2 R0
        8 RETURN                           R3 1
        9 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["dispatch"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["getChildNavigation"]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 MOVE                             R3 R0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U2
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["isFocused"]
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+2]
        9 LOADB                            R1 0
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K1 ["state"]
       13 GETTABLEKS                       R2 R1 K2 ["routes"]
       15 GETTABLEKS                       R3 R1 K3 ["index"]
       17 GETTABLE                         R4 R2 R3
       18 GETTABLEKS                       R4 R4 K4 ["key"]
       20 GETUPVAL                         R5 1
       21 JUMPIFNOTEQ                      R4 R5 ; [+3]
       23 LOADB                            R4 1
       24 RETURN                           R4 1
       25 LOADB                            R4 0
       26 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["findIndex"]
        6 GETTABLEKS                       R5 R0 K1 ["state"]
        8 GETTABLEKS                       R5 R5 K2 ["routes"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R1
       12 CALL                             R4 2 1
       13 LOADN                            R5 1
       14 JUMPIFNOTLT                      R4 R5 ; [+3]
       16 LOADNIL                          R5
       17 RETURN                           R5 1
       18 GETTABLEKS                       R6 R0 K1 ["state"]
       20 GETTABLEKS                       R6 R6 K2 ["routes"]
       22 GETTABLE                         R5 R6 R4
       23 GETTABLE                         R6 R3 R1
       24 JUMPIFNOT                        R6 ; [+5]
       25 GETTABLEKS                       R7 R6 K1 ["state"]
       27 JUMPIFNOTEQ                      R7 R5 ; [+2]
       29 RETURN                           R6 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R8 R0 K3 ["router"]
       33 GETTABLEKS                       R9 R5 K4 ["routeName"]
       35 CALL                             R7 2 1
       36 LOADNIL                          R8
       37 GETTABLEKS                       R9 R5 K2 ["routes"]
       39 JUMPIFNOT                        R9 ; [+13]
       40 GETTABLEKS                       R10 R5 K5 ["index"]
       42 FASTCALL1                        TYPE R10 ; [+2]
       43 GETIMPORT                        R9 K7 [type]
       45 CALL                             R9 1 1
       46 JUMPIFNOTEQKS                    R9 K8 ["number"] ; [+6]
       48 GETTABLEKS                       R9 R5 K2 ["routes"]
       50 GETTABLEKS                       R10 R5 K5 ["index"]
       52 GETTABLE                         R8 R9 R10
       53 JUMPIFNOT                        R7 ; [+7]
       54 GETTABLEKS                       R9 R7 K9 ["getActionCreators"]
       56 MOVE                             R10 R8
       57 GETTABLEKS                       R11 R5 K10 ["key"]
       59 CALL                             R9 2 1
       60 JUMPIF                           R9 ; [+2]
       61 NEWTABLE                         R9 0 0
       63 GETUPVAL                         R10 3
       64 GETTABLEKS                       R10 R10 K11 ["assign"]
       66 GETTABLEKS                       R12 R0 K12 ["actions"]
       68 JUMPIFNOT                        R12 ; [+6]
       69 GETIMPORT                        R11 K15 [table.clone]
       71 GETTABLEKS                       R12 R0 K12 ["actions"]
       73 CALL                             R11 1 1
       74 JUMP                             ; [+2]
       75 NEWTABLE                         R11 0 0
       77 GETTABLEKS                       R12 R0 K3 ["router"]
       79 GETTABLEKS                       R12 R12 K9 ["getActionCreators"]
       81 MOVE                             R13 R5
       82 GETTABLEKS                       R14 R0 K1 ["state"]
       84 GETTABLEKS                       R14 R14 K10 ["key"]
       86 CALL                             R12 2 1
       87 JUMPIF                           R12 ; [+2]
       88 NEWTABLE                         R12 0 0
       90 MOVE                             R13 R9
       91 JUMPIF                           R13 ; [+2]
       92 NEWTABLE                         R13 0 0
       94 GETUPVAL                         R14 4
       95 MOVE                             R15 R5
       96 CALL                             R14 1 1
       97 JUMPIF                           R14 ; [+2]
       98 NEWTABLE                         R14 0 0
      100 CALL                             R10 4 1
      101 NEWTABLE                         R11 0 0
      103 MOVE                             R12 R10
      104 LOADNIL                          R13
      105 LOADNIL                          R14
      106 FORGPREP                         R12
      107 NEWCLOSURE                       R17 P1
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R0
      110 SETTABLE                         R17 R11 R15
      111 FORGLOOP                         R12 2 ; [-5]
      113 LOADB                            R12 1
      114 MOVE                             R13 R2
      115 CALL                             R13 0 1
      116 JUMPIFNOT                        R13 ; [+13]
      117 GETUPVAL                         R14 1
      118 GETTABLEKS                       R14 R14 K16 ["indexOf"]
      120 GETTABLEKS                       R15 R13 K1 ["state"]
      122 GETTABLEKS                       R15 R15 K2 ["routes"]
      124 MOVE                             R16 R5
      125 CALL                             R14 2 1
      126 JUMPIFEQKN                       R14 K17 [1] ; [+2]
      128 LOADB                            R12 0 +1
      129 LOADB                            R12 1
      130 JUMPIFNOT                        R6 ; [+29]
      131 GETTABLEKS                       R14 R6 K18 ["isFirstRouteInParent"]
      133 CALL                             R14 0 1
      134 JUMPIFNOTEQ                      R14 R12 ; [+25]
      136 GETUPVAL                         R14 3
      137 GETTABLEKS                       R14 R14 K11 ["assign"]
      139 GETIMPORT                        R15 K15 [table.clone]
      141 MOVE                             R16 R6
      142 CALL                             R15 1 1
      143 MOVE                             R16 R11
      144 DUPTABLE                         R17 K20 [{"state", "router", "actions", "getParam"}]
      145 SETTABLEKS                       R5 R17 K1 ["state"]
      147 SETTABLEKS                       R7 R17 K3 ["router"]
      149 SETTABLEKS                       R10 R17 K12 ["actions"]
      151 NEWCLOSURE                       R18 P2
      152 CAPTURE                          VAL R5
      153 SETTABLEKS                       R18 R17 K19 ["getParam"]
      155 CALL                             R14 3 1
      156 SETTABLE                         R14 R3 R1
      157 GETTABLE                         R14 R3 R1
      158 CLOSEUPVALS                      R12
      159 RETURN                           R14 1
      160 GETUPVAL                         R14 5
      161 MOVE                             R15 R1
      162 CALL                             R14 1 1
      163 GETUPVAL                         R15 3
      164 GETTABLEKS                       R15 R15 K11 ["assign"]
      166 GETIMPORT                        R16 K15 [table.clone]
      168 MOVE                             R17 R11
      169 CALL                             R16 1 1
      170 DUPTABLE                         R17 K28 [{"state", "router", "actions", "getParam", "getChildNavigation", "isFocused", "isFirstRouteInParent", "dispatch", "getScreenProps", "_dangerouslyGetParent", "addListener", "emit"}]
      171 SETTABLEKS                       R5 R17 K1 ["state"]
      173 SETTABLEKS                       R7 R17 K3 ["router"]
      175 SETTABLEKS                       R10 R17 K12 ["actions"]
      177 NEWCLOSURE                       R18 P2
      178 CAPTURE                          VAL R5
      179 SETTABLEKS                       R18 R17 K19 ["getParam"]
      181 NEWCLOSURE                       R18 P3
      182 CAPTURE                          UPVAL U6
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R2
      186 SETTABLEKS                       R18 R17 K21 ["getChildNavigation"]
      188 NEWCLOSURE                       R18 P4
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R1
      191 SETTABLEKS                       R18 R17 K22 ["isFocused"]
      193 NEWCLOSURE                       R18 P5
      194 CAPTURE                          REF R12
      195 SETTABLEKS                       R18 R17 K18 ["isFirstRouteInParent"]
      197 GETTABLEKS                       R18 R0 K23 ["dispatch"]
      199 SETTABLEKS                       R18 R17 K23 ["dispatch"]
      201 GETTABLEKS                       R18 R0 K24 ["getScreenProps"]
      203 SETTABLEKS                       R18 R17 K24 ["getScreenProps"]
      205 SETTABLEKS                       R2 R17 K25 ["_dangerouslyGetParent"]
      207 GETTABLEKS                       R18 R14 K26 ["addListener"]
      209 SETTABLEKS                       R18 R17 K26 ["addListener"]
      211 GETTABLEKS                       R18 R14 K27 ["emit"]
      213 SETTABLEKS                       R18 R17 K27 ["emit"]
      215 CALL                             R15 2 1
      216 SETTABLE                         R15 R3 R1
      217 GETTABLE                         R15 R3 R1
      218 CLOSEUPVALS                      R12
      219 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K2 ["Parent"]
       22 GETTABLEKS                       R5 R5 K8 ["getEventManager"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R6 R6 K2 ["Parent"]
       31 GETTABLEKS                       R6 R6 K9 ["getChildRouter"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K4 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R7 R7 K2 ["Parent"]
       40 GETTABLEKS                       R7 R7 K10 ["routers"]
       42 GETTABLEKS                       R7 R7 K11 ["getNavigationActionCreators"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R8 R8 K2 ["Parent"]
       51 GETTABLEKS                       R8 R8 K12 ["getChildrenNavigationCache"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K13 [PROTO_1]
       55 DUPCLOSURE                       R9 K14 [PROTO_8]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R9
       63 RETURN                           R9 1
