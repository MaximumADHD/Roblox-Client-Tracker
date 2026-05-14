PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+9]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 NAMECALL                         R5 R4 K1 ["Disconnect"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-4]
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Plugin", "isMock"}]
        5 GETIMPORT                        R3 K5 [plugin]
        7 SETTABLEKS                       R3 R2 K1 ["Plugin"]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["isMock"]
       12 CALL                             R0 2 1
       13 GETIMPORT                        R1 K8 [Instance.new]
       15 LOADK                            R2 K9 ["Frame"]
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K10 ["createRoot"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 MOVE                             R5 R0
       23 NAMECALL                         R3 R2 K11 ["render"]
       25 CALL                             R3 2 0
       26 GETIMPORT                        R3 K5 [plugin]
       28 GETTABLEKS                       R3 R3 K12 ["Unloading"]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R3 R3 K13 ["Connect"]
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AssetExport"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["MainPlugin"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K7 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K7 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["ReactRoblox"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K7 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagCreateCagesOnAssetDm"]
       40 CALL                             R4 1 1
       41 LOADNIL                          R5
       42 MOVE                             R6 R4
       43 CALL                             R6 0 1
       44 JUMPIF                           R6 ; [+14]
       45 GETIMPORT                        R6 K7 [require]
       47 GETTABLEKS                       R7 R0 K8 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Util"]
       51 GETTABLEKS                       R7 R7 K16 ["setupCages"]
       53 CALL                             R6 1 1
       54 MOVE                             R7 R6
       55 GETIMPORT                        R8 K1 [plugin]
       57 CALL                             R7 1 1
       58 MOVE                             R5 R7
       59 GETIMPORT                        R6 K7 [require]
       61 GETTABLEKS                       R7 R0 K10 ["Packages"]
       63 GETTABLEKS                       R7 R7 K17 ["TestLoader"]
       65 CALL                             R6 1 1
       66 GETTABLEKS                       R7 R6 K18 ["launch"]
       68 LOADK                            R8 K4 ["AssetExport"]
       69 GETTABLEKS                       R9 R0 K8 ["Src"]
       71 CALL                             R7 2 0
       72 GETTABLEKS                       R7 R6 K19 ["isCli"]
       74 CALL                             R7 0 1
       75 JUMPIFNOT                        R7 ; [+2]
       76 CLOSEUPVALS                      R5
       77 RETURN                           R0 0
       78 GETIMPORT                        R7 K7 [require]
       80 GETTABLEKS                       R8 R0 K20 ["Bin"]
       82 GETTABLEKS                       R8 R8 K21 ["Common"]
       84 GETTABLEKS                       R8 R8 K22 ["defineLuaFlags"]
       86 CALL                             R7 1 1
       87 GETTABLEKS                       R8 R7 K23 ["getFFlagEnableAssetExport"]
       89 CALL                             R8 0 1
       90 JUMPIF                           R8 ; [+2]
       91 CLOSEUPVALS                      R5
       92 RETURN                           R0 0
       93 NEWCLOSURE                       R8 P0
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 CAPTURE                          REF R5
       98 MOVE                             R9 R8
       99 CALL                             R9 0 0
      100 CLOSEUPVALS                      R5
      101 RETURN                           R0 0
