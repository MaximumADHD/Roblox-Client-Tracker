PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFEQKN                       R1 K0 [3] ; [+3]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 LOADB                            R1 0
        6 GETTABLEN                        R2 R0 1
        7 GETTABLEKS                       R2 R2 K1 ["Key"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["AssetInfoField"]
       12 GETTABLEKS                       R3 R3 K3 ["Modified"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+42]
       16 LOADB                            R1 0
       17 GETTABLEN                        R2 R0 1
       18 GETTABLEKS                       R2 R2 K4 ["IsAscending"]
       20 JUMPIFNOTEQKB                    R2 FALSE ; [+36]
       22 LOADB                            R1 0
       23 GETTABLEN                        R2 R0 2
       24 GETTABLEKS                       R2 R2 K1 ["Key"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K2 ["AssetInfoField"]
       29 GETTABLEKS                       R3 R3 K5 ["DisplayName"]
       31 JUMPIFNOTEQ                      R2 R3 ; [+25]
       33 LOADB                            R1 0
       34 GETTABLEN                        R2 R0 2
       35 GETTABLEKS                       R2 R2 K4 ["IsAscending"]
       37 JUMPIFNOTEQKB                    R2 TRUE ; [+19]
       39 LOADB                            R1 0
       40 GETTABLEN                        R2 R0 3
       41 GETTABLEKS                       R2 R2 K1 ["Key"]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K2 ["AssetInfoField"]
       46 GETTABLEKS                       R3 R3 K6 ["AssetId"]
       48 JUMPIFNOTEQ                      R2 R3 ; [+8]
       50 GETTABLEN                        R2 R0 3
       51 GETTABLEKS                       R2 R2 K4 ["IsAscending"]
       53 JUMPIFEQKB                       R2 TRUE ; [+2]
       55 LOADB                            R1 0 +1
       56 LOADB                            R1 1
       57 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K3 [{[1], ["IsAscending"] = False}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R2 K5 ["Modified"]
        8 SETTABLEKS                       R2 R1 K0 ["Key"]
       10 DUPTABLE                         R2 K7 [{[1], ["IsAscending"] = True}]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["AssetInfoField"]
       14 GETTABLEKS                       R3 R3 K8 ["DisplayName"]
       16 SETTABLEKS                       R3 R2 K0 ["Key"]
       18 DUPTABLE                         R3 K7 [{[1], ["IsAscending"] = True}]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["AssetInfoField"]
       22 GETTABLEKS                       R4 R4 K9 ["AssetId"]
       24 SETTABLEKS                       R4 R3 K0 ["Key"]
       26 SETLIST                          R0 R1 3 [1]
       28 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["isDefault"]
       20 DUPCLOSURE                       R3 K10 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K11 ["get"]
       24 RETURN                           R2 1
