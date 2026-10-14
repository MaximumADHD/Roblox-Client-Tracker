PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        TYPE R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K1 [type]
       13 CALL                             R4 1 1
       14 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 JUMPIFNOT                        R2 ; [+6]
       19 JUMPIFNOT                        R3 ; [+5]
       20 JUMPIFLT                         R0 R1 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1
       25 JUMPIFEQ                         R2 R3 ; [+2]
       27 RETURN                           R2 1
       28 FASTCALL1                        TOSTRING R0 ; [+3]
       29 MOVE                             R6 R0
       30 GETIMPORT                        R5 K4 [tostring]
       32 CALL                             R5 1 1
       33 FASTCALL1                        TOSTRING R1 ; [+3]
       34 MOVE                             R7 R1
       35 GETIMPORT                        R6 K4 [tostring]
       37 CALL                             R6 1 1
       38 JUMPIFLT                         R5 R6 ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 1 ; [-8]
       15 GETIMPORT                        R2 K4 [table.sort]
       17 MOVE                             R3 R1
       18 DUPCLOSURE                       R4 K5 [PROTO_0]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R0 R7
        7 NEWTABLE                         R9 0 0
        9 LOADN                            R10 0
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R12 R8 K0 ["Callbacks"]
       13 CALL                             R11 1 3
       14 FORGPREP                         R11
       15 GETTABLEKS                       R17 R8 K0 ["Callbacks"]
       17 GETTABLE                         R16 R17 R15
       18 DUPTABLE                         R19 K14 [{["text"], ["type"] = "callback", ["id"], ["runtime"], ["functionName"], ["scriptName"], ["lineNumber"], ["enabled"], ["history"], ["source"], ["collectionId"], ["callbackName"]}]
       19 SETTABLEKS                       R15 R19 K1 ["text"]
       21 SETTABLEKS                       R15 R19 K4 ["id"]
       23 GETTABLEKS                       R20 R16 K15 ["Runtime"]
       25 SETTABLEKS                       R20 R19 K5 ["runtime"]
       27 GETTABLEKS                       R20 R16 K16 ["FunctionName"]
       29 SETTABLEKS                       R20 R19 K6 ["functionName"]
       31 GETTABLEKS                       R20 R16 K17 ["ScriptName"]
       33 SETTABLEKS                       R20 R19 K7 ["scriptName"]
       35 GETTABLEKS                       R20 R16 K18 ["LineNumber"]
       37 SETTABLEKS                       R20 R19 K8 ["lineNumber"]
       39 GETTABLEKS                       R20 R16 K19 ["Enabled"]
       41 SETTABLEKS                       R20 R19 K9 ["enabled"]
       43 GETTABLEKS                       R20 R16 K20 ["History"]
       45 SETTABLEKS                       R20 R19 K10 ["history"]
       47 SETTABLEKS                       R1 R19 K11 ["source"]
       49 SETTABLEKS                       R7 R19 K12 ["collectionId"]
       51 SETTABLEKS                       R15 R19 K13 ["callbackName"]
       53 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
       55 MOVE                             R18 R9
       56 GETIMPORT                        R17 K23 [table.insert]
       58 CALL                             R17 2 0
       59 GETTABLEKS                       R17 R16 K15 ["Runtime"]
       61 JUMPIFNOT                        R17 ; [+3]
       62 GETTABLEKS                       R17 R16 K15 ["Runtime"]
       64 ADD                              R10 R10 R17
       65 FORGLOOP                         R11 2 ; [-51]
       67 DUPTABLE                         R13 K27 [{["text"], ["type"] = "collection", ["size"], ["id"], ["children"], ["runtime"], ["enabled"], ["source"], ["collectionId"]}]
       68 GETTABLEKS                       R15 R8 K29 ["Query"]
       70 ORK                              R14 R15 K28 [""]
       71 SETTABLEKS                       R14 R13 K1 ["text"]
       73 GETTABLEKS                       R14 R8 K30 ["Size"]
       75 SETTABLEKS                       R14 R13 K25 ["size"]
       77 SETTABLEKS                       R7 R13 K4 ["id"]
       79 SETTABLEKS                       R9 R13 K26 ["children"]
       81 LOADN                            R15 0
       82 JUMPIFNOTLT                      R15 R10 ; [+3]
       84 MOVE                             R14 R10
       85 JUMP                             ; [+1]
       86 LOADNIL                          R14
       87 SETTABLEKS                       R14 R13 K5 ["runtime"]
       89 GETTABLEKS                       R15 R8 K19 ["Enabled"]
       91 JUMPIFNOTEQKB                    R15 FALSE ; [+2]
       93 LOADB                            R14 0 +1
       94 LOADB                            R14 1
       95 SETTABLEKS                       R14 R13 K9 ["enabled"]
       97 SETTABLEKS                       R1 R13 K11 ["source"]
       99 SETTABLEKS                       R7 R13 K12 ["collectionId"]
      101 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
      103 MOVE                             R12 R2
      104 GETIMPORT                        R11 K23 [table.insert]
      106 CALL                             R11 2 0
      107 FORGLOOP                         R3 2 ; [-102]
      109 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K8 [PROTO_1]
       17 DUPCLOSURE                       R4 K9 [PROTO_2]
       18 CAPTURE                          VAL R3
       19 SETTABLEKS                       R4 R2 K10 ["convertCollectionNodes"]
       21 DUPTABLE                         R4 K12 [{"sortedKeys"}]
       22 SETTABLEKS                       R3 R4 K11 ["sortedKeys"]
       24 SETTABLEKS                       R4 R2 K13 ["_internal"]
       26 RETURN                           R2 1
