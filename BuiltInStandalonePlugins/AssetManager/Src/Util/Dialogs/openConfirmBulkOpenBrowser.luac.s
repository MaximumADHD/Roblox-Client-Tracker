PROTO_0:
        0 LOADK                            R4 K0 ["Dialogs"]
        1 LOADK                            R5 K1 ["ConfirmBulkOpenBrowserHeading"]
        2 DUPTABLE                         R6 K3 [{"count"}]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R8 R0
        5 GETIMPORT                        R7 K5 [tostring]
        7 CALL                             R7 1 1
        8 SETTABLEKS                       R7 R6 K2 ["count"]
       10 NAMECALL                         R2 R1 K6 ["getText"]
       12 CALL                             R2 4 1
       13 GETIMPORT                        R3 K9 [math.random]
       15 LOADN                            R4 1
       16 LOADN                            R5 10000
       17 CALL                             R3 2 1
       18 JUMPIFNOTEQKN                    R0 K10 [67] ; [+5]
       20 MOVE                             R4 R2
       21 LOADK                            R5 K11 [" Also... ⁶🤷⁷"]
       22 CONCAT                           R2 R4 R5
       23 RETURN                           R2 1
       24 JUMPIFNOTEQKN                    R3 K12 [1] ; [+5]
       26 MOVE                             R4 R2
       27 LOADK                            R5 K13 [" Also, you found the lucky hidden duck! 🦆 Keep me a secret or I'll be super sad. "]
       28 CONCAT                           R2 R4 R5
       29 RETURN                           R2 1
       30 JUMPIFNOTEQKN                    R3 K14 [2] ; [+5]
       32 MOVE                             R4 R2
       33 LOADK                            R5 K15 [" ❔ Your computer will remember this. "]
       34 CONCAT                           R2 R4 R5
       35 RETURN                           R2 1
       36 JUMPIFNOTEQKN                    R3 K16 [3] ; [+5]
       38 MOVE                             R4 R2
       39 LOADK                            R5 K17 [" 😳 That's... like... a lot of assets."]
       40 CONCAT                           R2 R4 R5
       41 RETURN                           R2 1
       42 JUMPIFNOTEQKN                    R3 K18 [4] ; [+4]
       44 MOVE                             R4 R2
       45 LOADK                            R5 K19 [" 🎉 Wow, you found an easter egg! Here's a cookie 🍪"]
       46 CONCAT                           R2 R4 R5
       47 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 LOADNIL                          R0
        6 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R6 K3 [{"Title", "Size", "Type"}]
        1 LOADK                            R9 K4 ["ContextMenu"]
        2 LOADK                            R10 K5 ["ViewInBrowser"]
        3 NAMECALL                         R7 R1 K6 ["getText"]
        5 CALL                             R7 3 1
        6 SETTABLEKS                       R7 R6 K0 ["Title"]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K7 ["ConfirmOpenInBrowserDialogSize"]
       11 SETTABLEKS                       R7 R6 K1 ["Size"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K8 ["DialogType"]
       16 GETTABLEKS                       R7 R7 K9 ["Confirm"]
       18 SETTABLEKS                       R7 R6 K2 ["Type"]
       20 DUPTABLE                         R7 K12 [{"Text", "ConfirmCallback"}]
       21 GETUPVAL                         R8 2
       22 MOVE                             R9 R5
       23 MOVE                             R10 R1
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K10 ["Text"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R8 R7 K11 ["ConfirmCallback"]
       34 MOVE                             R10 R6
       35 MOVE                             R11 R7
       36 NAMECALL                         R8 R0 K13 ["setDialog"]
       38 CALL                             R8 3 0
       39 RETURN                           R0 0

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["openItemsInBrowser"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 DUPCLOSURE                       R5 K13 [PROTO_2]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 RETURN                           R5 1
