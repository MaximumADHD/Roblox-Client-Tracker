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
       32 JUMPIFNOT                        R10 ; [+108]
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
       62 GETIMPORT                        R12 K19 [table.sort]
       64 MOVE                             R13 R11
       65 DUPCLOSURE                       R14 K20 [PROTO_0]
       66 CALL                             R12 2 0
       67 MOVE                             R12 R11
       68 LOADNIL                          R13
       69 LOADNIL                          R14
       70 FORGPREP                         R12
       71 LOADK                            R19 K21 ["InputAction"]
       72 NAMECALL                         R17 R16 K9 ["IsA"]
       74 CALL                             R17 2 1
       75 JUMPIFNOT                        R17 ; [+63]
       76 GETUPVAL                         R17 1
       77 GETTABLEKS                       R17 R17 K22 ["serializeAction"]
       79 MOVE                             R18 R16
       80 CALL                             R17 1 1
       81 LOADB                            R18 1
       82 SETTABLEKS                       R18 R17 K11 ["defaultPlayerScript"]
       84 GETTABLEKS                       R18 R10 K14 ["uuid"]
       86 SETTABLEKS                       R18 R17 K13 ["parentUuid"]
       88 NEWTABLE                         R18 0 0
       90 SETTABLEKS                       R18 R17 K4 ["bindings"]
       92 GETTABLEKS                       R18 R17 K14 ["uuid"]
       94 SETTABLE                         R17 R1 R18
       95 GETTABLEKS                       R19 R10 K3 ["actions"]
       97 GETTABLEKS                       R20 R17 K14 ["uuid"]
       99 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      101 GETIMPORT                        R18 K17 [table.insert]
      103 CALL                             R18 2 0
      104 NAMECALL                         R18 R16 K7 ["GetChildren"]
      106 CALL                             R18 1 3
      107 FORGPREP                         R18
      108 LOADK                            R25 K23 ["InputBinding"]
      109 NAMECALL                         R23 R22 K9 ["IsA"]
      111 CALL                             R23 2 1
      112 JUMPIFNOT                        R23 ; [+24]
      113 GETUPVAL                         R23 1
      114 GETTABLEKS                       R23 R23 K24 ["serializeBinding"]
      116 MOVE                             R24 R22
      117 CALL                             R23 1 1
      118 LOADB                            R24 1
      119 SETTABLEKS                       R24 R23 K11 ["defaultPlayerScript"]
      121 GETTABLEKS                       R24 R17 K14 ["uuid"]
      123 SETTABLEKS                       R24 R23 K13 ["parentUuid"]
      125 GETTABLEKS                       R24 R23 K14 ["uuid"]
      127 SETTABLE                         R23 R2 R24
      128 GETTABLEKS                       R25 R17 K4 ["bindings"]
      130 GETTABLEKS                       R26 R23 K14 ["uuid"]
      132 FASTCALL2                        TABLE_INSERT R25 R26 ; [+3]
      134 GETIMPORT                        R24 K17 [table.insert]
      136 CALL                             R24 2 0
      137 FORGLOOP                         R18 2 ; [-30]
      139 FORGLOOP                         R12 2 ; [-69]
      141 FORGLOOP                         R5 2 ; [-114]
      143 DUPTABLE                         R5 K6 [{"contexts", "actions", "bindings", "contextOrder"}]
      144 SETTABLEKS                       R0 R5 K2 ["contexts"]
      146 SETTABLEKS                       R1 R5 K3 ["actions"]
      148 SETTABLEKS                       R2 R5 K4 ["bindings"]
      150 SETTABLEKS                       R3 R5 K5 ["contextOrder"]
      152 RETURN                           R5 1

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
       23 DUPCLOSURE                       R3 K10 [PROTO_1]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
