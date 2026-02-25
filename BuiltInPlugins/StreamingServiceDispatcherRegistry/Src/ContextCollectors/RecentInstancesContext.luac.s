PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["ClassName"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R5 K1 ["Script"]
        7 NAMECALL                         R3 R0 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+18]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K3 ["Created"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+14]
       16 GETTABLEKS                       R3 R0 K4 ["Parent"]
       18 JUMPIFNOT                        R3 ; [+10]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K5 ["registerInstanceV2"]
       22 GETTABLEKS                       R4 R0 K4 ["Parent"]
       24 MOVE                             R5 R1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K6 ["ScriptAttached"]
       28 CALL                             R3 3 0
       29 GETUPVAL                         R3 3
       30 DUPTABLE                         R4 K14 [{"instanceId", "className", "instanceName", "assetId", "attributes", "instanceType", "requestId"}]
       31 SETTABLEKS                       R0 R4 K7 ["instanceId"]
       33 GETTABLEKS                       R5 R0 K0 ["ClassName"]
       35 SETTABLEKS                       R5 R4 K8 ["className"]
       37 GETTABLEKS                       R5 R0 K15 ["Name"]
       39 SETTABLEKS                       R5 R4 K9 ["instanceName"]
       41 GETTABLEKS                       R6 R0 K16 ["SourceAssetId"]
       43 LOADN                            R7 0
       44 JUMPIFNOTLT                      R7 R6 ; [+4]
       46 GETTABLEKS                       R5 R0 K16 ["SourceAssetId"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R5
       50 SETTABLEKS                       R5 R4 K10 ["assetId"]
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R5 R6 K17 ["getInstanceAttributes"]
       55 MOVE                             R6 R0
       56 CALL                             R5 1 1
       57 SETTABLEKS                       R5 R4 K11 ["attributes"]
       59 SETTABLEKS                       R2 R4 K12 ["instanceType"]
       61 SETTABLEKS                       R1 R4 K13 ["requestId"]
       63 SETTABLE                         R4 R3 R0
       64 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R5
       11 GETIMPORT                        R6 K4 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 ; [-8]
       16 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_NEXT                    R0
        5 GETTABLEKS                       R5 R3 K2 ["Parent"]
        7 JUMPIFNOTEQKNIL                  R5 ; [+4]
        9 GETUPVAL                         R5 0
       10 LOADNIL                          R6
       11 SETTABLE                         R6 R5 R3
       12 FORGLOOP                         R0 2 ; [-8]
       14 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utils"]
       13 GETTABLEKS                       R2 R3 K7 ["Utils"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 NEWTABLE                         R3 0 0
       20 NEWTABLE                         R4 16 0
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K8 ["Workspace"]
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K9 ["ReplicatedStorage"]
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K10 ["ReplicatedFirst"]
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K11 ["ServerScriptService"]
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K12 ["ServerStorage"]
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K13 ["StarterGui"]
       40 LOADB                            R5 1
       41 SETTABLEKS                       R5 R4 K14 ["StarterPack"]
       43 LOADB                            R5 1
       44 SETTABLEKS                       R5 R4 K15 ["StarterPlayer"]
       46 LOADB                            R5 1
       47 SETTABLEKS                       R5 R4 K16 ["StarterPlayerScripts"]
       49 LOADB                            R5 1
       50 SETTABLEKS                       R5 R4 K17 ["StarterCharacterScripts"]
       52 DUPTABLE                         R5 K21 [{"Created", "Selected", "ScriptAttached"}]
       53 LOADK                            R6 K18 ["Created"]
       54 SETTABLEKS                       R6 R5 K18 ["Created"]
       56 LOADK                            R6 K19 ["Selected"]
       57 SETTABLEKS                       R6 R5 K19 ["Selected"]
       59 LOADK                            R6 K20 ["ScriptAttached"]
       60 SETTABLEKS                       R6 R5 K20 ["ScriptAttached"]
       62 DUPCLOSURE                       R6 K22 [PROTO_0]
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R6 R2 K23 ["getInstanceTypes"]
       66 NEWCLOSURE                       R6 P1
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R2
       70 CAPTURE                          REF R3
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R6 R2 K24 ["registerInstanceV2"]
       74 NEWCLOSURE                       R6 P2
       75 CAPTURE                          REF R3
       76 SETTABLEKS                       R6 R2 K25 ["fetchContextV2"]
       78 NEWCLOSURE                       R6 P3
       79 CAPTURE                          REF R3
       80 SETTABLEKS                       R6 R2 K26 ["syncContext"]
       82 NEWCLOSURE                       R6 P4
       83 CAPTURE                          REF R3
       84 SETTABLEKS                       R6 R2 K27 ["clear"]
       86 CLOSEUPVALS                      R3
       87 RETURN                           R2 1
