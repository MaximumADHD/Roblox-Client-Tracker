PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R2
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETTABLEKS                       R4 R3 K0 ["pattern"]
        5 JUMPIFNOTEQKS                    R4 K1 [".*"] ; [+2]
        7 RETURN                           R0 1
        8 GETTABLEKS                       R4 R3 K2 ["name"]
       10 LOADNIL                          R5
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETIMPORT                        R6 K4 [pcall]
       14 GETUPVAL                         R7 1
       15 MOVE                             R8 R1
       16 CALL                             R6 2 2
       17 JUMPIFNOT                        R6 ; [+2]
       18 MOVE                             R5 R7
       19 JUMP                             ; [0]
       20 OR                               R6 R5 R1
       21 SETTABLE                         R6 R0 R4
       22 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["reduce"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["slice"]
        6 MOVE                             R5 R1
        7 LOADN                            R6 2
        8 CALL                             R4 2 1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 GETIMPORT                        R6 K4 [table.clone]
       14 MOVE                             R7 R0
       15 CALL                             R6 1 -1
       16 CALL                             R3 -1 1
       17 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["pattern"]
        2 JUMPIFEQKS                       R2 K1 [".*"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K1 ["findIndex"]
        3 MOVE                             R5 R1
        4 DUPCLOSURE                       R6 K2 [PROTO_2]
        5 CALL                             R4 2 1
        6 ADDK                             R3 R4 K0 [1]
        7 GETTABLE                         R2 R0 R3
        8 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isArray"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+21]
        6 LENGTH                           R2 R1
        7 JUMPIFNOTEQKN                    R2 K1 [1] ; [+3]
        9 GETTABLEN                        R2 R1 1
       10 RETURN                           R2 1
       11 MOVE                             R2 R1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K2 ["startsWith"]
       18 MOVE                             R8 R0
       19 MOVE                             R9 R6
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+1]
       22 RETURN                           R6 1
       23 FORGLOOP                         R2 2 ; [-9]
       25 LOADNIL                          R2
       26 RETURN                           R2 1
       27 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["^(.*)\\?(.*)$"]
        2 CALL                             R2 1 1
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["exec"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 GETTABLEN                        R3 R2 2
        9 JUMP                             ; [+1]
       10 MOVE                             R3 R0
       11 JUMPIFNOT                        R2 ; [+2]
       12 GETTABLEN                        R4 R2 3
       13 JUMP                             ; [+2]
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["parse"]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 2
       22 MOVE                             R7 R3
       23 MOVE                             R8 R1
       24 CALL                             R6 2 1
       25 JUMPIFEQKNIL                     R6 ; [+3]
       27 JUMPIFNOTEQKS                    R6 K3 [""] ; [+2]
       29 LOADK                            R6 K4 ["://"]
       30 GETIMPORT                        R8 K7 [string.split]
       32 MOVE                             R9 R3
       33 MOVE                             R10 R6
       34 CALL                             R8 2 1
       35 GETTABLEN                        R7 R8 2
       36 JUMPIFNOTEQKNIL                  R7 ; [+2]
       38 MOVE                             R7 R3
       39 JUMPIFNOTEQKS                    R7 K8 ["/"] ; [+2]
       41 LOADK                            R7 K3 [""]
       42 LOADN                            R10 -1
       43 LOADN                            R11 -1
       44 FASTCALL3                        STRING_SUB R7 R10 R11
       46 MOVE                             R9 R7
       47 GETIMPORT                        R8 K10 [string.sub]
       49 CALL                             R8 3 1
       50 JUMPIFNOTEQKS                    R8 K8 ["/"] ; [+10]
       52 LOADN                            R10 1
       53 LOADN                            R11 -2
       54 FASTCALL3                        STRING_SUB R7 R10 R11
       56 MOVE                             R9 R7
       57 GETIMPORT                        R8 K10 [string.sub]
       59 CALL                             R8 3 1
       60 MOVE                             R7 R8
       61 DUPTABLE                         R8 K13 [{"path", "params"}]
       62 SETTABLEKS                       R7 R8 K11 ["path"]
       64 SETTABLEKS                       R5 R8 K12 ["params"]
       66 RETURN                           R8 1

PROTO_6:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADK                            R0 K0 [""]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEN                        R7 R6 1
       12 GETTABLEN                        R8 R6 2
       13 GETTABLEKS                       R9 R8 K1 ["exactRe"]
       15 GETTABLEKS                       R10 R8 K2 ["exactReKeys"]
       17 GETTABLEKS                       R11 R8 K3 ["extendedPathRe"]
       19 GETTABLEKS                       R12 R8 K4 ["extendedPathReKeys"]
       21 GETUPVAL                         R14 1
       22 GETTABLE                         R13 R14 R7
       23 MOVE                             R14 R9
       24 JUMPIFNOT                        R14 ; [+4]
       25 MOVE                             R16 R0
       26 NAMECALL                         R14 R9 K5 ["exec"]
       28 CALL                             R14 2 1
       29 JUMPIFNOT                        R14 ; [+47]
       30 GETTABLEKS                       R15 R14 K6 ["n"]
       32 JUMPIFEQKN                       R15 K7 [0] ; [+44]
       34 MOVE                             R15 R11
       35 JUMPIFNOT                        R15 ; [+4]
       36 MOVE                             R17 R0
       37 NAMECALL                         R15 R11 K5 ["exec"]
       39 CALL                             R15 2 1
       40 LOADNIL                          R16
       41 JUMPIFNOT                        R15 ; [+16]
       42 JUMPIFNOT                        R13 ; [+15]
       43 GETUPVAL                         R20 2
       44 GETTABLEKS                       R20 R20 K9 ["findIndex"]
       46 MOVE                             R21 R12
       47 DUPCLOSURE                       R22 K10 [PROTO_2]
       48 CALL                             R20 2 1
       49 ADDK                             R19 R20 K8 [1]
       50 GETTABLE                         R18 R15 R19
       51 MOVE                             R17 R18
       52 GETTABLEKS                       R18 R13 K11 ["getActionForPathAndParams"]
       54 MOVE                             R19 R17
       55 MOVE                             R20 R1
       56 CALL                             R18 2 1
       57 MOVE                             R16 R18
       58 GETUPVAL                         R17 3
       59 GETTABLEKS                       R17 R17 K12 ["navigate"]
       61 DUPTABLE                         R18 K16 [{"routeName", "params", "action"}]
       62 SETTABLEKS                       R7 R18 K13 ["routeName"]
       64 GETUPVAL                         R19 4
       65 GETTABLEKS                       R19 R19 K17 ["getParamsFromPath"]
       67 MOVE                             R20 R1
       68 MOVE                             R21 R14
       69 MOVE                             R22 R10
       70 CALL                             R19 3 1
       71 SETTABLEKS                       R19 R18 K14 ["params"]
       73 SETTABLEKS                       R16 R18 K15 ["action"]
       75 CALL                             R17 1 -1
       76 RETURN                           R17 -1
       77 FORGLOOP                         R2 2 ; [-67]
       79 GETUPVAL                         R2 0
       80 LOADNIL                          R3
       81 LOADNIL                          R4
       82 FORGPREP                         R2
       83 GETTABLEN                        R7 R6 1
       84 GETTABLEN                        R8 R6 2
       85 GETTABLEKS                       R9 R8 K3 ["extendedPathRe"]
       87 GETTABLEKS                       R10 R8 K4 ["extendedPathReKeys"]
       89 GETUPVAL                         R12 1
       90 GETTABLE                         R11 R12 R7
       91 MOVE                             R12 R9
       92 JUMPIFNOT                        R12 ; [+4]
       93 MOVE                             R14 R0
       94 NAMECALL                         R12 R9 K5 ["exec"]
       96 CALL                             R12 2 1
       97 JUMPIFNOT                        R12 ; [+41]
       98 GETTABLEKS                       R13 R12 K6 ["n"]
      100 JUMPIFEQKN                       R13 K7 [0] ; [+38]
      102 GETUPVAL                         R16 2
      103 GETTABLEKS                       R16 R16 K9 ["findIndex"]
      105 MOVE                             R17 R10
      106 DUPCLOSURE                       R18 K10 [PROTO_2]
      107 CALL                             R16 2 1
      108 ADDK                             R15 R16 K8 [1]
      109 GETTABLE                         R14 R12 R15
      110 MOVE                             R13 R14
      111 LOADNIL                          R14
      112 JUMPIFNOT                        R11 ; [+6]
      113 GETTABLEKS                       R15 R11 K11 ["getActionForPathAndParams"]
      115 MOVE                             R16 R13
      116 MOVE                             R17 R1
      117 CALL                             R15 2 1
      118 MOVE                             R14 R15
      119 JUMPIFNOT                        R14 ; [+19]
      120 GETUPVAL                         R15 3
      121 GETTABLEKS                       R15 R15 K12 ["navigate"]
      123 DUPTABLE                         R16 K16 [{"routeName", "params", "action"}]
      124 SETTABLEKS                       R7 R16 K13 ["routeName"]
      126 GETUPVAL                         R17 4
      127 GETTABLEKS                       R17 R17 K17 ["getParamsFromPath"]
      129 MOVE                             R18 R1
      130 MOVE                             R19 R12
      131 MOVE                             R20 R10
      132 CALL                             R17 3 1
      133 SETTABLEKS                       R17 R16 K14 ["params"]
      135 SETTABLEKS                       R14 R16 K15 ["action"]
      137 CALL                             R15 1 -1
      138 RETURN                           R15 -1
      139 FORGLOOP                         R2 2 ; [-57]
      141 LOADNIL                          R2
      142 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["routeName"]
        2 GETTABLEKS                       R2 R0 K1 ["params"]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R1
        6 GETUPVAL                         R5 1
        7 GETTABLE                         R4 R5 R1
        8 GETTABLEKS                       R5 R4 K2 ["toPath"]
       10 GETTABLEKS                       R6 R4 K3 ["exactReKeys"]
       12 MOVE                             R7 R5
       13 MOVE                             R8 R2
       14 CALL                             R7 1 1
       15 NEWTABLE                         R8 0 0
       17 JUMPIFNOT                        R2 ; [+20]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K4 ["filter"]
       21 GETUPVAL                         R10 3
       22 GETTABLEKS                       R10 R10 K5 ["keys"]
       24 MOVE                             R11 R2
       25 CALL                             R10 1 1
       26 NEWCLOSURE                       R11 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R6
       29 CALL                             R9 2 1
       30 MOVE                             R10 R9
       31 LOADNIL                          R11
       32 LOADNIL                          R12
       33 FORGPREP                         R10
       34 GETTABLE                         R15 R2 R14
       35 SETTABLE                         R15 R8 R14
       36 FORGLOOP                         R10 2 ; [-3]
       38 JUMPIFNOT                        R3 ; [+38]
       39 GETUPVAL                         R9 4
       40 JUMPIFEQ                         R3 R9 ; [+36]
       42 GETTABLEKS                       R9 R3 K6 ["getPathAndParamsForState"]
       44 MOVE                             R10 R0
       45 CALL                             R9 1 1
       46 DUPTABLE                         R10 K8 [{"path", "params"}]
       47 JUMPIFNOT                        R7 ; [+10]
       48 JUMPIFEQKS                       R7 K9 [""] ; [+9]
       50 LOADK                            R11 K10 ["%s/%s"]
       51 MOVE                             R13 R7
       52 GETTABLEKS                       R14 R9 K7 ["path"]
       54 NAMECALL                         R11 R11 K11 ["format"]
       56 CALL                             R11 3 1
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R11 R9 K7 ["path"]
       60 SETTABLEKS                       R11 R10 K7 ["path"]
       62 GETTABLEKS                       R12 R9 K1 ["params"]
       64 JUMPIFNOT                        R12 ; [+8]
       65 GETUPVAL                         R11 3
       66 GETTABLEKS                       R11 R11 K12 ["assign"]
       68 MOVE                             R12 R8
       69 GETTABLEKS                       R13 R9 K1 ["params"]
       71 CALL                             R11 2 1
       72 JUMP                             ; [+1]
       73 MOVE                             R11 R8
       74 SETTABLEKS                       R11 R10 K1 ["params"]
       76 RETURN                           R10 1
       77 DUPTABLE                         R9 K8 [{"path", "params"}]
       78 SETTABLEKS                       R7 R9 K7 ["path"]
       80 SETTABLEKS                       R8 R9 K1 ["params"]
       82 RETURN                           R9 1

PROTO_11:
        0 GETTABLEKS                       R3 R2 K0 ["paths"]
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R4 R2 K1 ["disableRouteNamePaths"]
        7 NEWTABLE                         R5 0 0
        9 NEWTABLE                         R6 0 0
       11 MOVE                             R7 R0
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 LOADNIL                          R12
       16 GETTABLE                         R13 R3 R10
       17 JUMPIFEQKNIL                     R13 ; [+3]
       19 GETTABLE                         R12 R3 R10
       20 JUMP                             ; [+10]
       21 GETTABLE                         R14 R1 R10
       22 FASTCALL1                        TYPE R14 ; [+2]
       23 GETIMPORT                        R13 K3 [type]
       25 CALL                             R13 1 1
       26 JUMPIFNOTEQKS                    R13 K4 ["table"] ; [+4]
       28 GETTABLE                         R13 R1 R10
       29 GETTABLEKS                       R12 R13 K5 ["path"]
       31 JUMPIFNOTEQKNIL                  R12 ; [+5]
       33 JUMPIFNOT                        R4 ; [+2]
       34 GETUPVAL                         R12 0
       35 JUMP                             ; [+1]
       36 MOVE                             R12 R10
       37 GETUPVAL                         R13 1
       38 LOADB                            R14 1
       39 GETUPVAL                         R15 0
       40 JUMPIFEQ                         R12 R15 ; [+10]
       42 FASTCALL1                        TYPE R12 ; [+3]
       43 MOVE                             R16 R12
       44 GETIMPORT                        R15 K3 [type]
       46 CALL                             R15 1 1
       47 JUMPIFEQKS                       R15 K6 ["string"] ; [+2]
       49 LOADB                            R14 0 +1
       50 LOADB                            R14 1
       51 LOADK                            R15 K7 ["Route path for %s must be specified as a string, or RoactNavigation.NoPath."]
       52 MOVE                             R16 R10
       53 CALL                             R13 3 0
       54 GETUPVAL                         R14 0
       55 JUMPIFNOTEQ                      R12 R14 ; [+2]
       57 LOADB                            R13 0 +1
       58 LOADB                            R13 1
       59 NEWTABLE                         R14 0 0
       61 LOADNIL                          R15
       62 JUMPIFNOT                        R13 ; [+5]
       63 GETUPVAL                         R16 2
       64 MOVE                             R17 R12
       65 MOVE                             R18 R14
       66 CALL                             R16 2 1
       67 MOVE                             R15 R16
       68 NEWTABLE                         R16 0 0
       70 LOADB                            R17 1
       71 JUMPIFEQKS                       R12 K8 [""] ; [+2]
       73 NOT                              R17 R13
       74 GETUPVAL                         R18 2
       75 JUMPIFNOT                        R17 ; [+2]
       76 LOADK                            R19 K9 ["(.*)"]
       77 JUMP                             ; [+5]
       78 LOADK                            R19 K10 ["%s/(.*)"]
       79 MOVE                             R21 R12
       80 NAMECALL                         R19 R19 K11 ["format"]
       82 CALL                             R19 2 1
       83 MOVE                             R20 R16
       84 CALL                             R18 2 1
       85 DUPTABLE                         R19 K18 [{"exactRe", "exactReKeys", "extendedPathRe", "extendedPathReKeys", "isWildcard", "toPath"}]
       86 SETTABLEKS                       R15 R19 K12 ["exactRe"]
       88 SETTABLEKS                       R14 R19 K13 ["exactReKeys"]
       90 SETTABLEKS                       R18 R19 K14 ["extendedPathRe"]
       92 SETTABLEKS                       R16 R19 K15 ["extendedPathReKeys"]
       94 SETTABLEKS                       R17 R19 K16 ["isWildcard"]
       96 GETUPVAL                         R21 0
       97 JUMPIFNOTEQ                      R12 R21 ; [+3]
       99 DUPCLOSURE                       R20 K19 [PROTO_6]
      100 JUMPIF                           R20 ; [+3]
      101 GETUPVAL                         R20 3
      102 MOVE                             R21 R12
      103 CALL                             R20 1 1
      104 SETTABLEKS                       R20 R19 K17 ["toPath"]
      106 SETTABLE                         R19 R5 R10
      107 FORGLOOP                         R7 1 ; [-93]
      109 GETUPVAL                         R7 4
      110 GETTABLEKS                       R7 R7 K20 ["entries"]
      112 MOVE                             R8 R5
      113 CALL                             R7 1 1
      114 MOVE                             R6 R7
      115 NEWCLOSURE                       R7 P1
      116 CAPTURE                          REF R6
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U5
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U7
      121 NEWCLOSURE                       R8 P2
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R5
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U8
      127 DUPTABLE                         R9 K23 [{"getActionForPathAndParams", "getPathAndParamsForRoute"}]
      128 SETTABLEKS                       R7 R9 K21 ["getActionForPathAndParams"]
      130 SETTABLEKS                       R8 R9 K22 ["getPathAndParamsForRoute"]
      132 CLOSEUPVALS                      R6
      133 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Array"]
       16 GETTABLEKS                       R5 R3 K7 ["Object"]
       18 GETTABLEKS                       R6 R3 K8 ["String"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R2 K9 ["RegExp"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R1 K10 ["utils"]
       29 GETTABLEKS                       R9 R9 K11 ["invariant"]
       31 CALL                             R8 1 1
       32 GETIMPORT                        R9 K4 [require]
       34 GETTABLEKS                       R10 R1 K12 ["NavigationActions"]
       36 CALL                             R9 1 1
       37 GETIMPORT                        R10 K4 [require]
       39 GETTABLEKS                       R11 R0 K13 ["pathToRegexp"]
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R11 R10 K14 ["compile"]
       44 GETTABLEKS                       R12 R10 K13 ["pathToRegexp"]
       46 GETIMPORT                        R13 K4 [require]
       48 GETTABLEKS                       R14 R0 K15 ["queryString"]
       50 CALL                             R13 1 1
       51 GETIMPORT                        R14 K4 [require]
       53 LOADK                            R17 K16 ["ChildIsScreenRouterSymbol.roblox"]
       54 NAMECALL                         R15 R0 K17 ["FindFirstChild"]
       56 CALL                             R15 2 -1
       57 CALL                             R14 -1 1
       58 GETIMPORT                        R15 K4 [require]
       60 LOADK                            R18 K18 ["NullPathSymbol.roblox"]
       61 NAMECALL                         R16 R0 K17 ["FindFirstChild"]
       63 CALL                             R16 2 -1
       64 CALL                             R15 -1 1
       65 GETIMPORT                        R16 K4 [require]
       67 GETTABLEKS                       R17 R0 K19 ["decodeURIComponent"]
       69 CALL                             R16 1 1
       70 NEWTABLE                         R17 4 0
       72 DUPCLOSURE                       R18 K20 [PROTO_1]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R16
       75 SETTABLEKS                       R18 R17 K21 ["getParamsFromPath"]
       77 DUPCLOSURE                       R18 K22 [PROTO_3]
       78 CAPTURE                          VAL R4
       79 DUPCLOSURE                       R19 K23 [PROTO_4]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R6
       82 DUPCLOSURE                       R20 K24 [PROTO_5]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R19
       86 SETTABLEKS                       R20 R17 K25 ["urlToPathAndParams"]
       88 DUPCLOSURE                       R20 K26 [PROTO_11]
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R14
       98 SETTABLEKS                       R20 R17 K27 ["createPathParser"]
      100 RETURN                           R17 1
