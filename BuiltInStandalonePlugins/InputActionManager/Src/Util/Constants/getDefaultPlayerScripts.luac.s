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
       13 GETUPVAL                         R5 1
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+1]
       16 JUMPIF                           R4 ; [+10]
       17 DUPTABLE                         R5 K6 [{"contexts", "actions", "bindings", "contextOrder"}]
       18 SETTABLEKS                       R0 R5 K2 ["contexts"]
       20 SETTABLEKS                       R1 R5 K3 ["actions"]
       22 SETTABLEKS                       R2 R5 K4 ["bindings"]
       24 SETTABLEKS                       R3 R5 K5 ["contextOrder"]
       26 RETURN                           R5 1
       27 NAMECALL                         R5 R4 K7 ["GetChildren"]
       29 CALL                             R5 1 3
       30 FORGPREP                         R5
       31 LOADK                            R12 K8 ["InputContext"]
       32 NAMECALL                         R10 R9 K9 ["IsA"]
       34 CALL                             R10 2 1
       35 JUMPIFNOT                        R10 ; [+111]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K10 ["serializeContext"]
       39 MOVE                             R11 R9
       40 CALL                             R10 1 1
       41 LOADB                            R11 1
       42 SETTABLEKS                       R11 R10 K11 ["defaultPlayerScript"]
       44 LOADK                            R11 K12 [""]
       45 SETTABLEKS                       R11 R10 K13 ["parentUuid"]
       47 NEWTABLE                         R11 0 0
       49 SETTABLEKS                       R11 R10 K3 ["actions"]
       51 GETTABLEKS                       R11 R10 K14 ["uuid"]
       53 SETTABLE                         R10 R0 R11
       54 GETTABLEKS                       R13 R10 K14 ["uuid"]
       56 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       58 MOVE                             R12 R3
       59 GETIMPORT                        R11 K17 [table.insert]
       61 CALL                             R11 2 0
       62 NAMECALL                         R11 R9 K7 ["GetChildren"]
       64 CALL                             R11 1 1
       65 GETUPVAL                         R12 3
       66 CALL                             R12 0 1
       67 JUMPIFNOT                        R12 ; [+5]
       68 GETIMPORT                        R12 K19 [table.sort]
       70 MOVE                             R13 R11
       71 DUPCLOSURE                       R14 K20 [PROTO_0]
       72 CALL                             R12 2 0
       73 MOVE                             R12 R11
       74 LOADNIL                          R13
       75 LOADNIL                          R14
       76 FORGPREP                         R12
       77 LOADK                            R19 K21 ["InputAction"]
       78 NAMECALL                         R17 R16 K9 ["IsA"]
       80 CALL                             R17 2 1
       81 JUMPIFNOT                        R17 ; [+63]
       82 GETUPVAL                         R17 2
       83 GETTABLEKS                       R17 R17 K22 ["serializeAction"]
       85 MOVE                             R18 R16
       86 CALL                             R17 1 1
       87 LOADB                            R18 1
       88 SETTABLEKS                       R18 R17 K11 ["defaultPlayerScript"]
       90 GETTABLEKS                       R18 R10 K14 ["uuid"]
       92 SETTABLEKS                       R18 R17 K13 ["parentUuid"]
       94 NEWTABLE                         R18 0 0
       96 SETTABLEKS                       R18 R17 K4 ["bindings"]
       98 GETTABLEKS                       R18 R17 K14 ["uuid"]
      100 SETTABLE                         R17 R1 R18
      101 GETTABLEKS                       R19 R10 K3 ["actions"]
      103 GETTABLEKS                       R20 R17 K14 ["uuid"]
      105 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      107 GETIMPORT                        R18 K17 [table.insert]
      109 CALL                             R18 2 0
      110 NAMECALL                         R18 R16 K7 ["GetChildren"]
      112 CALL                             R18 1 3
      113 FORGPREP                         R18
      114 LOADK                            R25 K23 ["InputBinding"]
      115 NAMECALL                         R23 R22 K9 ["IsA"]
      117 CALL                             R23 2 1
      118 JUMPIFNOT                        R23 ; [+24]
      119 GETUPVAL                         R23 2
      120 GETTABLEKS                       R23 R23 K24 ["serializeBinding"]
      122 MOVE                             R24 R22
      123 CALL                             R23 1 1
      124 LOADB                            R24 1
      125 SETTABLEKS                       R24 R23 K11 ["defaultPlayerScript"]
      127 GETTABLEKS                       R24 R17 K14 ["uuid"]
      129 SETTABLEKS                       R24 R23 K13 ["parentUuid"]
      131 GETTABLEKS                       R24 R23 K14 ["uuid"]
      133 SETTABLE                         R23 R2 R24
      134 GETTABLEKS                       R25 R17 K4 ["bindings"]
      136 GETTABLEKS                       R26 R23 K14 ["uuid"]
      138 FASTCALL2                        TABLE_INSERT R25 R26 ; [+3]
      140 GETIMPORT                        R24 K17 [table.insert]
      142 CALL                             R24 2 0
      143 FORGLOOP                         R18 2 ; [-30]
      145 FORGLOOP                         R12 2 ; [-69]
      147 FORGLOOP                         R5 2 ; [-117]
      149 DUPTABLE                         R5 K6 [{"contexts", "actions", "bindings", "contextOrder"}]
      150 SETTABLEKS                       R0 R5 K2 ["contexts"]
      152 SETTABLEKS                       R1 R5 K3 ["actions"]
      154 SETTABLEKS                       R2 R5 K4 ["bindings"]
      156 SETTABLEKS                       R3 R5 K5 ["contextOrder"]
      158 RETURN                           R5 1

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
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagIAMPlayerScripts"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagIAMSortActions"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_1]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 RETURN                           R5 1
