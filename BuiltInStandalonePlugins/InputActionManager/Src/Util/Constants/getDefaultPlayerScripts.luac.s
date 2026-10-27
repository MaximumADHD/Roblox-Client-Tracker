PROTO_0:
        0 GETIMPORT                        R3 K2 [string.lower]
        2 GETTABLEKS                       R4 R0 K3 ["Name"]
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K2 [string.lower]
        7 GETTABLEKS                       R5 R1 K3 ["Name"]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 0
        9 LOADK                            R6 K0 ["PlayerScripts"]
       10 NAMECALL                         R4 R4 K1 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 JUMPIF                           R4 ; [+10]
       14 DUPTABLE                         R5 K6 [{"contexts", "actions", "bindings", "contextOrder"}]
       15 SETTABLEKS                       R0 R5 K2 ["contexts"]
       17 SETTABLEKS                       R1 R5 K3 ["actions"]
       19 SETTABLEKS                       R2 R5 K4 ["bindings"]
       21 SETTABLEKS                       R3 R5 K5 ["contextOrder"]
       23 RETURN                           R5 1
       24 NAMECALL                         R5 R4 K7 ["GetChildren"]
       26 CALL                             R5 1 3
       27 FORGPREP                         R5
       28 LOADK                            R12 K8 ["InputContext"]
       29 NAMECALL                         R10 R9 K9 ["IsA"]
       31 CALL                             R10 2 1
       32 JUMPIFNOT                        R10 ; [+111]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K10 ["serializeContext"]
       36 MOVE                             R11 R9
       37 CALL                             R10 1 1
       38 LOADB                            R11 1
       39 SETTABLEKS                       R11 R10 K11 ["defaultPlayerScript"]
       41 LOADK                            R11 K12 [""]
       42 SETTABLEKS                       R11 R10 K13 ["parentUuid"]
       44 NEWTABLE                         R11 0 0
       46 SETTABLEKS                       R11 R10 K3 ["actions"]
       48 GETTABLEKS                       R11 R10 K14 ["uuid"]
       50 SETTABLE                         R10 R0 R11
       51 GETTABLEKS                       R13 R10 K14 ["uuid"]
       53 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       55 MOVE                             R12 R3
       56 GETIMPORT                        R11 K17 [table.insert]
       58 CALL                             R11 2 0
       59 NAMECALL                         R11 R9 K7 ["GetChildren"]
       61 CALL                             R11 1 1
       62 GETUPVAL                         R12 2
       63 CALL                             R12 0 1
       64 JUMPIFNOT                        R12 ; [+5]
       65 GETIMPORT                        R12 K19 [table.sort]
       67 MOVE                             R13 R11
       68 DUPCLOSURE                       R14 K20 [PROTO_0]
       69 CALL                             R12 2 0
       70 MOVE                             R12 R11
       71 LOADNIL                          R13
       72 LOADNIL                          R14
       73 FORGPREP                         R12
       74 LOADK                            R19 K21 ["InputAction"]
       75 NAMECALL                         R17 R16 K9 ["IsA"]
       77 CALL                             R17 2 1
       78 JUMPIFNOT                        R17 ; [+63]
       79 GETUPVAL                         R17 1
       80 GETTABLEKS                       R17 R17 K22 ["serializeAction"]
       82 MOVE                             R18 R16
       83 CALL                             R17 1 1
       84 LOADB                            R18 1
       85 SETTABLEKS                       R18 R17 K11 ["defaultPlayerScript"]
       87 GETTABLEKS                       R18 R10 K14 ["uuid"]
       89 SETTABLEKS                       R18 R17 K13 ["parentUuid"]
       91 NEWTABLE                         R18 0 0
       93 SETTABLEKS                       R18 R17 K4 ["bindings"]
       95 GETTABLEKS                       R18 R17 K14 ["uuid"]
       97 SETTABLE                         R17 R1 R18
       98 GETTABLEKS                       R19 R10 K3 ["actions"]
      100 GETTABLEKS                       R20 R17 K14 ["uuid"]
      102 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      104 GETIMPORT                        R18 K17 [table.insert]
      106 CALL                             R18 2 0
      107 NAMECALL                         R18 R16 K7 ["GetChildren"]
      109 CALL                             R18 1 3
      110 FORGPREP                         R18
      111 LOADK                            R25 K23 ["InputBinding"]
      112 NAMECALL                         R23 R22 K9 ["IsA"]
      114 CALL                             R23 2 1
      115 JUMPIFNOT                        R23 ; [+24]
      116 GETUPVAL                         R23 1
      117 GETTABLEKS                       R23 R23 K24 ["serializeBinding"]
      119 MOVE                             R24 R22
      120 CALL                             R23 1 1
      121 LOADB                            R24 1
      122 SETTABLEKS                       R24 R23 K11 ["defaultPlayerScript"]
      124 GETTABLEKS                       R24 R17 K14 ["uuid"]
      126 SETTABLEKS                       R24 R23 K13 ["parentUuid"]
      128 GETTABLEKS                       R24 R23 K14 ["uuid"]
      130 SETTABLE                         R23 R2 R24
      131 GETTABLEKS                       R25 R17 K4 ["bindings"]
      133 GETTABLEKS                       R26 R23 K14 ["uuid"]
      135 FASTCALL2                        TABLE_INSERT R25 R26 ; [+3]
      137 GETIMPORT                        R24 K17 [table.insert]
      139 CALL                             R24 2 0
      140 FORGLOOP                         R18 2 ; [-30]
      142 FORGLOOP                         R12 2 ; [-69]
      144 FORGLOOP                         R5 2 ; [-117]
      146 DUPTABLE                         R5 K6 [{"contexts", "actions", "bindings", "contextOrder"}]
      147 SETTABLEKS                       R0 R5 K2 ["contexts"]
      149 SETTABLEKS                       R1 R5 K3 ["actions"]
      151 SETTABLEKS                       R2 R5 K4 ["bindings"]
      153 SETTABLEKS                       R3 R5 K5 ["contextOrder"]
      155 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["PropertyManager"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagIAMSortActions"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_1]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
