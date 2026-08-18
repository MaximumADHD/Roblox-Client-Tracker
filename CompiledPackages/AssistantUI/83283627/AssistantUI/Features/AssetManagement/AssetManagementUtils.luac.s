PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETIMPORT                        R1 K2 [print]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BaseUrl"]
        3 LOADK                            R3 K1 ["://"]
        4 NAMECALL                         R1 R0 K2 ["find"]
        6 CALL                             R1 2 2
        7 JUMPIF                           R2 ; [+2]
        8 LOADK                            R3 K3 ["roblox.com"]
        9 RETURN                           R3 1
       10 LOADK                            R5 K4 ["%."]
       11 ADDK                             R6 R2 K5 [1]
       12 NAMECALL                         R3 R0 K2 ["find"]
       14 CALL                             R3 3 2
       15 JUMPIF                           R4 ; [+2]
       16 LOADK                            R5 K3 ["roblox.com"]
       17 RETURN                           R5 1
       18 ADDK                             R7 R4 K5 [1]
       19 NAMECALL                         R5 R0 K6 ["sub"]
       21 CALL                             R5 2 1
       22 LOADK                            R7 K7 ["/+$"]
       23 LOADK                            R8 K8 [""]
       24 NAMECALL                         R5 R5 K9 ["gsub"]
       26 CALL                             R5 3 -1
       27 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"Success", "StatusCode", "Body"}]
        2 MOVE                             R4 R0
        3 JUMPIFNOT                        R4 ; [+13]
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R1 K1 ["StatusCode"]
        7 LOADN                            R6 200
        8 JUMPIFNOTLE                      R6 R5 ; [+8]
       10 GETTABLEKS                       R5 R1 K1 ["StatusCode"]
       12 LOADN                            R6 300
       13 JUMPIFLT                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K0 ["Success"]
       19 GETTABLEKS                       R4 R1 K1 ["StatusCode"]
       21 SETTABLEKS                       R4 R3 K1 ["StatusCode"]
       23 GETTABLEKS                       R4 R1 K2 ["Body"]
       25 SETTABLEKS                       R4 R3 K2 ["Body"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["Start"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"Url", "Method"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Url"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["Method"]
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K3 ["Headers"]
       12 GETUPVAL                         R1 3
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETUPVAL                         R1 3
       15 SETTABLEKS                       R1 R0 K4 ["Body"]
       17 GETUPVAL                         R1 4
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K5 ["new"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R1
       25 CALL                             R2 1 1
       26 NAMECALL                         R2 R2 K6 ["await"]
       28 CALL                             R2 1 2
       29 RETURN                           R3 1

PROTO_5:
        0 GETIMPORT                        R5 K1 [pcall]
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CALL                             R5 1 2
       10 JUMPIF                           R5 ; [+10]
       11 LOADB                            R7 0
       12 DUPTABLE                         R8 K7 [{["Success"] = False, ["StatusCode"] = 0, ["Body"]}]
       13 FASTCALL1                        TOSTRING R6 ; [+3]
       14 MOVE                             R10 R6
       15 GETIMPORT                        R9 K9 [tostring]
       17 CALL                             R9 1 1
       18 SETTABLEKS                       R9 R8 K6 ["Body"]
       20 RETURN                           R7 2
       21 LOADB                            R7 1
       22 MOVE                             R8 R6
       23 RETURN                           R7 2

PROTO_6:
        0 JUMPIFNOTEQKN                    R0 K0 [32] ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 JUMPIFNOTEQKS                    R6 K1 ["Package"] ; [+3]
       11 LOADB                            R7 1
       12 RETURN                           R7 1
       13 FORGLOOP                         R2 2 ; [-5]
       15 LOADB                            R2 0
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Flags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R1 K11 ["Parent"]
       22 GETTABLEKS                       R4 R4 K12 ["Promise"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K13 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R5 K14 [PROTO_1]
       28 CAPTURE                          VAL R0
       29 DUPCLOSURE                       R6 K15 [PROTO_5]
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R7 K16 [PROTO_6]
       32 DUPTABLE                         R8 K21 [{"getBaseDomain", "isPackageAsset", "requestInternal", "debugPrint"}]
       33 SETTABLEKS                       R5 R8 K17 ["getBaseDomain"]
       35 SETTABLEKS                       R7 R8 K18 ["isPackageAsset"]
       37 SETTABLEKS                       R6 R8 K19 ["requestInternal"]
       39 SETTABLEKS                       R4 R8 K20 ["debugPrint"]
       41 RETURN                           R8 1
