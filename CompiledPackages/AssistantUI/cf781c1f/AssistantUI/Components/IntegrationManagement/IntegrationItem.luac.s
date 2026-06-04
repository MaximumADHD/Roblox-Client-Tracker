PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["label"]
        2 NAMECALL                         R2 R0 K1 ["getAuthorizer"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 NAMECALL                         R3 R2 K2 ["getProvider"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R3 R3 K3 ["getTokens"]
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+5]
       15 GETTABLEKS                       R4 R3 K4 ["access_token"]
       17 JUMPIFNOT                        R4 ; [+2]
       18 LOADB                            R4 1
       19 RETURN                           R4 1
       20 LOADB                            R4 0
       21 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R0 R0 K1 ["disableTool"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 NAMECALL                         R0 R0 K2 ["enableTool"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADN                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R1 K0 [0.5]
        4 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["underlyingClient"]
        2 GETTABLEKS                       R2 R0 K1 ["name"]
        4 MOVE                             R3 R1
        5 JUMPIFNOT                        R3 ; [+5]
        6 MOVE                             R6 R2
        7 NAMECALL                         R4 R1 K2 ["isToolDisabled"]
        9 CALL                             R4 2 1
       10 NOT                              R3 R4
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["useBinding"]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R8 0 2
       25 MOVE                             R9 R1
       26 MOVE                             R10 R2
       27 SETLIST                          R8 R9 2 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R8 R1 K5 ["onToolDisabled"]
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R10 0 2
       38 MOVE                             R11 R1
       39 MOVE                             R12 R2
       40 SETLIST                          R10 R11 2 [1]
       42 CALL                             R7 3 0
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R8 R1 K6 ["onToolEnabled"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R10 0 2
       51 MOVE                             R11 R1
       52 MOVE                             R12 R2
       53 SETLIST                          R10 R11 2 [1]
       55 CALL                             R7 3 0
       56 GETUPVAL                         R7 2
       57 GETUPVAL                         R8 3
       58 DUPTABLE                         R9 K11 [{"tag", "LayoutOrder", "GroupTransparency", "testId"}]
       59 LOADK                            R10 K12 ["auto-xy"]
       60 SETTABLEKS                       R10 R9 K7 ["tag"]
       62 GETTABLEKS                       R10 R0 K8 ["LayoutOrder"]
       64 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       66 DUPCLOSURE                       R12 K13 [PROTO_4]
       67 NAMECALL                         R10 R4 K14 ["map"]
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K9 ["GroupTransparency"]
       72 GETUPVAL                         R10 4
       73 GETTABLEKS                       R10 R10 K15 ["IntegrationItem"]
       75 GETTABLEKS                       R10 R10 K16 ["ToolPill"]
       77 MOVE                             R11 R2
       78 CALL                             R10 1 1
       79 SETTABLEKS                       R10 R9 K10 ["testId"]
       81 DUPTABLE                         R10 K18 [{"Chip"}]
       82 GETUPVAL                         R11 2
       83 GETUPVAL                         R12 5
       84 DUPTABLE                         R13 K22 [{"text", "size", "onActivated"}]
       85 GETTABLEKS                       R14 R0 K1 ["name"]
       87 SETTABLEKS                       R14 R13 K19 ["text"]
       89 GETUPVAL                         R14 6
       90 GETTABLEKS                       R14 R14 K23 ["Enums"]
       92 GETTABLEKS                       R14 R14 K24 ["ChipSize"]
       94 GETTABLEKS                       R14 R14 K25 ["Small"]
       96 SETTABLEKS                       R14 R13 K20 ["size"]
       98 SETTABLEKS                       R6 R13 K21 ["onActivated"]
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K17 ["Chip"]
      103 CALL                             R7 3 -1
      104 RETURN                           R7 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["listTools"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["await"]
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R3 R1 K2 ["tools"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 NEWTABLE                         R3 0 0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["status"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Connected"]
        8 JUMPIFEQ                         R0 R1 ; [+9]
       10 GETUPVAL                         R0 3
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K2 ["current"]
       14 GETUPVAL                         R0 4
       15 LOADNIL                          R1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 5
       19 JUMPIFNOT                        R0 ; [+4]
       20 GETUPVAL                         R0 3
       21 GETTABLEKS                       R0 R0 K2 ["current"]
       23 JUMPIFNOT                        R0 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 3
       26 LOADB                            R1 1
       27 SETTABLEKS                       R1 R0 K2 ["current"]
       29 GETIMPORT                        R0 K5 [task.spawn]
       31 NEWCLOSURE                       R1 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U4
       34 CALL                             R0 1 1
       35 NEWCLOSURE                       R1 P1
       36 CAPTURE                          VAL R0
       37 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEnableStatus"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 0
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["label"]
        3 NAMECALL                         R1 R0 K1 ["getClient"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETUPVAL                         R2 1
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["current"]
       11 GETIMPORT                        R2 K4 [pcall]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U2
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 3
       18 CALL                             R2 0 1
       19 JUMPIFNOT                        R2 ; [+4]
       20 GETIMPORT                        R2 K6 [warn]
       22 LOADK                            R3 K7 ["Client not found, this should not happen, should always enabled the client before login"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onAuthorizationChange"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["label"]
        3 NAMECALL                         R1 R0 K1 ["getClient"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+8]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETIMPORT                        R1 K3 [warn]
       12 LOADK                            R2 K4 ["should enable the client before login"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K5 ["authorizerManager"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["label"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["url"]
       24 NAMECALL                         R1 R1 K7 ["getOrCreateAuthorizer"]
       26 CALL                             R1 3 0
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K5 ["authorizerManager"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K0 ["label"]
       33 NAMECALL                         R1 R1 K8 ["startAuthorization"]
       35 CALL                             R1 2 1
       36 NEWCLOSURE                       R3 P0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 NAMECALL                         R1 R1 K9 ["andThen"]
       41 CALL                             R1 2 0
       42 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["authorizerManager"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["label"]
        6 NAMECALL                         R0 R0 K2 ["promiseInvalidateCredentials"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K3 ["onAuthorizationChange"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onRemove"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onEdit"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_20]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+3]
        4 NEWTABLE                         R0 0 0
        6 RETURN                           R0 1
        7 NEWTABLE                         R0 0 0
        9 GETUPVAL                         R1 1
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R6 R5 K0 ["name"]
       15 GETUPVAL                         R7 2
       16 GETUPVAL                         R8 3
       17 DUPTABLE                         R9 K3 [{"underlyingClient", "name", "LayoutOrder"}]
       18 GETUPVAL                         R10 0
       19 SETTABLEKS                       R10 R9 K1 ["underlyingClient"]
       21 GETTABLEKS                       R10 R5 K0 ["name"]
       23 SETTABLEKS                       R10 R9 K0 ["name"]
       25 SETTABLEKS                       R4 R9 K2 ["LayoutOrder"]
       27 CALL                             R7 2 1
       28 SETTABLE                         R7 R0 R6
       29 FORGLOOP                         R1 2 ; [-17]
       31 RETURN                           R0 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["integration"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 2
        7 DUPTABLE                         R5 K2 [{"integration", "withClient"}]
        8 SETTABLEKS                       R1 R5 K0 ["integration"]
       10 SETTABLEKS                       R3 R5 K1 ["withClient"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 3
       14 DUPTABLE                         R6 K4 [{"underlyingClient"}]
       15 SETTABLEKS                       R4 R6 K3 ["underlyingClient"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K5 ["useState"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 2
       23 GETUPVAL                         R8 4
       24 GETTABLEKS                       R8 R8 K6 ["useRef"]
       26 LOADB                            R9 0
       27 CALL                             R8 1 1
       28 GETUPVAL                         R9 4
       29 GETTABLEKS                       R9 R9 K5 ["useState"]
       31 LOADB                            R10 0
       32 CALL                             R9 1 2
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R11 R11 K6 ["useRef"]
       36 LOADB                            R12 0
       37 CALL                             R11 1 1
       38 GETUPVAL                         R12 4
       39 GETTABLEKS                       R12 R12 K7 ["useContext"]
       41 GETUPVAL                         R13 5
       42 GETTABLEKS                       R13 R13 K8 ["Context"]
       44 CALL                             R12 1 1
       45 GETUPVAL                         R13 3
       46 DUPTABLE                         R14 K4 [{"underlyingClient"}]
       47 SETTABLEKS                       R4 R14 K3 ["underlyingClient"]
       49 CALL                             R13 1 1
       50 GETUPVAL                         R14 4
       51 GETTABLEKS                       R14 R14 K5 ["useState"]
       53 NEWTABLE                         R15 0 0
       55 CALL                             R14 1 2
       56 GETUPVAL                         R16 4
       57 GETTABLEKS                       R16 R16 K9 ["useEffect"]
       59 NEWCLOSURE                       R17 P0
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R18 0 1
       65 MOVE                             R19 R5
       66 SETLIST                          R18 R19 1 [1]
       68 CALL                             R16 2 0
       69 GETUPVAL                         R16 4
       70 GETTABLEKS                       R16 R16 K9 ["useEffect"]
       72 NEWCLOSURE                       R17 P1
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R13
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R9
       79 NEWTABLE                         R18 0 3
       81 MOVE                             R19 R9
       82 MOVE                             R20 R4
       83 MOVE                             R21 R13
       84 SETLIST                          R18 R19 3 [1]
       86 CALL                             R16 2 0
       87 GETTABLEKS                       R17 R12 K10 ["authorizerManager"]
       89 GETTABLEKS                       R20 R1 K11 ["label"]
       91 NAMECALL                         R18 R17 K12 ["getAuthorizer"]
       93 CALL                             R18 2 1
       94 JUMPIF                           R18 ; [+2]
       95 LOADB                            R16 0
       96 JUMP                             ; [+13]
       97 NAMECALL                         R19 R18 K13 ["getProvider"]
       99 CALL                             R19 1 1
      100 GETTABLEKS                       R19 R19 K14 ["getTokens"]
      102 CALL                             R19 0 1
      103 JUMPIFNOT                        R19 ; [+5]
      104 GETTABLEKS                       R20 R19 K15 ["access_token"]
      106 JUMPIFNOT                        R20 ; [+2]
      107 LOADB                            R16 1
      108 JUMP                             ; [+1]
      109 LOADB                            R16 0
      110 GETUPVAL                         R17 4
      111 GETTABLEKS                       R17 R17 K16 ["useCallback"]
      113 NEWCLOSURE                       R18 P2
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R1
      116 NEWTABLE                         R19 0 2
      118 GETTABLEKS                       R20 R0 K17 ["setEnableStatus"]
      120 MOVE                             R21 R1
      121 SETLIST                          R19 R20 2 [1]
      123 CALL                             R17 2 1
      124 GETUPVAL                         R18 4
      125 GETTABLEKS                       R18 R18 K16 ["useCallback"]
      127 NEWCLOSURE                       R19 P3
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R17
      132 CAPTURE                          UPVAL U7
      133 NEWTABLE                         R20 0 2
      135 MOVE                             R21 R3
      136 MOVE                             R22 R1
      137 SETLIST                          R20 R21 2 [1]
      139 CALL                             R18 2 1
      140 GETUPVAL                         R19 4
      141 GETTABLEKS                       R19 R19 K16 ["useCallback"]
      143 NEWCLOSURE                       R20 P4
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R1
      146 CAPTURE                          UPVAL U7
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R18
      150 NEWTABLE                         R21 0 5
      152 MOVE                             R22 R3
      153 MOVE                             R23 R12
      154 MOVE                             R24 R18
      155 MOVE                             R25 R1
      156 GETTABLEKS                       R26 R0 K18 ["onAuthorizationChange"]
      158 SETLIST                          R21 R22 5 [1]
      160 CALL                             R19 2 1
      161 GETUPVAL                         R20 4
      162 GETTABLEKS                       R20 R20 K16 ["useCallback"]
      164 NEWCLOSURE                       R21 P5
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R0
      169 NEWTABLE                         R22 0 4
      171 MOVE                             R23 R12
      172 GETTABLEKS                       R24 R0 K18 ["onAuthorizationChange"]
      174 MOVE                             R25 R1
      175 MOVE                             R26 R18
      176 SETLIST                          R22 R23 4 [1]
      178 CALL                             R20 2 1
      179 GETUPVAL                         R21 4
      180 GETTABLEKS                       R21 R21 K16 ["useCallback"]
      182 NEWCLOSURE                       R22 P6
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R0
      185 CAPTURE                          VAL R1
      186 NEWTABLE                         R23 0 2
      188 GETTABLEKS                       R24 R0 K19 ["onRemove"]
      190 MOVE                             R25 R1
      191 SETLIST                          R23 R24 2 [1]
      193 CALL                             R21 2 1
      194 GETUPVAL                         R22 4
      195 GETTABLEKS                       R22 R22 K16 ["useCallback"]
      197 NEWCLOSURE                       R23 P7
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R1
      200 NEWTABLE                         R24 0 2
      202 GETTABLEKS                       R25 R0 K20 ["onEdit"]
      204 MOVE                             R26 R1
      205 SETLIST                          R24 R25 2 [1]
      207 CALL                             R22 2 1
      208 GETUPVAL                         R23 4
      209 GETTABLEKS                       R23 R23 K16 ["useCallback"]
      211 NEWCLOSURE                       R24 P8
      212 CAPTURE                          VAL R10
      213 NEWTABLE                         R25 0 0
      215 CALL                             R23 2 1
      216 GETUPVAL                         R24 4
      217 GETTABLEKS                       R24 R24 K21 ["useMemo"]
      219 NEWCLOSURE                       R25 P9
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R14
      222 CAPTURE                          UPVAL U8
      223 CAPTURE                          UPVAL U9
      224 NEWTABLE                         R26 0 2
      226 MOVE                             R27 R14
      227 MOVE                             R28 R4
      228 SETLIST                          R26 R27 2 [1]
      230 CALL                             R24 2 1
      231 JUMPIFNOTEQKNIL                  R4 ; [+2]
      233 LOADB                            R25 0 +1
      234 LOADB                            R25 1
      235 JUMPIFEQKNIL                     R14 ; [+2]
      237 LOADB                            R26 0 +1
      238 LOADB                            R26 1
      239 MOVE                             R27 R25
      240 JUMPIFNOT                        R27 ; [+8]
      241 MOVE                             R27 R26
      242 JUMPIF                           R27 ; [+6]
      243 LENGTH                           R28 R14
      244 LOADN                            R29 0
      245 JUMPIFLT                         R29 R28 ; [+2]
      247 LOADB                            R27 0 +1
      248 LOADB                            R27 1
      249 GETUPVAL                         R28 8
      250 GETUPVAL                         R29 10
      251 GETTABLEKS                       R29 R29 K22 ["Root"]
      253 DUPTABLE                         R30 K26 [{"expanded", "contentId", "editThisContent"}]
      254 SETTABLEKS                       R9 R30 K23 ["expanded"]
      256 GETTABLEKS                       R31 R1 K11 ["label"]
      258 SETTABLEKS                       R31 R30 K24 ["contentId"]
      260 SETTABLEKS                       R23 R30 K25 ["editThisContent"]
      262 DUPTABLE                         R31 K30 [{"Header", "Content", "Divider"}]
      263 GETUPVAL                         R32 8
      264 GETUPVAL                         R33 10
      265 GETTABLEKS                       R33 R33 K27 ["Header"]
      267 DUPTABLE                         R34 K36 [{"LayoutOrder", "AutomaticHeight", "IconSize", "VerticalAlignment", "testId"}]
      268 MOVE                             R35 R2
      269 CALL                             R35 0 1
      270 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      272 LOADB                            R35 1
      273 SETTABLEKS                       R35 R34 K32 ["AutomaticHeight"]
      275 LOADK                            R35 K37 ["medium"]
      276 SETTABLEKS                       R35 R34 K33 ["IconSize"]
      278 LOADK                            R35 K38 ["top"]
      279 SETTABLEKS                       R35 R34 K34 ["VerticalAlignment"]
      281 GETUPVAL                         R35 11
      282 GETTABLEKS                       R35 R35 K39 ["IntegrationItem"]
      284 GETTABLEKS                       R35 R35 K27 ["Header"]
      286 SETTABLEKS                       R35 R34 K35 ["testId"]
      288 DUPTABLE                         R35 K43 [{"LabelAndStatus", "Spacer", "Actions"}]
      289 GETUPVAL                         R36 8
      290 GETUPVAL                         R37 12
      291 DUPTABLE                         R38 K45 [{"tag", "LayoutOrder"}]
      292 LOADK                            R39 K46 ["col auto-xy gap-xxsmall"]
      293 SETTABLEKS                       R39 R38 K44 ["tag"]
      295 MOVE                             R39 R2
      296 CALL                             R39 0 1
      297 SETTABLEKS                       R39 R38 K31 ["LayoutOrder"]
      299 DUPTABLE                         R39 K49 [{"Label", "Status"}]
      300 GETUPVAL                         R40 8
      301 GETUPVAL                         R41 13
      302 DUPTABLE                         R42 K51 [{"tag", "Text", "LayoutOrder"}]
      303 LOADK                            R43 K52 ["auto-xy text-title-small text-no-wrap text-align-x-left"]
      304 SETTABLEKS                       R43 R42 K44 ["tag"]
      306 GETTABLEKS                       R43 R1 K11 ["label"]
      308 SETTABLEKS                       R43 R42 K50 ["Text"]
      310 MOVE                             R43 R2
      311 CALL                             R43 0 1
      312 SETTABLEKS                       R43 R42 K31 ["LayoutOrder"]
      314 CALL                             R40 2 1
      315 SETTABLEKS                       R40 R39 K47 ["Label"]
      317 GETUPVAL                         R40 8
      318 GETUPVAL                         R41 14
      319 DUPTABLE                         R42 K55 [{"LayoutOrder", "onLogin", "connectionInformation"}]
      320 MOVE                             R43 R2
      321 CALL                             R43 0 1
      322 SETTABLEKS                       R43 R42 K31 ["LayoutOrder"]
      324 SETTABLEKS                       R19 R42 K53 ["onLogin"]
      326 SETTABLEKS                       R6 R42 K54 ["connectionInformation"]
      328 CALL                             R40 2 1
      329 SETTABLEKS                       R40 R39 K48 ["Status"]
      331 CALL                             R36 3 1
      332 SETTABLEKS                       R36 R35 K40 ["LabelAndStatus"]
      334 GETUPVAL                         R36 8
      335 GETUPVAL                         R37 12
      336 DUPTABLE                         R38 K45 [{"tag", "LayoutOrder"}]
      337 LOADK                            R39 K56 ["fill"]
      338 SETTABLEKS                       R39 R38 K44 ["tag"]
      340 MOVE                             R39 R2
      341 CALL                             R39 0 1
      342 SETTABLEKS                       R39 R38 K31 ["LayoutOrder"]
      344 CALL                             R36 2 1
      345 SETTABLEKS                       R36 R35 K41 ["Spacer"]
      347 GETUPVAL                         R36 8
      348 GETUPVAL                         R37 15
      349 DUPTABLE                         R38 K61 [{"LayoutOrder", "isChecked", "onStatusChange", "onEdit", "onDelete", "onLogOut"}]
      350 MOVE                             R39 R2
      351 CALL                             R39 0 1
      352 SETTABLEKS                       R39 R38 K31 ["LayoutOrder"]
      354 SETTABLEKS                       R25 R38 K57 ["isChecked"]
      356 SETTABLEKS                       R17 R38 K58 ["onStatusChange"]
      358 SETTABLEKS                       R22 R38 K20 ["onEdit"]
      360 SETTABLEKS                       R21 R38 K59 ["onDelete"]
      362 JUMPIFNOT                        R16 ; [+2]
      363 MOVE                             R39 R20
      364 JUMP                             ; [+1]
      365 LOADNIL                          R39
      366 SETTABLEKS                       R39 R38 K60 ["onLogOut"]
      368 CALL                             R36 2 1
      369 SETTABLEKS                       R36 R35 K42 ["Actions"]
      371 CALL                             R32 3 1
      372 SETTABLEKS                       R32 R31 K27 ["Header"]
      374 JUMPIFNOT                        R27 ; [+72]
      375 GETUPVAL                         R32 8
      376 GETUPVAL                         R33 10
      377 GETTABLEKS                       R33 R33 K28 ["Content"]
      379 DUPTABLE                         R34 K64 [{"tag", "LayoutOrder", "UseVisible", "disableVerticalBar"}]
      380 LOADK                            R35 K65 ["col fill auto-y gap-xsmall padding-right-large padding-left-xlarge"]
      381 SETTABLEKS                       R35 R34 K44 ["tag"]
      383 MOVE                             R35 R2
      384 CALL                             R35 0 1
      385 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      387 LOADB                            R35 1
      388 SETTABLEKS                       R35 R34 K62 ["UseVisible"]
      390 LOADB                            R35 1
      391 SETTABLEKS                       R35 R34 K63 ["disableVerticalBar"]
      393 DUPTABLE                         R35 K68 [{"LoadingShimmer", "ToolsContainer"}]
      394 GETUPVAL                         R36 8
      395 GETUPVAL                         R37 12
      396 DUPTABLE                         R38 K71 [{"tag", "Size", "LayoutOrder", "Visible"}]
      397 LOADK                            R39 K72 ["size-full-0 radius-small bg-shift-200"]
      398 SETTABLEKS                       R39 R38 K44 ["tag"]
      400 GETIMPORT                        R39 K75 [UDim2.new]
      402 LOADN                            R40 1
      403 LOADN                            R41 0
      404 LOADN                            R42 0
      405 LOADN                            R43 24
      406 CALL                             R39 4 1
      407 SETTABLEKS                       R39 R38 K69 ["Size"]
      409 MOVE                             R39 R2
      410 CALL                             R39 0 1
      411 SETTABLEKS                       R39 R38 K31 ["LayoutOrder"]
      413 SETTABLEKS                       R26 R38 K70 ["Visible"]
      415 GETUPVAL                         R39 8
      416 GETUPVAL                         R40 16
      417 CALL                             R39 1 -1
      418 CALL                             R36 -1 1
      419 SETTABLEKS                       R36 R35 K66 ["LoadingShimmer"]
      421 GETUPVAL                         R36 8
      422 GETUPVAL                         R37 12
      423 DUPTABLE                         R38 K76 [{"tag", "testId", "Visible", "LayoutOrder"}]
      424 LOADK                            R39 K77 ["row size-full-0 auto-y gap-xsmall wrap"]
      425 SETTABLEKS                       R39 R38 K44 ["tag"]
      427 GETUPVAL                         R39 11
      428 GETTABLEKS                       R39 R39 K39 ["IntegrationItem"]
      430 GETTABLEKS                       R39 R39 K67 ["ToolsContainer"]
      432 SETTABLEKS                       R39 R38 K35 ["testId"]
      434 NOT                              R39 R26
      435 SETTABLEKS                       R39 R38 K70 ["Visible"]
      437 MOVE                             R39 R2
      438 CALL                             R39 0 1
      439 SETTABLEKS                       R39 R38 K31 ["LayoutOrder"]
      441 MOVE                             R39 R24
      442 CALL                             R36 3 1
      443 SETTABLEKS                       R36 R35 K67 ["ToolsContainer"]
      445 CALL                             R32 3 1
      446 JUMP                             ; [+1]
      447 LOADNIL                          R32
      448 SETTABLEKS                       R32 R31 K28 ["Content"]
      450 GETUPVAL                         R32 8
      451 GETUPVAL                         R33 17
      452 DUPTABLE                         R34 K78 [{"LayoutOrder"}]
      453 MOVE                             R35 R2
      454 CALL                             R35 0 1
      455 SETTABLEKS                       R35 R34 K31 ["LayoutOrder"]
      457 CALL                             R32 2 1
      458 SETTABLEKS                       R32 R31 K29 ["Divider"]
      460 CALL                             R28 3 -1
      461 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["AuthorizerManager"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["ConnectionStatusIndicator"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K6 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["IntegrationItemActions"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K6 ["Parent"]
       40 GETTABLEKS                       R5 R5 K10 ["IntegrationTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K11 ["Components"]
       47 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       49 GETTABLEKS                       R6 R6 K13 ["McpAuthorizerManagerContext"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETIMPORT                        R7 K1 [script]
       56 GETTABLEKS                       R7 R7 K6 ["Parent"]
       58 GETTABLEKS                       R7 R7 K14 ["useUnderlyingClient"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETIMPORT                        R8 K1 [script]
       65 GETTABLEKS                       R8 R8 K6 ["Parent"]
       67 GETTABLEKS                       R8 R8 K15 ["useUnderlyingConnectionStatus"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K11 ["Components"]
       74 GETTABLEKS                       R9 R9 K16 ["Accordion"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Parent"]
       81 GETTABLEKS                       R10 R10 K17 ["Foundation"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K6 ["Parent"]
       88 GETTABLEKS                       R11 R11 K18 ["ModelContextProtocol"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K6 ["Parent"]
       95 GETTABLEKS                       R12 R12 K19 ["React"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K6 ["Parent"]
      102 GETTABLEKS                       R13 R13 K20 ["ReactUtils"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K11 ["Components"]
      109 GETTABLEKS                       R14 R14 K21 ["ShimmerGradient"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K22 ["Util"]
      116 GETTABLEKS                       R15 R15 K23 ["TestIds"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K24 ["Types"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      128 GETTABLEKS                       R17 R17 K26 ["useEventConnection"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      135 GETTABLEKS                       R18 R18 K27 ["useWithClient"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K28 ["Flags"]
      142 GETTABLEKS                       R19 R19 K29 ["FFlagDebugLogAssistantUI"]
      144 CALL                             R18 1 1
      145 GETTABLEKS                       R19 R9 K30 ["View"]
      147 GETTABLEKS                       R20 R9 K31 ["Text"]
      149 GETTABLEKS                       R21 R9 K32 ["Divider"]
      151 GETTABLEKS                       R22 R9 K33 ["Chip"]
      153 GETTABLEKS                       R23 R12 K34 ["createNextOrder"]
      155 GETTABLEKS                       R24 R11 K35 ["createElement"]
      157 GETTABLEKS                       R25 R10 K36 ["ClientConnectionStatus"]
      159 DUPCLOSURE                       R26 K37 [PROTO_0]
      160 DUPCLOSURE                       R27 K38 [PROTO_5]
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R9
      168 DUPCLOSURE                       R28 K39 [PROTO_23]
      169 CAPTURE                          VAL R23
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R25
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R27
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R21
      187 GETTABLEKS                       R29 R11 K40 ["memo"]
      189 MOVE                             R30 R28
      190 CALL                             R29 1 -1
      191 RETURN                           R29 -1
