PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getPositionAndSize"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 2
        6 JUMPIFNOT                        R2 ; [+1]
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 DUPTABLE                         R4 K4 [{"x", "y", "z"}]
       10 GETTABLEKS                       R8 R2 K6 ["X"]
       12 MULK                             R7 R8 K5 [100]
       13 FASTCALL1                        MATH_CEIL R7 ; [+2]
       14 GETIMPORT                        R6 K9 [math.ceil]
       16 CALL                             R6 1 1
       17 DIVK                             R5 R6 K5 [100]
       18 SETTABLEKS                       R5 R4 K1 ["x"]
       20 GETTABLEKS                       R8 R2 K10 ["Y"]
       22 MULK                             R7 R8 K5 [100]
       23 FASTCALL1                        MATH_CEIL R7 ; [+2]
       24 GETIMPORT                        R6 K9 [math.ceil]
       26 CALL                             R6 1 1
       27 DIVK                             R5 R6 K5 [100]
       28 SETTABLEKS                       R5 R4 K2 ["y"]
       30 GETTABLEKS                       R8 R2 K11 ["Z"]
       32 MULK                             R7 R8 K5 [100]
       33 FASTCALL1                        MATH_CEIL R7 ; [+2]
       34 GETIMPORT                        R6 K9 [math.ceil]
       36 CALL                             R6 1 1
       37 DIVK                             R5 R6 K5 [100]
       38 SETTABLEKS                       R5 R4 K3 ["z"]
       40 MOVE                             R2 R4
       41 DUPTABLE                         R4 K4 [{"x", "y", "z"}]
       42 GETTABLEKS                       R8 R3 K6 ["X"]
       44 MULK                             R7 R8 K5 [100]
       45 FASTCALL1                        MATH_CEIL R7 ; [+2]
       46 GETIMPORT                        R6 K9 [math.ceil]
       48 CALL                             R6 1 1
       49 DIVK                             R5 R6 K5 [100]
       50 SETTABLEKS                       R5 R4 K1 ["x"]
       52 GETTABLEKS                       R8 R3 K10 ["Y"]
       54 MULK                             R7 R8 K5 [100]
       55 FASTCALL1                        MATH_CEIL R7 ; [+2]
       56 GETIMPORT                        R6 K9 [math.ceil]
       58 CALL                             R6 1 1
       59 DIVK                             R5 R6 K5 [100]
       60 SETTABLEKS                       R5 R4 K2 ["y"]
       62 GETTABLEKS                       R8 R3 K11 ["Z"]
       64 MULK                             R7 R8 K5 [100]
       65 FASTCALL1                        MATH_CEIL R7 ; [+2]
       66 GETIMPORT                        R6 K9 [math.ceil]
       68 CALL                             R6 1 1
       69 DIVK                             R5 R6 K5 [100]
       70 SETTABLEKS                       R5 R4 K3 ["z"]
       72 MOVE                             R3 R4
       73 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+29]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["getPositionAndSize"]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 CALL                             R3 2 2
        9 JUMPIFNOT                        R3 ; [+22]
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R7 K3 [CFrame.new]
       13 MOVE                             R8 R3
       14 CALL                             R7 1 -1
       15 NAMECALL                         R5 R2 K4 ["ToWorldSpace"]
       17 CALL                             R5 -1 1
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K5 ["addConstraintVisualization"]
       21 MOVE                             R7 R0
       22 MOVE                             R8 R5
       23 MOVE                             R9 R4
       24 LOADB                            R10 1
       25 GETIMPORT                        R11 K8 [Color3.fromRGB]
       27 LOADN                            R12 0
       28 LOADN                            R13 170
       29 LOADN                            R14 255
       30 CALL                             R11 3 -1
       31 CALL                             R6 -1 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["isSelected"]
        2 JUMPIF                           R2 ; [+2]
        3 GETTABLEKS                       R2 R1 K1 ["isRecent"]
        5 LOADK                            R6 K2 ["Script"]
        6 NAMECALL                         R4 R0 K3 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIF                           R4 ; [+5]
       10 LOADK                            R5 K4 ["ModuleScript"]
       11 NAMECALL                         R3 R0 K3 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+1]
       15 MOVE                             R3 R2
       16 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETUPVAL                         R5 1
        3 CALL                             R5 0 1
        4 DIVK                             R4 R5 K0 [100]
        5 NEWTABLE                         R5 0 0
        7 LOADN                            R6 0
        8 MOVE                             R7 R0
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 JUMPIFLE                         R3 R6 ; [+42]
       14 MOVE                             R12 R11
       15 GETTABLEKS                       R16 R12 K1 ["Size"]
       17 GETTABLEKS                       R15 R16 K2 ["X"]
       19 GETTABLEKS                       R17 R12 K1 ["Size"]
       21 GETTABLEKS                       R16 R17 K3 ["Z"]
       23 MUL                              R14 R15 R16
       24 DIV                              R13 R14 R1
       25 LOADN                            R14 1
       26 JUMPIFLT                         R14 R13 ; [+26]
       28 GETTABLEKS                       R14 R12 K4 ["Parent"]
       30 JUMPIFNOT                        R14 ; [+18]
       31 GETIMPORT                        R15 K6 [workspace]
       33 JUMPIFEQ                         R14 R15 ; [+15]
       35 GETUPVAL                         R15 2
       36 MOVE                             R16 R14
       37 MOVE                             R17 R2
       38 CALL                             R15 2 2
       39 GETTABLEKS                       R19 R16 K7 ["x"]
       41 GETTABLEKS                       R20 R16 K8 ["z"]
       43 MUL                              R18 R19 R20
       44 DIV                              R17 R18 R1
       45 JUMPIFLT                         R4 R17 ; [+3]
       47 MOVE                             R12 R14
       48 JUMPBACK                         ; [-21]
       49 GETTABLE                         R14 R5 R12
       50 JUMPIF                           R14 ; [+2]
       51 SETTABLE                         R12 R5 R12
       52 ADDK                             R6 R6 K9 [1]
       53 FORGLOOP                         R7 2 ; [-42]
       55 RETURN                           R5 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [workspace]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETUPVAL                         R8 0
        7 NAMECALL                         R4 R4 K2 ["GetPartBoundsInBox"]
        9 CALL                             R4 4 1
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R4
       12 GETTABLEKS                       R8 R2 K3 ["X"]
       14 GETTABLEKS                       R9 R2 K4 ["Z"]
       16 MUL                              R7 R8 R9
       17 MOVE                             R8 R1
       18 CALL                             R5 3 1
       19 MOVE                             R6 R5
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 GETUPVAL                         R11 2
       24 MOVE                             R12 R0
       25 MOVE                             R13 R10
       26 MOVE                             R14 R1
       27 CALL                             R11 3 0
       28 GETUPVAL                         R11 3
       29 MOVE                             R12 R10
       30 MOVE                             R13 R1
       31 CALL                             R11 2 2
       32 DUPTABLE                         R15 K9 [{"instanceId", "assetId", "size", "pos"}]
       33 SETTABLEKS                       R10 R15 K5 ["instanceId"]
       35 GETTABLEKS                       R17 R10 K10 ["SourceAssetId"]
       37 LOADN                            R18 0
       38 JUMPIFNOTLT                      R18 R17 ; [+4]
       40 GETTABLEKS                       R16 R10 K10 ["SourceAssetId"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R16
       44 SETTABLEKS                       R16 R15 K6 ["assetId"]
       46 DUPTABLE                         R16 K13 [{"x", "z"}]
       47 GETTABLEKS                       R17 R12 K11 ["x"]
       49 SETTABLEKS                       R17 R16 K11 ["x"]
       51 GETTABLEKS                       R17 R12 K12 ["z"]
       53 SETTABLEKS                       R17 R16 K12 ["z"]
       55 SETTABLEKS                       R16 R15 K7 ["size"]
       57 DUPTABLE                         R16 K13 [{"x", "z"}]
       58 GETTABLEKS                       R17 R11 K11 ["x"]
       60 SETTABLEKS                       R17 R16 K11 ["x"]
       62 GETTABLEKS                       R17 R11 K12 ["z"]
       64 SETTABLEKS                       R17 R16 K12 ["z"]
       66 SETTABLEKS                       R16 R15 K8 ["pos"]
       68 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       70 MOVE                             R14 R3
       71 GETIMPORT                        R13 K16 [table.insert]
       73 CALL                             R13 2 0
       74 GETUPVAL                         R14 4
       75 GETTABLEKS                       R13 R14 K17 ["guid2instance"]
       77 NAMECALL                         R14 R10 K18 ["GetDebugId"]
       79 CALL                             R14 1 1
       80 SETTABLE                         R10 R13 R14
       81 FORGLOOP                         R6 2 ; [-59]
       83 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gmatch]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["%s*(%w+)%s*:%s*([%d%.]+)%s*"]
        6 CALL                             R2 2 3
        7 FORGPREP                         R2
        8 FASTCALL1                        TONUMBER R6 ; [+3]
        9 MOVE                             R8 R6
       10 GETIMPORT                        R7 K5 [tonumber]
       12 CALL                             R7 1 1
       13 SETTABLE                         R7 R1 R5
       14 FORGLOOP                         R2 2 ; [-7]
       16 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R4 16 0
        2 GETIMPORT                        R5 K2 [utf8.len]
        4 GETTABLEKS                       R6 R0 K3 ["Name"]
        6 CALL                             R5 1 1
        7 JUMPIFNOTEQKNIL                  R5 ; [+3]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 SETTABLEKS                       R0 R4 K4 ["instanceId"]
       13 GETTABLEKS                       R5 R0 K3 ["Name"]
       15 SETTABLEKS                       R5 R4 K5 ["instanceName"]
       17 GETTABLEKS                       R5 R0 K6 ["ClassName"]
       19 SETTABLEKS                       R5 R4 K7 ["className"]
       21 GETTABLEKS                       R6 R0 K8 ["SourceAssetId"]
       23 LOADN                            R7 0
       24 JUMPIFNOTLT                      R7 R6 ; [+4]
       26 GETTABLEKS                       R5 R0 K8 ["SourceAssetId"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K9 ["assetId"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K10 ["getInstanceAttributes"]
       35 MOVE                             R6 R0
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K11 ["attributes"]
       39 GETTABLE                         R5 R1 R0
       40 JUMPIFNOT                        R5 ; [+3]
       41 LOADB                            R5 1
       42 SETTABLEKS                       R5 R4 K12 ["isSelected"]
       44 JUMPIFNOT                        R3 ; [+8]
       45 GETTABLE                         R5 R3 R0
       46 JUMPIFNOT                        R5 ; [+6]
       47 GETTABLEKS                       R5 R4 K12 ["isSelected"]
       49 JUMPIF                           R5 ; [+3]
       50 LOADB                            R5 1
       51 SETTABLEKS                       R5 R4 K13 ["isRecent"]
       53 GETTABLEKS                       R6 R4 K12 ["isSelected"]
       55 JUMPIF                           R6 ; [+2]
       56 GETTABLEKS                       R6 R4 K13 ["isRecent"]
       58 LOADK                            R9 K14 ["Script"]
       59 NAMECALL                         R7 R0 K15 ["IsA"]
       61 CALL                             R7 2 1
       62 JUMPIF                           R7 ; [+6]
       63 LOADK                            R9 K16 ["ModuleScript"]
       64 NAMECALL                         R7 R0 K15 ["IsA"]
       66 CALL                             R7 2 1
       67 MOVE                             R5 R7
       68 JUMPIFNOT                        R5 ; [+1]
       69 MOVE                             R5 R6
       70 JUMPIFNOT                        R5 ; [+4]
       71 GETTABLEKS                       R5 R0 K17 ["Source"]
       73 SETTABLEKS                       R5 R4 K18 ["scriptSource"]
       75 GETTABLEKS                       R5 R4 K18 ["scriptSource"]
       77 JUMPIFNOT                        R5 ; [+10]
       78 GETIMPORT                        R5 K2 [utf8.len]
       80 GETTABLEKS                       R6 R4 K18 ["scriptSource"]
       82 CALL                             R5 1 1
       83 JUMPIFNOTEQKNIL                  R5 ; [+4]
       85 LOADNIL                          R5
       86 SETTABLEKS                       R5 R4 K18 ["scriptSource"]
       88 NEWTABLE                         R5 0 0
       90 SETTABLEKS                       R5 R4 K19 ["children"]
       92 LOADB                            R5 0
       93 GETIMPORT                        R6 K21 [ipairs]
       95 NAMECALL                         R7 R0 K22 ["GetChildren"]
       97 CALL                             R7 1 -1
       98 CALL                             R6 -1 3
       99 FORGPREP_INEXT                   R6
      100 GETGLOBAL                        R11 K23 ["generateHierarchy"]
      102 MOVE                             R12 R10
      103 MOVE                             R13 R1
      104 MOVE                             R14 R2
      105 MOVE                             R15 R3
      106 CALL                             R11 4 1
      107 JUMPIFNOT                        R11 ; [+9]
      108 GETTABLEKS                       R13 R4 K19 ["children"]
      110 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      112 MOVE                             R14 R11
      113 GETIMPORT                        R12 K26 [table.insert]
      115 CALL                             R12 2 0
      116 LOADB                            R5 1
      117 FORGLOOP                         R6 2 [inext] ; [-18]
      119 GETTABLEKS                       R6 R4 K12 ["isSelected"]
      121 JUMPIF                           R6 ; [+4]
      122 GETTABLEKS                       R6 R4 K13 ["isRecent"]
      124 JUMPIF                           R6 ; [+1]
      125 JUMPIFNOT                        R5 ; [+1]
      126 RETURN                           R4 1
      127 LOADNIL                          R6
      128 RETURN                           R6 1

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R4 R0 K0 ["isSelected"]
        4 JUMPIF                           R4 ; [+3]
        5 GETTABLEKS                       R4 R0 K1 ["isRecent"]
        7 JUMPIFNOT                        R4 ; [+40]
        8 NEWTABLE                         R4 0 0
       10 GETIMPORT                        R5 K3 [ipairs]
       12 GETTABLEKS                       R6 R0 K4 ["children"]
       14 CALL                             R5 1 3
       15 FORGPREP_INEXT                   R5
       16 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       18 MOVE                             R11 R4
       19 MOVE                             R12 R9
       20 GETIMPORT                        R10 K7 [table.insert]
       22 CALL                             R10 2 0
       23 FORGLOOP                         R5 2 [inext] ; [-8]
       25 GETGLOBAL                        R5 K8 ["populateChildrenRecursive"]
       27 MOVE                             R6 R0
       28 MOVE                             R7 R1
       29 MOVE                             R8 R2
       30 MOVE                             R9 R3
       31 CALL                             R5 4 0
       32 GETIMPORT                        R5 K3 [ipairs]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 3
       36 FORGPREP_INEXT                   R5
       37 GETGLOBAL                        R10 K9 ["populateChildren"]
       39 MOVE                             R11 R9
       40 GETTABLEKS                       R12 R9 K10 ["instanceId"]
       42 MOVE                             R13 R2
       43 MOVE                             R14 R3
       44 CALL                             R10 4 0
       45 FORGLOOP                         R5 2 [inext] ; [-9]
       47 RETURN                           R0 0
       48 GETIMPORT                        R4 K3 [ipairs]
       50 GETTABLEKS                       R5 R0 K4 ["children"]
       52 CALL                             R4 1 3
       53 FORGPREP_INEXT                   R4
       54 GETGLOBAL                        R9 K9 ["populateChildren"]
       56 MOVE                             R10 R8
       57 GETTABLEKS                       R11 R8 K10 ["instanceId"]
       59 MOVE                             R12 R2
       60 MOVE                             R13 R3
       61 CALL                             R9 4 0
       62 FORGLOOP                         R4 2 [inext] ; [-9]
       64 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R4 0
        1 JUMPIFNOTLE                      R3 R4 ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K1 [ipairs]
        8 GETTABLEKS                       R6 R0 K2 ["children"]
       10 CALL                             R5 1 3
       11 FORGPREP_INEXT                   R5
       12 GETTABLEKS                       R10 R9 K3 ["instanceId"]
       14 SETTABLE                         R9 R4 R10
       15 FORGLOOP                         R5 2 [inext] ; [-4]
       17 GETIMPORT                        R5 K1 [ipairs]
       19 NAMECALL                         R6 R1 K4 ["GetChildren"]
       21 CALL                             R6 1 -1
       22 CALL                             R5 -1 3
       23 FORGPREP_INEXT                   R5
       24 NEWTABLE                         R10 8 0
       26 GETIMPORT                        R11 K7 [utf8.len]
       28 GETTABLEKS                       R12 R9 K8 ["Name"]
       30 CALL                             R11 1 1
       31 JUMPIFEQKNIL                     R11 ; [+112]
       33 SETTABLEKS                       R9 R10 K3 ["instanceId"]
       35 GETTABLEKS                       R11 R9 K8 ["Name"]
       37 SETTABLEKS                       R11 R10 K9 ["instanceName"]
       39 GETTABLEKS                       R11 R9 K10 ["ClassName"]
       41 SETTABLEKS                       R11 R10 K11 ["className"]
       43 GETTABLEKS                       R12 R9 K12 ["SourceAssetId"]
       45 LOADN                            R13 0
       46 JUMPIFNOTLT                      R13 R12 ; [+4]
       48 GETTABLEKS                       R11 R9 K12 ["SourceAssetId"]
       50 JUMPIF                           R11 ; [+1]
       51 LOADNIL                          R11
       52 SETTABLEKS                       R11 R10 K13 ["assetId"]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K14 ["getInstanceAttributes"]
       57 MOVE                             R12 R9
       58 CALL                             R11 1 1
       59 SETTABLEKS                       R11 R10 K15 ["attributes"]
       61 GETTABLEKS                       R12 R10 K16 ["isSelected"]
       63 JUMPIF                           R12 ; [+2]
       64 GETTABLEKS                       R12 R10 K17 ["isRecent"]
       66 LOADK                            R15 K18 ["Script"]
       67 NAMECALL                         R13 R9 K19 ["IsA"]
       69 CALL                             R13 2 1
       70 JUMPIF                           R13 ; [+6]
       71 LOADK                            R15 K20 ["ModuleScript"]
       72 NAMECALL                         R13 R9 K19 ["IsA"]
       74 CALL                             R13 2 1
       75 MOVE                             R11 R13
       76 JUMPIFNOT                        R11 ; [+1]
       77 MOVE                             R11 R12
       78 JUMPIFNOT                        R11 ; [+4]
       79 GETTABLEKS                       R11 R9 K21 ["Source"]
       81 SETTABLEKS                       R11 R10 K22 ["scriptSource"]
       83 GETTABLEKS                       R11 R10 K22 ["scriptSource"]
       85 JUMPIFNOT                        R11 ; [+10]
       86 GETIMPORT                        R11 K7 [utf8.len]
       88 GETTABLEKS                       R12 R10 K22 ["scriptSource"]
       90 CALL                             R11 1 1
       91 JUMPIFNOTEQKNIL                  R11 ; [+4]
       93 LOADNIL                          R11
       94 SETTABLEKS                       R11 R10 K22 ["scriptSource"]
       96 NEWTABLE                         R11 0 0
       98 SETTABLEKS                       R11 R10 K2 ["children"]
      100 GETUPVAL                         R12 1
      101 MOVE                             R14 R10
      102 NAMECALL                         R12 R12 K23 ["JSONEncode"]
      104 CALL                             R12 2 1
      105 FASTCALL1                        STRING_LEN R12 ; [+2]
      106 GETIMPORT                        R11 K25 [string.len]
      108 CALL                             R11 1 1
      109 GETTABLE                         R12 R4 R9
      110 JUMPIF                           R12 ; [+26]
      111 GETUPVAL                         R13 2
      112 ADD                              R12 R13 R11
      113 GETUPVAL                         R13 3
      114 CALL                             R13 0 1
      115 JUMPIFNOTLT                      R13 R12 ; [+2]
      117 RETURN                           R0 0
      118 GETTABLEKS                       R13 R0 K2 ["children"]
      120 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
      122 MOVE                             R14 R10
      123 GETIMPORT                        R12 K28 [table.insert]
      125 CALL                             R12 2 0
      126 GETUPVAL                         R12 2
      127 ADD                              R12 R12 R11
      128 SETUPVAL                         R12 2
      129 GETGLOBAL                        R12 K29 ["populateChildrenRecursive"]
      131 MOVE                             R13 R10
      132 MOVE                             R14 R9
      133 MOVE                             R15 R2
      134 SUBK                             R16 R3 K30 [1]
      135 CALL                             R12 4 0
      136 JUMP                             ; [+7]
      137 GETGLOBAL                        R12 K29 ["populateChildrenRecursive"]
      139 GETTABLE                         R13 R4 R9
      140 MOVE                             R14 R9
      141 MOVE                             R15 R2
      142 SUBK                             R16 R3 K30 [1]
      143 CALL                             R12 4 0
      144 FORGLOOP                         R5 2 [inext] ; [-121]
      146 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R4 0 0
        2 GETIMPORT                        R5 K1 [ipairs]
        4 GETTABLEKS                       R6 R0 K2 ["children"]
        6 CALL                             R5 1 3
        7 FORGPREP_INEXT                   R5
        8 GETTABLEKS                       R10 R9 K3 ["instanceName"]
       10 SETTABLE                         R9 R4 R10
       11 FORGLOOP                         R5 2 [inext] ; [-4]
       13 GETIMPORT                        R5 K5 [pairs]
       15 GETUPVAL                         R6 0
       16 CALL                             R5 1 3
       17 FORGPREP_NEXT                    R5
       18 MOVE                             R12 R8
       19 NAMECALL                         R10 R1 K6 ["FindFirstChild"]
       21 CALL                             R10 2 1
       22 GETTABLE                         R11 R4 R8
       23 JUMPIF                           R11 ; [+30]
       24 JUMPIFNOT                        R10 ; [+29]
       25 DUPTABLE                         R11 K9 [{"instanceId", "instanceName", "className", "children"}]
       26 SETTABLEKS                       R10 R11 K7 ["instanceId"]
       28 SETTABLEKS                       R8 R11 K3 ["instanceName"]
       30 GETTABLEKS                       R12 R10 K10 ["ClassName"]
       32 SETTABLEKS                       R12 R11 K8 ["className"]
       34 NEWTABLE                         R12 0 0
       36 SETTABLEKS                       R12 R11 K2 ["children"]
       38 GETGLOBAL                        R12 K11 ["populateChildrenRecursive"]
       40 MOVE                             R13 R11
       41 MOVE                             R14 R10
       42 MOVE                             R15 R2
       43 MOVE                             R16 R3
       44 CALL                             R12 4 0
       45 GETTABLEKS                       R13 R0 K2 ["children"]
       47 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       49 MOVE                             R14 R11
       50 GETIMPORT                        R12 K14 [table.insert]
       52 CALL                             R12 2 0
       53 JUMP                             ; [+8]
       54 JUMPIFNOT                        R10 ; [+7]
       55 GETGLOBAL                        R11 K11 ["populateChildrenRecursive"]
       57 GETTABLE                         R12 R4 R8
       58 MOVE                             R13 R10
       59 MOVE                             R14 R2
       60 MOVE                             R15 R3
       61 CALL                             R11 4 0
       62 FORGLOOP                         R5 2 ; [-45]
       64 RETURN                           R0 0

PROTO_10:
        0 LOADN                            R4 0
        1 SETUPVAL                         R4 0
        2 GETUPVAL                         R4 1
        3 CALL                             R4 0 1
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R5 R6 K0 ["parseContainerCapString"]
        7 GETUPVAL                         R6 3
        8 CALL                             R6 0 -1
        9 CALL                             R5 -1 1
       10 NEWTABLE                         R6 0 7
       12 LOADK                            R7 K1 ["Workspace"]
       13 LOADK                            R8 K2 ["ServerScriptService"]
       14 LOADK                            R9 K3 ["ReplicatedStorage"]
       15 LOADK                            R10 K4 ["ReplicatedFirst"]
       16 LOADK                            R11 K5 ["StarterGui"]
       17 LOADK                            R12 K6 ["StarterPlayer"]
       18 LOADK                            R13 K7 ["Lighting"]
       19 SETLIST                          R6 R7 7 [1]
       21 MOVE                             R7 R6
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 FORGPREP                         R7
       25 MOVE                             R14 R11
       26 NAMECALL                         R12 R1 K8 ["FindFirstChild"]
       28 CALL                             R12 2 1
       29 JUMPIFNOT                        R12 ; [+42]
       30 GETTABLE                         R14 R5 R11
       31 JUMPIFNOT                        R14 ; [+3]
       32 GETTABLE                         R14 R5 R11
       33 MUL                              R13 R14 R4
       34 JUMPIF                           R13 ; [+1]
       35 LOADN                            R13 0
       36 LOADN                            R14 0
       37 SETUPVAL                         R14 0
       38 DUPTABLE                         R14 K13 [{"instanceName", "className", "children", "isSelected"}]
       39 SETTABLEKS                       R11 R14 K9 ["instanceName"]
       41 GETTABLEKS                       R15 R12 K14 ["ClassName"]
       43 SETTABLEKS                       R15 R14 K10 ["className"]
       45 NEWTABLE                         R15 0 0
       47 SETTABLEKS                       R15 R14 K11 ["children"]
       49 GETTABLE                         R16 R3 R12
       50 JUMPIFNOT                        R16 ; [+2]
       51 LOADB                            R15 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R15
       54 SETTABLEKS                       R15 R14 K12 ["isSelected"]
       56 GETGLOBAL                        R15 K15 ["populateFullDMTree"]
       58 MOVE                             R16 R14
       59 MOVE                             R17 R12
       60 MOVE                             R18 R2
       61 MOVE                             R19 R3
       62 MOVE                             R20 R13
       63 CALL                             R15 5 0
       64 GETTABLEKS                       R16 R0 K11 ["children"]
       66 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       68 MOVE                             R17 R14
       69 GETIMPORT                        R15 K18 [table.insert]
       71 CALL                             R15 2 0
       72 FORGLOOP                         R7 2 ; [-48]
       74 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["JSONEncode"]
        4 CALL                             R1 2 1
        5 FASTCALL1                        STRING_LEN R1 ; [+2]
        6 GETIMPORT                        R0 K3 [string.len]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_12:
        0 LOADN                            R5 0
        1 JUMPIFNOTLE                      R2 R5 ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R5 0 0
        6 DUPTABLE                         R8 K3 [{"result", "instance", "depth"}]
        7 SETTABLEKS                       R0 R8 K0 ["result"]
        9 SETTABLEKS                       R1 R8 K1 ["instance"]
       11 SETTABLEKS                       R2 R8 K2 ["depth"]
       13 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       15 MOVE                             R7 R5
       16 GETIMPORT                        R6 K6 [table.insert]
       18 CALL                             R6 2 0
       19 LENGTH                           R6 R5
       20 LOADN                            R7 0
       21 JUMPIFNOTLT                      R7 R6 ; [+113]
       23 GETIMPORT                        R6 K8 [table.remove]
       25 MOVE                             R7 R5
       26 LOADN                            R8 1
       27 CALL                             R6 2 1
       28 GETTABLEKS                       R7 R6 K0 ["result"]
       30 GETTABLEKS                       R8 R6 K1 ["instance"]
       32 GETTABLEKS                       R9 R6 K2 ["depth"]
       34 NAMECALL                         R10 R8 K9 ["GetChildren"]
       36 CALL                             R10 1 3
       37 FORGPREP                         R10
       38 NEWTABLE                         R15 4 0
       40 GETIMPORT                        R16 K12 [utf8.len]
       42 GETTABLEKS                       R17 R14 K13 ["Name"]
       44 CALL                             R16 1 1
       45 JUMPIFEQKNIL                     R16 ; [+86]
       47 GETTABLEKS                       R16 R14 K13 ["Name"]
       49 SETTABLEKS                       R16 R15 K14 ["name"]
       51 GETTABLEKS                       R16 R14 K15 ["ClassName"]
       53 SETTABLEKS                       R16 R15 K16 ["className"]
       55 NEWTABLE                         R16 0 0
       57 SETTABLEKS                       R16 R15 K17 ["children"]
       59 GETTABLE                         R16 R3 R14
       60 JUMPIFNOT                        R16 ; [+3]
       61 LOADB                            R16 1
       62 SETTABLEKS                       R16 R15 K18 ["isSelected"]
       64 GETIMPORT                        R16 K20 [pcall]
       66 NEWCLOSURE                       R17 P0
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R15
       69 CALL                             R16 1 2
       70 JUMPIF                           R16 ; [+9]
       71 GETUPVAL                         R18 1
       72 GETTABLEKS                       R20 R14 K13 ["Name"]
       74 GETTABLEKS                       R21 R14 K15 ["ClassName"]
       76 NAMECALL                         R18 R18 K21 ["ReportJSONEncodeFailure"]
       78 CALL                             R18 3 0
       79 JUMP                             ; [+52]
       80 GETUPVAL                         R19 2
       81 ADD                              R18 R19 R17
       82 JUMPIFNOTLT                      R4 R18 ; [+2]
       84 RETURN                           R0 0
       85 GETTABLEKS                       R19 R7 K17 ["children"]
       87 FASTCALL2                        TABLE_INSERT R19 R15 ; [+4]
       89 MOVE                             R20 R15
       90 GETIMPORT                        R18 K6 [table.insert]
       92 CALL                             R18 2 0
       93 GETUPVAL                         R18 2
       94 ADD                              R18 R18 R17
       95 SETUPVAL                         R18 2
       96 LOADK                            R20 K22 ["Folder"]
       97 NAMECALL                         R18 R14 K23 ["IsA"]
       99 CALL                             R18 2 1
      100 JUMPIFNOT                        R18 ; [+14]
      101 DUPTABLE                         R20 K3 [{"result", "instance", "depth"}]
      102 SETTABLEKS                       R15 R20 K0 ["result"]
      104 SETTABLEKS                       R14 R20 K1 ["instance"]
      106 SETTABLEKS                       R9 R20 K2 ["depth"]
      108 FASTCALL2                        TABLE_INSERT R5 R20 ; [+4]
      110 MOVE                             R19 R5
      111 GETIMPORT                        R18 K6 [table.insert]
      113 CALL                             R18 2 0
      114 JUMP                             ; [+17]
      115 LOADN                            R18 1
      116 JUMPIFNOTLT                      R18 R9 ; [+15]
      118 DUPTABLE                         R20 K3 [{"result", "instance", "depth"}]
      119 SETTABLEKS                       R15 R20 K0 ["result"]
      121 SETTABLEKS                       R14 R20 K1 ["instance"]
      123 SUBK                             R21 R9 K24 [1]
      124 SETTABLEKS                       R21 R20 K2 ["depth"]
      126 FASTCALL2                        TABLE_INSERT R5 R20 ; [+4]
      128 MOVE                             R19 R5
      129 GETIMPORT                        R18 K6 [table.insert]
      131 CALL                             R18 2 0
      132 FORGLOOP                         R10 2 ; [-95]
      134 JUMPBACK                         ; [-116]
      135 RETURN                           R0 0

PROTO_13:
        0 LOADN                            R1 0
        1 SETUPVAL                         R1 0
        2 NEWTABLE                         R1 4 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["Get"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["getRequestCFrame"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 NEWTABLE                         R4 0 0
       15 LENGTH                           R5 R2
       16 LOADN                            R6 0
       17 JUMPIFNOTLT                      R6 R5 ; [+75]
       19 GETUPVAL                         R5 3
       20 CALL                             R5 0 1
       21 NEWTABLE                         R6 0 0
       23 SETTABLEKS                       R6 R1 K2 ["Selected"]
       25 MOVE                             R6 R2
       26 LOADNIL                          R7
       27 LOADNIL                          R8
       28 FORGPREP                         R6
       29 JUMPIFLT                         R5 R9 ; [+63]
       31 LOADB                            R11 1
       32 SETTABLE                         R11 R4 R10
       33 GETUPVAL                         R11 4
       34 MOVE                             R12 R10
       35 MOVE                             R13 R3
       36 CALL                             R11 2 2
       37 GETUPVAL                         R14 5
       38 GETTABLEKS                       R13 R14 K3 ["guid2instance"]
       40 NAMECALL                         R14 R10 K4 ["GetDebugId"]
       42 CALL                             R14 1 1
       43 SETTABLE                         R10 R13 R14
       44 GETIMPORT                        R13 K7 [utf8.len]
       46 GETTABLEKS                       R14 R10 K8 ["Name"]
       48 CALL                             R13 1 1
       49 JUMPIFEQKNIL                     R13 ; [+41]
       51 GETTABLEKS                       R14 R1 K2 ["Selected"]
       53 DUPTABLE                         R15 K16 [{"instanceId", "className", "instanceName", "assetId", "attributes", "size", "pos"}]
       54 SETTABLEKS                       R10 R15 K9 ["instanceId"]
       56 GETTABLEKS                       R16 R10 K17 ["ClassName"]
       58 SETTABLEKS                       R16 R15 K10 ["className"]
       60 GETTABLEKS                       R16 R10 K8 ["Name"]
       62 SETTABLEKS                       R16 R15 K11 ["instanceName"]
       64 GETTABLEKS                       R17 R10 K18 ["SourceAssetId"]
       66 LOADN                            R18 0
       67 JUMPIFNOTLT                      R18 R17 ; [+4]
       69 GETTABLEKS                       R16 R10 K18 ["SourceAssetId"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R16
       73 SETTABLEKS                       R16 R15 K12 ["assetId"]
       75 GETUPVAL                         R17 2
       76 GETTABLEKS                       R16 R17 K19 ["getInstanceAttributes"]
       78 MOVE                             R17 R10
       79 CALL                             R16 1 1
       80 SETTABLEKS                       R16 R15 K13 ["attributes"]
       82 SETTABLEKS                       R12 R15 K14 ["size"]
       84 SETTABLEKS                       R11 R15 K15 ["pos"]
       86 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
       88 GETIMPORT                        R13 K22 [table.insert]
       90 CALL                             R13 2 0
       91 FORGLOOP                         R6 2 ; [-63]
       93 NEWTABLE                         R5 0 0
       95 GETUPVAL                         R7 6
       96 GETTABLEKS                       R6 R7 K23 ["syncContext"]
       98 CALL                             R6 0 0
       99 GETUPVAL                         R7 6
      100 GETTABLEKS                       R6 R7 K24 ["fetchContextV2"]
      102 CALL                             R6 0 1
      103 MOVE                             R5 R6
      104 LOADNIL                          R6
      105 LOADNIL                          R7
      106 GETIMPORT                        R8 K26 [tick]
      108 CALL                             R8 0 1
      109 MOVE                             R6 R8
      110 NEWTABLE                         R8 0 0
      112 GETIMPORT                        R9 K28 [ipairs]
      114 MOVE                             R10 R5
      115 CALL                             R9 1 3
      116 FORGPREP_INEXT                   R9
      117 GETTABLEKS                       R14 R13 K9 ["instanceId"]
      119 LOADB                            R15 1
      120 SETTABLE                         R15 R8 R14
      121 FORGLOOP                         R9 2 [inext] ; [-5]
      123 DUPTABLE                         R9 K30 [{"instanceName", "className", "children"}]
      124 GETIMPORT                        R11 K32 [game]
      126 GETTABLEKS                       R10 R11 K8 ["Name"]
      128 SETTABLEKS                       R10 R9 K11 ["instanceName"]
      130 GETIMPORT                        R11 K32 [game]
      132 GETTABLEKS                       R10 R11 K17 ["ClassName"]
      134 SETTABLEKS                       R10 R9 K10 ["className"]
      136 NEWTABLE                         R10 0 0
      138 SETTABLEKS                       R10 R9 K29 ["children"]
      140 SETTABLEKS                       R9 R1 K33 ["CRHierarchy"]
      142 GETGLOBAL                        R9 K34 ["populateCodeRunnerDMContext"]
      144 GETTABLEKS                       R10 R1 K33 ["CRHierarchy"]
      146 GETIMPORT                        R11 K32 [game]
      148 GETUPVAL                         R12 7
      149 CALL                             R12 0 1
      150 MOVE                             R13 R4
      151 CALL                             R9 4 0
      152 GETIMPORT                        R9 K36 [next]
      154 MOVE                             R10 R4
      155 CALL                             R9 1 1
      156 JUMPIFNOTEQKNIL                  R9 ; [+7]
      158 GETIMPORT                        R9 K36 [next]
      160 MOVE                             R10 R8
      161 CALL                             R9 1 1
      162 JUMPIFEQKNIL                     R9 ; [+79]
      164 GETGLOBAL                        R9 K37 ["generateHierarchy"]
      166 GETIMPORT                        R10 K32 [game]
      168 MOVE                             R11 R4
      169 MOVE                             R12 R3
      170 MOVE                             R13 R8
      171 CALL                             R9 4 1
      172 SETTABLEKS                       R9 R1 K38 ["Hierarchy"]
      174 GETUPVAL                         R10 8
      175 GETTABLEKS                       R12 R1 K38 ["Hierarchy"]
      177 NAMECALL                         R10 R10 K39 ["JSONEncode"]
      179 CALL                             R10 2 1
      180 FASTCALL1                        STRING_LEN R10 ; [+2]
      181 GETIMPORT                        R9 K41 [string.len]
      183 CALL                             R9 1 1
      184 SETUPVAL                         R9 0
      185 GETUPVAL                         R9 0
      186 GETUPVAL                         R10 9
      187 CALL                             R10 0 1
      188 JUMPIFNOTLT                      R10 R9 ; [+6]
      190 LOADNIL                          R9
      191 SETTABLEKS                       R9 R1 K38 ["Hierarchy"]
      193 LOADN                            R9 0
      194 SETUPVAL                         R9 0
      195 GETGLOBAL                        R9 K42 ["populateChildren"]
      197 GETTABLEKS                       R10 R1 K38 ["Hierarchy"]
      199 GETIMPORT                        R11 K32 [game]
      201 MOVE                             R12 R3
      202 GETUPVAL                         R13 10
      203 CALL                             R13 0 -1
      204 CALL                             R9 -1 0
      205 GETTABLEKS                       R9 R1 K38 ["Hierarchy"]
      207 JUMPIF                           R9 ; [+23]
      208 DUPTABLE                         R9 K43 [{"instanceId", "instanceName", "className", "children"}]
      209 GETIMPORT                        R10 K32 [game]
      211 SETTABLEKS                       R10 R9 K9 ["instanceId"]
      213 GETIMPORT                        R11 K32 [game]
      215 GETTABLEKS                       R10 R11 K8 ["Name"]
      217 SETTABLEKS                       R10 R9 K11 ["instanceName"]
      219 GETIMPORT                        R11 K32 [game]
      221 GETTABLEKS                       R10 R11 K17 ["ClassName"]
      223 SETTABLEKS                       R10 R9 K10 ["className"]
      225 NEWTABLE                         R10 0 0
      227 SETTABLEKS                       R10 R9 K29 ["children"]
      229 SETTABLEKS                       R9 R1 K38 ["Hierarchy"]
      231 GETGLOBAL                        R9 K44 ["populateMissingGlobalContainers"]
      233 GETTABLEKS                       R10 R1 K38 ["Hierarchy"]
      235 GETIMPORT                        R11 K32 [game]
      237 MOVE                             R12 R3
      238 GETUPVAL                         R13 11
      239 CALL                             R13 0 -1
      240 CALL                             R9 -1 0
      241 JUMP                             ; [+32]
      242 DUPTABLE                         R9 K43 [{"instanceId", "instanceName", "className", "children"}]
      243 GETIMPORT                        R10 K32 [game]
      245 SETTABLEKS                       R10 R9 K9 ["instanceId"]
      247 GETIMPORT                        R11 K32 [game]
      249 GETTABLEKS                       R10 R11 K8 ["Name"]
      251 SETTABLEKS                       R10 R9 K11 ["instanceName"]
      253 GETIMPORT                        R11 K32 [game]
      255 GETTABLEKS                       R10 R11 K17 ["ClassName"]
      257 SETTABLEKS                       R10 R9 K10 ["className"]
      259 NEWTABLE                         R10 0 0
      261 SETTABLEKS                       R10 R9 K29 ["children"]
      263 GETGLOBAL                        R10 K44 ["populateMissingGlobalContainers"]
      265 MOVE                             R11 R9
      266 GETIMPORT                        R12 K32 [game]
      268 MOVE                             R13 R3
      269 GETUPVAL                         R14 12
      270 CALL                             R14 0 -1
      271 CALL                             R10 -1 0
      272 SETTABLEKS                       R9 R1 K38 ["Hierarchy"]
      274 GETUPVAL                         R10 6
      275 GETTABLEKS                       R9 R10 K45 ["getInstanceTypes"]
      277 CALL                             R9 0 1
      278 LOADN                            R10 0
      279 GETIMPORT                        R11 K47 [pairs]
      281 MOVE                             R12 R4
      282 CALL                             R11 1 3
      283 FORGPREP_NEXT                    R11
      284 GETUPVAL                         R16 13
      285 CALL                             R16 0 1
      286 JUMPIFLE                         R16 R10 ; [+12]
      288 GETUPVAL                         R17 6
      289 GETTABLEKS                       R16 R17 K48 ["registerInstanceV2"]
      291 MOVE                             R17 R14
      292 MOVE                             R18 R0
      293 GETTABLEKS                       R19 R9 K2 ["Selected"]
      295 CALL                             R16 3 0
      296 ADDK                             R10 R10 K49 [1]
      297 FORGLOOP                         R11 2 ; [-14]
      299 GETIMPORT                        R11 K26 [tick]
      301 CALL                             R11 0 1
      302 MOVE                             R7 R11
      303 SUB                              R11 R7 R6
      304 GETUPVAL                         R12 14
      305 MOVE                             R14 R0
      306 MOVE                             R15 R11
      307 NAMECALL                         R12 R12 K50 ["DataModelHierarchyLatency"]
      309 CALL                             R12 3 0
      310 GETUPVAL                         R13 15
      311 NAMECALL                         R13 R13 K51 ["GetSettings"]
      313 CALL                             R13 1 1
      314 GETTABLEKS                       R12 R13 K52 ["UseInventoryAssets"]
      316 SETTABLEKS                       R12 R1 K53 ["use_inventory_assets"]
      318 GETUPVAL                         R13 16
      319 CALL                             R13 0 1
      320 JUMPIFNOT                        R13 ; [+2]
      321 LOADB                            R12 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R12
      324 SETTABLEKS                       R12 R1 K54 ["enable_audio_capabilities"]
      326 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getRequestCFrame"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["GetRequestMetadata"]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K2 ["RequestCFrame"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K1 ["GetRequestMetadata"]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K3 ["PlacementSize"]
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R4 R2 K4 ["X"]
       19 GETUPVAL                         R5 2
       20 CALL                             R5 0 1
       21 GETTABLEKS                       R6 R2 K5 ["Z"]
       23 FASTCALL                         VECTOR ; [+2]
       24 GETIMPORT                        R3 K8 [Vector3.new]
       26 CALL                             R3 3 1
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 MOVE                             R7 R3
       31 CALL                             R4 3 1
       32 DUPTABLE                         R5 K11 [{"placement_area", "viewport_instances"}]
       33 DUPTABLE                         R6 K14 [{"x", "z"}]
       34 GETTABLEKS                       R7 R2 K4 ["X"]
       36 SETTABLEKS                       R7 R6 K12 ["x"]
       38 GETTABLEKS                       R7 R2 K5 ["Z"]
       40 SETTABLEKS                       R7 R6 K13 ["z"]
       42 SETTABLEKS                       R6 R5 K9 ["placement_area"]
       44 SETTABLEKS                       R4 R5 K10 ["viewport_instances"]
       46 RETURN                           R5 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DefaultContextCollector"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 CAPTURE                          UPVAL U16
       19 CAPTURE                          UPVAL U17
       20 NAMECALL                         R0 R0 K1 ["RegisterContextCollector"]
       22 CALL                             R0 3 0
       23 GETUPVAL                         R0 0
       24 LOADK                            R2 K2 ["ViewportContextCollector"]
       25 DUPCLOSURE                       R3 K3 [PROTO_14]
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U18
       29 CAPTURE                          UPVAL U19
       30 NAMECALL                         R0 R0 K1 ["RegisterContextCollector"]
       32 CALL                             R0 3 0
       33 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DefaultContextCollector"]
        2 NAMECALL                         R0 R0 K1 ["UnregisterContextCollector"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R2 K2 ["ViewportContextCollector"]
        7 NAMECALL                         R0 R0 K1 ["UnregisterContextCollector"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R5 R6 K12 ["Parent"]
       33 GETTABLEKS                       R4 R5 K13 ["RecentInstancesContext"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K10 ["Utils"]
       42 GETTABLEKS                       R5 R6 K10 ["Utils"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R5 R2 K14 ["GetService"]
       47 LOADK                            R6 K15 ["StreamingService"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R2 K14 ["GetService"]
       51 LOADK                            R7 K16 ["ChatbotUIService"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K14 ["GetService"]
       55 LOADK                            R8 K17 ["ConversationalAIAcceptanceService"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R2 K14 ["GetService"]
       59 LOADK                            R9 K18 ["Selection"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R2 K14 ["GetService"]
       63 LOADK                            R10 K19 ["HttpService"]
       64 CALL                             R9 1 1
       65 NEWTABLE                         R10 4 0
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R15 R0 K6 ["Src"]
       71 GETTABLEKS                       R14 R15 K20 ["Flags"]
       73 GETTABLEKS                       R13 R14 K21 ["FFlagDebugConvAIEnableAudioCapabilities"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R11 R12 K22 ["Get"]
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R16 R0 K6 ["Src"]
       82 GETTABLEKS                       R15 R16 K20 ["Flags"]
       84 GETTABLEKS                       R14 R15 K23 ["FFlagShowViewportContextVisualization"]
       86 CALL                             R13 1 1
       87 GETTABLEKS                       R12 R13 K22 ["Get"]
       89 GETIMPORT                        R14 K5 [require]
       91 GETTABLEKS                       R17 R0 K6 ["Src"]
       93 GETTABLEKS                       R16 R17 K20 ["Flags"]
       95 GETTABLEKS                       R15 R16 K24 ["FIntCAPCodeRunnerDMHierarchyDepth"]
       97 CALL                             R14 1 1
       98 GETTABLEKS                       R13 R14 K22 ["Get"]
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R18 R0 K6 ["Src"]
      104 GETTABLEKS                       R17 R18 K20 ["Flags"]
      106 GETTABLEKS                       R16 R17 K25 ["FIntCAPCodeRunnerDMHierarchyMaxBytes"]
      108 CALL                             R15 1 1
      109 GETTABLEKS                       R14 R15 K22 ["Get"]
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R19 R0 K6 ["Src"]
      115 GETTABLEKS                       R18 R19 K20 ["Flags"]
      117 GETTABLEKS                       R17 R18 K26 ["FIntCAPDMHierarchyDefaultDepth"]
      119 CALL                             R16 1 1
      120 GETTABLEKS                       R15 R16 K22 ["Get"]
      122 GETIMPORT                        R17 K5 [require]
      124 GETTABLEKS                       R20 R0 K6 ["Src"]
      126 GETTABLEKS                       R19 R20 K20 ["Flags"]
      128 GETTABLEKS                       R18 R19 K27 ["FIntCAPDMHierarchyGlobalContainerDepth"]
      130 CALL                             R17 1 1
      131 GETTABLEKS                       R16 R17 K22 ["Get"]
      133 GETIMPORT                        R18 K5 [require]
      135 GETTABLEKS                       R21 R0 K6 ["Src"]
      137 GETTABLEKS                       R20 R21 K20 ["Flags"]
      139 GETTABLEKS                       R19 R20 K28 ["FIntCAPDMHierarchyMaxBytes"]
      141 CALL                             R18 1 1
      142 GETTABLEKS                       R17 R18 K22 ["Get"]
      144 GETIMPORT                        R19 K5 [require]
      146 GETTABLEKS                       R22 R0 K6 ["Src"]
      148 GETTABLEKS                       R21 R22 K20 ["Flags"]
      150 GETTABLEKS                       R20 R21 K29 ["FIntCAPDMHierarchySelectedMaxDepth"]
      152 CALL                             R19 1 1
      153 GETTABLEKS                       R18 R19 K22 ["Get"]
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R23 R0 K6 ["Src"]
      159 GETTABLEKS                       R22 R23 K20 ["Flags"]
      161 GETTABLEKS                       R21 R22 K30 ["FIntCAPRecentSelectedInstanceCount"]
      163 CALL                             R20 1 1
      164 GETTABLEKS                       R19 R20 K22 ["Get"]
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R24 R0 K6 ["Src"]
      170 GETTABLEKS                       R23 R24 K20 ["Flags"]
      172 GETTABLEKS                       R22 R23 K31 ["FIntMaxContextAllowedFromSelection"]
      174 CALL                             R21 1 1
      175 GETTABLEKS                       R20 R21 K22 ["Get"]
      177 GETIMPORT                        R22 K5 [require]
      179 GETTABLEKS                       R25 R0 K6 ["Src"]
      181 GETTABLEKS                       R24 R25 K20 ["Flags"]
      183 GETTABLEKS                       R23 R24 K32 ["FIntMaxContextAllowedFromViewport"]
      185 CALL                             R22 1 1
      186 GETTABLEKS                       R21 R22 K22 ["Get"]
      188 GETIMPORT                        R23 K5 [require]
      190 GETTABLEKS                       R26 R0 K6 ["Src"]
      192 GETTABLEKS                       R25 R26 K20 ["Flags"]
      194 GETTABLEKS                       R24 R25 K33 ["FIntViewportContextCollectionHeight"]
      196 CALL                             R23 1 1
      197 GETTABLEKS                       R22 R23 K22 ["Get"]
      199 GETIMPORT                        R24 K5 [require]
      201 GETTABLEKS                       R27 R0 K6 ["Src"]
      203 GETTABLEKS                       R26 R27 K20 ["Flags"]
      205 GETTABLEKS                       R25 R26 K34 ["FIntViewportRootMaxAreaFactor"]
      207 CALL                             R24 1 1
      208 GETTABLEKS                       R23 R24 K22 ["Get"]
      210 GETIMPORT                        R25 K5 [require]
      212 GETTABLEKS                       R28 R0 K6 ["Src"]
      214 GETTABLEKS                       R27 R28 K20 ["Flags"]
      216 GETTABLEKS                       R26 R27 K35 ["FStringCodeRunnerGlobalContainerProportion"]
      218 CALL                             R25 1 1
      219 GETTABLEKS                       R24 R25 K22 ["Get"]
      221 GETIMPORT                        R25 K38 [OverlapParams.new]
      223 CALL                             R25 0 1
      224 LOADB                            R26 1
      225 SETTABLEKS                       R26 R25 K39 ["BruteForceAllSlow"]
      227 NEWTABLE                         R26 8 0
      229 LOADB                            R27 1
      230 SETTABLEKS                       R27 R26 K40 ["ServerScriptService"]
      232 LOADB                            R27 1
      233 SETTABLEKS                       R27 R26 K41 ["ReplicatedStorage"]
      235 LOADB                            R27 1
      236 SETTABLEKS                       R27 R26 K42 ["ReplicatedFirst"]
      238 LOADB                            R27 1
      239 SETTABLEKS                       R27 R26 K43 ["Workspace"]
      241 LOADB                            R27 1
      242 SETTABLEKS                       R27 R26 K44 ["StarterGui"]
      244 LOADB                            R27 1
      245 SETTABLEKS                       R27 R26 K45 ["StarterPlayer"]
      247 DUPCLOSURE                       R27 K46 [PROTO_0]
      248 CAPTURE                          VAL R4
      249 DUPCLOSURE                       R28 K47 [PROTO_1]
      250 CAPTURE                          VAL R12
      251 CAPTURE                          VAL R4
      252 DUPCLOSURE                       R29 K48 [PROTO_2]
      253 DUPCLOSURE                       R30 K49 [PROTO_3]
      254 CAPTURE                          VAL R21
      255 CAPTURE                          VAL R23
      256 CAPTURE                          VAL R27
      257 DUPCLOSURE                       R31 K50 [PROTO_4]
      258 CAPTURE                          VAL R25
      259 CAPTURE                          VAL R30
      260 CAPTURE                          VAL R28
      261 CAPTURE                          VAL R27
      262 CAPTURE                          VAL R1
      263 LOADN                            R32 0
      264 LOADN                            R33 0
      265 DUPCLOSURE                       R34 K51 [PROTO_5]
      266 SETTABLEKS                       R34 R10 K52 ["parseContainerCapString"]
      268 DUPCLOSURE                       R34 K53 [PROTO_6]
      269 CAPTURE                          VAL R4
      270 SETGLOBAL                        R34 K54 ["generateHierarchy"]
      272 DUPCLOSURE                       R34 K55 [PROTO_7]
      273 SETGLOBAL                        R34 K56 ["populateChildren"]
      275 NEWCLOSURE                       R34 P8
      276 CAPTURE                          VAL R4
      277 CAPTURE                          VAL R9
      278 CAPTURE                          REF R32
      279 CAPTURE                          VAL R17
      280 SETGLOBAL                        R34 K57 ["populateChildrenRecursive"]
      282 DUPCLOSURE                       R34 K58 [PROTO_9]
      283 CAPTURE                          VAL R26
      284 SETGLOBAL                        R34 K59 ["populateMissingGlobalContainers"]
      286 NEWCLOSURE                       R34 P10
      287 CAPTURE                          REF R33
      288 CAPTURE                          VAL R14
      289 CAPTURE                          VAL R10
      290 CAPTURE                          VAL R24
      291 SETGLOBAL                        R34 K60 ["populateCodeRunnerDMContext"]
      293 NEWCLOSURE                       R34 P11
      294 CAPTURE                          VAL R9
      295 CAPTURE                          VAL R7
      296 CAPTURE                          REF R33
      297 SETGLOBAL                        R34 K61 ["populateFullDMTree"]
      299 NEWCLOSURE                       R34 P12
      300 CAPTURE                          VAL R5
      301 CAPTURE                          REF R32
      302 CAPTURE                          VAL R8
      303 CAPTURE                          VAL R4
      304 CAPTURE                          VAL R20
      305 CAPTURE                          VAL R27
      306 CAPTURE                          VAL R1
      307 CAPTURE                          VAL R3
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R9
      310 CAPTURE                          VAL R17
      311 CAPTURE                          VAL R18
      312 CAPTURE                          VAL R16
      313 CAPTURE                          VAL R15
      314 CAPTURE                          VAL R19
      315 CAPTURE                          VAL R7
      316 CAPTURE                          VAL R6
      317 CAPTURE                          VAL R11
      318 CAPTURE                          VAL R22
      319 CAPTURE                          VAL R31
      320 SETTABLEKS                       R34 R10 K62 ["register"]
      322 DUPCLOSURE                       R34 K63 [PROTO_16]
      323 CAPTURE                          VAL R5
      324 SETTABLEKS                       R34 R10 K64 ["unregister"]
      326 CLOSEUPVALS                      R32
      327 RETURN                           R10 1
